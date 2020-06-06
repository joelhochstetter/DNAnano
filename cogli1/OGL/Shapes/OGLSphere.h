/*
 * OGLSphere.h
 *
 *  Created on: 03/nov/2013
 *      Author: lorenzo
 */

#ifndef OGLSPHERE_H_
#define OGLSPHERE_H_

#include <vector>
#include <GL/glew.h>
#include "../../glm/glm.hpp"

class OGLSphere {
protected:
	static std::vector<GLfloat> _vertices;
	static std::vector<GLfloat> _normals;
	static std::vector<GLushort> _indices;

	static int _resolution;
	static GLuint _GLlist_idx;

	OGLSphere();

	static void _build(int res);
public:
	virtual ~OGLSphere();

	static void draw(int res);
};

#endif /* OGLSPHERE_H_ */
