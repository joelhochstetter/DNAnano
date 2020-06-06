/*
 * Lighting.cpp
 *
 *  Created on: 06/nov/2013
 *      Author: lorenzo
 */

#include "Lighting.h"
#include "Utils/StringHelper.h"

using std::endl;

Light::Light() {
	position = glm::vec4(0.f, 0.f, 0.f, 0.f);
	// openGL defaults
	diffuse = glm::vec4(LIGHT_INITIAL_DIFFUSE, LIGHT_INITIAL_DIFFUSE, LIGHT_INITIAL_DIFFUSE, 0.f);
	ambient = glm::vec4(LIGHT_INITIAL_AMBIENT/4.f, LIGHT_INITIAL_AMBIENT/4.f, LIGHT_INITIAL_AMBIENT/4.f, 0.f);
	specular = glm::vec4(1.f, 1.f, 1.f, 1.f);
	enabled = false;
}

LightingState::LightingState(): _lights(8, Light()) {
	ambient = glm::vec4(LIGHT_INITIAL_AMBIENT, LIGHT_INITIAL_AMBIENT, LIGHT_INITIAL_AMBIENT, 0.f);
	// we place a directional light on each vertex of a cube
	int counter = 0;
	for(int i = -1; i <= 1; i += 2) {
		for(int j = -1; j <= 1; j += 2) {
			for(int k = -1; k <= 1; k += 2) {
				Light &light = _lights[counter];
				// the order i, k, j is intentional, the last component tells opengl that
				// the light is distant
				light.position = glm::vec4(i, k, j, 0.f);
				counter++;
			}
		}
	}
}

LightingState::~LightingState() {

}

void LightingState::change_ambient(float delta) {
	glm::vec4 dv(delta, delta, delta, 0.f);
	ambient += dv;
	for(int i = 0; i < 8; i++) _lights[i].ambient += dv;
}

void LightingState::change_diffuse(float delta) {
	glm::vec4 dv(delta, delta, delta, 0.f);
	for(int i = 0; i < 8; i++) _lights[i].diffuse += dv;
}

void LightingState::toggle_light(int ind) {
	_lights[ind].enabled = !_lights[ind].enabled;
}

std::string LightingState::get_state() {
	std::stringstream out;

	out << "diffuse " << _lights[0].diffuse[0] << endl;
	out << "ambient " << ambient[0] << endl;
	out << "llist";
	for(int i = 0; i < 8; i++) {
		int val = (_lights[i].enabled);
		out << " " << val;
	}
	out << endl;

	return out.str();
}

void LightingState::load_state_from_file(std::ifstream &in) {
	in.clear();
	in.seekg(0);
	while(in.good()) {
		std::string buff;
		getline(in, buff);

		std::vector<std::string> spl = StringHelper::split(buff);
		if(spl.size() > 0 && buff[0] != '#') {
			if(spl[0] == "diffuse") {
				float new_diffuse;
				StringHelper::from_string<float>(spl[1], new_diffuse);
				glm::vec4 diffuse(new_diffuse, new_diffuse, new_diffuse, new_diffuse);
				for(int i = 0; i < 8; i++) _lights[i].diffuse = diffuse;
			}
			else if(spl[0] == "ambient") {
				float new_ambient;
				StringHelper::from_string<float>(spl[1], new_ambient);
				ambient[0] = ambient[1] = ambient[2] = new_ambient;
				for(int i = 0; i < 8; i++) _lights[i].ambient = ambient;
			}
			else if(spl[0] == "llist") {
				if(spl.size() != 9) throw std::string("Wrong number of lights. Ignoring llist");

				for(int i = 0; i < 8; i++) StringHelper::from_string<bool>(spl[i+1], _lights[i].enabled);
			}
		}
	}
}
