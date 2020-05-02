/*
 * DHS.h
 *
 *  Created on: 27/nov/2013
 *      Author: lorenzo
 */

#ifndef DHS_H_
#define DHS_H_

#include "Sphere.h"

#define DIP_FACTOR 0.8f
#define DIP_THICKNESS 0.2f
#define DIP_ARROW_RATIO 0.4f

class DHS: public Sphere {
protected:
	glm::vec3 _dipole;
public:
	DHS(glm::vec3 pos, glm::vec3 dip, float r, glm::vec4 color);
	virtual ~DHS();

	glm::vec3 dipole() { return _dipole; }
	void accept_drawer(Drawer &d);
	virtual void rotate(glm::mat3, glm::vec3);
};

#endif /* DHS_H_ */
