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
	<0.016600, 5.930239, -1.007822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.256751, 5.950050, -0.716469>,  <-0.420762, 5.961937, -0.541657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.256751, 5.950050, -0.716469>,  <0.016600, 5.930239, -1.007822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.256751, 5.950050, -0.716469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494187, -0.702989, 0.511455,
		0.537377, 0.709474, 0.455931,
		-0.683378, 0.049529, 0.728383,
		-0.461764, 5.964909, -0.497954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.351620, 6.048502, -0.330685>,  <0.016600, 5.930239, -1.007822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.351620, 6.048502, -0.330685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.009647, 5.860382, -0.243134>,  <-0.195536, 5.747510, -0.190603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.009647, 5.860382, -0.243134>,  <0.351620, 6.048502, -0.330685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.009647, 5.860382, -0.243134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489716, -0.592573, 0.639559,
		-0.171084, 0.653968, 0.736924,
		-0.854932, -0.470301, 0.218878,
		-0.246832, 5.719292, -0.177470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.378735, 5.930306, 0.395342>,  <0.351620, 6.048502, -0.330685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.378735, 5.930306, 0.395342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.132317, 5.656860, 0.238800>,  <-0.015534, 5.492793, 0.144875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.132317, 5.656860, 0.238800>,  <0.378735, 5.930306, 0.395342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.132317, 5.656860, 0.238800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485611, -0.720778, 0.494633,
		-0.620219, 0.114669, 0.776002,
		-0.616044, -0.683616, -0.391356,
		-0.052496, 5.451776, 0.121393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.063663, 5.538152, 0.953840>,  <0.378735, 5.930306, 0.395342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.063663, 5.538152, 0.953840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.092091, 5.319588, 0.620041>,  <0.109148, 5.188449, 0.419762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.092091, 5.319588, 0.620041>,  <0.063663, 5.538152, 0.953840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.092091, 5.319588, 0.620041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390915, -0.754431, 0.527276,
		-0.917679, -0.363691, 0.159983,
		0.071069, -0.546410, -0.834497,
		0.113412, 5.155665, 0.369692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.146149, 4.861443, 1.135959>,  <0.063663, 5.538152, 0.953840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.146149, 4.861443, 1.135959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.058587, 4.795456, 0.798721>,  <0.181428, 4.755864, 0.596379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.058587, 4.795456, 0.798721>,  <-0.146149, 4.861443, 1.135959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.058587, 4.795456, 0.798721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380982, -0.836017, 0.394876,
		-0.769982, -0.523317, -0.365058,
		0.511840, -0.164967, -0.843093,
		0.212138, 4.745965, 0.545793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.141137, 4.183246, 1.015988>,  <-0.146149, 4.861443, 1.135959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.141137, 4.183246, 1.015988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.186352, 4.250648, 0.796425>,  <0.382845, 4.291090, 0.664687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.186352, 4.250648, 0.796425>,  <-0.141137, 4.183246, 1.015988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.186352, 4.250648, 0.796425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416713, -0.832048, 0.366123,
		-0.395023, -0.528490, -0.751436,
		0.818723, 0.168507, -0.548906,
		0.431969, 4.301200, 0.631753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.081065, 3.529385, 0.720397>,  <-0.141137, 4.183246, 1.015988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.081065, 3.529385, 0.720397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.404593, 3.763920, 0.738380>,  <0.598709, 3.904641, 0.749171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.404593, 3.763920, 0.738380>,  <0.081065, 3.529385, 0.720397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.404593, 3.763920, 0.738380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552828, -0.784203, 0.281791,
		0.200482, -0.203063, -0.958422,
		0.808819, 0.586337, 0.044959,
		0.647239, 3.939821, 0.751868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.635589, 3.111961, 0.510318>,  <0.081065, 3.529385, 0.720397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.635589, 3.111961, 0.510318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.821284, 3.419056, 0.686981>,  <0.932702, 3.603313, 0.792979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.821284, 3.419056, 0.686981>,  <0.635589, 3.111961, 0.510318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.821284, 3.419056, 0.686981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514379, -0.639638, 0.571206,
		0.721038, -0.037996, -0.691853,
		0.464239, 0.767736, 0.441659,
		0.960556, 3.649377, 0.819479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.420763, 2.825378, 1.457784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.670105, 3.053406, 1.671867>,  <1.819710, 3.190223, 1.800318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.670105, 3.053406, 1.671867>,  <1.420763, 2.825378, 1.457784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.670105, 3.053406, 1.671867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214581, 0.782899, -0.583972,
		-0.751920, 0.249176, 0.610350,
		0.623354, 0.570070, 0.535210,
		1.857111, 3.224427, 1.832430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.186866, 3.403986, 1.995923>,  <1.420763, 2.825378, 1.457784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.186866, 3.403986, 1.995923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.510399, 3.452015, 1.765663>,  <1.704519, 3.480832, 1.627507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.510399, 3.452015, 1.765663>,  <1.186866, 3.403986, 1.995923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.510399, 3.452015, 1.765663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447159, 0.761333, -0.469490,
		0.381887, 0.637145, 0.669483,
		0.808833, 0.120073, -0.575649,
		1.753049, 3.488037, 1.592969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.316735, 4.157608, 1.948717>,  <1.186866, 3.403986, 1.995923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.316735, 4.157608, 1.948717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.401405, 3.969711, 1.605896>,  <1.452208, 3.856974, 1.400204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.401405, 3.969711, 1.605896>,  <1.316735, 4.157608, 1.948717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.401405, 3.969711, 1.605896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475418, 0.716690, -0.510229,
		0.853915, 0.515461, -0.071617,
		0.211676, -0.469740, -0.857052,
		1.464908, 3.828789, 1.348781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.560048, 4.620931, 1.401075>,  <1.316735, 4.157608, 1.948717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.560048, 4.620931, 1.401075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.376064, 4.321114, 1.210655>,  <1.265674, 4.141223, 1.096404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.376064, 4.321114, 1.210655>,  <1.560048, 4.620931, 1.401075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.376064, 4.321114, 1.210655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548951, 0.661433, -0.511037,
		0.697919, 0.026272, -0.715695,
		-0.459958, -0.749544, -0.476049,
		1.238076, 4.096251, 1.067841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657036, 4.731445, 0.725061>,  <1.560048, 4.620931, 1.401075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657036, 4.731445, 0.725061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329227, 4.504543, 0.757568>,  <1.132542, 4.368402, 0.777073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329227, 4.504543, 0.757568>,  <1.657036, 4.731445, 0.725061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329227, 4.504543, 0.757568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487620, 0.615807, -0.618877,
		0.301016, -0.546812, -0.781272,
		-0.819522, -0.567256, 0.081269,
		1.083371, 4.334367, 0.781949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.323041, 4.924423, 0.038808>,  <1.657036, 4.731445, 0.725061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.323041, 4.924423, 0.038808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.049442, 4.678307, 0.195557>,  <0.885283, 4.530637, 0.289606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.049442, 4.678307, 0.195557>,  <1.323041, 4.924423, 0.038808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.049442, 4.678307, 0.195557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710703, 0.440958, -0.548140,
		0.164465, -0.653432, -0.738903,
		-0.683998, -0.615290, 0.391874,
		0.844243, 4.493719, 0.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.978733, 4.572741, -0.552728>,  <1.323041, 4.924423, 0.038808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.978733, 4.572741, -0.552728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757481, 4.614658, -0.222137>,  <0.624729, 4.639809, -0.023783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757481, 4.614658, -0.222137>,  <0.978733, 4.572741, -0.552728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757481, 4.614658, -0.222137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576888, 0.667541, -0.470732,
		-0.601037, -0.737161, -0.308784,
		-0.553132, 0.104794, 0.826477,
		0.591541, 4.646096, 0.025805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.266815, 4.432734, -0.735699>,  <0.978733, 4.572741, -0.552728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.266815, 4.432734, -0.735699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.263924, 4.687462, -0.427307>,  <0.262189, 4.840299, -0.242272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.263924, 4.687462, -0.427307>,  <0.266815, 4.432734, -0.735699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.263924, 4.687462, -0.427307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697104, 0.549560, -0.460467,
		-0.716933, -0.540781, 0.439957,
		-0.007229, 0.636820, 0.770978,
		0.261755, 4.878508, -0.196014>
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
