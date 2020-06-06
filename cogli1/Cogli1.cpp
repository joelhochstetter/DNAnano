/*
 * Cogli1.cpp
 *
 *  Created on: 20/ott/2013
 *      Author: lorenzo
 */

#include <queue>

#include "cl_arguments.h"
#include "Utils/Logging.h"
#include "Cogli1.h"
#include "Parsers/MGLParser.h"
#include "Parsers/DNAParser.h"
#include "Parsers/ManfredoParser.h"
#include "Parsers/NathanParser.h"
#include "Parsers/PatchyParser.h"
#include "Parsers/StarrParser.h"
#include "Parsers/LevyParser.h"
#include "Parsers/RBCParser.h"
#include "Parsers/TEPParser.h"
#include "OGL/OGLManager.h"
#include "Utils/StringHelper.h"
#include "Actions/ActionBuilder.h"

using namespace std;

Cogli1::Cogli1(option::Parser &parser, option::Option *options) : _options(options), _parser(NULL), _pov_manager(options), _oxDNA(false) {
	// get the filenames
	std::queue<std::string> input_files;
	for (int i = 0; i < parser.nonOptionsCount(); ++i) input_files.push(string(parser.nonOption(i)));
	if(input_files.size() == 0) {
		Logging::log_critical("No input file(s) given\n");
		exit(1);
	}

	if(options[WITH_OXDNA]) {
#ifdef OXDNA
		if(options[ONLY_POV]) {
			Logging::log_critical("--oxdna and --only-pov options are incompatible\n");
			exit(1);
		}
		Logger::init();
		_oxDNA = true;
		char *argv[2];
		string ox_inp = input_files.front();
		argv[1] = new char[ox_inp.size()+1];
		strncpy(argv[1], ox_inp.c_str(), ox_inp.size()+1);

		_granularity = 100;
		if(options[GRANULARITY]) StringHelper::from_string<int>(_options[GRANULARITY].arg, _granularity);

		try {
			_oxDNA_manager = new Cogli1Manager(argv);
			_oxDNA_manager->load_options();
			_oxDNA_manager->init();
		}
		catch (oxDNAException &e) {
			Logging::log_critical("%s\n", e.error());
			exit(1);
		}
#else
		Logging::log_critical("--oxDNA requires cogli1 to be compiled with oxDNA support enabled");
		exit(1);
#endif
	}
	else if(options[TOPOLOGY]) {
		string topology = options[TOPOLOGY].arg;
		if(options[MANFREDO]) _parser = new ManfredoParser(topology, input_files);
		else if(options[NATHAN]) _parser = new NathanParser(topology, input_files, atof(options[NATHAN].arg));
		else if(options[PATCHY]) _parser = new PatchyParser(topology, input_files, options[PATCHY].arg);
		else if(options[STARR]) _parser = new StarrParser(topology, input_files, options[STARR].arg);
		else if(options[LEVY]) _parser = new LevyParser(topology, input_files);
		else if(options[TEP]) _parser = new TEPParser(topology, input_files);
		else _parser = new DNAParser(topology, input_files);
	}
	else {
		if(options[RBC]) _parser = new RBCParser(input_files);
		else _parser = new MGLParser(input_files);
	}

	_parser->set_options(options);

	if(options[SHIFT_EVERY]) Scene::set_shift_every(atoi(options[SHIFT_EVERY].arg));
	if(options[VISIBILITY_FILE]) _parse_visibility_file(options[VISIBILITY_FILE].arg);
	if(options[MM_GROOVING]) Nucleotide::mode = Nucleotide::MM_GROOVING;
	if(options[BASE_COLOR_AS_BACKBONE]) Nucleotide::base_color_mode = Nucleotide::BACKBONE_COLOUR;
	if(options[RNA]) Nucleotide::mode = Nucleotide::RNA;

	_get_scenes();

	// only two lights are enabled at the beginning
	_lighting.toggle_light(2);
	_lighting.toggle_light(5);

	if(options[LOAD_FILE]) {
		std::ifstream dump_file(options[LOAD_FILE].arg);
		if(dump_file.bad() || !dump_file.is_open()) {
			Logging::log_critical("Dump file '%s' not accessible\n", options[LOAD_FILE].arg);
			exit(1);
		}

		try {
			_camera.load_state_from_file(dump_file);
			_lighting.load_state_from_file(dump_file);
			Scene::load_state_from_file(dump_file);
			_scenes[0]->normalise();
		}
		catch (std::string &s) {
			Logging::log_warning(s.c_str());
		}

		dump_file.close();
	}
	else _camera.autoscale(*_scenes[0]);

	_centre.always_centre = options[ALWAYS_CENTRE];
	if(options[ALWAYS_CENTRE].arg != NULL) _centre.centre_on = atoi(options[ALWAYS_CENTRE].arg);
	_centre.consider_inertia = options[INERTIA];

	if(options[COM_CENTRE] || _centre.always_centre) _scenes[0]->centre(_centre);
	
	// load groups
	if(options[GROUPS_FROM]) {
		std::ifstream groups_file(options[GROUPS_FROM].arg);
		if (groups_file.bad() || !groups_file.is_open()) {
			Logging::log_critical("Could not access file '%s' to load groups from\n", options[GROUPS_FROM].arg);
			exit(1);
		}
	}
}

Cogli1::~Cogli1() {
	if(_parser != NULL) delete _parser;
#ifdef OXDNA
	if(_oxDNA) delete _oxDNA_manager;
#endif

	for(vector<Scene *>::iterator it = _scenes.begin(); it != _scenes.end(); it++) delete *it;
}

void Cogli1::_parse_visibility_file(const char *v_file) {
	ifstream v(v_file);

	if(!v.good()) {
		Logging::log_critical("Visibility file '%s' not readable\n", v_file);
		exit(1);
	}

	while(v.good()) {
		int nid;
		v >> nid;
		_invisibile_particles.insert(nid);
	}

	v.close();
}

void Cogli1::_get_scenes() {
	if(_oxDNA) {
#ifdef OXDNA
		Scene *new_scene = _oxDNA_manager->get_initial_scene();
		if(_options[BRING_IN_BOX]) new_scene->bring_in_box();
		_scenes.push_back(new_scene);
#endif
	}
	else {
		glm::vec3 box;
		if(_options[BOX]) {
			vector<string> spl = StringHelper::split(string(_options[BOX].arg), ',');
			if(spl.size() != 3) {
				Logging::log_critical("The argument passed to --box should be composed of three numbers separated by commas and not contain any spaces (e.g. 10,5,10)\n");
				exit(1);
			}
			StringHelper::get_vec3(spl, 0, box);
		}
		int to_skip = 0;
		if(_options[CONFS_TO_SKIP]) to_skip = atoi(_options[CONFS_TO_SKIP].arg);

		int i = 0;
		while(!_parser->done()) {
			Scene *new_scene = _parser->next_scene();
			if(_options[BOX]) new_scene->set_box(box);
			new_scene->set_id(i);
			if(_options[BRING_IN_BOX]) new_scene->bring_in_box();

			vector<Shape *> shapes = new_scene->get_shapes();
			for(std::set<int>::iterator it = _invisibile_particles.begin(); it != _invisibile_particles.end(); it++) {
				unsigned int nid = *it;
				if(nid < shapes.size())	{
					if(_options[OPACITY]) shapes[*it]->set_opacity(atof(_options[OPACITY].arg));
					else shapes[*it]->set_visible(false);
				}
			}

			if(_options[ACTION_FILE]) {
				vector<BaseAction *> actions = ActionBuilder::actions_from_file(string(_options[ACTION_FILE].arg), _camera);
				new_scene->set_actions(actions);
			}

			_scenes.push_back(new_scene);

			i++;
			_parser->skip(to_skip);
		}
	}
}

void Cogli1::start_ogl() {
	OGLManager manager(_options, _centre);

	try {
		manager.init(_camera, _lighting, _scenes);
		while(!manager.done()) {
			manager.draw();
			if(manager.print_pov()) {
				manager.set_print_pov(false);
				Scene *s = manager.current_scene();
				_pov_manager.print_scene(*s, _camera, _lighting);
			}
#ifdef OXDNA
			if(_oxDNA) {
				if(manager.is_next_scene()) {
					Logging::log_info("Going forward %d steps\n", _granularity);
					_oxDNA_manager->run_forward(_granularity);
					_oxDNA_manager->update_scene(manager.current_scene());
				}
				if(manager.is_previous_scene()) {
					if(_oxDNA_manager->is_MD()) {
						Logging::log_info("Going backwards %d steps\n", _granularity);
						_oxDNA_manager->run_backward(_granularity);
						_oxDNA_manager->update_scene(manager.current_scene());
					}
					else Logging::log_warning("Ignoring the command, since going backwards in a non-MD simulation does not make sense\n");
				}
			}
#endif
		}
		manager.clean();
	}
	catch (string &error) {
		Logging::log_critical(error);
		exit(1);
	}
}

void Cogli1::print_all_pov() {
	for(vector<Scene *>::iterator it = _scenes.begin(); it != _scenes.end(); it++) {
		if(_options[ALWAYS_CENTRE]) (*it)->centre(_centre);
		else (*it)->normalise();

		do {
			_pov_manager.print_scene(*(*it), _camera, _lighting);
		} while((*it)->next_action());
	}
}
