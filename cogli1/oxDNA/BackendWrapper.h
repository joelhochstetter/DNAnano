/*
 * BackendWrapper.h
 *
 *  Created on: 11/nov/2013
 *      Author: lorenzo
 */

#ifndef BACKENDWRAPPER_H_
#define BACKENDWRAPPER_H_

// horrible, horrible hack
#define protected public
#include <Backends/SimBackend.h>
#undef protected

class BackendWrapper: public SimBackend<double> {
protected:
	SimBackend<double> *_wrapped;

public:
	BackendWrapper();
	virtual ~BackendWrapper();

	void wrap(SimBackend<double> *b) { _wrapped = b; }

	BaseParticle<double> **particles();
	int N();
	int N_strands();
	LR_vector<double> box_side();
	void set_dt_sign(int sign);

	void sim_step(llint) {};
};

#endif /* BACKENDWRAPPER_H_ */
