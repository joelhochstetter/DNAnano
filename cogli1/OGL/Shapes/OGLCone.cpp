/*
 * OGLCone.cpp
 *
 *  Created on: 12/nov/2013
 *      Author: lorenzo
 */

#include "OGLCone.h"
#include "../../Utils/MathHelper.h"

using std::vector;

int OGLCone::_resolution = -1;
std::vector<GLfloat> OGLCone::_vertices_base;
std::vector<GLfloat> OGLCone::_normals_base;
std::vector<GLushort> OGLCone::_indices_base;
std::vector<GLfloat> OGLCone::_vertices_body;
std::vector<GLfloat> OGLCone::_normals_body;
std::vector<GLushort> OGLCone::_indices_body;

OGLCone::OGLCone() {

}

OGLCone::~OGLCone() {

}

void OGLCone::_build(int res) {
	// we assume
	// base radius = 1.
	// height = (0, 0, 1)
	// the midpoint is on the origin and the apex is at (0, 0, 0.5)

	// base
	vector<GLfloat> &lvert = OGLCone::_vertices_base;
	vector<GLfloat> &lnorm = OGLCone::_normals_base;
	vector<GLushort> &lind = OGLCone::_indices_base;
	lvert.resize(res * res * 3);
	lnorm.resize(res * res * 3);
	int cntr = 0;
	for(int r = 0; r < res; r++) {
		for(int s = 0; s < res; s++) {
			float const alpha = s * 2.f * LR_F_PI / (float)res;
			float const rho = r * 1.f / (float) (res - 1.f);
			float const x = rho * cosf(alpha);
			float const y = rho * sinf(alpha);

			lvert[cntr] = x;
			lvert[cntr + 1] = y;
			lvert[cntr + 2] = -0.5f;

			lnorm[cntr] = 0;
			lnorm[cntr + 1] = 0;
			lnorm[cntr + 2] = -1.f;

			cntr += 3;
		}
	}

	lind.resize((res - 1) * res * 4);
	vector<GLushort>::iterator i = lind.begin();
	for(int r = 0; r < res-1; r++) {
		for(int s = 0; s < res-1; s++) {
			*i++ = r * res + s;
			*i++ = r * res + (s+1);
			*i++ = (r+1) * res + (s+1);
			*i++ = (r+1) * res + s;
		}
		*i++ = r * res + res - 1;
		*i++ = r * res;
		*i++ = (r+1) * res;
		*i++ = (r+1) * res + res - 1;
	}

	// body, we build this with a triangle fan
	vector<GLfloat> &vert = OGLCone::_vertices_body;
	vector<GLfloat> &norm = OGLCone::_normals_body;
	vector<GLushort> &ind = OGLCone::_indices_body;
	// we need res + 2 vertices because 1 is the apex and we need an
	// additional one to make the triangle fan gapless
	vert.resize(3*(res + 2));
	norm.resize(3*(res + 2));
	cntr = 0;

	// apex
	vert[cntr] = 0.f;
	vert[cntr + 1] = 0.f;
	vert[cntr + 2] = 0.5f;

	norm[cntr] = 0.f;
	norm[cntr + 1] = 0.f;
	norm[cntr + 2] = 1.f;
	cntr += 3;

	float z = -0.5f;
	for(int s = 0; s <= res; s++) {
		float const x = cosf(s * 2.f * LR_F_PI / res);
		float const y = sinf(s * 2.f * LR_F_PI / res);

		vert[cntr] = x;
		vert[cntr + 1] = y;
		vert[cntr + 2] = z;

		// normals need to be normalised (who could have imagined...)
		float norm_length = sqrtf(x*x + y*y + x*x);
		norm[cntr] = x / norm_length;
		norm[cntr + 1] = y / norm_length;
		norm[cntr + 2] = x / norm_length;

		cntr += 3;
	}

	ind.resize(res + 2);
	i = ind.begin();
	for(int s = 0; s <= res + 1; s++) *i++ = s;
}

void OGLCone::draw(int res, bool draw_base) {
	if(res != OGLCone::_resolution) OGLCone::_build(res);

	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_NORMAL_ARRAY);

	// base
	if(draw_base) {
		glVertexPointer(3, GL_FLOAT, 0, &OGLCone::_vertices_base[0]);
		glNormalPointer(GL_FLOAT, 0, &OGLCone::_normals_base[0]);
		glDrawElements(GL_QUADS, OGLCone::_indices_base.size(), GL_UNSIGNED_SHORT, &OGLCone::_indices_base[0]);
	}

	// body
	glVertexPointer(3, GL_FLOAT, 0, &OGLCone::_vertices_body[0]);
	glNormalPointer(GL_FLOAT, 0, &OGLCone::_normals_body[0]);
	glDrawElements(GL_TRIANGLE_FAN, OGLCone::_indices_body.size(), GL_UNSIGNED_SHORT, &OGLCone::_indices_body[0]);
}
