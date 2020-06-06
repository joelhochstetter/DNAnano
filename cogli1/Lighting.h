/*
 * Lighting.h
 *
 *  Created on: 06/nov/2013
 *      Author: lorenzo
 */

#ifndef LIGHTING_H_
#define LIGHTING_H_

#define LIGHT_INITIAL_DIFFUSE 0.25f
#define LIGHT_INITIAL_AMBIENT 0.05f
#define LIGHT_DELTA_AMBIENT 0.02f
#define LIGHT_DELTA_DIFFUSE 0.05f

#include <vector>
#include <fstream>
#include "glm/glm.hpp"

struct Light {
	glm::vec4 position;
	glm::vec4 diffuse;
	glm::vec4 ambient;
	glm::vec4 specular;
	bool enabled;

	Light();
	virtual ~Light() { };
};

class LightingState {
protected:
	std::vector<Light> _lights;
public:
	glm::vec4 ambient;

	LightingState();
	virtual ~LightingState();

	void change_ambient(float delta);
	void change_diffuse(float delta);
	void toggle_light(int ind);
	std::vector<Light> &get_lights() { return _lights; }
	Light &get_light(int i) { return _lights[i]; }

	std::string get_state();
	void load_state_from_file(std::ifstream &in);
};

#endif /* LIGHTING_H_ */
