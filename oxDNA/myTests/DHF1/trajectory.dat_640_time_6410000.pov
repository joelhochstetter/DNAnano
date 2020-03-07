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
	<4.027766, 3.467434, 0.914571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.155239, 3.180969, 1.162943>,  <4.231723, 3.009090, 1.311966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.155239, 3.180969, 1.162943>,  <4.027766, 3.467434, 0.914571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.155239, 3.180969, 1.162943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112312, -0.621939, -0.774970,
		0.941184, 0.316706, -0.117767,
		0.318682, -0.716163, 0.620929,
		4.250844, 2.966120, 1.349222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.640651, 3.266922, 0.648379>,  <4.027766, 3.467434, 0.914571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.640651, 3.266922, 0.648379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455795, 2.982180, 0.859922>,  <4.344882, 2.811335, 0.986848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455795, 2.982180, 0.859922>,  <4.640651, 3.266922, 0.648379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.455795, 2.982180, 0.859922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029360, -0.583753, -0.811400,
		0.886321, -0.390507, 0.248875,
		-0.462139, -0.711855, 0.528858,
		4.317153, 2.768623, 1.018580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.580046, 2.743896, 0.170946>,  <4.640651, 3.266922, 0.648379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.580046, 2.743896, 0.170946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.417347, 2.552876, 0.482459>,  <4.319728, 2.438263, 0.669367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.417347, 2.552876, 0.482459>,  <4.580046, 2.743896, 0.170946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417347, 2.552876, 0.482459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330181, -0.718008, -0.612735,
		0.851785, -0.506367, 0.134368,
		-0.406746, -0.477552, 0.778782,
		4.295323, 2.409610, 0.716094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.888269, 2.026458, 0.379184>,  <4.580046, 2.743896, 0.170946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.888269, 2.026458, 0.379184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498825, 2.062141, 0.463206>,  <4.265159, 2.083552, 0.513620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498825, 2.062141, 0.463206>,  <4.888269, 2.026458, 0.379184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498825, 2.062141, 0.463206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208407, -0.722625, -0.659074,
		0.092997, -0.685459, 0.722148,
		-0.973611, 0.089209, 0.210057,
		4.206742, 2.088904, 0.526223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.588842, 1.390671, 0.480053>,  <4.888269, 2.026458, 0.379184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.588842, 1.390671, 0.480053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.258156, 1.603550, 0.407051>,  <4.059744, 1.731277, 0.363250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.258156, 1.603550, 0.407051>,  <4.588842, 1.390671, 0.480053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.258156, 1.603550, 0.407051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251401, -0.639630, -0.726410,
		-0.503328, -0.554652, 0.662587,
		-0.826715, 0.532198, -0.182504,
		4.010141, 1.763209, 0.352300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.987045, 0.936181, 0.358360>,  <4.588842, 1.390671, 0.480053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.987045, 0.936181, 0.358360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889629, 1.278812, 0.176387>,  <3.831180, 1.484391, 0.067203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889629, 1.278812, 0.176387>,  <3.987045, 0.936181, 0.358360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.889629, 1.278812, 0.176387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345430, -0.514902, -0.784573,
		-0.906294, -0.033926, 0.421285,
		-0.243539, 0.856578, -0.454933,
		3.816568, 1.535786, 0.039907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.196813, 0.895718, 0.169785>,  <3.987045, 0.936181, 0.358360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.196813, 0.895718, 0.169785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.325397, 1.196821, -0.060004>,  <3.402548, 1.377483, -0.197878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.325397, 1.196821, -0.060004>,  <3.196813, 0.895718, 0.169785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325397, 1.196821, -0.060004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541280, -0.351712, -0.763750,
		-0.776968, 0.556467, 0.294390,
		0.321461, 0.752757, -0.574474,
		3.421836, 1.422648, -0.232346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.610234, 1.068413, -0.263692>,  <3.196813, 0.895718, 0.169785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.610234, 1.068413, -0.263692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.925137, 1.222866, -0.455995>,  <3.114078, 1.315538, -0.571376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.925137, 1.222866, -0.455995>,  <2.610234, 1.068413, -0.263692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.925137, 1.222866, -0.455995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446770, -0.180179, -0.876317,
		-0.424998, 0.904675, 0.030666,
		0.787257, 0.386134, -0.480758,
		3.161314, 1.338706, -0.600222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.370543, 0.246644, 3.613326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.415108, 0.561067, 3.370114>,  <3.441846, 0.749721, 3.224187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.415108, 0.561067, 3.370114>,  <3.370543, 0.246644, 3.613326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.415108, 0.561067, 3.370114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099934, 0.599876, 0.793827,
		0.988737, -0.149204, -0.011721,
		0.111411, 0.786058, -0.608030,
		3.448531, 0.796884, 3.187705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.926239, 0.555101, 3.887990>,  <3.370543, 0.246644, 3.613326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.926239, 0.555101, 3.887990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.689606, 0.791945, 3.669106>,  <3.547626, 0.934050, 3.537776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.689606, 0.791945, 3.669106>,  <3.926239, 0.555101, 3.887990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689606, 0.791945, 3.669106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046236, 0.652682, 0.756220,
		0.804918, 0.472667, -0.358739,
		-0.591582, 0.592108, -0.547210,
		3.512131, 0.969577, 3.504943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.171065, 1.233952, 3.703120>,  <3.926239, 0.555101, 3.887990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.171065, 1.233952, 3.703120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.777405, 1.272894, 3.762409>,  <3.541209, 1.296260, 3.797982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.777405, 1.272894, 3.762409>,  <4.171065, 1.233952, 3.703120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.777405, 1.272894, 3.762409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176897, 0.597690, 0.781968,
		-0.012461, 0.795794, -0.605439,
		-0.984150, 0.097356, 0.148222,
		3.482160, 1.302101, 3.806875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013251, 1.890009, 3.641497>,  <4.171065, 1.233952, 3.703120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013251, 1.890009, 3.641497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.771400, 1.711599, 3.905463>,  <3.626290, 1.604553, 4.063843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.771400, 1.711599, 3.905463>,  <4.013251, 1.890009, 3.641497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.771400, 1.711599, 3.905463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344481, 0.600587, 0.721546,
		-0.718164, 0.663594, -0.209484,
		-0.604627, -0.446025, 0.659915,
		3.590012, 1.577792, 4.103438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.747243, 2.366429, 3.996522>,  <4.013251, 1.890009, 3.641497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.747243, 2.366429, 3.996522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.648567, 2.069495, 4.245708>,  <3.589362, 1.891335, 4.395219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.648567, 2.069495, 4.245708>,  <3.747243, 2.366429, 3.996522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.648567, 2.069495, 4.245708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231616, 0.579038, 0.781709,
		-0.941009, 0.337128, 0.029094,
		-0.246689, -0.742334, 0.622965,
		3.574560, 1.846795, 4.432597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.409947, 2.673550, 4.514495>,  <3.747243, 2.366429, 3.996522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.409947, 2.673550, 4.514495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.525604, 2.322279, 4.666914>,  <3.594999, 2.111516, 4.758367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.525604, 2.322279, 4.666914>,  <3.409947, 2.673550, 4.514495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.525604, 2.322279, 4.666914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280530, 0.458307, 0.843361,
		-0.915259, -0.136956, 0.378872,
		0.289143, -0.878179, 0.381050,
		3.612347, 2.058825, 4.781229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.971776, 2.456805, 5.090156>,  <3.409947, 2.673550, 4.514495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.971776, 2.456805, 5.090156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306976, 2.251068, 5.163049>,  <3.508096, 2.127626, 5.206785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306976, 2.251068, 5.163049>,  <2.971776, 2.456805, 5.090156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306976, 2.251068, 5.163049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051732, 0.407342, 0.911809,
		-0.543212, -0.754669, 0.367960,
		0.838000, -0.514341, 0.182233,
		3.558376, 2.096766, 5.217719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.885419, 2.165307, 5.795644>,  <2.971776, 2.456805, 5.090156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.885419, 2.165307, 5.795644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.277931, 2.156175, 5.719155>,  <3.513439, 2.150696, 5.673261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.277931, 2.156175, 5.719155>,  <2.885419, 2.165307, 5.795644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.277931, 2.156175, 5.719155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175763, 0.511985, 0.840821,
		0.078707, -0.858691, 0.506414,
		0.981281, -0.022830, -0.191223,
		3.572315, 2.149326, 5.661788>
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
