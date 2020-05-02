/*
 * OGLManager.h
 *
 *  Created on: 26/ott/2013
 *      Author: lorenzo
 */

#ifndef OGLMANAGER_H_
#define OGLMANAGER_H_

#define DELTA_SHIFT 0.1f
#define DELTA_FOV 3.f

#include <string>
#include <vector>
#include <map>
#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include "../Drawers/OGLDrawer.h"
#include "../Drawables/Scene.h"
#include "../optionparser.h"
#include "../Camera.h"
#include "../Lighting.h"

class OGLManager {
protected:
	GLFWwindow *_window;
	Camera *_camera;
	LightingState *_lighting;
	InputState _input;
	option::Option *_options;
	OGLDrawer _drawer;

	std::vector<Scene *> _scenes;
	std::vector<Scene *>::iterator _current_scene;

	bool _show_info;
	double _fps_last_time;
	double _last_time;
	double _current_time;
	int _n_frames;

	bool _print_pov;

	bool _is_next_scene;
	bool _is_previous_scene;
	
	bool _load_groups;
	std::ifstream _load_groups_from;

	CentreOptions &_centre;

	/**
	 * @brief Does the actual rendering.
	 */
	void _render();
	void _compute_fps();
	void _update_window_title();

public:
	OGLManager(option::Option *options, CentreOptions &centre);
	virtual ~OGLManager();

	Scene *current_scene() { return *_current_scene; }

	void init(Camera &camera, LightingState &lighting, std::vector<Scene *> &scenes);
	/**
	 * @brief This is a wrapper around _render which also does other small things like computing fps, etc.
	 */
	void draw();
	bool done();
	void clean();

	bool print_pov() { return _print_pov; }
	void set_print_pov(bool v) { _print_pov = v; }

	void export_png();

	void pick(bool print_only=false);
	void toggle_info();

	void change_ambient(float delta);
	void change_diffuse(float delta);
	void update_lights();

	static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);
	static void mouse_button_callback(GLFWwindow *window, int button, int action, int mods);
	static void scroll_callback(GLFWwindow *window, double xoffset, double yoffset);
	static void cursor_pos_callback(GLFWwindow *window, double xpos, double ypos);
	static void cursor_enter_callback(GLFWwindow *window, int entered);
	static void window_resize_callback(GLFWwindow *window, int width, int heigh);

	void next_scene(int offset);
	void previous_scene(int offset);

	bool is_next_scene() { return _is_next_scene; }
	bool is_previous_scene() { return _is_previous_scene; }
};

#endif /* OGLMANAGER_H_ */
