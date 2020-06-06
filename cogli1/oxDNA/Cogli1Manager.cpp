/*
 * Cogli1Manager.cpp
 *
 *  Created on: 11/nov/2013
 *      Author: lorenzo
 */

#include <string>
#include <sstream>

#include "Cogli1Manager.h"
#include <Utilities/parse_input/parse_input.h>
#include "../glm/glm.hpp"
#include "../Drawables/Sphere.h"
#include "../Drawables/DNA.h"
#include "../Utils/Logging.h"

using glm::vec3;

Cogli1Manager::Cogli1Manager(char *argv[]) : SimManager(2, argv) {
	char backend_prec[512] = "double";
	getInputString(&_input, "backend_precision", backend_prec, 0);
	if(strncmp(backend_prec, "double", 512)) throw oxDNAException("Backend precision must be double");

	char sim_type[512] = "MD";
	getInputString(&_input, "sim_type", sim_type, 0);
	_is_MD = (bool) (!strncmp(sim_type, "MD", 512));

	char inter_type[512] = "DNA";
	getInputString(&_input, "interaction_type", inter_type, 0);
	if(!strncmp(inter_type, "DNA", 512)) _particle_type = Cogli1Manager::DNA;
	else if(!strncmp(inter_type, "patchy", 512)) _particle_type = Cogli1Manager::PATCHY;
	else _particle_type = Cogli1Manager::SPHERE;
}

Cogli1Manager::~Cogli1Manager() {

}

Scene *Cogli1Manager::get_initial_scene() {
	int N = _wrapper.N();
	LR_vector<double> ox_box = _wrapper.box_side();
	vec3 box(ox_box.x, ox_box.y, ox_box.z);

	Scene *s = new Scene();
	s->set_box(box);

	// if the interaction type is dna then we first build the strands
	if(_particle_type == Cogli1Manager::DNA) {
		for(int i = 0; i < _wrapper.N_strands(); i++) s->add_shape(new DNAStrand());
	}

	for(int i = 0; i < N; i++) {
		switch(_particle_type) {
		case Cogli1Manager::DNA: {
			BaseParticle<double> *p = _wrapper.particles()[i];
			DNAStrand *strand = dynamic_cast<DNAStrand *>(s->get_shapes()[p->strand_id]);
			if(strand == 0) throw oxDNAException("Cannot cast to DNAStrand *, something went horribly wrong. I was working on particle %d of strand %d.\n", p->index, p->strand_id);
			Nucleotide *n = new Nucleotide(vec3(0.f, 0.f, 0.f), vec3(1.f, 0.f, 0.f), vec3(0.f, 0.f, 1.f), glm::vec4(1.f, 0.f, 0.f, 1.f));
			strand->add_nucleotide(n, p->index);
			strand->set_id(p->strand_id);
			strand->set_automatic_color();
			break;
		}
		case Cogli1Manager::PATCHY: {
			BaseParticle<double> *p = _wrapper.particles()[i];
			int N_patches = p->N_int_centers;

			glm::vec4 color;
			switch(N_patches) {
			case 2:
				color = glm::vec4(0.f, 1.f, 0.f, 1.f);
				break;
			case 4:
				color = glm::vec4(0.f, 0.f, 1.f, 1.f);
				break;
			default:
				color = glm::vec4(1.f, 0.f, 0.f, 1.f);
			}
			s->add_shape(new Sphere(vec3(0.f, 0.f, 0.f), 0.5f, color));

			for(int ip = 0; ip < N_patches; ip++) s->add_shape(new Sphere(vec3(0.f, 0.f, 0.f), 0.06f, glm::vec4(0.6f, 0.6f, 0.f, 1.f)));
			break;
		}
		case Cogli1Manager::SPHERE:
		default:
			s->add_shape(new Sphere(vec3(0.f, 0.f, 0.f), 0.5f, glm::vec4(1.f, 0.f, 0.f, 1.f)));
			break;
		}
	}

	update_scene(s);

	return s;
}

void Cogli1Manager::update_scene(Scene *s) {
	int N = _wrapper.N();
	std::vector<Shape *> shapes = s->get_shapes();
	BaseParticle<double> **particles = _wrapper.particles();

	// for particles that have more than one shape associated
	int curr_i = 0;
	for(int i = 0; i < N; i++) {
		BaseParticle<double> *p = particles[i];
		Shape *ps;
		if(_particle_type == Cogli1Manager::DNA) {
			DNAStrand *strand = dynamic_cast<DNAStrand *>(s->get_shapes()[p->strand_id]);
			ps = strand->nucleotides()[i];
		}
		else if(_particle_type == Cogli1Manager::PATCHY) ps = shapes[curr_i];
		else ps = shapes[i];

		vec3 new_pos(p->pos.x, p->pos.y, p->pos.z);
		vec3 diff = new_pos - ps->position();
		// this is needed if one wants to be able to globally shift the configuration while
		// the simulation is running. Without this line each time oxDNA changes the configuration
		// the global shift is reset
		diff += Scene::global_shift;
		ps->shift(diff);

		// we have to keep the com updated
		if(_particle_type == Cogli1Manager::DNA) {
			DNAStrand *strand = dynamic_cast<DNAStrand *>(s->get_shapes()[p->strand_id]);
			vec3 diff_per_strand = diff/(float)strand->nucleotides().size();
			strand->shift_com_only(diff_per_strand);
		}
		else if(_particle_type == Cogli1Manager::PATCHY) {
			p->set_positions();
			int N_patches = p->N_int_centers;
			for(int ip = 0; ip < N_patches; ip++) {
				curr_i++;
				ps = shapes[curr_i];
				LR_vector<double> ox_pos = p->pos + p->int_centers[ip];
				vec3 new_p_pos(ox_pos.x, ox_pos.y, ox_pos.z);
				diff = new_p_pos - ps->position();
				ps->shift(diff);
			}
			curr_i++;
		}

		// if particles are not sphere then we also need to update their orientations
		if(_particle_type != Cogli1Manager::SPHERE) {
			glm::mat3 glm_orientation;
			for(int k = 0; k < 3; k++) glm_orientation[0][k] = p->orientation.v1[k];
			for(int k = 0; k < 3; k++) glm_orientation[1][k] = p->orientation.v2[k];
			for(int k = 0; k < 3; k++) glm_orientation[2][k] = p->orientation.v3[k];
			ps->set_orientation(glm_orientation);
		}
	}

	// new scene title
	std::stringstream title;
	title << "oxDNA: " << _cur_step;
	s->set_base_title(title.str());
}

void Cogli1Manager::init() {
	SimManager::init();
	_cur_step = _start_step;
	_wrapper.wrap((SimBackend<double> *) _backend);
}

void Cogli1Manager::run_forward(int steps) {
	if(_is_MD) _wrapper.set_dt_sign(+1);

	for(int i = 0; i < steps; i++) {
		if(_cur_step == _time_scale_manager.next_step) {
			if(_cur_step > _start_step) _backend->print_conf(_cur_step);
			setTSNextStep(&_time_scale_manager);
		}

		_backend->print_observables(_cur_step);
		_backend->sim_step(_cur_step);

		_cur_step++;
	}
}

void Cogli1Manager::run_backward(int steps) {
	_wrapper.set_dt_sign(-1);

	for(int i = 0; i < steps; i++) {
		if(_cur_step == _time_scale_manager.next_step) {
			if(_cur_step > _start_step) _backend->print_conf(_cur_step);
			setTSNextStep(&_time_scale_manager);
		}

		_backend->print_observables(_cur_step);
		_backend->sim_step(_cur_step);

		_cur_step--;
		if(_cur_step < 0) Logging::log_warning("The current step is less than 0. Since this is not supported in oxDNA, observables will likely not work\n");
	}
}
