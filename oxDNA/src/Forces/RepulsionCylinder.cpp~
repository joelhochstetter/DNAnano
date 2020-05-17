/*
 * RepulsionCylinder.cpp
 *
 *  Created on: 10/may/2020
 *      Author: Joel Hochstetter
 */

#include "RepulsionCylinder.h"
#include "../Utilities/oxDNAException.h"
#include "../Particles/BaseParticle.h"

template<typename number>
RepulsionCylinder<number>::RepulsionCylinder() : BaseForce<number>() {
	_particle = -1;
	_r0 = -1.;
	_height = -1.;	
	_center = LR_vector<number>(0., 0., 0.);

}

template<typename number>
void RepulsionCylinder<number>::get_settings (input_file &inp) {
	getInputInt (&inp, "particle", &_particle, 1);
	getInputNumber(&inp, "stiff", &this->_stiff, 1);
	getInputNumber(&inp, "r0", &this->_r0, 1);
	getInputNumber(&inp, "height", &this->_height, 1);

			
	int tmpi;
	double tmpf[3];
	std::string strdir;
	getInputString (&inp, "dir", strdir, 1);
	tmpi = sscanf(strdir.c_str(), "%lf,%lf,%lf", tmpf, tmpf + 1, tmpf + 2);
	if(tmpi != 3) throw oxDNAException ("Could not parse dir %s in external forces file. Aborting", strdir.c_str());
	this->_direction = LR_vector<number> ((number) tmpf[0], (number) tmpf[1], (number) tmpf[2]);
	this->_direction.normalize();
	
	//std::string strdir;
	if (getInputString (&inp, "center", strdir, 0) == KEY_FOUND) {
		//double tmpf[3];
		//int tmpi = sscanf(strdir.c_str(), "%lf,%lf,%lf", tmpf, tmpf + 1, tmpf + 2);
		tmpi = sscanf(strdir.c_str(), "%lf,%lf,%lf", tmpf, tmpf + 1, tmpf + 2);
		if (tmpi != 3) throw oxDNAException ("Could not parse center %s in external forces file. Aborting", strdir.c_str());
		this->_center = LR_vector<number> ((number) tmpf[0], (number) tmpf[1], (number) tmpf[2]);
	}
	
	
}

template<typename number>
void RepulsionCylinder<number>::init (BaseParticle<number> ** particles, int N, BaseBox<number> * box_ptr) {
	if (_particle >= N || N < -1) throw oxDNAException ("Trying to add a RepulsionCylinder on non-existent particle %d. Aborting", _particle);
	if (_particle != -1) {
		OX_LOG (Logger::LOG_INFO, "Adding RepulsionCylinder (stiff=%g, height=%g, r0=%g, dir=%g,%g,%g, center=%g,%g,%g, on particle %d", this->_stiff, this->_height, this->_r0, this->_direction.x, this->_direction.y, this->_direction.z, this->_center.x, this->_center.y, this->_center.z, _particle);
		particles[_particle]->add_ext_force(this);
	}
	else { // force affects all particles
		OX_LOG (Logger::LOG_INFO, "Adding RepulsionCylinder (stiff=%g, height=%g, r0=%g, dir=%g,%g,%g, center=%g,%g,%g, on ALL particles", this->_stiff, this->_height, this->_r0, this->_direction.x, this->_direction.y, this->_direction.z, this->_center.x, this->_center.y, this->_center.z);
		for(int i = 0; i < N; i ++) particles[i]->add_ext_force(this);
	}
}

template<typename number>
LR_vector<number> RepulsionCylinder<number>::value(llint step, LR_vector<number> &pos) {
    number dist = -1;
    LR_vector<number> fDirection = this->_direction;
    LR_vector<number> rel_pos = pos - this->_center;
    number h = this->_direction*rel_pos;
	number d = sqrt(rel_pos*rel_pos - h*h);
	number dh = 0.5*this->_height - abs(h);
    number dd = d - this->_r0;
	if (dh >=dd)  {
        dist = dd;
        fDirection = (rel_pos - h*this->_direction)/d;
    } else {
        dist = dh;
        fDirection = this->_direction*((h > 0) - (h < 0));      
    }
	if(dist <  0.) return LR_vector<number>(0., 0., 0.);
	else return (dist*this->_stiff)*fDirection;
}

template<typename number>
number RepulsionCylinder<number>::potential(llint step, LR_vector<number> &pos) {
    number dist;
    LR_vector<number> rel_pos = pos - this->_center;
    number h = this->_direction*rel_pos;
	number d = sqrt(rel_pos*rel_pos - h*h);
	number dh = 0.5*this->_height - abs(h);
    number dd = d - this->_r0;
	if (dh >=dd)  {
        dist = dd;
    } else {
        dist = dh;
    }
	if(dist < 0.) return 0.;
	else return (number) (0.5*this->_stiff*SQR(dist));
}

template class RepulsionCylinder<double>;
template class RepulsionCylinder<float>;
