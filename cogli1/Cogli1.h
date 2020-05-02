/*
 * Cogli1.h
 *
 *  Created on: 20/ott/2013
 *      Author: lorenzo
 */

#ifndef COGLI1_H_
#define COGLI1_H_

#include <vector>
#include <string>
#include <set>

#include "Drawables/Scene.h"
#include "Parsers/Parser.h"
#include "optionparser.h"
#include "Camera.h"
#include "Lighting.h"
#include "povray/PovManager.h"

#ifdef OXDNA
#include "oxDNA/Cogli1Manager.h"
#endif

class Cogli1 {
protected:
	std::vector<Scene *> _scenes;
	option::Option *_options;
	Parser *_parser;
	Camera _camera;
	LightingState _lighting;
	PovManager _pov_manager;
	CentreOptions _centre;

	std::set<int> _invisibile_particles;

	bool _oxDNA;
#ifdef OXDNA
	int _granularity;
	Cogli1Manager *_oxDNA_manager;
#endif

	void _get_scenes();
	void _parse_visibility_file(const char *v_file);

public:
	Cogli1(option::Parser &parser, option::Option *options);
	virtual ~Cogli1();

	virtual void start_ogl();
	virtual void print_all_pov();
};

#endif /* COGLI1_H_ */
