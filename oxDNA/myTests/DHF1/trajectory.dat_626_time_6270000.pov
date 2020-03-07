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
	<1.742003, 3.754476, 5.433668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551922, 3.939062, 5.134007>,  <1.437873, 4.049814, 4.954210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551922, 3.939062, 5.134007>,  <1.742003, 3.754476, 5.433668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.551922, 3.939062, 5.134007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709892, -0.704115, 0.016576,
		-0.519841, 0.539695, 0.662189,
		-0.475203, 0.461466, -0.749154,
		1.409361, 4.077502, 4.909260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.964891, 3.492482, 5.462440>,  <1.742003, 3.754476, 5.433668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.964891, 3.492482, 5.462440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.001940, 3.673847, 5.107850>,  <1.024169, 3.782666, 4.895096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.001940, 3.673847, 5.107850>,  <0.964891, 3.492482, 5.462440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.001940, 3.673847, 5.107850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708370, -0.595661, -0.378682,
		-0.699738, 0.663026, 0.266013,
		0.092622, 0.453414, -0.886475,
		1.029726, 3.809871, 4.841908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.301272, 3.534554, 5.283051>,  <0.964891, 3.492482, 5.462440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.301272, 3.534554, 5.283051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.433104, 3.683952, 4.936207>,  <0.512203, 3.773591, 4.728101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.433104, 3.683952, 4.936207>,  <0.301272, 3.534554, 5.283051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.433104, 3.683952, 4.936207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767394, -0.429038, -0.476480,
		-0.549986, 0.822452, 0.145216,
		0.329579, 0.373495, -0.867110,
		0.531977, 3.796001, 4.676074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.305725, 3.827059, 4.866140>,  <0.301272, 3.534554, 5.283051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.305725, 3.827059, 4.866140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.005760, 3.684114, 4.643456>,  <0.174219, 3.598348, 4.509846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.005760, 3.684114, 4.643456>,  <-0.305725, 3.827059, 4.866140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.005760, 3.684114, 4.643456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657229, -0.498356, -0.565413,
		-0.075384, 0.789895, -0.608591,
		0.749912, -0.357360, -0.556710,
		0.219213, 3.576906, 4.476443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.557145, 3.901845, 4.273256>,  <-0.305725, 3.827059, 4.866140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.557145, 3.901845, 4.273256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.267069, 3.645342, 4.172948>,  <-0.093023, 3.491440, 4.112763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.267069, 3.645342, 4.172948>,  <-0.557145, 3.901845, 4.273256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.267069, 3.645342, 4.172948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613890, -0.437214, -0.657255,
		0.311829, 0.630581, -0.710725,
		0.725191, -0.641258, -0.250771,
		-0.049512, 3.452965, 4.097716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.490756, 3.947454, 3.525111>,  <-0.557145, 3.901845, 4.273256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.490756, 3.947454, 3.525111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.350782, 3.601200, 3.668344>,  <-0.266798, 3.393448, 3.754283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.350782, 3.601200, 3.668344>,  <-0.490756, 3.947454, 3.525111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.350782, 3.601200, 3.668344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496510, -0.495528, -0.712692,
		0.794370, 0.071605, -0.603199,
		0.349935, -0.865635, 0.358080,
		-0.245802, 3.341510, 3.775768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.362170, 3.684789, 2.926822>,  <-0.490756, 3.947454, 3.525111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.362170, 3.684789, 2.926822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.392086, 3.399445, 3.205540>,  <-0.410036, 3.228238, 3.372770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.392086, 3.399445, 3.205540>,  <-0.362170, 3.684789, 2.926822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.392086, 3.399445, 3.205540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456879, -0.596584, -0.659810,
		0.886379, -0.367698, -0.281301,
		-0.074791, -0.713362, 0.696793,
		-0.414523, 3.185436, 3.414578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.121660, 3.021414, 2.608624>,  <-0.362170, 3.684789, 2.926822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.121660, 3.021414, 2.608624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.362471, 2.907293, 2.906931>,  <-0.506957, 2.838821, 3.085915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.362471, 2.907293, 2.906931>,  <-0.121660, 3.021414, 2.608624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.362471, 2.907293, 2.906931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394884, -0.705393, -0.588631,
		0.693996, -0.648863, 0.312004,
		-0.602026, -0.285302, 0.745766,
		-0.543078, 2.821703, 3.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.085684, 2.840252, 2.585942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.224308, 2.485678, 2.708662>,  <3.307483, 2.272933, 2.782294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.224308, 2.485678, 2.708662>,  <3.085684, 2.840252, 2.585942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.224308, 2.485678, 2.708662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592080, 0.460400, 0.661417,
		-0.727555, -0.047571, 0.684398,
		0.346561, -0.886436, 0.306801,
		3.328276, 2.219747, 2.800702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.176952, 2.958190, 3.261484>,  <3.085684, 2.840252, 2.585942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.176952, 2.958190, 3.261484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406033, 2.634722, 3.207724>,  <3.543481, 2.440640, 3.175467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406033, 2.634722, 3.207724>,  <3.176952, 2.958190, 3.261484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406033, 2.634722, 3.207724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623364, 0.323125, 0.712045,
		-0.532381, -0.491571, 0.689151,
		0.572702, -0.808671, -0.134402,
		3.577843, 2.392120, 3.167403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.351147, 2.655863, 3.904811>,  <3.176952, 2.958190, 3.261484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.351147, 2.655863, 3.904811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.634678, 2.579120, 3.633295>,  <3.804796, 2.533075, 3.470385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.634678, 2.579120, 3.633295>,  <3.351147, 2.655863, 3.904811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.634678, 2.579120, 3.633295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699134, 0.318893, 0.639937,
		0.093686, -0.928169, 0.360173,
		0.708826, -0.191856, -0.678790,
		3.847326, 2.521564, 3.429658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.846078, 2.511471, 4.270291>,  <3.351147, 2.655863, 3.904811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.846078, 2.511471, 4.270291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.047913, 2.576475, 3.931120>,  <4.169014, 2.615478, 3.727617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.047913, 2.576475, 3.931120>,  <3.846078, 2.511471, 4.270291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.047913, 2.576475, 3.931120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818427, 0.222680, 0.529708,
		0.274901, -0.961251, -0.020643,
		0.504586, 0.162512, -0.847929,
		4.199288, 2.625228, 3.676741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.552422, 2.167289, 4.185851>,  <3.846078, 2.511471, 4.270291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.552422, 2.167289, 4.185851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.581665, 2.482760, 3.941671>,  <4.599211, 2.672042, 3.795164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.581665, 2.482760, 3.941671>,  <4.552422, 2.167289, 4.185851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.581665, 2.482760, 3.941671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856201, 0.264255, 0.443947,
		0.511444, -0.555122, -0.655946,
		0.073108, 0.788676, -0.610447,
		4.603598, 2.719362, 3.758537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.333501, 2.193529, 3.949774>,  <4.552422, 2.167289, 4.185851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.333501, 2.193529, 3.949774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.177902, 2.556514, 3.886284>,  <5.084543, 2.774305, 3.848190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.177902, 2.556514, 3.886284>,  <5.333501, 2.193529, 3.949774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.177902, 2.556514, 3.886284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822317, 0.419707, 0.384241,
		0.415301, 0.018947, -0.909487,
		-0.388998, 0.907462, -0.158725,
		5.061203, 2.828753, 3.838666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.932626, 2.626445, 3.893612>,  <5.333501, 2.193529, 3.949774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.932626, 2.626445, 3.893612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.636070, 2.891626, 3.935251>,  <5.458137, 3.050734, 3.960235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.636070, 2.891626, 3.935251>,  <5.932626, 2.626445, 3.893612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.636070, 2.891626, 3.935251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619301, 0.616165, 0.486629,
		0.258470, 0.425250, -0.867385,
		-0.741391, 0.662951, 0.104097,
		5.413653, 3.090511, 3.966480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.120422, 3.241988, 3.571595>,  <5.932626, 2.626445, 3.893612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.120422, 3.241988, 3.571595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.865883, 3.349461, 3.860834>,  <5.713159, 3.413945, 4.034378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.865883, 3.349461, 3.860834>,  <6.120422, 3.241988, 3.571595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.865883, 3.349461, 3.860834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645993, 0.697934, 0.309161,
		-0.421608, 0.663850, -0.617697,
		-0.636349, 0.268684, 0.723097,
		5.674978, 3.430066, 4.077763>
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
