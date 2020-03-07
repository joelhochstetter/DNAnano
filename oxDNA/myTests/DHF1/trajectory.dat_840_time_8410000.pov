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
	<2.382807, 2.573260, -0.206181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.466087, 2.896484, -0.426614>,  <2.516056, 3.090419, -0.558873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.466087, 2.896484, -0.426614>,  <2.382807, 2.573260, -0.206181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.466087, 2.896484, -0.426614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615066, 0.329915, 0.716135,
		0.760491, -0.488051, -0.428322,
		0.208201, 0.808061, -0.551081,
		2.528548, 3.138903, -0.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.142458, 2.700089, -0.149107>,  <2.382807, 2.573260, -0.206181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.142458, 2.700089, -0.149107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.971794, 3.047470, -0.250102>,  <2.869395, 3.255899, -0.310699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.971794, 3.047470, -0.250102>,  <3.142458, 2.700089, -0.149107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.971794, 3.047470, -0.250102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652364, 0.488878, 0.579154,
		0.626403, 0.082389, -0.775133,
		-0.426661, 0.868453, -0.252487,
		2.843796, 3.308006, -0.325848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.698366, 3.038853, -0.459976>,  <3.142458, 2.700089, -0.149107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.698366, 3.038853, -0.459976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.410160, 3.251442, -0.281810>,  <3.237236, 3.378995, -0.174910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.410160, 3.251442, -0.281810>,  <3.698366, 3.038853, -0.459976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.410160, 3.251442, -0.281810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688854, 0.474830, 0.547738,
		0.079611, 0.701480, -0.708229,
		-0.720515, 0.531473, 0.445415,
		3.194005, 3.410884, -0.148185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.893827, 3.775393, -0.538360>,  <3.698366, 3.038853, -0.459976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.893827, 3.775393, -0.538360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.641415, 3.715164, -0.233958>,  <3.489967, 3.679027, -0.051317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.641415, 3.715164, -0.233958>,  <3.893827, 3.775393, -0.538360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.641415, 3.715164, -0.233958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451243, 0.726702, 0.517961,
		-0.631015, 0.670247, -0.390627,
		-0.631031, -0.150573, 0.761004,
		3.452105, 3.669992, -0.005657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.549248, 4.376636, -0.308389>,  <3.893827, 3.775393, -0.538360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.549248, 4.376636, -0.308389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567860, 4.129486, 0.005570>,  <3.579027, 3.981196, 0.193946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567860, 4.129486, 0.005570>,  <3.549248, 4.376636, -0.308389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567860, 4.129486, 0.005570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476024, 0.704509, 0.526373,
		-0.878201, 0.349138, 0.326905,
		0.046530, -0.617875, 0.784898,
		3.581819, 3.944124, 0.241040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.287954, 4.809516, 0.252431>,  <3.549248, 4.376636, -0.308389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.287954, 4.809516, 0.252431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.505558, 4.506920, 0.397634>,  <3.636121, 4.325362, 0.484755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.505558, 4.506920, 0.397634>,  <3.287954, 4.809516, 0.252431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.505558, 4.506920, 0.397634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498413, 0.639369, 0.585484,
		-0.675009, -0.137583, 0.724868,
		0.544011, -0.756491, 0.363007,
		3.668761, 4.279973, 0.506536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.339468, 4.989575, 0.994328>,  <3.287954, 4.809516, 0.252431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.339468, 4.989575, 0.994328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.627869, 4.722450, 0.920374>,  <3.800909, 4.562175, 0.876002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.627869, 4.722450, 0.920374>,  <3.339468, 4.989575, 0.994328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.627869, 4.722450, 0.920374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600737, 0.469433, 0.647107,
		-0.345355, -0.577633, 0.739642,
		0.721003, -0.667812, -0.184885,
		3.844170, 4.522107, 0.864908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598901, 4.731040, 1.647187>,  <3.339468, 4.989575, 0.994328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598901, 4.731040, 1.647187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875835, 4.666100, 1.365957>,  <4.041996, 4.627136, 1.197219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875835, 4.666100, 1.365957>,  <3.598901, 4.731040, 1.647187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.875835, 4.666100, 1.365957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713985, 0.295082, 0.634942,
		0.104381, -0.941578, 0.320212,
		0.692336, -0.162351, -0.703074,
		4.083536, 4.617394, 1.155035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.286733, 5.461635, 1.391292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.540833, 5.692017, 1.597102>,  <4.693293, 5.830245, 1.720588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.540833, 5.692017, 1.597102>,  <4.286733, 5.461635, 1.391292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.540833, 5.692017, 1.597102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754786, 0.321889, 0.571564,
		0.163573, -0.751443, 0.639201,
		0.635249, 0.575952, 0.514526,
		4.731407, 5.864803, 1.751460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.557857, 5.681571, 0.615707>,  <4.286733, 5.461635, 1.391292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.557857, 5.681571, 0.615707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.813210, 5.433998, 0.798744>,  <4.966421, 5.285454, 0.908566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.813210, 5.433998, 0.798744>,  <4.557857, 5.681571, 0.615707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.813210, 5.433998, 0.798744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580426, -0.777540, -0.241944,
		0.505544, -0.111146, -0.855612,
		0.638382, -0.618933, 0.457593,
		5.004724, 5.248318, 0.936022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.737960, 5.167302, 0.179911>,  <4.557857, 5.681571, 0.615707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.737960, 5.167302, 0.179911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751457, 5.019279, 0.551269>,  <4.759556, 4.930466, 0.774084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751457, 5.019279, 0.551269>,  <4.737960, 5.167302, 0.179911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.751457, 5.019279, 0.551269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566355, -0.772458, -0.287315,
		0.823470, -0.516107, -0.235649,
		0.033744, -0.370057, 0.928396,
		4.761580, 4.908263, 0.829788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.020382, 4.424325, 0.280189>,  <4.737960, 5.167302, 0.179911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.020382, 4.424325, 0.280189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738083, 4.487679, 0.556401>,  <4.568703, 4.525691, 0.722129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738083, 4.487679, 0.556401>,  <5.020382, 4.424325, 0.280189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738083, 4.487679, 0.556401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535381, -0.757580, -0.373417,
		0.463989, -0.633236, 0.619457,
		-0.705749, 0.158384, 0.690531,
		4.526358, 4.535194, 0.763560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.918684, 3.755894, 0.659913>,  <5.020382, 4.424325, 0.280189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.918684, 3.755894, 0.659913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594025, 3.977180, 0.734940>,  <4.399230, 4.109952, 0.779956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594025, 3.977180, 0.734940>,  <4.918684, 3.755894, 0.659913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594025, 3.977180, 0.734940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583754, -0.779939, -0.225669,
		0.021447, -0.292657, 0.955977,
		-0.811647, 0.553216, 0.187567,
		4.350531, 4.143145, 0.791210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.370156, 3.308461, 0.972827>,  <4.918684, 3.755894, 0.659913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.370156, 3.308461, 0.972827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.146263, 3.605576, 0.825875>,  <4.011927, 3.783844, 0.737704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.146263, 3.605576, 0.825875>,  <4.370156, 3.308461, 0.972827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.146263, 3.605576, 0.825875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648730, -0.668619, -0.363454,
		-0.515605, 0.034893, 0.856115,
		-0.559733, 0.742786, -0.367379,
		3.978343, 3.828411, 0.715661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.718832, 3.229207, 1.283134>,  <4.370156, 3.308461, 0.972827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.718832, 3.229207, 1.283134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.680931, 3.437714, 0.943888>,  <3.658190, 3.562818, 0.740340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.680931, 3.437714, 0.943888>,  <3.718832, 3.229207, 1.283134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.680931, 3.437714, 0.943888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771751, -0.576613, -0.268175,
		-0.628826, 0.629125, 0.456924,
		-0.094753, 0.521267, -0.848117,
		3.652505, 3.594094, 0.689453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.046701, 3.463123, 1.253705>,  <3.718832, 3.229207, 1.283134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.046701, 3.463123, 1.253705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158913, 3.480995, 0.870183>,  <3.226239, 3.491719, 0.640070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158913, 3.480995, 0.870183>,  <3.046701, 3.463123, 1.253705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158913, 3.480995, 0.870183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772166, -0.582845, -0.253082,
		-0.570143, 0.811354, -0.129004,
		0.280528, 0.044680, -0.958805,
		3.243071, 3.494399, 0.582542>
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
