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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.170967, 53.124298, 49.628319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979980, 53.176769, 49.975842>,  <35.865387, 53.208252, 50.184353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979980, 53.176769, 49.975842>,  <36.170967, 53.124298, 49.628319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979980, 53.176769, 49.975842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674410, -0.579088, 0.458071,
		0.563203, 0.804642, 0.188025,
		-0.477466, 0.131181, 0.868802,
		35.836742, 53.216125, 50.236481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719471, 53.380714, 50.063370>,  <36.170967, 53.124298, 49.628319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719471, 53.380714, 50.063370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419968, 53.189445, 50.246983>,  <36.240265, 53.074684, 50.357151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419968, 53.189445, 50.246983>,  <36.719471, 53.380714, 50.063370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419968, 53.189445, 50.246983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662467, -0.563208, 0.493897,
		0.022361, 0.673902, 0.738482,
		-0.748757, -0.478177, 0.459032,
		36.195339, 53.045994, 50.384693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686001, 53.481453, 50.795010>,  <36.719471, 53.380714, 50.063370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686001, 53.481453, 50.795010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563492, 53.111443, 50.705093>,  <36.489986, 52.889439, 50.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563492, 53.111443, 50.705093>,  <36.686001, 53.481453, 50.795010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563492, 53.111443, 50.705093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825179, -0.375717, 0.421802,
		-0.474633, -0.056304, 0.878381,
		-0.306273, -0.925023, -0.224788,
		36.471611, 52.833935, 50.637657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801720, 53.056541, 51.455349>,  <36.686001, 53.481453, 50.795010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801720, 53.056541, 51.455349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791290, 52.840439, 51.118912>,  <36.785030, 52.710777, 50.917049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791290, 52.840439, 51.118912>,  <36.801720, 53.056541, 51.455349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791290, 52.840439, 51.118912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707428, -0.604448, 0.366317,
		-0.706304, -0.585463, 0.397955,
		-0.026078, -0.540256, -0.841097,
		36.783466, 52.678364, 50.866581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994026, 52.893909, 52.189240>,  <36.801720, 53.056541, 51.455349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994026, 52.893909, 52.189240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321815, 53.105270, 52.100464>,  <37.518490, 53.232086, 52.047199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321815, 53.105270, 52.100464>,  <36.994026, 52.893909, 52.189240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321815, 53.105270, 52.100464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567696, 0.695240, -0.440866,
		-0.078656, 0.487270, 0.869702,
		0.819472, 0.528403, -0.221937,
		37.567657, 53.263790, 52.033882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976601, 53.672207, 52.461761>,  <36.994026, 52.893909, 52.189240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976601, 53.672207, 52.461761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187115, 53.612453, 52.126930>,  <37.313423, 53.576603, 51.926029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187115, 53.612453, 52.126930>,  <36.976601, 53.672207, 52.461761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187115, 53.612453, 52.126930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665690, 0.540106, -0.514920,
		0.529033, 0.828233, 0.184808,
		0.526289, -0.149385, -0.837081,
		37.345001, 53.567638, 51.875805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095955, 54.394997, 52.148232>,  <36.976601, 53.672207, 52.461761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095955, 54.394997, 52.148232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029995, 54.077106, 51.914574>,  <36.990421, 53.886372, 51.774380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029995, 54.077106, 51.914574>,  <37.095955, 54.394997, 52.148232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029995, 54.077106, 51.914574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783537, 0.465274, -0.411813,
		0.599064, 0.389794, -0.699416,
		-0.164898, -0.794721, -0.584147,
		36.980526, 53.838692, 51.739330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442493, 54.342422, 52.833050>,  <37.095955, 54.394997, 52.148232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442493, 54.342422, 52.833050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401920, 54.143879, 52.488182>,  <37.377575, 54.024754, 52.281261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401920, 54.143879, 52.488182>,  <37.442493, 54.342422, 52.833050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401920, 54.143879, 52.488182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994693, -0.065630, -0.079239,
		-0.017254, -0.865636, 0.500377,
		-0.101432, -0.496354, -0.862174,
		37.371490, 53.994972, 52.229530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560593, 54.175285, 53.432945>,  <37.442493, 54.342422, 52.833050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560593, 54.175285, 53.432945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339058, 54.483372, 53.559460>,  <37.206139, 54.668224, 53.635368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339058, 54.483372, 53.559460>,  <37.560593, 54.175285, 53.432945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339058, 54.483372, 53.559460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675060, 0.193001, 0.712071,
		0.487402, 0.607883, -0.626831,
		-0.553835, 0.770213, 0.316289,
		37.172909, 54.714436, 53.654346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823269, 54.859142, 53.343769>,  <37.560593, 54.175285, 53.432945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823269, 54.859142, 53.343769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619843, 54.756157, 53.672421>,  <37.497787, 54.694366, 53.869614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619843, 54.756157, 53.672421>,  <37.823269, 54.859142, 53.343769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619843, 54.756157, 53.672421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796621, 0.221422, 0.562465,
		-0.326740, 0.940578, 0.092491,
		-0.508562, -0.257460, 0.821632,
		37.467274, 54.678917, 53.918911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128830, 55.080666, 53.955544>,  <37.823269, 54.859142, 53.343769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128830, 55.080666, 53.955544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290268, 54.740211, 54.089813>,  <38.387131, 54.535938, 54.170376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290268, 54.740211, 54.089813>,  <38.128830, 55.080666, 53.955544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290268, 54.740211, 54.089813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496657, -0.511925, -0.700903,
		0.768405, 0.116164, -0.629332,
		0.403590, -0.851140, 0.335672,
		38.411346, 54.484871, 54.190514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567348, 54.650856, 53.433323>,  <38.128830, 55.080666, 53.955544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567348, 54.650856, 53.433323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402142, 54.414322, 53.710373>,  <38.303017, 54.272400, 53.876602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402142, 54.414322, 53.710373>,  <38.567348, 54.650856, 53.433323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402142, 54.414322, 53.710373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419525, -0.551494, -0.721009,
		0.808340, -0.588365, -0.020304,
		-0.413019, -0.591339, 0.692628,
		38.278236, 54.236919, 53.918159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049374, 54.338650, 53.756695>,  <38.567348, 54.650856, 53.433323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049374, 54.338650, 53.756695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101357, 54.428017, 54.143105>,  <39.132545, 54.481636, 54.374950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101357, 54.428017, 54.143105>,  <39.049374, 54.338650, 53.756695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101357, 54.428017, 54.143105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952761, -0.297878, -0.059285,
		0.274511, 0.928092, -0.251573,
		0.129960, 0.223415, 0.966021,
		39.140343, 54.495041, 54.432911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631073, 54.736938, 53.802765>,  <39.049374, 54.338650, 53.756695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631073, 54.736938, 53.802765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602417, 54.578255, 54.168823>,  <39.585224, 54.483044, 54.388458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602417, 54.578255, 54.168823>,  <39.631073, 54.736938, 53.802765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602417, 54.578255, 54.168823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978043, -0.207961, -0.013582,
		0.195703, 0.894079, 0.402894,
		-0.071643, -0.396706, 0.915146,
		39.580925, 54.459244, 54.443367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147793, 55.069138, 54.244900>,  <39.631073, 54.736938, 53.802765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147793, 55.069138, 54.244900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070839, 54.698647, 54.374573>,  <40.024666, 54.476353, 54.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070839, 54.698647, 54.374573>,  <40.147793, 55.069138, 54.244900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070839, 54.698647, 54.374573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980747, -0.170203, 0.095741,
		-0.033501, 0.336360, 0.941137,
		-0.192388, -0.926225, 0.324183,
		40.013123, 54.420780, 54.471828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550449, 54.998924, 54.805210>,  <40.147793, 55.069138, 54.244900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550449, 54.998924, 54.805210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490379, 54.625626, 54.674675>,  <40.454338, 54.401646, 54.596355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490379, 54.625626, 54.674675>,  <40.550449, 54.998924, 54.805210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490379, 54.625626, 54.674675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940926, -0.236235, 0.242593,
		-0.303492, -0.270628, 0.913594,
		-0.150171, -0.933249, -0.326336,
		40.445328, 54.345650, 54.576775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480881, 54.525906, 55.388157>,  <40.550449, 54.998924, 54.805210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480881, 54.525906, 55.388157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626450, 54.389740, 55.041359>,  <40.713791, 54.308041, 54.833279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626450, 54.389740, 55.041359>,  <40.480881, 54.525906, 55.388157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626450, 54.389740, 55.041359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905992, -0.086686, 0.414323,
		-0.216199, -0.936270, 0.276867,
		0.363918, -0.340416, -0.866995,
		40.735626, 54.287617, 54.781261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162590, 54.773281, 55.588566>,  <40.480881, 54.525906, 55.388157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162590, 54.773281, 55.588566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081028, 54.543262, 55.905487>,  <41.032093, 54.405251, 56.095642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081028, 54.543262, 55.905487>,  <41.162590, 54.773281, 55.588566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081028, 54.543262, 55.905487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836850, -0.522364, -0.163760,
		0.508041, 0.629650, 0.587737,
		-0.203902, -0.575044, 0.792306,
		41.019859, 54.370750, 56.143177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626209, 54.848339, 56.153797>,  <41.162590, 54.773281, 55.588566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626209, 54.848339, 56.153797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530262, 54.461761, 56.117043>,  <41.472694, 54.229813, 56.094990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530262, 54.461761, 56.117043>,  <41.626209, 54.848339, 56.153797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530262, 54.461761, 56.117043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965637, -0.227765, -0.125174,
		0.100045, -0.118756, 0.987870,
		-0.239867, -0.966447, -0.091888,
		41.458302, 54.171829, 56.089478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989021, 54.448154, 56.647293>,  <41.626209, 54.848339, 56.153797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989021, 54.448154, 56.647293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883835, 54.220333, 56.335793>,  <41.820724, 54.083641, 56.148891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883835, 54.220333, 56.335793>,  <41.989021, 54.448154, 56.647293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883835, 54.220333, 56.335793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939155, -0.335992, -0.071397,
		-0.220992, -0.750146, 0.623252,
		-0.262966, -0.569552, -0.778755,
		41.804947, 54.049469, 56.102165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101330, 53.743092, 56.793877>,  <41.989021, 54.448154, 56.647293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101330, 53.743092, 56.793877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132904, 53.809517, 56.400696>,  <42.151848, 53.849373, 56.164787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132904, 53.809517, 56.400696>,  <42.101330, 53.743092, 56.793877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132904, 53.809517, 56.400696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986801, -0.152874, 0.053415,
		-0.141397, -0.974193, -0.175939,
		0.078933, 0.166064, -0.982951,
		42.156586, 53.859337, 56.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391594, 53.212391, 56.371258>,  <42.101330, 53.743092, 56.793877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391594, 53.212391, 56.371258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492306, 53.585323, 56.267433>,  <42.552734, 53.809082, 56.205139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492306, 53.585323, 56.267433>,  <42.391594, 53.212391, 56.371258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492306, 53.585323, 56.267433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966281, -0.227233, 0.121107,
		0.053930, -0.281301, -0.958103,
		0.251780, 0.932328, -0.259561,
		42.567841, 53.865021, 56.189564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044044, 53.183556, 56.091541>,  <42.391594, 53.212391, 56.371258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044044, 53.183556, 56.091541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985516, 53.570572, 56.173950>,  <42.950397, 53.802784, 56.223396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985516, 53.570572, 56.173950>,  <43.044044, 53.183556, 56.091541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985516, 53.570572, 56.173950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988116, 0.133038, 0.076996,
		0.047088, 0.214844, -0.975513,
		-0.146322, 0.967545, 0.206026,
		42.941620, 53.860836, 56.235760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435520, 53.611107, 55.644314>,  <43.044044, 53.183556, 56.091541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435520, 53.611107, 55.644314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372711, 53.812603, 55.984100>,  <43.335026, 53.933502, 56.187973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372711, 53.812603, 55.984100>,  <43.435520, 53.611107, 55.644314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372711, 53.812603, 55.984100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949347, 0.314045, -0.010749,
		-0.272185, 0.804749, -0.527537,
		-0.157020, 0.503741, 0.849464,
		43.325603, 53.963726, 56.238941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861591, 54.161884, 55.496552>,  <43.435520, 53.611107, 55.644314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861591, 54.161884, 55.496552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776646, 54.113022, 55.884361>,  <43.725677, 54.083706, 56.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776646, 54.113022, 55.884361>,  <43.861591, 54.161884, 55.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776646, 54.113022, 55.884361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972856, 0.066921, 0.221525,
		-0.091942, 0.990252, 0.104629,
		-0.212364, -0.122156, 0.969525,
		43.712936, 54.076374, 56.175220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901760, 54.783543, 55.920071>,  <43.861591, 54.161884, 55.496552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901760, 54.783543, 55.920071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996090, 54.425968, 56.072525>,  <44.052689, 54.211422, 56.163998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996090, 54.425968, 56.072525>,  <43.901760, 54.783543, 55.920071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996090, 54.425968, 56.072525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969372, 0.188704, -0.157192,
		0.068599, 0.406530, 0.911059,
		0.235823, -0.893938, 0.381133,
		44.066837, 54.157787, 56.186867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166969, 54.813839, 56.591576>,  <43.901760, 54.783543, 55.920071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166969, 54.813839, 56.591576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319435, 54.489040, 56.414772>,  <44.410915, 54.294159, 56.308689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319435, 54.489040, 56.414772>,  <44.166969, 54.813839, 56.591576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319435, 54.489040, 56.414772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924507, 0.335151, 0.181553,
		0.000719, -0.477840, 0.878447,
		0.381166, -0.811999, -0.442007,
		44.433784, 54.245441, 56.282169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726696, 54.511421, 56.988930>,  <44.166969, 54.813839, 56.591576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726696, 54.511421, 56.988930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785828, 54.424412, 56.603012>,  <44.821308, 54.372208, 56.371460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785828, 54.424412, 56.603012>,  <44.726696, 54.511421, 56.988930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785828, 54.424412, 56.603012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948405, 0.307840, 0.075913,
		0.280491, -0.926240, 0.251804,
		0.147829, -0.217519, -0.964796,
		44.830177, 54.359158, 56.313572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236942, 53.988747, 56.879658>,  <44.726696, 54.511421, 56.988930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236942, 53.988747, 56.879658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243671, 54.226299, 56.557907>,  <45.247707, 54.368832, 56.364857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243671, 54.226299, 56.557907>,  <45.236942, 53.988747, 56.879658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243671, 54.226299, 56.557907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978190, 0.156799, 0.136226,
		0.207028, -0.789123, -0.578295,
		0.016823, 0.593885, -0.804374,
		45.248718, 54.404465, 56.316593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893219, 53.859859, 56.548031>,  <45.236942, 53.988747, 56.879658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893219, 53.859859, 56.548031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763741, 54.231464, 56.476303>,  <45.686054, 54.454426, 56.433266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763741, 54.231464, 56.476303>,  <45.893219, 53.859859, 56.548031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763741, 54.231464, 56.476303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900376, 0.360691, 0.243363,
		0.290767, -0.082681, -0.953215,
		-0.323695, 0.929013, -0.179321,
		45.666634, 54.510170, 56.422508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098560, 54.270153, 55.957886>,  <45.893219, 53.859859, 56.548031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098560, 54.270153, 55.957886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045212, 54.496105, 56.283615>,  <46.013203, 54.631676, 56.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045212, 54.496105, 56.283615>,  <46.098560, 54.270153, 55.957886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045212, 54.496105, 56.283615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965075, 0.260964, -0.022967,
		-0.225483, 0.782822, -0.579954,
		-0.133368, 0.564878, 0.814325,
		46.005203, 54.665569, 56.527912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600605, 54.191807, 55.432220>,  <46.098560, 54.270153, 55.957886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600605, 54.191807, 55.432220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701588, 54.170559, 55.818680>,  <46.762177, 54.157810, 56.050556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701588, 54.170559, 55.818680>,  <46.600605, 54.191807, 55.432220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701588, 54.170559, 55.818680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104058, -0.991210, -0.081693,
		0.961996, 0.121159, -0.244711,
		0.252457, -0.053124, 0.966148,
		46.777325, 54.154621, 56.108524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115627, 53.849735, 55.436134>,  <46.600605, 54.191807, 55.432220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115627, 53.849735, 55.436134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932419, 53.815742, 55.790085>,  <46.822495, 53.795349, 56.002453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932419, 53.815742, 55.790085>,  <47.115627, 53.849735, 55.436134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932419, 53.815742, 55.790085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089287, -0.985989, -0.140905,
		0.884447, -0.143545, 0.444013,
		-0.458018, -0.084979, 0.884871,
		46.795013, 53.790249, 56.055546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885860, 54.083916, 54.777946>,  <47.115627, 53.849735, 55.436134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885860, 54.083916, 54.777946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098915, 54.193108, 54.457504>,  <47.226749, 54.258621, 54.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098915, 54.193108, 54.457504>,  <46.885860, 54.083916, 54.777946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098915, 54.193108, 54.457504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697402, 0.394716, 0.598189,
		0.479504, -0.877315, 0.019864,
		0.532641, 0.272981, -0.801109,
		47.258709, 54.275002, 54.217171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.500206, 53.644958, 54.612679>,  <46.885860, 54.083916, 54.777946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.500206, 53.644958, 54.612679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500031, 54.042130, 54.565182>,  <47.499924, 54.280430, 54.536682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500031, 54.042130, 54.565182>,  <47.500206, 53.644958, 54.612679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.500031, 54.042130, 54.565182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758958, 0.077650, 0.646493,
		0.651139, -0.089838, -0.753622,
		-0.000439, 0.992925, -0.118744,
		47.499901, 54.340008, 54.529560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.191639, 53.808727, 54.355583>,  <47.500206, 53.644958, 54.612679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.191639, 53.808727, 54.355583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.009274, 54.102577, 54.556568>,  <47.899853, 54.278885, 54.677158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.009274, 54.102577, 54.556568>,  <48.191639, 53.808727, 54.355583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.009274, 54.102577, 54.556568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826050, 0.139095, 0.546163,
		0.331333, 0.664066, -0.670250,
		-0.455916, 0.734622, 0.502465,
		47.872498, 54.322964, 54.707306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.748356, 54.290993, 54.462440>,  <48.191639, 53.808727, 54.355583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.748356, 54.290993, 54.462440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.465054, 54.330978, 54.741978>,  <48.295071, 54.354969, 54.909698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.465054, 54.330978, 54.741978>,  <48.748356, 54.290993, 54.462440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.465054, 54.330978, 54.741978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705841, 0.082430, 0.703558,
		0.012723, 0.991571, -0.128938,
		-0.708256, 0.099961, 0.698842,
		48.252575, 54.360966, 54.951630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.810799, 55.005257, 54.862476>,  <48.748356, 54.290993, 54.462440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.810799, 55.005257, 54.862476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.667171, 54.655495, 54.993011>,  <48.580997, 54.445637, 55.071331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.667171, 54.655495, 54.993011>,  <48.810799, 55.005257, 54.862476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.667171, 54.655495, 54.993011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718798, -0.036055, 0.694284,
		-0.595317, 0.483860, 0.641464,
		-0.359064, -0.874402, 0.326334,
		48.559452, 54.393173, 55.090912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.646862, 55.059902, 55.630943>,  <48.810799, 55.005257, 54.862476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.646862, 55.059902, 55.630943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.768353, 54.694054, 55.524193>,  <48.841248, 54.474545, 55.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.768353, 54.694054, 55.524193>,  <48.646862, 55.059902, 55.630943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.768353, 54.694054, 55.524193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746379, 0.054315, 0.663301,
		-0.592172, -0.400653, 0.699149,
		0.303728, -0.914619, -0.266876,
		48.859470, 54.419666, 55.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.774487, 54.584427, 56.138985>,  <48.646862, 55.059902, 55.630943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.774487, 54.584427, 56.138985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.037613, 54.519257, 55.844849>,  <49.195488, 54.480156, 55.668365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.037613, 54.519257, 55.844849>,  <48.774487, 54.584427, 56.138985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.037613, 54.519257, 55.844849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708667, 0.464542, 0.531030,
		0.255079, -0.870435, 0.421044,
		0.657819, -0.162925, -0.735343,
		49.234959, 54.470379, 55.624245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.313366, 54.115536, 56.336697>,  <48.774487, 54.584427, 56.138985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.313366, 54.115536, 56.336697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.449043, 54.360088, 56.050713>,  <49.530449, 54.506821, 55.879124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.449043, 54.360088, 56.050713>,  <49.313366, 54.115536, 56.336697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.449043, 54.360088, 56.050713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722295, 0.317662, 0.614313,
		0.602693, -0.724781, -0.333847,
		0.339191, 0.611378, -0.714959,
		49.550800, 54.543503, 55.836224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.110947, 53.950550, 56.042469>,  <49.313366, 54.115536, 56.336697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.110947, 53.950550, 56.042469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.979034, 54.328171, 56.040939>,  <49.899887, 54.554741, 56.040020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.979034, 54.328171, 56.040939>,  <50.110947, 53.950550, 56.042469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.979034, 54.328171, 56.040939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840868, 0.295580, 0.453401,
		0.429164, 0.146306, -0.891298,
		-0.329785, 0.944048, -0.003828,
		49.880100, 54.611385, 56.039791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.590492, 54.381748, 55.737198>,  <50.110947, 53.950550, 56.042469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.590492, 54.381748, 55.737198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.359455, 54.562504, 56.009132>,  <50.220833, 54.670956, 56.172295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.359455, 54.562504, 56.009132>,  <50.590492, 54.381748, 55.737198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.359455, 54.562504, 56.009132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809458, 0.209280, 0.548616,
		0.105635, 0.867180, -0.486662,
		-0.577597, 0.451886, 0.679839,
		50.186176, 54.698071, 56.213085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.717278, 55.095707, 55.766769>,  <50.590492, 54.381748, 55.737198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.717278, 55.095707, 55.766769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.583820, 54.949009, 56.114143>,  <50.503746, 54.860989, 56.322567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.583820, 54.949009, 56.114143>,  <50.717278, 55.095707, 55.766769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.583820, 54.949009, 56.114143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783232, 0.404832, 0.471867,
		-0.524626, 0.837622, 0.152177,
		-0.333640, -0.366743, 0.868437,
		50.483727, 54.838985, 56.374676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.989124, 54.633877, 56.265053>,  <50.717278, 55.095707, 55.766769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.989124, 54.633877, 56.265053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.201813, 54.481060, 56.567398>,  <51.329426, 54.389370, 56.748806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.201813, 54.481060, 56.567398>,  <50.989124, 54.633877, 56.265053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.201813, 54.481060, 56.567398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525720, -0.848603, -0.059091,
		0.664000, -0.365951, -0.652061,
		0.531717, -0.382038, 0.755860,
		51.361328, 54.366447, 56.794155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.235580, 54.083206, 56.118156>,  <50.989124, 54.633877, 56.265053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.235580, 54.083206, 56.118156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072102, 54.068268, 56.482918>,  <50.974014, 54.059303, 56.701775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072102, 54.068268, 56.482918>,  <51.235580, 54.083206, 56.118156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.072102, 54.068268, 56.482918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637253, -0.703596, -0.314422,
		0.653356, -0.709618, 0.263758,
		-0.408699, -0.037349, 0.911905,
		50.949493, 54.057064, 56.756489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.918133, 54.197975, 56.224533>,  <51.235580, 54.083206, 56.118156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.918133, 54.197975, 56.224533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.052422, 53.839199, 56.109444>,  <52.132996, 53.623932, 56.040390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.052422, 53.839199, 56.109444>,  <51.918133, 54.197975, 56.224533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.052422, 53.839199, 56.109444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933190, 0.275118, 0.231229,
		-0.128239, -0.346134, 0.929379,
		0.335725, -0.896940, -0.287728,
		52.153137, 53.570118, 56.023125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.360271, 53.933006, 56.642475>,  <51.918133, 54.197975, 56.224533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.360271, 53.933006, 56.642475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.467773, 53.755394, 56.300575>,  <52.532276, 53.648827, 56.095436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.467773, 53.755394, 56.300575>,  <52.360271, 53.933006, 56.642475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.467773, 53.755394, 56.300575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960444, 0.190708, 0.202922,
		0.072905, -0.875481, 0.477722,
		0.268760, -0.444031, -0.854754,
		52.548401, 53.622185, 56.044147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.066338, 53.849228, 56.808727>,  <52.360271, 53.933006, 56.642475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.066338, 53.849228, 56.808727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004868, 53.779938, 56.419601>,  <52.967983, 53.738361, 56.186127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004868, 53.779938, 56.419601>,  <53.066338, 53.849228, 56.808727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.004868, 53.779938, 56.419601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988121, -0.026363, -0.151400,
		0.000581, -0.984529, 0.175222,
		-0.153677, -0.173229, -0.972818,
		52.958763, 53.727970, 56.127754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.330181, 53.176956, 56.618927>,  <53.066338, 53.849228, 56.808727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.330181, 53.176956, 56.618927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.316921, 53.457718, 56.334328>,  <53.308964, 53.626175, 56.163570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.316921, 53.457718, 56.334328>,  <53.330181, 53.176956, 56.618927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.316921, 53.457718, 56.334328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993862, 0.098328, 0.050697,
		0.105544, -0.705448, -0.700859,
		-0.033150, 0.701908, -0.711496,
		53.306976, 53.668289, 56.120880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.989403, 53.556305, 56.643826>,  <53.330181, 53.176956, 56.618927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.989403, 53.556305, 56.643826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.834217, 53.723839, 56.315422>,  <53.741104, 53.824360, 56.118382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.834217, 53.723839, 56.315422>,  <53.989403, 53.556305, 56.643826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.834217, 53.723839, 56.315422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860547, 0.483613, -0.159931,
		0.330067, -0.768565, -0.548055,
		-0.387964, 0.418839, -0.821010,
		53.717827, 53.849491, 56.069118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.219166, 53.390774, 55.914780>,  <53.989403, 53.556305, 56.643826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.219166, 53.390774, 55.914780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.119896, 53.773033, 55.978210>,  <54.060333, 54.002388, 56.016270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.119896, 53.773033, 55.978210>,  <54.219166, 53.390774, 55.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.119896, 53.773033, 55.978210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953199, 0.270084, -0.135888,
		-0.172691, 0.117436, -0.977950,
		-0.248170, 0.955648, 0.158581,
		54.045444, 54.059727, 56.025784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.699955, 53.844749, 55.673676>,  <54.219166, 53.390774, 55.914780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.699955, 53.844749, 55.673676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.545967, 54.130730, 55.907135>,  <54.453575, 54.302319, 56.047211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.545967, 54.130730, 55.907135>,  <54.699955, 53.844749, 55.673676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.545967, 54.130730, 55.907135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912138, 0.391150, 0.122497,
		-0.140715, 0.579526, -0.802713,
		-0.384971, 0.714948, 0.583649,
		54.430477, 54.345215, 56.082230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.030048, 54.332737, 55.203426>,  <54.699955, 53.844749, 55.673676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.030048, 54.332737, 55.203426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.954819, 54.392235, 55.591759>,  <54.909683, 54.427933, 55.824757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.954819, 54.392235, 55.591759>,  <55.030048, 54.332737, 55.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.954819, 54.392235, 55.591759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851266, 0.517707, 0.085591,
		-0.489873, 0.842529, -0.223986,
		-0.188072, 0.148743, 0.970827,
		54.898396, 54.436859, 55.883007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.355946, 55.041397, 55.445522>,  <55.030048, 54.332737, 55.203426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.355946, 55.041397, 55.445522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.301651, 54.879242, 55.807129>,  <55.269073, 54.781948, 56.024094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.301651, 54.879242, 55.807129>,  <55.355946, 55.041397, 55.445522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.301651, 54.879242, 55.807129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816135, 0.471559, 0.334000,
		-0.561693, 0.783132, 0.266842,
		-0.135734, -0.405385, 0.904013,
		55.260929, 54.757626, 56.078331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.235138, 55.558441, 56.062294>,  <55.355946, 55.041397, 55.445522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.235138, 55.558441, 56.062294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.434883, 55.218384, 56.129089>,  <55.554729, 55.014347, 56.169167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.434883, 55.218384, 56.129089>,  <55.235138, 55.558441, 56.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.434883, 55.218384, 56.129089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801006, 0.526477, 0.284975,
		-0.330188, -0.008545, 0.943876,
		0.499365, -0.850146, 0.166993,
		55.584694, 54.963341, 56.179188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.875122, 55.713257, 56.366638>,  <55.235138, 55.558441, 56.062294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.875122, 55.713257, 56.366638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.942612, 55.323376, 56.425270>,  <55.983105, 55.089447, 56.460449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.942612, 55.323376, 56.425270>,  <55.875122, 55.713257, 56.366638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.942612, 55.323376, 56.425270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872758, 0.216848, 0.437346,
		-0.458068, 0.054141, 0.887267,
		0.168724, -0.974703, 0.146583,
		55.993229, 55.030964, 56.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.146828, 55.553471, 57.029373>,  <55.875122, 55.713257, 56.366638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.146828, 55.553471, 57.029373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.294357, 55.237324, 56.833702>,  <56.382874, 55.047638, 56.716301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.294357, 55.237324, 56.833702>,  <56.146828, 55.553471, 57.029373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.294357, 55.237324, 56.833702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853530, 0.079600, 0.514927,
		-0.368041, -0.607446, 0.703957,
		0.368825, -0.790363, -0.489177,
		56.405006, 55.000214, 56.686951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.548985, 55.057098, 57.444443>,  <56.146828, 55.553471, 57.029373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.548985, 55.057098, 57.444443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.677933, 55.108624, 57.069321>,  <56.755302, 55.139538, 56.844246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.677933, 55.108624, 57.069321>,  <56.548985, 55.057098, 57.444443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.677933, 55.108624, 57.069321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945043, 0.013238, 0.326678,
		0.054495, -0.991581, -0.117466,
		0.322373, 0.128812, -0.937808,
		56.774643, 55.147266, 56.787979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.954922, 54.474571, 57.317909>,  <56.548985, 55.057098, 57.444443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.954922, 54.474571, 57.317909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.100189, 54.787033, 57.114769>,  <57.187351, 54.974510, 56.992886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.100189, 54.787033, 57.114769>,  <56.954922, 54.474571, 57.317909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.100189, 54.787033, 57.114769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899839, -0.152688, 0.408627,
		0.241658, -0.605380, -0.758364,
		0.363168, 0.781154, -0.507846,
		57.209141, 55.021378, 56.962414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.437599, 54.283939, 56.742798>,  <56.954922, 54.474571, 57.317909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.437599, 54.283939, 56.742798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.517342, 54.661636, 56.847610>,  <57.565186, 54.888256, 56.910500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.517342, 54.661636, 56.847610>,  <57.437599, 54.283939, 56.742798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.517342, 54.661636, 56.847610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978001, -0.208478, 0.007204,
		0.061431, 0.254833, -0.965032,
		0.199352, 0.944244, 0.262034,
		57.577148, 54.944908, 56.926220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.997742, 54.621216, 56.327900>,  <57.437599, 54.283939, 56.742798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.997742, 54.621216, 56.327900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.985260, 54.783405, 56.693329>,  <57.977772, 54.880718, 56.912586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.985260, 54.783405, 56.693329>,  <57.997742, 54.621216, 56.327900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.985260, 54.783405, 56.693329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999404, 0.026163, 0.022521,
		-0.014771, 0.913731, -0.406051,
		-0.031202, 0.405477, 0.913573,
		57.975899, 54.905048, 56.967400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.175079, 55.421402, 56.408386>,  <57.997742, 54.621216, 56.327900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.175079, 55.421402, 56.408386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.253059, 55.156334, 56.697624>,  <58.299847, 54.997295, 56.871166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.253059, 55.156334, 56.697624>,  <58.175079, 55.421402, 56.408386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.253059, 55.156334, 56.697624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970140, 0.021822, -0.241561,
		0.144295, 0.748596, 0.647134,
		0.194954, -0.662667, 0.723095,
		58.311546, 54.957535, 56.914551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.629265, 55.712608, 56.933338>,  <58.175079, 55.421402, 56.408386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.629265, 55.712608, 56.933338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.650612, 55.322685, 56.846718>,  <58.663418, 55.088730, 56.794746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.650612, 55.322685, 56.846718>,  <58.629265, 55.712608, 56.933338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.650612, 55.322685, 56.846718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929143, 0.127922, -0.346883,
		0.365847, -0.182696, 0.912567,
		0.053363, -0.974812, -0.216551,
		58.666622, 55.030243, 56.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.299053, 55.742554, 56.580608>,  <58.629265, 55.712608, 56.933338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.299053, 55.742554, 56.580608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.178703, 55.365005, 56.635139>,  <59.106491, 55.138477, 56.667858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.178703, 55.365005, 56.635139>,  <59.299053, 55.742554, 56.580608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.178703, 55.365005, 56.635139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803320, -0.327883, -0.497162,
		0.513955, -0.040071, 0.856881,
		-0.300878, -0.943868, 0.136327,
		59.088440, 55.081844, 56.676037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.776600, 55.359516, 57.072205>,  <59.299053, 55.742554, 56.580608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.776600, 55.359516, 57.072205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.605095, 55.086845, 56.835060>,  <59.502190, 54.923244, 56.692776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.605095, 55.086845, 56.835060>,  <59.776600, 55.359516, 57.072205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.605095, 55.086845, 56.835060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844156, -0.068545, -0.531697,
		0.321807, -0.728437, 0.604830,
		-0.428767, -0.681675, -0.592856,
		59.476463, 54.882343, 56.657204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.224659, 54.873966, 57.093754>,  <59.776600, 55.359516, 57.072205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.224659, 54.873966, 57.093754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.022186, 54.858208, 56.749146>,  <59.900703, 54.848751, 56.542381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.022186, 54.858208, 56.749146>,  <60.224659, 54.873966, 57.093754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.022186, 54.858208, 56.749146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848080, -0.204181, -0.488948,
		-0.156642, -0.978140, 0.136768,
		-0.506185, -0.039400, -0.861525,
		59.870331, 54.846390, 56.490688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.419128, 54.171535, 56.906940>,  <60.224659, 54.873966, 57.093754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.419128, 54.171535, 56.906940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.325294, 54.440880, 56.626495>,  <60.268993, 54.602486, 56.458229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.325294, 54.440880, 56.626495>,  <60.419128, 54.171535, 56.906940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.325294, 54.440880, 56.626495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900243, -0.121656, -0.418046,
		-0.366789, -0.729240, -0.577646,
		-0.234581, 0.673356, -0.701115,
		60.254921, 54.642887, 56.416161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.717743, 53.942371, 56.213673>,  <60.419128, 54.171535, 56.906940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.717743, 53.942371, 56.213673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.707497, 54.339977, 56.256165>,  <60.701347, 54.578541, 56.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.707497, 54.339977, 56.256165>,  <60.717743, 53.942371, 56.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.707497, 54.339977, 56.256165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898843, 0.069407, -0.432739,
		-0.437521, 0.084396, -0.895239,
		-0.025614, 0.994012, 0.106226,
		60.699814, 54.638180, 56.288033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.897438, 54.214783, 55.557713>,  <60.717743, 53.942371, 56.213673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.897438, 54.214783, 55.557713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.968575, 54.511837, 55.815971>,  <61.011257, 54.690071, 55.970928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.968575, 54.511837, 55.815971>,  <60.897438, 54.214783, 55.557713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.968575, 54.511837, 55.815971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866101, 0.193353, -0.460960,
		-0.467164, 0.641175, -0.608813,
		0.177840, 0.742637, 0.645649,
		61.021927, 54.734627, 56.009666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.946720, 54.834896, 55.177696>,  <60.897438, 54.214783, 55.557713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.946720, 54.834896, 55.177696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.158531, 54.875698, 55.514549>,  <61.285618, 54.900177, 55.716663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.158531, 54.875698, 55.514549>,  <60.946720, 54.834896, 55.177696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.158531, 54.875698, 55.514549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790754, 0.300031, -0.533562,
		-0.307090, 0.948461, 0.078218,
		0.529531, 0.102000, 0.842136,
		61.317390, 54.906300, 55.767189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.559978, 55.119965, 54.857933>,  <60.946720, 54.834896, 55.177696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.559978, 55.119965, 54.857933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650665, 55.033230, 55.237740>,  <61.705078, 54.981190, 55.465622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650665, 55.033230, 55.237740>,  <61.559978, 55.119965, 54.857933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.650665, 55.033230, 55.237740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968513, 0.153167, -0.196273,
		-0.102875, 0.964116, 0.244738,
		0.226716, -0.216841, 0.949516,
		61.718681, 54.968178, 55.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.252190, 55.217552, 54.938766>,  <61.559978, 55.119965, 54.857933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.252190, 55.217552, 54.938766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.184860, 55.099476, 55.314964>,  <62.144463, 55.028629, 55.540684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.184860, 55.099476, 55.314964>,  <62.252190, 55.217552, 54.938766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.184860, 55.099476, 55.314964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984935, -0.012011, 0.172509,
		-0.039627, 0.955362, 0.292767,
		-0.168325, -0.295192, 0.940494,
		62.134361, 55.010918, 55.597111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.522461, 55.633575, 55.405014>,  <62.252190, 55.217552, 54.938766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.522461, 55.633575, 55.405014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.496422, 55.247608, 55.506752>,  <62.480797, 55.016026, 55.567795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.496422, 55.247608, 55.506752>,  <62.522461, 55.633575, 55.405014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.496422, 55.247608, 55.506752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982110, -0.016820, 0.187557,
		-0.176699, 0.262005, 0.948752,
		-0.065099, -0.964920, 0.254345,
		62.476891, 54.958134, 55.583057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.921139, 55.592903, 55.997055>,  <62.522461, 55.633575, 55.405014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.921139, 55.592903, 55.997055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.904587, 55.272514, 55.758148>,  <62.894657, 55.080280, 55.614803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.904587, 55.272514, 55.758148>,  <62.921139, 55.592903, 55.997055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.904587, 55.272514, 55.758148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998245, -0.007791, -0.058706,
		0.042369, -0.598652, 0.799888,
		-0.041376, -0.800971, -0.597271,
		62.892174, 55.032223, 55.578968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.544563, 55.301849, 56.029949>,  <62.921139, 55.592903, 55.997055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.544563, 55.301849, 56.029949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.579872, 55.038197, 55.731216>,  <63.601059, 54.880005, 55.551975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.579872, 55.038197, 55.731216>,  <63.544563, 55.301849, 56.029949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.579872, 55.038197, 55.731216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660162, -0.522739, 0.539379,
		-0.745918, -0.540643, 0.388988,
		0.088273, -0.659128, -0.746832,
		63.606354, 54.840458, 55.507168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.513763, 54.572620, 56.358410>,  <63.544563, 55.301849, 56.029949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.513763, 54.572620, 56.358410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.717857, 54.607605, 56.016182>,  <63.840313, 54.628597, 55.810844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.717857, 54.607605, 56.016182>,  <63.513763, 54.572620, 56.358410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.717857, 54.607605, 56.016182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795653, -0.425656, 0.430991,
		-0.326485, -0.900648, -0.286775,
		0.510239, 0.087462, -0.855574,
		63.870930, 54.633842, 55.759510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.761681, 53.901112, 56.028946>,  <63.513763, 54.572620, 56.358410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.761681, 53.901112, 56.028946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.998367, 54.217453, 55.966431>,  <64.140381, 54.407257, 55.928921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.998367, 54.217453, 55.966431>,  <63.761681, 53.901112, 56.028946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.998367, 54.217453, 55.966431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773516, -0.502398, 0.386354,
		0.227029, -0.349504, -0.909013,
		0.591718, 0.790850, -0.156288,
		64.175880, 54.454708, 55.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.376411, 53.567612, 55.865086>,  <63.761681, 53.901112, 56.028946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.376411, 53.567612, 55.865086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.488472, 53.935635, 55.974640>,  <64.555710, 54.156448, 56.040375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.488472, 53.935635, 55.974640>,  <64.376411, 53.567612, 55.865086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.488472, 53.935635, 55.974640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725643, -0.389751, 0.567041,
		0.628458, 0.039890, -0.776820,
		0.280148, 0.920056, 0.273888,
		64.572517, 54.211651, 56.056805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.072517, 53.595955, 55.856941>,  <64.376411, 53.567612, 55.865086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.072517, 53.595955, 55.856941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.948235, 53.865791, 56.124786>,  <64.873665, 54.027695, 56.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.948235, 53.865791, 56.124786>,  <65.072517, 53.595955, 55.856941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.948235, 53.865791, 56.124786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668679, -0.345536, 0.658387,
		0.675519, 0.652326, -0.343722,
		-0.310715, 0.674593, 0.669613,
		64.855019, 54.068169, 56.325668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.574013, 54.115913, 56.080742>,  <65.072517, 53.595955, 55.856941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.574013, 54.115913, 56.080742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.321800, 54.025105, 56.377632>,  <65.170471, 53.970619, 56.555767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.321800, 54.025105, 56.377632>,  <65.574013, 54.115913, 56.080742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.321800, 54.025105, 56.377632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775814, -0.155355, 0.611537,
		-0.023527, 0.961418, 0.274085,
		-0.630523, -0.227027, 0.742227,
		65.132645, 53.956997, 56.600300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.048447, 54.367710, 56.564674>,  <65.574013, 54.115913, 56.080742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.048447, 54.367710, 56.564674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.259377, 54.288723, 56.895233>,  <66.385933, 54.241329, 57.093567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.259377, 54.288723, 56.895233>,  <66.048447, 54.367710, 56.564674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.259377, 54.288723, 56.895233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589092, -0.615915, -0.523085,
		0.612282, 0.762662, -0.208465,
		0.527334, -0.197471, 0.826392,
		66.417580, 54.229481, 57.143150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.828308, 54.355042, 56.304874>,  <66.048447, 54.367710, 56.564674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.828308, 54.355042, 56.304874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.683075, 54.118111, 56.592575>,  <66.595932, 53.975952, 56.765194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.683075, 54.118111, 56.592575>,  <66.828308, 54.355042, 56.304874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.683075, 54.118111, 56.592575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723920, -0.665317, -0.182464,
		0.586606, 0.454428, 0.670364,
		-0.363088, -0.592325, 0.719248,
		66.574150, 53.940414, 56.808350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.298080, 54.231274, 56.872639>,  <66.828308, 54.355042, 56.304874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.298080, 54.231274, 56.872639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.069572, 53.914017, 56.788200>,  <66.932465, 53.723663, 56.737537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.069572, 53.914017, 56.788200>,  <67.298080, 54.231274, 56.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.069572, 53.914017, 56.788200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818986, -0.567754, -0.083165,
		-0.053890, -0.220397, 0.973920,
		-0.571277, -0.793146, -0.211099,
		66.898186, 53.676071, 56.724869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.654007, 53.744183, 57.262573>,  <67.298080, 54.231274, 56.872639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.654007, 53.744183, 57.262573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.444633, 53.590031, 56.958603>,  <67.319008, 53.497540, 56.776218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.444633, 53.590031, 56.958603>,  <67.654007, 53.744183, 57.262573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.444633, 53.590031, 56.958603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712469, -0.687127, -0.142287,
		-0.467332, -0.615904, 0.634242,
		-0.523440, -0.385383, -0.759928,
		67.287605, 53.474415, 56.730625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.500160, 54.530579, 57.475960>,  <67.654007, 53.744183, 57.262573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.500160, 54.530579, 57.475960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.799408, 54.387020, 57.699211>,  <67.978958, 54.300884, 57.833160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.799408, 54.387020, 57.699211>,  <67.500160, 54.530579, 57.475960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.799408, 54.387020, 57.699211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213383, -0.666314, -0.714488,
		0.628318, 0.653618, -0.421900,
		0.748121, -0.358900, 0.558128,
		68.023842, 54.279350, 57.866650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.134048, 54.599236, 57.079887>,  <67.500160, 54.530579, 57.475960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.134048, 54.599236, 57.079887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.214523, 54.309837, 57.344032>,  <68.262810, 54.136200, 57.502522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.214523, 54.309837, 57.344032>,  <68.134048, 54.599236, 57.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.214523, 54.309837, 57.344032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162526, -0.640150, -0.750861,
		0.965977, 0.258383, -0.011198,
		0.201178, -0.723495, 0.660365,
		68.274879, 54.092789, 57.542141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.764587, 54.165508, 56.949036>,  <68.134048, 54.599236, 57.079887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.764587, 54.165508, 56.949036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.503616, 53.935154, 57.146095>,  <68.347038, 53.796944, 57.264332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.503616, 53.935154, 57.146095>,  <68.764587, 54.165508, 56.949036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.503616, 53.935154, 57.146095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033454, -0.627542, -0.777864,
		0.757117, -0.523977, 0.390157,
		-0.652422, -0.575881, 0.492652,
		68.307892, 53.762390, 57.293892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.163460, 54.313702, 57.437969>,  <68.764587, 54.165508, 56.949036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.163460, 54.313702, 57.437969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.064941, 54.389252, 57.818214>,  <69.005829, 54.434582, 58.046360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.064941, 54.389252, 57.818214>,  <69.163460, 54.313702, 57.437969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.064941, 54.389252, 57.818214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892773, -0.337527, 0.298381,
		0.377214, 0.922172, -0.085491,
		-0.246303, 0.188877, 0.950611,
		68.991051, 54.445915, 58.103397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.682854, 54.760971, 57.811424>,  <69.163460, 54.313702, 57.437969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.682854, 54.760971, 57.811424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.488068, 54.520599, 58.064957>,  <69.371193, 54.376377, 58.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.488068, 54.520599, 58.064957>,  <69.682854, 54.760971, 57.811424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.488068, 54.520599, 58.064957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873374, -0.327732, 0.360292,
		-0.008781, 0.729027, 0.684429,
		-0.486972, -0.600925, 0.633835,
		69.341972, 54.340321, 58.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.975105, 54.917763, 57.196762>,  <69.682854, 54.760971, 57.811424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.975105, 54.917763, 57.196762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.836807, 54.545380, 57.149796>,  <69.753830, 54.321949, 57.121616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.836807, 54.545380, 57.149796>,  <69.975105, 54.917763, 57.196762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.836807, 54.545380, 57.149796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911753, -0.362880, 0.192415,
		-0.221737, -0.040527, 0.974264,
		-0.345743, -0.930954, -0.117414,
		69.733086, 54.266094, 57.114571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.976318, 55.649410, 57.273418>,  <69.975105, 54.917763, 57.196762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.976318, 55.649410, 57.273418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.129349, 56.012787, 57.206047>,  <70.221169, 56.230812, 57.165623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.129349, 56.012787, 57.206047>,  <69.976318, 55.649410, 57.273418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.129349, 56.012787, 57.206047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427124, -0.012245, 0.904110,
		0.819272, -0.417826, -0.392703,
		0.382570, 0.908445, -0.168432,
		70.244118, 56.285320, 57.155518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.717812, 55.662727, 57.492870>,  <69.976318, 55.649410, 57.273418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.717812, 55.662727, 57.492870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.557014, 56.028969, 57.496002>,  <70.460533, 56.248714, 57.497879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.557014, 56.028969, 57.496002>,  <70.717812, 55.662727, 57.492870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.557014, 56.028969, 57.496002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494805, 0.210036, 0.843240,
		0.770433, 0.342853, -0.537481,
		-0.401997, 0.915607, 0.007827,
		70.436417, 56.303650, 57.498348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.298012, 56.224850, 57.477257>,  <70.717812, 55.662727, 57.492870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.298012, 56.224850, 57.477257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.967293, 56.382366, 57.637932>,  <70.768860, 56.476875, 57.734337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.967293, 56.382366, 57.637932>,  <71.298012, 56.224850, 57.477257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.967293, 56.382366, 57.637932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536832, 0.339068, 0.772557,
		0.168026, 0.854379, -0.491736,
		-0.826788, 0.393789, 0.401686,
		70.719254, 56.500504, 57.758438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.414139, 56.929771, 57.668247>,  <71.298012, 56.224850, 57.477257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.414139, 56.929771, 57.668247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.114113, 56.827450, 57.912201>,  <70.934097, 56.766056, 58.058575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.114113, 56.827450, 57.912201>,  <71.414139, 56.929771, 57.668247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.114113, 56.827450, 57.912201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447630, 0.482481, 0.752887,
		-0.486853, 0.837720, -0.247386,
		-0.750067, -0.255808, 0.609886,
		70.889091, 56.750706, 58.095165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.046410, 57.181232, 58.084377>,  <71.414139, 56.929771, 57.668247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.046410, 57.181232, 58.084377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.341156, 57.058189, 58.325180>,  <72.518005, 56.984364, 58.469662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.341156, 57.058189, 58.325180>,  <72.046410, 57.181232, 58.084377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.341156, 57.058189, 58.325180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127051, 0.811607, 0.570220,
		-0.663994, -0.496661, 0.558963,
		0.736865, -0.307606, 0.602004,
		72.562218, 56.965908, 58.505783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.230904, 57.687469, 58.638287>,  <72.046410, 57.181232, 58.084377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.230904, 57.687469, 58.638287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.486198, 57.415974, 58.783600>,  <72.639374, 57.253078, 58.870789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.486198, 57.415974, 58.783600>,  <72.230904, 57.687469, 58.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.486198, 57.415974, 58.783600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136316, 0.564072, 0.814396,
		-0.757677, -0.470255, 0.452533,
		0.638235, -0.678736, 0.363281,
		72.677666, 57.212353, 58.892586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.995796, 57.437878, 59.316238>,  <72.230904, 57.687469, 58.638287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.995796, 57.437878, 59.316238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.390732, 57.383591, 59.283356>,  <72.627693, 57.351021, 59.263626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.390732, 57.383591, 59.283356>,  <71.995796, 57.437878, 59.316238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.390732, 57.383591, 59.283356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141666, 0.520601, 0.841965,
		-0.071470, -0.842945, 0.533232,
		0.987331, -0.135716, -0.082209,
		72.686928, 57.342876, 59.258694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.334167, 57.512310, 59.974422>,  <71.995796, 57.437878, 59.316238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.334167, 57.512310, 59.974422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.651146, 57.579525, 59.739891>,  <72.841331, 57.619854, 59.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.651146, 57.579525, 59.739891>,  <72.334167, 57.512310, 59.974422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.651146, 57.579525, 59.739891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444467, 0.499223, 0.743791,
		0.417691, -0.850024, 0.320926,
		0.792454, 0.168034, -0.586329,
		72.888878, 57.629936, 59.563992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.976753, 57.297043, 60.348999>,  <72.334167, 57.512310, 59.974422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.976753, 57.297043, 60.348999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.100151, 57.591637, 60.108192>,  <73.174187, 57.768394, 59.963711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.100151, 57.591637, 60.108192>,  <72.976753, 57.297043, 60.348999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.100151, 57.591637, 60.108192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490065, 0.419374, 0.764174,
		0.815272, -0.530768, -0.231553,
		0.308492, 0.736486, -0.602014,
		73.192696, 57.812584, 59.927589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
