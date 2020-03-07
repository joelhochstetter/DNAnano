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
	<4.214692, 3.893562, 2.337620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.388332, 4.248611, 2.276066>,  <4.492517, 4.461641, 2.239134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.388332, 4.248611, 2.276066>,  <4.214692, 3.893562, 2.337620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.388332, 4.248611, 2.276066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891415, 0.398559, -0.215708,
		-0.130135, 0.230814, 0.964256,
		0.434102, 0.887623, -0.153885,
		4.518563, 4.514898, 2.229900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.240241, 4.408128, 2.919098>,  <4.214692, 3.893562, 2.337620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.240241, 4.408128, 2.919098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.211861, 4.536072, 2.541176>,  <4.194832, 4.612838, 2.314423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.211861, 4.536072, 2.541176>,  <4.240241, 4.408128, 2.919098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.211861, 4.536072, 2.541176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956344, 0.247392, 0.155571,
		0.283498, 0.914597, 0.288342,
		-0.070951, 0.319859, -0.944805,
		4.190575, 4.632030, 2.257734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.029113, 5.135389, 2.793705>,  <4.240241, 4.408128, 2.919098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.029113, 5.135389, 2.793705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909927, 4.893478, 2.498283>,  <3.838416, 4.748332, 2.321030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909927, 4.893478, 2.498283>,  <4.029113, 5.135389, 2.793705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.909927, 4.893478, 2.498283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953457, 0.151088, 0.260944,
		-0.046227, 0.781931, -0.621648,
		-0.297964, -0.604777, -0.738554,
		3.820538, 4.712045, 2.276717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.705072, 5.385049, 2.090611>,  <4.029113, 5.135389, 2.793705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.705072, 5.385049, 2.090611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.590359, 5.039520, 2.256294>,  <3.521531, 4.832203, 2.355704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.590359, 5.039520, 2.256294>,  <3.705072, 5.385049, 2.090611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.590359, 5.039520, 2.256294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941247, 0.334565, 0.046040,
		-0.178350, -0.376668, -0.909017,
		-0.286783, -0.863821, 0.414208,
		3.504324, 4.780374, 2.380557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.197754, 4.999588, 1.661752>,  <3.705072, 5.385049, 2.090611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.197754, 4.999588, 1.661752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.139229, 4.848083, 2.027294>,  <3.104114, 4.757181, 2.246619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.139229, 4.848083, 2.027294>,  <3.197754, 4.999588, 1.661752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.139229, 4.848083, 2.027294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978733, 0.189697, -0.078077,
		-0.143783, -0.905845, -0.398462,
		-0.146313, -0.378762, 0.913856,
		3.095335, 4.734455, 2.301451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.572418, 4.671217, 1.579082>,  <3.197754, 4.999588, 1.661752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.572418, 4.671217, 1.579082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.614834, 4.724030, 1.973305>,  <2.640284, 4.755717, 2.209839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.614834, 4.724030, 1.973305>,  <2.572418, 4.671217, 1.579082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.614834, 4.724030, 1.973305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981138, 0.175000, 0.082121,
		-0.161630, -0.975676, 0.148098,
		0.106041, 0.132031, 0.985557,
		2.646646, 4.763638, 2.268972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.959947, 4.340747, 1.880733>,  <2.572418, 4.671217, 1.579082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.959947, 4.340747, 1.880733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.095493, 4.599640, 2.153866>,  <2.176821, 4.754976, 2.317745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.095493, 4.599640, 2.153866>,  <1.959947, 4.340747, 1.880733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.095493, 4.599640, 2.153866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905493, 0.421414, 0.049921,
		-0.255445, -0.635216, 0.728868,
		0.338866, 0.647233, 0.682832,
		2.197153, 4.793810, 2.358716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.504669, 4.239699, 2.484819>,  <1.959947, 4.340747, 1.880733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.504669, 4.239699, 2.484819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.682255, 4.594589, 2.534981>,  <1.788806, 4.807523, 2.565078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.682255, 4.594589, 2.534981>,  <1.504669, 4.239699, 2.484819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.682255, 4.594589, 2.534981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889544, 0.419578, 0.180737,
		0.107738, -0.191793, 0.975504,
		0.443964, 0.887226, 0.125404,
		1.815444, 4.860757, 2.572602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.088443, 0.221367, 2.854189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.283176, 0.504211, 3.059319>,  <0.400017, 0.673918, 3.182396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.283176, 0.504211, 3.059319>,  <0.088443, 0.221367, 2.854189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.283176, 0.504211, 3.059319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854557, -0.263970, -0.447272,
		-0.180901, 0.655984, -0.732775,
		0.486835, 0.707110, 0.512823,
		0.429227, 0.716344, 3.213166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.400580, 0.582455, 2.294004>,  <0.088443, 0.221367, 2.854189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.400580, 0.582455, 2.294004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.581335, 0.615265, 2.649323>,  <0.689788, 0.634951, 2.862513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.581335, 0.615265, 2.649323>,  <0.400580, 0.582455, 2.294004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.581335, 0.615265, 2.649323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859641, -0.306100, -0.409047,
		0.238356, 0.948459, -0.208835,
		0.451889, 0.082024, 0.888295,
		0.716902, 0.639872, 2.915811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.055931, 0.770162, 2.120101>,  <0.400580, 0.582455, 2.294004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.055931, 0.770162, 2.120101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108685, 0.656738, 2.500038>,  <1.140337, 0.588684, 2.728000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108685, 0.656738, 2.500038>,  <1.055931, 0.770162, 2.120101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.108685, 0.656738, 2.500038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954068, -0.223720, -0.199258,
		0.269000, 0.932494, 0.241029,
		0.131884, -0.283558, 0.949843,
		1.148250, 0.571671, 2.784991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.775374, 0.982815, 2.215168>,  <1.055931, 0.770162, 2.120101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.775374, 0.982815, 2.215168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.678541, 0.700821, 2.481819>,  <1.620441, 0.531625, 2.641810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.678541, 0.700821, 2.481819>,  <1.775374, 0.982815, 2.215168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.678541, 0.700821, 2.481819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963448, -0.255907, 0.079241,
		0.114731, 0.661445, 0.741167,
		-0.242083, -0.704984, 0.666628,
		1.605916, 0.489326, 2.681808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.193272, 1.072748, 2.720139>,  <1.775374, 0.982815, 2.215168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.193272, 1.072748, 2.720139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.080011, 0.689484, 2.703384>,  <2.012055, 0.459525, 2.693331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.080011, 0.689484, 2.703384>,  <2.193272, 1.072748, 2.720139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080011, 0.689484, 2.703384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937831, -0.285756, 0.197018,
		-0.200744, 0.016503, 0.979505,
		-0.283151, -0.958160, -0.041887,
		1.995066, 0.402036, 2.690818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.606500, 0.702685, 3.251983>,  <2.193272, 1.072748, 2.720139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.606500, 0.702685, 3.251983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.498787, 0.422852, 2.987236>,  <2.434159, 0.254951, 2.828388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.498787, 0.422852, 2.987236>,  <2.606500, 0.702685, 3.251983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.498787, 0.422852, 2.987236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899344, -0.428497, 0.087014,
		-0.344482, -0.571816, 0.744553,
		-0.269283, -0.699584, -0.661868,
		2.418002, 0.212976, 2.788676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.689622, 0.061786, 3.556522>,  <2.606500, 0.702685, 3.251983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.689622, 0.061786, 3.556522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.698166, -0.025314, 3.166214>,  <2.703292, -0.077575, 2.932029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.698166, -0.025314, 3.166214>,  <2.689622, 0.061786, 3.556522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698166, -0.025314, 3.166214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879951, -0.459202, 0.121737,
		-0.474584, -0.861230, 0.181802,
		0.021360, -0.217752, -0.975771,
		2.704574, -0.090640, 2.873483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.863444, -0.638910, 3.487380>,  <2.689622, 0.061786, 3.556522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.863444, -0.638910, 3.487380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.946146, -0.511002, 3.117516>,  <2.995767, -0.434256, 2.895597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.946146, -0.511002, 3.117516>,  <2.863444, -0.638910, 3.487380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.946146, -0.511002, 3.117516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855603, -0.517485, 0.012354,
		-0.474548, -0.793697, -0.380590,
		0.206755, 0.319771, -0.924661,
		3.008173, -0.415070, 2.840117>
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
