/*
 * BackendWrapper.cpp
 *
 *  Created on: 11/nov/2013
 *      Author: lorenzo
 */

#include "BackendWrapper.h"

// horrible, horrible hack, again
#define protected public
#include <Backends/MDBackend.h>
#undef protected

BackendWrapper::BackendWrapper(): _wrapped(NULL) {

}

BackendWrapper::~BackendWrapper() {

}

BaseParticle<double> **BackendWrapper::particles() {
	return _wrapped->_particles;
}

int BackendWrapper::N() {
	return _wrapped->_N;
}

int BackendWrapper::N_strands() {
	return _wrapped->_N_strands;
}

LR_vector<double> BackendWrapper::box_side() {
#ifdef ANISOTROPIC_BOX
	return _wrapped->_box_side;
#else
	double L = _wrapped->_box_side;
	return LR_vector<double>(L, L, L);
#endif
}

void BackendWrapper::set_dt_sign(int sign) {
	MDBackend<double> *mdb = dynamic_cast<MDBackend<double> *>(_wrapped);
	if(mdb == 0) throw oxDNAException("Cannot invert the dt of a non-MD simulation\n");

	// the first bit takes care of the sign
	mdb->_dt = ((sign > 0) - (sign < 0)) * fabs(mdb->_dt);
}
