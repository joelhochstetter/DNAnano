// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.641521, 2.068850, 3.941051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.801655, 2.255032, 4.256793>,  <0.897735, 2.366741, 4.446239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.801655, 2.255032, 4.256793>,  <0.641521, 2.068850, 3.941051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.801655, 2.255032, 4.256793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145364, -0.882745, 0.446799,
		0.904766, -0.064125, -0.421054,
		0.400335, 0.465455, 0.789356,
		0.921755, 2.394668, 4.493600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.298846, 1.864883, 4.015169>,  <0.641521, 2.068850, 3.941051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.298846, 1.864883, 4.015169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.129299, 1.965580, 4.363183>,  <1.027571, 2.025998, 4.571992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.129299, 1.965580, 4.363183>,  <1.298846, 1.864883, 4.015169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.129299, 1.965580, 4.363183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063121, -0.950050, 0.305647,
		0.903523, 0.184471, 0.386804,
		-0.423866, 0.251743, 0.870036,
		1.002139, 2.041103, 4.624194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.683342, 1.698870, 4.682623>,  <1.298846, 1.864883, 4.015169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.683342, 1.698870, 4.682623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.283459, 1.698746, 4.692266>,  <1.043528, 1.698671, 4.698050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.283459, 1.698746, 4.692266>,  <1.683342, 1.698870, 4.682623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.283459, 1.698746, 4.692266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002094, -0.995016, -0.099691,
		0.024016, -0.099712, 0.994726,
		-0.999709, -0.000311, 0.024105,
		0.983546, 1.698652, 4.699497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.460065, 1.206363, 5.285342>,  <1.683342, 1.698870, 4.682623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.460065, 1.206363, 5.285342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.208996, 1.234299, 4.975207>,  <1.058354, 1.251060, 4.789126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.208996, 1.234299, 4.975207>,  <1.460065, 1.206363, 5.285342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.208996, 1.234299, 4.975207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058711, -0.988884, -0.136604,
		-0.776260, -0.131264, 0.616596,
		-0.627673, 0.069840, -0.775338,
		1.020694, 1.255251, 4.742606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.968199, 0.741804, 5.309268>,  <1.460065, 1.206363, 5.285342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.968199, 0.741804, 5.309268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037384, 0.763195, 4.915878>,  <1.078895, 0.776029, 4.679844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037384, 0.763195, 4.915878>,  <0.968199, 0.741804, 5.309268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037384, 0.763195, 4.915878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098185, -0.994487, -0.036808,
		-0.980022, -0.090196, -0.177260,
		0.172963, 0.053477, -0.983475,
		1.089273, 0.779238, 4.620836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.545990, 0.208950, 4.782108>,  <0.968199, 0.741804, 5.309268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.545990, 0.208950, 4.782108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.908855, 0.329521, 4.664673>,  <1.126575, 0.401864, 4.594212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.908855, 0.329521, 4.664673>,  <0.545990, 0.208950, 4.782108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.908855, 0.329521, 4.664673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281417, -0.953346, -0.109247,
		-0.312820, 0.016484, -0.949669,
		0.907165, 0.301428, -0.293587,
		1.181005, 0.419950, 4.576597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.650255, -0.141398, 4.156619>,  <0.545990, 0.208950, 4.782108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.650255, -0.141398, 4.156619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.980007, -0.091412, 4.377446>,  <1.177859, -0.061420, 4.509943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.980007, -0.091412, 4.377446>,  <0.650255, -0.141398, 4.156619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980007, -0.091412, 4.377446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117066, -0.991879, 0.049714,
		0.553798, 0.023645, -0.832315,
		0.824381, 0.124967, 0.552068,
		1.227322, -0.053922, 4.543067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.549894, -0.809238, 4.396673>,  <0.650255, -0.141398, 4.156619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.549894, -0.809238, 4.396673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.274220, -0.522251, 4.437202>,  <0.108815, -0.350059, 4.461520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.274220, -0.522251, 4.437202>,  <0.549894, -0.809238, 4.396673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.274220, -0.522251, 4.437202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596580, -0.482496, -0.641318,
		-0.411234, -0.502436, 0.760555,
		-0.689187, 0.717464, 0.101325,
		0.067464, -0.307011, 4.467599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.836071, 2.778240, 0.893086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.722122, 3.136780, 1.028973>,  <5.653753, 3.351903, 1.110505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.722122, 3.136780, 1.028973>,  <5.836071, 2.778240, 0.893086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.722122, 3.136780, 1.028973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729535, -0.432625, 0.529730,
		0.621793, -0.096931, 0.777160,
		-0.284872, 0.896348, 0.339717,
		5.636661, 3.405684, 1.130888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.898701, 2.793763, 1.624348>,  <5.836071, 2.778240, 0.893086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.898701, 2.793763, 1.624348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.621189, 3.058674, 1.511169>,  <5.454682, 3.217620, 1.443262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.621189, 3.058674, 1.511169>,  <5.898701, 2.793763, 1.624348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.621189, 3.058674, 1.511169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712858, -0.575592, 0.400658,
		0.102485, 0.479669, 0.871444,
		-0.693780, 0.662277, -0.282947,
		5.413055, 3.257357, 1.426285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.402424, 2.938908, 2.241949>,  <5.898701, 2.793763, 1.624348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.402424, 2.938908, 2.241949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.257185, 3.013565, 1.876802>,  <5.170042, 3.058359, 1.657715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.257185, 3.013565, 1.876802>,  <5.402424, 2.938908, 2.241949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.257185, 3.013565, 1.876802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775412, -0.603753, 0.184984,
		-0.516621, 0.775014, 0.363946,
		-0.363099, 0.186642, -0.912866,
		5.148255, 3.069558, 1.602943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.693509, 3.284172, 2.118842>,  <5.402424, 2.938908, 2.241949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.693509, 3.284172, 2.118842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.833368, 3.007282, 1.866312>,  <4.917284, 2.841148, 1.714794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.833368, 3.007282, 1.866312>,  <4.693509, 3.284172, 2.118842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.833368, 3.007282, 1.866312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553077, -0.696417, 0.457284,
		-0.756208, 0.189283, -0.626355,
		0.349649, -0.692225, -0.631324,
		4.938263, 2.799615, 1.676915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.166372, 2.888971, 2.024512>,  <4.693509, 3.284172, 2.118842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.166372, 2.888971, 2.024512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.481659, 2.665466, 1.921362>,  <4.670831, 2.531364, 1.859472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.481659, 2.665466, 1.921362>,  <4.166372, 2.888971, 2.024512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481659, 2.665466, 1.921362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451350, -0.809746, 0.374959,
		-0.418326, -0.179157, -0.890453,
		0.788217, -0.558761, -0.257876,
		4.718124, 2.497838, 1.843999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.031632, 2.309021, 1.589560>,  <4.166372, 2.888971, 2.024512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.031632, 2.309021, 1.589560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.328695, 2.226627, 1.844442>,  <4.506933, 2.177191, 1.997372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.328695, 2.226627, 1.844442>,  <4.031632, 2.309021, 1.589560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.328695, 2.226627, 1.844442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556248, -0.719576, 0.415691,
		0.372893, -0.663161, -0.648975,
		0.742657, -0.205983, 0.637206,
		4.551492, 2.164832, 2.035604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.137766, 1.527028, 1.636325>,  <4.031632, 2.309021, 1.589560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.137766, 1.527028, 1.636325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.276974, 1.672832, 1.981813>,  <4.360498, 1.760315, 2.189106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.276974, 1.672832, 1.981813>,  <4.137766, 1.527028, 1.636325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.276974, 1.672832, 1.981813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426766, -0.758719, 0.492155,
		0.834717, -0.539887, -0.108488,
		0.348020, 0.364511, 0.863721,
		4.381380, 1.782186, 2.240930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.409867, 1.032454, 2.080540>,  <4.137766, 1.527028, 1.636325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.409867, 1.032454, 2.080540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.299631, 1.333515, 2.319727>,  <4.233490, 1.514152, 2.463239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.299631, 1.333515, 2.319727>,  <4.409867, 1.032454, 2.080540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.299631, 1.333515, 2.319727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422508, -0.653590, 0.627938,
		0.863445, -0.079594, 0.498124,
		-0.275589, 0.752652, 0.597968,
		4.216954, 1.559311, 2.499117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
