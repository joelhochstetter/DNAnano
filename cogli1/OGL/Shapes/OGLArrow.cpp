/*
 * OGLArrow.cpp
 *
 *  Created on: 27/nov/2013
 *      Author: lorenzo
 */

#include "OGLArrow.h"

#include "OGLCone.h"
#include "OGLCylinder.h"

#include "../../glm/gtx/transform.hpp"
#include "../../glm/gtc/matrix_transform.hpp"

OGLArrow::OGLArrow() {

}


OGLArrow::~OGLArrow() {
}

void OGLArrow::draw(int res, float cyl_length, float cone_length) {
	float head_ratio = cone_length / (cyl_length + cone_length);
	OGLArrow::draw(res, head_ratio);
}

void OGLArrow::draw(int res, float head_ratio) {
	float cone_length = head_ratio / (1.f - head_ratio);
	float tot_length = 1.f + cone_length;
	float to_centre = -head_ratio*0.5f;

	glm::mat4 my_trans = glm::translate(0.f, 0.f, to_centre);
	glMultMatrixf(&my_trans[0][0]);
	glm::mat4 my_scale = glm::scale(0.4f, 0.4f, 1.f / tot_length);
	glMultMatrixf(&my_scale[0][0]);

	OGLCylinder::draw(res);

	float cone_base = 0.5f * (1.f + cone_length);
	my_trans = glm::translate(0.f, 0.f, cone_base);
	glMultMatrixf(&my_trans[0][0]);
	my_scale = glm::scale(2.f, 2.f, cone_length);
	glMultMatrixf(&my_scale[0][0]);

	OGLCone::draw(res);
}
