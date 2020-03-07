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
	<0.274657, 2.497972, 2.028531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.134972, 2.771206, 1.771955>,  <0.051160, 2.935147, 1.618010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.134972, 2.771206, 1.771955>,  <0.274657, 2.497972, 2.028531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.134972, 2.771206, 1.771955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687044, -0.278838, -0.670984,
		-0.637197, -0.675013, -0.371936,
		-0.349213, 0.683086, -0.641439,
		0.030208, 2.976132, 1.579524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.159807, 2.118859, 1.442928>,  <0.274657, 2.497972, 2.028531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.159807, 2.118859, 1.442928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.207840, 2.504879, 1.349756>,  <0.236660, 2.736491, 1.293853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.207840, 2.504879, 1.349756>,  <0.159807, 2.118859, 1.442928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.207840, 2.504879, 1.349756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567658, -0.259234, -0.781385,
		-0.814459, -0.038393, -0.578949,
		0.120084, 0.965051, -0.232930,
		0.243865, 2.794394, 1.279877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.134232, 2.157997, 0.666601>,  <0.159807, 2.118859, 1.442928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.134232, 2.157997, 0.666601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.337090, 2.484779, 0.776428>,  <0.458804, 2.680849, 0.842325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.337090, 2.484779, 0.776428>,  <0.134232, 2.157997, 0.666601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.337090, 2.484779, 0.776428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564934, -0.074511, -0.821765,
		-0.650886, 0.571867, -0.499314,
		0.507145, 0.816955, 0.274569,
		0.489233, 2.729866, 0.858799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.294430, 2.511699, 0.093550>,  <0.134232, 2.157997, 0.666601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.294430, 2.511699, 0.093550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.570580, 2.660618, 0.341673>,  <0.736269, 2.749969, 0.490547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.570580, 2.660618, 0.341673>,  <0.294430, 2.511699, 0.093550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.570580, 2.660618, 0.341673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693771, -0.097611, -0.713551,
		-0.205104, 0.922967, -0.325676,
		0.690373, 0.372296, 0.620307,
		0.777691, 2.772307, 0.527765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.657644, 3.005466, -0.249473>,  <0.294430, 2.511699, 0.093550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.657644, 3.005466, -0.249473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.895226, 2.855827, 0.035419>,  <1.037774, 2.766044, 0.206355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.895226, 2.855827, 0.035419>,  <0.657644, 3.005466, -0.249473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.895226, 2.855827, 0.035419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703786, -0.187283, -0.685281,
		0.389749, 0.908283, 0.152045,
		0.593954, -0.374095, 0.712230,
		1.073412, 2.743599, 0.249089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.302209, 3.383261, -0.282538>,  <0.657644, 3.005466, -0.249473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.302209, 3.383261, -0.282538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.364098, 3.036430, -0.093122>,  <1.401231, 2.828332, 0.020527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.364098, 3.036430, -0.093122>,  <1.302209, 3.383261, -0.282538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.364098, 3.036430, -0.093122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883163, -0.093445, -0.459664,
		0.442813, 0.489333, 0.751312,
		0.154723, -0.867076, 0.473539,
		1.410514, 2.776307, 0.048939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.037596, 3.379177, -0.131027>,  <1.302209, 3.383261, -0.282538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.037596, 3.379177, -0.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.905502, 3.002735, -0.101992>,  <1.826246, 2.776870, -0.084570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.905502, 3.002735, -0.101992>,  <2.037596, 3.379177, -0.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.905502, 3.002735, -0.101992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674800, -0.289161, -0.678993,
		0.659993, -0.175244, 0.730547,
		-0.330235, -0.941103, 0.072589,
		1.806432, 2.720404, -0.080215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.647020, 2.991895, -0.152153>,  <2.037596, 3.379177, -0.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.647020, 2.991895, -0.152153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.369186, 2.714035, -0.227003>,  <2.202486, 2.547319, -0.271913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.369186, 2.714035, -0.227003>,  <2.647020, 2.991895, -0.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.369186, 2.714035, -0.227003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679389, -0.547819, -0.488184,
		0.236607, -0.466215, 0.852444,
		-0.694584, -0.694649, -0.187124,
		2.160811, 2.505640, -0.283140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.638695, 2.163542, 3.398623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.475876, 1.838703, 3.565865>,  <2.378185, 1.643800, 3.666209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.475876, 1.838703, 3.565865>,  <2.638695, 2.163542, 3.398623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.475876, 1.838703, 3.565865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647386, 0.579412, 0.495149,
		-0.644363, -0.069125, -0.761589,
		-0.407047, -0.812098, 0.418103,
		2.353762, 1.595074, 3.691295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.001119, 2.352752, 3.506202>,  <2.638695, 2.163542, 3.398623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.001119, 2.352752, 3.506202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053352, 2.046871, 3.758608>,  <2.084692, 1.863343, 3.910051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053352, 2.046871, 3.758608>,  <2.001119, 2.352752, 3.506202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053352, 2.046871, 3.758608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598629, 0.446534, 0.665019,
		-0.790311, -0.464582, -0.399464,
		0.130582, -0.764703, 0.631013,
		2.092527, 1.817460, 3.947912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.392186, 1.954055, 3.731939>,  <2.001119, 2.352752, 3.506202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.392186, 1.954055, 3.731939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.683113, 1.965603, 4.006216>,  <1.857670, 1.972532, 4.170782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.683113, 1.965603, 4.006216>,  <1.392186, 1.954055, 3.731939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.683113, 1.965603, 4.006216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654863, 0.328118, 0.680803,
		-0.205333, -0.944195, 0.257552,
		0.727319, 0.028870, 0.685692,
		1.901309, 1.974264, 4.211924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.190809, 1.632422, 4.388119>,  <1.392186, 1.954055, 3.731939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.190809, 1.632422, 4.388119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.483582, 1.885372, 4.489611>,  <1.659245, 2.037143, 4.550506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.483582, 1.885372, 4.489611>,  <1.190809, 1.632422, 4.388119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.483582, 1.885372, 4.489611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562647, 0.350888, 0.748536,
		0.384323, -0.690638, 0.612629,
		0.731931, 0.632373, 0.253731,
		1.703161, 2.075085, 4.565730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.285936, 1.536970, 5.161301>,  <1.190809, 1.632422, 4.388119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.285936, 1.536970, 5.161301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.505623, 1.869423, 5.126478>,  <1.637435, 2.068895, 5.105585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.505623, 1.869423, 5.126478>,  <1.285936, 1.536970, 5.161301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.505623, 1.869423, 5.126478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399548, 0.352655, 0.846166,
		0.733977, -0.429945, 0.525761,
		0.549217, 0.831133, -0.087057,
		1.670388, 2.118763, 5.100361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.539621, 1.753162, 5.799798>,  <1.285936, 1.536970, 5.161301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.539621, 1.753162, 5.799798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528419, 2.071770, 5.558212>,  <1.521699, 2.262934, 5.413261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528419, 2.071770, 5.558212>,  <1.539621, 1.753162, 5.799798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528419, 2.071770, 5.558212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511395, 0.507729, 0.693315,
		0.858889, 0.328279, 0.393119,
		-0.028003, 0.796520, -0.603963,
		1.520019, 2.310726, 5.377023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.832126, 2.349400, 6.159148>,  <1.539621, 1.753162, 5.799798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.832126, 2.349400, 6.159148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.581459, 2.464890, 5.869617>,  <1.431059, 2.534184, 5.695899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.581459, 2.464890, 5.869617>,  <1.832126, 2.349400, 6.159148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.581459, 2.464890, 5.869617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477251, 0.592081, 0.649363,
		0.616051, 0.752382, -0.233244,
		-0.626668, 0.288724, -0.723827,
		1.393459, 2.551507, 5.652469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.768073, 3.095741, 6.284758>,  <1.832126, 2.349400, 6.159148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.768073, 3.095741, 6.284758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.449059, 2.980564, 6.072710>,  <1.257650, 2.911458, 5.945481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.449059, 2.980564, 6.072710>,  <1.768073, 3.095741, 6.284758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.449059, 2.980564, 6.072710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594043, 0.527950, 0.606944,
		0.105112, 0.798973, -0.592109,
		-0.797536, -0.287941, -0.530119,
		1.209798, 2.894182, 5.913674>
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
