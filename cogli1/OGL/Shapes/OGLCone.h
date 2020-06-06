/*
 * OGLCone.h
 *
 *  Created on: 12/nov/2013
 *      Author: lorenzo
 */

#ifndef OGLCONE_H_
#define OGLCONE_H_

#include <vector>
#include <GL/glew.h>
#include "../../glm/glm.hpp"

class OGLCone {
protected:
	static std::vector<GLfloat> _vertices_base;
	static std::vector<GLfloat> _normals_base;
	static std::vector<GLushort> _indices_base;
	static std::vector<GLfloat> _vertices_body;
	static std::vector<GLfloat> _normals_body;
	static std::vector<GLushort> _indices_body;

	static int _resolution;

	OGLCone();

	static void _build(int res);
public:
	virtual ~OGLCone();

	static void draw(int res, bool draw_base=true);
};

#endif /* OGLCONE_H_ */
