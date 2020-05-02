/*
 * OGLDrawer.cpp
 *
 *  Created on: 20/ott/2013
 *      Author: lorenzo
 */

#include "OGLDrawer.h"

#include "../OGL/Shapes/OGLSphere.h"
#include "../OGL/Shapes/OGLCylinder.h"
#include "../OGL/Shapes/OGLEllipsoid.h"
#include "../OGL/Shapes/OGLCone.h"
#include "../OGL/Shapes/OGLArrow.h"
#include "../../glm/gtc/matrix_transform.hpp"
#include "../../glm/gtx/transform.hpp"
#include "../../Utils/MathHelper.h"
#include "../../Utils/Logging.h"

using std::vector;
using glm::vec3;
using glm::vec4;
using glm::mat4;

OGLDrawer::OGLDrawer() {
	_resolution = 15;
	_selection_mode = false;
	_curr_shape = NULL;
}

OGLDrawer::~OGLDrawer() {

}

void OGLDrawer::increase_resolution() {
	_resolution++;
	Logging::log_debug("Increasing the resolution to %d\n", _resolution);
}

void OGLDrawer::decrease_resolution() {
	if(_resolution > 1) _resolution--;
	Logging::log_debug("Decreasing the resolution to %d\n", _resolution);
}

void OGLDrawer::toggle_selection_mode() {
	_selection_mode = !_selection_mode;
	Logging::log_debug("Toggling the selection mode to %d\n", _selection_mode);
}

void OGLDrawer::set_color(glm::vec4 color) {
	if(_selection_mode) {
		int id = (_curr_shape == NULL) ? -1 : _curr_shape->get_id();
		// get a unique color from the id
		int r = (id & 0x000000FF) >>  0;
		int g = (id & 0x0000FF00) >>  8;
		int b = (id & 0x00FF0000) >> 16;
		color = glm::vec4(r/255.f, g/255.f, b/255.f, 1.f);
	}
	// if the current shape is selected then color it yellow
	else if(_curr_shape != NULL && _curr_shape->is_selected()) color = glm::vec4(1.f, 1.f, 0.f, 1.f);
	glColor4f(color[0], color[1], color[2], color[3]);
}

void OGLDrawer::visit(Drawable &d) {

}

void OGLDrawer::visit(Scene &s) {
	vector<Shape *> &objs = s.get_shapes();
	for(vector<Shape *>::iterator it = objs.begin(); it != objs.end(); it++) {
		Shape *my_s = *it;
		if(my_s->is_visible()) {
			_curr_shape = my_s;
			my_s->accept_drawer(*this);
		}
	}

	_curr_shape = NULL;
	if(s.is_box_shown()) {
		vector<Cylinder *> &box = s.get_box();
		for(vector<Cylinder *>::iterator it = box.begin(); it != box.end(); it++) (*it)->accept_drawer(*this);
	}
}

void OGLDrawer::visit(Cylinder &c) {
	float r = c.r();
	vec3 axis = c.axis();
	vec3 position = c.position();

	mat4 my_scale = glm::scale(r, r, glm::length(axis));

	// the cylinder is drawn oriented towards z
	vec3 z_lab(0.f, 0.f, 1.f);
	mat4 my_rot = MathHelper::get_rotation(z_lab, axis);

	// the cylinder is drawn centred in the origin
	mat4 my_trans = glm::translate(position + 0.5f*axis);
	mat4 mv_matrix = _view_matrix * my_trans * my_rot * my_scale;

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadMatrixf(&mv_matrix[0][0]);

	vec4 color = c.color();
	set_color(color);

	OGLCylinder::draw(_resolution);

	glPopMatrix();
}

void OGLDrawer::visit(Sphere &s) {
	mat4 my_scale = glm::scale(s.r(), s.r(), s.r());
	mat4 my_trans = glm::translate(s.position());
	mat4 mv_matrix = _view_matrix * my_trans * my_scale;

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadMatrixf(&mv_matrix[0][0]);

	vec4 color = s.color();
	set_color(color);

	OGLSphere::draw(_resolution);

	glPopMatrix();
}

void OGLDrawer::visit(Group &g) {

}

void OGLDrawer::visit(DNAStrand &strand) {
	std::map<int, Nucleotide *> nucleotides = strand.nucleotides();
	std::map<int, Nucleotide *>::iterator it = nucleotides.begin();

	Nucleotide *last = NULL;
	for(; it != nucleotides.end(); it++) {
		Nucleotide *current = it->second;
		// we have to design the backbone-backbone links
		if(it != nucleotides.begin()) {
			vec3 curr_back_pos = current->position() + current->backbone();

			vec3 last_back_pos = last->position() + last->backbone();

			vec3 cyl_axis = last_back_pos - curr_back_pos;

			Cylinder cyl_shape(curr_back_pos, cyl_axis, 0.13f, current->color());
			cyl_shape.accept_drawer(*this);
		}
		// to speed up things, we only show the nucleotides for resolution > 5
		if (_resolution > 5) it->second->accept_drawer(*this);
		last = it->second;
	}

	// if the strand is circular we also add a cylinder between the first and the last nucleotides
	if(strand.is_circular()) {
		Nucleotide *first = nucleotides.begin()->second;
		vec3 curr_back_pos = first->position() + first->backbone();
		vec3 last_back_pos = last->position() + last->backbone();

		vec3 cyl_axis = last_back_pos - curr_back_pos;

		Cylinder cyl_shape(curr_back_pos, cyl_axis, 0.13f, first->color());
		cyl_shape.accept_drawer(*this);
	}
}

void OGLDrawer::visit(Nucleotide &n) {
	vec3 x = n.principal_axis();
	vec3 z = n.stacking_axis();
	vec3 pos = n.position();

	// the backbone position depends whether mm grooving is enabled or not
	vec3 back_pos = pos + n.backbone();
	float back_r = 0.25f;

	Sphere back_sphere(back_pos, back_r, n.color());
	back_sphere.accept_drawer(*this);

	// base
	vec3 base_pos = pos + x * 0.3f;
	float base_r = 0.1f;
	vec3 z_lab(0.f, 0.f, 1.f);
	mat4 x_rot = MathHelper::get_rotation(z_lab, x);
	vec3 x_lab(1.f, 0.f, 0.f);
	vec3 new_x = glm::mat3(x_rot) * x_lab;
	mat4 z_rot = MathHelper::get_rotation(new_x, z);
	mat4 my_trans = glm::translate(base_pos);
	mat4 mv_matrix = _view_matrix * my_trans * z_rot * x_rot;

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadMatrixf(&mv_matrix[0][0]);

	vec4 color = n.base_color();
	set_color(color);
	OGLEllipsoid::draw(vec3(0.8f*base_r, 2.f*base_r, 3.f*base_r), _resolution);

	glPopMatrix();

	// com --> base
	float cyl_r = 0.1f;
	Cylinder cyl_com_base (pos, x * 0.3f * 0.8f, cyl_r, n.color());
	cyl_com_base.accept_drawer(*this);

	// backbone -- com
	Cylinder cyl_back_base (pos, n.backbone(), cyl_r, n.color());
	cyl_back_base.accept_drawer(*this);

	// sfere at com
	Sphere base_sphere(pos, cyl_r, n.color());
	base_sphere.accept_drawer(*this);
}

void OGLDrawer::visit(DHS &s) {
	Sphere sphere(s.position(), s.r(), s.color());

	vec3 dipole = s.dipole();
	float cyl_r = 2*s.r() * DIP_THICKNESS;
	vec3 position = s.position();

	mat4 my_scale = glm::scale(cyl_r, cyl_r, DIP_FACTOR*glm::length(dipole));

	// the arrow is drawn oriented towards z
	vec3 z_lab(0.f, 0.f, 1.f);
	mat4 my_rot = MathHelper::get_rotation(z_lab, dipole);

	// the arrow is drawn centred in the origin
	mat4 my_trans = glm::translate(position);
	mat4 mv_matrix = _view_matrix * my_trans * my_rot * my_scale;

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadMatrixf(&mv_matrix[0][0]);

	vec4 color = glm::vec4(0.f, 0.f, 0.f, 1.f);
	set_color(color);

	glDisable(GL_BLEND);
	OGLArrow::draw(_resolution, DIP_ARROW_RATIO);
	glEnable(GL_BLEND);

	glPopMatrix();

	sphere.accept_drawer(*this);

}

void OGLDrawer::visit(Arrow &s) {
	vec3 axis = s.axis();
	float cyl_r = s.r_cyl();
	float cyl_length = s.cyl_length();
	float cone_length = s.cone_length();
	float tot_length = cyl_length + cone_length;
	vec3 position = s.position() + 0.5f*axis;

	mat4 my_scale = glm::scale(cyl_r, cyl_r, tot_length);

	// the arrow is drawn oriented towards z
	vec3 z_lab(0.f, 0.f, 1.f);
	mat4 my_rot = MathHelper::get_rotation(z_lab, axis);

	// the arrow is drawn centred in the origin
	mat4 my_trans = glm::translate(position);
	mat4 mv_matrix = _view_matrix * my_trans * my_rot * my_scale;

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadMatrixf(&mv_matrix[0][0]);

	vec4 color = glm::vec4(0.f, 0.f, 0.f, 1.f);
	set_color(color);

	glDisable(GL_BLEND);
	OGLArrow::draw(_resolution, cyl_length, cone_length);
	glEnable(GL_BLEND);

	glPopMatrix();
}

void OGLDrawer::visit(PatchyParticle &p) {
	Sphere sphere(p.position(), p.r(), p.color());
	sphere.accept_drawer(*this);

	std::vector<Patch> patches = p.get_patches();

	vec3 apex = p.position();
	for(std::vector<Patch>::iterator it = patches.begin(); it != patches.end(); it++) {
		vec3 base = it->pos;
		float height = glm::length(it->pos) * it->cosmax;
		// this is because the base radius (NOT THE DIAMETER) of the cone is 1
		float width = height * tanf(it->width);

		mat4 my_scale = glm::scale(width, width, height);

		// the cone has its base in the -z direction
		vec3 z_lab(0.f, 0.f, -1.f);
		mat4 my_rot = MathHelper::get_rotation(z_lab, base);

		// this moves the apex in 0, 0, 0 and the base in 0, 0, -1
		mat4 apex_trans = glm::translate(vec3(0.f, 0.f, -0.5f));

		// and this moves the whole thing so that the apex overlaps with
		// the particle's centre
		mat4 my_trans = glm::translate(apex);

		mat4 mv_matrix = _view_matrix * my_trans * my_rot * my_scale * apex_trans;

		glMatrixMode(GL_MODELVIEW);
		glPushMatrix();
		glLoadMatrixf(&mv_matrix[0][0]);

		vec4 color = it->color;
		set_color(color);

		OGLCone::draw(_resolution, false);

		glPopMatrix();
	}

}

void OGLDrawer::visit(Triangle &t) {
	vector<vec3> vs = t.vertices();

	glBegin(GL_TRIANGLES);
	set_color(t.color());
	for(int i = 0; i < 3; i++) glVertex3f(vs[i][0], vs[i][1], vs[i][2]);
	glEnd();

	glEnable(GL_POLYGON_OFFSET_LINE);
	glPolygonOffset(-1, -1);
	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
	glLineWidth(5);

	glBegin(GL_TRIANGLES);
	set_color(vec4(0, 0, 0, 1));
	for(int i = 0; i < 3; i++) glVertex3f(vs[i][0], vs[i][1], vs[i][2]);
	glDisable(GL_POLYGON_OFFSET_LINE);
	glEnd();

	glLineWidth(1);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}
