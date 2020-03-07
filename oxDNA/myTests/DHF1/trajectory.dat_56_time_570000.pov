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
	<4.629811, 1.103518, 1.674522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.635283, 0.703789, 1.660854>,  <4.638567, 0.463951, 1.652654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.635283, 0.703789, 1.660854>,  <4.629811, 1.103518, 1.674522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.635283, 0.703789, 1.660854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409125, 0.025587, -0.912120,
		0.912376, 0.026459, -0.408497,
		0.013681, -0.999322, -0.034170,
		4.639388, 0.403992, 1.650603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.189848, 1.284176, 2.317562>,  <4.629811, 1.103518, 1.674522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.189848, 1.284176, 2.317562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.186172, 1.530663, 2.002552>,  <4.183966, 1.678554, 1.813546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.186172, 1.530663, 2.002552>,  <4.189848, 1.284176, 2.317562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.186172, 1.530663, 2.002552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886550, -0.369314, -0.278631,
		-0.462540, 0.695619, 0.549700,
		-0.009191, 0.616215, -0.787524,
		4.183414, 1.715527, 1.766295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.510294, 1.705042, 2.309569>,  <4.189848, 1.284176, 2.317562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.510294, 1.705042, 2.309569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.668992, 1.681263, 1.943169>,  <3.764211, 1.666995, 1.723328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.668992, 1.681263, 1.943169>,  <3.510294, 1.705042, 2.309569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.668992, 1.681263, 1.943169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844247, -0.415358, -0.338710,
		-0.360333, 0.907713, -0.214981,
		0.396745, -0.059449, -0.916002,
		3.788016, 1.663428, 1.668368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.893568, 2.321891, 2.602595>,  <3.510294, 1.705042, 2.309569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.893568, 2.321891, 2.602595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.980531, 2.485455, 2.248075>,  <4.032709, 2.583593, 2.035364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.980531, 2.485455, 2.248075>,  <3.893568, 2.321891, 2.602595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.980531, 2.485455, 2.248075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873931, -0.322856, -0.363329,
		-0.434716, 0.853556, 0.287167,
		0.217408, 0.408910, -0.886300,
		4.045753, 2.608127, 1.982186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.310640, 2.750046, 2.355639>,  <3.893568, 2.321891, 2.602595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.310640, 2.750046, 2.355639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.526265, 2.662056, 2.030426>,  <3.655640, 2.609262, 1.835298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.526265, 2.662056, 2.030426>,  <3.310640, 2.750046, 2.355639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.526265, 2.662056, 2.030426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840458, -0.077259, -0.536341,
		0.055167, 0.972442, -0.226526,
		0.539062, -0.219974, -0.813034,
		3.687984, 2.596064, 1.786516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.941035, 3.108964, 1.746377>,  <3.310640, 2.750046, 2.355639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.941035, 3.108964, 1.746377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146749, 2.794731, 1.608757>,  <3.270177, 2.606191, 1.526185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146749, 2.794731, 1.608757>,  <2.941035, 3.108964, 1.746377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.146749, 2.794731, 1.608757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811136, -0.315274, -0.492607,
		0.278513, 0.532412, -0.799354,
		0.514285, -0.785582, -0.344051,
		3.301034, 2.559056, 1.505542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.740598, 3.158880, 1.192531>,  <2.941035, 3.108964, 1.746377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.740598, 3.158880, 1.192531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867816, 2.780041, 1.209755>,  <2.944146, 2.552737, 1.220090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867816, 2.780041, 1.209755>,  <2.740598, 3.158880, 1.192531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867816, 2.780041, 1.209755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760520, -0.281982, -0.584889,
		0.566090, 0.153272, -0.809969,
		0.318044, -0.947097, 0.043061,
		2.963229, 2.495911, 1.222673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.725293, 2.862702, 0.521851>,  <2.740598, 3.158880, 1.192531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.725293, 2.862702, 0.521851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692404, 2.541664, 0.758183>,  <2.672670, 2.349041, 0.899982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692404, 2.541664, 0.758183>,  <2.725293, 2.862702, 0.521851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.692404, 2.541664, 0.758183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849544, -0.253514, -0.462607,
		0.521070, -0.539974, -0.660995,
		-0.082224, -0.802595, 0.590830,
		2.667737, 2.300886, 0.935432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.038154, 2.169421, 0.460456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.074646, 1.825912, 0.662125>,  <1.096541, 1.619807, 0.783126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.074646, 1.825912, 0.662125>,  <1.038154, 2.169421, 0.460456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.074646, 1.825912, 0.662125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964551, 0.202096, 0.169700,
		-0.247625, 0.470816, 0.846767,
		0.091230, -0.858772, 0.504170,
		1.102015, 1.568281, 0.813376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.484407, 2.243412, 1.015017>,  <1.038154, 2.169421, 0.460456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.484407, 2.243412, 1.015017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.499399, 1.844673, 0.987038>,  <1.508394, 1.605430, 0.970250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.499399, 1.844673, 0.987038>,  <1.484407, 2.243412, 1.015017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.499399, 1.844673, 0.987038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985504, 0.025282, 0.167758,
		-0.165460, -0.075221, 0.983344,
		0.037480, -0.996846, -0.069947,
		1.510643, 1.545619, 0.966053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.627589, 2.003042, 1.638116>,  <1.484407, 2.243412, 1.015017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.627589, 2.003042, 1.638116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.784695, 1.771492, 1.352280>,  <1.878958, 1.632562, 1.180778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.784695, 1.771492, 1.352280>,  <1.627589, 2.003042, 1.638116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.784695, 1.771492, 1.352280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913595, 0.156670, 0.375230,
		-0.105257, -0.800223, 0.590393,
		0.392765, -0.578876, -0.714589,
		1.902524, 1.597829, 1.137903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.208700, 1.601687, 1.932720>,  <1.627589, 2.003042, 1.638116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.208700, 1.601687, 1.932720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.272202, 1.614418, 1.537998>,  <2.310302, 1.622056, 1.301165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.272202, 1.614418, 1.537998>,  <2.208700, 1.601687, 1.932720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.272202, 1.614418, 1.537998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964354, 0.209314, 0.161892,
		0.211705, -0.977330, 0.002536,
		0.158753, 0.031828, -0.986805,
		2.319828, 1.623966, 1.241957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.700578, 1.151003, 1.546774>,  <2.208700, 1.601687, 1.932720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.700578, 1.151003, 1.546774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.707333, 1.498863, 1.349422>,  <2.711385, 1.707579, 1.231011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.707333, 1.498863, 1.349422>,  <2.700578, 1.151003, 1.546774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.707333, 1.498863, 1.349422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881861, 0.219596, 0.417252,
		0.471207, -0.442138, -0.763202,
		0.016887, 0.869650, -0.493380,
		2.712399, 1.759758, 1.201409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.385235, 1.267567, 1.346150>,  <2.700578, 1.151003, 1.546774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.385235, 1.267567, 1.346150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.244194, 1.637444, 1.288712>,  <3.159570, 1.859369, 1.254249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.244194, 1.637444, 1.288712>,  <3.385235, 1.267567, 1.346150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.244194, 1.637444, 1.288712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801676, 0.377649, 0.463354,
		0.482688, 0.048263, -0.874462,
		-0.352602, 0.924690, -0.143595,
		3.138413, 1.914851, 1.245633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.912472, 1.541862, 1.025726>,  <3.385235, 1.267567, 1.346150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.912472, 1.541862, 1.025726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717361, 1.849571, 1.190792>,  <3.600296, 2.034197, 1.289832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717361, 1.849571, 1.190792>,  <3.912472, 1.541862, 1.025726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.717361, 1.849571, 1.190792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869639, 0.386943, 0.306599,
		0.076180, 0.508422, -0.857732,
		-0.487775, 0.769274, 0.412666,
		3.571029, 2.080353, 1.314592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.111567, 2.122457, 0.700611>,  <3.912472, 1.541862, 1.025726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.111567, 2.122457, 0.700611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.994629, 2.248825, 1.061661>,  <3.924466, 2.324646, 1.278290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.994629, 2.248825, 1.061661>,  <4.111567, 2.122457, 0.700611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.994629, 2.248825, 1.061661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907668, 0.388862, 0.157876,
		-0.301120, 0.865436, -0.400433,
		-0.292345, 0.315921, 0.902623,
		3.906925, 2.343601, 1.332448>
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
