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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.200562, 34.799809, 35.124565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.449371, 35.111450, 35.093376>,  <24.598658, 35.298435, 35.074665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.449371, 35.111450, 35.093376>,  <24.200562, 34.799809, 35.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.449371, 35.111450, 35.093376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684460, -0.492678, 0.537386,
		0.380267, -0.387634, -0.839724,
		0.622023, 0.779107, -0.077971,
		24.635979, 35.345184, 35.069984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846869, 34.622295, 34.840645>,  <24.200562, 34.799809, 35.124565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846869, 34.622295, 34.840645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905033, 34.932003, 35.087013>,  <24.939932, 35.117828, 35.234833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905033, 34.932003, 35.087013>,  <24.846869, 34.622295, 34.840645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905033, 34.932003, 35.087013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557407, -0.578447, 0.595564,
		0.817406, 0.256717, -0.515697,
		0.145412, 0.774271, 0.615922,
		24.948656, 35.164284, 35.271790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175671, 34.402634, 34.222221>,  <24.846869, 34.622295, 34.840645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175671, 34.402634, 34.222221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396761, 34.241150, 34.513844>,  <25.529415, 34.144260, 34.688816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396761, 34.241150, 34.513844>,  <25.175671, 34.402634, 34.222221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396761, 34.241150, 34.513844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613720, -0.394642, -0.683817,
		0.563775, 0.825397, 0.029634,
		0.552726, -0.403705, 0.729052,
		25.562578, 34.120037, 34.732559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757311, 34.600399, 34.056892>,  <25.175671, 34.402634, 34.222221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757311, 34.600399, 34.056892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809830, 34.278217, 34.288067>,  <25.841341, 34.084908, 34.426769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809830, 34.278217, 34.288067>,  <25.757311, 34.600399, 34.056892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809830, 34.278217, 34.288067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485963, -0.455833, -0.745691,
		0.864060, 0.378762, 0.331570,
		0.131299, -0.805453, 0.577932,
		25.849220, 34.036583, 34.461445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606236, 34.612434, 33.898792>,  <25.757311, 34.600399, 34.056892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606236, 34.612434, 33.898792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914356, 34.726334, 34.127022>,  <27.099228, 34.794674, 34.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914356, 34.726334, 34.127022>,  <26.606236, 34.612434, 33.898792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914356, 34.726334, 34.127022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250166, 0.688091, -0.681138,
		-0.586560, 0.667419, 0.458802,
		0.770302, 0.284751, 0.570572,
		27.145447, 34.811760, 34.298195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824516, 35.263927, 33.695110>,  <26.606236, 34.612434, 33.898792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824516, 35.263927, 33.695110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155703, 35.138401, 33.881008>,  <27.354414, 35.063087, 33.992546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155703, 35.138401, 33.881008>,  <26.824516, 35.263927, 33.695110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155703, 35.138401, 33.881008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548796, 0.623827, -0.556474,
		-0.115295, 0.715795, 0.688727,
		0.827968, -0.313812, 0.464749,
		27.404093, 35.044258, 34.020432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224760, 35.858475, 33.800201>,  <26.824516, 35.263927, 33.695110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224760, 35.858475, 33.800201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486883, 35.557095, 33.821701>,  <27.644157, 35.376266, 33.834599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486883, 35.557095, 33.821701>,  <27.224760, 35.858475, 33.800201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486883, 35.557095, 33.821701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584364, 0.460591, -0.668113,
		0.478632, 0.469228, 0.742116,
		0.655310, -0.753446, 0.053746,
		27.683475, 35.331062, 33.837826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879406, 36.040276, 34.132416>,  <27.224760, 35.858475, 33.800201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879406, 36.040276, 34.132416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936726, 35.729805, 33.886810>,  <27.971117, 35.543522, 33.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936726, 35.729805, 33.886810>,  <27.879406, 36.040276, 34.132416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936726, 35.729805, 33.886810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440972, 0.605499, -0.662506,
		0.886008, -0.175826, 0.429040,
		0.143298, -0.776180, -0.614011,
		27.979715, 35.496952, 33.702606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551233, 36.070793, 34.004585>,  <27.879406, 36.040276, 34.132416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551233, 36.070793, 34.004585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435583, 35.827084, 33.709236>,  <28.366194, 35.680859, 33.532028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435583, 35.827084, 33.709236>,  <28.551233, 36.070793, 34.004585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435583, 35.827084, 33.709236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624665, 0.464391, -0.627801,
		0.725397, -0.642745, 0.246328,
		-0.289124, -0.609278, -0.738368,
		28.348846, 35.644299, 33.487724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200111, 35.729733, 33.832508>,  <28.551233, 36.070793, 34.004585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200111, 35.729733, 33.832508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946072, 35.703060, 33.524689>,  <28.793648, 35.687057, 33.339996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946072, 35.703060, 33.524689>,  <29.200111, 35.729733, 33.832508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946072, 35.703060, 33.524689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750252, 0.183770, -0.635099,
		0.183770, -0.980705, -0.066683,
		0.635099, 0.066683, 0.769547,
		28.755543, 35.683056, 33.293823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511898, 35.406147, 33.291370>,  <29.200111, 35.729733, 33.832508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511898, 35.406147, 33.291370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211035, 35.570892, 33.085606>,  <29.030516, 35.669739, 32.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211035, 35.570892, 33.085606>,  <29.511898, 35.406147, 33.291370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211035, 35.570892, 33.085606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635681, 0.247735, -0.731120,
		-0.173684, -0.876924, -0.448151,
		-0.752160, 0.411864, -0.514416,
		28.985388, 35.694450, 32.931282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567747, 35.090511, 32.603798>,  <29.511898, 35.406147, 33.291370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567747, 35.090511, 32.603798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355618, 35.421074, 32.528103>,  <29.228340, 35.619411, 32.482685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355618, 35.421074, 32.528103>,  <29.567747, 35.090511, 32.603798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355618, 35.421074, 32.528103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569007, 0.181480, -0.802057,
		-0.628479, -0.533031, -0.566473,
		-0.530325, 0.826404, -0.189242,
		29.196520, 35.668995, 32.471329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468138, 35.191139, 31.851883>,  <29.567747, 35.090511, 32.603798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468138, 35.191139, 31.851883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318466, 35.555946, 31.919064>,  <29.228662, 35.774830, 31.959372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318466, 35.555946, 31.919064>,  <29.468138, 35.191139, 31.851883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318466, 35.555946, 31.919064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232269, 0.267506, -0.935143,
		-0.897798, -0.310900, -0.311929,
		-0.374179, 0.912021, 0.167954,
		29.206213, 35.829552, 31.969450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969093, 35.396137, 31.287134>,  <29.468138, 35.191139, 31.851883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969093, 35.396137, 31.287134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148394, 35.724060, 31.429672>,  <29.255974, 35.920815, 31.515194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148394, 35.724060, 31.429672>,  <28.969093, 35.396137, 31.287134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148394, 35.724060, 31.429672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166007, 0.315356, -0.934340,
		-0.878357, 0.477976, 0.005265,
		0.448253, 0.819810, 0.356343,
		29.282869, 35.970005, 31.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732906, 35.946796, 30.966698>,  <28.969093, 35.396137, 31.287134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732906, 35.946796, 30.966698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080236, 36.096542, 31.096844>,  <29.288633, 36.186390, 31.174932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080236, 36.096542, 31.096844>,  <28.732906, 35.946796, 30.966698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080236, 36.096542, 31.096844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230967, 0.275333, -0.933191,
		-0.438940, 0.885461, 0.152611,
		0.868324, 0.374367, 0.325367,
		29.340733, 36.208851, 31.194454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722822, 36.595478, 30.770903>,  <28.732906, 35.946796, 30.966698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722822, 36.595478, 30.770903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107563, 36.511459, 30.841009>,  <29.338408, 36.461048, 30.883074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107563, 36.511459, 30.841009>,  <28.722822, 36.595478, 30.770903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107563, 36.511459, 30.841009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252823, 0.437797, -0.862795,
		0.104498, 0.874193, 0.474201,
		0.961853, -0.210049, 0.175268,
		29.396118, 36.448444, 30.893589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085636, 37.212017, 30.592449>,  <28.722822, 36.595478, 30.770903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085636, 37.212017, 30.592449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360466, 36.921806, 30.576748>,  <29.525364, 36.747681, 30.567327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360466, 36.921806, 30.576748>,  <29.085636, 37.212017, 30.592449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360466, 36.921806, 30.576748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307492, 0.339297, -0.889003,
		0.658313, 0.598741, 0.456216,
		0.687075, -0.725525, -0.039256,
		29.566589, 36.704147, 30.564972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655008, 37.614956, 30.327026>,  <29.085636, 37.212017, 30.592449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655008, 37.614956, 30.327026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738417, 37.228210, 30.268112>,  <29.788462, 36.996162, 30.232763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738417, 37.228210, 30.268112>,  <29.655008, 37.614956, 30.327026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738417, 37.228210, 30.268112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414766, 0.223803, -0.881976,
		0.885713, 0.122822, 0.447690,
		0.208521, -0.966864, -0.147283,
		29.800972, 36.938152, 30.223927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245640, 37.600365, 29.806772>,  <29.655008, 37.614956, 30.327026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245640, 37.600365, 29.806772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108650, 37.224701, 29.796318>,  <30.026457, 36.999302, 29.790045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108650, 37.224701, 29.796318>,  <30.245640, 37.600365, 29.806772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108650, 37.224701, 29.796318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041330, 0.042851, -0.998226,
		0.938617, -0.340788, -0.053491,
		-0.342476, -0.939163, -0.026135,
		30.005907, 36.942951, 29.788477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660826, 37.208138, 29.291115>,  <30.245640, 37.600365, 29.806772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660826, 37.208138, 29.291115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329958, 36.983715, 29.303822>,  <30.131437, 36.849060, 29.311445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329958, 36.983715, 29.303822>,  <30.660826, 37.208138, 29.291115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329958, 36.983715, 29.303822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071315, 0.048734, -0.996263,
		0.557413, -0.826341, -0.080322,
		-0.827167, -0.561058, 0.031765,
		30.081808, 36.815399, 29.313351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784517, 36.603947, 28.830706>,  <30.660826, 37.208138, 29.291115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784517, 36.603947, 28.830706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391657, 36.668541, 28.869278>,  <30.155941, 36.707298, 28.892422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391657, 36.668541, 28.869278>,  <30.784517, 36.603947, 28.830706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391657, 36.668541, 28.869278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110912, -0.083173, -0.990344,
		-0.151905, -0.983364, 0.099599,
		-0.982152, 0.161484, 0.096432,
		30.097012, 36.716984, 28.898209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398642, 35.971142, 28.567551>,  <30.784517, 36.603947, 28.830706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398642, 35.971142, 28.567551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149286, 36.282394, 28.536840>,  <29.999672, 36.469147, 28.518414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149286, 36.282394, 28.536840>,  <30.398642, 35.971142, 28.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149286, 36.282394, 28.536840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080021, -0.034186, -0.996207,
		-0.777806, -0.627169, -0.040955,
		-0.623390, 0.778133, -0.076777,
		29.962269, 36.515835, 28.513807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009888, 35.891273, 27.927591>,  <30.398642, 35.971142, 28.567551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009888, 35.891273, 27.927591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932173, 36.271130, 28.025930>,  <29.885544, 36.499043, 28.084934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932173, 36.271130, 28.025930>,  <30.009888, 35.891273, 27.927591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932173, 36.271130, 28.025930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119544, 0.225833, -0.966803,
		-0.973633, -0.217227, 0.069647,
		-0.194287, 0.949638, 0.245847,
		29.873886, 36.556023, 28.099684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365526, 36.004036, 27.813011>,  <30.009888, 35.891273, 27.927591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365526, 36.004036, 27.813011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542416, 36.362377, 27.795607>,  <29.648550, 36.577381, 27.785164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542416, 36.362377, 27.795607>,  <29.365526, 36.004036, 27.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542416, 36.362377, 27.795607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133575, 0.017810, -0.990879,
		-0.886903, 0.444002, 0.127539,
		0.442223, 0.895849, -0.043511,
		29.675083, 36.631130, 27.782553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987450, 36.393764, 27.320530>,  <29.365526, 36.004036, 27.813011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987450, 36.393764, 27.320530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323450, 36.610092, 27.338030>,  <29.525051, 36.739887, 27.348530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323450, 36.610092, 27.338030>,  <28.987450, 36.393764, 27.320530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323450, 36.610092, 27.338030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004760, 0.073282, -0.997300,
		-0.542562, 0.837943, 0.058983,
		0.840003, 0.540816, 0.043749,
		29.575451, 36.772335, 27.351154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885910, 37.068871, 26.931465>,  <28.987450, 36.393764, 27.320530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885910, 37.068871, 26.931465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275370, 36.978706, 26.945293>,  <29.509047, 36.924606, 26.953590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275370, 36.978706, 26.945293>,  <28.885910, 37.068871, 26.931465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275370, 36.978706, 26.945293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020881, -0.062841, -0.997805,
		0.227089, 0.972235, -0.056478,
		0.973650, -0.225412, 0.034572,
		29.567465, 36.911083, 26.955666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465685, 37.543053, 26.542715>,  <28.885910, 37.068871, 26.931465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465685, 37.543053, 26.542715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603939, 37.168533, 26.567625>,  <29.686892, 36.943821, 26.582571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603939, 37.168533, 26.567625>,  <29.465685, 37.543053, 26.542715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603939, 37.168533, 26.567625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102929, -0.028134, -0.994291,
		0.932706, 0.350074, 0.086648,
		0.345638, -0.936300, 0.062273,
		29.707630, 36.887642, 26.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152227, 37.427437, 26.393917>,  <29.465685, 37.543053, 26.542715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152227, 37.427437, 26.393917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949230, 37.098801, 26.290047>,  <29.827431, 36.901619, 26.227724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949230, 37.098801, 26.290047>,  <30.152227, 37.427437, 26.393917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949230, 37.098801, 26.290047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130169, 0.224807, -0.965670,
		0.851766, -0.523874, -0.007143,
		-0.507495, -0.821595, -0.259675,
		29.796982, 36.852322, 26.212145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544842, 37.186924, 25.802465>,  <30.152227, 37.427437, 26.393917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544842, 37.186924, 25.802465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175575, 37.033825, 25.816689>,  <29.954016, 36.941963, 25.825222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175575, 37.033825, 25.816689>,  <30.544842, 37.186924, 25.802465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175575, 37.033825, 25.816689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086014, 0.115533, -0.989572,
		0.374654, -0.916598, -0.139578,
		-0.923166, -0.382753, 0.035556,
		29.898624, 36.918999, 25.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492701, 36.659992, 25.244678>,  <30.544842, 37.186924, 25.802465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492701, 36.659992, 25.244678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146011, 36.838398, 25.333996>,  <29.937998, 36.945442, 25.387587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146011, 36.838398, 25.333996>,  <30.492701, 36.659992, 25.244678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146011, 36.838398, 25.333996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194982, 0.109090, -0.974721,
		-0.459103, -0.888351, -0.007585,
		-0.866722, 0.446018, 0.223296,
		29.885994, 36.972202, 25.400984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070354, 36.400936, 24.744289>,  <30.492701, 36.659992, 25.244678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070354, 36.400936, 24.744289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884449, 36.728008, 24.880167>,  <29.772905, 36.924252, 24.961693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884449, 36.728008, 24.880167>,  <30.070354, 36.400936, 24.744289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884449, 36.728008, 24.880167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323426, 0.200362, -0.924798,
		-0.824252, -0.539678, 0.171339,
		-0.464763, 0.817682, 0.339694,
		29.745020, 36.973312, 24.982075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390617, 36.302052, 24.455219>,  <30.070354, 36.400936, 24.744289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390617, 36.302052, 24.455219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460886, 36.687157, 24.537415>,  <29.503048, 36.918221, 24.586731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460886, 36.687157, 24.537415>,  <29.390617, 36.302052, 24.455219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460886, 36.687157, 24.537415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258432, 0.246515, -0.934047,
		-0.949922, 0.110981, 0.292115,
		0.175672, 0.962764, 0.205489,
		29.513588, 36.975986, 24.599062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991795, 35.978249, 24.939781>,  <29.390617, 36.302052, 24.455219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991795, 35.978249, 24.939781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227089, 36.003220, 25.262291>,  <29.368265, 36.018204, 25.455797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227089, 36.003220, 25.262291>,  <28.991795, 35.978249, 24.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227089, 36.003220, 25.262291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380741, -0.858220, 0.344230,
		0.713453, -0.509471, -0.481065,
		0.588235, 0.062431, 0.806277,
		29.403559, 36.021950, 25.504173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713070, 35.782120, 24.851788>,  <28.991795, 35.978249, 24.939781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713070, 35.782120, 24.851788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072332, 35.819118, 24.679853>,  <30.287889, 35.841320, 24.576693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072332, 35.819118, 24.679853>,  <29.713070, 35.782120, 24.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072332, 35.819118, 24.679853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309120, -0.828062, 0.467716,
		-0.312668, -0.552953, -0.772323,
		0.898156, 0.092500, -0.429837,
		30.341780, 35.846870, 24.550901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812006, 35.117794, 24.554428>,  <29.713070, 35.782120, 24.851788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812006, 35.117794, 24.554428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169628, 35.282082, 24.625961>,  <30.384201, 35.380653, 24.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169628, 35.282082, 24.625961>,  <29.812006, 35.117794, 24.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169628, 35.282082, 24.625961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207854, -0.733986, 0.646577,
		0.396820, -0.540903, -0.741592,
		0.894053, 0.410717, 0.178831,
		30.437843, 35.405296, 24.679611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239201, 34.549290, 24.512936>,  <29.812006, 35.117794, 24.554428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239201, 34.549290, 24.512936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432489, 34.827042, 24.726229>,  <30.548462, 34.993694, 24.854204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432489, 34.827042, 24.726229>,  <30.239201, 34.549290, 24.512936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432489, 34.827042, 24.726229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005872, -0.611617, 0.791133,
		0.875480, -0.379160, -0.299623,
		0.483220, 0.694380, 0.533231,
		30.577456, 35.035355, 24.886198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656864, 34.175156, 25.017523>,  <30.239201, 34.549290, 24.512936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656864, 34.175156, 25.017523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664139, 34.545441, 25.168642>,  <30.668503, 34.767612, 25.259314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664139, 34.545441, 25.168642>,  <30.656864, 34.175156, 25.017523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664139, 34.545441, 25.168642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006975, -0.377971, 0.925791,
		0.999810, -0.014202, -0.013331,
		0.018187, 0.925709, 0.377800,
		30.669596, 34.823154, 25.281982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238274, 34.253765, 25.434855>,  <30.656864, 34.175156, 25.017523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238274, 34.253765, 25.434855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994356, 34.535042, 25.581100>,  <30.848005, 34.703808, 25.668848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994356, 34.535042, 25.581100>,  <31.238274, 34.253765, 25.434855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994356, 34.535042, 25.581100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020439, -0.447200, 0.894200,
		0.792297, 0.552749, 0.258327,
		-0.609792, 0.703193, 0.365613,
		30.811419, 34.745998, 25.690784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559151, 34.462276, 26.016832>,  <31.238274, 34.253765, 25.434855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559151, 34.462276, 26.016832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171230, 34.554440, 26.048826>,  <30.938478, 34.609737, 26.068022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171230, 34.554440, 26.048826>,  <31.559151, 34.462276, 26.016832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171230, 34.554440, 26.048826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011524, -0.284284, 0.958671,
		0.243624, 0.930642, 0.273044,
		-0.969801, 0.230409, 0.079983,
		30.880289, 34.623562, 26.072821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574629, 34.696133, 26.640163>,  <31.559151, 34.462276, 26.016832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574629, 34.696133, 26.640163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185009, 34.650723, 26.561846>,  <30.951237, 34.623478, 26.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185009, 34.650723, 26.561846>,  <31.574629, 34.696133, 26.640163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185009, 34.650723, 26.561846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143537, -0.359012, 0.922230,
		-0.174986, 0.926404, 0.333401,
		-0.974052, -0.113521, -0.195796,
		30.892794, 34.616665, 26.503107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240168, 35.100384, 27.262468>,  <31.574629, 34.696133, 26.640163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240168, 35.100384, 27.262468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976637, 34.856899, 27.085646>,  <30.818518, 34.710808, 26.979551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976637, 34.856899, 27.085646>,  <31.240168, 35.100384, 27.262468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976637, 34.856899, 27.085646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288950, -0.337786, 0.895772,
		-0.694590, 0.717891, 0.046655,
		-0.658827, -0.608714, -0.442058,
		30.778990, 34.674286, 26.953028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540892, 35.223015, 27.631166>,  <31.240168, 35.100384, 27.262468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540892, 35.223015, 27.631166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578144, 34.865723, 27.455227>,  <30.600496, 34.651348, 27.349663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578144, 34.865723, 27.455227>,  <30.540892, 35.223015, 27.631166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578144, 34.865723, 27.455227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299986, -0.446415, 0.843043,
		-0.949387, 0.053436, -0.309532,
		0.093131, -0.893229, -0.439851,
		30.606083, 34.597755, 27.323271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012768, 34.767559, 27.840471>,  <30.540892, 35.223015, 27.631166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012768, 34.767559, 27.840471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291067, 34.510826, 27.711483>,  <30.458046, 34.356785, 27.634090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291067, 34.510826, 27.711483>,  <30.012768, 34.767559, 27.840471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291067, 34.510826, 27.711483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138328, -0.560265, 0.816682,
		-0.704842, -0.523597, -0.478585,
		0.695746, -0.641833, -0.322470,
		30.499792, 34.318275, 27.614742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710278, 34.080261, 28.034946>,  <30.012768, 34.767559, 27.840471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710278, 34.080261, 28.034946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089037, 34.015270, 27.923964>,  <30.316292, 33.976276, 27.857374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089037, 34.015270, 27.923964>,  <29.710278, 34.080261, 28.034946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089037, 34.015270, 27.923964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104764, -0.659919, 0.743997,
		-0.303984, -0.733558, -0.607854,
		0.946899, -0.162482, -0.277455,
		30.373106, 33.966526, 27.840727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764940, 33.370358, 28.108490>,  <29.710278, 34.080261, 28.034946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764940, 33.370358, 28.108490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125374, 33.541801, 28.134829>,  <30.341635, 33.644669, 28.150631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125374, 33.541801, 28.134829>,  <29.764940, 33.370358, 28.108490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125374, 33.541801, 28.134829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183324, -0.514129, 0.837892,
		0.392985, -0.742942, -0.541849,
		0.901086, 0.428613, 0.065846,
		30.395700, 33.670383, 28.154583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056005, 32.836395, 28.411236>,  <29.764940, 33.370358, 28.108490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056005, 32.836395, 28.411236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311090, 33.138748, 28.470509>,  <30.464142, 33.320160, 28.506073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311090, 33.138748, 28.470509>,  <30.056005, 32.836395, 28.411236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311090, 33.138748, 28.470509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179221, -0.332706, 0.925844,
		0.749133, -0.563866, -0.347642,
		0.637715, 0.755885, 0.148184,
		30.502405, 33.365513, 28.514963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754293, 32.563519, 28.733446>,  <30.056005, 32.836395, 28.411236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754293, 32.563519, 28.733446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695671, 32.950565, 28.815653>,  <30.660498, 33.182793, 28.864977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695671, 32.950565, 28.815653>,  <30.754293, 32.563519, 28.733446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695671, 32.950565, 28.815653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190622, -0.176241, 0.965713,
		0.970662, 0.180708, -0.158620,
		-0.146557, 0.967617, 0.205517,
		30.651705, 33.240852, 28.877308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345123, 32.841499, 29.135210>,  <30.754293, 32.563519, 28.733446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345123, 32.841499, 29.135210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042416, 33.089584, 29.217802>,  <30.860790, 33.238438, 29.267357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042416, 33.089584, 29.217802>,  <31.345123, 32.841499, 29.135210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042416, 33.089584, 29.217802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151023, -0.141441, 0.978359,
		0.635998, 0.771575, 0.013372,
		-0.756769, 0.620214, 0.206482,
		30.815386, 33.275650, 29.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562437, 33.218929, 29.682816>,  <31.345123, 32.841499, 29.135210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562437, 33.218929, 29.682816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164236, 33.256420, 29.688370>,  <30.925316, 33.278915, 29.691702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164236, 33.256420, 29.688370>,  <31.562437, 33.218929, 29.682816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164236, 33.256420, 29.688370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007975, -0.063143, 0.997973,
		0.094412, 0.993594, 0.062111,
		-0.995501, 0.093726, 0.013886,
		30.865585, 33.284538, 29.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462679, 33.657333, 30.291763>,  <31.562437, 33.218929, 29.682816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462679, 33.657333, 30.291763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094595, 33.506546, 30.249609>,  <30.873745, 33.416073, 30.224316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094595, 33.506546, 30.249609>,  <31.462679, 33.657333, 30.291763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094595, 33.506546, 30.249609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082459, -0.076503, 0.993654,
		-0.382640, 0.923061, 0.039315,
		-0.920210, -0.376970, -0.105388,
		30.818531, 33.393456, 30.217993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179472, 33.815216, 30.922827>,  <31.462679, 33.657333, 30.291763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179472, 33.815216, 30.922827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894552, 33.582737, 30.765427>,  <30.723600, 33.443249, 30.670986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894552, 33.582737, 30.765427>,  <31.179472, 33.815216, 30.922827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894552, 33.582737, 30.765427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435979, -0.072985, 0.896992,
		-0.550048, 0.810484, -0.201402,
		-0.712299, -0.581196, -0.393500,
		30.680862, 33.408379, 30.647377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519356, 34.109535, 31.028633>,  <31.179472, 33.815216, 30.922827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519356, 34.109535, 31.028633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463787, 33.714817, 30.995312>,  <30.430447, 33.477985, 30.975319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463787, 33.714817, 30.995312>,  <30.519356, 34.109535, 31.028633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463787, 33.714817, 30.995312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483583, -0.005813, 0.875279,
		-0.864204, 0.161878, -0.476390,
		-0.138919, -0.986794, -0.083305,
		30.422112, 33.418777, 30.970320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858738, 34.057186, 31.247818>,  <30.519356, 34.109535, 31.028633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858738, 34.057186, 31.247818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021355, 33.693336, 31.281994>,  <30.118925, 33.475025, 31.302500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021355, 33.693336, 31.281994>,  <29.858738, 34.057186, 31.247818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021355, 33.693336, 31.281994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542462, -0.165077, 0.823702,
		-0.735158, -0.381218, -0.560549,
		0.406543, -0.909627, 0.085439,
		30.143318, 33.420448, 31.307625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292412, 33.645874, 31.455931>,  <29.858738, 34.057186, 31.247818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292412, 33.645874, 31.455931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615997, 33.431793, 31.553204>,  <29.810148, 33.303345, 31.611567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615997, 33.431793, 31.553204>,  <29.292412, 33.645874, 31.455931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615997, 33.431793, 31.553204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340922, -0.090125, 0.935761,
		-0.478904, -0.839903, -0.255370,
		0.808964, -0.535201, 0.243181,
		29.858686, 33.271233, 31.626158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068903, 32.931194, 31.707666>,  <29.292412, 33.645874, 31.455931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068903, 32.931194, 31.707666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432306, 33.026119, 31.845242>,  <29.650349, 33.083076, 31.927788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432306, 33.026119, 31.845242>,  <29.068903, 32.931194, 31.707666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432306, 33.026119, 31.845242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331815, -0.090581, 0.938985,
		0.253992, -0.967200, -0.003549,
		0.908508, 0.237317, 0.343939,
		29.704859, 33.097313, 31.948423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169241, 32.436844, 32.276978>,  <29.068903, 32.931194, 31.707666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169241, 32.436844, 32.276978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442476, 32.721836, 32.341167>,  <29.606419, 32.892834, 32.379681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442476, 32.721836, 32.341167>,  <29.169241, 32.436844, 32.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442476, 32.721836, 32.341167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145650, -0.082419, 0.985897,
		0.715663, -0.696830, 0.047474,
		0.683090, 0.712485, 0.160478,
		29.647404, 32.935581, 32.389309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583960, 32.197205, 32.835346>,  <29.169241, 32.436844, 32.276978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583960, 32.197205, 32.835346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663719, 32.589157, 32.838833>,  <29.711575, 32.824329, 32.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663719, 32.589157, 32.838833>,  <29.583960, 32.197205, 32.835346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663719, 32.589157, 32.838833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229349, 0.038016, 0.972601,
		0.952701, -0.195937, 0.232315,
		0.199400, 0.979879, 0.008720,
		29.723539, 32.883121, 32.841450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806610, 32.296280, 33.479080>,  <29.583960, 32.197205, 32.835346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806610, 32.296280, 33.479080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704262, 32.661980, 33.353428>,  <29.642853, 32.881401, 33.278038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704262, 32.661980, 33.353428>,  <29.806610, 32.296280, 33.479080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704262, 32.661980, 33.353428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206334, 0.265812, 0.941685,
		0.944435, 0.305765, 0.120627,
		-0.255871, 0.914249, -0.314132,
		29.627501, 32.936253, 33.259190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372536, 32.601952, 33.827423>,  <29.806610, 32.296280, 33.479080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372536, 32.601952, 33.827423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628166, 32.900227, 33.752018>,  <30.781544, 33.079193, 33.706776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628166, 32.900227, 33.752018>,  <30.372536, 32.601952, 33.827423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628166, 32.900227, 33.752018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447195, -0.160828, 0.879858,
		0.625780, -0.646596, -0.436249,
		0.639074, 0.745687, -0.188511,
		30.819889, 33.123932, 33.695465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086863, 32.325645, 33.944317>,  <30.372536, 32.601952, 33.827423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086863, 32.325645, 33.944317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131187, 32.723167, 33.947708>,  <31.157782, 32.961681, 33.949741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131187, 32.723167, 33.947708>,  <31.086863, 32.325645, 33.944317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131187, 32.723167, 33.947708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328430, -0.044668, 0.943471,
		0.938005, -0.101763, -0.331346,
		0.110811, 0.993805, 0.008477,
		31.164431, 33.021309, 33.950253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737240, 32.427864, 34.163151>,  <31.086863, 32.325645, 33.944317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737240, 32.427864, 34.163151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524092, 32.754192, 34.253033>,  <31.396202, 32.949989, 34.306961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524092, 32.754192, 34.253033>,  <31.737240, 32.427864, 34.163151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524092, 32.754192, 34.253033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412162, 0.018310, 0.910927,
		0.739035, 0.578021, -0.346005,
		-0.532870, 0.815816, 0.224706,
		31.364231, 32.998936, 34.320446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195572, 32.686432, 34.521381>,  <31.737240, 32.427864, 34.163151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195572, 32.686432, 34.521381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863241, 32.891457, 34.608112>,  <31.663843, 33.014473, 34.660149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863241, 32.891457, 34.608112>,  <32.195572, 32.686432, 34.521381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863241, 32.891457, 34.608112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268521, 0.027941, 0.962868,
		0.487471, 0.858196, -0.160848,
		-0.830824, 0.512561, 0.216823,
		31.613995, 33.045223, 34.673161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290939, 33.222252, 34.930580>,  <32.195572, 32.686432, 34.521381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290939, 33.222252, 34.930580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942516, 33.055740, 35.034855>,  <31.733461, 32.955833, 35.097420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942516, 33.055740, 35.034855>,  <32.290939, 33.222252, 34.930580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942516, 33.055740, 35.034855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263950, 0.050875, 0.963194,
		-0.414223, 0.907811, 0.065563,
		-0.871062, -0.416283, 0.260690,
		31.681198, 32.930855, 35.113064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862877, 33.637680, 35.518696>,  <32.290939, 33.222252, 34.930580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862877, 33.637680, 35.518696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811480, 33.241154, 35.529858>,  <31.780642, 33.003239, 35.536556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811480, 33.241154, 35.529858>,  <31.862877, 33.637680, 35.518696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811480, 33.241154, 35.529858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203080, 0.001241, 0.979161,
		-0.970694, 0.131484, 0.201157,
		-0.128494, -0.991317, 0.027907,
		31.772932, 32.943760, 35.538231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284380, 33.490170, 36.044212>,  <31.862877, 33.637680, 35.518696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284380, 33.490170, 36.044212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537743, 33.187199, 35.980831>,  <31.689760, 33.005417, 35.942802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537743, 33.187199, 35.980831>,  <31.284380, 33.490170, 36.044212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537743, 33.187199, 35.980831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149547, -0.081089, 0.985424,
		-0.759233, -0.647868, 0.061908,
		0.633404, -0.757424, -0.158452,
		31.727764, 32.959972, 35.933296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087637, 32.887409, 36.391228>,  <31.284380, 33.490170, 36.044212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087637, 32.887409, 36.391228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484184, 32.868259, 36.342415>,  <31.722113, 32.856770, 36.313126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484184, 32.868259, 36.342415>,  <31.087637, 32.887409, 36.391228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484184, 32.868259, 36.342415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113267, -0.155854, 0.981265,
		-0.065992, -0.986620, -0.149087,
		0.991371, -0.047869, -0.122036,
		31.781595, 32.853897, 36.305805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379459, 32.288151, 36.748638>,  <31.087637, 32.887409, 36.391228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379459, 32.288151, 36.748638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636845, 32.588989, 36.691639>,  <31.791275, 32.769493, 36.657440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636845, 32.588989, 36.691639>,  <31.379459, 32.288151, 36.748638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636845, 32.588989, 36.691639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137291, 0.069750, 0.988072,
		0.753065, -0.655352, -0.058375,
		0.643463, 0.752097, -0.142500,
		31.829884, 32.814617, 36.648888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140915, 32.209839, 37.121376>,  <31.379459, 32.288151, 36.748638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140915, 32.209839, 37.121376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071869, 32.602470, 37.088596>,  <32.030441, 32.838047, 37.068928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071869, 32.602470, 37.088596>,  <32.140915, 32.209839, 37.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071869, 32.602470, 37.088596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326628, 0.135532, 0.935385,
		0.929256, 0.134696, -0.344005,
		-0.172616, 0.981574, -0.081948,
		32.020084, 32.896942, 37.064011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700783, 32.555691, 37.344578>,  <32.140915, 32.209839, 37.121376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700783, 32.555691, 37.344578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410660, 32.829082, 37.377552>,  <32.236588, 32.993118, 37.397335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410660, 32.829082, 37.377552>,  <32.700783, 32.555691, 37.344578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410660, 32.829082, 37.377552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369617, 0.285597, 0.884204,
		0.580789, 0.671786, -0.459769,
		-0.725304, 0.683475, 0.082432,
		32.193069, 33.034126, 37.402283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996929, 33.170517, 37.603172>,  <32.700783, 32.555691, 37.344578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996929, 33.170517, 37.603172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607388, 33.201832, 37.688477>,  <32.373661, 33.220623, 37.739658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607388, 33.201832, 37.688477>,  <32.996929, 33.170517, 37.603172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607388, 33.201832, 37.688477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224933, 0.464027, 0.856787,
		-0.031882, 0.882355, -0.469504,
		-0.973853, 0.078291, 0.213265,
		32.315231, 33.225319, 37.752457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945702, 33.754414, 37.895458>,  <32.996929, 33.170517, 37.603172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945702, 33.754414, 37.895458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590744, 33.595436, 37.988903>,  <32.377769, 33.500050, 38.044971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590744, 33.595436, 37.988903>,  <32.945702, 33.754414, 37.895458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590744, 33.595436, 37.988903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038699, 0.440735, 0.896803,
		-0.459389, 0.804856, -0.375724,
		-0.887392, -0.397441, 0.233616,
		32.324528, 33.476204, 38.058987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529202, 34.325668, 38.122082>,  <32.945702, 33.754414, 37.895458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529202, 34.325668, 38.122082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334126, 34.018600, 38.288376>,  <32.217079, 33.834358, 38.388153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334126, 34.018600, 38.288376>,  <32.529202, 34.325668, 38.122082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334126, 34.018600, 38.288376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128301, 0.408007, 0.903919,
		-0.863536, 0.494174, -0.100489,
		-0.487693, -0.767673, 0.415732,
		32.187817, 33.788300, 38.413094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110931, 34.615494, 38.598057>,  <32.529202, 34.325668, 38.122082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110931, 34.615494, 38.598057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132175, 34.236073, 38.722912>,  <32.144920, 34.008419, 38.797825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132175, 34.236073, 38.722912>,  <32.110931, 34.615494, 38.598057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132175, 34.236073, 38.722912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080894, 0.307464, 0.948115,
		-0.995307, -0.075602, -0.060404,
		0.053107, -0.948552, 0.312137,
		32.148109, 33.951508, 38.816551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591717, 34.498627, 39.184555>,  <32.110931, 34.615494, 38.598057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591717, 34.498627, 39.184555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866297, 34.211296, 39.229797>,  <32.031044, 34.038898, 39.256943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866297, 34.211296, 39.229797>,  <31.591717, 34.498627, 39.184555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866297, 34.211296, 39.229797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129730, 0.032069, 0.991031,
		-0.715510, -0.694967, -0.071175,
		0.686452, -0.718326, 0.113103,
		32.072231, 33.995800, 39.263729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366917, 34.062710, 39.779167>,  <31.591717, 34.498627, 39.184555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366917, 34.062710, 39.779167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751390, 33.960041, 39.738689>,  <31.982075, 33.898438, 39.714401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751390, 33.960041, 39.738689>,  <31.366917, 34.062710, 39.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751390, 33.960041, 39.738689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123585, 0.072605, 0.989674,
		-0.246677, -0.963767, 0.101508,
		0.961185, -0.256675, -0.101197,
		32.039745, 33.883038, 39.708332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515614, 33.328346, 39.990944>,  <31.366917, 34.062710, 39.779167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515614, 33.328346, 39.990944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848501, 33.543945, 40.042931>,  <32.048233, 33.673306, 40.074123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848501, 33.543945, 40.042931>,  <31.515614, 33.328346, 39.990944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848501, 33.543945, 40.042931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006049, -0.225561, 0.974210,
		0.554413, -0.811543, -0.184456,
		0.832220, 0.538999, 0.129963,
		32.098167, 33.705647, 40.081921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834244, 33.022648, 40.505753>,  <31.515614, 33.328346, 39.990944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834244, 33.022648, 40.505753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045628, 33.362103, 40.515156>,  <32.172459, 33.565773, 40.520798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045628, 33.362103, 40.515156>,  <31.834244, 33.022648, 40.505753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045628, 33.362103, 40.515156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141102, -0.115109, 0.983280,
		0.837150, -0.516306, -0.180574,
		0.528459, 0.848633, 0.023511,
		32.204166, 33.616692, 40.522209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426411, 32.898823, 40.753708>,  <31.834244, 33.022648, 40.505753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426411, 32.898823, 40.753708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370785, 33.288795, 40.823189>,  <32.337410, 33.522778, 40.864880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370785, 33.288795, 40.823189>,  <32.426411, 32.898823, 40.753708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370785, 33.288795, 40.823189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186866, -0.146425, 0.971412,
		0.972493, 0.167547, -0.161819,
		-0.139063, 0.974930, 0.173706,
		32.329067, 33.581276, 40.875301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072044, 33.154308, 41.098274>,  <32.426411, 32.898823, 40.753708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072044, 33.154308, 41.098274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757824, 33.392578, 41.165298>,  <32.569290, 33.535542, 41.205513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757824, 33.392578, 41.165298>,  <33.072044, 33.154308, 41.098274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757824, 33.392578, 41.165298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102589, -0.141662, 0.984585,
		0.610230, 0.790634, 0.050174,
		-0.785554, 0.595676, 0.167557,
		32.522160, 33.571281, 41.215565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362774, 33.435532, 41.668957>,  <33.072044, 33.154308, 41.098274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362774, 33.435532, 41.668957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976749, 33.534271, 41.704086>,  <32.745132, 33.593517, 41.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976749, 33.534271, 41.704086>,  <33.362774, 33.435532, 41.668957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976749, 33.534271, 41.704086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087213, -0.013411, 0.996099,
		0.247066, 0.968961, -0.008586,
		-0.965066, 0.246851, 0.087820,
		32.687229, 33.608326, 41.730431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420681, 34.080696, 42.004757>,  <33.362774, 33.435532, 41.668957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420681, 34.080696, 42.004757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068962, 33.898262, 42.059639>,  <32.857933, 33.788803, 42.092567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068962, 33.898262, 42.059639>,  <33.420681, 34.080696, 42.004757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068962, 33.898262, 42.059639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154649, -0.000934, 0.987969,
		-0.450470, 0.889936, 0.071355,
		-0.879295, -0.456085, 0.137207,
		32.805172, 33.761436, 42.100800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237568, 34.363125, 42.643127>,  <33.420681, 34.080696, 42.004757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237568, 34.363125, 42.643127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001255, 34.042801, 42.603771>,  <32.859467, 33.850605, 42.580158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001255, 34.042801, 42.603771>,  <33.237568, 34.363125, 42.643127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001255, 34.042801, 42.603771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002003, -0.123407, 0.992354,
		-0.806831, 0.586064, 0.074510,
		-0.590778, -0.800812, -0.098394,
		32.824020, 33.802559, 42.574253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758022, 34.426781, 43.155884>,  <33.237568, 34.363125, 42.643127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758022, 34.426781, 43.155884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681557, 34.043407, 43.071171>,  <32.635677, 33.813381, 43.020344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681557, 34.043407, 43.071171>,  <32.758022, 34.426781, 43.155884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681557, 34.043407, 43.071171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067794, -0.202356, 0.976963,
		-0.979214, 0.201120, -0.026293,
		-0.191166, -0.958438, -0.211785,
		32.624207, 33.755875, 43.007637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105656, 34.312050, 43.574947>,  <32.758022, 34.426781, 43.155884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105656, 34.312050, 43.574947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277020, 33.964508, 43.475712>,  <32.379837, 33.755981, 43.416168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277020, 33.964508, 43.475712>,  <32.105656, 34.312050, 43.574947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277020, 33.964508, 43.475712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137285, -0.333966, 0.932534,
		-0.893093, -0.365450, -0.262357,
		0.428413, -0.868858, -0.248092,
		32.405544, 33.703850, 43.401283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652441, 33.820004, 43.733864>,  <32.105656, 34.312050, 43.574947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652441, 33.820004, 43.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024563, 33.673290, 43.733936>,  <32.247837, 33.585262, 43.733982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024563, 33.673290, 43.733936>,  <31.652441, 33.820004, 43.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024563, 33.673290, 43.733936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139886, -0.354339, 0.924595,
		-0.339048, -0.860187, -0.380952,
		0.930311, -0.366772, 0.000190,
		32.303654, 33.563255, 43.733994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548502, 33.237980, 44.119362>,  <31.652441, 33.820004, 43.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548502, 33.237980, 44.119362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945349, 33.288105, 44.119705>,  <32.183456, 33.318180, 44.119911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945349, 33.288105, 44.119705>,  <31.548502, 33.237980, 44.119362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945349, 33.288105, 44.119705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033805, -0.274243, 0.961066,
		0.120669, -0.953461, -0.276317,
		0.992117, 0.125312, 0.000861,
		32.242985, 33.325699, 44.119965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753363, 32.781788, 44.628368>,  <31.548502, 33.237980, 44.119362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753363, 32.781788, 44.628368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095562, 32.987183, 44.601685>,  <32.300880, 33.110420, 44.585674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095562, 32.987183, 44.601685>,  <31.753363, 32.781788, 44.628368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095562, 32.987183, 44.601685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107548, -0.050189, 0.992932,
		0.506514, -0.856626, -0.098162,
		0.855498, 0.513491, -0.066707,
		32.352211, 33.141232, 44.581673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161880, 32.430191, 45.062996>,  <31.753363, 32.781788, 44.628368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161880, 32.430191, 45.062996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288391, 32.808941, 45.039692>,  <32.364296, 33.036190, 45.025707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288391, 32.808941, 45.039692>,  <32.161880, 32.430191, 45.062996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288391, 32.808941, 45.039692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120567, 0.020799, 0.992487,
		0.940975, -0.320923, -0.107584,
		0.316275, 0.946877, -0.058264,
		32.383274, 33.093002, 45.022213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545639, 32.524765, 45.557419>,  <32.161880, 32.430191, 45.062996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545639, 32.524765, 45.557419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483387, 32.909187, 45.466072>,  <32.446037, 33.139839, 45.411266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483387, 32.909187, 45.466072>,  <32.545639, 32.524765, 45.557419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483387, 32.909187, 45.466072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040139, 0.237141, 0.970645,
		0.987000, 0.141894, -0.075482,
		-0.155629, 0.961057, -0.228363,
		32.436699, 33.197506, 45.397564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980587, 32.923923, 46.144299>,  <32.545639, 32.524765, 45.557419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980587, 32.923923, 46.144299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697716, 33.154881, 45.981075>,  <32.527992, 33.293457, 45.883141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697716, 33.154881, 45.981075>,  <32.980587, 32.923923, 46.144299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697716, 33.154881, 45.981075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066396, 0.520355, 0.851365,
		0.703907, 0.629163, -0.329649,
		-0.707182, 0.577394, -0.408055,
		32.485561, 33.328098, 45.858658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192406, 33.569679, 46.324165>,  <32.980587, 32.923923, 46.144299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192406, 33.569679, 46.324165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797153, 33.570702, 46.262726>,  <32.560001, 33.571316, 46.225861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797153, 33.570702, 46.262726>,  <33.192406, 33.569679, 46.324165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797153, 33.570702, 46.262726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136707, 0.441483, 0.886794,
		0.070081, 0.897266, -0.435893,
		-0.988129, 0.002557, -0.153602,
		32.500713, 33.571468, 46.216644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108044, 34.254772, 46.376644>,  <33.192406, 33.569679, 46.324165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108044, 34.254772, 46.376644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774261, 34.039135, 46.422359>,  <32.573994, 33.909752, 46.449787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774261, 34.039135, 46.422359>,  <33.108044, 34.254772, 46.376644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774261, 34.039135, 46.422359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042372, 0.269538, 0.962057,
		-0.549443, 0.797952, -0.247760,
		-0.834456, -0.539093, 0.114284,
		32.523926, 33.877407, 46.456646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642101, 34.684605, 46.726265>,  <33.108044, 34.254772, 46.376644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642101, 34.684605, 46.726265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509293, 34.312534, 46.788914>,  <32.429607, 34.089291, 46.826504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509293, 34.312534, 46.788914>,  <32.642101, 34.684605, 46.726265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509293, 34.312534, 46.788914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122267, 0.122200, 0.984946,
		-0.935313, 0.346175, 0.073157,
		-0.332024, -0.930178, 0.156621,
		32.409687, 34.033482, 46.835899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265240, 34.731564, 47.271523>,  <32.642101, 34.684605, 46.726265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265240, 34.731564, 47.271523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348373, 34.340431, 47.261238>,  <32.398254, 34.105751, 47.255066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348373, 34.340431, 47.261238>,  <32.265240, 34.731564, 47.271523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348373, 34.340431, 47.261238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259223, 0.029711, 0.965360,
		-0.943191, -0.207298, 0.259650,
		0.207831, -0.977826, -0.025713,
		32.410725, 34.047085, 47.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968685, 34.568878, 47.858898>,  <32.265240, 34.731564, 47.271523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968685, 34.568878, 47.858898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153275, 34.221706, 47.785416>,  <32.264027, 34.013405, 47.741325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153275, 34.221706, 47.785416>,  <31.968685, 34.568878, 47.858898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153275, 34.221706, 47.785416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051806, -0.233085, 0.971076,
		-0.885640, -0.438608, -0.152526,
		0.461473, -0.867925, -0.183707,
		32.291718, 33.961330, 47.730305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551731, 33.978199, 48.257282>,  <31.968685, 34.568878, 47.858898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551731, 33.978199, 48.257282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924887, 33.849884, 48.191780>,  <32.148781, 33.772896, 48.152477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924887, 33.849884, 48.191780>,  <31.551731, 33.978199, 48.257282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924887, 33.849884, 48.191780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007464, -0.437362, 0.899255,
		-0.360086, -0.840127, -0.405616,
		0.932889, -0.320782, -0.163758,
		32.204754, 33.753651, 48.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530142, 33.186142, 48.455082>,  <31.551731, 33.978199, 48.257282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530142, 33.186142, 48.455082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901863, 33.333668, 48.462753>,  <32.124897, 33.422184, 48.467358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901863, 33.333668, 48.462753>,  <31.530142, 33.186142, 48.455082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901863, 33.333668, 48.462753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150243, -0.424986, 0.892644,
		0.337373, -0.826656, -0.450354,
		0.929304, 0.368817, 0.019180,
		32.180653, 33.444313, 48.468506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864576, 32.619591, 48.690372>,  <31.530142, 33.186142, 48.455082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864576, 32.619591, 48.690372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110649, 32.930817, 48.741222>,  <32.258293, 33.117554, 48.771732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110649, 32.930817, 48.741222>,  <31.864576, 32.619591, 48.690372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110649, 32.930817, 48.741222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412846, -0.455302, 0.788833,
		0.671645, -0.432795, -0.601317,
		0.615184, 0.778067, 0.127123,
		32.295204, 33.164238, 48.779358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495102, 32.263241, 49.000763>,  <31.864576, 32.619591, 48.690372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495102, 32.263241, 49.000763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542053, 32.655571, 49.063007>,  <32.570225, 32.890968, 49.100353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542053, 32.655571, 49.063007>,  <32.495102, 32.263241, 49.000763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542053, 32.655571, 49.063007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631494, -0.194646, 0.750552,
		0.766445, 0.010168, -0.642229,
		0.117376, 0.980821, 0.155607,
		32.577267, 32.949818, 49.109688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206654, 32.330547, 49.059669>,  <32.495102, 32.263241, 49.000763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206654, 32.330547, 49.059669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049862, 32.647766, 49.246185>,  <32.955788, 32.838097, 49.358093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049862, 32.647766, 49.246185>,  <33.206654, 32.330547, 49.059669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049862, 32.647766, 49.246185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547324, -0.206365, 0.811079,
		0.739450, 0.573140, -0.353163,
		-0.391982, 0.793047, 0.466290,
		32.932266, 32.885681, 49.386074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761238, 32.744339, 49.369522>,  <33.206654, 32.330547, 49.059669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761238, 32.744339, 49.369522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421280, 32.804264, 49.571606>,  <33.217304, 32.840221, 49.692856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421280, 32.804264, 49.571606>,  <33.761238, 32.744339, 49.369522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421280, 32.804264, 49.571606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504487, -0.045624, 0.862213,
		0.152224, 0.987661, -0.036805,
		-0.849895, 0.149817, 0.505207,
		33.166313, 32.849209, 49.723167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933178, 33.083244, 49.911701>,  <33.761238, 32.744339, 49.369522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933178, 33.083244, 49.911701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571270, 32.985058, 50.050919>,  <33.354126, 32.926147, 50.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571270, 32.985058, 50.050919>,  <33.933178, 33.083244, 49.911701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571270, 32.985058, 50.050919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369586, -0.046410, 0.928037,
		-0.211649, 0.968294, 0.132711,
		-0.904771, -0.245466, 0.348045,
		33.299839, 32.911419, 50.155331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795761, 33.543560, 50.501591>,  <33.933178, 33.083244, 49.911701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795761, 33.543560, 50.501591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561878, 33.221577, 50.541920>,  <33.421551, 33.028389, 50.566116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561878, 33.221577, 50.541920>,  <33.795761, 33.543560, 50.501591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561878, 33.221577, 50.541920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161479, 0.006313, 0.986856,
		-0.795012, 0.593301, 0.126292,
		-0.584705, -0.804956, 0.100824,
		33.386467, 32.980091, 50.572166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439796, 33.684444, 51.067440>,  <33.795761, 33.543560, 50.501591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439796, 33.684444, 51.067440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381489, 33.291473, 51.020813>,  <33.346504, 33.055691, 50.992836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381489, 33.291473, 51.020813>,  <33.439796, 33.684444, 51.067440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381489, 33.291473, 51.020813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022097, -0.114566, 0.993170,
		-0.989072, 0.147346, -0.005009,
		-0.145765, -0.982428, -0.116570,
		33.337761, 32.996746, 50.985844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821663, 33.487442, 51.522202>,  <33.439796, 33.684444, 51.067440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821663, 33.487442, 51.522202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065327, 33.171810, 51.490501>,  <33.211525, 32.982433, 51.471481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065327, 33.171810, 51.490501>,  <32.821663, 33.487442, 51.522202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065327, 33.171810, 51.490501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041801, -0.131737, 0.990403,
		-0.791943, -0.600004, -0.113233,
		0.609162, -0.789076, -0.079248,
		33.248074, 32.935089, 51.466728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513142, 32.918423, 51.847885>,  <32.821663, 33.487442, 51.522202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513142, 32.918423, 51.847885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903736, 32.832489, 51.840660>,  <33.138092, 32.780930, 51.836327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903736, 32.832489, 51.840660>,  <32.513142, 32.918423, 51.847885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903736, 32.832489, 51.840660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057884, -0.341962, 0.937930,
		-0.207670, -0.914828, -0.346355,
		0.976484, -0.214828, -0.018062,
		33.196682, 32.768040, 51.835243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774540, 32.082493, 51.770306>,  <32.513142, 32.918423, 51.847885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774540, 32.082493, 51.770306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976673, 32.343983, 51.995617>,  <33.097954, 32.500877, 52.130802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976673, 32.343983, 51.995617>,  <32.774540, 32.082493, 51.770306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976673, 32.343983, 51.995617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156475, -0.572510, 0.804827,
		0.848619, -0.494844, -0.187016,
		0.505332, 0.653729, 0.563274,
		33.128273, 32.540100, 52.164600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139828, 31.753298, 52.275482>,  <32.774540, 32.082493, 51.770306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139828, 31.753298, 52.275482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074451, 32.121170, 52.418297>,  <33.035225, 32.341892, 52.503986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074451, 32.121170, 52.418297>,  <33.139828, 31.753298, 52.275482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074451, 32.121170, 52.418297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177935, -0.383445, 0.906261,
		0.970375, 0.084587, 0.226313,
		-0.163437, 0.919682, 0.357035,
		33.025421, 32.397076, 52.525406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109310, 31.978649, 52.974678>,  <33.139828, 31.753298, 52.275482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109310, 31.978649, 52.974678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331272, 32.129009, 53.271538>,  <33.464447, 32.219227, 53.449654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331272, 32.129009, 53.271538>,  <33.109310, 31.978649, 52.974678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331272, 32.129009, 53.271538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815483, -0.069347, -0.574612,
		-0.164532, 0.924061, -0.345023,
		0.554903, 0.375902, 0.742146,
		33.497742, 32.241779, 53.494183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585323, 32.516773, 52.615810>,  <33.109310, 31.978649, 52.974678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585323, 32.516773, 52.615810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750282, 32.331902, 52.929836>,  <33.849258, 32.220978, 53.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750282, 32.331902, 52.929836>,  <33.585323, 32.516773, 52.615810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750282, 32.331902, 52.929836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882153, -0.012570, -0.470794,
		0.227458, 0.886700, 0.402526,
		0.412393, -0.462175, 0.785064,
		33.874001, 32.193249, 53.165356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239964, 32.820255, 52.732422>,  <33.585323, 32.516773, 52.615810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239964, 32.820255, 52.732422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259396, 32.447224, 52.875500>,  <34.271053, 32.223404, 52.961346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259396, 32.447224, 52.875500>,  <34.239964, 32.820255, 52.732422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259396, 32.447224, 52.875500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825345, -0.164209, -0.540222,
		0.562534, 0.321465, 0.761719,
		0.048581, -0.932575, 0.357693,
		34.273972, 32.167450, 52.982807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974030, 32.625278, 52.988792>,  <34.239964, 32.820255, 52.732422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974030, 32.625278, 52.988792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776920, 32.302200, 52.859299>,  <34.658657, 32.108353, 52.781605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776920, 32.302200, 52.859299>,  <34.974030, 32.625278, 52.988792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776920, 32.302200, 52.859299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765830, -0.225920, -0.602051,
		0.413137, -0.544596, 0.729885,
		-0.492771, -0.807697, -0.323732,
		34.629089, 32.059891, 52.762180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516567, 32.210236, 52.835281>,  <34.974030, 32.625278, 52.988792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516567, 32.210236, 52.835281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198227, 32.038937, 52.664066>,  <35.007221, 31.936157, 52.561337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198227, 32.038937, 52.664066>,  <35.516567, 32.210236, 52.835281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198227, 32.038937, 52.664066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600490, -0.467606, -0.648658,
		0.077633, -0.773270, 0.629306,
		-0.795855, -0.428249, -0.428039,
		34.959469, 31.910461, 52.535656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802742, 31.759586, 52.486893>,  <35.516567, 32.210236, 52.835281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802742, 31.759586, 52.486893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427067, 31.701580, 52.362377>,  <35.201664, 31.666777, 52.287666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427067, 31.701580, 52.362377>,  <35.802742, 31.759586, 52.486893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427067, 31.701580, 52.362377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340375, -0.513357, -0.787788,
		-0.045561, -0.845834, 0.531497,
		-0.939185, -0.145015, -0.311290,
		35.145309, 31.658075, 52.268990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837418, 31.489944, 51.868149>,  <35.802742, 31.759586, 52.486893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837418, 31.489944, 51.868149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442215, 31.433758, 51.842510>,  <35.205093, 31.400045, 51.827126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442215, 31.433758, 51.842510>,  <35.837418, 31.489944, 51.868149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442215, 31.433758, 51.842510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127598, -0.509045, -0.851230,
		0.086939, -0.849201, 0.520864,
		-0.988008, -0.140466, -0.064101,
		35.145813, 31.391619, 51.823280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687206, 30.802191, 51.947029>,  <35.837418, 31.489944, 51.868149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687206, 30.802191, 51.947029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410801, 30.981422, 51.720142>,  <35.244957, 31.088961, 51.584011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410801, 30.981422, 51.720142>,  <35.687206, 30.802191, 51.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410801, 30.981422, 51.720142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299438, -0.536761, -0.788812,
		-0.657909, -0.714922, 0.236735,
		-0.691009, 0.448079, -0.567214,
		35.203499, 31.115845, 51.549976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304882, 30.288290, 51.431385>,  <35.687206, 30.802191, 51.947029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304882, 30.288290, 51.431385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251877, 30.647470, 51.263515>,  <35.220074, 30.862978, 51.162792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251877, 30.647470, 51.263515>,  <35.304882, 30.288290, 51.431385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251877, 30.647470, 51.263515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101896, -0.408822, -0.906908,
		-0.985929, -0.162943, -0.037322,
		-0.132516, 0.897950, -0.419673,
		35.212120, 30.916855, 51.137615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797123, 30.192781, 50.888424>,  <35.304882, 30.288290, 51.431385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797123, 30.192781, 50.888424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018623, 30.514511, 50.802235>,  <35.151524, 30.707548, 50.750523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018623, 30.514511, 50.802235>,  <34.797123, 30.192781, 50.888424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018623, 30.514511, 50.802235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067553, -0.301305, -0.951132,
		-0.829940, 0.512132, -0.221181,
		0.553748, 0.804324, -0.215469,
		35.184746, 30.755808, 50.737595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628571, 30.377125, 50.162964>,  <34.797123, 30.192781, 50.888424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628571, 30.377125, 50.162964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973503, 30.561255, 50.247337>,  <35.180462, 30.671732, 50.297962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973503, 30.561255, 50.247337>,  <34.628571, 30.377125, 50.162964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973503, 30.561255, 50.247337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209281, 0.055314, -0.976290,
		-0.461075, 0.886027, -0.048638,
		0.862329, 0.460322, 0.210932,
		35.232201, 30.699350, 50.310616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778763, 30.779203, 49.471012>,  <34.628571, 30.377125, 50.162964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778763, 30.779203, 49.471012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125664, 30.775711, 49.670128>,  <35.333805, 30.773615, 49.789597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125664, 30.775711, 49.670128>,  <34.778763, 30.779203, 49.471012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125664, 30.775711, 49.670128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496724, 0.082928, -0.863938,
		-0.033738, 0.996517, 0.076256,
		0.867252, -0.008731, 0.497792,
		35.385841, 30.773092, 49.819466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090466, 31.336243, 49.248302>,  <34.778763, 30.779203, 49.471012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090466, 31.336243, 49.248302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366158, 31.082195, 49.387779>,  <35.531574, 30.929768, 49.471466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366158, 31.082195, 49.387779>,  <35.090466, 31.336243, 49.248302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366158, 31.082195, 49.387779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552804, 0.149853, -0.819727,
		0.468369, 0.757741, 0.454378,
		0.689231, -0.635116, 0.348696,
		35.572926, 30.891661, 49.492390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733673, 31.736624, 49.313831>,  <35.090466, 31.336243, 49.248302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733673, 31.736624, 49.313831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772881, 31.341221, 49.267796>,  <35.796406, 31.103979, 49.240173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772881, 31.341221, 49.267796>,  <35.733673, 31.736624, 49.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772881, 31.341221, 49.267796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543038, 0.150037, -0.826195,
		0.833967, 0.018488, 0.551504,
		0.098021, -0.988508, -0.115086,
		35.802288, 31.044668, 49.233269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457176, 31.653866, 49.046661>,  <35.733673, 31.736624, 49.313831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457176, 31.653866, 49.046661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306335, 31.291611, 48.969086>,  <36.215832, 31.074257, 48.922539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306335, 31.291611, 48.969086>,  <36.457176, 31.653866, 49.046661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306335, 31.291611, 48.969086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515889, -0.031482, -0.856077,
		0.769191, -0.422878, 0.479081,
		-0.377099, -0.905640, -0.193942,
		36.193207, 31.019918, 48.910904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962402, 31.330841, 48.755672>,  <36.457176, 31.653866, 49.046661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962402, 31.330841, 48.755672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652458, 31.094784, 48.665054>,  <36.466492, 30.953150, 48.610683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652458, 31.094784, 48.665054>,  <36.962402, 31.330841, 48.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652458, 31.094784, 48.665054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350141, -0.102300, -0.931094,
		0.526301, -0.800792, 0.285901,
		-0.774860, -0.590141, -0.226549,
		36.419998, 30.917742, 48.597088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156689, 30.717188, 48.485611>,  <36.962402, 31.330841, 48.755672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156689, 30.717188, 48.485611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785915, 30.752476, 48.339729>,  <36.563450, 30.773649, 48.252201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785915, 30.752476, 48.339729>,  <37.156689, 30.717188, 48.485611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785915, 30.752476, 48.339729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366864, 0.009039, -0.930231,
		-0.078772, -0.996060, -0.040744,
		-0.926934, 0.088224, -0.364707,
		36.507835, 30.778942, 48.230316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213829, 30.307716, 47.906574>,  <37.156689, 30.717188, 48.485611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213829, 30.307716, 47.906574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882286, 30.524960, 47.852856>,  <36.683361, 30.655306, 47.820625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882286, 30.524960, 47.852856>,  <37.213829, 30.307716, 47.906574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882286, 30.524960, 47.852856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132302, -0.042966, -0.990278,
		-0.543598, -0.838563, -0.036242,
		-0.828853, 0.543108, -0.134300,
		36.633629, 30.687891, 47.812565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907200, 30.002144, 47.243839>,  <37.213829, 30.307716, 47.906574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907200, 30.002144, 47.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746254, 30.365093, 47.292461>,  <36.649689, 30.582863, 47.321636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746254, 30.365093, 47.292461>,  <36.907200, 30.002144, 47.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746254, 30.365093, 47.292461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158793, 0.061591, -0.985389,
		-0.901604, -0.415784, 0.119303,
		-0.402361, 0.907376, 0.121554,
		36.625546, 30.637306, 47.328926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321453, 29.963921, 46.816307>,  <36.907200, 30.002144, 47.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321453, 29.963921, 46.816307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374985, 30.355680, 46.876793>,  <36.407104, 30.590736, 46.913082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374985, 30.355680, 46.876793>,  <36.321453, 29.963921, 46.816307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374985, 30.355680, 46.876793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258745, 0.181825, -0.948678,
		-0.956629, 0.087840, 0.277749,
		0.133834, 0.979400, 0.151211,
		36.415134, 30.649500, 46.922157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712685, 30.305380, 46.468189>,  <36.321453, 29.963921, 46.816307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712685, 30.305380, 46.468189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977444, 30.603167, 46.503208>,  <36.136299, 30.781837, 46.524220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977444, 30.603167, 46.503208>,  <35.712685, 30.305380, 46.468189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977444, 30.603167, 46.503208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243451, 0.323959, -0.914211,
		-0.708960, 0.583800, 0.395668,
		0.661896, 0.744465, 0.087547,
		36.176014, 30.826506, 46.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269478, 30.929056, 46.412376>,  <35.712685, 30.305380, 46.468189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269478, 30.929056, 46.412376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659283, 30.969366, 46.332214>,  <35.893166, 30.993553, 46.284115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659283, 30.969366, 46.332214>,  <35.269478, 30.929056, 46.412376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659283, 30.969366, 46.332214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212028, 0.122115, -0.969604,
		-0.073241, 0.987386, 0.140371,
		0.974515, 0.100777, -0.200410,
		35.951637, 30.999599, 46.272091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248447, 31.372517, 45.878334>,  <35.269478, 30.929056, 46.412376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248447, 31.372517, 45.878334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618145, 31.220110, 45.868610>,  <35.839966, 31.128666, 45.862778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618145, 31.220110, 45.868610>,  <35.248447, 31.372517, 45.878334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618145, 31.220110, 45.868610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011414, 0.091217, -0.995766,
		0.381622, 0.920057, 0.088656,
		0.924248, -0.381018, -0.024310,
		35.895420, 31.105804, 45.861317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615921, 31.870100, 45.492847>,  <35.248447, 31.372517, 45.878334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615921, 31.870100, 45.492847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761032, 31.499182, 45.455952>,  <35.848099, 31.276630, 45.433815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761032, 31.499182, 45.455952>,  <35.615921, 31.870100, 45.492847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761032, 31.499182, 45.455952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095443, 0.061493, -0.993533,
		0.926973, 0.369240, -0.066195,
		0.362782, -0.927297, -0.092244,
		35.869865, 31.220993, 45.428280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195934, 31.905863, 45.008327>,  <35.615921, 31.870100, 45.492847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195934, 31.905863, 45.008327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081375, 31.522715, 44.999733>,  <36.012638, 31.292826, 44.994576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081375, 31.522715, 44.999733>,  <36.195934, 31.905863, 45.008327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081375, 31.522715, 44.999733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191627, -0.035295, -0.980833,
		0.938752, -0.285026, 0.193662,
		-0.286398, -0.957870, -0.021485,
		35.995457, 31.235353, 44.993286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766197, 31.389185, 44.812408>,  <36.195934, 31.905863, 45.008327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766197, 31.389185, 44.812408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458996, 31.163813, 44.690613>,  <36.274673, 31.028589, 44.617535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458996, 31.163813, 44.690613>,  <36.766197, 31.389185, 44.812408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458996, 31.163813, 44.690613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374491, -0.009397, -0.927183,
		0.519543, -0.826109, 0.218217,
		-0.768005, -0.563431, -0.304489,
		36.228596, 30.994783, 44.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011448, 31.029560, 44.119541>,  <36.766197, 31.389185, 44.812408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011448, 31.029560, 44.119541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636261, 30.896128, 44.157360>,  <36.411148, 30.816069, 44.180050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636261, 30.896128, 44.157360>,  <37.011448, 31.029560, 44.119541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636261, 30.896128, 44.157360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016265, -0.230051, -0.973043,
		0.346339, -0.914221, 0.210355,
		-0.937969, -0.333581, 0.094545,
		36.354870, 30.796053, 44.185722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977829, 30.464836, 43.833553>,  <37.011448, 31.029560, 44.119541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977829, 30.464836, 43.833553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587856, 30.553698, 43.828499>,  <36.353874, 30.607014, 43.825466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587856, 30.553698, 43.828499>,  <36.977829, 30.464836, 43.833553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587856, 30.553698, 43.828499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020287, -0.145300, -0.989180,
		-0.221589, -0.964124, 0.146164,
		-0.974929, 0.222157, -0.012637,
		36.295376, 30.620344, 43.824707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707405, 30.023983, 43.380005>,  <36.977829, 30.464836, 43.833553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707405, 30.023983, 43.380005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457443, 30.335979, 43.393372>,  <36.307468, 30.523176, 43.401390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457443, 30.335979, 43.393372>,  <36.707405, 30.023983, 43.380005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457443, 30.335979, 43.393372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008218, 0.049370, -0.998747,
		-0.780662, -0.623842, -0.037261,
		-0.624900, 0.779989, 0.033415,
		36.269974, 30.569977, 43.403397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455410, 29.954824, 42.682438>,  <36.707405, 30.023983, 43.380005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455410, 29.954824, 42.682438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346920, 30.320559, 42.802727>,  <36.281826, 30.539999, 42.874901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346920, 30.320559, 42.802727>,  <36.455410, 29.954824, 42.682438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346920, 30.320559, 42.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161050, 0.264919, -0.950726,
		-0.948948, -0.306288, 0.075402,
		-0.271221, 0.914333, 0.300722,
		36.265553, 30.594858, 42.892944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845444, 30.033842, 42.284023>,  <36.455410, 29.954824, 42.682438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845444, 30.033842, 42.284023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994080, 30.394720, 42.371624>,  <36.083260, 30.611248, 42.424183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994080, 30.394720, 42.371624>,  <35.845444, 30.033842, 42.284023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994080, 30.394720, 42.371624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226309, 0.316801, -0.921098,
		-0.900392, 0.292707, 0.321895,
		0.371589, 0.902197, 0.219003,
		36.105556, 30.665379, 42.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457081, 30.503063, 42.030098>,  <35.845444, 30.033842, 42.284023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457081, 30.503063, 42.030098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758163, 30.757097, 42.099491>,  <35.938812, 30.909517, 42.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758163, 30.757097, 42.099491>,  <35.457081, 30.503063, 42.030098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758163, 30.757097, 42.099491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141619, 0.413530, -0.899409,
		-0.642942, 0.652424, 0.401208,
		0.752708, 0.635087, 0.173481,
		35.983974, 30.947624, 42.151535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221573, 31.173065, 41.783409>,  <35.457081, 30.503063, 42.030098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221573, 31.173065, 41.783409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620518, 31.201393, 41.789898>,  <35.859882, 31.218390, 41.793789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620518, 31.201393, 41.789898>,  <35.221573, 31.173065, 41.783409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620518, 31.201393, 41.789898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012933, 0.392716, -0.919569,
		-0.071492, 0.916929, 0.392594,
		0.997357, 0.070819, 0.016218,
		35.919724, 31.222639, 41.794762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338154, 31.789446, 41.878284>,  <35.221573, 31.173065, 41.783409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338154, 31.789446, 41.878284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644997, 31.622883, 41.683083>,  <35.829102, 31.522945, 41.565960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644997, 31.622883, 41.683083>,  <35.338154, 31.789446, 41.878284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644997, 31.622883, 41.683083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192297, 0.576470, -0.794169,
		0.612020, 0.703055, 0.362141,
		0.767108, -0.416408, -0.488006,
		35.875130, 31.497961, 41.536682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533421, 32.337154, 41.364956>,  <35.338154, 31.789446, 41.878284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533421, 32.337154, 41.364956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719574, 32.001522, 41.252274>,  <35.831268, 31.800142, 41.184666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719574, 32.001522, 41.252274>,  <35.533421, 32.337154, 41.364956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719574, 32.001522, 41.252274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098530, 0.267181, -0.958596,
		0.879605, 0.473876, 0.041668,
		0.465388, -0.839080, -0.281705,
		35.859192, 31.749798, 41.167763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041145, 32.566784, 40.862820>,  <35.533421, 32.337154, 41.364956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041145, 32.566784, 40.862820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004028, 32.172279, 40.808155>,  <35.981758, 31.935577, 40.775356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004028, 32.172279, 40.808155>,  <36.041145, 32.566784, 40.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004028, 32.172279, 40.808155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019934, 0.135388, -0.990592,
		0.995486, -0.094648, 0.007097,
		-0.092797, -0.986262, -0.136664,
		35.976189, 31.876400, 40.767155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488449, 32.420845, 40.295944>,  <36.041145, 32.566784, 40.862820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488449, 32.420845, 40.295944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261177, 32.093334, 40.328876>,  <36.124813, 31.896828, 40.348637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261177, 32.093334, 40.328876>,  <36.488449, 32.420845, 40.295944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261177, 32.093334, 40.328876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109402, -0.024000, -0.993708,
		0.815602, -0.573609, -0.075940,
		-0.568177, -0.818778, 0.082329,
		36.090725, 31.847700, 40.353577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657616, 32.035839, 39.774017>,  <36.488449, 32.420845, 40.295944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657616, 32.035839, 39.774017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289566, 31.904873, 39.859959>,  <36.068737, 31.826292, 39.911526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289566, 31.904873, 39.859959>,  <36.657616, 32.035839, 39.774017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289566, 31.904873, 39.859959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265418, 0.117968, -0.956889,
		0.287957, -0.937486, -0.195448,
		-0.920127, -0.327419, 0.214856,
		36.013527, 31.806646, 39.924416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564606, 31.467264, 39.404091>,  <36.657616, 32.035839, 39.774017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564606, 31.467264, 39.404091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201458, 31.610228, 39.491753>,  <35.983570, 31.696005, 39.544350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201458, 31.610228, 39.491753>,  <36.564606, 31.467264, 39.404091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201458, 31.610228, 39.491753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222286, 0.032868, -0.974427,
		-0.355472, -0.933370, 0.049607,
		-0.907871, 0.357408, 0.219159,
		35.929096, 31.717449, 39.557499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014694, 31.019894, 39.044350>,  <36.564606, 31.467264, 39.404091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014694, 31.019894, 39.044350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881409, 31.388140, 39.125774>,  <35.801437, 31.609087, 39.174629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881409, 31.388140, 39.125774>,  <36.014694, 31.019894, 39.044350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881409, 31.388140, 39.125774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283436, 0.108108, -0.952878,
		-0.899240, -0.375209, 0.224912,
		-0.333214, 0.920614, 0.203563,
		35.781445, 31.664324, 39.186844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336849, 31.039923, 38.697971>,  <36.014694, 31.019894, 39.044350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336849, 31.039923, 38.697971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407173, 31.428024, 38.764545>,  <35.449368, 31.660885, 38.804489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407173, 31.428024, 38.764545>,  <35.336849, 31.039923, 38.697971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407173, 31.428024, 38.764545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127822, 0.190137, -0.973401,
		-0.976090, 0.149862, 0.157448,
		0.175812, 0.970252, 0.166435,
		35.459915, 31.719099, 38.814476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725082, 31.311207, 38.479244>,  <35.336849, 31.039923, 38.697971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725082, 31.311207, 38.479244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006027, 31.595774, 38.469666>,  <35.174595, 31.766514, 38.463921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006027, 31.595774, 38.469666>,  <34.725082, 31.311207, 38.479244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006027, 31.595774, 38.469666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270105, 0.235245, -0.933650,
		-0.658582, 0.662228, 0.357384,
		0.702363, 0.711416, -0.023943,
		35.216736, 31.809198, 38.462482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535286, 31.731216, 37.996681>,  <34.725082, 31.311207, 38.479244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535286, 31.731216, 37.996681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903660, 31.884077, 38.027252>,  <35.124683, 31.975794, 38.045593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903660, 31.884077, 38.027252>,  <34.535286, 31.731216, 37.996681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903660, 31.884077, 38.027252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057337, 0.326830, -0.943342,
		-0.385476, 0.864374, 0.322901,
		0.920935, 0.382150, 0.076424,
		35.179939, 31.998722, 38.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536015, 32.543629, 37.704659>,  <34.535286, 31.731216, 37.996681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536015, 32.543629, 37.704659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910133, 32.402115, 37.701843>,  <35.134605, 32.317207, 37.700153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910133, 32.402115, 37.701843>,  <34.536015, 32.543629, 37.704659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910133, 32.402115, 37.701843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059708, 0.177402, -0.982325,
		0.348778, 0.918350, 0.187048,
		0.935301, -0.353782, -0.007041,
		35.190723, 32.295979, 37.699730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976780, 33.103413, 37.539776>,  <34.536015, 32.543629, 37.704659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976780, 33.103413, 37.539776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149338, 32.760941, 37.426037>,  <35.252872, 32.555458, 37.357792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149338, 32.760941, 37.426037>,  <34.976780, 33.103413, 37.539776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149338, 32.760941, 37.426037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174477, 0.388415, -0.904816,
		0.885130, 0.340722, 0.316944,
		0.431396, -0.856179, -0.284350,
		35.278755, 32.504086, 37.340733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658363, 33.318069, 37.282623>,  <34.976780, 33.103413, 37.539776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658363, 33.318069, 37.282623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558582, 32.958378, 37.138870>,  <35.498714, 32.742561, 37.052620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558582, 32.958378, 37.138870>,  <35.658363, 33.318069, 37.282623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558582, 32.958378, 37.138870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228565, 0.305957, -0.924201,
		0.941027, -0.312687, 0.129211,
		-0.249452, -0.899231, -0.359383,
		35.483746, 32.688610, 37.031055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401901, 33.722683, 37.304523>,  <35.658363, 33.318069, 37.282623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401901, 33.722683, 37.304523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394386, 34.017120, 37.033875>,  <36.389877, 34.193783, 36.871487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394386, 34.017120, 37.033875>,  <36.401901, 33.722683, 37.304523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394386, 34.017120, 37.033875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741662, 0.464099, 0.484303,
		0.670510, -0.492727, -0.554649,
		-0.018783, 0.736092, -0.676621,
		36.388752, 34.237949, 36.830887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761585, 33.218410, 36.887184>,  <36.401901, 33.722683, 37.304523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761585, 33.218410, 36.887184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080811, 33.400890, 36.729713>,  <37.272346, 33.510380, 36.635231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080811, 33.400890, 36.729713>,  <36.761585, 33.218410, 36.887184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080811, 33.400890, 36.729713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590015, -0.458889, 0.664307,
		0.122402, -0.762432, -0.635385,
		0.798061, 0.456199, -0.393677,
		37.320229, 33.537750, 36.611610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325478, 32.727337, 36.769505>,  <36.761585, 33.218410, 36.887184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325478, 32.727337, 36.769505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475925, 33.092278, 36.834187>,  <37.566193, 33.311241, 36.872997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475925, 33.092278, 36.834187>,  <37.325478, 32.727337, 36.769505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475925, 33.092278, 36.834187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519275, -0.352092, 0.778707,
		0.767392, -0.208913, -0.606189,
		0.376116, 0.912353, 0.161709,
		37.588760, 33.365982, 36.882698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104141, 32.628033, 36.833462>,  <37.325478, 32.727337, 36.769505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104141, 32.628033, 36.833462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955612, 32.935223, 37.042202>,  <37.866497, 33.119537, 37.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955612, 32.935223, 37.042202>,  <38.104141, 32.628033, 36.833462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955612, 32.935223, 37.042202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446802, -0.344897, 0.825478,
		0.813934, 0.539683, -0.215067,
		-0.371320, 0.767977, 0.521855,
		37.844215, 33.165615, 37.198757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599480, 32.656120, 37.372787>,  <38.104141, 32.628033, 36.833462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599480, 32.656120, 37.372787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309505, 32.889580, 37.519112>,  <38.135521, 33.029655, 37.606907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309505, 32.889580, 37.519112>,  <38.599480, 32.656120, 37.372787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309505, 32.889580, 37.519112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356233, -0.136860, 0.924320,
		0.589545, 0.800388, -0.108701,
		-0.724938, 0.583651, 0.365810,
		38.092026, 33.064674, 37.628853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942200, 33.142262, 37.910095>,  <38.599480, 32.656120, 37.372787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942200, 33.142262, 37.910095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548805, 33.127110, 37.980885>,  <38.312767, 33.118019, 38.023357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548805, 33.127110, 37.980885>,  <38.942200, 33.142262, 37.910095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548805, 33.127110, 37.980885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180877, -0.239420, 0.953919,
		0.006237, 0.970177, 0.242318,
		-0.983486, -0.037880, 0.176976,
		38.253761, 33.115746, 38.033978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837208, 33.546944, 38.528324>,  <38.942200, 33.142262, 37.910095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837208, 33.546944, 38.528324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530067, 33.290726, 38.524242>,  <38.345783, 33.136993, 38.521793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530067, 33.290726, 38.524242>,  <38.837208, 33.546944, 38.528324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530067, 33.290726, 38.524242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091291, -0.125180, 0.987925,
		-0.634092, 0.757646, 0.154596,
		-0.767849, -0.640549, -0.010209,
		38.299713, 33.098560, 38.521179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333149, 33.792377, 38.980263>,  <38.837208, 33.546944, 38.528324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333149, 33.792377, 38.980263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296818, 33.395622, 38.944675>,  <38.275021, 33.157570, 38.923321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296818, 33.395622, 38.944675>,  <38.333149, 33.792377, 38.980263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296818, 33.395622, 38.944675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053977, -0.084308, 0.994977,
		-0.994403, 0.095170, -0.045882,
		-0.090824, -0.991884, -0.088973,
		38.269569, 33.098057, 38.917984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941948, 33.597878, 39.593891>,  <38.333149, 33.792377, 38.980263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941948, 33.597878, 39.593891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061928, 33.239101, 39.463951>,  <38.133915, 33.023834, 39.385986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061928, 33.239101, 39.463951>,  <37.941948, 33.597878, 39.593891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061928, 33.239101, 39.463951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055929, -0.323412, 0.944604,
		-0.952314, -0.301502, -0.046842,
		0.299949, -0.896940, -0.324853,
		38.151913, 32.970020, 39.366497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490421, 33.078953, 39.854725>,  <37.941948, 33.597878, 39.593891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490421, 33.078953, 39.854725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843578, 32.911308, 39.770012>,  <38.055473, 32.810722, 39.719185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843578, 32.911308, 39.770012>,  <37.490421, 33.078953, 39.854725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843578, 32.911308, 39.770012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041275, -0.379996, 0.924067,
		-0.467761, -0.824592, -0.318196,
		0.882891, -0.419109, -0.211782,
		38.108444, 32.785576, 39.706478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455833, 32.540970, 40.346889>,  <37.490421, 33.078953, 39.854725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455833, 32.540970, 40.346889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834309, 32.572102, 40.221245>,  <38.061394, 32.590778, 40.145859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834309, 32.572102, 40.221245>,  <37.455833, 32.540970, 40.346889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834309, 32.572102, 40.221245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323149, -0.175278, 0.929975,
		0.017321, -0.981438, -0.190996,
		0.946190, 0.077828, -0.314114,
		38.118164, 32.595451, 40.127010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846924, 31.982285, 40.802395>,  <37.455833, 32.540970, 40.346889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846924, 31.982285, 40.802395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140079, 32.217068, 40.664783>,  <38.315971, 32.357937, 40.582218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140079, 32.217068, 40.664783>,  <37.846924, 31.982285, 40.802395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140079, 32.217068, 40.664783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569358, -0.252325, 0.782409,
		0.372433, -0.769294, -0.519115,
		0.732888, 0.586957, -0.344029,
		38.359947, 32.393154, 40.561573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372482, 31.586729, 40.872662>,  <37.846924, 31.982285, 40.802395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372482, 31.586729, 40.872662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531143, 31.953911, 40.870651>,  <38.626339, 32.174221, 40.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531143, 31.953911, 40.870651>,  <38.372482, 31.586729, 40.872662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531143, 31.953911, 40.870651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302201, -0.125411, 0.944959,
		0.866798, -0.376342, -0.327151,
		0.396656, 0.917954, -0.005025,
		38.650139, 32.229298, 40.869144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027134, 31.542210, 41.144505>,  <38.372482, 31.586729, 40.872662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027134, 31.542210, 41.144505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948441, 31.930893, 41.196781>,  <38.901222, 32.164104, 41.228146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948441, 31.930893, 41.196781>,  <39.027134, 31.542210, 41.144505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948441, 31.930893, 41.196781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609449, 0.016785, 0.792648,
		0.768028, 0.235593, -0.595508,
		-0.196738, 0.971707, 0.130690,
		38.889420, 32.222404, 41.235989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654449, 31.809795, 41.296322>,  <39.027134, 31.542210, 41.144505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654449, 31.809795, 41.296322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429405, 32.112690, 41.429031>,  <39.294380, 32.294426, 41.508656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429405, 32.112690, 41.429031>,  <39.654449, 31.809795, 41.296322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429405, 32.112690, 41.429031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490956, -0.016855, 0.871021,
		0.665159, 0.652926, -0.362286,
		-0.562606, 0.757234, 0.331769,
		39.260624, 32.339859, 41.528561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139606, 32.203453, 41.846817>,  <39.654449, 31.809795, 41.296322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139606, 32.203453, 41.846817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756836, 32.310024, 41.892971>,  <39.527176, 32.373966, 41.920662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756836, 32.310024, 41.892971>,  <40.139606, 32.203453, 41.846817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756836, 32.310024, 41.892971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076206, -0.153001, 0.985284,
		0.280159, 0.951635, 0.126107,
		-0.956924, 0.266426, 0.115385,
		39.469757, 32.389954, 41.927586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091187, 32.554878, 42.528111>,  <40.139606, 32.203453, 41.846817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091187, 32.554878, 42.528111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710728, 32.462921, 42.445675>,  <39.482452, 32.407745, 42.396214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710728, 32.462921, 42.445675>,  <40.091187, 32.554878, 42.528111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710728, 32.462921, 42.445675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204083, -0.032737, 0.978406,
		-0.231678, 0.972664, -0.015780,
		-0.951144, -0.229895, -0.206089,
		39.425385, 32.393951, 42.383850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762093, 33.011669, 42.894848>,  <40.091187, 32.554878, 42.528111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762093, 33.011669, 42.894848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490459, 32.724365, 42.834251>,  <39.327480, 32.551983, 42.797894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490459, 32.724365, 42.834251>,  <39.762093, 33.011669, 42.894848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490459, 32.724365, 42.834251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147771, -0.068384, 0.986655,
		-0.719038, 0.692402, -0.059700,
		-0.679079, -0.718264, -0.151487,
		39.286736, 32.508884, 42.788807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137054, 33.197701, 43.134930>,  <39.762093, 33.011669, 42.894848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137054, 33.197701, 43.134930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100029, 32.799419, 43.135429>,  <39.077816, 32.560452, 43.135731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100029, 32.799419, 43.135429>,  <39.137054, 33.197701, 43.134930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100029, 32.799419, 43.135429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275061, 0.026776, 0.961054,
		-0.956961, 0.088612, -0.276358,
		-0.092561, -0.995706, 0.001250,
		39.072262, 32.500706, 43.135803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542210, 33.053959, 43.571709>,  <39.137054, 33.197701, 43.134930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542210, 33.053959, 43.571709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738094, 32.705349, 43.561745>,  <38.855625, 32.496181, 43.555767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738094, 32.705349, 43.561745>,  <38.542210, 33.053959, 43.571709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738094, 32.705349, 43.561745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289105, -0.189268, 0.938401,
		-0.822557, -0.452345, -0.344650,
		0.489712, -0.871528, -0.024908,
		38.885010, 32.443890, 43.554272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068489, 32.534180, 43.679958>,  <38.542210, 33.053959, 43.571709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068489, 32.534180, 43.679958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431988, 32.413448, 43.795254>,  <38.650085, 32.341011, 43.864429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431988, 32.413448, 43.795254>,  <38.068489, 32.534180, 43.679958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431988, 32.413448, 43.795254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343644, -0.149234, 0.927166,
		-0.236826, -0.941611, -0.239336,
		0.908747, -0.301823, 0.288237,
		38.704613, 32.322903, 43.881725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978947, 31.911963, 44.062199>,  <38.068489, 32.534180, 43.679958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978947, 31.911963, 44.062199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343174, 32.049961, 44.153267>,  <38.561710, 32.132759, 44.207909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343174, 32.049961, 44.153267>,  <37.978947, 31.911963, 44.062199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343174, 32.049961, 44.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152260, -0.232118, 0.960697,
		0.384285, -0.909450, -0.158831,
		0.910573, 0.344997, 0.227672,
		38.616344, 32.153461, 44.221569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229252, 31.425409, 44.461903>,  <37.978947, 31.911963, 44.062199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229252, 31.425409, 44.461903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452141, 31.751177, 44.526680>,  <38.585876, 31.946638, 44.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452141, 31.751177, 44.526680>,  <38.229252, 31.425409, 44.461903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452141, 31.751177, 44.526680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135948, -0.102913, 0.985356,
		0.819158, -0.571079, 0.053373,
		0.557224, 0.814418, 0.161939,
		38.619308, 31.995502, 44.575260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547310, 31.219107, 45.078632>,  <38.229252, 31.425409, 44.461903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547310, 31.219107, 45.078632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557594, 31.615425, 45.025467>,  <38.563766, 31.853216, 44.993568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557594, 31.615425, 45.025467>,  <38.547310, 31.219107, 45.078632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557594, 31.615425, 45.025467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140068, 0.135213, 0.980866,
		0.989808, -0.006602, 0.142255,
		0.025711, 0.990794, -0.132910,
		38.565308, 31.912664, 44.985596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044693, 31.389357, 45.556404>,  <38.547310, 31.219107, 45.078632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044693, 31.389357, 45.556404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821739, 31.707012, 45.459522>,  <38.687965, 31.897606, 45.401394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821739, 31.707012, 45.459522>,  <39.044693, 31.389357, 45.556404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821739, 31.707012, 45.459522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235387, 0.128602, 0.963356,
		0.796187, 0.593973, 0.115250,
		-0.557386, 0.794140, -0.242205,
		38.654522, 31.945253, 45.386860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106636, 31.773836, 46.114353>,  <39.044693, 31.389357, 45.556404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106636, 31.773836, 46.114353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787720, 31.933062, 45.932861>,  <38.596371, 32.028599, 45.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787720, 31.933062, 45.932861>,  <39.106636, 31.773836, 46.114353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787720, 31.933062, 45.932861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409146, 0.196239, 0.891117,
		0.443762, 0.896122, 0.006406,
		-0.797292, 0.398065, -0.453728,
		38.548531, 32.052483, 45.796741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968136, 32.486664, 46.400391>,  <39.106636, 31.773836, 46.114353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968136, 32.486664, 46.400391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611069, 32.373581, 46.259979>,  <38.396828, 32.305729, 46.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611069, 32.373581, 46.259979>,  <38.968136, 32.486664, 46.400391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611069, 32.373581, 46.259979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429985, 0.300655, 0.851304,
		-0.135134, 0.910868, -0.389946,
		-0.892665, -0.282711, -0.351031,
		38.343269, 32.288769, 46.154671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600189, 33.013111, 46.360012>,  <38.968136, 32.486664, 46.400391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600189, 33.013111, 46.360012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357738, 32.700916, 46.421265>,  <38.212269, 32.513599, 46.458015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357738, 32.700916, 46.421265>,  <38.600189, 33.013111, 46.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357738, 32.700916, 46.421265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279680, 0.389387, 0.877586,
		-0.744571, 0.489102, -0.454306,
		-0.606130, -0.780485, 0.153134,
		38.175900, 32.466770, 46.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974602, 33.248859, 46.688160>,  <38.600189, 33.013111, 46.360012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974602, 33.248859, 46.688160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940819, 32.855202, 46.750561>,  <37.920551, 32.619007, 46.788002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940819, 32.855202, 46.750561>,  <37.974602, 33.248859, 46.688160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940819, 32.855202, 46.750561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261827, 0.172977, 0.949487,
		-0.961413, 0.039343, -0.272283,
		-0.084454, -0.984140, 0.156002,
		37.915482, 32.559959, 46.797359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341194, 33.184639, 47.094479>,  <37.974602, 33.248859, 46.688160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341194, 33.184639, 47.094479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541504, 32.844131, 47.157185>,  <37.661690, 32.639828, 47.194809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541504, 32.844131, 47.157185>,  <37.341194, 33.184639, 47.094479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541504, 32.844131, 47.157185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175568, 0.077449, 0.981416,
		-0.847587, -0.518987, -0.110671,
		0.500771, -0.851266, 0.156762,
		37.691734, 32.588753, 47.204212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991234, 32.764427, 47.637932>,  <37.341194, 33.184639, 47.094479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991234, 32.764427, 47.637932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371922, 32.642296, 47.625225>,  <37.600334, 32.569019, 47.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371922, 32.642296, 47.625225>,  <36.991234, 32.764427, 47.637932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371922, 32.642296, 47.625225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010052, -0.072434, 0.997323,
		-0.306809, -0.949490, -0.065867,
		0.951719, -0.305325, -0.031767,
		37.657436, 32.550697, 47.615696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008751, 32.229439, 48.083378>,  <36.991234, 32.764427, 47.637932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008751, 32.229439, 48.083378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381641, 32.372669, 48.062466>,  <37.605377, 32.458607, 48.049919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381641, 32.372669, 48.062466>,  <37.008751, 32.229439, 48.083378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381641, 32.372669, 48.062466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058818, -0.007373, 0.998241,
		0.357058, -0.933664, -0.027935,
		0.932229, 0.358074, -0.052284,
		37.661308, 32.480091, 48.046780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507858, 31.755587, 48.285027>,  <37.008751, 32.229439, 48.083378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507858, 31.755587, 48.285027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675488, 32.110573, 48.361744>,  <37.776066, 32.323563, 48.407776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675488, 32.110573, 48.361744>,  <37.507858, 31.755587, 48.285027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675488, 32.110573, 48.361744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080983, -0.246933, 0.965643,
		0.904335, -0.389141, -0.175352,
		0.419071, 0.887465, 0.191796,
		37.801208, 32.376812, 48.419281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010876, 31.700228, 48.915707>,  <37.507858, 31.755587, 48.285027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010876, 31.700228, 48.915707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013275, 32.099049, 48.885117>,  <38.014717, 32.338341, 48.866764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013275, 32.099049, 48.885117>,  <38.010876, 31.700228, 48.915707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013275, 32.099049, 48.885117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183794, 0.074075, 0.980170,
		0.982947, -0.019939, -0.182808,
		0.006002, 0.997054, -0.076476,
		38.015076, 32.398163, 48.862175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590157, 31.854309, 49.256943>,  <38.010876, 31.700228, 48.915707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590157, 31.854309, 49.256943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336246, 32.163376, 49.254299>,  <38.183899, 32.348816, 49.252712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336246, 32.163376, 49.254299>,  <38.590157, 31.854309, 49.256943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336246, 32.163376, 49.254299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045520, 0.045926, 0.997907,
		0.771354, 0.633147, -0.064324,
		-0.634776, 0.772668, -0.006604,
		38.145813, 32.395176, 49.252319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852520, 32.278664, 49.656013>,  <38.590157, 31.854309, 49.256943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852520, 32.278664, 49.656013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486015, 32.438808, 49.650730>,  <38.266113, 32.534897, 49.647560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486015, 32.438808, 49.650730>,  <38.852520, 32.278664, 49.656013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486015, 32.438808, 49.650730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000642, 0.034436, 0.999407,
		0.400579, 0.915710, -0.031810,
		-0.916262, 0.400362, -0.013207,
		38.211136, 32.558918, 49.646767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860172, 32.884113, 50.003155>,  <38.852520, 32.278664, 49.656013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860172, 32.884113, 50.003155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469196, 32.799725, 50.007004>,  <38.234612, 32.749092, 50.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469196, 32.799725, 50.007004>,  <38.860172, 32.884113, 50.003155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469196, 32.799725, 50.007004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002872, 0.032281, 0.999475,
		-0.211174, 0.976959, -0.030947,
		-0.977444, -0.210974, 0.009623,
		38.175964, 32.736431, 50.009892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646782, 33.235752, 50.481327>,  <38.860172, 32.884113, 50.003155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646782, 33.235752, 50.481327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349625, 32.969353, 50.454346>,  <38.171329, 32.809513, 50.438156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349625, 32.969353, 50.454346>,  <38.646782, 33.235752, 50.481327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349625, 32.969353, 50.454346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065579, -0.027875, 0.997458,
		-0.666185, 0.745432, -0.022968,
		-0.742897, -0.665998, -0.067455,
		38.126755, 32.769554, 50.434109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161949, 33.472034, 50.862911>,  <38.646782, 33.235752, 50.481327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161949, 33.472034, 50.862911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087959, 33.079266, 50.846874>,  <38.043568, 32.843605, 50.837250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087959, 33.079266, 50.846874>,  <38.161949, 33.472034, 50.862911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087959, 33.079266, 50.846874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173589, -0.007513, 0.984789,
		-0.967291, 0.189118, -0.169062,
		-0.184972, -0.981925, -0.040096,
		38.032467, 32.784687, 50.834846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782974, 33.931156, 51.207161>,  <38.161949, 33.472034, 50.862911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782974, 33.931156, 51.207161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707561, 34.306992, 51.321442>,  <38.662312, 34.532494, 51.390011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707561, 34.306992, 51.321442>,  <38.782974, 33.931156, 51.207161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707561, 34.306992, 51.321442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173884, 0.254382, -0.951343,
		-0.966550, -0.229041, 0.115420,
		-0.188536, 0.939590, 0.285699,
		38.651001, 34.588867, 51.407150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120911, 34.258144, 50.947998>,  <38.782974, 33.931156, 51.207161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120911, 34.258144, 50.947998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389828, 34.548870, 51.004234>,  <38.551178, 34.723305, 51.037975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389828, 34.548870, 51.004234>,  <38.120911, 34.258144, 50.947998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389828, 34.548870, 51.004234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132570, 0.305039, -0.943067,
		-0.728322, 0.615376, 0.301429,
		0.672289, 0.726817, 0.140586,
		38.591515, 34.766914, 51.046410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013336, 34.683834, 50.391956>,  <38.120911, 34.258144, 50.947998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013336, 34.683834, 50.391956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391094, 34.759007, 50.499878>,  <38.617748, 34.804111, 50.564632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391094, 34.759007, 50.499878>,  <38.013336, 34.683834, 50.391956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391094, 34.759007, 50.499878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184110, 0.377623, -0.907472,
		-0.272430, 0.906687, 0.322025,
		0.944397, 0.187934, 0.269806,
		38.674412, 34.815388, 50.580818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085320, 35.268684, 50.050663>,  <38.013336, 34.683834, 50.391956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085320, 35.268684, 50.050663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456421, 35.151405, 50.143013>,  <38.679081, 35.081036, 50.198421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456421, 35.151405, 50.143013>,  <38.085320, 35.268684, 50.050663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456421, 35.151405, 50.143013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262362, 0.072470, -0.962244,
		0.265400, 0.953300, 0.144160,
		0.927755, -0.293202, 0.230876,
		38.734749, 35.063446, 50.212276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561665, 35.777863, 49.716087>,  <38.085320, 35.268684, 50.050663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561665, 35.777863, 49.716087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779411, 35.448788, 49.781624>,  <38.910061, 35.251343, 49.820946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779411, 35.448788, 49.781624>,  <38.561665, 35.777863, 49.716087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779411, 35.448788, 49.781624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304796, 0.012016, -0.952342,
		0.781514, 0.568362, 0.257294,
		0.544367, -0.822691, 0.163844,
		38.942722, 35.201981, 49.830776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208420, 35.932312, 49.418530>,  <38.561665, 35.777863, 49.716087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208420, 35.932312, 49.418530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148716, 35.537796, 49.446686>,  <39.112892, 35.301086, 49.463581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148716, 35.537796, 49.446686>,  <39.208420, 35.932312, 49.418530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148716, 35.537796, 49.446686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227765, -0.103570, -0.968192,
		0.962208, -0.128484, 0.240101,
		-0.149264, -0.986289, 0.070392,
		39.103935, 35.241909, 49.467804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661793, 35.663120, 48.975830>,  <39.208420, 35.932312, 49.418530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661793, 35.663120, 48.975830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404903, 35.363720, 49.041916>,  <39.250771, 35.184078, 49.081566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404903, 35.363720, 49.041916>,  <39.661793, 35.663120, 48.975830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404903, 35.363720, 49.041916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001504, -0.214307, -0.976765,
		0.766520, -0.627546, 0.136506,
		-0.642219, -0.748504, 0.165214,
		39.212238, 35.139168, 49.091480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058937, 35.078987, 48.779903>,  <39.661793, 35.663120, 48.975830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058937, 35.078987, 48.779903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679050, 34.955902, 48.756756>,  <39.451118, 34.882050, 48.742867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679050, 34.955902, 48.756756>,  <40.058937, 35.078987, 48.779903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679050, 34.955902, 48.756756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157693, -0.310387, -0.937440,
		0.270503, -0.899428, 0.343304,
		-0.949716, -0.307717, -0.057873,
		39.394135, 34.863586, 48.739395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075329, 34.440487, 48.486740>,  <40.058937, 35.078987, 48.779903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075329, 34.440487, 48.486740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705410, 34.569778, 48.406471>,  <39.483459, 34.647354, 48.358311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705410, 34.569778, 48.406471>,  <40.075329, 34.440487, 48.486740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705410, 34.569778, 48.406471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141410, -0.197641, -0.970021,
		-0.353198, -0.925453, 0.137071,
		-0.924800, 0.323226, -0.200674,
		39.427971, 34.666748, 48.346268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812927, 34.024517, 48.082951>,  <40.075329, 34.440487, 48.486740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812927, 34.024517, 48.082951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575199, 34.336994, 48.006508>,  <39.432560, 34.524479, 47.960640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575199, 34.336994, 48.006508>,  <39.812927, 34.024517, 48.082951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575199, 34.336994, 48.006508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167889, -0.111882, -0.979437,
		-0.786507, -0.614187, -0.064659,
		-0.594323, 0.781189, -0.191111,
		39.396904, 34.571350, 47.949173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416042, 33.808289, 47.521355>,  <39.812927, 34.024517, 48.082951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416042, 33.808289, 47.521355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372761, 34.205391, 47.542282>,  <39.346794, 34.443653, 47.554836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372761, 34.205391, 47.542282>,  <39.416042, 33.808289, 47.521355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372761, 34.205391, 47.542282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028773, 0.055729, -0.998031,
		-0.993713, -0.106483, -0.034594,
		-0.108202, 0.992752, 0.052315,
		39.340302, 34.503216, 47.557976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818546, 33.994152, 47.300625>,  <39.416042, 33.808289, 47.521355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818546, 33.994152, 47.300625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087101, 34.285088, 47.243755>,  <39.248234, 34.459648, 47.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087101, 34.285088, 47.243755>,  <38.818546, 33.994152, 47.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087101, 34.285088, 47.243755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248715, 0.040418, -0.967733,
		-0.698124, 0.685087, 0.208037,
		0.671390, 0.727339, -0.142175,
		39.288517, 34.503288, 47.201103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494614, 34.422024, 46.862682>,  <38.818546, 33.994152, 47.300625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494614, 34.422024, 46.862682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860455, 34.581711, 46.837002>,  <39.079960, 34.677525, 46.821594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860455, 34.581711, 46.837002>,  <38.494614, 34.422024, 46.862682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860455, 34.581711, 46.837002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186627, 0.275921, -0.942888,
		-0.358705, 0.874352, 0.326864,
		0.914604, 0.399220, -0.064203,
		39.134834, 34.701477, 46.817741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427349, 35.213299, 46.688560>,  <38.494614, 34.422024, 46.862682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427349, 35.213299, 46.688560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779968, 35.060818, 46.577160>,  <38.991539, 34.969330, 46.510319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779968, 35.060818, 46.577160>,  <38.427349, 35.213299, 46.688560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779968, 35.060818, 46.577160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133888, 0.363818, -0.921798,
		0.452718, 0.849893, 0.269682,
		0.881544, -0.381207, -0.278498,
		39.044430, 34.946457, 46.493610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838985, 35.727512, 46.233250>,  <38.427349, 35.213299, 46.688560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838985, 35.727512, 46.233250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061283, 35.418076, 46.111462>,  <39.194660, 35.232414, 46.038391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061283, 35.418076, 46.111462>,  <38.838985, 35.727512, 46.233250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061283, 35.418076, 46.111462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030183, 0.347213, -0.937300,
		0.830805, 0.530089, 0.169612,
		0.555744, -0.773595, -0.304466,
		39.228004, 35.185997, 46.020123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210735, 36.015873, 45.727432>,  <38.838985, 35.727512, 46.233250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210735, 36.015873, 45.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278408, 35.628258, 45.655499>,  <39.319012, 35.395687, 45.612339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278408, 35.628258, 45.655499>,  <39.210735, 36.015873, 45.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278408, 35.628258, 45.655499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193691, 0.146219, -0.970105,
		0.966365, 0.198961, -0.162956,
		0.169185, -0.969038, -0.179837,
		39.329163, 35.337547, 45.601547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700901, 35.905247, 45.237709>,  <39.210735, 36.015873, 45.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700901, 35.905247, 45.237709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522877, 35.548771, 45.202595>,  <39.416061, 35.334885, 45.181526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522877, 35.548771, 45.202595>,  <39.700901, 35.905247, 45.237709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522877, 35.548771, 45.202595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146083, 0.024463, -0.988970,
		0.883507, -0.452971, 0.119300,
		-0.445056, -0.891190, -0.087785,
		39.389359, 35.281414, 45.176258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161827, 35.455673, 44.757862>,  <39.700901, 35.905247, 45.237709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161827, 35.455673, 44.757862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789185, 35.312447, 44.782871>,  <39.565601, 35.226513, 44.797874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789185, 35.312447, 44.782871>,  <40.161827, 35.455673, 44.757862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789185, 35.312447, 44.782871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020298, -0.222981, -0.974611,
		0.362913, -0.906681, 0.214998,
		-0.931602, -0.358063, 0.062518,
		39.509705, 35.205029, 44.801628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145805, 34.862995, 44.344471>,  <40.161827, 35.455673, 44.757862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145805, 34.862995, 44.344471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752583, 34.933002, 44.366261>,  <39.516647, 34.975006, 44.379333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752583, 34.933002, 44.366261>,  <40.145805, 34.862995, 44.344471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752583, 34.933002, 44.366261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092746, -0.218580, -0.971402,
		-0.158105, -0.959996, 0.231109,
		-0.983057, 0.175018, 0.054477,
		39.457664, 34.985508, 44.382603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823910, 34.338623, 43.942310>,  <40.145805, 34.862995, 44.344471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823910, 34.338623, 43.942310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575329, 34.651928, 43.935493>,  <39.426178, 34.839912, 43.931404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575329, 34.651928, 43.935493>,  <39.823910, 34.338623, 43.942310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575329, 34.651928, 43.935493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135736, -0.129065, -0.982302,
		-0.771603, -0.608143, 0.186526,
		-0.621454, 0.783265, -0.017040,
		39.388893, 34.886906, 43.930382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357674, 34.116821, 43.427952>,  <39.823910, 34.338623, 43.942310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357674, 34.116821, 43.427952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269054, 34.502201, 43.488197>,  <39.215885, 34.733429, 43.524345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269054, 34.502201, 43.488197>,  <39.357674, 34.116821, 43.427952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269054, 34.502201, 43.488197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100721, 0.131015, -0.986251,
		-0.969935, -0.233668, 0.068014,
		-0.221544, 0.963449, 0.150611,
		39.202591, 34.791237, 43.533382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804951, 34.250542, 42.991413>,  <39.357674, 34.116821, 43.427952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804951, 34.250542, 42.991413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961105, 34.611851, 43.062634>,  <39.054798, 34.828636, 43.105366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961105, 34.611851, 43.062634>,  <38.804951, 34.250542, 42.991413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961105, 34.611851, 43.062634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175997, 0.263049, -0.948594,
		-0.903671, 0.338984, 0.261664,
		0.390389, 0.903269, 0.178049,
		39.078220, 34.882832, 43.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333427, 34.832325, 42.790264>,  <38.804951, 34.250542, 42.991413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333427, 34.832325, 42.790264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702251, 34.986889, 42.781349>,  <38.923546, 35.079628, 42.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702251, 34.986889, 42.781349>,  <38.333427, 34.832325, 42.790264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702251, 34.986889, 42.781349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145668, 0.293109, -0.944917,
		-0.358591, 0.874515, 0.326551,
		0.922059, 0.386407, -0.022283,
		38.978870, 35.102810, 42.774666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231152, 35.459068, 42.452240>,  <38.333427, 34.832325, 42.790264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231152, 35.459068, 42.452240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621899, 35.383450, 42.412262>,  <38.856346, 35.338078, 42.388275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621899, 35.383450, 42.412262>,  <38.231152, 35.459068, 42.452240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621899, 35.383450, 42.412262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067520, 0.170810, -0.982988,
		0.202905, 0.966998, 0.154094,
		0.976868, -0.189049, -0.099950,
		38.914959, 35.326736, 42.382278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473072, 35.839127, 42.006737>,  <38.231152, 35.459068, 42.452240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473072, 35.839127, 42.006737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783081, 35.589966, 41.964161>,  <38.969086, 35.440468, 41.938618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783081, 35.589966, 41.964161>,  <38.473072, 35.839127, 42.006737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783081, 35.589966, 41.964161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044479, 0.114241, -0.992457,
		0.630363, 0.773913, 0.060834,
		0.775025, -0.622902, -0.106436,
		39.015587, 35.403095, 41.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783272, 36.069595, 41.397472>,  <38.473072, 35.839127, 42.006737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783272, 36.069595, 41.397472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954872, 35.711845, 41.448143>,  <39.057835, 35.497196, 41.478546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954872, 35.711845, 41.448143>,  <38.783272, 36.069595, 41.397472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954872, 35.711845, 41.448143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221704, -0.031691, -0.974599,
		0.875672, 0.446192, 0.184691,
		0.429005, -0.894376, 0.126674,
		39.083572, 35.443531, 41.486145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454273, 36.070190, 41.133152>,  <38.783272, 36.069595, 41.397472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454273, 36.070190, 41.133152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355255, 35.683666, 41.161327>,  <39.295845, 35.451752, 41.178234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355255, 35.683666, 41.161327>,  <39.454273, 36.070190, 41.133152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355255, 35.683666, 41.161327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267705, -0.138086, -0.953555,
		0.931159, -0.217187, 0.292869,
		-0.247541, -0.966314, 0.070438,
		39.280994, 35.393772, 41.182457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170704, 35.787296, 40.953339>,  <39.454273, 36.070190, 41.133152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170704, 35.787296, 40.953339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911743, 35.495071, 40.866486>,  <39.756367, 35.319736, 40.814373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911743, 35.495071, 40.866486>,  <40.170704, 35.787296, 40.953339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911743, 35.495071, 40.866486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283322, 0.033786, -0.958430,
		0.707531, -0.682007, 0.185112,
		-0.647402, -0.730565, -0.217132,
		39.717522, 35.275902, 40.801346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441952, 35.140137, 40.587635>,  <40.170704, 35.787296, 40.953339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441952, 35.140137, 40.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053005, 35.139271, 40.494255>,  <39.819637, 35.138752, 40.438229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053005, 35.139271, 40.494255>,  <40.441952, 35.140137, 40.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053005, 35.139271, 40.494255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233288, -0.047238, -0.971260,
		-0.008926, -0.998881, 0.046437,
		-0.972366, -0.002164, -0.233448,
		39.761295, 35.138622, 40.424221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366131, 34.618500, 39.972763>,  <40.441952, 35.140137, 40.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366131, 34.618500, 39.972763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038567, 34.847931, 39.980667>,  <39.842030, 34.985592, 39.985409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038567, 34.847931, 39.980667>,  <40.366131, 34.618500, 39.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038567, 34.847931, 39.980667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065979, 0.128283, -0.989540,
		-0.570117, -0.809041, -0.142896,
		-0.818910, 0.573582, 0.019756,
		39.792892, 35.020004, 39.986595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931416, 34.457859, 39.487858>,  <40.366131, 34.618500, 39.972763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931416, 34.457859, 39.487858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784588, 34.824913, 39.548794>,  <39.696491, 35.045143, 39.585358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784588, 34.824913, 39.548794>,  <39.931416, 34.457859, 39.487858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784588, 34.824913, 39.548794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179869, 0.230707, -0.956254,
		-0.912636, -0.323613, -0.249740,
		-0.367073, 0.917632, 0.152343,
		39.674465, 35.100204, 39.594498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441597, 34.452011, 38.983616>,  <39.931416, 34.457859, 39.487858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441597, 34.452011, 38.983616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526615, 34.832699, 39.072212>,  <39.577625, 35.061111, 39.125370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526615, 34.832699, 39.072212>,  <39.441597, 34.452011, 38.983616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526615, 34.832699, 39.072212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077784, 0.242431, -0.967046,
		-0.974050, 0.188313, 0.125556,
		0.212545, 0.951717, 0.221492,
		39.590378, 35.118214, 39.138660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881252, 34.911991, 38.687698>,  <39.441597, 34.452011, 38.983616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881252, 34.911991, 38.687698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206738, 35.138649, 38.739521>,  <39.402027, 35.274643, 38.770615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206738, 35.138649, 38.739521>,  <38.881252, 34.911991, 38.687698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206738, 35.138649, 38.739521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065054, 0.310261, -0.948423,
		-0.577617, 0.763314, 0.289326,
		0.813711, 0.566647, 0.129556,
		39.450851, 35.308643, 38.778389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711117, 35.439034, 38.304886>,  <38.881252, 34.911991, 38.687698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711117, 35.439034, 38.304886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106842, 35.467651, 38.355721>,  <39.344276, 35.484821, 38.386219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106842, 35.467651, 38.355721>,  <38.711117, 35.439034, 38.304886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106842, 35.467651, 38.355721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114207, 0.161836, -0.980187,
		-0.090691, 0.984221, 0.151935,
		0.989309, 0.071542, 0.127082,
		39.403633, 35.489113, 38.393845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792847, 36.008717, 37.976963>,  <38.711117, 35.439034, 38.304886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792847, 36.008717, 37.976963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143154, 35.816463, 37.994965>,  <39.353336, 35.701111, 38.005764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143154, 35.816463, 37.994965>,  <38.792847, 36.008717, 37.976963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143154, 35.816463, 37.994965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238740, 0.350198, -0.905740,
		0.419572, 0.803959, 0.421438,
		0.875764, -0.480637, 0.045004,
		39.405884, 35.672272, 38.008465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323696, 36.450588, 37.782097>,  <38.792847, 36.008717, 37.976963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323696, 36.450588, 37.782097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478397, 36.088238, 37.713028>,  <39.571217, 35.870827, 37.671589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478397, 36.088238, 37.713028>,  <39.323696, 36.450588, 37.782097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478397, 36.088238, 37.713028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070715, 0.215821, -0.973869,
		0.919469, 0.364434, 0.147527,
		0.386750, -0.905875, -0.172670,
		39.594421, 35.816475, 37.661228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824947, 36.530819, 37.285751>,  <39.323696, 36.450588, 37.782097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824947, 36.530819, 37.285751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728271, 36.143089, 37.267841>,  <39.670265, 35.910454, 37.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728271, 36.143089, 37.267841>,  <39.824947, 36.530819, 37.285751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728271, 36.143089, 37.267841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049468, 0.033771, -0.998205,
		0.969091, -0.243472, 0.039788,
		-0.241691, -0.969320, -0.044771,
		39.655766, 35.852295, 37.254410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221260, 36.218441, 36.766727>,  <39.824947, 36.530819, 37.285751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221260, 36.218441, 36.766727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924042, 35.951633, 36.788513>,  <39.745712, 35.791550, 36.801586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924042, 35.951633, 36.788513>,  <40.221260, 36.218441, 36.766727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924042, 35.951633, 36.788513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098780, 0.028817, -0.994692,
		0.661914, -0.744479, -0.087301,
		-0.743043, -0.667024, 0.054466,
		39.701130, 35.751526, 36.804852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330532, 35.836704, 36.277405>,  <40.221260, 36.218441, 36.766727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330532, 35.836704, 36.277405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941460, 35.778923, 36.350101>,  <39.708015, 35.744255, 36.393719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941460, 35.778923, 36.350101>,  <40.330532, 35.836704, 36.277405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941460, 35.778923, 36.350101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179504, -0.028496, -0.983344,
		0.147230, -0.989101, 0.001786,
		-0.972677, -0.144457, 0.181743,
		39.649658, 35.735584, 36.404625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076164, 35.299606, 35.733261>,  <40.330532, 35.836704, 36.277405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076164, 35.299606, 35.733261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737942, 35.450497, 35.884380>,  <39.535007, 35.541031, 35.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737942, 35.450497, 35.884380>,  <40.076164, 35.299606, 35.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737942, 35.450497, 35.884380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419029, -0.030426, -0.907463,
		-0.330825, -0.925621, 0.183796,
		-0.845559, 0.377227, 0.377796,
		39.484276, 35.563663, 35.997719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603577, 34.872627, 35.676876>,  <40.076164, 35.299606, 35.733261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603577, 34.872627, 35.676876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395638, 35.214157, 35.687744>,  <39.270874, 35.419075, 35.694267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395638, 35.214157, 35.687744>,  <39.603577, 34.872627, 35.676876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395638, 35.214157, 35.687744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457049, -0.251119, -0.853256,
		-0.721706, -0.455987, 0.520785,
		-0.519852, 0.853824, 0.027174,
		39.239681, 35.470303, 35.695896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123341, 34.257710, 35.524666>,  <39.603577, 34.872627, 35.676876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123341, 34.257710, 35.524666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177650, 34.508469, 35.217796>,  <40.210236, 34.658924, 35.033672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177650, 34.508469, 35.217796>,  <40.123341, 34.257710, 35.524666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177650, 34.508469, 35.217796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989600, -0.048703, 0.135348,
		0.047486, -0.777577, -0.626992,
		0.135779, 0.626898, -0.767178,
		40.218384, 34.696537, 34.987644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566284, 33.886719, 35.247379>,  <40.123341, 34.257710, 35.524666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566284, 33.886719, 35.247379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607632, 34.267975, 35.133652>,  <40.632439, 34.496727, 35.065414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607632, 34.267975, 35.133652>,  <40.566284, 33.886719, 35.247379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607632, 34.267975, 35.133652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988601, -0.066996, 0.134829,
		0.109463, -0.295017, -0.949201,
		0.103370, 0.953140, -0.284321,
		40.638641, 34.553917, 35.048355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834370, 34.086369, 34.520668>,  <40.566284, 33.886719, 35.247379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834370, 34.086369, 34.520668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912533, 34.306496, 34.845375>,  <40.959431, 34.438572, 35.040199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912533, 34.306496, 34.845375>,  <40.834370, 34.086369, 34.520668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912533, 34.306496, 34.845375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949492, -0.313377, -0.016110,
		0.245525, 0.773918, -0.583754,
		0.195403, 0.550315, 0.811771,
		40.971153, 34.471592, 35.088905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535744, 33.938152, 34.336346>,  <40.834370, 34.086369, 34.520668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535744, 33.938152, 34.336346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707279, 34.268719, 34.190399>,  <41.810200, 34.467060, 34.102833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707279, 34.268719, 34.190399>,  <41.535744, 33.938152, 34.336346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707279, 34.268719, 34.190399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368450, 0.208766, 0.905903,
		0.824829, -0.522920, -0.214967,
		0.428838, 0.826421, -0.364867,
		41.835930, 34.516644, 34.080940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261551, 34.072609, 34.673538>,  <41.535744, 33.938152, 34.336346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261551, 34.072609, 34.673538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077530, 34.410370, 34.563755>,  <41.967117, 34.613026, 34.497883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077530, 34.410370, 34.563755>,  <42.261551, 34.072609, 34.673538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077530, 34.410370, 34.563755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112260, 0.361955, 0.925411,
		0.880764, 0.394931, -0.261313,
		-0.460057, 0.844404, -0.274462,
		41.939514, 34.663692, 34.481415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099060, 34.161678, 34.603577>,  <42.261551, 34.072609, 34.673538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099060, 34.161678, 34.603577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444935, 34.129772, 34.801952>,  <43.652458, 34.110626, 34.920979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444935, 34.129772, 34.801952>,  <43.099060, 34.161678, 34.603577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444935, 34.129772, 34.801952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307855, 0.695999, 0.648699,
		-0.396919, -0.713598, 0.577263,
		0.864685, -0.079768, 0.495940,
		43.704342, 34.105843, 34.950733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996716, 34.018040, 35.299328>,  <43.099060, 34.161678, 34.603577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996716, 34.018040, 35.299328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350357, 34.203842, 35.319675>,  <43.562542, 34.315323, 35.331886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350357, 34.203842, 35.319675>,  <42.996716, 34.018040, 35.299328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350357, 34.203842, 35.319675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450968, 0.819644, 0.353288,
		0.122408, -0.335286, 0.934130,
		0.884107, 0.464508, 0.050872,
		43.615589, 34.343193, 35.334938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136314, 34.393066, 35.989471>,  <42.996716, 34.018040, 35.299328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136314, 34.393066, 35.989471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382175, 34.554901, 35.718616>,  <43.529690, 34.652000, 35.556103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382175, 34.554901, 35.718616>,  <43.136314, 34.393066, 35.989471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382175, 34.554901, 35.718616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421735, 0.893999, 0.151343,
		0.666594, 0.192551, 0.720123,
		0.614648, 0.404585, -0.677140,
		43.566570, 34.676277, 35.515476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147659, 35.069626, 36.157356>,  <43.136314, 34.393066, 35.989471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147659, 35.069626, 36.157356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326904, 35.133129, 35.805450>,  <43.434452, 35.171230, 35.594307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326904, 35.133129, 35.805450>,  <43.147659, 35.069626, 36.157356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326904, 35.133129, 35.805450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383613, 0.923044, -0.028826,
		0.807489, 0.350408, 0.474526,
		0.448109, 0.158758, -0.879769,
		43.461338, 35.180756, 35.541519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339447, 35.800541, 36.290413>,  <43.147659, 35.069626, 36.157356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339447, 35.800541, 36.290413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305424, 35.728012, 35.898518>,  <43.285011, 35.684494, 35.663380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305424, 35.728012, 35.898518>,  <43.339447, 35.800541, 36.290413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305424, 35.728012, 35.898518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472899, 0.872840, -0.120486,
		0.877002, 0.453068, -0.159991,
		-0.085058, -0.181326, -0.979738,
		43.279907, 35.673615, 35.604595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405640, 36.416359, 36.026726>,  <43.339447, 35.800541, 36.290413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405640, 36.416359, 36.026726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232822, 36.221684, 35.723022>,  <43.129131, 36.104877, 35.540802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232822, 36.221684, 35.723022>,  <43.405640, 36.416359, 36.026726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232822, 36.221684, 35.723022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608338, 0.778784, -0.153039,
		0.665781, 0.395767, -0.632538,
		-0.432043, -0.486687, -0.759259,
		43.103210, 36.075676, 35.495243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374035, 36.917381, 35.456112>,  <43.405640, 36.416359, 36.026726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374035, 36.917381, 35.456112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103172, 36.637741, 35.364269>,  <42.940655, 36.469959, 35.309166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103172, 36.637741, 35.364269>,  <43.374035, 36.917381, 35.456112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103172, 36.637741, 35.364269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656422, 0.714920, -0.240830,
		0.332511, -0.012363, -0.943018,
		-0.677160, -0.699097, -0.229603,
		42.900024, 36.428013, 35.295387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028000, 37.120605, 34.798512>,  <43.374035, 36.917381, 35.456112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028000, 37.120605, 34.798512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792271, 36.868378, 35.000538>,  <42.650833, 36.717041, 35.121754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792271, 36.868378, 35.000538>,  <43.028000, 37.120605, 34.798512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792271, 36.868378, 35.000538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756250, 0.650498, -0.070270,
		-0.284233, -0.423366, -0.860217,
		-0.589319, -0.630566, 0.505064,
		42.615475, 36.679207, 35.152058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386242, 37.127232, 34.567688>,  <43.028000, 37.120605, 34.798512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386242, 37.127232, 34.567688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322109, 36.983109, 34.935268>,  <42.283630, 36.896637, 35.155815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322109, 36.983109, 34.935268>,  <42.386242, 37.127232, 34.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322109, 36.983109, 34.935268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740565, 0.659421, 0.129336,
		-0.652576, -0.659807, -0.372557,
		-0.160335, -0.360305, 0.918952,
		42.274010, 36.875015, 35.210953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638901, 36.837418, 34.599022>,  <42.386242, 37.127232, 34.567688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638901, 36.837418, 34.599022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778736, 36.911915, 34.966305>,  <41.862637, 36.956612, 35.186672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778736, 36.911915, 34.966305>,  <41.638901, 36.837418, 34.599022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778736, 36.911915, 34.966305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748858, 0.644496, 0.154390,
		-0.563025, -0.741578, 0.364780,
		0.349592, 0.186243, 0.918204,
		41.883614, 36.967789, 35.241768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992512, 36.868378, 34.988987>,  <41.638901, 36.837418, 34.599022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992512, 36.868378, 34.988987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271946, 37.048927, 35.211063>,  <41.439606, 37.157257, 35.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271946, 37.048927, 35.211063>,  <40.992512, 36.868378, 34.988987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271946, 37.048927, 35.211063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667043, 0.691586, 0.277060,
		-0.258906, -0.563888, 0.784218,
		0.698585, 0.451375, 0.555193,
		41.481522, 37.184341, 35.377621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613441, 37.173573, 35.534813>,  <40.992512, 36.868378, 34.988987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613441, 37.173573, 35.534813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953697, 37.383862, 35.536724>,  <41.157852, 37.510036, 35.537872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953697, 37.383862, 35.536724>,  <40.613441, 37.173573, 35.534813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953697, 37.383862, 35.536724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505250, 0.814929, 0.283925,
		0.145374, -0.243932, 0.958835,
		0.850641, 0.525726, 0.004777,
		41.208889, 37.541580, 35.538158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539394, 37.686035, 36.033684>,  <40.613441, 37.173573, 35.534813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539394, 37.686035, 36.033684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843491, 37.849903, 35.832008>,  <41.025948, 37.948223, 35.711002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843491, 37.849903, 35.832008>,  <40.539394, 37.686035, 36.033684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843491, 37.849903, 35.832008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424754, 0.900686, 0.091374,
		0.491546, 0.144689, 0.858748,
		0.760241, 0.409671, -0.504186,
		41.071564, 37.972805, 35.680752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696728, 38.319462, 36.390415>,  <40.539394, 37.686035, 36.033684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696728, 38.319462, 36.390415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833950, 38.338078, 36.015152>,  <40.916283, 38.349247, 35.789993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833950, 38.338078, 36.015152>,  <40.696728, 38.319462, 36.390415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833950, 38.338078, 36.015152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384808, 0.918077, -0.095171,
		0.856875, 0.393661, 0.332859,
		0.343055, 0.046537, -0.938162,
		40.936867, 38.352039, 35.733704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824181, 39.058117, 36.291233>,  <40.696728, 38.319462, 36.390415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824181, 39.058117, 36.291233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874100, 38.954430, 35.908146>,  <40.904053, 38.892216, 35.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874100, 38.954430, 35.908146>,  <40.824181, 39.058117, 36.291233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874100, 38.954430, 35.908146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379406, 0.879438, -0.287473,
		0.916775, 0.399241, 0.011401,
		0.124798, -0.259223, -0.957721,
		40.911541, 38.876663, 35.620831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075737, 39.708286, 35.926834>,  <40.824181, 39.058117, 36.291233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075737, 39.708286, 35.926834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861797, 39.474548, 35.682713>,  <40.733433, 39.334305, 35.536240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861797, 39.474548, 35.682713>,  <41.075737, 39.708286, 35.926834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861797, 39.474548, 35.682713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609587, 0.767028, -0.200178,
		0.585095, 0.264969, -0.766457,
		-0.534853, -0.584345, -0.610305,
		40.701340, 39.299244, 35.499622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150940, 39.969646, 35.237526>,  <41.075737, 39.708286, 35.926834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150940, 39.969646, 35.237526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816124, 39.750801, 35.239597>,  <40.615234, 39.619495, 35.240841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816124, 39.750801, 35.239597>,  <41.150940, 39.969646, 35.237526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816124, 39.750801, 35.239597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462599, 0.702618, -0.540675,
		0.292169, -0.454966, -0.841215,
		-0.837042, -0.547114, 0.005183,
		40.565010, 39.586666, 35.241154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870819, 40.021423, 34.584034>,  <41.150940, 39.969646, 35.237526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870819, 40.021423, 34.584034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548195, 39.900909, 34.787476>,  <40.354618, 39.828602, 34.909542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548195, 39.900909, 34.787476>,  <40.870819, 40.021423, 34.584034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548195, 39.900909, 34.787476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591146, 0.412735, -0.692962,
		-0.001143, -0.859580, -0.511000,
		-0.806564, -0.301284, 0.508609,
		40.306225, 39.810524, 34.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472103, 39.890297, 34.051991>,  <40.870819, 40.021423, 34.584034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472103, 39.890297, 34.051991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225216, 39.901222, 34.366516>,  <40.077084, 39.907780, 34.555233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225216, 39.901222, 34.366516>,  <40.472103, 39.890297, 34.051991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225216, 39.901222, 34.366516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680957, 0.482082, -0.551265,
		-0.394129, -0.875700, -0.278948,
		-0.617219, 0.027318, 0.786317,
		40.040051, 39.909416, 34.602409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831566, 39.629814, 33.814705>,  <40.472103, 39.890297, 34.051991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831566, 39.629814, 33.814705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731201, 39.843483, 34.137619>,  <39.670982, 39.971684, 34.331367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731201, 39.843483, 34.137619>,  <39.831566, 39.629814, 33.814705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731201, 39.843483, 34.137619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669518, 0.506554, -0.543276,
		-0.699134, -0.676805, 0.230534,
		-0.250914, 0.534169, 0.807282,
		39.655926, 40.003735, 34.379803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088612, 39.567879, 33.941158>,  <39.831566, 39.629814, 33.814705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088612, 39.567879, 33.941158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195232, 39.913494, 34.111988>,  <39.259205, 40.120861, 34.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195232, 39.913494, 34.111988>,  <39.088612, 39.567879, 33.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195232, 39.913494, 34.111988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708067, 0.476174, -0.521440,
		-0.653903, -0.163402, 0.738722,
		0.266555, 0.864036, 0.427071,
		39.275200, 40.172707, 34.240108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514183, 39.835007, 34.091156>,  <39.088612, 39.567879, 33.941158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514183, 39.835007, 34.091156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752529, 40.154850, 34.120998>,  <38.895538, 40.346756, 34.138905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752529, 40.154850, 34.120998>,  <38.514183, 39.835007, 34.091156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752529, 40.154850, 34.120998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519834, 0.454848, -0.723109,
		-0.612138, 0.392096, 0.686693,
		0.595869, 0.799609, 0.074605,
		38.931290, 40.394733, 34.143379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219337, 40.460770, 34.222881>,  <38.514183, 39.835007, 34.091156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219337, 40.460770, 34.222881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537125, 40.528538, 33.989601>,  <38.727798, 40.569199, 33.849632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537125, 40.528538, 33.989601>,  <38.219337, 40.460770, 34.222881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537125, 40.528538, 33.989601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582986, 0.481803, -0.654212,
		0.170149, 0.859745, 0.481547,
		0.794466, 0.169422, -0.583198,
		38.775463, 40.579365, 33.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109787, 40.445797, 34.884895>,  <38.219337, 40.460770, 34.222881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109787, 40.445797, 34.884895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451153, 40.268433, 34.994484>,  <38.655975, 40.162014, 35.060238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451153, 40.268433, 34.994484>,  <38.109787, 40.445797, 34.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451153, 40.268433, 34.994484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513564, 0.625548, -0.587318,
		0.089038, 0.641932, 0.761574,
		0.853419, -0.443410, 0.273976,
		38.707180, 40.135410, 35.076675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366436, 41.177670, 34.761189>,  <38.109787, 40.445797, 34.884895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366436, 41.177670, 34.761189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731434, 41.336452, 34.800728>,  <38.950432, 41.431725, 34.824451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731434, 41.336452, 34.800728>,  <38.366436, 41.177670, 34.761189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731434, 41.336452, 34.800728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184785, 0.615536, -0.766140,
		-0.364970, 0.680836, 0.635027,
		0.912497, 0.396961, 0.098844,
		39.005184, 41.455540, 34.830379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243416, 41.812813, 34.642101>,  <38.366436, 41.177670, 34.761189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243416, 41.812813, 34.642101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636204, 41.777302, 34.575344>,  <38.871876, 41.755993, 34.535290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636204, 41.777302, 34.575344>,  <38.243416, 41.812813, 34.642101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636204, 41.777302, 34.575344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073132, 0.635689, -0.768473,
		0.174314, 0.766823, 0.617736,
		0.981971, -0.088779, -0.166889,
		38.930794, 41.750668, 34.525276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525070, 42.495731, 34.654945>,  <38.243416, 41.812813, 34.642101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525070, 42.495731, 34.654945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748085, 42.261818, 34.419254>,  <38.881893, 42.121471, 34.277840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748085, 42.261818, 34.419254>,  <38.525070, 42.495731, 34.654945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748085, 42.261818, 34.419254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122069, 0.644317, -0.754953,
		0.821131, 0.492838, 0.287845,
		0.557533, -0.584779, -0.589229,
		38.915344, 42.086384, 34.242485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871201, 42.873489, 34.091297>,  <38.525070, 42.495731, 34.654945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871201, 42.873489, 34.091297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851868, 42.506138, 33.934196>,  <38.840267, 42.285728, 33.839935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851868, 42.506138, 33.934196>,  <38.871201, 42.873489, 34.091297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851868, 42.506138, 33.934196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002204, 0.393111, -0.919488,
		0.998829, -0.045305, -0.016975,
		-0.048330, -0.918374, -0.392750,
		38.837368, 42.230625, 33.816372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423309, 42.668964, 33.590839>,  <38.871201, 42.873489, 34.091297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423309, 42.668964, 33.590839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081879, 42.474247, 33.516602>,  <38.877022, 42.357418, 33.472061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081879, 42.474247, 33.516602>,  <39.423309, 42.668964, 33.590839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081879, 42.474247, 33.516602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130678, 0.544914, -0.828246,
		0.504310, -0.682720, -0.528739,
		-0.853577, -0.486788, -0.185589,
		38.825806, 42.328209, 33.460922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341221, 42.604080, 32.914837>,  <39.423309, 42.668964, 33.590839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341221, 42.604080, 32.914837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965282, 42.553936, 33.041943>,  <38.739719, 42.523849, 33.118206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965282, 42.553936, 33.041943>,  <39.341221, 42.604080, 32.914837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965282, 42.553936, 33.041943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331594, 0.558292, -0.760497,
		-0.082068, -0.820119, -0.566277,
		-0.939846, -0.125362, 0.317764,
		38.683327, 42.516327, 33.137272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988270, 42.336479, 32.823017>,  <39.341221, 42.604080, 32.914837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988270, 42.336479, 32.823017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193813, 42.534534, 33.103241>,  <40.317139, 42.653366, 33.271374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193813, 42.534534, 33.103241>,  <39.988270, 42.336479, 32.823017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193813, 42.534534, 33.103241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394350, -0.861565, 0.319676,
		0.761863, 0.111997, -0.637982,
		0.513860, 0.495138, 0.700561,
		40.347973, 42.683075, 33.313408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577896, 41.875656, 32.660034>,  <39.988270, 42.336479, 32.823017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577896, 41.875656, 32.660034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317909, 41.575096, 32.705528>,  <40.161915, 41.394760, 32.732822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317909, 41.575096, 32.705528>,  <40.577896, 41.875656, 32.660034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317909, 41.575096, 32.705528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700460, -0.534286, 0.473174,
		-0.294778, 0.387214, 0.873597,
		-0.649970, -0.751401, 0.113732,
		40.122917, 41.349674, 32.739647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373711, 41.557350, 33.437492>,  <40.577896, 41.875656, 32.660034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373711, 41.557350, 33.437492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406052, 41.339348, 33.103683>,  <40.425457, 41.208546, 32.903397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406052, 41.339348, 33.103683>,  <40.373711, 41.557350, 33.437492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406052, 41.339348, 33.103683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778295, -0.488533, 0.394451,
		-0.622671, -0.681397, 0.384680,
		0.080849, -0.545008, -0.834523,
		40.430305, 41.175846, 32.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629150, 40.899693, 33.644810>,  <40.373711, 41.557350, 33.437492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629150, 40.899693, 33.644810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699482, 40.887997, 33.251217>,  <40.741680, 40.880981, 33.015060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699482, 40.887997, 33.251217>,  <40.629150, 40.899693, 33.644810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699482, 40.887997, 33.251217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871346, -0.460505, 0.169383,
		-0.458083, -0.887175, -0.055495,
		0.175828, -0.029236, -0.983986,
		40.752232, 40.879227, 32.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811298, 40.235641, 33.539776>,  <40.629150, 40.899693, 33.644810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811298, 40.235641, 33.539776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954643, 40.420204, 33.215141>,  <41.040649, 40.530941, 33.020359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954643, 40.420204, 33.215141>,  <40.811298, 40.235641, 33.539776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954643, 40.420204, 33.215141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858889, -0.503664, 0.092904,
		-0.365901, -0.730358, -0.576797,
		0.358365, 0.461411, -0.811588,
		41.062153, 40.558628, 32.971664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951790, 39.663071, 33.039165>,  <40.811298, 40.235641, 33.539776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951790, 39.663071, 33.039165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183041, 39.985321, 32.987427>,  <41.321793, 40.178673, 32.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183041, 39.985321, 32.987427>,  <40.951790, 39.663071, 33.039165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183041, 39.985321, 32.987427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815930, -0.571807, 0.085411,
		-0.005152, -0.154917, -0.987914,
		0.578128, 0.805629, -0.129347,
		41.356480, 40.227009, 32.948624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387669, 39.437271, 32.589493>,  <40.951790, 39.663071, 33.039165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387669, 39.437271, 32.589493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575100, 39.769920, 32.708717>,  <41.687561, 39.969509, 32.780251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575100, 39.769920, 32.708717>,  <41.387669, 39.437271, 32.589493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575100, 39.769920, 32.708717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840745, -0.523394, 0.138584,
		0.271253, 0.185656, -0.944433,
		0.468582, 0.831619, 0.298062,
		41.715675, 40.019405, 32.798138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969349, 39.467823, 32.182796>,  <41.387669, 39.437271, 32.589493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969349, 39.467823, 32.182796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049557, 39.661545, 32.523441>,  <42.097679, 39.777779, 32.727829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049557, 39.661545, 32.523441>,  <41.969349, 39.467823, 32.182796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049557, 39.661545, 32.523441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763592, -0.621855, 0.173853,
		0.613777, 0.615424, -0.494502,
		0.200515, 0.484304, 0.851612,
		42.109711, 39.806835, 32.778927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660709, 39.598217, 32.159580>,  <41.969349, 39.467823, 32.182796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660709, 39.598217, 32.159580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597710, 39.621731, 32.553886>,  <42.559910, 39.635838, 32.790470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597710, 39.621731, 32.553886>,  <42.660709, 39.598217, 32.159580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597710, 39.621731, 32.553886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829763, -0.533361, 0.164378,
		0.535432, 0.843843, 0.035228,
		-0.157498, 0.058782, 0.985768,
		42.550461, 39.639366, 32.849617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281166, 39.475662, 32.432362>,  <42.660709, 39.598217, 32.159580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281166, 39.475662, 32.432362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078606, 39.463844, 32.777077>,  <42.957069, 39.456753, 32.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078606, 39.463844, 32.777077>,  <43.281166, 39.475662, 32.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078606, 39.463844, 32.777077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685524, -0.620050, 0.381569,
		0.523079, 0.784006, 0.334250,
		-0.506404, -0.029546, 0.861790,
		42.926685, 39.454979, 33.035614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710194, 39.799347, 32.908157>,  <43.281166, 39.475662, 32.432362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710194, 39.799347, 32.908157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450504, 39.545143, 33.075317>,  <43.294693, 39.392620, 33.175613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450504, 39.545143, 33.075317>,  <43.710194, 39.799347, 32.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450504, 39.545143, 33.075317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757455, -0.490289, 0.431136,
		-0.069097, 0.596446, 0.799674,
		-0.649220, -0.635507, 0.417903,
		43.255737, 39.354492, 33.200687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944473, 39.737087, 33.585960>,  <43.710194, 39.799347, 32.908157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944473, 39.737087, 33.585960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715134, 39.410759, 33.555740>,  <43.577530, 39.214962, 33.537609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715134, 39.410759, 33.555740>,  <43.944473, 39.737087, 33.585960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715134, 39.410759, 33.555740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727399, -0.549292, 0.411300,
		-0.377045, 0.180865, 0.908364,
		-0.573347, -0.815822, -0.075547,
		43.543129, 39.166012, 33.533077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060551, 39.395378, 34.237732>,  <43.944473, 39.737087, 33.585960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060551, 39.395378, 34.237732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858395, 39.098351, 34.061928>,  <43.737099, 38.920135, 33.956444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858395, 39.098351, 34.061928>,  <44.060551, 39.395378, 34.237732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858395, 39.098351, 34.061928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596165, -0.668723, 0.444294,
		-0.623830, -0.037478, 0.780661,
		-0.505394, -0.742567, -0.439513,
		43.706776, 38.875580, 33.930073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883583, 38.860126, 34.694176>,  <44.060551, 39.395378, 34.237732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883583, 38.860126, 34.694176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881710, 38.693901, 34.330353>,  <43.880585, 38.594166, 34.112061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881710, 38.693901, 34.330353>,  <43.883583, 38.860126, 34.694176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881710, 38.693901, 34.330353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596017, -0.731509, 0.331147,
		-0.802958, -0.540558, 0.251108,
		-0.004684, -0.415562, -0.909553,
		43.880306, 38.569233, 34.057487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859352, 38.169945, 34.809780>,  <43.883583, 38.860126, 34.694176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859352, 38.169945, 34.809780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000450, 38.226387, 34.439774>,  <44.085110, 38.260250, 34.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000450, 38.226387, 34.439774>,  <43.859352, 38.169945, 34.809780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000450, 38.226387, 34.439774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677354, -0.720536, 0.148387,
		-0.645573, -0.678909, -0.349741,
		0.352742, 0.141103, -0.925020,
		44.106274, 38.268719, 34.162266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866783, 37.540298, 34.473083>,  <43.859352, 38.169945, 34.809780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866783, 37.540298, 34.473083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147915, 37.761173, 34.293701>,  <44.316593, 37.893700, 34.186069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147915, 37.761173, 34.293701>,  <43.866783, 37.540298, 34.473083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147915, 37.761173, 34.293701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655451, -0.747674, 0.106619,
		-0.276427, -0.368878, -0.887421,
		0.702831, 0.552189, -0.448459,
		44.358765, 37.926830, 34.159164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199139, 37.081352, 34.071190>,  <43.866783, 37.540298, 34.473083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199139, 37.081352, 34.071190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446285, 37.395794, 34.077908>,  <44.594574, 37.584457, 34.081940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446285, 37.395794, 34.077908>,  <44.199139, 37.081352, 34.071190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446285, 37.395794, 34.077908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786230, -0.617932, -0.001432,
		0.009251, 0.014089, -0.999858,
		0.617865, 0.786105, 0.016794,
		44.631645, 37.631626, 34.082947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697659, 36.941792, 33.458214>,  <44.199139, 37.081352, 34.071190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697659, 36.941792, 33.458214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863567, 37.209621, 33.704674>,  <44.963112, 37.370319, 33.852551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863567, 37.209621, 33.704674>,  <44.697659, 36.941792, 33.458214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863567, 37.209621, 33.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770015, -0.619063, 0.154394,
		0.484813, 0.410406, -0.772349,
		0.414768, 0.669573, 0.616149,
		44.987999, 37.410492, 33.889519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371384, 36.907730, 33.260303>,  <44.697659, 36.941792, 33.458214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371384, 36.907730, 33.260303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392387, 37.067245, 33.626518>,  <45.404991, 37.162956, 33.846249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392387, 37.067245, 33.626518>,  <45.371384, 36.907730, 33.260303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392387, 37.067245, 33.626518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745484, -0.625666, 0.229773,
		0.664452, 0.670452, -0.330147,
		0.052510, 0.398792, 0.915537,
		45.408142, 37.186882, 33.901180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081886, 37.087570, 33.427406>,  <45.371384, 36.907730, 33.260303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081886, 37.087570, 33.427406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891068, 37.034912, 33.774990>,  <45.776577, 37.003319, 33.983540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891068, 37.034912, 33.774990>,  <46.081886, 37.087570, 33.427406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891068, 37.034912, 33.774990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734822, -0.602142, 0.312188,
		0.482142, 0.787462, 0.383983,
		-0.477049, -0.131640, 0.868962,
		45.747952, 36.995419, 34.035679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612488, 37.079983, 33.855843>,  <46.081886, 37.087570, 33.427406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612488, 37.079983, 33.855843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312012, 36.914772, 34.061802>,  <46.131725, 36.815647, 34.185375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312012, 36.914772, 34.061802>,  <46.612488, 37.079983, 33.855843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312012, 36.914772, 34.061802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643515, -0.631911, 0.431946,
		0.146961, 0.655817, 0.740477,
		-0.751193, -0.413028, 0.514895,
		46.086655, 36.790863, 34.216270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760303, 36.999039, 34.618114>,  <46.612488, 37.079983, 33.855843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760303, 36.999039, 34.618114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482903, 36.731041, 34.512161>,  <46.316460, 36.570244, 34.448589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482903, 36.731041, 34.512161>,  <46.760303, 36.999039, 34.618114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482903, 36.731041, 34.512161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498076, -0.711514, 0.495650,
		-0.520549, 0.211804, 0.827144,
		-0.693505, -0.669991, -0.264883,
		46.274853, 36.530045, 34.432697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463654, 36.548580, 35.205265>,  <46.760303, 36.999039, 34.618114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463654, 36.548580, 35.205265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439129, 36.342407, 34.863373>,  <46.424416, 36.218704, 34.658237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439129, 36.342407, 34.863373>,  <46.463654, 36.548580, 35.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439129, 36.342407, 34.863373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522130, -0.746392, 0.412648,
		-0.850659, -0.420982, 0.314886,
		-0.061311, -0.515434, -0.854733,
		46.420734, 36.187778, 34.606953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216019, 35.868790, 35.382122>,  <46.463654, 36.548580, 35.205265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216019, 35.868790, 35.382122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448124, 35.885933, 35.056805>,  <46.587387, 35.896217, 34.861614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448124, 35.885933, 35.056805>,  <46.216019, 35.868790, 35.382122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448124, 35.885933, 35.056805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646194, -0.632038, 0.427740,
		-0.495704, -0.773751, -0.394444,
		0.580268, 0.042855, -0.813297,
		46.622204, 35.898788, 34.812817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344250, 35.177711, 34.841564>,  <46.216019, 35.868790, 35.382122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344250, 35.177711, 34.841564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669628, 35.410278, 34.848007>,  <46.864857, 35.549820, 34.851871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669628, 35.410278, 34.848007>,  <46.344250, 35.177711, 34.841564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669628, 35.410278, 34.848007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495661, -0.707420, 0.503863,
		0.304346, -0.401883, -0.863634,
		0.813446, 0.581418, 0.016103,
		46.913662, 35.584705, 34.852837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005863, 34.890900, 34.549843>,  <46.344250, 35.177711, 34.841564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005863, 34.890900, 34.549843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147640, 35.154537, 34.815163>,  <47.232708, 35.312721, 34.974354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147640, 35.154537, 34.815163>,  <47.005863, 34.890900, 34.549843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147640, 35.154537, 34.815163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513458, -0.730025, 0.451026,
		0.781493, 0.180713, -0.597169,
		0.354442, 0.659095, 0.663298,
		47.253971, 35.352264, 35.014153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778114, 35.050701, 34.461063>,  <47.005863, 34.890900, 34.549843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778114, 35.050701, 34.461063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626461, 35.102444, 34.827564>,  <47.535469, 35.133492, 35.047466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626461, 35.102444, 34.827564>,  <47.778114, 35.050701, 34.461063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626461, 35.102444, 34.827564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433507, -0.849966, 0.299382,
		0.817513, 0.510709, 0.266175,
		-0.379136, 0.129360, 0.916254,
		47.512722, 35.141251, 35.102440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.684757, 36.599190, 44.716850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.348141, 36.443726, 44.866920>,  <33.146172, 36.350449, 44.956963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.348141, 36.443726, 44.866920>,  <33.684757, 36.599190, 44.716850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348141, 36.443726, 44.866920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173290, -0.463578, -0.868946,
		0.511644, -0.796266, 0.322769,
		-0.841541, -0.388659, 0.375172,
		33.095680, 36.327129, 44.979473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711330, 35.893646, 44.431274>,  <33.684757, 36.599190, 44.716850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711330, 35.893646, 44.431274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337837, 35.994911, 44.532501>,  <33.113739, 36.055672, 44.593239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337837, 35.994911, 44.532501>,  <33.711330, 35.893646, 44.431274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337837, 35.994911, 44.532501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333216, -0.356426, -0.872885,
		-0.130781, -0.899372, 0.417165,
		-0.933736, 0.253162, 0.253071,
		33.057716, 36.070862, 44.608421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305923, 35.287670, 44.111702>,  <33.711330, 35.893646, 44.431274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305923, 35.287670, 44.111702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054955, 35.590679, 44.183819>,  <32.904373, 35.772484, 44.227089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054955, 35.590679, 44.183819>,  <33.305923, 35.287670, 44.111702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054955, 35.590679, 44.183819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397054, -0.112062, -0.910928,
		-0.669844, -0.643120, 0.371087,
		-0.627421, 0.757521, 0.180289,
		32.866730, 35.817936, 44.237907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693096, 35.088974, 43.846275>,  <33.305923, 35.287670, 44.111702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693096, 35.088974, 43.846275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.671268, 35.487103, 43.878181>,  <32.658173, 35.725979, 43.897324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.671268, 35.487103, 43.878181>,  <32.693096, 35.088974, 43.846275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671268, 35.487103, 43.878181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179591, 0.068796, -0.981333,
		-0.982227, -0.067872, 0.174997,
		-0.054566, 0.995319, 0.079763,
		32.654900, 35.785698, 43.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158524, 35.223568, 43.479961>,  <32.693096, 35.088974, 43.846275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158524, 35.223568, 43.479961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.361191, 35.568226, 43.491592>,  <32.482792, 35.775021, 43.498569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.361191, 35.568226, 43.491592>,  <32.158524, 35.223568, 43.479961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361191, 35.568226, 43.491592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185104, 0.141659, -0.972455,
		-0.842033, 0.487335, 0.231270,
		0.506673, 0.861648, 0.029074,
		32.513191, 35.826721, 43.500313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790596, 35.806988, 43.064400>,  <32.158524, 35.223568, 43.479961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790596, 35.806988, 43.064400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.168800, 35.936935, 43.055737>,  <32.395721, 36.014904, 43.050537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.168800, 35.936935, 43.055737>,  <31.790596, 35.806988, 43.064400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168800, 35.936935, 43.055737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068788, 0.134286, -0.988552,
		-0.318239, 0.936178, 0.149316,
		0.945511, 0.324867, -0.021662,
		32.452454, 36.034397, 43.049236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779346, 36.040684, 42.451485>,  <31.790596, 35.806988, 43.064400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779346, 36.040684, 42.451485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.174225, 36.069756, 42.508286>,  <32.411152, 36.087200, 42.542366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.174225, 36.069756, 42.508286>,  <31.779346, 36.040684, 42.451485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174225, 36.069756, 42.508286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128309, 0.167183, -0.977541,
		-0.094791, 0.983243, 0.155716,
		0.987194, 0.072682, 0.142006,
		32.470383, 36.091560, 42.550888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026817, 36.727383, 42.133892>,  <31.779346, 36.040684, 42.451485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026817, 36.727383, 42.133892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.318504, 36.455601, 42.166351>,  <32.493515, 36.292534, 42.185825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.318504, 36.455601, 42.166351>,  <32.026817, 36.727383, 42.133892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318504, 36.455601, 42.166351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305519, 0.217173, -0.927089,
		0.612290, 0.700842, 0.365952,
		0.729218, -0.679453, 0.081147,
		32.537270, 36.251766, 42.190697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552246, 36.988716, 41.618965>,  <32.026817, 36.727383, 42.133892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552246, 36.988716, 41.618965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.673512, 36.617504, 41.705555>,  <32.746269, 36.394779, 41.757507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.673512, 36.617504, 41.705555>,  <32.552246, 36.988716, 41.618965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673512, 36.617504, 41.705555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434889, -0.067396, -0.897958,
		0.847919, 0.366368, 0.383157,
		0.303159, -0.928026, 0.216476,
		32.764458, 36.339096, 41.770496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290939, 37.029930, 41.538330>,  <32.552246, 36.988716, 41.618965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290939, 37.029930, 41.538330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226776, 36.636429, 41.506065>,  <33.188278, 36.400330, 41.486706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226776, 36.636429, 41.506065>,  <33.290939, 37.029930, 41.538330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226776, 36.636429, 41.506065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609492, -0.034437, -0.792044,
		0.776395, -0.176213, 0.605112,
		-0.160407, -0.983750, -0.080663,
		33.178654, 36.341305, 41.481865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844337, 36.775848, 41.376209>,  <33.290939, 37.029930, 41.538330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844337, 36.775848, 41.376209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595078, 36.489685, 41.249798>,  <33.445522, 36.317986, 41.173950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595078, 36.489685, 41.249798>,  <33.844337, 36.775848, 41.376209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595078, 36.489685, 41.249798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539513, -0.100668, -0.835937,
		0.566227, -0.691412, 0.448706,
		-0.623147, -0.715413, -0.316025,
		33.408134, 36.275063, 41.154991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305592, 36.309669, 41.035938>,  <33.844337, 36.775848, 41.376209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305592, 36.309669, 41.035938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954605, 36.186020, 40.889244>,  <33.744015, 36.111828, 40.801228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954605, 36.186020, 40.889244>,  <34.305592, 36.309669, 41.035938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954605, 36.186020, 40.889244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435538, -0.193282, -0.879175,
		0.200894, -0.931173, 0.304235,
		-0.877467, -0.309127, -0.366732,
		33.691364, 36.093281, 40.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404812, 35.654297, 40.764091>,  <34.305592, 36.309669, 41.035938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404812, 35.654297, 40.764091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067955, 35.771957, 40.583309>,  <33.865841, 35.842556, 40.474838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067955, 35.771957, 40.583309>,  <34.404812, 35.654297, 40.764091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067955, 35.771957, 40.583309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391518, -0.242809, -0.887557,
		-0.370818, -0.924401, 0.089314,
		-0.842145, 0.294154, -0.451958,
		33.815311, 35.860203, 40.447723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251194, 35.112228, 40.261868>,  <34.404812, 35.654297, 40.764091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251194, 35.112228, 40.261868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040085, 35.434502, 40.154289>,  <33.913422, 35.627865, 40.089745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040085, 35.434502, 40.154289>,  <34.251194, 35.112228, 40.261868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040085, 35.434502, 40.154289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214526, -0.179929, -0.960002,
		-0.821850, -0.564356, -0.077879,
		-0.527770, 0.805685, -0.268944,
		33.881752, 35.676208, 40.073605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760674, 34.968201, 39.605019>,  <34.251194, 35.112228, 40.261868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760674, 34.968201, 39.605019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821800, 35.363499, 39.603249>,  <33.858475, 35.600677, 39.602188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821800, 35.363499, 39.603249>,  <33.760674, 34.968201, 39.605019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821800, 35.363499, 39.603249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120965, -0.023146, -0.992387,
		-0.980824, 0.151117, -0.123080,
		0.152815, 0.988245, -0.004422,
		33.867645, 35.659973, 39.601921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657768, 35.087730, 38.980461>,  <33.760674, 34.968201, 39.605019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657768, 35.087730, 38.980461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809090, 35.450214, 39.056007>,  <33.899883, 35.667706, 39.101337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809090, 35.450214, 39.056007>,  <33.657768, 35.087730, 38.980461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809090, 35.450214, 39.056007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193989, 0.121892, -0.973402,
		-0.905129, 0.404876, -0.129683,
		0.378299, 0.906211, 0.188870,
		33.922581, 35.722076, 39.112667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297127, 35.633549, 38.542809>,  <33.657768, 35.087730, 38.980461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297127, 35.633549, 38.542809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.658680, 35.767406, 38.649399>,  <33.875610, 35.847721, 38.713352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.658680, 35.767406, 38.649399>,  <33.297127, 35.633549, 38.542809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658680, 35.767406, 38.649399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186500, 0.252331, -0.949498,
		-0.384987, 0.907932, 0.165665,
		0.903882, 0.334648, 0.266474,
		33.929844, 35.867802, 38.729340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542763, 36.334099, 38.280125>,  <33.297127, 35.633549, 38.542809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542763, 36.334099, 38.280125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.896938, 36.158531, 38.341251>,  <34.109444, 36.053192, 38.377926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.896938, 36.158531, 38.341251>,  <33.542763, 36.334099, 38.280125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896938, 36.158531, 38.341251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292940, 0.271797, -0.916685,
		0.360811, 0.856435, 0.369236,
		0.885438, -0.438914, 0.152817,
		34.162571, 36.026855, 38.387096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053562, 36.855045, 38.120697>,  <33.542763, 36.334099, 38.280125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053562, 36.855045, 38.120697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221004, 36.493500, 38.085384>,  <34.321468, 36.276573, 38.064198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221004, 36.493500, 38.085384>,  <34.053562, 36.855045, 38.120697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221004, 36.493500, 38.085384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350142, 0.250317, -0.902631,
		0.837957, 0.346935, 0.421266,
		0.418604, -0.903868, -0.088279,
		34.346584, 36.222340, 38.058899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643250, 37.045067, 37.779171>,  <34.053562, 36.855045, 38.120697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643250, 37.045067, 37.779171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628170, 36.645611, 37.764725>,  <34.619122, 36.405937, 37.756058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628170, 36.645611, 37.764725>,  <34.643250, 37.045067, 37.779171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628170, 36.645611, 37.764725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317984, 0.022275, -0.947834,
		0.947346, -0.047219, 0.316711,
		-0.037701, -0.998636, -0.036117,
		34.616859, 36.346020, 37.753891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263531, 36.917004, 37.400055>,  <34.643250, 37.045067, 37.779171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263531, 36.917004, 37.400055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025467, 36.595978, 37.383701>,  <34.882629, 36.403362, 37.373890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025467, 36.595978, 37.383701>,  <35.263531, 36.917004, 37.400055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025467, 36.595978, 37.383701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068508, 0.000014, -0.997651,
		0.800683, -0.596561, 0.054974,
		-0.595159, -0.802568, -0.040881,
		34.846920, 36.355209, 37.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610725, 36.364128, 37.041603>,  <35.263531, 36.917004, 37.400055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610725, 36.364128, 37.041603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213829, 36.327286, 37.008194>,  <34.975693, 36.305180, 36.988148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213829, 36.327286, 37.008194>,  <35.610725, 36.364128, 37.041603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213829, 36.327286, 37.008194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069577, 0.145435, -0.986918,
		0.103043, -0.985072, -0.137899,
		-0.992240, -0.092101, -0.083525,
		34.916157, 36.299652, 36.983135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148499, 36.900513, 37.250252>,  <35.610725, 36.364128, 37.041603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148499, 36.900513, 37.250252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506447, 37.060642, 37.171310>,  <36.721214, 37.156719, 37.123947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506447, 37.060642, 37.171310>,  <36.148499, 36.900513, 37.250252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506447, 37.060642, 37.171310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217627, -0.005311, 0.976018,
		0.389676, -0.916358, -0.091874,
		0.894870, 0.400325, -0.197354,
		36.774906, 37.180740, 37.112103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668629, 36.378525, 37.535656>,  <36.148499, 36.900513, 37.250252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668629, 36.378525, 37.535656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847324, 36.735508, 37.510548>,  <36.954540, 36.949699, 37.495483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847324, 36.735508, 37.510548>,  <36.668629, 36.378525, 37.535656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847324, 36.735508, 37.510548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249936, -0.057127, 0.966576,
		0.859043, -0.447497, -0.248579,
		0.446740, 0.892459, -0.062771,
		36.981346, 37.003246, 37.491718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426491, 36.345623, 37.887932>,  <36.668629, 36.378525, 37.535656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426491, 36.345623, 37.887932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299988, 36.725014, 37.880203>,  <37.224087, 36.952648, 37.875568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299988, 36.725014, 37.880203>,  <37.426491, 36.345623, 37.887932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299988, 36.725014, 37.880203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039004, 0.007347, 0.999212,
		0.947870, 0.316765, 0.034670,
		-0.316260, 0.948476, -0.019319,
		37.205109, 37.009556, 37.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800602, 36.712685, 38.388130>,  <37.426491, 36.345623, 37.887932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800602, 36.712685, 38.388130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496655, 36.968620, 38.342167>,  <37.314285, 37.122181, 38.314590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496655, 36.968620, 38.342167>,  <37.800602, 36.712685, 38.388130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496655, 36.968620, 38.342167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070248, 0.094906, 0.993005,
		0.646267, 0.762628, -0.027169,
		-0.759871, 0.639837, -0.114908,
		37.268692, 37.160572, 38.307693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898266, 37.054787, 39.001404>,  <37.800602, 36.712685, 38.388130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898266, 37.054787, 39.001404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542484, 37.175346, 38.863983>,  <37.329014, 37.247681, 38.781532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542484, 37.175346, 38.863983>,  <37.898266, 37.054787, 39.001404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542484, 37.175346, 38.863983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269121, 0.262150, 0.926742,
		0.369379, 0.916754, -0.152058,
		-0.889457, 0.301397, -0.343551,
		37.275646, 37.265766, 38.760918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738033, 37.673828, 39.329899>,  <37.898266, 37.054787, 39.001404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738033, 37.673828, 39.329899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374672, 37.530457, 39.243805>,  <37.156654, 37.444435, 39.192150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374672, 37.530457, 39.243805>,  <37.738033, 37.673828, 39.329899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374672, 37.530457, 39.243805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282510, 0.146753, 0.947973,
		-0.308195, 0.921951, -0.234571,
		-0.908407, -0.358429, -0.215231,
		37.102150, 37.422928, 39.179237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198662, 38.211082, 39.539387>,  <37.738033, 37.673828, 39.329899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198662, 38.211082, 39.539387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000843, 37.866711, 39.491669>,  <36.882153, 37.660088, 39.463039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000843, 37.866711, 39.491669>,  <37.198662, 38.211082, 39.539387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000843, 37.866711, 39.491669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405350, 0.107045, 0.907873,
		-0.768843, 0.497338, -0.401915,
		-0.494543, -0.860927, -0.119295,
		36.852482, 37.608433, 39.455879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463085, 38.359509, 39.663979>,  <37.198662, 38.211082, 39.539387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463085, 38.359509, 39.663979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520855, 37.967747, 39.720428>,  <36.555519, 37.732689, 39.754299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520855, 37.967747, 39.720428>,  <36.463085, 38.359509, 39.663979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520855, 37.967747, 39.720428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425378, 0.067317, 0.902509,
		-0.893417, -0.190379, -0.406892,
		0.144428, -0.979400, 0.141126,
		36.564182, 37.673927, 39.762768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894848, 38.129490, 39.935410>,  <36.463085, 38.359509, 39.663979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894848, 38.129490, 39.935410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161663, 37.860535, 40.063755>,  <36.321754, 37.699162, 40.140762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161663, 37.860535, 40.063755>,  <35.894848, 38.129490, 39.935410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161663, 37.860535, 40.063755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543276, -0.144285, 0.827063,
		-0.509811, -0.726001, -0.461536,
		0.667041, -0.672387, 0.320860,
		36.361774, 37.658817, 40.160015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508377, 37.440563, 40.230568>,  <35.894848, 38.129490, 39.935410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508377, 37.440563, 40.230568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877678, 37.453224, 40.383720>,  <36.099258, 37.460819, 40.475613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877678, 37.453224, 40.383720>,  <35.508377, 37.440563, 40.230568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877678, 37.453224, 40.383720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381017, -0.052343, 0.923085,
		0.049257, -0.998128, -0.036266,
		0.923255, 0.031650, 0.382882,
		36.154655, 37.462719, 40.498585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525826, 36.913918, 40.749607>,  <35.508377, 37.440563, 40.230568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525826, 36.913918, 40.749607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833591, 37.155369, 40.833172>,  <36.018250, 37.300240, 40.883312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833591, 37.155369, 40.833172>,  <35.525826, 36.913918, 40.749607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833591, 37.155369, 40.833172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205931, -0.075189, 0.975674,
		0.604648, -0.793716, 0.066454,
		0.769411, 0.603624, 0.208913,
		36.064415, 37.336456, 40.895847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899242, 36.543880, 41.180855>,  <35.525826, 36.913918, 40.749607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899242, 36.543880, 41.180855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002331, 36.927086, 41.231121>,  <36.064182, 37.157009, 41.261280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002331, 36.927086, 41.231121>,  <35.899242, 36.543880, 41.180855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002331, 36.927086, 41.231121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039585, -0.119486, 0.992047,
		0.965408, -0.260646, 0.007129,
		0.257721, 0.958012, 0.125670,
		36.079647, 37.214489, 41.268822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342468, 36.623608, 41.859344>,  <35.899242, 36.543880, 41.180855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342468, 36.623608, 41.859344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227600, 36.998791, 41.781601>,  <36.158680, 37.223900, 41.734955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227600, 36.998791, 41.781601>,  <36.342468, 36.623608, 41.859344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227600, 36.998791, 41.781601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065442, 0.183223, 0.980891,
		0.955642, 0.294401, 0.008766,
		-0.287169, 0.937954, -0.194362,
		36.141449, 37.280178, 41.723293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542057, 36.916134, 42.420338>,  <36.342468, 36.623608, 41.859344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542057, 36.916134, 42.420338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284229, 37.181721, 42.268715>,  <36.129532, 37.341072, 42.177742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284229, 37.181721, 42.268715>,  <36.542057, 36.916134, 42.420338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284229, 37.181721, 42.268715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228675, 0.305665, 0.924271,
		0.729546, 0.682437, -0.045190,
		-0.644569, 0.663965, -0.379053,
		36.090858, 37.380909, 42.154999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759193, 37.698914, 42.662193>,  <36.542057, 36.916134, 42.420338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759193, 37.698914, 42.662193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366375, 37.683739, 42.588276>,  <36.130684, 37.674633, 42.543926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366375, 37.683739, 42.588276>,  <36.759193, 37.698914, 42.662193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366375, 37.683739, 42.588276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186693, 0.054711, 0.980894,
		-0.027105, 0.997781, -0.060811,
		-0.982044, -0.037940, -0.184796,
		36.071762, 37.672356, 42.532837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396721, 38.312130, 43.015633>,  <36.759193, 37.698914, 42.662193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396721, 38.312130, 43.015633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105015, 38.040508, 42.982033>,  <35.929989, 37.877537, 42.961872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105015, 38.040508, 42.982033>,  <36.396721, 38.312130, 43.015633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105015, 38.040508, 42.982033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327415, 0.238534, 0.914276,
		-0.600807, 0.694253, -0.396287,
		-0.729267, -0.679054, -0.083996,
		35.886234, 37.836792, 42.956833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857563, 38.659218, 43.326950>,  <36.396721, 38.312130, 43.015633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857563, 38.659218, 43.326950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739071, 38.277340, 43.315552>,  <35.667976, 38.048214, 43.308712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739071, 38.277340, 43.315552>,  <35.857563, 38.659218, 43.326950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739071, 38.277340, 43.315552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319269, 0.070861, 0.945011,
		-0.900173, 0.289043, -0.325794,
		-0.296235, -0.954690, -0.028495,
		35.650200, 37.990932, 43.307003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186218, 38.625240, 43.584846>,  <35.857563, 38.659218, 43.326950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186218, 38.625240, 43.584846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329952, 38.253952, 43.623398>,  <35.416191, 38.031178, 43.646530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329952, 38.253952, 43.623398>,  <35.186218, 38.625240, 43.584846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329952, 38.253952, 43.623398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052033, 0.083189, 0.995174,
		-0.931758, -0.362612, -0.018406,
		0.359331, -0.928220, 0.096380,
		35.437752, 37.975487, 43.652313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.619759, 38.177551, 44.043579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949356, 37.950981, 44.049217>,  <35.147114, 37.815041, 44.052601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949356, 37.950981, 44.049217>,  <34.619759, 38.177551, 44.043579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949356, 37.950981, 44.049217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130796, -0.165955, 0.977421,
		-0.551296, -0.807232, -0.210832,
		0.823994, -0.566424, 0.014092,
		35.196552, 37.781055, 44.053444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493996, 37.499142, 44.351505>,  <34.619759, 38.177551, 44.043579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493996, 37.499142, 44.351505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892765, 37.510662, 44.380676>,  <35.132027, 37.517574, 44.398178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892765, 37.510662, 44.380676>,  <34.493996, 37.499142, 44.351505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892765, 37.510662, 44.380676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056232, -0.385489, 0.920997,
		0.054638, -0.922263, -0.382683,
		0.996922, 0.028803, 0.072924,
		35.191841, 37.519302, 44.402554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694981, 36.910465, 44.760250>,  <34.493996, 37.499142, 44.351505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694981, 36.910465, 44.760250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019428, 37.142181, 44.792534>,  <35.214096, 37.281212, 44.811905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019428, 37.142181, 44.792534>,  <34.694981, 36.910465, 44.760250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019428, 37.142181, 44.792534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046941, -0.202028, 0.978254,
		0.582996, -0.789690, -0.191060,
		0.811117, 0.579287, 0.080713,
		35.262764, 37.315968, 44.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142067, 36.491627, 45.149277>,  <34.694981, 36.910465, 44.760250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142067, 36.491627, 45.149277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244133, 36.877274, 45.178589>,  <35.305370, 37.108662, 45.196178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244133, 36.877274, 45.178589>,  <35.142067, 36.491627, 45.149277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244133, 36.877274, 45.178589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029322, -0.068041, 0.997252,
		0.966454, -0.256609, 0.010909,
		0.255162, 0.964117, 0.073282,
		35.320683, 37.166508, 45.200573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584396, 36.452499, 45.611183>,  <35.142067, 36.491627, 45.149277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584396, 36.452499, 45.611183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516945, 36.846729, 45.616905>,  <35.476475, 37.083267, 45.620338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516945, 36.846729, 45.616905>,  <35.584396, 36.452499, 45.611183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516945, 36.846729, 45.616905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193397, 0.018849, 0.980940,
		0.966520, 0.168186, -0.193786,
		-0.168633, 0.985575, 0.014309,
		35.466354, 37.142403, 45.621197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125751, 36.765209, 45.954636>,  <35.584396, 36.452499, 45.611183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125751, 36.765209, 45.954636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792366, 36.984665, 45.980972>,  <35.592335, 37.116341, 45.996773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792366, 36.984665, 45.980972>,  <36.125751, 36.765209, 45.954636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792366, 36.984665, 45.980972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140684, 0.095461, 0.985442,
		0.534371, 0.830589, -0.156749,
		-0.833460, 0.548643, 0.065839,
		35.542328, 37.149258, 46.000725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324718, 37.314415, 46.324989>,  <36.125751, 36.765209, 45.954636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324718, 37.314415, 46.324989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926071, 37.334705, 46.350830>,  <35.686882, 37.346878, 46.366333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926071, 37.334705, 46.350830>,  <36.324718, 37.314415, 46.324989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926071, 37.334705, 46.350830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073039, 0.187525, 0.979541,
		0.037570, 0.980949, -0.190596,
		-0.996621, 0.050722, 0.064602,
		35.627087, 37.349922, 46.370213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203278, 37.819035, 46.787308>,  <36.324718, 37.314415, 46.324989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203278, 37.819035, 46.787308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852783, 37.627899, 46.762390>,  <35.642487, 37.513218, 46.747440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852783, 37.627899, 46.762390>,  <36.203278, 37.819035, 46.787308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852783, 37.627899, 46.762390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096749, 0.047807, 0.994160,
		-0.472073, 0.877144, -0.088121,
		-0.876234, -0.477842, -0.062294,
		35.589912, 37.484547, 46.743702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671356, 38.215458, 47.088974>,  <36.203278, 37.819035, 46.787308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671356, 38.215458, 47.088974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536949, 37.839676, 47.115849>,  <35.456303, 37.614208, 47.131973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536949, 37.839676, 47.115849>,  <35.671356, 38.215458, 47.088974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536949, 37.839676, 47.115849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023205, 0.079570, 0.996559,
		-0.941569, 0.333304, -0.048537,
		-0.336019, -0.939456, 0.067186,
		35.436142, 37.557838, 47.136005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021404, 38.203598, 47.459690>,  <35.671356, 38.215458, 47.088974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021404, 38.203598, 47.459690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157429, 37.832058, 47.518478>,  <35.239044, 37.609135, 47.553753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157429, 37.832058, 47.518478>,  <35.021404, 38.203598, 47.459690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157429, 37.832058, 47.518478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119220, 0.112445, 0.986480,
		-0.932817, -0.352981, -0.072500,
		0.340056, -0.928849, 0.146973,
		35.259445, 37.553402, 47.562569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632828, 37.918133, 47.973915>,  <35.021404, 38.203598, 47.459690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632828, 37.918133, 47.973915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964664, 37.694828, 47.969643>,  <35.163769, 37.560844, 47.967079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964664, 37.694828, 47.969643>,  <34.632828, 37.918133, 47.973915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964664, 37.694828, 47.969643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005515, -0.010930, 0.999925,
		-0.558337, -0.829593, -0.005989,
		0.829597, -0.558262, -0.010678,
		35.213543, 37.527351, 47.966438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692249, 37.810429, 48.693825>,  <34.632828, 37.918133, 47.973915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692249, 37.810429, 48.693825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029022, 37.638699, 48.563080>,  <35.231087, 37.535660, 48.484634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029022, 37.638699, 48.563080>,  <34.692249, 37.810429, 48.693825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029022, 37.638699, 48.563080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274304, -0.181104, 0.944436,
		-0.464667, -0.884805, -0.034710,
		0.841927, -0.429327, -0.326859,
		35.281601, 37.509899, 48.465023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806641, 37.389721, 49.285229>,  <34.692249, 37.810429, 48.693825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806641, 37.389721, 49.285229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136944, 37.356438, 49.062084>,  <35.335125, 37.336468, 48.928200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136944, 37.356438, 49.062084>,  <34.806641, 37.389721, 49.285229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136944, 37.356438, 49.062084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501799, -0.343230, 0.793972,
		-0.257536, -0.935559, -0.241671,
		0.825756, -0.083206, -0.557857,
		35.384670, 37.331474, 48.894726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067749, 36.758690, 49.438492>,  <34.806641, 37.389721, 49.285229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067749, 36.758690, 49.438492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375687, 36.984043, 49.318531>,  <35.560448, 37.119255, 49.246555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375687, 36.984043, 49.318531>,  <35.067749, 36.758690, 49.438492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375687, 36.984043, 49.318531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545395, -0.336643, 0.767604,
		0.331493, -0.754501, -0.566428,
		0.769842, 0.563383, -0.299907,
		35.606640, 37.153057, 49.228558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570976, 36.310661, 49.444153>,  <35.067749, 36.758690, 49.438492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570976, 36.310661, 49.444153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730400, 36.673546, 49.497978>,  <35.826054, 36.891277, 49.530273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730400, 36.673546, 49.497978>,  <35.570976, 36.310661, 49.444153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730400, 36.673546, 49.497978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577471, -0.362223, 0.731657,
		0.712514, -0.213901, -0.668259,
		0.398561, 0.907216, 0.134567,
		35.849968, 36.945709, 49.538349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277180, 36.220081, 49.509026>,  <35.570976, 36.310661, 49.444153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277180, 36.220081, 49.509026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217400, 36.578747, 49.675720>,  <36.181534, 36.793945, 49.775738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217400, 36.578747, 49.675720>,  <36.277180, 36.220081, 49.509026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217400, 36.578747, 49.675720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671571, -0.217288, 0.708364,
		0.725712, 0.385729, -0.569697,
		-0.149448, 0.896660, 0.416733,
		36.172565, 36.847744, 49.800739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989605, 36.535557, 49.661552>,  <36.277180, 36.220081, 49.509026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989605, 36.535557, 49.661552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727955, 36.721546, 49.900188>,  <36.570965, 36.833138, 50.043369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727955, 36.721546, 49.900188>,  <36.989605, 36.535557, 49.661552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727955, 36.721546, 49.900188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619465, -0.123278, 0.775284,
		0.434032, 0.876701, -0.207394,
		-0.654125, 0.464972, 0.596592,
		36.531715, 36.861038, 50.079166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394779, 37.021030, 50.117538>,  <36.989605, 36.535557, 49.661552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394779, 37.021030, 50.117538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058178, 36.941711, 50.318554>,  <36.856216, 36.894119, 50.439163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058178, 36.941711, 50.318554>,  <37.394779, 37.021030, 50.117538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058178, 36.941711, 50.318554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531087, -0.133022, 0.836811,
		-0.099092, 0.971072, 0.217254,
		-0.841503, -0.198302, 0.502542,
		36.805725, 36.882221, 50.469318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487648, 37.318554, 50.752113>,  <37.394779, 37.021030, 50.117538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487648, 37.318554, 50.752113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202141, 37.041718, 50.795094>,  <37.030838, 36.875614, 50.820881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202141, 37.041718, 50.795094>,  <37.487648, 37.318554, 50.752113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202141, 37.041718, 50.795094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457623, -0.344706, 0.819609,
		-0.530209, 0.634179, 0.562757,
		-0.713764, -0.692095, 0.107448,
		36.988010, 36.834087, 50.827328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611992, 37.217754, 51.435120>,  <37.487648, 37.318554, 50.752113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611992, 37.217754, 51.435120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380798, 36.906475, 51.336857>,  <37.242081, 36.719707, 51.277897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380798, 36.906475, 51.336857>,  <37.611992, 37.217754, 51.435120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380798, 36.906475, 51.336857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195770, -0.424472, 0.884023,
		-0.792217, 0.462858, 0.397685,
		-0.577984, -0.778194, -0.245660,
		37.207401, 36.673016, 51.263157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174496, 37.037388, 52.033157>,  <37.611992, 37.217754, 51.435120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174496, 37.037388, 52.033157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152851, 36.689476, 51.836971>,  <37.139866, 36.480728, 51.719261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152851, 36.689476, 51.836971>,  <37.174496, 37.037388, 52.033157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152851, 36.689476, 51.836971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094305, -0.484533, 0.869675,
		-0.994072, 0.093312, -0.055806,
		-0.054111, -0.869782, -0.490461,
		37.136620, 36.428543, 51.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479950, 36.743484, 52.122242>,  <37.174496, 37.037388, 52.033157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479950, 36.743484, 52.122242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747280, 36.455040, 52.049213>,  <36.907677, 36.281971, 52.005394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747280, 36.455040, 52.049213>,  <36.479950, 36.743484, 52.122242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747280, 36.455040, 52.049213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224653, -0.429643, 0.874607,
		-0.709134, -0.543507, -0.449143,
		0.668326, -0.721115, -0.182574,
		36.947777, 36.238705, 51.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199802, 36.082184, 52.268692>,  <36.479950, 36.743484, 52.122242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199802, 36.082184, 52.268692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598087, 36.090515, 52.304733>,  <36.837059, 36.095512, 52.326359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598087, 36.090515, 52.304733>,  <36.199802, 36.082184, 52.268692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598087, 36.090515, 52.304733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072762, -0.424901, 0.902311,
		0.057076, -0.905000, -0.421565,
		0.995715, 0.020826, 0.090102,
		36.896801, 36.096764, 52.331764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192768, 35.251835, 52.325150>,  <36.199802, 36.082184, 52.268692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192768, 35.251835, 52.325150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929577, 34.963970, 52.413837>,  <35.771664, 34.791252, 52.467049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929577, 34.963970, 52.413837>,  <36.192768, 35.251835, 52.325150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929577, 34.963970, 52.413837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536727, 0.241666, -0.808407,
		0.528197, -0.650913, -0.545271,
		-0.657977, -0.719659, 0.221715,
		35.732185, 34.748074, 52.480350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043907, 34.850018, 51.688694>,  <36.192768, 35.251835, 52.325150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043907, 34.850018, 51.688694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729408, 34.818211, 51.933804>,  <35.540710, 34.799126, 52.080868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729408, 34.818211, 51.933804>,  <36.043907, 34.850018, 51.688694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729408, 34.818211, 51.933804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617536, 0.066532, -0.783723,
		0.021551, -0.994611, -0.101417,
		-0.786247, -0.079519, 0.612774,
		35.493534, 34.794353, 52.117638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677078, 34.293636, 51.432045>,  <36.043907, 34.850018, 51.688694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677078, 34.293636, 51.432045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432182, 34.533970, 51.637627>,  <35.285244, 34.678169, 51.760975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432182, 34.533970, 51.637627>,  <35.677078, 34.293636, 51.432045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432182, 34.533970, 51.637627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621056, 0.036847, -0.782899,
		-0.489333, -0.798522, 0.350594,
		-0.612244, 0.600837, 0.513957,
		35.248508, 34.714222, 51.791813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992336, 33.981739, 51.380371>,  <35.677078, 34.293636, 51.432045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992336, 33.981739, 51.380371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.886204, 34.350323, 51.493870>,  <34.822525, 34.571472, 51.561970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.886204, 34.350323, 51.493870>,  <34.992336, 33.981739, 51.380371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886204, 34.350323, 51.493870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671260, 0.034711, -0.740409,
		-0.692106, -0.386919, 0.609330,
		-0.265327, 0.921460, 0.283747,
		34.806606, 34.626762, 51.578995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213047, 34.019814, 51.367046>,  <34.992336, 33.981739, 51.380371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213047, 34.019814, 51.367046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363121, 34.390190, 51.349735>,  <34.453167, 34.612415, 51.339348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363121, 34.390190, 51.349735>,  <34.213047, 34.019814, 51.367046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363121, 34.390190, 51.349735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677428, 0.242023, -0.694634,
		-0.632714, 0.289934, 0.718061,
		0.375185, 0.925939, -0.043278,
		34.475677, 34.667973, 51.336750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628807, 34.453773, 51.347046>,  <34.213047, 34.019814, 51.367046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628807, 34.453773, 51.347046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936985, 34.656334, 51.192142>,  <34.121891, 34.777870, 51.099201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936985, 34.656334, 51.192142>,  <33.628807, 34.453773, 51.347046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936985, 34.656334, 51.192142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566194, 0.264377, -0.780724,
		-0.292974, 0.820772, 0.490408,
		0.770449, 0.506398, -0.387260,
		34.168121, 34.808254, 51.075966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337364, 35.112408, 51.149609>,  <33.628807, 34.453773, 51.347046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337364, 35.112408, 51.149609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689461, 35.094925, 50.960602>,  <33.900719, 35.084435, 50.847198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689461, 35.094925, 50.960602>,  <33.337364, 35.112408, 51.149609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689461, 35.094925, 50.960602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439727, 0.299183, -0.846835,
		0.178379, 0.953195, 0.244134,
		0.880239, -0.043705, -0.472513,
		33.953533, 35.081814, 50.818848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488144, 35.764908, 50.835331>,  <33.337364, 35.112408, 51.149609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488144, 35.764908, 50.835331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724682, 35.512985, 50.633869>,  <33.866604, 35.361832, 50.512993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724682, 35.512985, 50.633869>,  <33.488144, 35.764908, 50.835331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724682, 35.512985, 50.633869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275865, 0.428885, -0.860207,
		0.757768, 0.647617, 0.079877,
		0.591343, -0.629802, -0.503650,
		33.902084, 35.324043, 50.482773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569542, 36.118954, 50.220173>,  <33.488144, 35.764908, 50.835331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569542, 36.118954, 50.220173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729259, 35.762676, 50.133244>,  <33.825092, 35.548912, 50.081085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729259, 35.762676, 50.133244>,  <33.569542, 36.118954, 50.220173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729259, 35.762676, 50.133244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175819, 0.158252, -0.971619,
		0.899805, 0.426176, -0.093411,
		0.399298, -0.890691, -0.217326,
		33.849049, 35.495468, 50.068047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101677, 36.249996, 49.921474>,  <33.569542, 36.118954, 50.220173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101677, 36.249996, 49.921474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983524, 35.890171, 49.792770>,  <33.912632, 35.674274, 49.715549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983524, 35.890171, 49.792770>,  <34.101677, 36.249996, 49.921474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983524, 35.890171, 49.792770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397261, 0.421939, -0.814955,
		0.868870, -0.112898, -0.481995,
		-0.295379, -0.899568, -0.321760,
		33.894909, 35.620300, 49.696243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442749, 36.099293, 49.309345>,  <34.101677, 36.249996, 49.921474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442749, 36.099293, 49.309345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100208, 35.893833, 49.330624>,  <33.894684, 35.770557, 49.343391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100208, 35.893833, 49.330624>,  <34.442749, 36.099293, 49.309345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100208, 35.893833, 49.330624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211183, 0.254343, -0.943775,
		0.471239, -0.819436, -0.326281,
		-0.856350, -0.513649, 0.053194,
		33.843304, 35.739738, 49.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479408, 35.687340, 48.654469>,  <34.442749, 36.099293, 49.309345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479408, 35.687340, 48.654469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097630, 35.679085, 48.773533>,  <33.868561, 35.674129, 48.844971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097630, 35.679085, 48.773533>,  <34.479408, 35.687340, 48.654469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097630, 35.679085, 48.773533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297022, 0.160772, -0.941239,
		-0.028430, -0.986776, -0.159579,
		-0.954447, -0.020639, 0.297664,
		33.811295, 35.672894, 48.862831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185577, 35.226387, 48.143826>,  <34.479408, 35.687340, 48.654469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185577, 35.226387, 48.143826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882469, 35.435135, 48.300510>,  <33.700603, 35.560383, 48.394520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882469, 35.435135, 48.300510>,  <34.185577, 35.226387, 48.143826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882469, 35.435135, 48.300510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426379, 0.058416, -0.902656,
		-0.493954, -0.851021, 0.178250,
		-0.757767, 0.521872, 0.391713,
		33.655140, 35.591698, 48.418026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763378, 35.126556, 47.702183>,  <34.185577, 35.226387, 48.143826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763378, 35.126556, 47.702183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587631, 35.418644, 47.911461>,  <33.482182, 35.593895, 48.037029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587631, 35.418644, 47.911461>,  <33.763378, 35.126556, 47.702183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587631, 35.418644, 47.911461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515799, 0.271771, -0.812460,
		-0.735464, -0.626835, 0.257238,
		-0.439368, 0.730218, 0.523199,
		33.455822, 35.637711, 48.068420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070801, 35.075294, 47.630913>,  <33.763378, 35.126556, 47.702183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070801, 35.075294, 47.630913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166878, 35.454697, 47.713524>,  <33.224525, 35.682339, 47.763092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166878, 35.454697, 47.713524>,  <33.070801, 35.075294, 47.630913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166878, 35.454697, 47.713524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360775, 0.284740, -0.888124,
		-0.901193, 0.138811, 0.410588,
		0.240192, 0.948501, 0.206527,
		33.238934, 35.739246, 47.775482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469437, 35.400612, 47.427605>,  <33.070801, 35.075294, 47.630913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469437, 35.400612, 47.427605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772255, 35.661934, 47.424118>,  <32.953945, 35.818726, 47.422028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772255, 35.661934, 47.424118>,  <32.469437, 35.400612, 47.427605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772255, 35.661934, 47.424118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176941, 0.192159, -0.965281,
		-0.628949, 0.732302, 0.261069,
		0.757044, 0.653306, -0.008716,
		32.999367, 35.857925, 47.421505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141239, 36.024284, 47.056049>,  <32.469437, 35.400612, 47.427605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141239, 36.024284, 47.056049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537994, 36.074871, 47.051037>,  <32.776047, 36.105225, 47.048027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537994, 36.074871, 47.051037>,  <32.141239, 36.024284, 47.056049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537994, 36.074871, 47.051037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045283, 0.259544, -0.964669,
		-0.118748, 0.957414, 0.263167,
		0.991891, 0.126469, -0.012534,
		32.835564, 36.112812, 47.047276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299156, 36.705128, 46.643879>,  <32.141239, 36.024284, 47.056049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299156, 36.705128, 46.643879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.652790, 36.518230, 46.640446>,  <32.864971, 36.406090, 46.638386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.652790, 36.518230, 46.640446>,  <32.299156, 36.705128, 46.643879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652790, 36.518230, 46.640446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143762, 0.289393, -0.946353,
		0.444664, 0.835423, 0.323020,
		0.884085, -0.467247, -0.008581,
		32.918015, 36.378056, 46.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689583, 37.235432, 46.395748>,  <32.299156, 36.705128, 46.643879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689583, 37.235432, 46.395748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886143, 36.898502, 46.307182>,  <33.004078, 36.696346, 46.254044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886143, 36.898502, 46.307182>,  <32.689583, 37.235432, 46.395748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886143, 36.898502, 46.307182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026452, 0.239674, -0.970493,
		0.870532, 0.482758, 0.095494,
		0.491400, -0.842319, -0.221414,
		33.033562, 36.645805, 46.240757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988091, 37.388695, 45.758671>,  <32.689583, 37.235432, 46.395748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988091, 37.388695, 45.758671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026512, 36.990551, 45.760929>,  <33.049564, 36.751663, 45.762283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026512, 36.990551, 45.760929>,  <32.988091, 37.388695, 45.758671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026512, 36.990551, 45.760929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073664, 0.001448, -0.997282,
		0.992647, 0.096206, 0.073461,
		0.096051, -0.995360, 0.005649,
		33.055328, 36.691944, 45.762623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230022, 37.260250, 45.138149>,  <32.988091, 37.388695, 45.758671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230022, 37.260250, 45.138149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120945, 36.889618, 45.241756>,  <33.055500, 36.667240, 45.303921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120945, 36.889618, 45.241756>,  <33.230022, 37.260250, 45.138149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120945, 36.889618, 45.241756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000644, -0.269398, -0.963029,
		0.962101, -0.262443, 0.074059,
		-0.272691, -0.926579, 0.259019,
		33.039139, 36.611645, 45.319462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.709255, 41.398682, 34.340206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451050, 41.099682, 34.277527>,  <39.296127, 40.920280, 34.239922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451050, 41.099682, 34.277527>,  <39.709255, 41.398682, 34.340206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451050, 41.099682, 34.277527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290449, -0.430012, 0.854827,
		-0.706365, 0.506290, 0.494690,
		-0.645513, -0.747502, -0.156694,
		39.257397, 40.875431, 34.230518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564632, 41.214752, 34.996979>,  <39.709255, 41.398682, 34.340206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564632, 41.214752, 34.996979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474167, 40.902203, 34.764324>,  <39.419888, 40.714672, 34.624733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474167, 40.902203, 34.764324>,  <39.564632, 41.214752, 34.996979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474167, 40.902203, 34.764324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486691, -0.607880, 0.627387,
		-0.843791, -0.141186, 0.517769,
		-0.226163, -0.781376, -0.581637,
		39.406319, 40.667789, 34.589832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262287, 40.754921, 35.321640>,  <39.564632, 41.214752, 34.996979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262287, 40.754921, 35.321640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420067, 40.515648, 35.042618>,  <39.514736, 40.372082, 34.875206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420067, 40.515648, 35.042618>,  <39.262287, 40.754921, 35.321640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420067, 40.515648, 35.042618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465073, -0.524750, 0.712982,
		-0.792539, -0.605649, 0.071214,
		0.394448, -0.598186, -0.697556,
		39.538403, 40.336193, 34.833351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159061, 40.096508, 35.525864>,  <39.262287, 40.754921, 35.321640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159061, 40.096508, 35.525864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434708, 40.029064, 35.243958>,  <39.600094, 39.988598, 35.074814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434708, 40.029064, 35.243958>,  <39.159061, 40.096508, 35.525864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434708, 40.029064, 35.243958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396712, -0.726091, 0.561615,
		-0.606419, -0.666605, -0.433468,
		0.689112, -0.168612, -0.704766,
		39.641441, 39.978481, 35.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280434, 39.370686, 35.578533>,  <39.159061, 40.096508, 35.525864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280434, 39.370686, 35.578533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.584377, 39.495762, 35.350555>,  <39.766743, 39.570808, 35.213768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.584377, 39.495762, 35.350555>,  <39.280434, 39.370686, 35.578533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584377, 39.495762, 35.350555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512467, -0.827553, 0.229200,
		-0.399990, -0.466237, -0.789069,
		0.759858, 0.312695, -0.569945,
		39.812336, 39.589569, 35.179573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455540, 38.817307, 35.095051>,  <39.280434, 39.370686, 35.578533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455540, 38.817307, 35.095051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775768, 39.051022, 35.148270>,  <39.967903, 39.191250, 35.180202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775768, 39.051022, 35.148270>,  <39.455540, 38.817307, 35.095051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775768, 39.051022, 35.148270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572511, -0.811340, 0.118145,
		0.176979, -0.018411, -0.984042,
		0.800568, 0.584284, 0.133049,
		40.015938, 39.226307, 35.188183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975395, 38.578243, 34.721581>,  <39.455540, 38.817307, 35.095051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975395, 38.578243, 34.721581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200314, 38.798599, 34.968266>,  <40.335266, 38.930813, 35.116276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200314, 38.798599, 34.968266>,  <39.975395, 38.578243, 34.721581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200314, 38.798599, 34.968266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672915, -0.738291, 0.045953,
		0.480632, 0.389159, -0.785843,
		0.562298, 0.550891, 0.616717,
		40.369003, 38.963867, 35.153282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708572, 38.497086, 34.435444>,  <39.975395, 38.578243, 34.721581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708572, 38.497086, 34.435444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796715, 38.605347, 34.810291>,  <40.849598, 38.670303, 35.035202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796715, 38.605347, 34.810291>,  <40.708572, 38.497086, 34.435444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796715, 38.605347, 34.810291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742107, -0.670012, 0.019008,
		0.633026, 0.691255, -0.348488,
		0.220352, 0.270648, 0.937120,
		40.862820, 38.686543, 35.091427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430336, 38.513103, 34.545757>,  <40.708572, 38.497086, 34.435444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430336, 38.513103, 34.545757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271408, 38.451401, 34.907608>,  <41.176052, 38.414379, 35.124718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271408, 38.451401, 34.907608>,  <41.430336, 38.513103, 34.545757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271408, 38.451401, 34.907608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690494, -0.699548, 0.183985,
		0.604449, 0.697738, 0.384452,
		-0.397316, -0.154252, 0.904625,
		41.152214, 38.405125, 35.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036404, 38.459038, 34.980965>,  <41.430336, 38.513103, 34.545757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036404, 38.459038, 34.980965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.740376, 38.303108, 35.200176>,  <41.562759, 38.209549, 35.331703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.740376, 38.303108, 35.200176>,  <42.036404, 38.459038, 34.980965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740376, 38.303108, 35.200176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583112, -0.777937, 0.234082,
		0.335080, 0.492799, 0.803039,
		-0.740069, -0.389825, 0.548028,
		41.518356, 38.186161, 35.364586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351170, 38.214764, 35.622749>,  <42.036404, 38.459038, 34.980965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351170, 38.214764, 35.622749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012463, 38.005627, 35.583511>,  <41.809238, 37.880146, 35.559967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012463, 38.005627, 35.583511>,  <42.351170, 38.214764, 35.622749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012463, 38.005627, 35.583511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495274, -0.842139, 0.213323,
		-0.194145, 0.132050, 0.972045,
		-0.846765, -0.522844, -0.098096,
		41.758434, 37.848774, 35.554081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406128, 37.698936, 36.177822>,  <42.351170, 38.214764, 35.622749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406128, 37.698936, 36.177822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120201, 37.553814, 35.938686>,  <41.948647, 37.466740, 35.795204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120201, 37.553814, 35.938686>,  <42.406128, 37.698936, 36.177822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120201, 37.553814, 35.938686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484405, -0.873465, -0.049105,
		-0.504375, -0.324697, 0.800111,
		-0.714813, -0.362810, -0.597839,
		41.905758, 37.444969, 35.759335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173908, 37.068554, 36.515259>,  <42.406128, 37.698936, 36.177822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173908, 37.068554, 36.515259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.085011, 37.057892, 36.125408>,  <42.031670, 37.051495, 35.891499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.085011, 37.057892, 36.125408>,  <42.173908, 37.068554, 36.515259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085011, 37.057892, 36.125408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552675, -0.826956, -0.103410,
		-0.803217, -0.561634, 0.198521,
		-0.222247, -0.026657, -0.974626,
		42.018337, 37.049896, 35.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050858, 36.387493, 36.407284>,  <42.173908, 37.068554, 36.515259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050858, 36.387493, 36.407284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115276, 36.530998, 36.039513>,  <42.153927, 36.617100, 35.818848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115276, 36.530998, 36.039513>,  <42.050858, 36.387493, 36.407284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115276, 36.530998, 36.039513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543013, -0.810122, -0.220997,
		-0.824137, -0.463673, -0.325279,
		0.161045, 0.358762, -0.919431,
		42.163589, 36.638626, 35.763683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985893, 35.792519, 35.906513>,  <42.050858, 36.387493, 36.407284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985893, 35.792519, 35.906513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178143, 36.061028, 35.680805>,  <42.293491, 36.222134, 35.545380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178143, 36.061028, 35.680805>,  <41.985893, 35.792519, 35.906513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178143, 36.061028, 35.680805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571899, -0.727730, -0.378603,
		-0.664780, -0.140739, -0.733662,
		0.480624, 0.671268, -0.564269,
		42.322330, 36.262409, 35.511524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022831, 35.474487, 35.176331>,  <41.985893, 35.792519, 35.906513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022831, 35.474487, 35.176331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285580, 35.775337, 35.197624>,  <42.443230, 35.955845, 35.210400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285580, 35.775337, 35.197624>,  <42.022831, 35.474487, 35.176331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285580, 35.775337, 35.197624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748818, -0.642457, -0.162853,
		-0.088283, 0.146837, -0.985213,
		0.656870, 0.752122, 0.053236,
		42.482639, 36.000973, 35.213596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504593, 35.414379, 34.546276>,  <42.022831, 35.474487, 35.176331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504593, 35.414379, 34.546276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686256, 35.628086, 34.831459>,  <42.795254, 35.756310, 35.002567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686256, 35.628086, 34.831459>,  <42.504593, 35.414379, 34.546276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686256, 35.628086, 34.831459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769168, -0.638950, -0.011155,
		0.449581, 0.553446, -0.701123,
		0.454156, 0.534267, 0.712953,
		42.822502, 35.788364, 35.045345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107632, 35.410007, 34.338509>,  <42.504593, 35.414379, 34.546276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107632, 35.410007, 34.338509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.145920, 35.498447, 34.726727>,  <43.168892, 35.551510, 34.959656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.145920, 35.498447, 34.726727>,  <43.107632, 35.410007, 34.338509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145920, 35.498447, 34.726727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684607, -0.722422, 0.097055,
		0.722600, 0.655151, -0.220515,
		0.095719, 0.221098, 0.970543,
		43.174637, 35.564777, 35.017891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788506, 35.283417, 34.235130>,  <43.107632, 35.410007, 34.338509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788506, 35.283417, 34.235130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676476, 35.243656, 34.617058>,  <43.609257, 35.219799, 34.846214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676476, 35.243656, 34.617058>,  <43.788506, 35.283417, 34.235130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676476, 35.243656, 34.617058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692393, -0.709859, 0.129196,
		0.664944, 0.697294, 0.267639,
		-0.280074, -0.099403, 0.954818,
		43.592453, 35.213837, 34.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409092, 35.223415, 34.643238>,  <43.788506, 35.283417, 34.235130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409092, 35.223415, 34.643238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127480, 35.073200, 34.884338>,  <43.958511, 34.983070, 35.028999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127480, 35.073200, 34.884338>,  <44.409092, 35.223415, 34.643238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127480, 35.073200, 34.884338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589972, -0.781733, 0.202058,
		0.395309, 0.497861, 0.771923,
		-0.704034, -0.375537, 0.602750,
		43.916267, 34.960541, 35.065163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763973, 34.965469, 35.251904>,  <44.409092, 35.223415, 34.643238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763973, 34.965469, 35.251904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418449, 34.765240, 35.229061>,  <44.211136, 34.645103, 35.215355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418449, 34.765240, 35.229061>,  <44.763973, 34.965469, 35.251904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418449, 34.765240, 35.229061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489865, -0.860962, 0.137026,
		-0.117761, 0.090388, 0.988920,
		-0.863808, -0.500574, -0.057110,
		44.159306, 34.615067, 35.211929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184902, 35.583061, 34.889004>,  <44.763973, 34.965469, 35.251904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184902, 35.583061, 34.889004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.064697, 35.828571, 35.181023>,  <44.992573, 35.975880, 35.356232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.064697, 35.828571, 35.181023>,  <45.184902, 35.583061, 34.889004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064697, 35.828571, 35.181023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609171, 0.465449, -0.642081,
		-0.733895, -0.637677, 0.234023,
		-0.300514, 0.613780, 0.730045,
		44.974545, 36.012707, 35.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268990, 36.005856, 34.182487>,  <45.184902, 35.583061, 34.889004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268990, 36.005856, 34.182487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563591, 36.128731, 34.423553>,  <45.740353, 36.202454, 34.568192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563591, 36.128731, 34.423553>,  <45.268990, 36.005856, 34.182487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563591, 36.128731, 34.423553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355304, 0.933817, -0.041772,
		-0.575609, -0.183363, 0.796902,
		0.736501, 0.307186, 0.602663,
		45.784542, 36.220886, 34.604351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036804, 36.315285, 34.870239>,  <45.268990, 36.005856, 34.182487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036804, 36.315285, 34.870239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.364662, 36.452690, 34.686855>,  <45.561375, 36.535133, 34.576824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.364662, 36.452690, 34.686855>,  <45.036804, 36.315285, 34.870239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364662, 36.452690, 34.686855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461688, 0.869884, -0.173626,
		0.339161, 0.353975, 0.871591,
		0.819642, 0.343516, -0.458457,
		45.610554, 36.555744, 34.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124229, 37.011967, 35.142529>,  <45.036804, 36.315285, 34.870239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124229, 37.011967, 35.142529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.342419, 37.007786, 34.807304>,  <45.473331, 37.005276, 34.606171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.342419, 37.007786, 34.807304>,  <45.124229, 37.011967, 35.142529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342419, 37.007786, 34.807304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403296, 0.873277, -0.273387,
		0.734718, 0.487112, 0.472134,
		0.545474, -0.010452, -0.838063,
		45.506062, 37.004650, 34.555885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332443, 37.674526, 35.091820>,  <45.124229, 37.011967, 35.142529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332443, 37.674526, 35.091820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340988, 37.520241, 34.722870>,  <45.346115, 37.427670, 34.501499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340988, 37.520241, 34.722870>,  <45.332443, 37.674526, 35.091820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340988, 37.520241, 34.722870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616908, 0.720920, -0.315753,
		0.786746, 0.575763, -0.222549,
		0.021359, -0.385710, -0.922373,
		45.347397, 37.404530, 34.446159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551472, 38.313946, 34.670441>,  <45.332443, 37.674526, 35.091820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551472, 38.313946, 34.670441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365772, 38.033279, 34.454239>,  <45.254353, 37.864880, 34.324520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365772, 38.033279, 34.454239>,  <45.551472, 38.313946, 34.670441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365772, 38.033279, 34.454239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636264, 0.688731, -0.347587,
		0.616149, 0.182535, -0.766186,
		-0.464249, -0.701662, -0.540502,
		45.226498, 37.822781, 34.292088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432037, 38.724510, 34.030380>,  <45.551472, 38.313946, 34.670441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432037, 38.724510, 34.030380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196934, 38.401180, 34.016850>,  <45.055870, 38.207180, 34.008732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196934, 38.401180, 34.016850>,  <45.432037, 38.724510, 34.030380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196934, 38.401180, 34.016850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763077, 0.567779, -0.308773,
		0.268796, -0.155671, -0.950534,
		-0.587760, -0.808327, -0.033827,
		45.020607, 38.158684, 34.006702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048496, 38.665829, 33.394684>,  <45.432037, 38.724510, 34.030380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048496, 38.665829, 33.394684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831005, 38.411915, 33.614285>,  <44.700512, 38.259567, 33.746044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831005, 38.411915, 33.614285>,  <45.048496, 38.665829, 33.394684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831005, 38.411915, 33.614285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839002, 0.427445, -0.336700,
		-0.020937, -0.643690, -0.765000,
		-0.543725, -0.634787, 0.549006,
		44.667889, 38.221478, 33.778988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576260, 38.414730, 32.963009>,  <45.048496, 38.665829, 33.394684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576260, 38.414730, 32.963009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426868, 38.344658, 33.327389>,  <44.337234, 38.302612, 33.546017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426868, 38.344658, 33.327389>,  <44.576260, 38.414730, 32.963009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426868, 38.344658, 33.327389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878577, 0.381935, -0.286753,
		-0.297690, -0.907434, -0.296554,
		-0.373474, -0.175182, 0.910949,
		44.314827, 38.292103, 33.600674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896526, 37.992645, 32.904739>,  <44.576260, 38.414730, 32.963009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896526, 37.992645, 32.904739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895855, 38.173820, 33.261356>,  <43.895451, 38.282524, 33.475327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895855, 38.173820, 33.261356>,  <43.896526, 37.992645, 32.904739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895855, 38.173820, 33.261356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868331, 0.441529, -0.225948,
		-0.495982, -0.774531, 0.392560,
		-0.001677, 0.452938, 0.891540,
		43.895351, 38.309704, 33.528820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274666, 37.871181, 33.131195>,  <43.896526, 37.992645, 32.904739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274666, 37.871181, 33.131195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.413624, 38.184612, 33.337234>,  <43.496998, 38.372669, 33.460857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.413624, 38.184612, 33.337234>,  <43.274666, 37.871181, 33.131195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413624, 38.184612, 33.337234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827270, 0.514738, -0.225100,
		-0.441524, -0.347927, 0.827045,
		0.347393, 0.783577, 0.515098,
		43.517841, 38.419685, 33.491764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722313, 38.157413, 33.459400>,  <43.274666, 37.871181, 33.131195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722313, 38.157413, 33.459400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973747, 38.465725, 33.500919>,  <43.124607, 38.650711, 33.525829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973747, 38.465725, 33.500919>,  <42.722313, 38.157413, 33.459400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973747, 38.465725, 33.500919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703034, 0.620200, -0.347988,
		-0.332596, 0.145770, 0.931736,
		0.628588, 0.770780, 0.103795,
		43.162323, 38.696960, 33.532059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363110, 38.559284, 33.776855>,  <42.722313, 38.157413, 33.459400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363110, 38.559284, 33.776855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636837, 38.809731, 33.627357>,  <42.801075, 38.959999, 33.537659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636837, 38.809731, 33.627357>,  <42.363110, 38.559284, 33.776855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636837, 38.809731, 33.627357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726968, 0.625714, -0.282842,
		0.056768, 0.465257, 0.883353,
		0.684321, 0.626113, -0.373748,
		42.842133, 38.997566, 33.515232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124771, 39.225533, 34.015507>,  <42.363110, 38.559284, 33.776855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124771, 39.225533, 34.015507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.385754, 39.309139, 33.724133>,  <42.542343, 39.359303, 33.549309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.385754, 39.309139, 33.724133>,  <42.124771, 39.225533, 34.015507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385754, 39.309139, 33.724133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622786, 0.695553, -0.358251,
		0.431784, 0.687401, 0.583989,
		0.652457, 0.209013, -0.728432,
		42.581490, 39.371841, 33.505604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301304, 39.869785, 34.071533>,  <42.124771, 39.225533, 34.015507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301304, 39.869785, 34.071533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382172, 39.797810, 33.686462>,  <42.430691, 39.754623, 33.455421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382172, 39.797810, 33.686462>,  <42.301304, 39.869785, 34.071533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382172, 39.797810, 33.686462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709655, 0.650503, -0.270623,
		0.674920, 0.737880, 0.003817,
		0.202170, -0.179940, -0.962678,
		42.442822, 39.743828, 33.397659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442360, 40.500690, 33.813618>,  <42.301304, 39.869785, 34.071533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442360, 40.500690, 33.813618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328186, 40.292881, 33.491470>,  <42.259682, 40.168194, 33.298180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328186, 40.292881, 33.491470>,  <42.442360, 40.500690, 33.813618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328186, 40.292881, 33.491470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656563, 0.718163, -0.230578,
		0.698180, 0.462964, -0.546086,
		-0.285430, -0.519525, -0.805372,
		42.242558, 40.137024, 33.249859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342419, 41.035721, 33.281658>,  <42.442360, 40.500690, 33.813618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342419, 41.035721, 33.281658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.158833, 40.713047, 33.132736>,  <42.048683, 40.519444, 33.043381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.158833, 40.713047, 33.132736>,  <42.342419, 41.035721, 33.281658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158833, 40.713047, 33.132736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749712, 0.576506, -0.324921,
		0.476747, 0.129998, -0.869375,
		-0.458961, -0.806686, -0.372308,
		42.021145, 40.471043, 33.021042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132168, 41.261208, 32.586437>,  <42.342419, 41.035721, 33.281658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132168, 41.261208, 32.586437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895920, 40.957539, 32.695854>,  <41.754173, 40.775337, 32.761505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895920, 40.957539, 32.695854>,  <42.132168, 41.261208, 32.586437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895920, 40.957539, 32.695854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790015, 0.474898, -0.387748,
		0.164462, -0.445115, -0.880241,
		-0.590618, -0.759173, 0.273545,
		41.718735, 40.729786, 32.777916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770199, 40.980247, 31.983599>,  <42.132168, 41.261208, 32.586437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770199, 40.980247, 31.983599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538803, 40.874279, 32.292187>,  <41.399963, 40.810699, 32.477341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538803, 40.874279, 32.292187>,  <41.770199, 40.980247, 31.983599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538803, 40.874279, 32.292187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787591, 0.427501, -0.443782,
		-0.212238, -0.864327, -0.455953,
		-0.578494, -0.264917, 0.771469,
		41.365253, 40.794804, 32.523628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019348, 40.826103, 31.685648>,  <41.770199, 40.980247, 31.983599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019348, 40.826103, 31.685648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946121, 40.848347, 32.078259>,  <40.902187, 40.861694, 32.313824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946121, 40.848347, 32.078259>,  <41.019348, 40.826103, 31.685648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946121, 40.848347, 32.078259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937042, 0.292144, -0.191321,
		-0.297388, -0.954756, -0.001369,
		-0.183064, 0.055614, 0.981526,
		40.891201, 40.865032, 32.372715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417557, 40.530087, 31.703533>,  <41.019348, 40.826103, 31.685648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417557, 40.530087, 31.703533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459778, 40.733192, 32.045536>,  <40.485111, 40.855057, 32.250736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459778, 40.733192, 32.045536>,  <40.417557, 40.530087, 31.703533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459778, 40.733192, 32.045536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881759, 0.445298, -0.155595,
		-0.459738, -0.737488, 0.494724,
		0.105550, 0.507761, 0.855008,
		40.491444, 40.885521, 32.302040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.508331, 38.442417, 41.433853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366261, 38.072277, 41.380825>,  <36.281017, 37.850193, 41.349010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366261, 38.072277, 41.380825>,  <36.508331, 38.442417, 41.433853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366261, 38.072277, 41.380825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512160, -0.073990, -0.855697,
		0.782013, -0.371816, 0.500208,
		-0.355173, -0.925353, -0.132568,
		36.259708, 37.794670, 41.341053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102135, 38.072872, 41.089523>,  <36.508331, 38.442417, 41.433853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102135, 38.072872, 41.089523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785542, 37.832314, 41.045937>,  <36.595585, 37.687977, 41.019783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785542, 37.832314, 41.045937>,  <37.102135, 38.072872, 41.089523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785542, 37.832314, 41.045937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291887, -0.215289, -0.931908,
		0.536989, -0.769396, 0.345939,
		-0.791483, -0.601399, -0.108969,
		36.548096, 37.651894, 41.013245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376945, 37.334213, 40.879112>,  <37.102135, 38.072872, 41.089523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376945, 37.334213, 40.879112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995205, 37.383877, 40.770447>,  <36.766163, 37.413673, 40.705246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995205, 37.383877, 40.770447>,  <37.376945, 37.334213, 40.879112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995205, 37.383877, 40.770447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206623, -0.382375, -0.900609,
		-0.215697, -0.915628, 0.339265,
		-0.954349, 0.124159, -0.271667,
		36.708900, 37.421124, 40.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195484, 36.692627, 40.429184>,  <37.376945, 37.334213, 40.879112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195484, 36.692627, 40.429184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930668, 36.983330, 40.355938>,  <36.771778, 37.157749, 40.311989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930668, 36.983330, 40.355938>,  <37.195484, 36.692627, 40.429184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930668, 36.983330, 40.355938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062521, -0.189923, -0.979806,
		-0.746856, -0.660120, 0.080299,
		-0.662040, 0.726754, -0.183117,
		36.732056, 37.201355, 40.301003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669407, 36.421997, 40.025341>,  <37.195484, 36.692627, 40.429184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669407, 36.421997, 40.025341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662270, 36.816345, 39.958717>,  <36.657986, 37.052956, 39.918743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662270, 36.816345, 39.958717>,  <36.669407, 36.421997, 40.025341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662270, 36.816345, 39.958717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069273, -0.164963, -0.983864,
		-0.997438, -0.029096, -0.065350,
		-0.017846, 0.985870, -0.166556,
		36.656918, 37.112106, 39.908749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224903, 36.451202, 39.410561>,  <36.669407, 36.421997, 40.025341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224903, 36.451202, 39.410561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434326, 36.791664, 39.425621>,  <36.559978, 36.995941, 39.434658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434326, 36.791664, 39.425621>,  <36.224903, 36.451202, 39.410561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434326, 36.791664, 39.425621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072528, -0.000498, -0.997366,
		-0.848898, 0.524909, -0.061994,
		0.523557, 0.851158, 0.037648,
		36.591393, 37.047012, 39.436916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972057, 36.947247, 38.766449>,  <36.224903, 36.451202, 39.410561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972057, 36.947247, 38.766449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315529, 37.109966, 38.891144>,  <36.521614, 37.207600, 38.965961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315529, 37.109966, 38.891144>,  <35.972057, 36.947247, 38.766449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315529, 37.109966, 38.891144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287485, 0.121236, -0.950081,
		-0.424286, 0.905437, -0.012845,
		0.858681, 0.406799, 0.311738,
		36.573132, 37.232006, 38.984665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065735, 37.485889, 38.389050>,  <35.972057, 36.947247, 38.766449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065735, 37.485889, 38.389050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443726, 37.429592, 38.507175>,  <36.670521, 37.395813, 38.578053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443726, 37.429592, 38.507175>,  <36.065735, 37.485889, 38.389050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443726, 37.429592, 38.507175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319158, 0.198452, -0.926690,
		0.071822, 0.969952, 0.232452,
		0.944976, -0.140746, 0.295315,
		36.727219, 37.387367, 38.595772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423630, 38.088303, 38.276833>,  <36.065735, 37.485889, 38.389050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423630, 38.088303, 38.276833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685150, 37.785633, 38.276447>,  <36.842060, 37.604031, 38.276218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685150, 37.785633, 38.276447>,  <36.423630, 38.088303, 38.276833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685150, 37.785633, 38.276447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197551, 0.171918, -0.965100,
		0.730427, 0.630789, 0.261881,
		0.653796, -0.756670, -0.000960,
		36.881290, 37.558632, 38.276157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754948, 38.255051, 37.740448>,  <36.423630, 38.088303, 38.276833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754948, 38.255051, 37.740448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878090, 37.876080, 37.775330>,  <36.951977, 37.648697, 37.796257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878090, 37.876080, 37.775330>,  <36.754948, 38.255051, 37.740448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878090, 37.876080, 37.775330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211081, -0.021359, -0.977235,
		0.927722, 0.319259, 0.193408,
		0.307860, -0.947427, 0.087205,
		36.970448, 37.591850, 37.801491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436344, 38.200947, 37.388519>,  <36.754948, 38.255051, 37.740448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436344, 38.200947, 37.388519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317249, 37.819756, 37.411083>,  <37.245792, 37.591042, 37.424622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317249, 37.819756, 37.411083>,  <37.436344, 38.200947, 37.388519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317249, 37.819756, 37.411083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091366, -0.087263, -0.991987,
		0.950266, -0.290198, 0.113051,
		-0.297738, -0.952980, 0.056409,
		37.227928, 37.533863, 37.428005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854687, 37.836880, 36.827686>,  <37.436344, 38.200947, 37.388519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854687, 37.836880, 36.827686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542828, 37.607529, 36.928398>,  <37.355713, 37.469917, 36.988827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542828, 37.607529, 36.928398>,  <37.854687, 37.836880, 36.827686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542828, 37.607529, 36.928398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130700, -0.244218, -0.960872,
		0.612430, -0.782047, 0.115463,
		-0.779646, -0.573375, 0.251780,
		37.308933, 37.435516, 37.003933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036945, 37.139290, 36.639107>,  <37.854687, 37.836880, 36.827686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036945, 37.139290, 36.639107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643105, 37.206291, 36.619133>,  <37.406799, 37.246494, 36.607151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643105, 37.206291, 36.619133>,  <38.036945, 37.139290, 36.639107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643105, 37.206291, 36.619133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015593, -0.368708, -0.929415,
		-0.174092, -0.914329, 0.365644,
		-0.984606, 0.167506, -0.049932,
		37.347721, 37.256542, 36.604153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766216, 36.545788, 36.328945>,  <38.036945, 37.139290, 36.639107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766216, 36.545788, 36.328945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468269, 36.808712, 36.283142>,  <37.289501, 36.966465, 36.255661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468269, 36.808712, 36.283142>,  <37.766216, 36.545788, 36.328945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468269, 36.808712, 36.283142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098869, -0.278463, -0.955345,
		-0.659845, -0.700286, 0.272406,
		-0.744869, 0.657312, -0.114506,
		37.244808, 37.005905, 36.248791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544044, 36.294563, 36.470947>,  <37.766216, 36.545788, 36.328945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544044, 36.294563, 36.470947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831398, 36.072811, 36.302860>,  <39.003811, 35.939758, 36.202007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831398, 36.072811, 36.302860>,  <38.544044, 36.294563, 36.470947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831398, 36.072811, 36.302860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280046, -0.322484, 0.904200,
		-0.636789, -0.767242, -0.076414,
		0.718383, -0.554386, -0.420217,
		39.046913, 35.906494, 36.176796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413139, 35.464710, 36.576279>,  <38.544044, 36.294563, 36.470947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413139, 35.464710, 36.576279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789238, 35.595028, 36.536674>,  <39.014896, 35.673218, 36.512913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789238, 35.595028, 36.536674>,  <38.413139, 35.464710, 36.576279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789238, 35.595028, 36.536674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206538, -0.314489, 0.926520,
		0.270716, -0.891603, -0.362985,
		0.940242, 0.325794, -0.099012,
		39.071312, 35.692764, 36.506969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787167, 34.862255, 36.879242>,  <38.413139, 35.464710, 36.576279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787167, 34.862255, 36.879242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077320, 35.136806, 36.858490>,  <39.251411, 35.301537, 36.846039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077320, 35.136806, 36.858490>,  <38.787167, 34.862255, 36.879242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077320, 35.136806, 36.858490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242961, -0.184789, 0.952272,
		0.644035, -0.703373, -0.300808,
		0.725388, 0.686382, -0.051882,
		39.294937, 35.342720, 36.842926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427994, 34.590519, 37.170071>,  <38.787167, 34.862255, 36.879242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427994, 34.590519, 37.170071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507114, 34.980091, 37.214493>,  <39.554588, 35.213833, 37.241146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507114, 34.980091, 37.214493>,  <39.427994, 34.590519, 37.170071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507114, 34.980091, 37.214493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361788, -0.177835, 0.915142,
		0.911034, -0.140838, -0.387533,
		0.197804, 0.973930, 0.111060,
		39.566456, 35.272270, 37.247810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102669, 34.641769, 37.491581>,  <39.427994, 34.590519, 37.170071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102669, 34.641769, 37.491581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947842, 35.005936, 37.549995>,  <39.854946, 35.224434, 37.585045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947842, 35.005936, 37.549995>,  <40.102669, 34.641769, 37.491581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947842, 35.005936, 37.549995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323194, -0.014374, 0.946224,
		0.863555, 0.413446, -0.288676,
		-0.387063, 0.910415, 0.146036,
		39.831722, 35.279060, 37.593807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491695, 34.876728, 38.022797>,  <40.102669, 34.641769, 37.491581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491695, 34.876728, 38.022797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183174, 35.131268, 38.018013>,  <39.998062, 35.283993, 38.015144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183174, 35.131268, 38.018013>,  <40.491695, 34.876728, 38.022797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183174, 35.131268, 38.018013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156654, 0.208018, 0.965499,
		0.616884, 0.742822, -0.260133,
		-0.771307, 0.636352, -0.011957,
		39.951782, 35.322174, 38.014427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700134, 35.510559, 38.411930>,  <40.491695, 34.876728, 38.022797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700134, 35.510559, 38.411930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300285, 35.520603, 38.407478>,  <40.060375, 35.526630, 38.404808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300285, 35.520603, 38.407478>,  <40.700134, 35.510559, 38.411930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300285, 35.520603, 38.407478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006785, 0.166769, 0.985973,
		0.026613, 0.985676, -0.166536,
		-0.999623, 0.025110, -0.011127,
		40.000397, 35.528137, 38.404140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459721, 36.089294, 38.946350>,  <40.700134, 35.510559, 38.411930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459721, 36.089294, 38.946350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149403, 35.841755, 38.897083>,  <39.963211, 35.693233, 38.867523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149403, 35.841755, 38.897083>,  <40.459721, 36.089294, 38.946350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149403, 35.841755, 38.897083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191730, 0.045234, 0.980405,
		-0.601147, 0.784210, -0.153743,
		-0.775798, -0.618844, -0.123164,
		39.916664, 35.656101, 38.860134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981201, 36.331604, 39.515388>,  <40.459721, 36.089294, 38.946350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981201, 36.331604, 39.515388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858665, 35.967216, 39.404900>,  <39.785145, 35.748585, 39.338608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858665, 35.967216, 39.404900>,  <39.981201, 36.331604, 39.515388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858665, 35.967216, 39.404900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235315, -0.208697, 0.949248,
		-0.922380, 0.355788, -0.150433,
		-0.306337, -0.910967, -0.276220,
		39.766766, 35.693928, 39.322033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233345, 36.265068, 39.743050>,  <39.981201, 36.331604, 39.515388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233345, 36.265068, 39.743050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372063, 35.892395, 39.699780>,  <39.455296, 35.668793, 39.673817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372063, 35.892395, 39.699780>,  <39.233345, 36.265068, 39.743050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372063, 35.892395, 39.699780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436389, -0.262360, 0.860657,
		-0.830239, -0.251268, -0.497562,
		0.346797, -0.931682, -0.108171,
		39.476101, 35.612892, 39.667328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736965, 35.840321, 40.013676>,  <39.233345, 36.265068, 39.743050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736965, 35.840321, 40.013676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049660, 35.591366, 39.998043>,  <39.237274, 35.441994, 39.988663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049660, 35.591366, 39.998043>,  <38.736965, 35.840321, 40.013676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049660, 35.591366, 39.998043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268937, -0.393009, 0.879327,
		-0.562643, -0.676888, -0.474611,
		0.781732, -0.622388, -0.039083,
		39.284180, 35.404648, 39.986317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530991, 35.230881, 40.231670>,  <38.736965, 35.840321, 40.013676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530991, 35.230881, 40.231670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924973, 35.207123, 40.296581>,  <39.161362, 35.192867, 40.335526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924973, 35.207123, 40.296581>,  <38.530991, 35.230881, 40.231670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924973, 35.207123, 40.296581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172521, -0.284494, 0.943027,
		-0.009840, -0.956836, -0.290460,
		0.984957, -0.059390, 0.162275,
		39.220459, 35.189304, 40.345264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585987, 34.584621, 40.592014>,  <38.530991, 35.230881, 40.231670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585987, 34.584621, 40.592014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930321, 34.783726, 40.634331>,  <39.136921, 34.903191, 40.659721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930321, 34.783726, 40.634331>,  <38.585987, 34.584621, 40.592014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930321, 34.783726, 40.634331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027667, -0.161795, 0.986436,
		0.508127, -0.852088, -0.125507,
		0.860838, 0.497763, 0.105788,
		39.188572, 34.933056, 40.666065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967953, 34.152073, 41.074738>,  <38.585987, 34.584621, 40.592014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967953, 34.152073, 41.074738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059071, 34.538448, 41.123829>,  <39.113743, 34.770275, 41.153286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059071, 34.538448, 41.123829>,  <38.967953, 34.152073, 41.074738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059071, 34.538448, 41.123829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116238, -0.098167, 0.988358,
		0.966746, -0.239410, 0.089917,
		0.227796, 0.965943, 0.122731,
		39.127411, 34.828232, 41.160648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182701, 33.426830, 40.711655>,  <38.967953, 34.152073, 41.074738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182701, 33.426830, 40.711655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014755, 33.067078, 40.760368>,  <38.913986, 32.851227, 40.789597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014755, 33.067078, 40.760368>,  <39.182701, 33.426830, 40.711655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014755, 33.067078, 40.760368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269284, -0.004696, -0.963049,
		0.866717, -0.437148, -0.240217,
		-0.419867, -0.899378, 0.121787,
		38.888794, 32.797264, 40.796906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364708, 33.193504, 40.174618>,  <39.182701, 33.426830, 40.711655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364708, 33.193504, 40.174618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051994, 32.966877, 40.278790>,  <38.864368, 32.830902, 40.341293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051994, 32.966877, 40.278790>,  <39.364708, 33.193504, 40.174618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051994, 32.966877, 40.278790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309815, -0.009522, -0.950749,
		0.541141, -0.823962, -0.168086,
		-0.781780, -0.566565, 0.260429,
		38.817459, 32.796909, 40.356918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398621, 32.517342, 39.824474>,  <39.364708, 33.193504, 40.174618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398621, 32.517342, 39.824474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011814, 32.587025, 39.898804>,  <38.779732, 32.628834, 39.943401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011814, 32.587025, 39.898804>,  <39.398621, 32.517342, 39.824474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011814, 32.587025, 39.898804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212712, -0.150987, -0.965379,
		-0.140104, -0.973067, 0.183059,
		-0.967018, 0.174192, 0.185829,
		38.721710, 32.639290, 39.954552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079041, 31.964382, 39.496655>,  <39.398621, 32.517342, 39.824474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079041, 31.964382, 39.496655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804958, 32.253105, 39.535603>,  <38.640507, 32.426338, 39.558971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804958, 32.253105, 39.535603>,  <39.079041, 31.964382, 39.496655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804958, 32.253105, 39.535603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336288, -0.194952, -0.921360,
		-0.646064, -0.664068, 0.376318,
		-0.685209, 0.721809, 0.097367,
		38.599396, 32.469646, 39.564812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697842, 31.886530, 38.914352>,  <39.079041, 31.964382, 39.496655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697842, 31.886530, 38.914352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528904, 32.215694, 39.066376>,  <38.427544, 32.413193, 39.157589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528904, 32.215694, 39.066376>,  <38.697842, 31.886530, 38.914352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528904, 32.215694, 39.066376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403100, 0.205033, -0.891892,
		-0.811873, -0.529883, 0.245122,
		-0.422341, 0.822913, 0.380057,
		38.402203, 32.462566, 39.180393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012577, 31.881115, 38.721989>,  <38.697842, 31.886530, 38.914352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012577, 31.881115, 38.721989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115669, 32.262920, 38.781963>,  <38.177525, 32.492004, 38.817947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115669, 32.262920, 38.781963>,  <38.012577, 31.881115, 38.721989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115669, 32.262920, 38.781963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313543, 0.229397, -0.921449,
		-0.913930, 0.190471, 0.358402,
		0.257726, 0.954514, 0.149932,
		38.192986, 32.549274, 38.826942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322140, 32.301464, 38.490170>,  <38.012577, 31.881115, 38.721989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322140, 32.301464, 38.490170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625759, 32.561821, 38.495636>,  <37.807930, 32.718037, 38.498917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625759, 32.561821, 38.495636>,  <37.322140, 32.301464, 38.490170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625759, 32.561821, 38.495636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295843, 0.363551, -0.883350,
		-0.579937, 0.666459, 0.468514,
		0.759046, 0.650894, 0.013669,
		37.853474, 32.757088, 38.499737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041130, 32.955719, 38.367554>,  <37.322140, 32.301464, 38.490170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041130, 32.955719, 38.367554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420033, 33.005817, 38.249554>,  <37.647373, 33.035877, 38.178753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420033, 33.005817, 38.249554>,  <37.041130, 32.955719, 38.367554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420033, 33.005817, 38.249554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320324, 0.399539, -0.858930,
		0.010290, 0.908120, 0.418583,
		0.947252, 0.125244, -0.295004,
		37.704208, 33.043392, 38.161053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112736, 33.651382, 38.247086>,  <37.041130, 32.955719, 38.367554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112736, 33.651382, 38.247086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408924, 33.478703, 38.041039>,  <37.586636, 33.375095, 37.917412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408924, 33.478703, 38.041039>,  <37.112736, 33.651382, 38.247086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408924, 33.478703, 38.041039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324374, 0.441709, -0.836466,
		0.588635, 0.786464, 0.187037,
		0.740466, -0.431703, -0.515113,
		37.631065, 33.349190, 37.886505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445808, 34.245975, 37.797615>,  <37.112736, 33.651382, 38.247086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445808, 34.245975, 37.797615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582268, 33.905163, 37.638790>,  <37.664143, 33.700676, 37.543495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582268, 33.905163, 37.638790>,  <37.445808, 34.245975, 37.797615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582268, 33.905163, 37.638790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092286, 0.390001, -0.916178,
		0.935468, 0.349197, 0.054418,
		0.341150, -0.852033, -0.397059,
		37.684612, 33.649551, 37.519672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936024, 34.507408, 37.301102>,  <37.445808, 34.245975, 37.797615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936024, 34.507408, 37.301102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820484, 34.143806, 37.180923>,  <37.751160, 33.925644, 37.108814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820484, 34.143806, 37.180923>,  <37.936024, 34.507408, 37.301102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820484, 34.143806, 37.180923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109949, 0.343248, -0.932787,
		0.951040, -0.236400, -0.199091,
		-0.288849, -0.909008, -0.300450,
		37.733829, 33.871105, 37.090790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277466, 34.305946, 36.642868>,  <37.936024, 34.507408, 37.301102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277466, 34.305946, 36.642868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909489, 34.154705, 36.684326>,  <37.688702, 34.063961, 36.709202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909489, 34.154705, 36.684326>,  <38.277466, 34.305946, 36.642868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909489, 34.154705, 36.684326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250873, 0.364579, -0.896741,
		0.301275, -0.850952, -0.430248,
		-0.919944, -0.378104, 0.103642,
		37.633507, 34.041275, 36.715420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.909920, 32.354908, 44.524014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519768, 32.313660, 44.446049>,  <39.285675, 32.288910, 44.399269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519768, 32.313660, 44.446049>,  <39.909920, 32.354908, 44.524014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519768, 32.313660, 44.446049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205881, -0.109234, -0.972461,
		0.078988, -0.988653, 0.127776,
		-0.975384, -0.103119, -0.194916,
		39.227154, 32.282722, 44.387573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899433, 31.833261, 44.070271>,  <39.909920, 32.354908, 44.524014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899433, 31.833261, 44.070271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527870, 31.970829, 44.015358>,  <39.304932, 32.053371, 43.982410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527870, 31.970829, 44.015358>,  <39.899433, 31.833261, 44.070271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527870, 31.970829, 44.015358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140476, -0.015737, -0.989959,
		-0.342628, -0.938867, -0.033694,
		-0.928909, 0.343921, -0.137281,
		39.249199, 32.074005, 43.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591816, 31.358112, 43.527523>,  <39.899433, 31.833261, 44.070271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591816, 31.358112, 43.527523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358990, 31.683167, 43.539021>,  <39.219296, 31.878199, 43.545918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358990, 31.683167, 43.539021>,  <39.591816, 31.358112, 43.527523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358990, 31.683167, 43.539021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088863, -0.028434, -0.995638,
		-0.808273, -0.582079, 0.088764,
		-0.582063, 0.812635, 0.028743,
		39.184372, 31.926956, 43.547642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162605, 31.245754, 43.035770>,  <39.591816, 31.358112, 43.527523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162605, 31.245754, 43.035770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095936, 31.635324, 43.097336>,  <39.055935, 31.869066, 43.134277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095936, 31.635324, 43.097336>,  <39.162605, 31.245754, 43.035770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095936, 31.635324, 43.097336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216009, 0.116241, -0.969447,
		-0.962061, -0.194826, 0.191003,
		-0.166672, 0.973926, 0.153915,
		39.045933, 31.927502, 43.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430935, 31.458776, 42.680836>,  <39.162605, 31.245754, 43.035770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430935, 31.458776, 42.680836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698223, 31.755917, 42.697109>,  <38.858597, 31.934200, 42.706875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698223, 31.755917, 42.697109>,  <38.430935, 31.458776, 42.680836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698223, 31.755917, 42.697109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118024, 0.159842, -0.980062,
		-0.734541, 0.650097, 0.194484,
		0.668221, 0.742849, 0.040684,
		38.898689, 31.978771, 42.709316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214390, 32.049824, 42.206299>,  <38.430935, 31.458776, 42.680836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214390, 32.049824, 42.206299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589428, 32.186390, 42.232689>,  <38.814449, 32.268330, 42.248524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589428, 32.186390, 42.232689>,  <38.214390, 32.049824, 42.206299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589428, 32.186390, 42.232689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001101, 0.186821, -0.982394,
		-0.347733, 0.921158, 0.174786,
		0.937593, 0.341418, 0.065978,
		38.870705, 32.288815, 42.252483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198021, 32.811359, 42.059826>,  <38.214390, 32.049824, 42.206299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198021, 32.811359, 42.059826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564308, 32.657169, 42.014462>,  <38.784081, 32.564655, 41.987244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564308, 32.657169, 42.014462>,  <38.198021, 32.811359, 42.059826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564308, 32.657169, 42.014462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031250, 0.349719, -0.936333,
		0.400599, 0.853876, 0.332290,
		0.915720, -0.385478, -0.113414,
		38.839024, 32.541527, 41.980438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523857, 33.321274, 41.805744>,  <38.198021, 32.811359, 42.059826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523857, 33.321274, 41.805744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738720, 32.993092, 41.727451>,  <38.867638, 32.796181, 41.680477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738720, 32.993092, 41.727451>,  <38.523857, 33.321274, 41.805744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738720, 32.993092, 41.727451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008469, 0.237288, -0.971402,
		0.843437, 0.520142, 0.134411,
		0.537162, -0.820455, -0.195732,
		38.899868, 32.746956, 41.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191536, 33.553047, 41.460564>,  <38.523857, 33.321274, 41.805744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191536, 33.553047, 41.460564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075504, 33.183025, 41.362484>,  <39.005886, 32.961010, 41.303635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075504, 33.183025, 41.362484>,  <39.191536, 33.553047, 41.460564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075504, 33.183025, 41.362484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093515, 0.282390, -0.954731,
		0.952423, -0.254016, -0.168422,
		-0.290078, -0.925058, -0.245200,
		38.988480, 32.905510, 41.288925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423302, 34.183903, 41.665104>,  <39.191536, 33.553047, 41.460564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423302, 34.183903, 41.665104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322041, 34.564877, 41.597240>,  <39.261284, 34.793461, 41.556522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322041, 34.564877, 41.597240>,  <39.423302, 34.183903, 41.665104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322041, 34.564877, 41.597240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293499, 0.242720, 0.924633,
		0.921831, 0.184277, -0.340983,
		-0.253152, 0.952433, -0.169662,
		39.246094, 34.850605, 41.546341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011810, 34.661842, 41.874416>,  <39.423302, 34.183903, 41.665104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011810, 34.661842, 41.874416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685783, 34.893589, 41.874722>,  <39.490166, 35.032639, 41.874905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685783, 34.893589, 41.874722>,  <40.011810, 34.661842, 41.874416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685783, 34.893589, 41.874722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160834, 0.225003, 0.960992,
		0.556596, 0.783395, -0.276575,
		-0.815066, 0.579367, 0.000761,
		39.441265, 35.067398, 41.874950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237064, 35.248947, 42.329407>,  <40.011810, 34.661842, 41.874416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237064, 35.248947, 42.329407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838150, 35.230499, 42.352390>,  <39.598801, 35.219429, 42.366180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838150, 35.230499, 42.352390>,  <40.237064, 35.248947, 42.329407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838150, 35.230499, 42.352390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050369, 0.142323, 0.988538,
		-0.053771, 0.988745, -0.139613,
		-0.997282, -0.046123, 0.057455,
		39.538967, 35.216663, 42.369625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174179, 35.582783, 42.858818>,  <40.237064, 35.248947, 42.329407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174179, 35.582783, 42.858818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.799805, 35.447155, 42.820744>,  <39.575180, 35.365780, 42.797897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.799805, 35.447155, 42.820744>,  <40.174179, 35.582783, 42.858818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799805, 35.447155, 42.820744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129073, 0.078769, 0.988502,
		-0.327674, 0.937458, -0.117487,
		-0.935933, -0.339070, -0.095190,
		39.519024, 35.345432, 42.792187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723339, 35.995144, 43.288395>,  <40.174179, 35.582783, 42.858818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723339, 35.995144, 43.288395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521709, 35.655518, 43.225147>,  <39.400734, 35.451740, 43.187199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521709, 35.655518, 43.225147>,  <39.723339, 35.995144, 43.288395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521709, 35.655518, 43.225147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277669, -0.014039, 0.960574,
		-0.817810, 0.528102, -0.228683,
		-0.504071, -0.849065, -0.158119,
		39.370487, 35.400799, 43.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092682, 36.101566, 43.792927>,  <39.723339, 35.995144, 43.288395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092682, 36.101566, 43.792927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138229, 35.713837, 43.705795>,  <39.165558, 35.481201, 43.653519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138229, 35.713837, 43.705795>,  <39.092682, 36.101566, 43.792927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138229, 35.713837, 43.705795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220277, -0.238428, 0.945849,
		-0.968768, -0.059719, -0.240669,
		0.113867, -0.969322, -0.217827,
		39.172390, 35.423038, 43.640446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555088, 35.797535, 44.125797>,  <39.092682, 36.101566, 43.792927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555088, 35.797535, 44.125797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.783703, 35.478916, 44.046944>,  <38.920872, 35.287746, 43.999630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.783703, 35.478916, 44.046944>,  <38.555088, 35.797535, 44.125797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783703, 35.478916, 44.046944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100630, -0.306465, 0.946548,
		-0.814384, -0.521147, -0.255311,
		0.571534, -0.796546, -0.197137,
		38.955162, 35.239952, 43.987804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214951, 35.240849, 44.429585>,  <38.555088, 35.797535, 44.125797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214951, 35.240849, 44.429585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603062, 35.146748, 44.406876>,  <38.835926, 35.090286, 44.393250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603062, 35.146748, 44.406876>,  <38.214951, 35.240849, 44.429585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603062, 35.146748, 44.406876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030088, -0.115483, 0.992854,
		-0.240133, -0.965048, -0.104971,
		0.970274, -0.235259, -0.056768,
		38.894142, 35.076172, 44.389847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309071, 34.692234, 44.782333>,  <38.214951, 35.240849, 44.429585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309071, 34.692234, 44.782333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.682747, 34.834705, 44.790581>,  <38.906952, 34.920189, 44.795528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.682747, 34.834705, 44.790581>,  <38.309071, 34.692234, 44.782333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682747, 34.834705, 44.790581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059023, -0.211291, 0.975639,
		0.351854, -0.910218, -0.218408,
		0.934192, 0.356174, 0.020620,
		38.963005, 34.941559, 44.796768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667915, 34.228500, 45.202316>,  <38.309071, 34.692234, 44.782333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667915, 34.228500, 45.202316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900120, 34.553864, 45.187485>,  <39.039440, 34.749081, 45.178585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900120, 34.553864, 45.187485>,  <38.667915, 34.228500, 45.202316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900120, 34.553864, 45.187485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301951, -0.172753, 0.937540,
		0.756198, -0.555447, -0.345895,
		0.580509, 0.813409, -0.037082,
		39.074272, 34.797886, 45.176361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347218, 34.031513, 45.322994>,  <38.667915, 34.228500, 45.202316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347218, 34.031513, 45.322994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303318, 34.412476, 45.436749>,  <39.276978, 34.641052, 45.505001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303318, 34.412476, 45.436749>,  <39.347218, 34.031513, 45.322994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303318, 34.412476, 45.436749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371722, -0.226022, 0.900409,
		0.921834, 0.204531, -0.329225,
		-0.109749, 0.952408, 0.284384,
		39.270393, 34.698196, 45.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978428, 34.179996, 45.719971>,  <39.347218, 34.031513, 45.322994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978428, 34.179996, 45.719971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748375, 34.494865, 45.809032>,  <39.610344, 34.683788, 45.862469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748375, 34.494865, 45.809032>,  <39.978428, 34.179996, 45.719971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748375, 34.494865, 45.809032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292325, -0.056449, 0.954652,
		0.764046, 0.614142, -0.197645,
		-0.575135, 0.787174, 0.222659,
		39.575836, 34.731018, 45.875832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363796, 34.552429, 46.301674>,  <39.978428, 34.179996, 45.719971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363796, 34.552429, 46.301674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983501, 34.671917, 46.334805>,  <39.755325, 34.743610, 46.354683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983501, 34.671917, 46.334805>,  <40.363796, 34.552429, 46.301674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983501, 34.671917, 46.334805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127787, 0.134251, 0.982674,
		0.282428, 0.944850, -0.165811,
		-0.950739, 0.298723, 0.082823,
		39.698280, 34.761536, 46.359650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392159, 35.120529, 46.758102>,  <40.363796, 34.552429, 46.301674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392159, 35.120529, 46.758102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012123, 34.995888, 46.764324>,  <39.784103, 34.921101, 46.768059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012123, 34.995888, 46.764324>,  <40.392159, 35.120529, 46.758102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012123, 34.995888, 46.764324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028085, 0.135069, 0.990438,
		-0.310726, 0.940563, -0.137078,
		-0.950084, -0.311605, 0.015553,
		39.727097, 34.902405, 46.768990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.290743, 33.632843, 45.855553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675671, 33.630829, 45.964302>,  <31.906628, 33.629620, 46.029552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675671, 33.630829, 45.964302>,  <31.290743, 33.632843, 45.855553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675671, 33.630829, 45.964302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271527, 0.071828, -0.959747,
		-0.014692, 0.997404, 0.070489,
		0.962319, -0.005039, 0.271877,
		31.964367, 33.629318, 46.045864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533802, 34.128872, 45.413151>,  <31.290743, 33.632843, 45.855553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533802, 34.128872, 45.413151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843109, 33.907448, 45.536850>,  <32.028694, 33.774593, 45.611069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843109, 33.907448, 45.536850>,  <31.533802, 34.128872, 45.413151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843109, 33.907448, 45.536850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386980, 0.025642, -0.921731,
		0.502301, 0.832416, 0.234044,
		0.773266, -0.553557, 0.309248,
		32.075089, 33.741379, 45.629623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107624, 34.376968, 45.048122>,  <31.533802, 34.128872, 45.413151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107624, 34.376968, 45.048122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220795, 34.012196, 45.167007>,  <32.288696, 33.793331, 45.238338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220795, 34.012196, 45.167007>,  <32.107624, 34.376968, 45.048122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220795, 34.012196, 45.167007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420921, -0.160392, -0.892805,
		0.861846, 0.377703, 0.338471,
		0.282927, -0.911929, 0.297216,
		32.305672, 33.738617, 45.256172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826485, 34.330376, 44.906487>,  <32.107624, 34.376968, 45.048122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826485, 34.330376, 44.906487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.673615, 33.961617, 44.931931>,  <32.581890, 33.740360, 44.947197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.673615, 33.961617, 44.931931>,  <32.826485, 34.330376, 44.906487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673615, 33.961617, 44.931931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326899, -0.199264, -0.923813,
		0.864336, -0.332265, 0.377521,
		-0.382177, -0.921897, 0.063614,
		32.558960, 33.685047, 44.951015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370041, 33.883396, 44.624065>,  <32.826485, 34.330376, 44.906487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370041, 33.883396, 44.624065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.039860, 33.658661, 44.602264>,  <32.841751, 33.523819, 44.589184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.039860, 33.658661, 44.602264>,  <33.370041, 33.883396, 44.624065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039860, 33.658661, 44.602264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220021, -0.231320, -0.947672,
		0.519826, -0.794250, 0.314559,
		-0.825452, -0.561834, -0.054506,
		32.792225, 33.490112, 44.585911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562439, 33.192589, 44.306782>,  <33.370041, 33.883396, 44.624065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562439, 33.192589, 44.306782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174812, 33.250782, 44.227032>,  <32.942238, 33.285698, 44.179180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174812, 33.250782, 44.227032>,  <33.562439, 33.192589, 44.306782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174812, 33.250782, 44.227032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201010, -0.003534, -0.979583,
		-0.143218, -0.989354, -0.025819,
		-0.969063, 0.145484, -0.199376,
		32.884094, 33.294426, 44.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342106, 32.766743, 43.770374>,  <33.562439, 33.192589, 44.306782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342106, 32.766743, 43.770374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046207, 33.035580, 43.757263>,  <32.868668, 33.196880, 43.749397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046207, 33.035580, 43.757263>,  <33.342106, 32.766743, 43.770374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046207, 33.035580, 43.757263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016123, -0.031001, -0.999389,
		-0.672697, -0.739820, 0.012097,
		-0.739743, 0.672091, -0.032782,
		32.824284, 33.237206, 43.747429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936497, 32.513832, 43.149452>,  <33.342106, 32.766743, 43.770374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936497, 32.513832, 43.149452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.778049, 32.875237, 43.214886>,  <32.682983, 33.092079, 43.254147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.778049, 32.875237, 43.214886>,  <32.936497, 32.513832, 43.149452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778049, 32.875237, 43.214886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021191, 0.169118, -0.985368,
		-0.917956, -0.393786, -0.047844,
		-0.396115, 0.903511, 0.163587,
		32.659214, 33.146290, 43.263962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555923, 32.491203, 42.677925>,  <32.936497, 32.513832, 43.149452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555923, 32.491203, 42.677925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545952, 32.876965, 42.783226>,  <32.539970, 33.108421, 42.846405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545952, 32.876965, 42.783226>,  <32.555923, 32.491203, 42.677925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545952, 32.876965, 42.783226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006460, 0.263480, -0.964643,
		-0.999668, -0.022347, -0.012798,
		-0.024929, 0.964406, 0.263248,
		32.538475, 33.166286, 42.862202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916534, 32.818974, 42.489071>,  <32.555923, 32.491203, 42.677925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916534, 32.818974, 42.489071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190910, 33.108974, 42.513931>,  <32.355534, 33.282974, 42.528847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190910, 33.108974, 42.513931>,  <31.916534, 32.818974, 42.489071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190910, 33.108974, 42.513931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223707, 0.291387, -0.930080,
		-0.692419, 0.624073, 0.362061,
		0.685938, 0.725001, 0.062153,
		32.396690, 33.326473, 42.532578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574396, 33.338196, 42.342731>,  <31.916534, 32.818974, 42.489071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574396, 33.338196, 42.342731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950190, 33.450813, 42.264652>,  <32.175667, 33.518383, 42.217804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950190, 33.450813, 42.264652>,  <31.574396, 33.338196, 42.342731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950190, 33.450813, 42.264652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258103, 0.207016, -0.943677,
		-0.225281, 0.936950, 0.267156,
		0.939484, 0.281547, -0.195193,
		32.232037, 33.535278, 42.206093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482466, 33.960541, 41.954823>,  <31.574396, 33.338196, 42.342731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482466, 33.960541, 41.954823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863297, 33.860268, 41.884727>,  <32.091793, 33.800102, 41.842670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863297, 33.860268, 41.884727>,  <31.482466, 33.960541, 41.954823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863297, 33.860268, 41.884727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106606, 0.265011, -0.958334,
		0.286680, 0.931088, 0.225586,
		0.952077, -0.250686, -0.175233,
		32.148918, 33.785061, 41.832157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594505, 34.457226, 41.478222>,  <31.482466, 33.960541, 41.954823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594505, 34.457226, 41.478222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880821, 34.185459, 41.413685>,  <32.052612, 34.022400, 41.374962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880821, 34.185459, 41.413685>,  <31.594505, 34.457226, 41.478222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880821, 34.185459, 41.413685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028907, 0.259680, -0.965262,
		0.697716, 0.686261, 0.205517,
		0.715791, -0.679420, -0.161345,
		32.095558, 33.981632, 41.365280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129833, 34.838856, 41.124504>,  <31.594505, 34.457226, 41.478222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129833, 34.838856, 41.124504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195560, 34.452358, 41.045135>,  <32.234997, 34.220459, 40.997513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195560, 34.452358, 41.045135>,  <32.129833, 34.838856, 41.124504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195560, 34.452358, 41.045135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115550, 0.180915, -0.976687,
		0.979616, 0.183418, -0.081921,
		0.164321, -0.966244, -0.198421,
		32.244858, 34.162483, 40.985611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800274, 35.099838, 41.508629>,  <32.129833, 34.838856, 41.124504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800274, 35.099838, 41.508629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927765, 35.478523, 41.490067>,  <33.004257, 35.705734, 41.478928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927765, 35.478523, 41.490067>,  <32.800274, 35.099838, 41.508629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927765, 35.478523, 41.490067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150810, 0.098991, 0.983594,
		0.935773, -0.306497, 0.174324,
		0.318725, 0.946710, -0.046410,
		33.023384, 35.762535, 41.476143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305710, 35.219246, 42.036919>,  <32.800274, 35.099838, 41.508629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305710, 35.219246, 42.036919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.164379, 35.581577, 41.943420>,  <33.079578, 35.798977, 41.887321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.164379, 35.581577, 41.943420>,  <33.305710, 35.219246, 42.036919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164379, 35.581577, 41.943420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006316, 0.247549, 0.968855,
		0.935478, 0.343801, -0.081745,
		-0.353330, 0.905826, -0.233748,
		33.058380, 35.853325, 41.873295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728550, 35.686531, 42.291058>,  <33.305710, 35.219246, 42.036919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728550, 35.686531, 42.291058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.360523, 35.840534, 42.262096>,  <33.139706, 35.932938, 42.244720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.360523, 35.840534, 42.262096>,  <33.728550, 35.686531, 42.291058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360523, 35.840534, 42.262096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019728, 0.139057, 0.990088,
		0.391260, 0.912377, -0.120346,
		-0.920069, 0.385008, -0.072406,
		33.084503, 35.956036, 42.240376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751461, 36.247242, 42.840279>,  <33.728550, 35.686531, 42.291058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751461, 36.247242, 42.840279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363647, 36.230709, 42.743702>,  <33.130959, 36.220791, 42.685757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363647, 36.230709, 42.743702>,  <33.751461, 36.247242, 42.840279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363647, 36.230709, 42.743702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242823, 0.032392, 0.969530,
		-0.032251, 0.998620, -0.041441,
		-0.969534, -0.041331, -0.241443,
		33.072788, 36.218311, 42.671268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517899, 36.726959, 43.297844>,  <33.751461, 36.247242, 42.840279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517899, 36.726959, 43.297844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197765, 36.506668, 43.203053>,  <33.005684, 36.374493, 43.146179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197765, 36.506668, 43.203053>,  <33.517899, 36.726959, 43.297844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197765, 36.506668, 43.203053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379138, 0.158703, 0.911629,
		-0.464454, 0.819456, -0.335819,
		-0.800335, -0.550732, -0.236977,
		32.957664, 36.341450, 43.131958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957237, 37.066948, 43.433537>,  <33.517899, 36.726959, 43.297844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957237, 37.066948, 43.433537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819408, 36.692978, 43.467426>,  <32.736710, 36.468594, 43.487762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819408, 36.692978, 43.467426>,  <32.957237, 37.066948, 43.433537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819408, 36.692978, 43.467426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249808, 0.178318, 0.951734,
		-0.904912, 0.306775, -0.294996,
		-0.344571, -0.934929, 0.084727,
		32.716038, 36.412498, 43.492844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352947, 37.051167, 43.919685>,  <32.957237, 37.066948, 43.433537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352947, 37.051167, 43.919685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467220, 36.667843, 43.921822>,  <32.535786, 36.437847, 43.923103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467220, 36.667843, 43.921822>,  <32.352947, 37.051167, 43.919685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467220, 36.667843, 43.921822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023688, 0.012635, 0.999640,
		-0.958030, -0.285457, 0.026310,
		0.285686, -0.958308, 0.005343,
		32.552925, 36.380352, 43.923424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981493, 36.749615, 44.402985>,  <32.352947, 37.051167, 43.919685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981493, 36.749615, 44.402985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286922, 36.494728, 44.361195>,  <32.470181, 36.341797, 44.336121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286922, 36.494728, 44.361195>,  <31.981493, 36.749615, 44.402985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286922, 36.494728, 44.361195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078192, -0.069355, 0.994523,
		-0.640971, -0.767558, -0.003132,
		0.763572, -0.637216, -0.104472,
		32.515995, 36.303562, 44.329853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798574, 36.241417, 44.920422>,  <31.981493, 36.749615, 44.402985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798574, 36.241417, 44.920422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187614, 36.213299, 44.831776>,  <32.421040, 36.196426, 44.778587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187614, 36.213299, 44.831776>,  <31.798574, 36.241417, 44.920422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187614, 36.213299, 44.831776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214003, -0.101852, 0.971508,
		-0.090860, -0.992313, -0.084018,
		0.972598, -0.070291, -0.221612,
		32.479393, 36.192211, 44.765293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020939, 35.691242, 45.283318>,  <31.798574, 36.241417, 44.920422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020939, 35.691242, 45.283318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341896, 35.909908, 45.187550>,  <32.534470, 36.041107, 45.130089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341896, 35.909908, 45.187550>,  <32.020939, 35.691242, 45.283318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341896, 35.909908, 45.187550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236927, 0.076409, 0.968518,
		0.547752, -0.833856, -0.068211,
		0.802392, 0.546669, -0.239415,
		32.582615, 36.073910, 45.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590660, 35.463375, 45.683044>,  <32.020939, 35.691242, 45.283318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590660, 35.463375, 45.683044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729584, 35.819458, 45.565125>,  <32.812939, 36.033108, 45.494373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729584, 35.819458, 45.565125>,  <32.590660, 35.463375, 45.683044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729584, 35.819458, 45.565125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203544, 0.235313, 0.950367,
		0.915394, -0.390077, -0.099470,
		0.347309, 0.890207, -0.294802,
		32.833778, 36.086521, 45.476685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271069, 35.375641, 45.746708>,  <32.590660, 35.463375, 45.683044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271069, 35.375641, 45.746708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197067, 35.768574, 45.758018>,  <33.152668, 36.004333, 45.764805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197067, 35.768574, 45.758018>,  <33.271069, 35.375641, 45.746708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197067, 35.768574, 45.758018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282932, 0.025684, 0.958796,
		0.941129, 0.185378, -0.282684,
		-0.185000, 0.982331, 0.028277,
		33.141567, 36.063274, 45.766502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761993, 35.559818, 46.049370>,  <33.271069, 35.375641, 45.746708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761993, 35.559818, 46.049370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543644, 35.892017, 46.093719>,  <33.412636, 36.091335, 46.120331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543644, 35.892017, 46.093719>,  <33.761993, 35.559818, 46.049370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543644, 35.892017, 46.093719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379954, 0.127420, 0.916187,
		0.746763, 0.542252, -0.385106,
		-0.545875, 0.830498, 0.110879,
		33.379883, 36.141167, 46.126984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141098, 36.201534, 46.347347>,  <33.761993, 35.559818, 46.049370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141098, 36.201534, 46.347347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756554, 36.219543, 46.455978>,  <33.525826, 36.230350, 46.521156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756554, 36.219543, 46.455978>,  <34.141098, 36.201534, 46.347347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756554, 36.219543, 46.455978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267734, -0.076601, 0.960443,
		0.064047, 0.996045, 0.061587,
		-0.961362, 0.045024, 0.271581,
		33.468143, 36.233051, 46.537453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439594, 36.926914, 46.716438>,  <34.141098, 36.201534, 46.347347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439594, 36.926914, 46.716438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789871, 37.120060, 46.715630>,  <35.000038, 37.235947, 46.715145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789871, 37.120060, 46.715630>,  <34.439594, 36.926914, 46.716438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789871, 37.120060, 46.715630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098048, 0.173710, -0.979904,
		-0.472814, 0.858291, 0.199460,
		0.875690, 0.482868, -0.002021,
		35.052578, 37.264919, 46.715023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308777, 37.494064, 46.355206>,  <34.439594, 36.926914, 46.716438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308777, 37.494064, 46.355206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703835, 37.432678, 46.342560>,  <34.940868, 37.395847, 46.334972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703835, 37.432678, 46.342560>,  <34.308777, 37.494064, 46.355206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703835, 37.432678, 46.342560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003718, 0.224670, -0.974428,
		0.156647, 0.962274, 0.222466,
		0.987648, -0.153469, -0.031616,
		35.000130, 37.386639, 46.333076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563393, 38.013550, 45.981579>,  <34.308777, 37.494064, 46.355206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563393, 38.013550, 45.981579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856045, 37.740959, 45.988647>,  <35.031635, 37.577404, 45.992889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856045, 37.740959, 45.988647>,  <34.563393, 38.013550, 45.981579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856045, 37.740959, 45.988647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265758, 0.261253, -0.927965,
		0.627770, 0.683620, 0.372248,
		0.731626, -0.681477, 0.017671,
		35.075531, 37.536514, 45.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075108, 38.393055, 45.559891>,  <34.563393, 38.013550, 45.981579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075108, 38.393055, 45.559891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.172359, 38.005947, 45.586151>,  <35.230713, 37.773682, 45.601910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.172359, 38.005947, 45.586151>,  <35.075108, 38.393055, 45.559891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172359, 38.005947, 45.586151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317345, 0.015401, -0.948185,
		0.916612, 0.251371, 0.310861,
		0.243134, -0.967768, 0.065654,
		35.245300, 37.715618, 45.605846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798756, 38.361069, 45.469223>,  <35.075108, 38.393055, 45.559891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798756, 38.361069, 45.469223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650410, 38.002750, 45.371235>,  <35.561401, 37.787758, 45.312443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650410, 38.002750, 45.371235>,  <35.798756, 38.361069, 45.469223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650410, 38.002750, 45.371235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357776, 0.105609, -0.927816,
		0.857004, -0.431740, 0.281327,
		-0.370864, -0.895794, -0.244974,
		35.539150, 37.734013, 45.297741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205284, 38.211399, 44.901081>,  <35.798756, 38.361069, 45.469223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205284, 38.211399, 44.901081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937481, 37.916653, 44.863586>,  <35.776798, 37.739803, 44.841087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937481, 37.916653, 44.863586>,  <36.205284, 38.211399, 44.901081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937481, 37.916653, 44.863586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202927, -0.060045, -0.977351,
		0.714548, -0.673367, 0.189731,
		-0.669508, -0.736866, -0.093739,
		35.736629, 37.695591, 44.835464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473690, 37.576450, 44.528275>,  <36.205284, 38.211399, 44.901081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473690, 37.576450, 44.528275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077934, 37.541550, 44.481808>,  <35.840481, 37.520611, 44.453926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077934, 37.541550, 44.481808>,  <36.473690, 37.576450, 44.528275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077934, 37.541550, 44.481808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127024, -0.131411, -0.983156,
		0.070514, -0.987481, 0.141099,
		-0.989390, -0.087249, -0.116168,
		35.781116, 37.515373, 44.446957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285637, 37.029942, 44.067589>,  <36.473690, 37.576450, 44.528275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285637, 37.029942, 44.067589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954338, 37.254070, 44.064930>,  <35.755558, 37.388546, 44.063335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954338, 37.254070, 44.064930>,  <36.285637, 37.029942, 44.067589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954338, 37.254070, 44.064930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050803, -0.086902, -0.994921,
		-0.558053, -0.823704, 0.100443,
		-0.828249, 0.560322, -0.006649,
		35.705864, 37.422165, 44.062935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673309, 36.715981, 43.812992>,  <36.285637, 37.029942, 44.067589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673309, 36.715981, 43.812992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625175, 37.108276, 43.751453>,  <35.596294, 37.343655, 43.714531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.625175, 37.108276, 43.751453>,  <35.673309, 36.715981, 43.812992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625175, 37.108276, 43.751453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001758, -0.155186, -0.987884,
		-0.992731, -0.118609, 0.020399,
		-0.120337, 0.980739, -0.153850,
		35.589073, 37.402496, 43.705299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333225, 36.716347, 43.217953>,  <35.673309, 36.715981, 43.812992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333225, 36.716347, 43.217953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425247, 37.104500, 43.247425>,  <35.480461, 37.337391, 43.265110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425247, 37.104500, 43.247425>,  <35.333225, 36.716347, 43.217953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425247, 37.104500, 43.247425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022160, 0.070473, -0.997268,
		-0.972925, 0.231061, -0.005291,
		0.230057, 0.970383, 0.073685,
		35.494263, 37.395615, 43.269531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908226, 37.075943, 42.795521>,  <35.333225, 36.716347, 43.217953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908226, 37.075943, 42.795521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.231525, 37.309887, 42.822884>,  <35.425503, 37.450253, 42.839302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.231525, 37.309887, 42.822884>,  <34.908226, 37.075943, 42.795521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231525, 37.309887, 42.822884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087056, -0.003787, -0.996196,
		-0.582376, 0.811126, -0.053976,
		0.808245, 0.584859, 0.068408,
		35.473999, 37.485344, 42.843407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780067, 37.605045, 42.336655>,  <34.908226, 37.075943, 42.795521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780067, 37.605045, 42.336655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175289, 37.613510, 42.397724>,  <35.412422, 37.618591, 42.434368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175289, 37.613510, 42.397724>,  <34.780067, 37.605045, 42.336655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175289, 37.613510, 42.397724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153903, -0.189876, -0.969671,
		0.008465, 0.981580, -0.190865,
		0.988050, 0.021166, 0.152676,
		35.471703, 37.619862, 42.443527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079914, 38.097324, 41.816601>,  <34.780067, 37.605045, 42.336655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079914, 38.097324, 41.816601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384678, 37.859970, 41.920433>,  <35.567535, 37.717560, 41.982735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384678, 37.859970, 41.920433>,  <35.079914, 38.097324, 41.816601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384678, 37.859970, 41.920433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265463, -0.079474, -0.960840,
		0.590777, 0.800987, 0.096969,
		0.761913, -0.593384, 0.259583,
		35.613251, 37.681953, 41.998306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659359, 38.476650, 41.525105>,  <35.079914, 38.097324, 41.816601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659359, 38.476650, 41.525105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771671, 38.096943, 41.581753>,  <35.839058, 37.869118, 41.615742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771671, 38.096943, 41.581753>,  <35.659359, 38.476650, 41.525105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771671, 38.096943, 41.581753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417460, -0.012072, -0.908615,
		0.864227, 0.314242, 0.392891,
		0.280782, -0.949266, 0.141616,
		35.855907, 37.812164, 41.624237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.662491, 37.435425, 27.558704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310137, 37.255024, 27.501232>,  <30.098724, 37.146786, 27.466749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310137, 37.255024, 27.501232>,  <30.662491, 37.435425, 27.558704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310137, 37.255024, 27.501232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113345, -0.093729, 0.989125,
		-0.459562, 0.887589, 0.031446,
		-0.880884, -0.450999, -0.143679,
		30.045872, 37.119724, 27.458128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205875, 37.808971, 27.875547>,  <30.662491, 37.435425, 27.558704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205875, 37.808971, 27.875547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.053953, 37.441185, 27.834879>,  <29.962799, 37.220512, 27.810478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.053953, 37.441185, 27.834879>,  <30.205875, 37.808971, 27.875547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053953, 37.441185, 27.834879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266874, 0.003676, 0.963724,
		-0.885734, 0.393163, -0.246776,
		-0.379808, -0.919461, -0.101669,
		29.940010, 37.165348, 27.804379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602575, 37.786983, 28.296824>,  <30.205875, 37.808971, 27.875547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602575, 37.786983, 28.296824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.664637, 37.394299, 28.252684>,  <29.701874, 37.158688, 28.226200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.664637, 37.394299, 28.252684>,  <29.602575, 37.786983, 28.296824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664637, 37.394299, 28.252684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290003, -0.152042, 0.944871,
		-0.944365, -0.114598, -0.308288,
		0.155153, -0.981708, -0.110349,
		29.711182, 37.099785, 28.219580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018084, 37.365730, 28.711056>,  <29.602575, 37.786983, 28.296824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018084, 37.365730, 28.711056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310339, 37.100246, 28.646988>,  <29.485691, 36.940956, 28.608547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310339, 37.100246, 28.646988>,  <29.018084, 37.365730, 28.711056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310339, 37.100246, 28.646988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015514, -0.218393, 0.975738,
		-0.682589, -0.715395, -0.149269,
		0.730638, -0.663713, -0.160171,
		29.529530, 36.901134, 28.598936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852468, 36.863342, 29.137131>,  <29.018084, 37.365730, 28.711056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852468, 36.863342, 29.137131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239952, 36.807636, 29.054949>,  <29.472443, 36.774212, 29.005640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239952, 36.807636, 29.054949>,  <28.852468, 36.863342, 29.137131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239952, 36.807636, 29.054949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131005, -0.416178, 0.899796,
		-0.210819, -0.898554, -0.384910,
		0.968707, -0.139269, -0.205453,
		29.530563, 36.765854, 28.993313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979361, 36.136524, 29.293905>,  <28.852468, 36.863342, 29.137131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979361, 36.136524, 29.293905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293777, 36.382298, 29.321068>,  <29.482428, 36.529762, 29.337364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293777, 36.382298, 29.321068>,  <28.979361, 36.136524, 29.293905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293777, 36.382298, 29.321068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165631, -0.315165, 0.934471,
		0.595571, -0.723286, -0.349502,
		0.786041, 0.614433, 0.067904,
		29.529591, 36.566628, 29.341438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515968, 35.744717, 29.597750>,  <28.979361, 36.136524, 29.293905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515968, 35.744717, 29.597750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642056, 36.116299, 29.675390>,  <29.717709, 36.339249, 29.721975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642056, 36.116299, 29.675390>,  <29.515968, 35.744717, 29.597750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642056, 36.116299, 29.675390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144611, -0.249158, 0.957605,
		0.937937, -0.273785, -0.212876,
		0.315218, 0.928957, 0.194102,
		29.736622, 36.394985, 29.733622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048670, 35.655910, 30.041115>,  <29.515968, 35.744717, 29.597750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048670, 35.655910, 30.041115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984335, 36.046173, 30.100737>,  <29.945734, 36.280331, 30.136511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984335, 36.046173, 30.100737>,  <30.048670, 35.655910, 30.041115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984335, 36.046173, 30.100737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109615, -0.132430, 0.985112,
		0.980875, 0.174781, -0.085648,
		-0.160836, 0.975661, 0.149056,
		29.936085, 36.338871, 30.145454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486609, 35.789482, 30.610722>,  <30.048670, 35.655910, 30.041115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486609, 35.789482, 30.610722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.214546, 36.082550, 30.601036>,  <30.051310, 36.258392, 30.595224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.214546, 36.082550, 30.601036>,  <30.486609, 35.789482, 30.610722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214546, 36.082550, 30.601036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052031, -0.015301, 0.998528,
		0.731220, 0.680414, 0.048528,
		-0.680155, 0.732668, -0.024214,
		30.010500, 36.302349, 30.593771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752338, 36.399353, 31.027935>,  <30.486609, 35.789482, 30.610722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752338, 36.399353, 31.027935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354494, 36.366604, 31.002489>,  <30.115788, 36.346954, 30.987221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354494, 36.366604, 31.002489>,  <30.752338, 36.399353, 31.027935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354494, 36.366604, 31.002489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053819, -0.116748, 0.991702,
		-0.088622, 0.989781, 0.111713,
		-0.994610, -0.081875, -0.063615,
		30.056110, 36.342041, 30.983404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370535, 36.473927, 31.776205>,  <30.752338, 36.399353, 31.027935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370535, 36.473927, 31.776205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024511, 36.438194, 31.578745>,  <29.816896, 36.416756, 31.460270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024511, 36.438194, 31.578745>,  <30.370535, 36.473927, 31.776205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024511, 36.438194, 31.578745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480212, -0.137236, 0.866350,
		-0.145140, 0.986502, 0.075819,
		-0.865061, -0.089333, -0.493649,
		29.764994, 36.411396, 31.430651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920811, 36.917271, 32.160847>,  <30.370535, 36.473927, 31.776205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920811, 36.917271, 32.160847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.706430, 36.633785, 31.977333>,  <29.577803, 36.463696, 31.867226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.706430, 36.633785, 31.977333>,  <29.920811, 36.917271, 32.160847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706430, 36.633785, 31.977333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517262, -0.153824, 0.841889,
		-0.667230, 0.688522, -0.284148,
		-0.535951, -0.708713, -0.458782,
		29.545645, 36.421169, 31.839699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254923, 37.053688, 32.369034>,  <29.920811, 36.917271, 32.160847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254923, 37.053688, 32.369034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.232037, 36.668503, 32.263634>,  <29.218306, 36.437393, 32.200394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.232037, 36.668503, 32.263634>,  <29.254923, 37.053688, 32.369034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232037, 36.668503, 32.263634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632776, -0.169171, 0.755630,
		-0.772219, 0.209971, -0.599659,
		-0.057215, -0.962961, -0.263502,
		29.214872, 36.379616, 32.184582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512220, 36.794098, 32.337509>,  <29.254923, 37.053688, 32.369034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512220, 36.794098, 32.337509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.723629, 36.458069, 32.386417>,  <28.850473, 36.256451, 32.415764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.723629, 36.458069, 32.386417>,  <28.512220, 36.794098, 32.337509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723629, 36.458069, 32.386417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670882, -0.325064, 0.666521,
		-0.520178, -0.434300, -0.735390,
		0.528519, -0.840070, 0.122273,
		28.882185, 36.206047, 32.423100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127707, 36.186264, 32.158581>,  <28.512220, 36.794098, 32.337509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127707, 36.186264, 32.158581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410044, 36.064819, 32.414581>,  <28.579445, 35.991951, 32.568184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410044, 36.064819, 32.414581>,  <28.127707, 36.186264, 32.158581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410044, 36.064819, 32.414581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702628, -0.414877, 0.578093,
		0.090008, -0.857728, -0.506163,
		0.705842, -0.303612, 0.640006,
		28.621796, 35.973736, 32.606583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879610, 35.569672, 32.260155>,  <28.127707, 36.186264, 32.158581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879610, 35.569672, 32.260155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139755, 35.576744, 32.563923>,  <28.295843, 35.580986, 32.746181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139755, 35.576744, 32.563923>,  <27.879610, 35.569672, 32.260155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139755, 35.576744, 32.563923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599491, -0.602031, 0.527418,
		0.466518, -0.798277, -0.380939,
		0.650363, 0.017681, 0.759418,
		28.334864, 35.582047, 32.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828180, 34.925949, 32.521767>,  <27.879610, 35.569672, 32.260155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828180, 34.925949, 32.521767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001040, 35.138142, 32.813477>,  <28.104755, 35.265457, 32.988503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001040, 35.138142, 32.813477>,  <27.828180, 34.925949, 32.521767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001040, 35.138142, 32.813477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382078, -0.624807, 0.680906,
		0.816862, -0.572891, -0.067325,
		0.432150, 0.530483, 0.729270,
		28.130684, 35.297287, 33.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226986, 34.494328, 32.947414>,  <27.828180, 34.925949, 32.521767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226986, 34.494328, 32.947414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139769, 34.802811, 33.186642>,  <28.087439, 34.987900, 33.330177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139769, 34.802811, 33.186642>,  <28.226986, 34.494328, 32.947414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139769, 34.802811, 33.186642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502419, -0.614075, 0.608677,
		0.836680, -0.167765, 0.521365,
		-0.218043, 0.771211, 0.598073,
		28.074356, 35.034176, 33.366062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615889, 33.804409, 32.842468>,  <28.226986, 34.494328, 32.947414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615889, 33.804409, 32.842468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906769, 33.710995, 33.100658>,  <29.081297, 33.654945, 33.255573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906769, 33.710995, 33.100658>,  <28.615889, 33.804409, 32.842468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906769, 33.710995, 33.100658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651048, -0.063334, -0.756390,
		0.217522, 0.970284, 0.105985,
		0.727201, -0.233533, 0.645478,
		29.124929, 33.640934, 33.294300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264538, 34.161469, 32.674496>,  <28.615889, 33.804409, 32.842468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264538, 34.161469, 32.674496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381338, 33.823025, 32.852859>,  <29.451418, 33.619957, 32.959877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381338, 33.823025, 32.852859>,  <29.264538, 34.161469, 32.674496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381338, 33.823025, 32.852859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631184, -0.179803, -0.754505,
		0.718569, 0.501768, 0.481548,
		0.292003, -0.846109, 0.445909,
		29.468939, 33.569191, 32.986633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006334, 34.124638, 32.785923>,  <29.264538, 34.161469, 32.674496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006334, 34.124638, 32.785923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906595, 33.737541, 32.800373>,  <29.846752, 33.505283, 32.809044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906595, 33.737541, 32.800373>,  <30.006334, 34.124638, 32.785923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906595, 33.737541, 32.800373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595775, -0.182708, -0.782093,
		0.763463, -0.173490, 0.622113,
		-0.249350, -0.967739, 0.036130,
		29.831791, 33.447220, 32.811211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495352, 33.932838, 32.377151>,  <30.006334, 34.124638, 32.785923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495352, 33.932838, 32.377151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250124, 33.618641, 32.410946>,  <30.102987, 33.430122, 32.431225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250124, 33.618641, 32.410946>,  <30.495352, 33.932838, 32.377151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250124, 33.618641, 32.410946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358262, -0.371735, -0.856424,
		0.704127, -0.494779, 0.509313,
		-0.613070, -0.785498, 0.084488,
		30.066202, 33.382992, 32.436291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920094, 33.285244, 32.384125>,  <30.495352, 33.932838, 32.377151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920094, 33.285244, 32.384125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.547146, 33.247059, 32.244656>,  <30.323378, 33.224148, 32.160973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.547146, 33.247059, 32.244656>,  <30.920094, 33.285244, 32.384125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547146, 33.247059, 32.244656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360654, -0.179301, -0.915303,
		0.024863, -0.979151, 0.201605,
		-0.932368, -0.095467, -0.348677,
		30.267435, 33.218418, 32.140053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018118, 32.765091, 31.865164>,  <30.920094, 33.285244, 32.384125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018118, 32.765091, 31.865164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.653706, 32.912361, 31.790897>,  <30.435059, 33.000721, 31.746338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.653706, 32.912361, 31.790897>,  <31.018118, 32.765091, 31.865164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653706, 32.912361, 31.790897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116546, -0.201991, -0.972428,
		-0.395524, -0.907551, 0.141111,
		-0.911031, 0.368173, -0.185664,
		30.380396, 33.022812, 31.735199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602270, 32.226734, 31.432123>,  <31.018118, 32.765091, 31.865164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602270, 32.226734, 31.432123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.444090, 32.590164, 31.378296>,  <30.349182, 32.808224, 31.345999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.444090, 32.590164, 31.378296>,  <30.602270, 32.226734, 31.432123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444090, 32.590164, 31.378296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168435, -0.072292, -0.983058,
		-0.902912, -0.411415, -0.124448,
		-0.395449, 0.908576, -0.134570,
		30.325455, 32.862736, 31.337925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139692, 32.162373, 30.856947>,  <30.602270, 32.226734, 31.432123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139692, 32.162373, 30.856947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249823, 32.545338, 30.891727>,  <30.315901, 32.775116, 30.912596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249823, 32.545338, 30.891727>,  <30.139692, 32.162373, 30.856947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249823, 32.545338, 30.891727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158566, 0.134433, -0.978154,
		-0.948184, 0.255521, 0.188826,
		0.275323, 0.957411, 0.086950,
		30.332420, 32.832561, 30.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779217, 32.520996, 30.361198>,  <30.139692, 32.162373, 30.856947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779217, 32.520996, 30.361198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063122, 32.791439, 30.440302>,  <30.233465, 32.953705, 30.487764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063122, 32.791439, 30.440302>,  <29.779217, 32.520996, 30.361198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063122, 32.791439, 30.440302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029654, 0.251803, -0.967324,
		-0.703814, 0.692437, 0.158672,
		0.709765, 0.676111, 0.197756,
		30.276051, 32.994274, 30.499628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633577, 32.998714, 29.908863>,  <29.779217, 32.520996, 30.361198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633577, 32.998714, 29.908863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.005964, 33.108139, 30.005579>,  <30.229397, 33.173794, 30.063608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.005964, 33.108139, 30.005579>,  <29.633577, 32.998714, 29.908863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005964, 33.108139, 30.005579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078203, 0.497469, -0.863950,
		-0.356630, 0.823217, 0.441733,
		0.930967, 0.273566, 0.241791,
		30.285254, 33.190208, 30.078115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620516, 33.626759, 29.728304>,  <29.633577, 32.998714, 29.908863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620516, 33.626759, 29.728304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006325, 33.521175, 29.726511>,  <30.237810, 33.457825, 29.725435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006325, 33.521175, 29.726511>,  <29.620516, 33.626759, 29.728304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006325, 33.521175, 29.726511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067086, 0.261489, -0.962872,
		0.255331, 0.928412, 0.269921,
		0.964523, -0.263959, -0.004483,
		30.295681, 33.441986, 29.725166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946667, 34.185020, 29.490152>,  <29.620516, 33.626759, 29.728304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946667, 34.185020, 29.490152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.214186, 33.897018, 29.416069>,  <30.374697, 33.724216, 29.371620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.214186, 33.897018, 29.416069>,  <29.946667, 34.185020, 29.490152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214186, 33.897018, 29.416069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141665, 0.121133, -0.982475,
		0.729821, 0.683316, -0.020986,
		0.668799, -0.720004, -0.185207,
		30.414825, 33.681019, 29.360506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484690, 34.501644, 29.077913>,  <29.946667, 34.185020, 29.490152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484690, 34.501644, 29.077913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524298, 34.108185, 29.017742>,  <30.548063, 33.872108, 28.981640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524298, 34.108185, 29.017742>,  <30.484690, 34.501644, 29.077913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524298, 34.108185, 29.017742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107598, 0.160868, -0.981094,
		0.989251, 0.080962, 0.121768,
		0.099020, -0.983650, -0.150427,
		30.554003, 33.813091, 28.972614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205854, 34.415581, 28.780807>,  <30.484690, 34.501644, 29.077913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205854, 34.415581, 28.780807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969929, 34.107033, 28.685221>,  <30.828373, 33.921902, 28.627869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969929, 34.107033, 28.685221>,  <31.205854, 34.415581, 28.780807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969929, 34.107033, 28.685221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221956, 0.129671, -0.966396,
		0.776438, -0.623033, 0.094729,
		-0.589813, -0.771372, -0.238967,
		30.792984, 33.875622, 28.613531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619204, 33.948868, 28.204288>,  <31.205854, 34.415581, 28.780807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619204, 33.948868, 28.204288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.233473, 33.846279, 28.178059>,  <31.002035, 33.784725, 28.162321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.233473, 33.846279, 28.178059>,  <31.619204, 33.948868, 28.204288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233473, 33.846279, 28.178059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023429, 0.329433, -0.943888,
		0.263678, -0.908680, -0.323690,
		-0.964326, -0.256466, -0.065574,
		30.944176, 33.769341, 28.158386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545383, 33.537926, 27.650883>,  <31.619204, 33.948868, 28.204288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545383, 33.537926, 27.650883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.181587, 33.695789, 27.703144>,  <30.963310, 33.790508, 27.734501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.181587, 33.695789, 27.703144>,  <31.545383, 33.537926, 27.650883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181587, 33.695789, 27.703144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007569, 0.329944, -0.943970,
		-0.415657, -0.857542, -0.303068,
		-0.909490, 0.394662, 0.130653,
		30.908741, 33.814186, 27.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339441, 33.487087, 27.014147>,  <31.545383, 33.537926, 27.650883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339441, 33.487087, 27.014147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057064, 33.700405, 27.200583>,  <30.887638, 33.828396, 27.312445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057064, 33.700405, 27.200583>,  <31.339441, 33.487087, 27.014147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057064, 33.700405, 27.200583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299418, 0.371668, -0.878756,
		-0.641867, -0.759908, -0.102699,
		-0.705943, 0.533294, 0.466092,
		30.845282, 33.860394, 27.340410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729937, 33.479256, 26.650848>,  <31.339441, 33.487087, 27.014147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729937, 33.479256, 26.650848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666250, 33.811539, 26.864233>,  <30.628038, 34.010906, 26.992264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666250, 33.811539, 26.864233>,  <30.729937, 33.479256, 26.650848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666250, 33.811539, 26.864233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237646, 0.492218, -0.837404,
		-0.958214, -0.260103, 0.119044,
		-0.159216, 0.830703, 0.533463,
		30.618486, 34.060749, 27.024273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029091, 33.738953, 26.456194>,  <30.729937, 33.479256, 26.650848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029091, 33.738953, 26.456194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245913, 34.034271, 26.616737>,  <30.376005, 34.211464, 26.713064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245913, 34.034271, 26.616737>,  <30.029091, 33.738953, 26.456194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245913, 34.034271, 26.616737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159459, 0.559303, -0.813482,
		-0.825076, 0.376950, 0.420901,
		0.542054, 0.738301, 0.401360,
		30.408529, 34.255760, 26.737144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632416, 34.276901, 26.277952>,  <30.029091, 33.738953, 26.456194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632416, 34.276901, 26.277952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002825, 34.404716, 26.358322>,  <30.225071, 34.481407, 26.406544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002825, 34.404716, 26.358322>,  <29.632416, 34.276901, 26.277952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002825, 34.404716, 26.358322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030802, 0.594498, -0.803507,
		-0.376204, 0.737878, 0.560363,
		0.926025, 0.319542, 0.200924,
		30.280632, 34.500580, 26.418600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607065, 35.029991, 26.077127>,  <29.632416, 34.276901, 26.277952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607065, 35.029991, 26.077127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985847, 34.902996, 26.097038>,  <30.213118, 34.826801, 26.108984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985847, 34.902996, 26.097038>,  <29.607065, 35.029991, 26.077127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985847, 34.902996, 26.097038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212248, 0.501585, -0.838667,
		0.241296, 0.804746, 0.542365,
		0.946957, -0.317483, 0.049776,
		30.269934, 34.807751, 26.111971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981194, 35.641163, 25.843262>,  <29.607065, 35.029991, 26.077127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981194, 35.641163, 25.843262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212181, 35.319302, 25.788034>,  <30.350773, 35.126186, 25.754898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212181, 35.319302, 25.788034>,  <29.981194, 35.641163, 25.843262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212181, 35.319302, 25.788034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257736, 0.340146, -0.904363,
		0.774663, 0.486655, 0.403812,
		0.577468, -0.804654, -0.138070,
		30.385422, 35.077904, 25.746613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568766, 36.056385, 25.746717>,  <29.981194, 35.641163, 25.843262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568766, 36.056385, 25.746717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.564993, 35.682659, 25.604187>,  <30.562729, 35.458424, 25.518669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.564993, 35.682659, 25.604187>,  <30.568766, 36.056385, 25.746717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564993, 35.682659, 25.604187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319559, 0.334840, -0.886433,
		0.947519, -0.122226, 0.295411,
		-0.009430, -0.934314, -0.356326,
		30.562164, 35.402367, 25.497290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266472, 35.801308, 25.616020>,  <30.568766, 36.056385, 25.746717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266472, 35.801308, 25.616020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029377, 35.597298, 25.366692>,  <30.887119, 35.474892, 25.217094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029377, 35.597298, 25.366692>,  <31.266472, 35.801308, 25.616020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029377, 35.597298, 25.366692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534863, 0.329349, -0.778107,
		0.602148, -0.794607, 0.077577,
		-0.592739, -0.510029, -0.623322,
		30.851555, 35.444290, 25.179695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.991417, 35.607296, 47.267719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.766502, 35.279724, 47.221798>,  <39.631554, 35.083179, 47.194244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.766502, 35.279724, 47.221798>,  <39.991417, 35.607296, 47.267719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766502, 35.279724, 47.221798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251310, 0.036960, 0.967201,
		-0.787831, 0.572696, -0.226589,
		-0.562287, -0.818934, -0.114805,
		39.597816, 35.034042, 47.187355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308628, 35.839348, 47.587559>,  <39.991417, 35.607296, 47.267719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308628, 35.839348, 47.587559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318905, 35.440155, 47.564346>,  <39.325069, 35.200638, 47.550419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318905, 35.440155, 47.564346>,  <39.308628, 35.839348, 47.587559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318905, 35.440155, 47.564346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478165, -0.063243, 0.875990,
		-0.877894, 0.005242, -0.478826,
		0.025691, -0.997984, -0.058027,
		39.326611, 35.140759, 47.546940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656441, 35.608772, 47.861679>,  <39.308628, 35.839348, 47.587559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656441, 35.608772, 47.861679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878571, 35.276604, 47.879673>,  <39.011848, 35.077305, 47.890469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878571, 35.276604, 47.879673>,  <38.656441, 35.608772, 47.861679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878571, 35.276604, 47.879673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326015, -0.167619, 0.930386,
		-0.765070, -0.531328, -0.363811,
		0.555322, -0.830418, 0.044981,
		39.045166, 35.027477, 47.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251743, 35.029526, 48.050060>,  <38.656441, 35.608772, 47.861679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251743, 35.029526, 48.050060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.612545, 34.920731, 48.184174>,  <38.829025, 34.855453, 48.264641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.612545, 34.920731, 48.184174>,  <38.251743, 35.029526, 48.050060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612545, 34.920731, 48.184174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357513, -0.035207, 0.933244,
		-0.242031, -0.961655, -0.128998,
		0.902001, -0.271993, 0.335283,
		38.883144, 34.839134, 48.284760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103428, 34.598564, 48.578011>,  <38.251743, 35.029526, 48.050060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103428, 34.598564, 48.578011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493423, 34.652420, 48.648750>,  <38.727421, 34.684734, 48.691193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493423, 34.652420, 48.648750>,  <38.103428, 34.598564, 48.578011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493423, 34.652420, 48.648750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157862, -0.140632, 0.977396,
		0.156472, -0.980863, -0.115859,
		0.974985, 0.134646, 0.176846,
		38.785919, 34.692814, 48.701805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284195, 34.274029, 49.211884>,  <38.103428, 34.598564, 48.578011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284195, 34.274029, 49.211884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588806, 34.531212, 49.179188>,  <38.771572, 34.685520, 49.159569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588806, 34.531212, 49.179188>,  <38.284195, 34.274029, 49.211884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588806, 34.531212, 49.179188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144496, -0.045478, 0.988460,
		0.631820, -0.764551, -0.127537,
		0.761528, 0.642957, -0.081741,
		38.817265, 34.724098, 49.154667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885303, 33.988293, 49.584064>,  <38.284195, 34.274029, 49.211884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885303, 33.988293, 49.584064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957958, 34.378716, 49.536186>,  <39.001549, 34.612968, 49.507458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957958, 34.378716, 49.536186>,  <38.885303, 33.988293, 49.584064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957958, 34.378716, 49.536186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306229, 0.059531, 0.950095,
		0.934470, -0.209224, -0.288083,
		0.181632, 0.976054, -0.119700,
		39.012447, 34.671532, 49.500275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551136, 34.066444, 49.979561>,  <38.885303, 33.988293, 49.584064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551136, 34.066444, 49.979561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365097, 34.417248, 49.931320>,  <39.253471, 34.627728, 49.902374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365097, 34.417248, 49.931320>,  <39.551136, 34.066444, 49.979561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365097, 34.417248, 49.931320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064769, 0.169580, 0.983386,
		0.882885, 0.449563, -0.135675,
		-0.465101, 0.877004, -0.120602,
		39.225567, 34.680347, 49.895138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857021, 34.554768, 50.495777>,  <39.551136, 34.066444, 49.979561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857021, 34.554768, 50.495777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499027, 34.704288, 50.398388>,  <39.284233, 34.793999, 50.339954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499027, 34.704288, 50.398388>,  <39.857021, 34.554768, 50.495777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499027, 34.704288, 50.398388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152671, 0.256178, 0.954497,
		0.419162, 0.891430, -0.172207,
		-0.894983, 0.373798, -0.243475,
		39.230534, 34.816429, 50.325344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893291, 35.199890, 50.730644>,  <39.857021, 34.554768, 50.495777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893291, 35.199890, 50.730644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508846, 35.089493, 50.727100>,  <39.278179, 35.023254, 50.724976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508846, 35.089493, 50.727100>,  <39.893291, 35.199890, 50.730644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508846, 35.089493, 50.727100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077464, 0.238694, 0.968000,
		-0.265051, 0.931048, -0.250793,
		-0.961118, -0.275997, -0.008857,
		39.220512, 35.006695, 50.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481163, 35.742893, 51.081459>,  <39.893291, 35.199890, 50.730644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481163, 35.742893, 51.081459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228401, 35.433033, 51.091305>,  <39.076744, 35.247116, 51.097214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228401, 35.433033, 51.091305>,  <39.481163, 35.742893, 51.081459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228401, 35.433033, 51.091305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160667, 0.161998, 0.973624,
		-0.758207, 0.611286, -0.226829,
		-0.631908, -0.774652, 0.024614,
		39.038830, 35.200638, 51.098690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988441, 35.938385, 51.445305>,  <39.481163, 35.742893, 51.081459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988441, 35.938385, 51.445305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923546, 35.550636, 51.519062>,  <38.884609, 35.317989, 51.563316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923546, 35.550636, 51.519062>,  <38.988441, 35.938385, 51.445305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923546, 35.550636, 51.519062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384042, 0.234167, 0.893128,
		-0.908950, 0.074087, -0.410270,
		-0.162241, -0.969369, 0.184394,
		38.874874, 35.259827, 51.574379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261776, 35.781803, 51.768059>,  <38.988441, 35.938385, 51.445305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261776, 35.781803, 51.768059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506283, 35.498089, 51.908493>,  <38.652988, 35.327862, 51.992756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506283, 35.498089, 51.908493>,  <38.261776, 35.781803, 51.768059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506283, 35.498089, 51.908493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321617, 0.182707, 0.929075,
		-0.723126, -0.680832, -0.116435,
		0.611271, -0.709286, 0.351087,
		38.689663, 35.285305, 52.013821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976055, 35.304710, 52.220482>,  <38.261776, 35.781803, 51.768059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976055, 35.304710, 52.220482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604595, 35.453037, 52.216492>,  <37.381718, 35.542030, 52.214096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604595, 35.453037, 52.216492>,  <37.976055, 35.304710, 52.220482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604595, 35.453037, 52.216492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148755, 0.347626, -0.925758,
		-0.339814, -0.861193, -0.377985,
		-0.928654, 0.370813, -0.009979,
		37.326000, 35.564281, 52.213497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695797, 35.251194, 51.573681>,  <37.976055, 35.304710, 52.220482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695797, 35.251194, 51.573681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464924, 35.547733, 51.710655>,  <37.326401, 35.725658, 51.792839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464924, 35.547733, 51.710655>,  <37.695797, 35.251194, 51.573681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464924, 35.547733, 51.710655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013772, 0.428108, -0.903623,
		-0.816502, -0.516836, -0.257305,
		-0.577179, 0.741353, 0.342433,
		37.291771, 35.770138, 51.813385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100548, 35.233898, 51.197197>,  <37.695797, 35.251194, 51.573681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100548, 35.233898, 51.197197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150364, 35.607254, 51.331818>,  <37.180256, 35.831268, 51.412590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150364, 35.607254, 51.331818>,  <37.100548, 35.233898, 51.197197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150364, 35.607254, 51.331818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109152, 0.350023, -0.930360,
		-0.986192, 0.079135, 0.145475,
		0.124544, 0.933393, 0.336552,
		37.187729, 35.887272, 51.432785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595989, 35.602013, 50.950012>,  <37.100548, 35.233898, 51.197197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595989, 35.602013, 50.950012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757629, 35.942337, 51.084370>,  <36.854614, 36.146530, 51.164986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757629, 35.942337, 51.084370>,  <36.595989, 35.602013, 50.950012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757629, 35.942337, 51.084370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525316, 0.516476, -0.676236,
		-0.748829, 0.096818, 0.655653,
		0.404101, 0.850811, 0.335893,
		36.878860, 36.197578, 51.185139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972622, 36.085487, 51.090836>,  <36.595989, 35.602013, 50.950012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972622, 36.085487, 51.090836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296600, 36.301983, 51.000458>,  <36.490986, 36.431881, 50.946232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296600, 36.301983, 51.000458>,  <35.972622, 36.085487, 51.090836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296600, 36.301983, 51.000458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523827, 0.494279, -0.693754,
		-0.263805, 0.680259, 0.683853,
		0.809946, 0.541236, -0.225945,
		36.539585, 36.464355, 50.932674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685772, 36.733212, 51.100094>,  <35.972622, 36.085487, 51.090836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685772, 36.733212, 51.100094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039326, 36.787441, 50.921043>,  <36.251457, 36.819981, 50.813614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039326, 36.787441, 50.921043>,  <35.685772, 36.733212, 51.100094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039326, 36.787441, 50.921043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449155, 0.512923, -0.731553,
		0.130413, 0.847661, 0.514260,
		0.883885, 0.135578, -0.447622,
		36.304493, 36.828114, 50.786758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798988, 37.442902, 50.930401>,  <35.685772, 36.733212, 51.100094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798988, 37.442902, 50.930401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028324, 37.252430, 50.663708>,  <36.165924, 37.138145, 50.503693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028324, 37.252430, 50.663708>,  <35.798988, 37.442902, 50.930401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028324, 37.252430, 50.663708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566470, 0.357548, -0.742476,
		0.591942, 0.803375, -0.064747,
		0.573337, -0.476180, -0.666736,
		36.200325, 37.109577, 50.463688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030788, 37.992802, 50.398418>,  <35.798988, 37.442902, 50.930401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030788, 37.992802, 50.398418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077885, 37.646236, 50.204319>,  <36.106144, 37.438297, 50.087860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077885, 37.646236, 50.204319>,  <36.030788, 37.992802, 50.398418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077885, 37.646236, 50.204319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430895, 0.395674, -0.811031,
		0.894688, 0.304582, -0.326746,
		0.117740, -0.866413, -0.485247,
		36.113205, 37.386311, 50.058746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339539, 38.152622, 49.765877>,  <36.030788, 37.992802, 50.398418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339539, 38.152622, 49.765877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152653, 37.802464, 49.716240>,  <36.040520, 37.592369, 49.686459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152653, 37.802464, 49.716240>,  <36.339539, 38.152622, 49.765877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152653, 37.802464, 49.716240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235654, 0.258568, -0.936808,
		0.852161, -0.408447, -0.327097,
		-0.467213, -0.875393, -0.124090,
		36.012489, 37.539845, 49.679012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433895, 38.115650, 48.997471>,  <36.339539, 38.152622, 49.765877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433895, 38.115650, 48.997471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196125, 37.798409, 49.050613>,  <36.053463, 37.608063, 49.082500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196125, 37.798409, 49.050613>,  <36.433895, 38.115650, 48.997471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196125, 37.798409, 49.050613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340323, 0.098417, -0.935144,
		0.728588, -0.601087, -0.328412,
		-0.594424, -0.793101, 0.132858,
		36.017799, 37.560478, 49.090469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531677, 37.597797, 48.513882>,  <36.433895, 38.115650, 48.997471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531677, 37.597797, 48.513882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166962, 37.468807, 48.615593>,  <35.948132, 37.391415, 48.676620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166962, 37.468807, 48.615593>,  <36.531677, 37.597797, 48.513882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166962, 37.468807, 48.615593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226821, -0.120733, -0.966424,
		0.342346, -0.938848, 0.036939,
		-0.911785, -0.322473, 0.254283,
		35.893425, 37.372066, 48.691879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437981, 37.049622, 48.091724>,  <36.531677, 37.597797, 48.513882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437981, 37.049622, 48.091724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064499, 37.145378, 48.198219>,  <35.840408, 37.202831, 48.262115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064499, 37.145378, 48.198219>,  <36.437981, 37.049622, 48.091724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064499, 37.145378, 48.198219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339158, -0.353125, -0.871937,
		-0.114721, -0.904430, 0.410907,
		-0.933708, 0.239392, 0.266234,
		35.784386, 37.217197, 48.278088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915577, 36.493423, 47.999969>,  <36.437981, 37.049622, 48.091724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915577, 36.493423, 47.999969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721134, 36.840115, 47.955288>,  <35.604469, 37.048130, 47.928478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721134, 36.840115, 47.955288>,  <35.915577, 36.493423, 47.999969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721134, 36.840115, 47.955288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286411, -0.278776, -0.916653,
		-0.825632, -0.413598, 0.383756,
		-0.486108, 0.866730, -0.111707,
		35.575302, 37.100132, 47.921776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503399, 36.289379, 47.568371>,  <35.915577, 36.493423, 47.999969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503399, 36.289379, 47.568371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417595, 36.679760, 47.583874>,  <35.366112, 36.913990, 47.593174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417595, 36.679760, 47.583874>,  <35.503399, 36.289379, 47.568371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417595, 36.679760, 47.583874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408553, -0.053611, -0.911159,
		-0.887170, -0.211284, 0.410229,
		-0.214506, 0.975953, 0.038759,
		35.353245, 36.972546, 47.595501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863556, 36.415485, 47.218204>,  <35.503399, 36.289379, 47.568371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863556, 36.415485, 47.218204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044083, 36.771950, 47.199703>,  <35.152401, 36.985828, 47.188602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044083, 36.771950, 47.199703>,  <34.863556, 36.415485, 47.218204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044083, 36.771950, 47.199703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380761, 0.145438, -0.913164,
		-0.807051, 0.429741, 0.404959,
		0.451320, 0.891163, -0.046253,
		35.179478, 37.039299, 47.185829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132938, 36.388577, 47.065262>,  <34.863556, 36.415485, 47.218204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132938, 36.388577, 47.065262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745789, 36.288651, 47.053829>,  <33.513500, 36.228695, 47.046970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745789, 36.288651, 47.053829>,  <34.132938, 36.388577, 47.065262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745789, 36.288651, 47.053829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049123, 0.076400, 0.995866,
		-0.246598, 0.965275, -0.086217,
		-0.967872, -0.249814, -0.028577,
		33.455425, 36.213707, 47.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842651, 36.839237, 47.512295>,  <34.132938, 36.388577, 47.065262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842651, 36.839237, 47.512295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602730, 36.521442, 47.474277>,  <33.458778, 36.330765, 47.451466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602730, 36.521442, 47.474277>,  <33.842651, 36.839237, 47.512295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602730, 36.521442, 47.474277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068847, -0.067096, 0.995368,
		-0.797181, 0.603567, -0.014453,
		-0.599802, -0.794484, -0.095042,
		33.422791, 36.283096, 47.445766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401802, 36.962151, 48.045208>,  <33.842651, 36.839237, 47.512295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401802, 36.962151, 48.045208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359749, 36.577427, 47.944115>,  <33.334515, 36.346592, 47.883457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359749, 36.577427, 47.944115>,  <33.401802, 36.962151, 48.045208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359749, 36.577427, 47.944115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113395, -0.264079, 0.957812,
		-0.987972, 0.072042, 0.136828,
		-0.105136, -0.961807, -0.252733,
		33.328209, 36.288883, 47.868294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939384, 36.651970, 48.647720>,  <33.401802, 36.962151, 48.045208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939384, 36.651970, 48.647720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091854, 36.328884, 48.467808>,  <33.183338, 36.135033, 48.359859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091854, 36.328884, 48.467808>,  <32.939384, 36.651970, 48.647720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091854, 36.328884, 48.467808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248624, -0.379032, 0.891359,
		-0.890444, -0.451592, 0.056339,
		0.381176, -0.807713, -0.449783,
		33.206207, 36.086571, 48.332874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588341, 36.136784, 48.941483>,  <32.939384, 36.651970, 48.647720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588341, 36.136784, 48.941483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919376, 35.980740, 48.780033>,  <33.117996, 35.887112, 48.683163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919376, 35.980740, 48.780033>,  <32.588341, 36.136784, 48.941483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919376, 35.980740, 48.780033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217356, -0.440251, 0.871169,
		-0.517550, -0.808698, -0.279552,
		0.827586, -0.390111, -0.403627,
		33.167652, 35.863708, 48.658947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558022, 35.500019, 49.190075>,  <32.588341, 36.136784, 48.941483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558022, 35.500019, 49.190075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943718, 35.503727, 49.084137>,  <33.175137, 35.505951, 49.020573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943718, 35.503727, 49.084137>,  <32.558022, 35.500019, 49.190075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943718, 35.503727, 49.084137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240986, -0.446461, 0.861742,
		-0.110253, -0.894755, -0.432732,
		0.964246, 0.009273, -0.264847,
		33.232990, 35.506508, 49.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871685, 34.812328, 49.214031>,  <32.558022, 35.500019, 49.190075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871685, 34.812328, 49.214031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169037, 35.075142, 49.264137>,  <33.347446, 35.232830, 49.294201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169037, 35.075142, 49.264137>,  <32.871685, 34.812328, 49.214031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169037, 35.075142, 49.264137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351968, -0.543510, 0.762047,
		0.568778, -0.522398, -0.635290,
		0.743378, 0.657037, 0.125269,
		33.392052, 35.272251, 49.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920689, 34.265518, 48.945698>,  <32.871685, 34.812328, 49.214031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920689, 34.265518, 48.945698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767159, 33.899544, 48.895790>,  <32.675041, 33.679958, 48.865845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767159, 33.899544, 48.895790>,  <32.920689, 34.265518, 48.945698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767159, 33.899544, 48.895790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159599, 0.198814, -0.966955,
		0.909509, -0.351228, -0.222333,
		-0.383825, -0.914938, -0.124768,
		32.652012, 33.625061, 48.858360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408886, 33.797272, 48.531494>,  <32.920689, 34.265518, 48.945698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408886, 33.797272, 48.531494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020596, 33.708519, 48.494717>,  <32.787621, 33.655266, 48.472649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020596, 33.708519, 48.494717>,  <33.408886, 33.797272, 48.531494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020596, 33.708519, 48.494717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057812, 0.155719, -0.986108,
		0.233120, -0.962558, -0.138333,
		-0.970728, -0.221884, -0.091949,
		32.729378, 33.641956, 48.467133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448933, 33.497150, 47.919971>,  <33.408886, 33.797272, 48.531494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448933, 33.497150, 47.919971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063419, 33.577957, 47.989601>,  <32.832111, 33.626442, 48.031380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063419, 33.577957, 47.989601>,  <33.448933, 33.497150, 47.919971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063419, 33.577957, 47.989601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146164, 0.145790, -0.978459,
		-0.223046, -0.968470, -0.110982,
		-0.963787, 0.202020, 0.174073,
		32.774284, 33.638561, 48.041824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062328, 32.846680, 47.665722>,  <33.448933, 33.497150, 47.919971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062328, 32.846680, 47.665722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873600, 33.198582, 47.689083>,  <32.760365, 33.409725, 47.703098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873600, 33.198582, 47.689083>,  <33.062328, 32.846680, 47.665722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873600, 33.198582, 47.689083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227829, -0.057660, -0.971992,
		-0.851750, -0.471914, 0.227640,
		-0.471822, 0.879757, 0.058404,
		32.732052, 33.462509, 47.706604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689091, 32.805492, 47.097126>,  <33.062328, 32.846680, 47.665722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689091, 32.805492, 47.097126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566963, 33.180126, 47.165939>,  <32.493687, 33.404907, 47.207226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566963, 33.180126, 47.165939>,  <32.689091, 32.805492, 47.097126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566963, 33.180126, 47.165939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309817, 0.073131, -0.947980,
		-0.900441, -0.342734, 0.267841,
		-0.305317, 0.936581, 0.172035,
		32.475368, 33.461102, 47.217548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890917, 32.793190, 46.994312>,  <32.689091, 32.805492, 47.097126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890917, 32.793190, 46.994312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060131, 33.150509, 46.933571>,  <32.161659, 33.364899, 46.897125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060131, 33.150509, 46.933571>,  <31.890917, 32.793190, 46.994312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060131, 33.150509, 46.933571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380592, 0.023081, -0.924455,
		-0.822309, 0.448871, 0.349746,
		0.423034, 0.893299, -0.151857,
		32.187042, 33.418499, 46.888012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469179, 33.087162, 46.520397>,  <31.890917, 32.793190, 46.994312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469179, 33.087162, 46.520397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796833, 33.316257, 46.507809>,  <31.993425, 33.453716, 46.500256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796833, 33.316257, 46.507809>,  <31.469179, 33.087162, 46.520397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796833, 33.316257, 46.507809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190602, 0.220032, -0.956691,
		-0.541008, 0.789657, 0.289400,
		0.819135, 0.572737, -0.031471,
		32.042572, 33.488079, 46.498367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.833130, 31.570993, 50.576202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.875626, 31.954613, 50.681229>,  <37.901123, 32.184784, 50.744244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.875626, 31.954613, 50.681229>,  <37.833130, 31.570993, 50.576202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875626, 31.954613, 50.681229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260052, 0.281670, -0.923599,
		-0.959732, 0.029845, 0.279328,
		0.106243, 0.959047, 0.262567,
		37.907497, 32.242329, 50.759998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144833, 31.910336, 50.347572>,  <37.833130, 31.570993, 50.576202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144833, 31.910336, 50.347572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.453751, 32.164364, 50.353855>,  <37.639099, 32.316780, 50.357624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.453751, 32.164364, 50.353855>,  <37.144833, 31.910336, 50.347572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453751, 32.164364, 50.353855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207981, 0.276124, -0.938349,
		-0.600256, 0.721414, 0.345332,
		0.772293, 0.635072, 0.015705,
		37.685440, 32.354885, 50.358566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896927, 32.442459, 49.965954>,  <37.144833, 31.910336, 50.347572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896927, 32.442459, 49.965954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.288723, 32.521034, 49.983891>,  <37.523800, 32.568180, 49.994652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.288723, 32.521034, 49.983891>,  <36.896927, 32.442459, 49.965954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288723, 32.521034, 49.983891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030406, 0.364098, -0.930864,
		-0.199186, 0.910409, 0.362603,
		0.979490, 0.196440, 0.044841,
		37.582569, 32.579967, 49.997341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950878, 32.989040, 49.558575>,  <36.896927, 32.442459, 49.965954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950878, 32.989040, 49.558575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328655, 32.862762, 49.595135>,  <37.555321, 32.786995, 49.617069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328655, 32.862762, 49.595135>,  <36.950878, 32.989040, 49.558575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328655, 32.862762, 49.595135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173351, 0.242218, -0.954610,
		0.279230, 0.917423, 0.283488,
		0.944447, -0.315698, 0.091402,
		37.611988, 32.768051, 49.622555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412773, 33.498455, 49.339523>,  <36.950878, 32.989040, 49.558575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412773, 33.498455, 49.339523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.629826, 33.166409, 49.288189>,  <37.760056, 32.967182, 49.257389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.629826, 33.166409, 49.288189>,  <37.412773, 33.498455, 49.339523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629826, 33.166409, 49.288189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144119, 0.242524, -0.959381,
		0.827517, 0.502092, 0.251235,
		0.542628, -0.830112, -0.128331,
		37.792614, 32.917374, 49.249691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874561, 33.644794, 48.737823>,  <37.412773, 33.498455, 49.339523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874561, 33.644794, 48.737823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.914009, 33.249226, 48.782211>,  <37.937675, 33.011887, 48.808846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.914009, 33.249226, 48.782211>,  <37.874561, 33.644794, 48.737823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914009, 33.249226, 48.782211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089800, -0.102219, -0.990700,
		0.991066, 0.107664, 0.078725,
		0.098615, -0.988919, 0.110974,
		37.943592, 32.952549, 48.815502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495747, 33.430710, 48.339642>,  <37.874561, 33.644794, 48.737823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495747, 33.430710, 48.339642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.256947, 33.112495, 48.381042>,  <38.113667, 32.921566, 48.405884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.256947, 33.112495, 48.381042>,  <38.495747, 33.430710, 48.339642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256947, 33.112495, 48.381042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089950, -0.194579, -0.976754,
		0.797182, -0.573813, 0.187722,
		-0.597001, -0.795536, 0.103501,
		38.077847, 32.873833, 48.412094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876064, 32.907959, 47.947277>,  <38.495747, 33.430710, 48.339642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876064, 32.907959, 47.947277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503242, 32.769032, 47.988556>,  <38.279549, 32.685673, 48.013321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503242, 32.769032, 47.988556>,  <38.876064, 32.907959, 47.947277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503242, 32.769032, 47.988556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004931, -0.272627, -0.962107,
		0.362294, -0.897242, 0.252389,
		-0.932051, -0.347321, 0.103195,
		38.223629, 32.664837, 48.019516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922874, 32.215122, 47.599903>,  <38.876064, 32.907959, 47.947277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922874, 32.215122, 47.599903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543491, 32.339291, 47.625401>,  <38.315861, 32.413792, 47.640701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543491, 32.339291, 47.625401>,  <38.922874, 32.215122, 47.599903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543491, 32.339291, 47.625401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195116, -0.413529, -0.889339,
		-0.249703, -0.855941, 0.452784,
		-0.948461, 0.310416, 0.063749,
		38.258953, 32.432415, 47.644524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536072, 31.616064, 47.468079>,  <38.922874, 32.215122, 47.599903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536072, 31.616064, 47.468079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.286919, 31.917633, 47.384541>,  <38.137424, 32.098576, 47.334415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.286919, 31.917633, 47.384541>,  <38.536072, 31.616064, 47.468079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286919, 31.917633, 47.384541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180929, -0.398552, -0.899122,
		-0.761103, -0.522264, 0.384658,
		-0.622885, 0.753920, -0.208847,
		38.100052, 32.143810, 47.321888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068859, 31.292942, 47.092220>,  <38.536072, 31.616064, 47.468079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068859, 31.292942, 47.092220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.039963, 31.679184, 46.992310>,  <38.022625, 31.910929, 46.932362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.039963, 31.679184, 46.992310>,  <38.068859, 31.292942, 47.092220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039963, 31.679184, 46.992310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035252, -0.247803, -0.968169,
		-0.996764, -0.078745, -0.016139,
		-0.072240, 0.965605, -0.249777,
		38.018291, 31.968866, 46.917377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489426, 31.359991, 46.678825>,  <38.068859, 31.292942, 47.092220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489426, 31.359991, 46.678825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.714542, 31.683088, 46.608601>,  <37.849613, 31.876947, 46.566467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.714542, 31.683088, 46.608601>,  <37.489426, 31.359991, 46.678825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714542, 31.683088, 46.608601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000043, -0.212357, -0.977192,
		-0.826601, 0.549960, -0.119477,
		0.562789, 0.807743, -0.175558,
		37.883377, 31.925411, 46.555935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979816, 31.840647, 46.588367>,  <37.489426, 31.359991, 46.678825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979816, 31.840647, 46.588367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746544, 31.515785, 46.595417>,  <36.606583, 31.320869, 46.599648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746544, 31.515785, 46.595417>,  <36.979816, 31.840647, 46.588367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746544, 31.515785, 46.595417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078722, -0.034907, 0.996285,
		-0.808521, 0.582400, 0.084291,
		-0.583178, -0.812153, 0.017624,
		36.571590, 31.272139, 46.600704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614990, 31.876667, 47.228268>,  <36.979816, 31.840647, 46.588367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614990, 31.876667, 47.228268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526886, 31.501234, 47.122028>,  <36.474022, 31.275974, 47.058285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526886, 31.501234, 47.122028>,  <36.614990, 31.876667, 47.228268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526886, 31.501234, 47.122028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192319, -0.225158, 0.955153,
		-0.956294, 0.261463, -0.130914,
		-0.220261, -0.938585, -0.265601,
		36.460808, 31.219658, 47.042347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036152, 31.812656, 47.513832>,  <36.614990, 31.876667, 47.228268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036152, 31.812656, 47.513832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218487, 31.462149, 47.451389>,  <36.327888, 31.251844, 47.413925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218487, 31.462149, 47.451389>,  <36.036152, 31.812656, 47.513832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218487, 31.462149, 47.451389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267583, -0.302185, 0.914922,
		-0.848890, -0.375282, -0.372221,
		0.455834, -0.876269, -0.156103,
		36.355236, 31.199268, 47.404560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545918, 31.360937, 47.601944>,  <36.036152, 31.812656, 47.513832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545918, 31.360937, 47.601944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882183, 31.156111, 47.672459>,  <36.083942, 31.033215, 47.714767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882183, 31.156111, 47.672459>,  <35.545918, 31.360937, 47.601944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882183, 31.156111, 47.672459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405855, -0.380165, 0.831118,
		-0.358554, -0.770245, -0.527411,
		0.840667, -0.512053, 0.176298,
		36.134380, 31.002491, 47.725346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282219, 30.755934, 47.866585>,  <35.545918, 31.360937, 47.601944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282219, 30.755934, 47.866585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668365, 30.757013, 47.970940>,  <35.900055, 30.757662, 48.033550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668365, 30.757013, 47.970940>,  <35.282219, 30.755934, 47.866585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668365, 30.757013, 47.970940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234926, -0.425941, 0.873719,
		0.113479, -0.904747, -0.410555,
		0.965366, 0.002699, 0.260884,
		35.957977, 30.757822, 48.049206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461159, 30.145573, 48.226273>,  <35.282219, 30.755934, 47.866585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461159, 30.145573, 48.226273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.764591, 30.384193, 48.331097>,  <35.946651, 30.527367, 48.393990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.764591, 30.384193, 48.331097>,  <35.461159, 30.145573, 48.226273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764591, 30.384193, 48.331097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226934, -0.135115, 0.964492,
		0.610778, -0.791119, 0.032882,
		0.758585, 0.596552, 0.262057,
		35.992168, 30.563160, 48.409714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838646, 29.754208, 48.786728>,  <35.461159, 30.145573, 48.226273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838646, 29.754208, 48.786728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947865, 30.136259, 48.832645>,  <36.013393, 30.365490, 48.860195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947865, 30.136259, 48.832645>,  <35.838646, 29.754208, 48.786728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947865, 30.136259, 48.832645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109493, -0.087694, 0.990112,
		0.955751, -0.282911, 0.080636,
		0.273042, 0.955129, 0.114791,
		36.029778, 30.422798, 48.867085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258926, 29.784275, 49.349380>,  <35.838646, 29.754208, 48.786728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258926, 29.784275, 49.349380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.140606, 30.165415, 49.322311>,  <36.069614, 30.394098, 49.306068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.140606, 30.165415, 49.322311>,  <36.258926, 29.784275, 49.349380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140606, 30.165415, 49.322311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210804, 0.003984, 0.977520,
		0.931700, 0.303415, 0.199686,
		-0.295799, 0.952850, -0.067673,
		36.051865, 30.451269, 49.302010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453209, 30.043058, 49.960518>,  <36.258926, 29.784275, 49.349380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453209, 30.043058, 49.960518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191589, 30.308277, 49.814869>,  <36.034618, 30.467409, 49.727478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191589, 30.308277, 49.814869>,  <36.453209, 30.043058, 49.960518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191589, 30.308277, 49.814869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216567, 0.297079, 0.929969,
		0.724788, 0.687103, -0.050710,
		-0.654050, 0.663048, -0.364123,
		35.995373, 30.507193, 49.705631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525444, 30.605942, 50.429974>,  <36.453209, 30.043058, 49.960518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525444, 30.605942, 50.429974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.177273, 30.668264, 50.243179>,  <35.968369, 30.705658, 50.131104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.177273, 30.668264, 50.243179>,  <36.525444, 30.605942, 50.429974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177273, 30.668264, 50.243179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335048, 0.507511, 0.793836,
		0.360684, 0.847442, -0.389550,
		-0.870431, 0.155806, -0.466985,
		35.916145, 30.715006, 50.103085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363327, 31.303806, 50.448975>,  <36.525444, 30.605942, 50.429974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363327, 31.303806, 50.448975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019505, 31.103975, 50.405922>,  <35.813210, 30.984076, 50.380093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019505, 31.103975, 50.405922>,  <36.363327, 31.303806, 50.448975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019505, 31.103975, 50.405922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359011, 0.440420, 0.822886,
		-0.363695, 0.745956, -0.557920,
		-0.859556, -0.499579, -0.107628,
		35.761639, 30.954102, 50.373634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854240, 31.829117, 50.486881>,  <36.363327, 31.303806, 50.448975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854240, 31.829117, 50.486881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647530, 31.496424, 50.568035>,  <35.523502, 31.296808, 50.616730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647530, 31.496424, 50.568035>,  <35.854240, 31.829117, 50.486881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647530, 31.496424, 50.568035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321831, 0.408333, 0.854218,
		-0.793329, 0.376141, -0.478694,
		-0.516773, -0.831735, 0.202888,
		35.492496, 31.246902, 50.628902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167870, 32.106586, 50.583141>,  <35.854240, 31.829117, 50.486881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167870, 32.106586, 50.583141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201260, 31.749426, 50.760120>,  <35.221294, 31.535130, 50.866306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201260, 31.749426, 50.760120>,  <35.167870, 32.106586, 50.583141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201260, 31.749426, 50.760120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412807, 0.373123, 0.830885,
		-0.906985, -0.252005, -0.337449,
		0.083477, -0.892901, 0.442446,
		35.226303, 31.481556, 50.892853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529716, 31.867376, 50.906643>,  <35.167870, 32.106586, 50.583141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529716, 31.867376, 50.906643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835365, 31.687109, 51.091259>,  <35.018753, 31.578949, 51.202030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835365, 31.687109, 51.091259>,  <34.529716, 31.867376, 50.906643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835365, 31.687109, 51.091259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260304, 0.439230, 0.859836,
		-0.590222, -0.777159, 0.218314,
		0.764120, -0.450667, 0.461542,
		35.064602, 31.551908, 51.229721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801258, 31.781673, 51.080589>,  <34.529716, 31.867376, 50.906643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801258, 31.781673, 51.080589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588726, 32.093960, 51.212147>,  <33.461205, 32.281330, 51.291080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588726, 32.093960, 51.212147>,  <33.801258, 31.781673, 51.080589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588726, 32.093960, 51.212147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116737, 0.317050, -0.941197,
		-0.839082, -0.538482, -0.077321,
		-0.531333, 0.780715, 0.328892,
		33.429325, 32.328175, 51.310814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085716, 31.707172, 50.958881>,  <33.801258, 31.781673, 51.080589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085716, 31.707172, 50.958881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150253, 32.101925, 50.956509>,  <33.188976, 32.338776, 50.955086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150253, 32.101925, 50.956509>,  <33.085716, 31.707172, 50.958881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150253, 32.101925, 50.956509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183730, 0.024133, -0.982681,
		-0.969645, 0.159640, 0.185213,
		0.161345, 0.986880, -0.005931,
		33.198658, 32.397987, 50.954731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395515, 32.136097, 50.814434>,  <33.085716, 31.707172, 50.958881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395515, 32.136097, 50.814434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713169, 32.358837, 50.717056>,  <32.903763, 32.492481, 50.658630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713169, 32.358837, 50.717056>,  <32.395515, 32.136097, 50.814434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713169, 32.358837, 50.717056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373024, 0.130368, -0.918617,
		-0.479795, 0.820318, 0.311248,
		0.794134, 0.556851, -0.243449,
		32.951408, 32.525894, 50.644020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105118, 32.606117, 50.474167>,  <32.395515, 32.136097, 50.814434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105118, 32.606117, 50.474167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483307, 32.702259, 50.386246>,  <32.710220, 32.759945, 50.333492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483307, 32.702259, 50.386246>,  <32.105118, 32.606117, 50.474167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483307, 32.702259, 50.386246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303028, 0.401739, -0.864164,
		-0.119407, 0.883648, 0.452668,
		0.945471, 0.240359, -0.219800,
		32.766949, 32.774368, 50.320305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001030, 33.226612, 50.276196>,  <32.105118, 32.606117, 50.474167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001030, 33.226612, 50.276196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.347340, 33.102657, 50.119022>,  <32.555126, 33.028286, 50.024719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.347340, 33.102657, 50.119022>,  <32.001030, 33.226612, 50.276196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347340, 33.102657, 50.119022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214995, 0.478710, -0.851243,
		0.451891, 0.821466, 0.347832,
		0.865778, -0.309887, -0.392936,
		32.607075, 33.009693, 50.001141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180363, 33.751869, 49.962753>,  <32.001030, 33.226612, 50.276196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180363, 33.751869, 49.962753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.413879, 33.487469, 49.774170>,  <32.553989, 33.328831, 49.661022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.413879, 33.487469, 49.774170>,  <32.180363, 33.751869, 49.962753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413879, 33.487469, 49.774170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111726, 0.509751, -0.853036,
		0.804180, 0.550668, 0.223738,
		0.583791, -0.660997, -0.471456,
		32.589016, 33.289169, 49.632732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767189, 34.119431, 49.625992>,  <32.180363, 33.751869, 49.962753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767189, 34.119431, 49.625992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700970, 33.773598, 49.436218>,  <32.661236, 33.566097, 49.322353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700970, 33.773598, 49.436218>,  <32.767189, 34.119431, 49.625992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700970, 33.773598, 49.436218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093037, 0.492618, -0.865258,
		0.981803, -0.099105, -0.161992,
		-0.165552, -0.864584, -0.474433,
		32.651302, 33.514221, 49.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448273, 34.441833, 49.406269>,  <32.767189, 34.119431, 49.625992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448273, 34.441833, 49.406269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.562355, 34.816860, 49.485901>,  <33.630802, 35.041874, 49.533680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.562355, 34.816860, 49.485901>,  <33.448273, 34.441833, 49.406269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562355, 34.816860, 49.485901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418077, -0.308597, 0.854389,
		0.862480, -0.160443, -0.479986,
		0.285203, 0.937564, 0.199081,
		33.647915, 35.098129, 49.545624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021286, 34.237434, 49.729889>,  <33.448273, 34.441833, 49.406269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021286, 34.237434, 49.729889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.983517, 34.626560, 49.814472>,  <33.960854, 34.860035, 49.865223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.983517, 34.626560, 49.814472>,  <34.021286, 34.237434, 49.729889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983517, 34.626560, 49.814472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507015, -0.135803, 0.851172,
		0.856750, 0.187580, -0.480410,
		-0.094422, 0.972816, 0.211455,
		33.955189, 34.918404, 49.877907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698505, 34.471382, 49.879284>,  <34.021286, 34.237434, 49.729889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698505, 34.471382, 49.879284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458580, 34.726383, 50.072704>,  <34.314625, 34.879383, 50.188755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458580, 34.726383, 50.072704>,  <34.698505, 34.471382, 49.879284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458580, 34.726383, 50.072704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448107, -0.233036, 0.863073,
		0.662894, 0.734362, -0.145891,
		-0.599810, 0.637501, 0.483551,
		34.278637, 34.917633, 50.217770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081562, 35.111622, 50.151642>,  <34.698505, 34.471382, 49.879284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081562, 35.111622, 50.151642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740566, 35.064445, 50.355347>,  <34.535969, 35.036140, 50.477570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740566, 35.064445, 50.355347>,  <35.081562, 35.111622, 50.151642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740566, 35.064445, 50.355347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519167, -0.077255, 0.851174,
		-0.061042, 0.990011, 0.127088,
		-0.852490, -0.117937, 0.509266,
		34.484818, 35.029064, 50.508125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187527, 35.595634, 50.722469>,  <35.081562, 35.111622, 50.151642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187527, 35.595634, 50.722469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.863167, 35.390041, 50.834366>,  <34.668552, 35.266685, 50.901505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.863167, 35.390041, 50.834366>,  <35.187527, 35.595634, 50.722469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863167, 35.390041, 50.834366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314844, 0.019755, 0.948938,
		-0.493267, 0.857571, 0.145807,
		-0.810901, -0.513986, 0.279746,
		34.619896, 35.235844, 50.918289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859493, 35.889145, 51.311283>,  <35.187527, 35.595634, 50.722469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859493, 35.889145, 51.311283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722874, 35.513218, 51.315079>,  <34.640903, 35.287663, 51.317356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722874, 35.513218, 51.315079>,  <34.859493, 35.889145, 51.311283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722874, 35.513218, 51.315079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253455, -0.082374, 0.963834,
		-0.905046, 0.331599, 0.266336,
		-0.341545, -0.939817, 0.009494,
		34.620411, 35.231274, 51.317928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533279, 35.804432, 51.951767>,  <34.859493, 35.889145, 51.311283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533279, 35.804432, 51.951767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634632, 35.437035, 51.830334>,  <34.695442, 35.216595, 51.757473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634632, 35.437035, 51.830334>,  <34.533279, 35.804432, 51.951767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634632, 35.437035, 51.830334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465025, -0.159536, 0.870805,
		-0.848263, -0.361820, 0.386699,
		0.253382, -0.918496, -0.303584,
		34.710648, 35.161488, 51.739258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473911, 35.420624, 52.544888>,  <34.533279, 35.804432, 51.951767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473911, 35.420624, 52.544888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699570, 35.188419, 52.310028>,  <34.834965, 35.049095, 52.169113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699570, 35.188419, 52.310028>,  <34.473911, 35.420624, 52.544888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699570, 35.188419, 52.310028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594485, -0.207918, 0.776761,
		-0.573000, -0.787256, 0.227812,
		0.564143, -0.580515, -0.587149,
		34.868813, 35.014263, 52.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403553, 34.814621, 52.858936>,  <34.473911, 35.420624, 52.544888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403553, 34.814621, 52.858936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737381, 34.820484, 52.638653>,  <34.937679, 34.824001, 52.506481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737381, 34.820484, 52.638653>,  <34.403553, 34.814621, 52.858936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737381, 34.820484, 52.638653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496512, -0.453117, 0.740379,
		-0.238683, -0.891331, -0.385435,
		0.834569, 0.014658, -0.550708,
		34.987751, 34.824883, 52.473442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.982056, 36.000126, 36.917343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376831, 35.937450, 36.902321>,  <34.613697, 35.899845, 36.893307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376831, 35.937450, 36.902321>,  <33.982056, 36.000126, 36.917343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376831, 35.937450, 36.902321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000209, -0.231830, 0.972756,
		-0.161123, -0.960054, -0.228768,
		0.986934, -0.156685, -0.037554,
		34.672913, 35.890442, 36.891056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206577, 35.323757, 37.133671>,  <33.982056, 36.000126, 36.917343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206577, 35.323757, 37.133671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465260, 35.610741, 37.237228>,  <34.620468, 35.782932, 37.299362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465260, 35.610741, 37.237228>,  <34.206577, 35.323757, 37.133671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465260, 35.610741, 37.237228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306611, -0.066263, 0.949526,
		0.698400, -0.693443, 0.177128,
		0.646705, 0.717458, 0.258896,
		34.659271, 35.825977, 37.314896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561264, 35.032372, 37.609993>,  <34.206577, 35.323757, 37.133671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561264, 35.032372, 37.609993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598923, 35.427937, 37.655941>,  <34.621517, 35.665276, 37.683510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598923, 35.427937, 37.655941>,  <34.561264, 35.032372, 37.609993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598923, 35.427937, 37.655941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186114, -0.095864, 0.977840,
		0.978007, -0.113439, 0.175025,
		0.094147, 0.988909, 0.114868,
		34.627167, 35.724609, 37.690403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022152, 35.087265, 38.079460>,  <34.561264, 35.032372, 37.609993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022152, 35.087265, 38.079460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844734, 35.445637, 38.089062>,  <34.738281, 35.660660, 38.094822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844734, 35.445637, 38.089062>,  <35.022152, 35.087265, 38.079460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844734, 35.445637, 38.089062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006546, -0.023548, 0.999701,
		0.896227, 0.443572, 0.004580,
		-0.443547, 0.895929, 0.024008,
		34.711670, 35.714417, 38.096264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331791, 35.592964, 38.696030>,  <35.022152, 35.087265, 38.079460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331791, 35.592964, 38.696030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976025, 35.747787, 38.598774>,  <34.762566, 35.840683, 38.540421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976025, 35.747787, 38.598774>,  <35.331791, 35.592964, 38.696030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976025, 35.747787, 38.598774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172614, 0.208126, 0.962750,
		0.423245, 0.898259, -0.118299,
		-0.889420, 0.387060, -0.243140,
		34.709198, 35.863907, 38.525833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112122, 36.180267, 39.191730>,  <35.331791, 35.592964, 38.696030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112122, 36.180267, 39.191730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754562, 36.081722, 39.041927>,  <34.540028, 36.022594, 38.952045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754562, 36.081722, 39.041927>,  <35.112122, 36.180267, 39.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754562, 36.081722, 39.041927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412136, 0.123032, 0.902778,
		-0.176333, 0.961337, -0.211512,
		-0.893897, -0.246361, -0.374507,
		34.486393, 36.007812, 38.929577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642872, 36.729328, 39.415035>,  <35.112122, 36.180267, 39.191730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642872, 36.729328, 39.415035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405441, 36.418308, 39.332016>,  <34.262981, 36.231697, 39.282204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405441, 36.418308, 39.332016>,  <34.642872, 36.729328, 39.415035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405441, 36.418308, 39.332016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569161, 0.223265, 0.791333,
		-0.568965, 0.587846, -0.575079,
		-0.593577, -0.777554, -0.207549,
		34.227367, 36.185043, 39.269753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953957, 36.918297, 39.542942>,  <34.642872, 36.729328, 39.415035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953957, 36.918297, 39.542942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956120, 36.520870, 39.588200>,  <33.957417, 36.282413, 39.615356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956120, 36.520870, 39.588200>,  <33.953957, 36.918297, 39.542942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956120, 36.520870, 39.588200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589637, 0.088219, 0.802836,
		-0.807650, -0.071056, -0.585365,
		0.005406, -0.993563, 0.113147,
		33.957741, 36.222801, 39.622143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250957, 36.818653, 39.692413>,  <33.953957, 36.918297, 39.542942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250957, 36.818653, 39.692413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450245, 36.488094, 39.797371>,  <33.569817, 36.289761, 39.860344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450245, 36.488094, 39.797371>,  <33.250957, 36.818653, 39.692413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450245, 36.488094, 39.797371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485311, -0.015008, 0.874213,
		-0.718508, -0.562890, -0.408536,
		0.498217, -0.826395, 0.262394,
		33.599709, 36.240177, 39.876091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712986, 36.343170, 39.877628>,  <33.250957, 36.818653, 39.692413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712986, 36.343170, 39.877628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043556, 36.191399, 40.044029>,  <33.241898, 36.100334, 40.143867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043556, 36.191399, 40.044029>,  <32.712986, 36.343170, 39.877628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043556, 36.191399, 40.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509790, -0.190576, 0.838925,
		-0.239038, -0.905378, -0.350929,
		0.826423, -0.379435, 0.415998,
		33.291485, 36.077568, 40.168831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540089, 35.818298, 40.306412>,  <32.712986, 36.343170, 39.877628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540089, 35.818298, 40.306412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898060, 35.902111, 40.463989>,  <33.112843, 35.952396, 40.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898060, 35.902111, 40.463989>,  <32.540089, 35.818298, 40.306412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898060, 35.902111, 40.463989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380966, -0.100835, 0.919074,
		0.232297, -0.972589, -0.010418,
		0.894932, 0.209529, 0.393947,
		33.166538, 35.964970, 40.582172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618431, 35.329918, 40.844181>,  <32.540089, 35.818298, 40.306412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618431, 35.329918, 40.844181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869442, 35.623756, 40.947388>,  <33.020046, 35.800060, 41.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869442, 35.623756, 40.947388>,  <32.618431, 35.329918, 40.844181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869442, 35.623756, 40.947388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341329, -0.038294, 0.939164,
		0.699790, -0.677419, 0.226710,
		0.627525, 0.734600, 0.258021,
		33.057701, 35.844135, 41.024796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800362, 34.759438, 40.450619>,  <32.618431, 35.329918, 40.844181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800362, 34.759438, 40.450619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656113, 34.387028, 40.473053>,  <32.569561, 34.163582, 40.486515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656113, 34.387028, 40.473053>,  <32.800362, 34.759438, 40.450619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656113, 34.387028, 40.473053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126275, -0.010848, -0.991936,
		0.924123, -0.364800, -0.113653,
		-0.360625, -0.931023, 0.056090,
		32.547924, 34.107719, 40.489880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264229, 34.305752, 40.056141>,  <32.800362, 34.759438, 40.450619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264229, 34.305752, 40.056141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902378, 34.135616, 40.067055>,  <32.685268, 34.033535, 40.073601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902378, 34.135616, 40.067055>,  <33.264229, 34.305752, 40.056141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902378, 34.135616, 40.067055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052138, -0.173965, -0.983371,
		0.423009, -0.888159, 0.179549,
		-0.904625, -0.425336, 0.027282,
		32.630989, 34.008015, 40.075241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311218, 33.708958, 39.665726>,  <33.264229, 34.305752, 40.056141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311218, 33.708958, 39.665726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918221, 33.783329, 39.670422>,  <32.682423, 33.827950, 39.673241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918221, 33.783329, 39.670422>,  <33.311218, 33.708958, 39.665726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918221, 33.783329, 39.670422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063631, -0.275688, -0.959139,
		-0.175087, -0.943096, 0.282692,
		-0.982495, 0.185921, 0.011741,
		32.623474, 33.839108, 39.673943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987778, 33.147823, 39.343655>,  <33.311218, 33.708958, 39.665726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987778, 33.147823, 39.343655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718437, 33.443245, 39.330166>,  <32.556831, 33.620499, 39.322071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718437, 33.443245, 39.330166>,  <32.987778, 33.147823, 39.343655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718437, 33.443245, 39.330166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272852, -0.290637, -0.917105,
		-0.687133, -0.608332, 0.397216,
		-0.673350, 0.738555, -0.033722,
		32.516434, 33.664810, 39.320049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450535, 32.762817, 39.129612>,  <32.987778, 33.147823, 39.343655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450535, 32.762817, 39.129612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307556, 33.130737, 39.064877>,  <32.221767, 33.351490, 39.026035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307556, 33.130737, 39.064877>,  <32.450535, 32.762817, 39.129612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307556, 33.130737, 39.064877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430791, -0.316140, -0.845266,
		-0.828642, -0.232421, 0.509247,
		-0.357451, 0.919802, -0.161842,
		32.200321, 33.406677, 39.016323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708447, 32.678658, 38.874458>,  <32.450535, 32.762817, 39.129612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708447, 32.678658, 38.874458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851849, 33.022739, 38.729397>,  <31.937889, 33.229187, 38.642361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851849, 33.022739, 38.729397>,  <31.708447, 32.678658, 38.874458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851849, 33.022739, 38.729397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288116, -0.267558, -0.919457,
		-0.887954, 0.434118, 0.151918,
		0.358506, 0.860206, -0.362655,
		31.959400, 33.280800, 38.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227270, 32.943336, 38.396229>,  <31.708447, 32.678658, 38.874458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227270, 32.943336, 38.396229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562988, 33.130669, 38.285778>,  <31.764420, 33.243069, 38.219509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562988, 33.130669, 38.285778>,  <31.227270, 32.943336, 38.396229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562988, 33.130669, 38.285778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259216, -0.101734, -0.960446,
		-0.477900, 0.877676, 0.036014,
		0.839297, 0.468333, -0.276127,
		31.814777, 33.271168, 38.202942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012136, 33.497646, 37.932144>,  <31.227270, 32.943336, 38.396229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012136, 33.497646, 37.932144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398251, 33.405579, 37.882751>,  <31.629919, 33.350338, 37.853115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398251, 33.405579, 37.882751>,  <31.012136, 33.497646, 37.932144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398251, 33.405579, 37.882751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134680, -0.033515, -0.990322,
		0.223804, 0.972573, -0.063351,
		0.965284, -0.230171, -0.123485,
		31.687836, 33.336529, 37.845707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308964, 33.932392, 37.338085>,  <31.012136, 33.497646, 37.932144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308964, 33.932392, 37.338085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603962, 33.662987, 37.358032>,  <31.780960, 33.501343, 37.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603962, 33.662987, 37.358032>,  <31.308964, 33.932392, 37.338085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603962, 33.662987, 37.358032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002279, -0.076317, -0.997081,
		0.675349, 0.735229, -0.057818,
		0.737495, -0.673509, 0.049865,
		31.825211, 33.460934, 37.372993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821255, 34.150608, 36.836838>,  <31.308964, 33.932392, 37.338085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821255, 34.150608, 36.836838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909216, 33.766724, 36.906807>,  <31.961992, 33.536392, 36.948788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909216, 33.766724, 36.906807>,  <31.821255, 34.150608, 36.836838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909216, 33.766724, 36.906807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152528, -0.143277, -0.977858,
		0.963524, 0.241714, 0.114876,
		0.219903, -0.959711, 0.174919,
		31.975187, 33.478809, 36.959282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523506, 33.932030, 36.627872>,  <31.821255, 34.150608, 36.836838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523506, 33.932030, 36.627872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285286, 33.611591, 36.603970>,  <32.142353, 33.419331, 36.589626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285286, 33.611591, 36.603970>,  <32.523506, 33.932030, 36.627872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285286, 33.611591, 36.603970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186848, -0.065793, -0.980183,
		0.781286, -0.594914, 0.188866,
		-0.595550, -0.801092, -0.059756,
		32.106621, 33.371265, 36.586044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863655, 33.302662, 36.350868>,  <32.523506, 33.932030, 36.627872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863655, 33.302662, 36.350868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482727, 33.329247, 36.231762>,  <32.254169, 33.345200, 36.160297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482727, 33.329247, 36.231762>,  <32.863655, 33.302662, 36.350868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482727, 33.329247, 36.231762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302182, 0.070944, -0.950607,
		-0.042056, -0.995264, -0.087646,
		-0.952322, 0.066464, -0.297767,
		32.197029, 33.349186, 36.142433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062801, 33.643448, 37.006771>,  <32.863655, 33.302662, 36.350868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062801, 33.643448, 37.006771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765396, 33.701649, 37.267853>,  <32.586952, 33.736568, 37.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765396, 33.701649, 37.267853>,  <33.062801, 33.643448, 37.006771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765396, 33.701649, 37.267853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661100, -0.306914, -0.684654,
		0.100708, -0.940550, 0.324382,
		-0.743509, 0.145499, 0.652706,
		32.542343, 33.745300, 37.463665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766750, 33.315872, 36.710121>,  <33.062801, 33.643448, 37.006771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766750, 33.315872, 36.710121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137871, 33.457676, 36.663620>,  <34.360542, 33.542759, 36.635719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137871, 33.457676, 36.663620>,  <33.766750, 33.315872, 36.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137871, 33.457676, 36.663620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147403, 0.062079, -0.987126,
		-0.342731, 0.932989, 0.109853,
		0.927797, 0.354511, -0.116249,
		34.416210, 33.564030, 36.628746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111328, 32.717945, 36.361641>,  <33.766750, 33.315872, 36.710121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111328, 32.717945, 36.361641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494263, 32.771866, 36.463890>,  <34.724022, 32.804218, 36.525238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494263, 32.771866, 36.463890>,  <34.111328, 32.717945, 36.361641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494263, 32.771866, 36.463890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121665, 0.614333, -0.779610,
		-0.262131, 0.777447, 0.571720,
		0.957332, 0.134802, 0.255624,
		34.781464, 32.812305, 36.540577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613388, 32.356213, 35.885639>,  <34.111328, 32.717945, 36.361641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613388, 32.356213, 35.885639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004616, 32.412674, 35.946903>,  <35.239353, 32.446552, 35.983662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004616, 32.412674, 35.946903>,  <34.613388, 32.356213, 35.885639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004616, 32.412674, 35.946903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119522, -0.221834, 0.967732,
		0.170576, -0.964813, -0.200098,
		0.978069, 0.141156, 0.153156,
		35.298035, 32.455021, 35.992851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814331, 31.703396, 36.233158>,  <34.613388, 32.356213, 35.885639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814331, 31.703396, 36.233158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077778, 31.993168, 36.314568>,  <35.235847, 32.167030, 36.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077778, 31.993168, 36.314568>,  <34.814331, 31.703396, 36.233158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077778, 31.993168, 36.314568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151214, -0.392370, 0.907293,
		0.737125, -0.566786, -0.367967,
		0.658620, 0.724430, 0.203520,
		35.275364, 32.210495, 36.375622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378944, 31.486303, 36.548664>,  <34.814331, 31.703396, 36.233158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378944, 31.486303, 36.548664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401466, 31.863485, 36.679913>,  <35.414982, 32.089794, 36.758663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401466, 31.863485, 36.679913>,  <35.378944, 31.486303, 36.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401466, 31.863485, 36.679913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097348, -0.332264, 0.938149,
		0.993656, -0.020882, -0.110504,
		0.056307, 0.942955, 0.328123,
		35.418358, 32.146374, 36.778351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953407, 31.480951, 36.900055>,  <35.378944, 31.486303, 36.548664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953407, 31.480951, 36.900055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714462, 31.770494, 37.038151>,  <35.571095, 31.944220, 37.121010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714462, 31.770494, 37.038151>,  <35.953407, 31.480951, 36.900055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714462, 31.770494, 37.038151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104359, -0.356665, 0.928385,
		0.795152, 0.590612, 0.137518,
		-0.597363, 0.723856, 0.345238,
		35.535252, 31.987652, 37.141724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372150, 31.767183, 37.567379>,  <35.953407, 31.480951, 36.900055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372150, 31.767183, 37.567379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995197, 31.887392, 37.626163>,  <35.769024, 31.959518, 37.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995197, 31.887392, 37.626163>,  <36.372150, 31.767183, 37.567379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995197, 31.887392, 37.626163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103918, -0.154592, 0.982498,
		0.317982, 0.941163, 0.114455,
		-0.942384, 0.300523, 0.146962,
		35.712482, 31.977549, 37.670254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416801, 32.311958, 38.106991>,  <36.372150, 31.767183, 37.567379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416801, 32.311958, 38.106991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027386, 32.222935, 38.086273>,  <35.793736, 32.169521, 38.073841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027386, 32.222935, 38.086273>,  <36.416801, 32.311958, 38.106991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027386, 32.222935, 38.086273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071585, 0.081779, 0.994076,
		-0.217009, 0.971482, -0.095547,
		-0.973541, -0.222563, -0.051797,
		35.735325, 32.156166, 38.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147541, 32.736748, 38.598812>,  <36.416801, 32.311958, 38.106991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147541, 32.736748, 38.598812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893307, 32.433601, 38.539925>,  <35.740765, 32.251713, 38.504593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893307, 32.433601, 38.539925>,  <36.147541, 32.736748, 38.598812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893307, 32.433601, 38.539925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203024, -0.019897, 0.978972,
		-0.744854, 0.652112, -0.141218,
		-0.635590, -0.757861, -0.147215,
		35.702629, 32.206242, 38.495762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594936, 32.980301, 39.116463>,  <36.147541, 32.736748, 38.598812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594936, 32.980301, 39.116463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564301, 32.594196, 39.016533>,  <35.545921, 32.362534, 38.956573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564301, 32.594196, 39.016533>,  <35.594936, 32.980301, 39.116463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564301, 32.594196, 39.016533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021283, -0.248922, 0.968289,
		-0.996836, 0.079475, -0.001479,
		-0.076587, -0.965257, -0.249826,
		35.541325, 32.304619, 38.941586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993492, 32.750591, 39.513813>,  <35.594936, 32.980301, 39.116463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993492, 32.750591, 39.513813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235294, 32.450871, 39.405647>,  <35.380375, 32.271038, 39.340748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235294, 32.450871, 39.405647>,  <34.993492, 32.750591, 39.513813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235294, 32.450871, 39.405647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026094, -0.320656, 0.946836,
		-0.796176, -0.579422, -0.174285,
		0.604503, -0.749300, -0.270418,
		35.416645, 32.226082, 39.324520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771034, 32.202694, 39.890030>,  <34.993492, 32.750591, 39.513813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771034, 32.202694, 39.890030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126671, 32.049202, 39.790218>,  <35.340054, 31.957106, 39.730331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126671, 32.049202, 39.790218>,  <34.771034, 32.202694, 39.890030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126671, 32.049202, 39.790218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053318, -0.454611, 0.889093,
		-0.454611, -0.803791, -0.383731,
		-0.889093, 0.383731, 0.249528,
		35.393398, 31.934082, 39.715359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794582, 31.494835, 40.160267>,  <34.771034, 32.202694, 39.890030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794582, 31.494835, 40.160267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179596, 31.583479, 40.097771>,  <35.410606, 31.636665, 40.060272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179596, 31.583479, 40.097771>,  <34.794582, 31.494835, 40.160267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179596, 31.583479, 40.097771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226243, -0.338778, 0.913260,
		0.149456, -0.914395, -0.376224,
		0.962537, 0.221610, -0.156243,
		35.468357, 31.649961, 40.050900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195557, 30.877911, 40.343193>,  <34.794582, 31.494835, 40.160267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195557, 30.877911, 40.343193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461422, 31.176666, 40.350922>,  <35.620941, 31.355921, 40.355560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461422, 31.176666, 40.350922>,  <35.195557, 30.877911, 40.343193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461422, 31.176666, 40.350922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374523, -0.355451, 0.856380,
		0.646491, -0.561970, -0.515984,
		0.664667, 0.746890, 0.019325,
		35.660824, 31.400734, 40.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850574, 30.603323, 40.488354>,  <35.195557, 30.877911, 40.343193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850574, 30.603323, 40.488354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877468, 30.990484, 40.585220>,  <35.893604, 31.222780, 40.643341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877468, 30.990484, 40.585220>,  <35.850574, 30.603323, 40.488354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877468, 30.990484, 40.585220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300109, -0.251096, 0.920264,
		0.951532, 0.010804, -0.307358,
		0.067233, 0.967902, 0.242168,
		35.897636, 31.280855, 40.657871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520744, 30.764942, 40.649910>,  <35.850574, 30.603323, 40.488354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520744, 30.764942, 40.649910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323559, 31.059946, 40.834545>,  <36.205246, 31.236948, 40.945324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323559, 31.059946, 40.834545>,  <36.520744, 30.764942, 40.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323559, 31.059946, 40.834545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487659, -0.205146, 0.848589,
		0.720537, 0.643422, -0.258525,
		-0.492966, 0.737512, 0.461586,
		36.175671, 31.281200, 40.973022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996712, 31.061314, 41.097538>,  <36.520744, 30.764942, 40.649910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996712, 31.061314, 41.097538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639645, 31.183718, 41.229900>,  <36.425404, 31.257160, 41.309319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639645, 31.183718, 41.229900>,  <36.996712, 31.061314, 41.097538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639645, 31.183718, 41.229900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275949, -0.209419, 0.938081,
		0.356361, 0.928710, 0.102498,
		-0.892670, 0.306011, 0.330905,
		36.371845, 31.275520, 41.329170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224865, 31.253227, 41.811474>,  <36.996712, 31.061314, 41.097538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224865, 31.253227, 41.811474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825893, 31.233017, 41.791134>,  <36.586510, 31.220890, 41.778931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825893, 31.233017, 41.791134>,  <37.224865, 31.253227, 41.811474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825893, 31.233017, 41.791134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032730, -0.310123, 0.950133,
		-0.063778, 0.949353, 0.307671,
		-0.997427, -0.050528, -0.050851,
		36.526665, 31.217859, 41.775879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022099, 31.671240, 42.362480>,  <37.224865, 31.253227, 41.811474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022099, 31.671240, 42.362480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695293, 31.455080, 42.282021>,  <36.499210, 31.325384, 42.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695293, 31.455080, 42.282021>,  <37.022099, 31.671240, 42.362480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695293, 31.455080, 42.282021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087838, -0.228129, 0.969660,
		-0.569894, 0.809891, 0.138916,
		-0.817010, -0.540401, -0.201149,
		36.450191, 31.292959, 42.221676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517990, 31.872499, 42.847309>,  <37.022099, 31.671240, 42.362480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517990, 31.872499, 42.847309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410900, 31.505901, 42.728409>,  <36.346645, 31.285942, 42.657070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410900, 31.505901, 42.728409>,  <36.517990, 31.872499, 42.847309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410900, 31.505901, 42.728409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060427, -0.291935, 0.954527,
		-0.961598, 0.273514, 0.022777,
		-0.267726, -0.916496, -0.297252,
		36.330582, 31.230953, 42.639233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827969, 31.812096, 43.149746>,  <36.517990, 31.872499, 42.847309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827969, 31.812096, 43.149746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944969, 31.435247, 43.084202>,  <36.015171, 31.209139, 43.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944969, 31.435247, 43.084202>,  <35.827969, 31.812096, 43.149746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944969, 31.435247, 43.084202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199027, -0.227576, 0.953204,
		-0.935323, -0.246205, -0.254074,
		0.292505, -0.942121, -0.163856,
		36.032722, 31.152611, 43.035046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314785, 31.514374, 43.435444>,  <35.827969, 31.812096, 43.149746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314785, 31.514374, 43.435444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610168, 31.244652, 43.434956>,  <35.787399, 31.082819, 43.434662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610168, 31.244652, 43.434956>,  <35.314785, 31.514374, 43.435444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610168, 31.244652, 43.434956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158785, -0.175653, 0.971562,
		-0.655342, -0.717260, -0.236781,
		0.738454, -0.674303, -0.001223,
		35.831703, 31.042360, 43.434589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070641, 30.904634, 43.743320>,  <35.314785, 31.514374, 43.435444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070641, 30.904634, 43.743320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456272, 30.806679, 43.784466>,  <35.687653, 30.747906, 43.809151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456272, 30.806679, 43.784466>,  <35.070641, 30.904634, 43.743320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456272, 30.806679, 43.784466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148564, -0.176139, 0.973090,
		-0.220189, -0.953415, -0.206194,
		0.964078, -0.244897, 0.102859,
		35.745495, 30.733212, 43.815323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076691, 30.376986, 44.243877>,  <35.070641, 30.904634, 43.743320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076691, 30.376986, 44.243877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442383, 30.536486, 44.215115>,  <35.661800, 30.632187, 44.197857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442383, 30.536486, 44.215115>,  <35.076691, 30.376986, 44.243877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442383, 30.536486, 44.215115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128965, -0.118119, 0.984589,
		0.384112, -0.909420, -0.159414,
		0.914235, 0.398752, -0.071912,
		35.716652, 30.656111, 44.193542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209793, 30.283319, 44.928448>,  <35.076691, 30.376986, 44.243877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209793, 30.283319, 44.928448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545925, 30.466051, 44.811722>,  <35.747604, 30.575689, 44.741688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545925, 30.466051, 44.811722>,  <35.209793, 30.283319, 44.928448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545925, 30.466051, 44.811722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282512, 0.090359, 0.954999,
		0.462637, -0.884954, -0.053128,
		0.840330, 0.456827, -0.291814,
		35.798023, 30.603100, 44.724178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769821, 30.036364, 45.330860>,  <35.209793, 30.283319, 44.928448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769821, 30.036364, 45.330860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879879, 30.393198, 45.187485>,  <35.945911, 30.607298, 45.101460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879879, 30.393198, 45.187485>,  <35.769821, 30.036364, 45.330860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879879, 30.393198, 45.187485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280881, 0.281976, 0.917385,
		0.919458, -0.353090, -0.172987,
		0.275142, 0.892085, -0.358441,
		35.962421, 30.660824, 45.079952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555927, 30.135408, 45.419819>,  <35.769821, 30.036364, 45.330860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555927, 30.135408, 45.419819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347897, 30.476954, 45.428207>,  <36.223080, 30.681881, 45.433239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347897, 30.476954, 45.428207>,  <36.555927, 30.135408, 45.419819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347897, 30.476954, 45.428207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299355, 0.159229, 0.940762,
		0.799944, 0.495542, -0.338419,
		-0.520074, 0.853864, 0.020968,
		36.191875, 30.733112, 45.434498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058861, 30.588724, 45.683613>,  <36.555927, 30.135408, 45.419819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058861, 30.588724, 45.683613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700947, 30.759966, 45.734341>,  <36.486198, 30.862711, 45.764778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700947, 30.759966, 45.734341>,  <37.058861, 30.588724, 45.683613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700947, 30.759966, 45.734341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273470, 0.300941, 0.913591,
		0.352944, 0.852152, -0.386352,
		-0.894787, 0.428102, 0.126823,
		36.432510, 30.888397, 45.772388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188782, 31.156399, 46.035145>,  <37.058861, 30.588724, 45.683613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188782, 31.156399, 46.035145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801754, 31.090652, 46.111874>,  <36.569538, 31.051205, 46.157913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801754, 31.090652, 46.111874>,  <37.188782, 31.156399, 46.035145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801754, 31.090652, 46.111874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162753, 0.175146, 0.970997,
		-0.193198, 0.970725, -0.142714,
		-0.967567, -0.164368, 0.191826,
		36.511482, 31.041342, 46.169422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333977, 31.787666, 45.532459>,  <37.188782, 31.156399, 46.035145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333977, 31.787666, 45.532459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628300, 31.977535, 45.725655>,  <37.804893, 32.091457, 45.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628300, 31.977535, 45.725655>,  <37.333977, 31.787666, 45.532459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628300, 31.977535, 45.725655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379692, 0.301397, -0.874639,
		-0.560738, 0.826951, 0.041540,
		0.735804, 0.474671, 0.482991,
		37.849041, 32.119938, 45.870552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481071, 32.511395, 45.178707>,  <37.333977, 31.787666, 45.532459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481071, 32.511395, 45.178707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802181, 32.368538, 45.369705>,  <37.994846, 32.282825, 45.484303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802181, 32.368538, 45.369705>,  <37.481071, 32.511395, 45.178707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802181, 32.368538, 45.369705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554305, 0.151838, -0.818347,
		0.219761, 0.921628, 0.319855,
		0.802777, -0.357138, 0.477495,
		38.043015, 32.261398, 45.512955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967602, 32.957542, 44.923046>,  <37.481071, 32.511395, 45.178707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967602, 32.957542, 44.923046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180901, 32.656910, 45.078362>,  <38.308880, 32.476528, 45.171551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180901, 32.656910, 45.078362>,  <37.967602, 32.957542, 44.923046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180901, 32.656910, 45.078362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702002, 0.137007, -0.698872,
		0.472062, 0.645253, 0.600671,
		0.533245, -0.751584, 0.388293,
		38.340874, 32.431435, 45.194851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631462, 33.234287, 44.983963>,  <37.967602, 32.957542, 44.923046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631462, 33.234287, 44.983963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640392, 32.834435, 44.977905>,  <38.645752, 32.594521, 44.974270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640392, 32.834435, 44.977905>,  <38.631462, 33.234287, 44.983963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640392, 32.834435, 44.977905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616221, 0.025691, -0.787155,
		0.787257, 0.008239, 0.616570,
		0.022326, -0.999636, -0.015148,
		38.647091, 32.534542, 44.973362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316860, 33.026371, 44.849312>,  <38.631462, 33.234287, 44.983963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316860, 33.026371, 44.849312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099949, 32.700245, 44.768124>,  <38.969803, 32.504570, 44.719410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099949, 32.700245, 44.768124>,  <39.316860, 33.026371, 44.849312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099949, 32.700245, 44.768124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409450, -0.045492, -0.911198,
		0.733677, -0.577231, 0.358499,
		-0.542280, -0.815313, -0.202971,
		38.937263, 32.455650, 44.707233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
