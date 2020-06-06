/**
 * @file    RepulsionCylinder.h
 * @date    10/may/2020
 * @author  Joel Hochstetter
 *
 */

#ifndef REPULSIONCYLINDER_H_
#define REPULSIONCYLINDER_H_

#include "BaseForce.h"

/**
 * @brief External force field that confines particles into a semispace.
 *
 * The definition of the plane is given by dir * (x,y,z) + position = 0.
 * Example section in the external forces file:

 modified so the corners of the plane are expressed

\n
{
type = repulsion_cylinder
#whole system
particle = -1
stiff = 1. #48.6 pN /(simulation length unit)  
dir = 1, 0, 0
position = 0
center = 0, 10, 0
r0 = 10.0
height =  5.0
}
 * @verbatim
stiff = <float> (stiffness of the repulsion.)
dir = <float>,<float>,<float> (the vector normal to the plane: it should point towards the half-plane where the repulsion is not acting.)
position = <float> (defines the position of the plane along the direction identified by the plane normal.)
particle = <int> (index of the particle on which the force shall be applied. If -1, the force will be exerted on all the particles.)
@endverbatim
*/
template<typename number>
class RepulsionCylinder : public BaseForce<number> {
private:
	int _particle;

public:
	number _height, _r0;
	/// center of the sphere
	LR_vector<number> _center, _direction;


	RepulsionCylinder ();
	virtual ~RepulsionCylinder() {}

	void get_settings (input_file &);
	void init (BaseParticle<number> **, int, BaseBox<number> *);

	virtual LR_vector<number> value(llint step, LR_vector<number> &pos);
	virtual number potential(llint step, LR_vector<number> &pos);
};

#endif // MOVINGTRAP_H
