/*
 * OGLCylinder.cpp
 *
 *  Created on: 03/nov/2013
 *      Author: Flavio
 */

#include "OGLCylinder.h"
#include "../../Utils/MathHelper.h"

using std::vector;

int OGLCylinder::_resolution = -1;
GLuint OGLCylinder::_GLlist_idx = 0;
std::vector<GLfloat> OGLCylinder::_vertices_lf;
std::vector<GLfloat> OGLCylinder::_normals_lf;
std::vector<GLushort> OGLCylinder::_indices_lf;
std::vector<GLfloat> OGLCylinder::_vertices_uf;
std::vector<GLfloat> OGLCylinder::_normals_uf;
std::vector<GLushort> OGLCylinder::_indices_uf;
std::vector<GLfloat> OGLCylinder::_vertices_tube;
std::vector<GLfloat> OGLCylinder::_normals_tube;
std::vector<GLushort> OGLCylinder::_indices_tube;


OGLCylinder::OGLCylinder() {

}

OGLCylinder::~OGLCylinder() {

}

void OGLCylinder::_build(int res) {
	// we assume
	// radius = 1.
	// height = (0, 0, 1)
	// the center is on the origin
	// so the solid is defined by (x^2 + y^2 < 1 && |z| < 1/2)

	// lower face
	vector<GLfloat> &lvert = OGLCylinder::_vertices_lf;
	vector<GLfloat> &lnorm = OGLCylinder::_normals_lf;
	vector<GLushort> &lind = OGLCylinder::_indices_lf;
	lvert.resize(res * res * 3);
	lnorm.resize(res * res * 3);
	int cntr = 0;
	for(int r = 0; r < res; r++) {
		for(int s = 0; s < res; s++) {
			float const alpha = s * 2.f * LR_F_PI / (float)res;
			float const rho = r * 1.f / (float)(res - 1.f);
			float const x = rho * cosf(alpha);
			float const y = rho * sinf(alpha);

			lvert[cntr] = x;
			lvert[cntr + 1] = y;
			lvert[cntr + 2] = -0.5f;

			lnorm[cntr] = 0.f;
			lnorm[cntr + 1] = 0.f;
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

	// tube
	vector<GLfloat> &vert = OGLCylinder::_vertices_tube;
	vector<GLfloat> &norm = OGLCylinder::_normals_tube;
	vector<GLushort> &ind = OGLCylinder::_indices_tube;
	vert.resize(2 * res * 3);
	norm.resize(2 * res * 3);
	cntr = 0;
	for(int r = 0; r < 2; r++) {
		float const z = r - 0.5f;
		for(int s = 0; s < res; s++) {
			float const x = cosf(s * 2.f * LR_F_PI / res);
			float const y = sinf(s * 2.f * LR_F_PI / res);

			vert[cntr] = x;
			vert[cntr + 1] = y;
			vert[cntr + 2] = z;

			norm[cntr] = x;
			norm[cntr + 1] = y;
			norm[cntr + 2] = 0.f;

			cntr += 3;
		}
	}
	ind.resize(2 * res * 4);
	i = ind.begin();
	for(int s = 0; s < res-1; s++) {
		*i++ = s;
		*i++ = (s + 1);
		*i++ = res + (s + 1);
		*i++ = res + s;
	}
	*i++ = res - 1;
	*i++ = 0;
	*i++ = res;
	*i++ = res + res - 1;

	// upper face
	std::vector<GLfloat> &uvert = OGLCylinder::_vertices_uf;
	std::vector<GLfloat> &unorm = OGLCylinder::_normals_uf;
	std::vector<GLushort> &uind = OGLCylinder::_indices_uf;
	uvert.resize(res * res * 3);
	unorm.resize(res * res * 3);
	cntr = 0;
	for(int r = 0; r < res; r++) {
		for(int s = 0; s < res; s++) {
			float const alpha = s * 2.f * LR_F_PI / (float)res;
			float const rho = r * 1.f / (float) (res - 1.f);

			float const x = rho * cosf(alpha);
			float const y = rho * sinf(alpha);

			uvert[cntr] = x;
			uvert[cntr + 1] = y;
			uvert[cntr + 2] = 0.5f;

			unorm[cntr] = 0.f;
			unorm[cntr + 1] = 0.f;
			unorm[cntr + 2] = 1.f;

			cntr += 3;
		}
	}
	uind.resize((res - 1) * res * 4);
	i = uind.begin();
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

	OGLCylinder::_resolution = res;

	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_NORMAL_ARRAY);

	if(OGLCylinder::_GLlist_idx != 0) glDeleteLists(OGLCylinder::_GLlist_idx, 1);
	OGLCylinder::_GLlist_idx = glGenLists(1);

	glNewList(OGLCylinder::_GLlist_idx, GL_COMPILE);
	// lower face
	glVertexPointer(3, GL_FLOAT, 0, &OGLCylinder::_vertices_tube[0]);
	glNormalPointer(GL_FLOAT, 0, &OGLCylinder::_normals_tube[0]);
	glDrawElements(GL_QUADS, OGLCylinder::_indices_tube.size(), GL_UNSIGNED_SHORT, &OGLCylinder::_indices_tube[0]);

	// tube
	glVertexPointer(3, GL_FLOAT, 0, &OGLCylinder::_vertices_lf[0]);
	glNormalPointer(GL_FLOAT, 0, &OGLCylinder::_normals_lf[0]);
	glDrawElements(GL_QUADS, OGLCylinder::_indices_lf.size(), GL_UNSIGNED_SHORT, &OGLCylinder::_indices_lf[0]);

	// upper face
	glVertexPointer(3, GL_FLOAT, 0, &OGLCylinder::_vertices_uf[0]);
	glNormalPointer(GL_FLOAT, 0, &OGLCylinder::_normals_uf[0]);
	glDrawElements(GL_QUADS, OGLCylinder::_indices_uf.size(), GL_UNSIGNED_SHORT, &OGLCylinder::_indices_uf[0]);
	glEndList();
}

void OGLCylinder::draw(int res) {
	if(res != OGLCylinder::_resolution) OGLCylinder::_build(res);

	glCallList(OGLCylinder::_GLlist_idx);
}
