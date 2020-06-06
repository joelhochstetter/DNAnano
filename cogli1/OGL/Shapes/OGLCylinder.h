/*
 * OGLCylinder.h
 *
 *  Created on: 03/nov/2013
 *      Author: Flavio 
 */

#ifndef OGLCYLINDER_H_
#define OGLCYLINDER_H_

#include <vector>
#include <GL/glew.h>
#include "../../glm/glm.hpp"

class OGLCylinder {
protected:
	static std::vector<GLfloat> _vertices_lf;
	static std::vector<GLfloat> _normals_lf;
	static std::vector<GLushort> _indices_lf;
	static std::vector<GLfloat> _vertices_uf;
	static std::vector<GLfloat> _normals_uf;
	static std::vector<GLushort> _indices_uf;
	static std::vector<GLfloat> _vertices_tube;
	static std::vector<GLfloat> _normals_tube;
	static std::vector<GLushort> _indices_tube;
	
	static int _resolution;
	static GLuint _GLlist_idx;

	OGLCylinder();

	static void _build(int res);
public:
	virtual ~OGLCylinder();

	static void draw(int res);
};

#endif /* OGLCYLINDER_H_ */
