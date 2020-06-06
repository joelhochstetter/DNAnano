/*
 * OGLSphere.cpp
 *
 *  Created on: 03/nov/2013
 *      Author: lorenzo
 */


#include "OGLSphere.h"
#include "../../Utils/MathHelper.h"

using std::vector;

int OGLSphere::_resolution = -1;
GLuint OGLSphere::_GLlist_idx = 0;
std::vector<GLfloat> OGLSphere::_vertices;
std::vector<GLfloat> OGLSphere::_normals;
std::vector<GLushort> OGLSphere::_indices;


OGLSphere::OGLSphere() {

}

OGLSphere::~OGLSphere() {

}

void OGLSphere::_build(int res) {
	float radius = 1.f;
	float const R = 1.f/(float)(res-1);
	float const S = 1.f/(float)(res-1);

	vector<GLfloat> &vert = OGLSphere::_vertices;
	vector<GLfloat> &norm = OGLSphere::_normals;
	vector<GLushort> &ind = OGLSphere::_indices;

	vert.resize(res * res * 3);
	norm.resize(res * res * 3);
	vector<GLfloat>::iterator v = vert.begin();
	vector<GLfloat>::iterator n = norm.begin();
	for(int r = 0; r < res; r++) {
		for(int s = 0; s < res; s++) {
			float const y = sinf(-LR_F_PI_2 + LR_F_PI * r * R);
			float const x = cosf(2.f*LR_F_PI * s * S) * sinf(LR_F_PI * r * R);
			float const z = sinf(2.f*LR_F_PI * s * S) * sinf(LR_F_PI * r * R);

			*v++ = x * radius;
			*v++ = y * radius;
			*v++ = z * radius;

			*n++ = x;
			*n++ = y;
			*n++ = z;
		}
	}

	ind.resize(res * res * 4);
	vector<GLushort>::iterator i = ind.begin();
	for(int r = 0; r < res-1; r++) {
		for(int s = 0; s < res-1; s++) {
			*i++ = r * res + s;
			*i++ = r * res + (s+1);
			*i++ = (r+1) * res + (s+1);
			*i++ = (r+1) * res + s;
		}
	}

	OGLSphere::_resolution = res;

	if(OGLSphere::_GLlist_idx != 0) glDeleteLists(OGLSphere::_GLlist_idx, 1);
	OGLSphere::_GLlist_idx = glGenLists(1);

	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_NORMAL_ARRAY);

	glVertexPointer(3, GL_FLOAT, 0, &OGLSphere::_vertices[0]);
	glNormalPointer(GL_FLOAT, 0, &OGLSphere::_normals[0]);

	glNewList(OGLSphere::_GLlist_idx, GL_COMPILE);
	glDrawElements(GL_QUADS, OGLSphere::_indices.size(), GL_UNSIGNED_SHORT, &OGLSphere::_indices[0]);
	glEndList();
}

void OGLSphere::draw(int res) {
	if(res != OGLSphere::_resolution) OGLSphere::_build(res);

	glCallList(OGLSphere::_GLlist_idx);
}
