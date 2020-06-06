/*
 * ActionBuilder.cpp
 *
 *  Created on: 31 gen 2018
 *      Author: lorenzo
 */

#include "ActionBuilder.h"

#include "../Camera.h"
#include "../Utils/StringHelper.h"
#include "../Utils/Logging.h"
#include "Rotation.h"
#include "Translation.h"

#include <fstream>

using namespace std;

ActionBuilder::ActionBuilder() {

}

ActionBuilder::~ActionBuilder() {

}

vector<BaseAction *> ActionBuilder::actions_from_file(std::string filename, Camera &camera) {
	vector<BaseAction *> actions;

	ifstream input(filename.c_str());

	while(!input.eof()) {
		string buff;
		getline(input, buff);

		string trimmed = StringHelper::trim(buff);
		if(trimmed.size() > 0) {
			vector<string> splitted = StringHelper::split(trimmed);
			if(splitted[0][0] != '#') {
				if(splitted[0] == "r") {
					glm::vec3 axis;
					StringHelper::get_vec3(splitted, 1, axis);
					float tot_angle;
					StringHelper::from_string<float>(splitted[4], tot_angle);
					int n_frames;
					StringHelper::from_string<int>(splitted[5], n_frames);
					float angle = tot_angle / n_frames;
					Logging::log_debug("Adding %d rotations of %f degrees each along %f, %f, %f", n_frames, angle, axis[0], axis[1], axis[2]);
					for(int i = 0; i < n_frames; i++) {
						actions.push_back(new Rotation(camera, axis, angle));
					}
				}
				else if(splitted[0] == "t") {
					glm::vec3 direction;
					StringHelper::get_vec3(splitted, 1, direction);
					float tot_extent;
					StringHelper::from_string<float>(splitted[4], tot_extent);
					int n_frames;
					StringHelper::from_string<int>(splitted[5], n_frames);
					float extent = tot_extent/ n_frames;
					Logging::log_debug("Adding %d translations of %f each towards %f, %f, %f", n_frames, extent, direction[0], direction[1], direction[2]);
					for(int i = 0; i < n_frames; i++) {
						actions.push_back(new Translation(camera, direction, extent));
					}
				}
				else {
					Logging::log_warning("Invalid action line %s", buff.c_str());
				}
			}
		}
	}

	input.close();

	return actions;
}
