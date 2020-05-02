/*
 * OGLEllipsoid.h
 *
 *  Created on: 05/nov/2013
 *      Author: lorenzo
 */

#ifndef OGLELLIPSOID_H_
#define OGLELLIPSOID_H_

#include "../../glm/glm.hpp"

class OGLEllipsoid {
protected:
	OGLEllipsoid();
public:
	virtual ~OGLEllipsoid();

	static void draw(glm::vec3 ratios, int res);
};

#endif /* OGLELLIPSOID_H_ */
