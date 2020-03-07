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
	<2.354060, 4.075722, 2.985857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.183357, 4.283443, 3.282021>,  <2.080936, 4.408076, 3.459718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.183357, 4.283443, 3.282021>,  <2.354060, 4.075722, 2.985857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.183357, 4.283443, 3.282021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809484, -0.145718, 0.568773,
		0.403256, 0.842075, -0.358181,
		-0.426756, 0.519303, 0.740408,
		2.055330, 4.439234, 3.504143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.814877, 4.541482, 3.259330>,  <2.354060, 4.075722, 2.985857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.814877, 4.541482, 3.259330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595062, 4.478603, 3.587548>,  <2.463173, 4.440876, 3.784480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595062, 4.478603, 3.587548>,  <2.814877, 4.541482, 3.259330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595062, 4.478603, 3.587548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829542, -0.219446, 0.513521,
		0.099341, 0.962877, 0.250996,
		-0.549538, -0.157198, 0.820547,
		2.430201, 4.431444, 3.833712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.122132, 4.822989, 3.937112>,  <2.814877, 4.541482, 3.259330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.122132, 4.822989, 3.937112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.901421, 4.498600, 4.014950>,  <2.768994, 4.303967, 4.061652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.901421, 4.498600, 4.014950>,  <3.122132, 4.822989, 3.937112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.901421, 4.498600, 4.014950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743122, -0.372175, 0.556108,
		-0.378565, 0.451455, 0.808008,
		-0.551778, -0.810971, 0.194594,
		2.735887, 4.255309, 4.073328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.103694, 4.847445, 4.659548>,  <3.122132, 4.822989, 3.937112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.103694, 4.847445, 4.659548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.073631, 4.478905, 4.506990>,  <3.055594, 4.257780, 4.415456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.073631, 4.478905, 4.506990>,  <3.103694, 4.847445, 4.659548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.073631, 4.478905, 4.506990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824551, -0.272511, 0.495836,
		-0.560774, -0.277213, 0.780183,
		-0.075156, -0.921353, -0.381394,
		3.051085, 4.202499, 4.392572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.064992, 4.356925, 5.200564>,  <3.103694, 4.847445, 4.659548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.064992, 4.356925, 5.200564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.182953, 4.132778, 4.890978>,  <3.253729, 3.998290, 4.705226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.182953, 4.132778, 4.890978>,  <3.064992, 4.356925, 5.200564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.182953, 4.132778, 4.890978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835449, -0.241898, 0.493467,
		-0.463743, -0.792133, 0.396822,
		0.294901, -0.560367, -0.773965,
		3.271423, 3.964668, 4.658788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.181250, 3.844829, 5.568487>,  <3.064992, 4.356925, 5.200564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.181250, 3.844829, 5.568487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.391701, 3.793354, 5.232242>,  <3.517972, 3.762469, 5.030495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.391701, 3.793354, 5.232242>,  <3.181250, 3.844829, 5.568487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.391701, 3.793354, 5.232242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683653, -0.523892, 0.508091,
		-0.505774, -0.842008, -0.187657,
		0.526128, -0.128687, -0.840612,
		3.549539, 3.754748, 4.980058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.366184, 3.126038, 5.505601>,  <3.181250, 3.844829, 5.568487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.366184, 3.126038, 5.505601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.640083, 3.309162, 5.278787>,  <3.804423, 3.419037, 5.142698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.640083, 3.309162, 5.278787>,  <3.366184, 3.126038, 5.505601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.640083, 3.309162, 5.278787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721773, -0.318380, 0.614555,
		0.100817, -0.830087, -0.548445,
		0.684748, 0.457810, -0.567036,
		3.845508, 3.446505, 5.108676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.991678, 2.636239, 5.259425>,  <3.366184, 3.126038, 5.505601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.991678, 2.636239, 5.259425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.116463, 3.015770, 5.239801>,  <4.191333, 3.243489, 5.228027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.116463, 3.015770, 5.239801>,  <3.991678, 2.636239, 5.259425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.116463, 3.015770, 5.239801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816324, -0.241261, 0.524794,
		0.486103, -0.203763, -0.849814,
		0.311961, 0.948828, -0.049059,
		4.210051, 3.300418, 5.225084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.039662, 3.204821, 6.433885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.253090, 3.362976, 6.134827>,  <5.381146, 3.457869, 5.955392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.253090, 3.362976, 6.134827>,  <5.039662, 3.204821, 6.433885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.253090, 3.362976, 6.134827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845411, 0.274613, -0.458114,
		0.024180, 0.876502, 0.480790,
		0.533569, 0.395388, -0.747645,
		5.413160, 3.481592, 5.910533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.845408, 3.922506, 6.218232>,  <5.039662, 3.204821, 6.433885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.845408, 3.922506, 6.218232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.966316, 3.741360, 5.882721>,  <5.038861, 3.632672, 5.681415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.966316, 3.741360, 5.882721>,  <4.845408, 3.922506, 6.218232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.966316, 3.741360, 5.882721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819618, 0.325788, -0.471262,
		0.486682, 0.829925, -0.272700,
		0.302269, -0.452865, -0.838777,
		5.056997, 3.605500, 5.631088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703925, 4.439797, 5.645025>,  <4.845408, 3.922506, 6.218232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703925, 4.439797, 5.645025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.709221, 4.061436, 5.515354>,  <4.712399, 3.834419, 5.437552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.709221, 4.061436, 5.515354>,  <4.703925, 4.439797, 5.645025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.709221, 4.061436, 5.515354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773897, 0.195601, -0.602348,
		0.633173, 0.258855, -0.729443,
		0.013241, -0.945904, -0.324177,
		4.713193, 3.777664, 5.418101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.770069, 4.373438, 4.916907>,  <4.703925, 4.439797, 5.645025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.770069, 4.373438, 4.916907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.595688, 4.025215, 5.008186>,  <4.491059, 3.816281, 5.062953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.595688, 4.025215, 5.008186>,  <4.770069, 4.373438, 4.916907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.595688, 4.025215, 5.008186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628025, 0.112661, -0.769995,
		0.644617, -0.478994, -0.595848,
		-0.435951, -0.870559, 0.228197,
		4.464902, 3.764048, 5.076645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.684076, 4.156563, 4.322995>,  <4.770069, 4.373438, 4.916907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.684076, 4.156563, 4.322995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.440109, 3.954510, 4.567238>,  <4.293729, 3.833278, 4.713784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.440109, 3.954510, 4.567238>,  <4.684076, 4.156563, 4.322995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.440109, 3.954510, 4.567238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740531, 0.088946, -0.666110,
		0.282165, -0.858444, -0.428318,
		-0.609915, -0.505136, 0.610607,
		4.257134, 3.802969, 4.750420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.425395, 3.594660, 3.901700>,  <4.684076, 4.156563, 4.322995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.425395, 3.594660, 3.901700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185593, 3.672783, 4.212170>,  <4.041711, 3.719657, 4.398451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185593, 3.672783, 4.212170>,  <4.425395, 3.594660, 3.901700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185593, 3.672783, 4.212170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775838, 0.096444, -0.623517,
		-0.196636, -0.975988, 0.093710,
		-0.599507, 0.195309, 0.776173,
		4.005740, 3.731375, 4.445022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.816630, 3.216916, 3.727845>,  <4.425395, 3.594660, 3.901700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.816630, 3.216916, 3.727845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.674835, 3.490002, 3.983419>,  <3.589758, 3.653853, 4.136764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.674835, 3.490002, 3.983419>,  <3.816630, 3.216916, 3.727845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.674835, 3.490002, 3.983419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852854, 0.044092, -0.520284,
		-0.383377, -0.729354, 0.566625,
		-0.354488, 0.682714, 0.638937,
		3.568489, 3.694816, 4.175100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.148612, 2.986393, 3.815896>,  <3.816630, 3.216916, 3.727845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.148612, 2.986393, 3.815896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.123497, 3.360687, 3.954723>,  <3.108428, 3.585264, 4.038020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.123497, 3.360687, 3.954723>,  <3.148612, 2.986393, 3.815896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.123497, 3.360687, 3.954723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928409, 0.072843, -0.364350,
		-0.366217, -0.345098, 0.864172,
		-0.062787, 0.935736, 0.347068,
		3.104661, 3.641408, 4.058844>
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
