/*
 * OGLManager.cpp
 *
 *  Created on: 26/ott/2013
 *      Author: lorenzo
 */

#include <fstream>

#include "OGLManager.h"
#include "../Utils/Logging.h"
#include "../glm/gtx/transform.hpp"
#include "../cl_arguments.h"
#include "../Utils/StringHelper.h"

#ifdef ENABLE_PNG_EXPORT
#include <png.h>
#endif

using std::string;
using std::vector;

OGLManager::OGLManager(option::Option *options, CentreOptions &centre) :
		_window(NULL), _camera(NULL), _lighting(NULL), _options(options), _centre(centre) {
	_input.reset();

	_show_info = false;

	// for the FPS counter
	_n_frames = 0;
	_fps_last_time = 0.;
	_current_time = 0.;
	_last_time = 0.;
	_print_pov = false;
	_is_next_scene = false;
	_is_previous_scene = false;
	if(options[GROUPS_FROM]) {
		_load_groups = true;
		_load_groups_from.open(options[GROUPS_FROM].arg);
	}
	else _load_groups = false;
}

OGLManager::~OGLManager() {

}

void OGLManager::update_lights() {
	int lm[8] = { GL_LIGHT0, GL_LIGHT1, GL_LIGHT2, GL_LIGHT3, GL_LIGHT4, GL_LIGHT5, GL_LIGHT6, GL_LIGHT7 };

	glMatrixMode(GL_MODELVIEW);
	glLoadMatrixf(&_camera->get_view_matrix()[0][0]);

	std::vector<Light> &lights = _lighting->get_lights();
	for(int i = 0; i < 8; i++) {
		glLightfv(lm[i], GL_AMBIENT, &lights[i].ambient[0]);
		glLightfv(lm[i], GL_DIFFUSE, &lights[i].diffuse[0]);
		glLightfv(lm[i], GL_SPECULAR, &lights[i].specular[0]);
		glLightfv(lm[i], GL_POSITION, &lights[i].position[0]);

		if(lights[i].enabled) glEnable(lm[i]);
		else glDisable(lm[i]);
	}
	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, &_lighting->ambient[0]);

	glPopMatrix();
}

void OGLManager::init(Camera &camera, LightingState &lighting, std::vector<Scene *> &scenes) {
	_camera = &camera;
	_lighting = &lighting;
	_scenes = scenes;

	_current_scene = _scenes.begin();

	(*_current_scene)->load_groups_from_file(_load_groups_from);

	// Initialise GLFW
	if(!glfwInit()) throw string("Failed to initialize GLFW\n");

	// get window's width and height
	camera.window_dimensions(_input.window_width, _input.window_height);
	if(_options[DIM]) {
		string wxh = string(_options[DIM].first()->arg);
		vector<string> spl_wxh = StringHelper::split(wxh, 'x');
		if(spl_wxh.size() != 2) Logging::log_warning("Invalid argument supplied for --dim, defaulting to 1024x768");
		else {
			StringHelper::from_string<int>(spl_wxh[0], _input.window_width);
			StringHelper::from_string<int>(spl_wxh[1], _input.window_height);
		}
	}
	// open a window and create its OpenGL context
	_window = glfwCreateWindow(_input.window_width, _input.window_height, (*_current_scene)->get_title().c_str(), NULL, NULL);
	if(_window == NULL) {
		glfwTerminate();
		throw string("Failed to open GLFW window\n");
	}
	// initialise the opengl context
	glfwMakeContextCurrent(_window);
	// associate this object to the window that we just initialised. In this way callbacks
	// will have access to this object
	glfwSetWindowUserPointer(_window, (void *) this);

	// initialise GLEW
	glewExperimental = true; // Needed for core profile
	if(glewInit() != GLEW_OK) throw string("Failed to initialize GLEW\n");

	// initialise callbacks
	glfwSetKeyCallback(_window, OGLManager::key_callback);
	glfwSetMouseButtonCallback(_window, OGLManager::mouse_button_callback);
	glfwSetScrollCallback(_window, OGLManager::scroll_callback);
	glfwSetCursorPosCallback(_window, OGLManager::cursor_pos_callback);
	glfwSetCursorEnterCallback(_window, OGLManager::cursor_enter_callback);
	glfwSetWindowSizeCallback(_window, OGLManager::window_resize_callback);

	glClearColor(1.0f, 1.0f, 1.0f, 0.0f);
	glShadeModel(GL_SMOOTH);
	glEnable(GL_DEPTH_TEST);

	glEnable(GL_COLOR_MATERIAL);

	glEnable(GL_LIGHTING);

	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	if(_options[DEBUG]) glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

	_camera->save_state();

	if(_options[RESOLUTION]) {
		int res;
		StringHelper::from_string<int>(_options[RESOLUTION].arg, res);
		_drawer.set_resolution(res);
	}
}

void OGLManager::_compute_fps() {
	if(_fps_last_time == 0.) _fps_last_time = glfwGetTime();
	_n_frames++;

	// print each second
	if(_current_time - _fps_last_time >= 1.0) {
		// printf and reset
		double t = 1000. / double(_n_frames);
		Logging::log_info("%lf ms/frame (%d FPS)\n", t, _n_frames);
		Logging::log_info("Rendering %u shapes\n", current_scene()->get_shapes().size());
		_n_frames = 0;
		_fps_last_time += 1.0;
	}
}

void OGLManager::_render() {
	int width, height;
	glfwGetFramebufferSize(_window, &width, &height);

	glViewport(0, 0, width, height);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glMatrixMode(GL_PROJECTION);
	glLoadMatrixf(&_camera->get_projection_matrix()[0][0]);

	update_lights();

	_drawer.set_view_matrix(_camera->get_view_matrix());

	(*_current_scene)->accept_drawer(_drawer);
}

void OGLManager::draw() {
	if(_is_next_scene || _is_previous_scene) {
		if(!_centre.always_centre) (*_current_scene)->normalise();
		glfwSetWindowTitle(_window, (*_current_scene)->get_title().c_str());
	}

	_is_next_scene = _is_previous_scene = false;

	if(_show_info) _compute_fps();

	_current_time = glfwGetTime();
	float dt = float(_current_time - _last_time);
	_camera->update(_input, dt);
	_input.fov_change = 0.f;

	_last_time = _current_time;

	_render();

	glfwSwapBuffers(_window);
	glfwPollEvents();
}

bool OGLManager::done() {
	return glfwWindowShouldClose(_window);
}

void OGLManager::previous_scene(int offset = 1) {
	_is_previous_scene = true;

	// apply actions first
	bool not_done = true;
	do {
		not_done = (*_current_scene)->previous_action();
		if(not_done) offset--;
	} while(not_done && offset);

	int current_scene_index = &*_current_scene - &*_scenes.begin();

	if((current_scene_index - offset) >= 0) {
		_current_scene -= offset;
		if(_centre.always_centre) (*_current_scene)->centre(_centre);
	}
}

void OGLManager::next_scene(int offset = 1) {
	_is_next_scene = true;

	// apply actions first
	bool not_done = true;
	do {
		not_done = (*_current_scene)->next_action();
		if(not_done) offset--;
	} while(not_done && offset);

	int current_scene_index = &*_current_scene - &*_scenes.begin();
	if((unsigned int) (current_scene_index + offset) < _scenes.size()) {
		_current_scene += offset;
		if(_centre.always_centre) (*_current_scene)->centre(_centre);
	}
}

void OGLManager::pick(bool print_only) {
	_drawer.toggle_selection_mode();
	glDisable(GL_LIGHTING);
	glDisable(GL_BLEND);
	_render();

	// http://www.opengl-tutorial.org/miscellaneous/clicking-on-objects/picking-with-an-opengl-hack/
	glFlush();
	glFinish();
	glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

	int width, height;
	glfwGetFramebufferSize(_window, &width, &height);

	unsigned char color[4];
	GLfloat depth;

	int x = _input.cursor_pos_x;
	int y = _input.cursor_pos_y;

	glReadPixels(x, height - y - 1, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, color);
	glReadPixels(x, height - y - 1, 1, 1, GL_DEPTH_COMPONENT, GL_FLOAT, &depth);

	int picked = color[0] + color[1] * 256 + color[2] * 256 * 256;
	// if all three components are FF then the user clicked on the background or on some
	// other non-particle shape
	if(picked == 0x00ffffff) picked = -1;

	Logging::log_debug("Clicked on pixel %d, %d, color %02hhx%02hhx%02hhx%02hhx, depth %f, particle index %d\n", x, y, color[0], color[1], color[2], color[3], depth, picked);

	glEnable(GL_BLEND);
	glEnable(GL_LIGHTING);
	_drawer.toggle_selection_mode();

	if(print_only) {
		if(picked == -1) Logging::log_info("You clicked on the background or on a non-pickable object\n");
		else Logging::log_info("You clicked on object n. %d\n", picked);
	}
	else if(picked != -1) (*_current_scene)->select_shape(picked);
}

void OGLManager::toggle_info() {
	_show_info = !_show_info;
	if(_show_info) _fps_last_time = 0.;
}

#ifdef ENABLE_PNG_EXPORT
void OGLManager::export_png() {
	// we first take out the : in the scene's title and then we substitute any space with underscores
	std::vector<string> spl = StringHelper::split((*_current_scene)->get_title(), ':');
	string filename = StringHelper::join(spl, "");
	std::replace(filename.begin(), filename.end(), ' ', '_');
	filename += ".png";

	Logging::log_info("Exporting current view on file '%s'\n", filename.c_str());

	// we first read the raw pixel values
	int width, height;
	glfwGetFramebufferSize(_window, &width, &height);

	int n_pixels = width * height * 3;
	GLubyte *pixels = new GLubyte[n_pixels];
	glReadPixels(0, 0, width, height, GL_RGB, GL_UNSIGNED_BYTE, pixels);

	// then we use libpng to print out the image file
	png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	png_infop info_ptr = png_create_info_struct(png_ptr);
	int pixel_size = 3;
	int depth = 8;

	png_set_IHDR(png_ptr,
			info_ptr,
			width,
			height,
			depth,
			PNG_COLOR_TYPE_RGB,
			PNG_INTERLACE_NONE,
			PNG_COMPRESSION_TYPE_DEFAULT,
			PNG_FILTER_TYPE_DEFAULT);

	// initialise rows of PNG
	png_byte **row_pointers = (png_byte **) png_malloc(png_ptr, height * sizeof(png_byte *));
	for(int y = 0; y < height; ++y) {
		png_byte *row = (png_byte *) png_malloc(png_ptr, sizeof(uint8_t) * width * pixel_size);
		// for mysterious reasons rows are upside down
		row_pointers[height - 1 - y] = row;
		for(int x = 0; x < width; ++x) {
			*row++ = pixels[3*y*width + 3*x + 0];
			*row++ = pixels[3*y*width + 3*x + 1];
			*row++ = pixels[3*y*width + 3*x + 2];
		}
	}

	// write the data
	FILE *out = fopen(filename.c_str(), "w");

	png_init_io(png_ptr, out);
	png_set_rows(png_ptr, info_ptr, row_pointers);
	png_write_png(png_ptr, info_ptr, PNG_TRANSFORM_IDENTITY, NULL);

	fclose(out);

	// free memory
	for(int y = 0; y < height; y++) png_free (png_ptr, row_pointers[y]);
	png_free(png_ptr, row_pointers);

	png_destroy_write_struct (&png_ptr, &info_ptr);

	Logging::log_info("done\n");
}
#endif

void OGLManager::change_ambient(float delta) {
	_lighting->change_ambient(delta);
}

void OGLManager::clean() {
	if(_window != NULL) glfwDestroyWindow(_window);
	glfwTerminate();
}

void OGLManager::key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) glfwSetWindowShouldClose(window, GL_TRUE);

	OGLManager *manager = (OGLManager *) glfwGetWindowUserPointer(window);
	InputState &input = manager->_input;

	bool ctrl = (mods & GLFW_MOD_CONTROL);
	bool shift = (mods & GLFW_MOD_SHIFT);
	bool release = (action == GLFW_RELEASE);
	bool press = (action == GLFW_PRESS);

	// move the camera by using arrow keys
	if(key == GLFW_KEY_UP) input.up = !release;
	else if(key == GLFW_KEY_DOWN) input.down = !release;
	else if(key == GLFW_KEY_LEFT) input.left = !release;
	else if(key == GLFW_KEY_RIGHT) input.right = !release;
	// change the fov
	else if(key == GLFW_KEY_F) {
		if(release) input.fov_change = 0.f;
		else {
			if(mods == GLFW_MOD_SHIFT) input.fov_change = DELTA_FOV;
			else input.fov_change = -DELTA_FOV;
		}
	}
	else if(key == GLFW_KEY_I && press) manager->toggle_info();
	// change the current configuration
	else if((key == GLFW_KEY_KP_ADD || key == ']') && !release) {
		if(ctrl) manager->next_scene(10);
		else manager->next_scene();
	}
	else if((key == GLFW_KEY_KP_SUBTRACT || key == '/') && !release) {
		if(ctrl) manager->previous_scene(10);
		else manager->previous_scene();
	}
	// in order to keep things tidy, instead of adding 8 cases to the next switch we manage lights
	// in this weird way, hoping that osg will keep F1-F8 key values one after the other
	else if(key >= GLFW_KEY_F1 && key <= GLFW_KEY_F8 && press) {
		unsigned int num_light = key - GLFW_KEY_F1;
		manager->_lighting->toggle_light(num_light);
	}
	// amount of ambient light
	else if(key == GLFW_KEY_A && !release) {
		// if shift is being pressed than we decrease the ambient light
		float delta = (shift) ? -LIGHT_DELTA_AMBIENT : LIGHT_DELTA_AMBIENT;

		manager->_lighting->change_ambient(delta);
	}
	// amount of diffused light
	else if(key == GLFW_KEY_D && !release) {
		// if shift is being pressed than we decrease the diffused light
		float delta = (shift) ? -LIGHT_DELTA_DIFFUSE : LIGHT_DELTA_DIFFUSE;

		manager->_lighting->change_diffuse(delta);
	}
	// manage the saving/loading of the current state of the camera
	else if(key == GLFW_KEY_C && press) {
		if(shift) manager->_camera->save_state();
		else manager->_camera->load_saved_state();
	}
	// manage resolution changes
	else if(key == GLFW_KEY_PAGE_UP && !release) manager->_drawer.increase_resolution();
	else if(key == GLFW_KEY_PAGE_DOWN && !release) manager->_drawer.decrease_resolution();
	// shift or rotate along x
	else if(key == GLFW_KEY_X && !release) {
		if(ctrl) {
			input.delta_horizontal_angle = (shift) ? 0.01f : -0.01f;
		}
		else {
			glm::vec3 x_shift(DELTA_SHIFT, 0.f, 0.f);
			if(shift) x_shift[0] = -DELTA_SHIFT;
			(*manager->_current_scene)->translate(x_shift);
		}
	}
	// shift or rotate along y
	else if(key == GLFW_KEY_Y && !release) {
		if(ctrl) {
			input.delta_vertical_angle = (shift) ? 0.01f : -0.01f;
		}
		else {
			glm::vec3 y_shift(0.f, DELTA_SHIFT, 0.f);
			if(shift) y_shift[1] = -DELTA_SHIFT;
			(*manager->_current_scene)->translate(y_shift);
		}
	}
	// shift along z
	else if(key == GLFW_KEY_Z && !release) {
		glm::vec3 z_shift(0.f, 0.f, DELTA_SHIFT);
		if(shift) z_shift[2] = -DELTA_SHIFT;
		(*manager->_current_scene)->translate(z_shift);
	}
	// toggle box's visibility
	else if(key == GLFW_KEY_B && !release) (*manager->_current_scene)->toggle_box();
	else if(key == GLFW_KEY_P && shift && press) manager->_print_pov = true;
	// dump system's state to a file
	else if(key == GLFW_KEY_U && press) {
		// we first take out the : in the scene's title and then we substitute any space with underscores
		std::vector<string> spl = StringHelper::split(manager->current_scene()->get_title(), ':');
		string filename = StringHelper::sanitize_filename(StringHelper::join(spl, ""));
		filename += ".cpy";

		std::ofstream out(filename.c_str());

		out << manager->_camera->get_state();
		out << Scene::get_state();
		out << manager->_lighting->get_state();

		Logging::log_info("System state printed on '%s'\n", filename.c_str());
	}
	// zoom in/out
	else if(key == GLFW_KEY_Q && !release) {
		if(ctrl) {
			if(shift) manager->_input.fast_backward = true;
			else manager->_input.fast_forward = true;
		}
		else {
			if(shift) manager->_input.backward = true;
			else manager->_input.forward = true;
		}
	}
	else if(key == GLFW_KEY_V && press) {
		if(shift) {
			CentreOptions centre = manager->_centre;
			centre.consider_inertia = true;
			manager->current_scene()->centre(centre);
		}
		else manager->current_scene()->centre(manager->_centre);
	}
	// export the current view to a PNG file
	else if(key == GLFW_KEY_P && ctrl && press) {
#ifdef ENABLE_PNG_EXPORT
		manager->export_png();
#endif
	}
	// toggle ortographic projection
	else if(key == GLFW_KEY_P && press) manager->_camera->set_is_ortho(!manager->_camera->is_ortho());
	else if(key == GLFW_KEY_W && ctrl && press) {
		// invert selection
		if(shift) manager->current_scene()->invert_selection();
		// select all particles
		else manager->current_scene()->select_all_shapes();
	}
	// hide selected particles
	else if(key == GLFW_KEY_H && press) manager->current_scene()->hide_selected();
	// mark as visible all the shapes
	else if(key == GLFW_KEY_S && press) manager->current_scene()->show_all_shapes();
	// manage control groups
	else if(key >= GLFW_KEY_0 && key <= GLFW_KEY_9 && press) {
		int g_id = key - GLFW_KEY_0;
		if(ctrl) manager->current_scene()->set_selected_as_group(g_id);
		else if(!shift) manager->current_scene()->select_group(g_id);
	}
	// print control groups
	else if(key == GLFW_KEY_G && shift && press) {
		// we build the filename
		std::vector<string> spl = StringHelper::split(manager->current_scene()->get_title(), ':');
		string filename = StringHelper::join(spl, "");
		std::replace(filename.begin(), filename.end(), ' ', '_');
		filename += ".grcpy";
		// stampiamo i control groups
		std::ofstream out(filename.c_str());
		out << manager->current_scene()->print_control_groups();
		Logging::log_info("Groups printed to '%s'\n", filename.c_str());
	}
}

void OGLManager::mouse_button_callback(GLFWwindow *window, int button, int action, int mods) {
	OGLManager *manager = (OGLManager *) glfwGetWindowUserPointer(window);
	InputState &input = manager->_input;

	bool ctrl = (mods & GLFW_MOD_CONTROL);
	bool shift = (mods & GLFW_MOD_SHIFT);

	if(button == GLFW_MOUSE_BUTTON_LEFT) {
		// if the left button is pressed while ctrl is held down then we enter picking mode
		if(action == GLFW_RELEASE) {
			if(ctrl) manager->pick();
			if(shift) manager->pick(true);
		}
		// otherwise we signal that the left button was pressed
		input.left_button = (action == GLFW_PRESS && !ctrl && !shift);
	}
	else if(button == GLFW_MOUSE_BUTTON_MIDDLE) input.middle_button = (action == GLFW_PRESS);
	else if(button == GLFW_MOUSE_BUTTON_RIGHT) input.right_button = (action == GLFW_PRESS);
}

void OGLManager::scroll_callback(GLFWwindow *window, double xoffset, double yoffset) {
	OGLManager *manager = (OGLManager *) glfwGetWindowUserPointer(window);
	InputState &input = manager->_input;

	input.forward = input.backward = false;

	if(yoffset > 0.f) input.forward = true;
	if(yoffset < 0.f) input.backward = true;
}

void OGLManager::cursor_pos_callback(GLFWwindow *window, double xpos, double ypos) {
	OGLManager *manager = (OGLManager *) glfwGetWindowUserPointer(window);
	InputState &input = manager->_input;

	input.cursor_pos_x = xpos;
	input.cursor_pos_y = ypos;
}

void OGLManager::cursor_enter_callback(GLFWwindow *window, int entered) {
	// if the cursor leaves the window
	if(entered == GL_FALSE) {

	}
}

void OGLManager::window_resize_callback(GLFWwindow *window, int width, int height) {
	OGLManager *manager = (OGLManager *) glfwGetWindowUserPointer(window);
	InputState &input = manager->_input;

	input.window_height = height;
	input.window_width = width;
}
