/*
 * DNAStrand.cpp
 *
 *  Created on: 14/nov/2013
 *      Author: lorenzo
 */

#include "DNA.h"
#include "../Drawers/Drawer.h"
#include "../Utils/Logging.h"

int Nucleotide::mode = Nucleotide::DEFAULT;
int Nucleotide::base_color_mode = Nucleotide::DEFAULT_COLOUR;

using glm::vec3;
using std::map;

Nucleotide::Nucleotide(glm::vec3 pos, glm::vec3 principal, glm::vec3 stacking, glm::vec4 color): Shape(pos) {
	_position = pos;
	_principal_axis = principal;
	_stacking_axis = stacking;
	_third_axis = glm::cross(_stacking_axis, _principal_axis);
	_color = color;
	_base_color = glm::vec4(0, 1.f, 1.f, 1.f);
	_nid = -1;
}

Nucleotide::~Nucleotide() {

}

void Nucleotide::set_color(glm::vec4 c) {
	_color = c;
	if(base_color_mode == Nucleotide::BACKBONE_COLOUR) _base_color = c;
}

void Nucleotide::accept_drawer(Drawer &d) {
	d.visit(*this);
}

void Nucleotide::set_orientation(glm::mat3 &m) {
	glm::mat3 mT = glm::transpose(m);
	_principal_axis = mT[0];
	_stacking_axis = mT[2];
	_third_axis = glm::cross(_stacking_axis, _principal_axis);
}

void Nucleotide::set_opacity(float n_op) {
	_set_color_opacity(_base_color, n_op);
	_set_color_opacity(_color, n_op);
}

void Nucleotide::rotate(glm::mat3 R, glm::vec3 wrt) {
	Shape::rotate(R, wrt);
	_principal_axis = R*_principal_axis;
	_stacking_axis = R*_stacking_axis;
	_third_axis = glm::cross(_stacking_axis, _principal_axis);
}

glm::vec3 Nucleotide::backbone() {
	switch(mode) {
	case MM_GROOVING:
		return _principal_axis * (-0.34f) + _third_axis * 0.34f;
	case RNA:
		return _principal_axis * (-0.4f) + _third_axis * (0.0f) + _stacking_axis * (0.2f);
	default:
		return _principal_axis * (-0.4f);
	}
}

std::vector<glm::vec4> DNAStrand::_automatic_colors;

DNAStrand::DNAStrand() {
	_is_circular = false;
	_id = -1;

	// horrible way of initialising static vectors
	if(_automatic_colors.size() == 0) {
		_automatic_colors.push_back(glm::vec4(1, 0, 0, 1));
		_automatic_colors.push_back(glm::vec4(0, 1, 0, 1));
		_automatic_colors.push_back(glm::vec4(0, 0, 1, 1));

		_automatic_colors.push_back(glm::vec4(1, 1, 0, 1));
		_automatic_colors.push_back(glm::vec4(0, 1, 1, 1));
		_automatic_colors.push_back(glm::vec4(1, 0, 1, 1));

		_automatic_colors.push_back(glm::vec4(1, 0.6, 0, 1));

		_automatic_colors.push_back(glm::vec4(0.56f, 0.f, 1.f, 1.f));
		_automatic_colors.push_back(glm::vec4(0.647f, 0.165f, 0.165f, 1.f));
		_automatic_colors.push_back(glm::vec4(0.98f, 0.855f, 0.867f, 1.f));
	}
}

DNAStrand::~DNAStrand() {
	for(map<int, Nucleotide *>::iterator it = _nucleotides.begin(); it != _nucleotides.end(); it++) delete it->second;
}

void DNAStrand::accept_drawer(Drawer &d) {
	d.visit(*this);
}

void DNAStrand::add_nucleotide(Nucleotide *n, int nid) {
	_nucleotides[nid] = n;
	n->set_id(_id);
	n->set_nid(nid);
	_com += n->position();
}

void DNAStrand::set_color(glm::vec4 color) {
	for(map<int, Nucleotide *>::iterator it = _nucleotides.begin(); it != _nucleotides.end(); it++) it->second->set_color(color);
}

void DNAStrand::set_opacity(float n_op) {
	for(map<int, Nucleotide *>::iterator it = _nucleotides.begin(); it != _nucleotides.end(); it++) it->second->set_opacity(n_op);
}

void DNAStrand::set_automatic_color() {
	if(_id == -1) Logging::log_warning("You have to provide DNAStrand with an id before setting automatic colors\n");
	else {
		int n_colors = _automatic_colors.size();
		glm::vec4 color = _automatic_colors[(_id/Scene::get_shift_every()) % n_colors];
		set_color(color);
	}
}

void DNAStrand::finalise() {
	_com /= _nucleotides.size();
}

void DNAStrand::shift(glm::vec3 &amount) {
	for(map<int, Nucleotide *>::iterator it = _nucleotides.begin(); it != _nucleotides.end(); it++) {
		it->second->shift(amount);
	}
	_com += amount;
}

void DNAStrand::rotate(glm::mat3 R, glm::vec3 wrt) {
	for(map<int, Nucleotide *>::iterator it = _nucleotides.begin(); it != _nucleotides.end(); it++) {
		it->second->rotate(R, wrt);
	}
}

glm::mat3 DNAStrand::inertia_tensor(glm::vec3 wrt) {
	glm::mat3 inertia(0.f);
	for(map<int, Nucleotide *>::iterator it = _nucleotides.begin(); it != _nucleotides.end(); it++) {
		inertia += it->second->inertia_tensor(wrt);
	}
	return inertia;
}
