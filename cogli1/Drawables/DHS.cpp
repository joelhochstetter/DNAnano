/*
 * DHS.cpp
 *
 *  Created on: 27/nov/2013
 *      Author: lorenzo
 */

#include "DHS.h"
#include "../Drawers/Drawer.h"

DHS::DHS(glm::vec3 pos, glm::vec3 dip, float r, glm::vec4 color) : Sphere(pos, r, color) {
	_dipole = dip;
}

DHS::~DHS() {

}

void DHS::accept_drawer(Drawer &d) {
	d.visit(*this);
}

void DHS::rotate(glm::mat3 R, glm::vec3 wrt) {
	Shape::rotate(R, wrt);
	_dipole = R*_dipole;
}
