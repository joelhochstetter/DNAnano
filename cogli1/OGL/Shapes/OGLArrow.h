/*
 * OGLArrow.h
 *
 *  Created on: 27/nov/2013
 *      Author: lorenzo
 */

#ifndef OGLARROW_H_
#define OGLARROW_H_

class OGLArrow {
private:
	OGLArrow();
public:
	virtual ~OGLArrow();

	static void draw(int res, float head_ratio);
	static void draw(int res, float cyl_length, float cone_length);
};

#endif /* OGLARROW_H_ */
