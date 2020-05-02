/*
 * Cogli1Manager.h
 *
 *  Created on: 11/nov/2013
 *      Author: lorenzo
 */

#ifndef COGLI1MANAGER_H_
#define COGLI1MANAGER_H_

#include <Managers/SimManager.h>
#include "BackendWrapper.h"
#include "../Drawables/Scene.h"

class Cogli1Manager: public SimManager {
protected:
	BackendWrapper _wrapper;
	bool _is_MD;
	int _particle_type;
public:
	enum ParticleTypes {
		DNA,
		PATCHY,
		SPHERE
	};

	Cogli1Manager(char *argv[]);
	virtual ~Cogli1Manager();

	bool is_MD() { return _is_MD; }
	Scene *get_initial_scene();
	void update_scene(Scene *);

	void init();
	void run_forward(int steps);
	void run_backward(int steps);
};

#endif /* COGLI1MANAGER_H_ */
