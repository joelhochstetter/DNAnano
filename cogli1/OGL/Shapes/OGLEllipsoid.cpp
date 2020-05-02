/*
 * OGLEllipsoid.cpp
 *
 *  Created on: 05/nov/2013
 *      Author: lorenzo
 */

#include "../../glm/gtx/transform.hpp"
#include "../../glm/gtc/matrix_transform.hpp"

#include "OGLEllipsoid.h"
#include "OGLSphere.h"

OGLEllipsoid::OGLEllipsoid() {

}

OGLEllipsoid::~OGLEllipsoid() {

}

void OGLEllipsoid::draw(glm::vec3 ratios, int res) {
	glm::mat4 my_scale = glm::scale(ratios);

	glMultMatrixf(&my_scale[0][0]);

	OGLSphere::draw(res);
}
