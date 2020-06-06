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
	<24.336620, 35.003223, 34.819218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218924, 35.295460, 35.065685>,  <24.148306, 35.470802, 35.213566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218924, 35.295460, 35.065685>,  <24.336620, 35.003223, 34.819218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218924, 35.295460, 35.065685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264771, -0.557163, 0.787061,
		0.918323, 0.394731, -0.029497,
		-0.294242, 0.730587, 0.616169,
		24.130651, 35.514637, 35.250538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907404, 35.372421, 35.170940>,  <24.336620, 35.003223, 34.819218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907404, 35.372421, 35.170940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589361, 35.325779, 35.409000>,  <24.398535, 35.297794, 35.551838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589361, 35.325779, 35.409000>,  <24.907404, 35.372421, 35.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589361, 35.325779, 35.409000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559859, -0.518409, 0.646382,
		0.233158, 0.847145, 0.477475,
		-0.795107, -0.116610, 0.595153,
		24.350830, 35.290794, 35.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146347, 34.598724, 35.400238>,  <24.907404, 35.372421, 35.170940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146347, 34.598724, 35.400238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122717, 34.681347, 35.790897>,  <25.108540, 34.730919, 36.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122717, 34.681347, 35.790897>,  <25.146347, 34.598724, 35.400238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122717, 34.681347, 35.790897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711342, -0.695112, 0.103982,
		0.700359, -0.688590, 0.187994,
		-0.059075, 0.206553, 0.976651,
		25.104994, 34.743313, 36.083893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002073, 34.004208, 35.836979>,  <25.146347, 34.598724, 35.400238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002073, 34.004208, 35.836979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867130, 34.296684, 36.074146>,  <24.786163, 34.472168, 36.216446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867130, 34.296684, 36.074146>,  <25.002073, 34.004208, 35.836979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867130, 34.296684, 36.074146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777757, -0.571338, 0.262044,
		0.530360, -0.372745, 0.761433,
		-0.337360, 0.731187, 0.592919,
		24.765923, 34.516041, 36.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129810, 33.221191, 36.226658>,  <25.002073, 34.004208, 35.836979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129810, 33.221191, 36.226658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838760, 33.494045, 36.255646>,  <24.664131, 33.657757, 36.273041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838760, 33.494045, 36.255646>,  <25.129810, 33.221191, 36.226658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838760, 33.494045, 36.255646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175720, -0.083221, -0.980916,
		-0.663089, -0.726472, 0.180419,
		-0.727623, 0.682138, 0.072472,
		24.620474, 33.698689, 36.277386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729294, 32.645996, 35.919735>,  <25.129810, 33.221191, 36.226658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729294, 32.645996, 35.919735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113092, 32.571804, 35.834919>,  <25.343372, 32.527287, 35.784027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113092, 32.571804, 35.834919>,  <24.729294, 32.645996, 35.919735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113092, 32.571804, 35.834919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265452, 0.343173, 0.900982,
		-0.094350, -0.920776, 0.378510,
		0.959497, -0.185484, -0.212043,
		25.400942, 32.516159, 35.771305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079378, 32.439674, 36.544239>,  <24.729294, 32.645996, 35.919735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079378, 32.439674, 36.544239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362207, 32.599976, 36.311192>,  <25.531906, 32.696156, 36.171364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362207, 32.599976, 36.311192>,  <25.079378, 32.439674, 36.544239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362207, 32.599976, 36.311192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502483, 0.294968, 0.812715,
		0.497551, -0.867405, 0.007193,
		0.707075, 0.400752, -0.582618,
		25.574329, 32.720200, 36.136406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789642, 32.320030, 36.874352>,  <25.079378, 32.439674, 36.544239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789642, 32.320030, 36.874352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878422, 32.616913, 36.621414>,  <25.931688, 32.795044, 36.469650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878422, 32.616913, 36.621414>,  <25.789642, 32.320030, 36.874352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878422, 32.616913, 36.621414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526995, 0.454329, 0.718235,
		0.820376, -0.492653, -0.290304,
		0.221947, 0.742211, -0.632347,
		25.945005, 32.839577, 36.431709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497841, 32.403389, 36.882053>,  <25.789642, 32.320030, 36.874352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497841, 32.403389, 36.882053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378965, 32.756939, 36.737579>,  <26.307640, 32.969067, 36.650894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378965, 32.756939, 36.737579>,  <26.497841, 32.403389, 36.882053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378965, 32.756939, 36.737579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619402, 0.466342, 0.631559,
		0.726650, -0.036024, -0.686063,
		-0.297189, 0.883871, -0.361180,
		26.289808, 33.022099, 36.629227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073902, 32.816284, 36.893860>,  <26.497841, 32.403389, 36.882053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073902, 32.816284, 36.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761879, 33.066250, 36.881252>,  <26.574665, 33.216228, 36.873688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761879, 33.066250, 36.881252>,  <27.073902, 32.816284, 36.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761879, 33.066250, 36.881252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405261, 0.542964, 0.735496,
		0.476735, 0.560956, -0.676796,
		-0.780056, 0.624915, -0.031516,
		26.527863, 33.253723, 36.871796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358643, 33.323090, 37.206173>,  <27.073902, 32.816284, 36.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358643, 33.323090, 37.206173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982233, 33.457779, 37.192978>,  <26.756388, 33.538593, 37.185059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982233, 33.457779, 37.192978>,  <27.358643, 33.323090, 37.206173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982233, 33.457779, 37.192978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201351, 0.635706, 0.745208,
		0.271904, 0.694616, -0.666016,
		-0.941024, 0.336728, -0.032989,
		26.699926, 33.558796, 37.183083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382841, 33.966103, 36.959824>,  <27.358643, 33.323090, 37.206173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382841, 33.966103, 36.959824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082825, 33.882847, 37.210938>,  <26.902815, 33.832893, 37.361607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082825, 33.882847, 37.210938>,  <27.382841, 33.966103, 36.959824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082825, 33.882847, 37.210938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294502, 0.744799, 0.598784,
		-0.592207, 0.633997, -0.497332,
		-0.750039, -0.208139, 0.627789,
		26.857813, 33.820404, 37.399273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097092, 34.628510, 37.162956>,  <27.382841, 33.966103, 36.959824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097092, 34.628510, 37.162956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971857, 34.384583, 37.454189>,  <26.896717, 34.238228, 37.628929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971857, 34.384583, 37.454189>,  <27.097092, 34.628510, 37.162956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971857, 34.384583, 37.454189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365383, 0.630273, 0.685019,
		-0.876625, 0.480498, 0.025487,
		-0.313086, -0.609817, 0.728079,
		26.877932, 34.201637, 37.672615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823400, 35.068359, 37.663101>,  <27.097092, 34.628510, 37.162956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823400, 35.068359, 37.663101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916586, 34.736393, 37.865868>,  <26.972496, 34.537212, 37.987526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916586, 34.736393, 37.865868>,  <26.823400, 35.068359, 37.663101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916586, 34.736393, 37.865868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282629, 0.556536, 0.781274,
		-0.930511, -0.038738, 0.364211,
		0.232962, -0.829920, 0.506914,
		26.986475, 34.487415, 38.017941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413134, 35.152214, 38.341454>,  <26.823400, 35.068359, 37.663101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413134, 35.152214, 38.341454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721678, 34.897835, 38.351032>,  <26.906805, 34.745209, 38.356777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721678, 34.897835, 38.351032>,  <26.413134, 35.152214, 38.341454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721678, 34.897835, 38.351032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329229, 0.430965, 0.840165,
		-0.544620, -0.640187, 0.541802,
		0.771361, -0.635948, 0.023944,
		26.953087, 34.707050, 38.358215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389191, 34.997768, 39.016224>,  <26.413134, 35.152214, 38.341454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389191, 34.997768, 39.016224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744631, 34.850021, 38.907444>,  <26.957895, 34.761375, 38.842175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744631, 34.850021, 38.907444>,  <26.389191, 34.997768, 39.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744631, 34.850021, 38.907444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346664, 0.152571, 0.925498,
		-0.300354, -0.916674, 0.263620,
		0.888601, -0.369365, -0.271953,
		27.011211, 34.739212, 38.825859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601561, 34.656216, 39.582676>,  <26.389191, 34.997768, 39.016224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601561, 34.656216, 39.582676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930809, 34.725441, 39.366337>,  <27.128359, 34.766975, 39.236534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930809, 34.725441, 39.366337>,  <26.601561, 34.656216, 39.582676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930809, 34.725441, 39.366337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459952, 0.355390, 0.813721,
		0.333028, -0.918559, 0.212936,
		0.823126, 0.173052, -0.540848,
		27.177746, 34.777359, 39.204082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060738, 34.447102, 39.998100>,  <26.601561, 34.656216, 39.582676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060738, 34.447102, 39.998100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265234, 34.682995, 39.748028>,  <27.387932, 34.824532, 39.597984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265234, 34.682995, 39.748028>,  <27.060738, 34.447102, 39.998100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265234, 34.682995, 39.748028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493681, 0.393929, 0.775305,
		0.703498, -0.705008, -0.089746,
		0.511243, 0.589732, -0.625178,
		27.418608, 34.859913, 39.560474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796734, 34.372299, 40.086342>,  <27.060738, 34.447102, 39.998100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796734, 34.372299, 40.086342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730856, 34.730961, 39.921955>,  <27.691328, 34.946156, 39.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730856, 34.730961, 39.921955>,  <27.796734, 34.372299, 40.086342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730856, 34.730961, 39.921955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403393, 0.441451, 0.801496,
		0.900083, -0.033778, -0.434408,
		-0.164697, 0.896650, -0.410968,
		27.681446, 34.999954, 39.798664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396130, 34.774498, 40.211567>,  <27.796734, 34.372299, 40.086342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396130, 34.774498, 40.211567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135408, 35.068401, 40.136436>,  <27.978975, 35.244743, 40.091358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135408, 35.068401, 40.136436>,  <28.396130, 34.774498, 40.211567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135408, 35.068401, 40.136436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502076, 0.603692, 0.619255,
		0.568395, 0.309327, -0.762393,
		-0.651803, 0.734761, -0.187830,
		27.939867, 35.288830, 40.080086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820700, 35.329823, 40.287125>,  <28.396130, 34.774498, 40.211567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820700, 35.329823, 40.287125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460302, 35.503307, 40.291164>,  <28.244064, 35.607399, 40.293587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460302, 35.503307, 40.291164>,  <28.820700, 35.329823, 40.287125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460302, 35.503307, 40.291164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373806, 0.764304, 0.525460,
		0.220180, 0.477212, -0.850758,
		-0.900994, 0.433714, 0.010100,
		28.190004, 35.633423, 40.294193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807404, 36.027340, 39.927330>,  <28.820700, 35.329823, 40.287125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807404, 36.027340, 39.927330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515265, 36.031815, 40.200523>,  <28.339981, 36.034500, 40.364441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515265, 36.031815, 40.200523>,  <28.807404, 36.027340, 39.927330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515265, 36.031815, 40.200523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464509, 0.741221, 0.484585,
		-0.500823, 0.671168, -0.546544,
		-0.730348, 0.011183, 0.682984,
		28.296160, 36.035168, 40.405418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806074, 36.665909, 40.196842>,  <28.807404, 36.027340, 39.927330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806074, 36.665909, 40.196842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587118, 36.497856, 40.486355>,  <28.455746, 36.397026, 40.660061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587118, 36.497856, 40.486355>,  <28.806074, 36.665909, 40.196842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587118, 36.497856, 40.486355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362596, 0.660401, 0.657567,
		-0.754249, 0.622384, -0.209158,
		-0.547388, -0.420129, 0.723780,
		28.422901, 36.371819, 40.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636580, 37.178925, 40.711407>,  <28.806074, 36.665909, 40.196842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636580, 37.178925, 40.711407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631285, 36.808960, 40.863384>,  <28.628107, 36.586979, 40.954571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631285, 36.808960, 40.863384>,  <28.636580, 37.178925, 40.711407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631285, 36.808960, 40.863384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441133, 0.335597, 0.832332,
		-0.897344, 0.178625, 0.403567,
		-0.013239, -0.924915, 0.379943,
		28.627314, 36.531487, 40.977367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826132, 37.327431, 41.349365>,  <28.636580, 37.178925, 40.711407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826132, 37.327431, 41.349365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877497, 36.931030, 41.334282>,  <28.908316, 36.693188, 41.325233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877497, 36.931030, 41.334282>,  <28.826132, 37.327431, 41.349365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877497, 36.931030, 41.334282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671345, 0.058878, 0.738803,
		-0.729937, -0.120186, 0.672866,
		0.128411, -0.991004, -0.037709,
		28.916019, 36.633728, 41.322968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760420, 37.115307, 41.993141>,  <28.826132, 37.327431, 41.349365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760420, 37.115307, 41.993141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922630, 36.797749, 41.811913>,  <29.019957, 36.607212, 41.703175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922630, 36.797749, 41.811913>,  <28.760420, 37.115307, 41.993141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922630, 36.797749, 41.811913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646233, -0.101547, 0.756354,
		-0.646475, -0.599513, 0.471862,
		0.405527, -0.793897, -0.453073,
		29.044289, 36.559578, 41.675991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692459, 36.535439, 42.538235>,  <28.760420, 37.115307, 41.993141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692459, 36.535439, 42.538235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994677, 36.491291, 42.279942>,  <29.176006, 36.464802, 42.124966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994677, 36.491291, 42.279942>,  <28.692459, 36.535439, 42.538235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994677, 36.491291, 42.279942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623521, -0.181184, 0.760522,
		-0.200941, -0.977235, -0.068070,
		0.755543, -0.110377, -0.645734,
		29.221340, 36.458179, 42.086220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327953, 36.855083, 42.646431>,  <28.692459, 36.535439, 42.538235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327953, 36.855083, 42.646431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587954, 37.073887, 42.857441>,  <29.743954, 37.205170, 42.984047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587954, 37.073887, 42.857441>,  <29.327953, 36.855083, 42.646431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587954, 37.073887, 42.857441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141869, 0.769316, -0.622917,
		-0.746574, 0.330057, 0.577659,
		0.650001, 0.547005, 0.527526,
		29.782953, 37.237988, 43.015697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056347, 37.518948, 42.938854>,  <29.327953, 36.855083, 42.646431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056347, 37.518948, 42.938854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449482, 37.525440, 42.865349>,  <29.685362, 37.529335, 42.821247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449482, 37.525440, 42.865349>,  <29.056347, 37.518948, 42.938854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449482, 37.525440, 42.865349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137914, 0.726254, -0.673450,
		0.122525, 0.687235, 0.716028,
		0.982836, 0.016236, -0.183764,
		29.744333, 37.530312, 42.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204729, 38.123920, 42.765755>,  <29.056347, 37.518948, 42.938854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204729, 38.123920, 42.765755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542984, 37.944687, 42.649746>,  <29.745937, 37.837147, 42.580139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542984, 37.944687, 42.649746>,  <29.204729, 38.123920, 42.765755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542984, 37.944687, 42.649746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031703, 0.584575, -0.810720,
		0.532814, 0.676381, 0.508545,
		0.845638, -0.448086, -0.290026,
		29.796675, 37.810261, 42.562737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584986, 38.646378, 42.526405>,  <29.204729, 38.123920, 42.765755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584986, 38.646378, 42.526405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699570, 38.306377, 42.349567>,  <29.768320, 38.102379, 42.243465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699570, 38.306377, 42.349567>,  <29.584986, 38.646378, 42.526405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699570, 38.306377, 42.349567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003488, 0.462350, -0.886691,
		0.958086, 0.252459, 0.135409,
		0.286459, -0.849998, -0.442090,
		29.785507, 38.051376, 42.216942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477791, 38.353184, 41.772869>,  <29.584986, 38.646378, 42.526405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477791, 38.353184, 41.772869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344019, 38.664120, 41.986000>,  <29.263756, 38.850681, 42.113876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344019, 38.664120, 41.986000>,  <29.477791, 38.353184, 41.772869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344019, 38.664120, 41.986000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775720, -0.548120, 0.312767,
		0.535177, -0.308722, 0.786305,
		-0.334432, 0.777339, 0.532823,
		29.243689, 38.897320, 42.145847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053886, 38.686974, 41.515751>,  <29.477791, 38.353184, 41.772869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053886, 38.686974, 41.515751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400484, 38.866386, 41.428104>,  <30.608442, 38.974033, 41.375515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400484, 38.866386, 41.428104>,  <30.053886, 38.686974, 41.515751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400484, 38.866386, 41.428104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213377, -0.729616, -0.649716,
		-0.451288, 0.516219, -0.727913,
		0.866492, 0.448529, -0.219118,
		30.660431, 39.000946, 41.362370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166330, 38.742397, 40.716354>,  <30.053886, 38.686974, 41.515751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166330, 38.742397, 40.716354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513924, 38.741947, 40.914288>,  <30.722481, 38.741676, 41.033047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513924, 38.741947, 40.914288>,  <30.166330, 38.742397, 40.716354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513924, 38.741947, 40.914288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300138, -0.793856, -0.528876,
		0.393422, 0.608105, -0.689512,
		0.868986, -0.001123, 0.494836,
		30.774620, 38.741611, 41.062737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769764, 38.976818, 40.421711>,  <30.166330, 38.742397, 40.716354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769764, 38.976818, 40.421711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881325, 38.668129, 40.650330>,  <30.948261, 38.482918, 40.787502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881325, 38.668129, 40.650330>,  <30.769764, 38.976818, 40.421711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881325, 38.668129, 40.650330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108493, -0.566030, -0.817214,
		0.954171, 0.289931, -0.074141,
		0.278902, -0.771719, 0.571545,
		30.964994, 38.436615, 40.821793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365812, 38.602497, 40.170738>,  <30.769764, 38.976818, 40.421711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365812, 38.602497, 40.170738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145943, 38.344158, 40.382675>,  <31.014021, 38.189156, 40.509838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145943, 38.344158, 40.382675>,  <31.365812, 38.602497, 40.170738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145943, 38.344158, 40.382675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058793, -0.662595, -0.746667,
		0.833307, -0.379273, 0.402184,
		-0.549675, -0.645848, 0.529846,
		30.981041, 38.150402, 40.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588535, 38.020847, 39.906982>,  <31.365812, 38.602497, 40.170738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588535, 38.020847, 39.906982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265463, 37.877934, 40.094597>,  <31.071619, 37.792187, 40.207165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265463, 37.877934, 40.094597>,  <31.588535, 38.020847, 39.906982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265463, 37.877934, 40.094597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025967, -0.773167, -0.633670,
		0.589044, -0.523984, 0.615197,
		-0.807683, -0.357285, 0.469036,
		31.023157, 37.770748, 40.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698765, 37.212261, 39.963730>,  <31.588535, 38.020847, 39.906982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698765, 37.212261, 39.963730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308203, 37.292797, 39.994965>,  <31.073866, 37.341118, 40.013706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308203, 37.292797, 39.994965>,  <31.698765, 37.212261, 39.963730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308203, 37.292797, 39.994965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213696, -0.848737, -0.483713,
		-0.031119, -0.488986, 0.871737,
		-0.976405, 0.201340, 0.078083,
		31.015282, 37.353199, 40.018391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417919, 36.525169, 40.156651>,  <31.698765, 37.212261, 39.963730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417919, 36.525169, 40.156651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131784, 36.757103, 40.000660>,  <30.960104, 36.896263, 39.907066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131784, 36.757103, 40.000660>,  <31.417919, 36.525169, 40.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131784, 36.757103, 40.000660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255780, -0.736621, -0.626072,
		-0.650284, -0.348105, 0.675243,
		-0.715337, 0.579839, -0.389975,
		30.917183, 36.931053, 39.883667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882092, 36.086685, 40.009090>,  <31.417919, 36.525169, 40.156651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882092, 36.086685, 40.009090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770958, 36.411686, 39.804096>,  <30.704277, 36.606686, 39.681099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770958, 36.411686, 39.804096>,  <30.882092, 36.086685, 40.009090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770958, 36.411686, 39.804096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404733, -0.582840, -0.704619,
		-0.871205, 0.011654, 0.490780,
		-0.277835, 0.812503, -0.512490,
		30.687607, 36.655437, 39.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152903, 36.030403, 39.781094>,  <30.882092, 36.086685, 40.009090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152903, 36.030403, 39.781094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326269, 36.292347, 39.533447>,  <30.430288, 36.449512, 39.384857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326269, 36.292347, 39.533447>,  <30.152903, 36.030403, 39.781094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326269, 36.292347, 39.533447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296059, -0.545403, -0.784146,
		-0.851176, 0.523156, -0.042509,
		0.433415, 0.654861, -0.619119,
		30.456293, 36.488804, 39.347713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686636, 36.301220, 39.332779>,  <30.152903, 36.030403, 39.781094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686636, 36.301220, 39.332779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025913, 36.366619, 39.131248>,  <30.229479, 36.405861, 39.010330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025913, 36.366619, 39.131248>,  <29.686636, 36.301220, 39.332779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025913, 36.366619, 39.131248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357236, -0.525714, -0.772015,
		-0.391092, 0.834801, -0.387498,
		0.848192, 0.163501, -0.503823,
		30.280371, 36.415668, 38.980103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444128, 36.281410, 38.630379>,  <29.686636, 36.301220, 39.332779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444128, 36.281410, 38.630379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836390, 36.203106, 38.630394>,  <30.071747, 36.156124, 38.630402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836390, 36.203106, 38.630394>,  <29.444128, 36.281410, 38.630379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836390, 36.203106, 38.630394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143828, -0.720649, -0.678217,
		0.132793, 0.665089, -0.734862,
		0.980653, -0.195757, 0.000039,
		30.130585, 36.144379, 38.630405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692944, 36.306042, 37.897038>,  <29.444128, 36.281410, 38.630379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692944, 36.306042, 37.897038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944147, 36.096191, 38.126949>,  <30.094870, 35.970280, 38.264896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944147, 36.096191, 38.126949>,  <29.692944, 36.306042, 37.897038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944147, 36.096191, 38.126949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063522, -0.770688, -0.634038,
		0.775609, 0.361671, -0.517325,
		0.628009, -0.524627, 0.574779,
		30.132549, 35.938805, 38.299381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961044, 35.883965, 37.409737>,  <29.692944, 36.306042, 37.897038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961044, 35.883965, 37.409737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097187, 35.704952, 37.740524>,  <30.178873, 35.597546, 37.938995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097187, 35.704952, 37.740524>,  <29.961044, 35.883965, 37.409737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097187, 35.704952, 37.740524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088341, -0.860367, -0.501961,
		0.936137, 0.243901, -0.253298,
		0.340358, -0.447528, 0.826968,
		30.199295, 35.570694, 37.988613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439386, 35.407913, 37.141972>,  <29.961044, 35.883965, 37.409737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439386, 35.407913, 37.141972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344854, 35.242786, 37.493820>,  <30.288136, 35.143711, 37.704929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344854, 35.242786, 37.493820>,  <30.439386, 35.407913, 37.141972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344854, 35.242786, 37.493820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157727, -0.876960, -0.453942,
		0.958786, -0.246019, 0.142139,
		-0.236328, -0.412814, 0.879621,
		30.273956, 35.118942, 37.757706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794661, 34.744251, 37.197281>,  <30.439386, 35.407913, 37.141972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794661, 34.744251, 37.197281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489393, 34.719624, 37.454582>,  <30.306232, 34.704849, 37.608963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489393, 34.719624, 37.454582>,  <30.794661, 34.744251, 37.197281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489393, 34.719624, 37.454582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250627, -0.889329, -0.382466,
		0.595615, -0.453105, 0.663279,
		-0.763170, -0.061567, 0.643258,
		30.260443, 34.701153, 37.647560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759134, 34.074482, 37.258209>,  <30.794661, 34.744251, 37.197281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759134, 34.074482, 37.258209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405535, 34.166393, 37.421055>,  <30.193375, 34.221542, 37.518764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405535, 34.166393, 37.421055>,  <30.759134, 34.074482, 37.258209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405535, 34.166393, 37.421055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413854, -0.789671, -0.452930,
		0.217413, -0.568877, 0.793165,
		-0.884001, 0.229782, 0.407116,
		30.140335, 34.235329, 37.543190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507826, 33.438995, 37.594814>,  <30.759134, 34.074482, 37.258209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507826, 33.438995, 37.594814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209616, 33.679661, 37.480137>,  <30.030689, 33.824062, 37.411331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209616, 33.679661, 37.480137>,  <30.507826, 33.438995, 37.594814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209616, 33.679661, 37.480137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337684, -0.711857, -0.615816,
		-0.574596, -0.362297, 0.733881,
		-0.745526, 0.601665, -0.286688,
		29.985958, 33.860161, 37.394131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894039, 33.014366, 37.560127>,  <30.507826, 33.438995, 37.594814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894039, 33.014366, 37.560127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785807, 33.338478, 37.352192>,  <29.720867, 33.532944, 37.227428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785807, 33.338478, 37.352192>,  <29.894039, 33.014366, 37.560127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785807, 33.338478, 37.352192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620601, -0.559619, -0.549255,
		-0.735962, 0.173996, 0.654282,
		-0.270580, 0.810279, -0.519840,
		29.704632, 33.581562, 37.196239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143360, 33.049461, 37.531010>,  <29.894039, 33.014366, 37.560127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143360, 33.049461, 37.531010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285660, 33.238571, 37.208538>,  <29.371040, 33.352036, 37.015057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285660, 33.238571, 37.208538>,  <29.143360, 33.049461, 37.531010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285660, 33.238571, 37.208538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537910, -0.601827, -0.590302,
		-0.764261, 0.643652, 0.040209,
		0.355750, 0.472774, -0.806180,
		29.392385, 33.380402, 36.966682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590630, 33.133709, 37.102551>,  <29.143360, 33.049461, 37.531010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590630, 33.133709, 37.102551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873638, 33.200462, 36.827869>,  <29.043444, 33.240517, 36.663059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873638, 33.200462, 36.827869>,  <28.590630, 33.133709, 37.102551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873638, 33.200462, 36.827869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561429, -0.457419, -0.689613,
		-0.429199, 0.873451, -0.229938,
		0.707521, 0.166887, -0.686704,
		29.085894, 33.250526, 36.621857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222998, 33.264641, 36.532913>,  <28.590630, 33.133709, 37.102551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222998, 33.264641, 36.532913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591299, 33.247841, 36.377762>,  <28.812279, 33.237759, 36.284672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591299, 33.247841, 36.377762>,  <28.222998, 33.264641, 36.532913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591299, 33.247841, 36.377762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366860, -0.431563, -0.824116,
		-0.132782, 0.901105, -0.412771,
		0.920751, -0.042002, -0.387883,
		28.867525, 33.235241, 36.261398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103643, 33.576900, 35.928967>,  <28.222998, 33.264641, 36.532913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103643, 33.576900, 35.928967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431118, 33.360104, 35.853073>,  <28.627604, 33.230026, 35.807537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431118, 33.360104, 35.853073>,  <28.103643, 33.576900, 35.928967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431118, 33.360104, 35.853073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426638, -0.352946, -0.832711,
		0.384356, 0.762677, -0.520186,
		0.818688, -0.541989, -0.189730,
		28.676723, 33.197506, 35.796154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405510, 33.774841, 35.215988>,  <28.103643, 33.576900, 35.928967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405510, 33.774841, 35.215988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534725, 33.411385, 35.321827>,  <28.612255, 33.193310, 35.385330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534725, 33.411385, 35.321827>,  <28.405510, 33.774841, 35.215988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534725, 33.411385, 35.321827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254295, -0.352641, -0.900544,
		0.911581, 0.223626, -0.344981,
		0.323039, -0.908645, 0.264593,
		28.631638, 33.138790, 35.401203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838440, 33.559422, 34.743515>,  <28.405510, 33.774841, 35.215988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838440, 33.559422, 34.743515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719231, 33.212471, 34.902931>,  <28.647705, 33.004299, 34.998581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719231, 33.212471, 34.902931>,  <28.838440, 33.559422, 34.743515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719231, 33.212471, 34.902931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146044, -0.371163, -0.917011,
		0.943321, -0.331495, -0.016061,
		-0.298023, -0.867381, 0.398538,
		28.629824, 32.952255, 35.022491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020126, 32.975666, 34.302837>,  <28.838440, 33.559422, 34.743515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020126, 32.975666, 34.302837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737391, 32.806618, 34.529736>,  <28.567749, 32.705189, 34.665874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737391, 32.806618, 34.529736>,  <29.020126, 32.975666, 34.302837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737391, 32.806618, 34.529736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294532, -0.553247, -0.779210,
		0.643139, -0.717849, 0.266581,
		-0.706840, -0.422624, 0.567244,
		28.525339, 32.679832, 34.699909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963892, 32.190620, 34.181053>,  <29.020126, 32.975666, 34.302837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963892, 32.190620, 34.181053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605392, 32.328098, 34.293201>,  <28.390293, 32.410583, 34.360493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605392, 32.328098, 34.293201>,  <28.963892, 32.190620, 34.181053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605392, 32.328098, 34.293201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435000, -0.557595, -0.707010,
		-0.086660, -0.755620, 0.649252,
		-0.896250, 0.343694, 0.280374,
		28.336517, 32.431206, 34.377316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311218, 31.695053, 33.627979>,  <28.963892, 32.190620, 34.181053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311218, 31.695053, 33.627979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460098, 31.461926, 33.339039>,  <29.549425, 31.322048, 33.165676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460098, 31.461926, 33.339039>,  <29.311218, 31.695053, 33.627979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460098, 31.461926, 33.339039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857117, -0.082781, 0.508428,
		-0.356118, -0.808375, 0.468733,
		0.372198, -0.582819, -0.722351,
		29.571758, 31.287081, 33.122334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885107, 31.772152, 34.142426>,  <29.311218, 31.695053, 33.627979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885107, 31.772152, 34.142426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143427, 31.475039, 34.071754>,  <30.298418, 31.296770, 34.029350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143427, 31.475039, 34.071754>,  <29.885107, 31.772152, 34.142426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143427, 31.475039, 34.071754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308894, -0.042559, -0.950144,
		0.698231, 0.668179, -0.256926,
		0.645800, -0.742783, -0.176680,
		30.337168, 31.252203, 34.018749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389448, 32.008198, 33.705990>,  <29.885107, 31.772152, 34.142426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389448, 32.008198, 33.705990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428246, 31.961327, 34.101334>,  <30.451525, 31.933205, 34.338539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428246, 31.961327, 34.101334>,  <30.389448, 32.008198, 33.705990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428246, 31.961327, 34.101334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860739, -0.488721, -0.142409,
		0.499721, 0.864535, 0.053456,
		0.096993, -0.117176, 0.988363,
		30.457344, 31.926174, 34.397842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078455, 32.355545, 33.893581>,  <30.389448, 32.008198, 33.705990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078455, 32.355545, 33.893581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959499, 32.057255, 34.132061>,  <30.888126, 31.878281, 34.275150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959499, 32.057255, 34.132061>,  <31.078455, 32.355545, 33.893581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959499, 32.057255, 34.132061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787217, -0.544854, -0.288832,
		0.540230, 0.383442, 0.749082,
		-0.297390, -0.745726, 0.596198,
		30.870283, 31.833536, 34.310921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675781, 32.636272, 34.217724>,  <31.078455, 32.355545, 33.893581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675781, 32.636272, 34.217724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631781, 32.422615, 34.553005>,  <31.605381, 32.294422, 34.754173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631781, 32.422615, 34.553005>,  <31.675781, 32.636272, 34.217724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631781, 32.422615, 34.553005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414902, 0.741659, 0.527065,
		-0.903192, 0.405751, 0.140035,
		-0.109999, -0.534142, 0.838208,
		31.598782, 32.262371, 34.804466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360895, 33.076729, 34.712482>,  <31.675781, 32.636272, 34.217724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360895, 33.076729, 34.712482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587620, 32.800476, 34.892151>,  <31.723656, 32.634724, 34.999950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587620, 32.800476, 34.892151>,  <31.360895, 33.076729, 34.712482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587620, 32.800476, 34.892151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388255, 0.704796, 0.593735,
		-0.726623, -0.162145, 0.667628,
		0.566812, -0.690632, 0.449167,
		31.757664, 32.593288, 35.026901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247850, 33.207760, 35.391163>,  <31.360895, 33.076729, 34.712482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247850, 33.207760, 35.391163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594902, 33.009327, 35.377773>,  <31.803133, 32.890266, 35.369740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594902, 33.009327, 35.377773>,  <31.247850, 33.207760, 35.391163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594902, 33.009327, 35.377773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353506, 0.568121, 0.743150,
		-0.349650, -0.656611, 0.668287,
		0.867628, -0.496086, -0.033473,
		31.855190, 32.860500, 35.367733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526058, 33.275078, 36.094128>,  <31.247850, 33.207760, 35.391163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526058, 33.275078, 36.094128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857180, 33.180450, 35.890648>,  <32.055855, 33.123672, 35.768562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857180, 33.180450, 35.890648>,  <31.526058, 33.275078, 36.094128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857180, 33.180450, 35.890648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543428, 0.563390, 0.622316,
		0.139371, -0.791596, 0.594938,
		0.827806, -0.236573, -0.508696,
		32.105522, 33.109478, 35.738041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000618, 32.869438, 36.581997>,  <31.526058, 33.275078, 36.094128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000618, 32.869438, 36.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215279, 33.058743, 36.302563>,  <32.344074, 33.172325, 36.134903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215279, 33.058743, 36.302563>,  <32.000618, 32.869438, 36.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215279, 33.058743, 36.302563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618469, 0.342592, 0.707196,
		0.574019, -0.811576, -0.108842,
		0.536655, 0.473259, -0.698589,
		32.376274, 33.200722, 36.092987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637794, 32.714878, 36.802975>,  <32.000618, 32.869438, 36.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637794, 32.714878, 36.802975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703041, 33.016937, 36.549000>,  <32.742188, 33.198174, 36.396614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703041, 33.016937, 36.549000>,  <32.637794, 32.714878, 36.802975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703041, 33.016937, 36.549000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583321, 0.445214, 0.679354,
		0.795695, -0.481189, -0.367869,
		0.163117, 0.755144, -0.634941,
		32.751976, 33.243481, 36.358517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388958, 32.795486, 36.685955>,  <32.637794, 32.714878, 36.802975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388958, 32.795486, 36.685955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212090, 33.145546, 36.607376>,  <33.105968, 33.355583, 36.560230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212090, 33.145546, 36.607376>,  <33.388958, 32.795486, 36.685955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212090, 33.145546, 36.607376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615295, 0.455328, 0.643498,
		0.652606, 0.163665, -0.739810,
		-0.442174, 0.875151, -0.196448,
		33.079437, 33.408092, 36.548443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940796, 33.143646, 36.797634>,  <33.388958, 32.795486, 36.685955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940796, 33.143646, 36.797634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653530, 33.420315, 36.767097>,  <33.481171, 33.586315, 36.748775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653530, 33.420315, 36.767097>,  <33.940796, 33.143646, 36.797634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653530, 33.420315, 36.767097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526639, 0.611942, 0.590066,
		0.454846, 0.383563, -0.803738,
		-0.718169, 0.691669, -0.076340,
		33.438080, 33.627815, 36.744194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239250, 33.769260, 36.550335>,  <33.940796, 33.143646, 36.797634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239250, 33.769260, 36.550335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906578, 33.868801, 36.748886>,  <33.706974, 33.928524, 36.868015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906578, 33.868801, 36.748886>,  <34.239250, 33.769260, 36.550335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906578, 33.868801, 36.748886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498404, 0.728618, 0.469797,
		-0.244760, 0.638115, -0.730001,
		-0.831677, 0.248848, 0.496376,
		33.657074, 33.943455, 36.897800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385365, 34.467991, 36.804092>,  <34.239250, 33.769260, 36.550335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385365, 34.467991, 36.804092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067612, 34.364689, 37.024006>,  <33.876961, 34.302708, 37.155952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067612, 34.364689, 37.024006>,  <34.385365, 34.467991, 36.804092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067612, 34.364689, 37.024006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475608, 0.298547, 0.827446,
		-0.377827, 0.918790, -0.114333,
		-0.794383, -0.258254, 0.549783,
		33.829296, 34.287212, 37.188942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235699, 35.102245, 37.264477>,  <34.385365, 34.467991, 36.804092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235699, 35.102245, 37.264477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065044, 34.785248, 37.438801>,  <33.962650, 34.595047, 37.543396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065044, 34.785248, 37.438801>,  <34.235699, 35.102245, 37.264477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065044, 34.785248, 37.438801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211277, 0.381201, 0.900026,
		-0.879398, 0.476063, 0.004801,
		-0.426640, -0.792496, 0.435809,
		33.937054, 34.547501, 37.569542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729958, 35.371738, 37.761646>,  <34.235699, 35.102245, 37.264477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729958, 35.371738, 37.761646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847729, 35.006474, 37.874390>,  <33.918392, 34.787315, 37.942036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847729, 35.006474, 37.874390>,  <33.729958, 35.371738, 37.761646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847729, 35.006474, 37.874390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078676, 0.317096, 0.945124,
		-0.952428, -0.256100, 0.165207,
		0.294433, -0.913161, 0.281862,
		33.936058, 34.732525, 37.958950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449230, 35.246140, 38.448112>,  <33.729958, 35.371738, 37.761646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449230, 35.246140, 38.448112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737568, 34.970436, 38.418980>,  <33.910572, 34.805016, 38.401501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737568, 34.970436, 38.418980>,  <33.449230, 35.246140, 38.448112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737568, 34.970436, 38.418980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161414, 0.064751, 0.984760,
		-0.674035, -0.721619, 0.157931,
		0.720848, -0.689255, -0.072835,
		33.953823, 34.763660, 38.397129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321114, 34.702148, 38.907429>,  <33.449230, 35.246140, 38.448112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321114, 34.702148, 38.907429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716583, 34.704983, 38.847454>,  <33.953865, 34.706684, 38.811470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716583, 34.704983, 38.847454>,  <33.321114, 34.702148, 38.907429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716583, 34.704983, 38.847454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148320, 0.107550, 0.983074,
		0.023089, -0.994174, 0.105281,
		0.988670, 0.007083, -0.149939,
		34.013184, 34.707108, 38.802471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557987, 34.349281, 39.497139>,  <33.321114, 34.702148, 38.907429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557987, 34.349281, 39.497139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911549, 34.458275, 39.345100>,  <34.123684, 34.523670, 39.253876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911549, 34.458275, 39.345100>,  <33.557987, 34.349281, 39.497139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911549, 34.458275, 39.345100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417451, -0.093281, 0.903899,
		0.210842, -0.957628, -0.196200,
		0.883901, 0.272484, -0.380095,
		34.176720, 34.540020, 39.231071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155376, 33.997204, 39.854301>,  <33.557987, 34.349281, 39.497139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155376, 33.997204, 39.854301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303440, 34.332554, 39.694244>,  <34.392281, 34.533764, 39.598209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303440, 34.332554, 39.694244>,  <34.155376, 33.997204, 39.854301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303440, 34.332554, 39.694244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305152, 0.297098, 0.904774,
		0.877418, -0.457016, -0.145856,
		0.370162, 0.838373, -0.400139,
		34.414490, 34.584064, 39.574203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790081, 34.080925, 40.234665>,  <34.155376, 33.997204, 39.854301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790081, 34.080925, 40.234665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725750, 34.455761, 40.110729>,  <34.687153, 34.680660, 40.036369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725750, 34.455761, 40.110729>,  <34.790081, 34.080925, 40.234665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725750, 34.455761, 40.110729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009641, 0.315403, 0.948909,
		0.986936, 0.149623, -0.059759,
		-0.160827, 0.937088, -0.309840,
		34.677502, 34.736889, 40.017776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156349, 34.560493, 40.601295>,  <34.790081, 34.080925, 40.234665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156349, 34.560493, 40.601295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868328, 34.796684, 40.455498>,  <34.695515, 34.938400, 40.368019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868328, 34.796684, 40.455498>,  <35.156349, 34.560493, 40.601295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868328, 34.796684, 40.455498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125784, 0.405500, 0.905400,
		0.682421, 0.697785, -0.217709,
		-0.720055, 0.590480, -0.364492,
		34.652313, 34.973827, 40.346149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291302, 35.093983, 40.938660>,  <35.156349, 34.560493, 40.601295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291302, 35.093983, 40.938660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932770, 35.179840, 40.783474>,  <34.717651, 35.231354, 40.690361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932770, 35.179840, 40.783474>,  <35.291302, 35.093983, 40.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932770, 35.179840, 40.783474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269630, 0.430755, 0.861249,
		0.351980, 0.876572, -0.328226,
		-0.896332, 0.214643, -0.387967,
		34.663872, 35.244232, 40.667084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206944, 35.816338, 41.112476>,  <35.291302, 35.093983, 40.938660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206944, 35.816338, 41.112476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859383, 35.625473, 41.059826>,  <34.650845, 35.510956, 41.028236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859383, 35.625473, 41.059826>,  <35.206944, 35.816338, 41.112476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859383, 35.625473, 41.059826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325636, 0.350780, 0.878018,
		-0.372782, 0.805775, -0.460174,
		-0.868905, -0.477158, -0.131625,
		34.598713, 35.482327, 41.020340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866787, 36.392418, 41.455708>,  <35.206944, 35.816338, 41.112476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866787, 36.392418, 41.455708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627373, 36.072159, 41.444946>,  <34.483723, 35.880005, 41.438492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627373, 36.072159, 41.444946>,  <34.866787, 36.392418, 41.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627373, 36.072159, 41.444946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292517, 0.187169, 0.937764,
		-0.745780, 0.569155, -0.346229,
		-0.598537, -0.800644, -0.026901,
		34.447811, 35.831966, 41.436874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344700, 36.633427, 41.726093>,  <34.866787, 36.392418, 41.455708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344700, 36.633427, 41.726093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289719, 36.239391, 41.767487>,  <34.256729, 36.002972, 41.792324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289719, 36.239391, 41.767487>,  <34.344700, 36.633427, 41.726093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289719, 36.239391, 41.767487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219082, 0.132124, 0.966720,
		-0.965977, 0.110204, -0.233975,
		-0.137450, -0.985088, 0.103485,
		34.248486, 35.943867, 41.798531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720608, 36.520023, 42.017326>,  <34.344700, 36.633427, 41.726093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720608, 36.520023, 42.017326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914017, 36.180840, 42.104202>,  <34.030064, 35.977329, 42.156326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914017, 36.180840, 42.104202>,  <33.720608, 36.520023, 42.017326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914017, 36.180840, 42.104202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250360, 0.103785, 0.962574,
		-0.838765, -0.519801, -0.162113,
		0.483522, -0.847960, 0.217189,
		34.059074, 35.926453, 42.169357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258965, 36.121666, 42.472305>,  <33.720608, 36.520023, 42.017326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258965, 36.121666, 42.472305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645428, 36.039082, 42.534161>,  <33.877304, 35.989532, 42.571274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645428, 36.039082, 42.534161>,  <33.258965, 36.121666, 42.472305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645428, 36.039082, 42.534161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155470, 0.012295, 0.987764,
		-0.205837, -0.978377, -0.020220,
		0.966158, -0.206462, 0.154639,
		33.935276, 35.977142, 42.580551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205132, 35.735733, 42.988388>,  <33.258965, 36.121666, 42.472305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205132, 35.735733, 42.988388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588924, 35.848057, 42.997631>,  <33.819202, 35.915451, 43.003178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588924, 35.848057, 42.997631>,  <33.205132, 35.735733, 42.988388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588924, 35.848057, 42.997631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031609, 0.025781, 0.999168,
		0.279983, -0.959416, 0.033613,
		0.959485, 0.280813, 0.023108,
		33.876770, 35.932301, 43.004562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201649, 35.736187, 43.636986>,  <33.205132, 35.735733, 42.988388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201649, 35.736187, 43.636986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575790, 35.861996, 43.572250>,  <33.800274, 35.937481, 43.533409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575790, 35.861996, 43.572250>,  <33.201649, 35.736187, 43.636986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575790, 35.861996, 43.572250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075702, 0.268933, 0.960179,
		0.345524, -0.910356, 0.227737,
		0.935351, 0.314526, -0.161839,
		33.856396, 35.956352, 43.523701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760880, 35.429298, 44.087990>,  <33.201649, 35.736187, 43.636986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760880, 35.429298, 44.087990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935619, 35.770695, 43.974350>,  <34.040462, 35.975533, 43.906166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935619, 35.770695, 43.974350>,  <33.760880, 35.429298, 44.087990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935619, 35.770695, 43.974350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142565, 0.246150, 0.958690,
		0.888166, -0.459305, -0.014148,
		0.436848, 0.853492, -0.284103,
		34.066673, 36.026741, 43.889118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307735, 35.491501, 44.446869>,  <33.760880, 35.429298, 44.087990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307735, 35.491501, 44.446869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267223, 35.870495, 44.325539>,  <34.242916, 36.097893, 44.252739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267223, 35.870495, 44.325539>,  <34.307735, 35.491501, 44.446869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267223, 35.870495, 44.325539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179796, 0.317310, 0.931122,
		0.978476, 0.039771, -0.202493,
		-0.101285, 0.947488, -0.303329,
		34.236839, 36.154739, 44.234539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830914, 35.797409, 44.770988>,  <34.307735, 35.491501, 44.446869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830914, 35.797409, 44.770988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595692, 36.102570, 44.663528>,  <34.454559, 36.285664, 44.599052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595692, 36.102570, 44.663528>,  <34.830914, 35.797409, 44.770988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595692, 36.102570, 44.663528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054729, 0.368923, 0.927847,
		0.806965, 0.530925, -0.258701,
		-0.588058, 0.762899, -0.268651,
		34.419273, 36.331440, 44.582932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098270, 36.319431, 45.217888>,  <34.830914, 35.797409, 44.770988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098270, 36.319431, 45.217888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746109, 36.463947, 45.095013>,  <34.534813, 36.550655, 45.021286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746109, 36.463947, 45.095013>,  <35.098270, 36.319431, 45.217888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746109, 36.463947, 45.095013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127331, 0.443885, 0.886991,
		0.456815, 0.820023, -0.344794,
		-0.880402, 0.361288, -0.307187,
		34.481987, 36.572334, 45.002857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144447, 37.126453, 45.351105>,  <35.098270, 36.319431, 45.217888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144447, 37.126453, 45.351105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754173, 37.046875, 45.314331>,  <34.520008, 36.999126, 45.292267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754173, 37.046875, 45.314331>,  <35.144447, 37.126453, 45.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754173, 37.046875, 45.314331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163693, 0.382625, 0.909287,
		-0.145725, 0.902230, -0.405889,
		-0.975689, -0.198947, -0.091931,
		34.461468, 36.987190, 45.286751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780010, 37.758316, 45.515705>,  <35.144447, 37.126453, 45.351105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780010, 37.758316, 45.515705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530811, 37.455273, 45.593586>,  <34.381294, 37.273445, 45.640312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530811, 37.455273, 45.593586>,  <34.780010, 37.758316, 45.515705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530811, 37.455273, 45.593586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158379, 0.365917, 0.917072,
		-0.766025, 0.540495, -0.347954,
		-0.622995, -0.757608, 0.194698,
		34.343914, 37.227989, 45.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164406, 38.020782, 45.657326>,  <34.780010, 37.758316, 45.515705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164406, 38.020782, 45.657326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150383, 37.658951, 45.827271>,  <34.141968, 37.441853, 45.929237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150383, 37.658951, 45.827271>,  <34.164406, 38.020782, 45.657326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150383, 37.658951, 45.827271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284103, 0.416608, 0.863553,
		-0.958153, -0.090433, -0.271598,
		-0.035056, -0.904577, 0.424866,
		34.139866, 37.387577, 45.954731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657646, 38.099510, 46.150791>,  <34.164406, 38.020782, 45.657326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657646, 38.099510, 46.150791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847019, 37.770466, 46.276764>,  <33.960644, 37.573040, 46.352348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847019, 37.770466, 46.276764>,  <33.657646, 38.099510, 46.150791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847019, 37.770466, 46.276764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208867, 0.242496, 0.947402,
		-0.855711, -0.514305, -0.057011,
		0.473428, -0.822609, 0.314928,
		33.989048, 37.523682, 46.371243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198761, 37.694946, 46.678078>,  <33.657646, 38.099510, 46.150791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198761, 37.694946, 46.678078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569920, 37.555500, 46.730957>,  <33.792614, 37.471832, 46.762684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569920, 37.555500, 46.730957>,  <33.198761, 37.694946, 46.678078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569920, 37.555500, 46.730957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126446, 0.039312, 0.991194,
		-0.350745, -0.936440, -0.007604,
		0.927895, -0.348617, 0.132198,
		33.848289, 37.450916, 46.770615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188797, 37.243885, 47.207951>,  <33.198761, 37.694946, 46.678078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188797, 37.243885, 47.207951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585896, 37.290649, 47.196686>,  <33.824154, 37.318707, 47.189926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585896, 37.290649, 47.196686>,  <33.188797, 37.243885, 47.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585896, 37.290649, 47.196686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049547, -0.184312, 0.981618,
		0.109568, -0.975890, -0.188767,
		0.992743, 0.116907, -0.028157,
		33.883720, 37.325722, 47.188240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439690, 36.709263, 47.622997>,  <33.188797, 37.243885, 47.207951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439690, 36.709263, 47.622997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713287, 36.998695, 47.585945>,  <33.877445, 37.172356, 47.563713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713287, 36.998695, 47.585945>,  <33.439690, 36.709263, 47.622997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713287, 36.998695, 47.585945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090759, 0.041578, 0.995005,
		0.723820, -0.688984, -0.037233,
		0.683994, 0.723583, -0.092626,
		33.918484, 37.215771, 47.558159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033306, 36.422527, 48.059116>,  <33.439690, 36.709263, 47.622997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033306, 36.422527, 48.059116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058201, 36.819111, 48.013264>,  <34.073139, 37.057060, 47.985752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058201, 36.819111, 48.013264>,  <34.033306, 36.422527, 48.059116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058201, 36.819111, 48.013264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187732, 0.101174, 0.976996,
		0.980247, -0.082324, -0.179831,
		0.062236, 0.991457, -0.114631,
		34.076870, 37.116547, 47.978874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579948, 36.569073, 48.543221>,  <34.033306, 36.422527, 48.059116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579948, 36.569073, 48.543221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435104, 36.935242, 48.472923>,  <34.348198, 37.154942, 48.430744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435104, 36.935242, 48.472923>,  <34.579948, 36.569073, 48.543221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435104, 36.935242, 48.472923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228783, 0.270054, 0.935270,
		0.903624, 0.298461, -0.307221,
		-0.362108, 0.915419, -0.175745,
		34.326473, 37.209866, 48.420200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061089, 37.112999, 48.823586>,  <34.579948, 36.569073, 48.543221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061089, 37.112999, 48.823586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708767, 37.301617, 48.806480>,  <34.497375, 37.414787, 48.796219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708767, 37.301617, 48.806480>,  <35.061089, 37.112999, 48.823586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708767, 37.301617, 48.806480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043964, 0.171366, 0.984226,
		0.471438, 0.865029, -0.171671,
		-0.880803, 0.471548, -0.042758,
		34.444527, 37.443081, 48.793652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099552, 37.625259, 49.271172>,  <35.061089, 37.112999, 48.823586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099552, 37.625259, 49.271172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702911, 37.619446, 49.219761>,  <34.464928, 37.615959, 49.188915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702911, 37.619446, 49.219761>,  <35.099552, 37.625259, 49.271172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702911, 37.619446, 49.219761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127846, 0.260971, 0.956844,
		0.019638, 0.965237, -0.260637,
		-0.991600, -0.014531, -0.128526,
		34.405430, 37.615086, 49.181202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785759, 38.416565, 49.488297>,  <35.099552, 37.625259, 49.271172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785759, 38.416565, 49.488297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545319, 38.097847, 49.512981>,  <34.401054, 37.906616, 49.527794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545319, 38.097847, 49.512981>,  <34.785759, 38.416565, 49.488297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545319, 38.097847, 49.512981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192419, 0.219243, 0.956508,
		-0.775666, 0.563079, -0.285104,
		-0.601096, -0.796790, 0.061713,
		34.364990, 37.858810, 49.531494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154995, 38.664787, 49.818813>,  <34.785759, 38.416565, 49.488297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154995, 38.664787, 49.818813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192211, 38.273975, 49.895508>,  <34.214542, 38.039490, 49.941525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192211, 38.273975, 49.895508>,  <34.154995, 38.664787, 49.818813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192211, 38.273975, 49.895508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300619, 0.156021, 0.940896,
		-0.949195, -0.145186, -0.279195,
		0.093044, -0.977025, 0.191740,
		34.220123, 37.980869, 49.953030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561680, 38.456089, 50.255692>,  <34.154995, 38.664787, 49.818813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561680, 38.456089, 50.255692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868874, 38.203068, 50.295856>,  <34.053188, 38.051254, 50.319954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868874, 38.203068, 50.295856>,  <33.561680, 38.456089, 50.255692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868874, 38.203068, 50.295856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209823, -0.100364, 0.972575,
		-0.605128, -0.767986, -0.209802,
		0.767980, -0.632554, 0.100408,
		34.099266, 38.013302, 50.325977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358509, 37.838875, 50.546089>,  <33.561680, 38.456089, 50.255692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358509, 37.838875, 50.546089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724098, 37.923851, 50.684380>,  <33.943451, 37.974834, 50.767353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724098, 37.923851, 50.684380>,  <33.358509, 37.838875, 50.546089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724098, 37.923851, 50.684380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243903, -0.393320, 0.886460,
		0.324300, -0.894522, -0.307668,
		0.913970, 0.212438, 0.345730,
		33.998291, 37.987583, 50.788097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522205, 37.245785, 50.877647>,  <33.358509, 37.838875, 50.546089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522205, 37.245785, 50.877647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741047, 37.537373, 51.042225>,  <33.872353, 37.712326, 51.140972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741047, 37.537373, 51.042225>,  <33.522205, 37.245785, 50.877647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741047, 37.537373, 51.042225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181648, -0.376421, 0.908466,
		0.817118, -0.571763, -0.073526,
		0.547104, 0.728969, 0.411440,
		33.905178, 37.756062, 51.165657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193336, 37.126797, 51.516178>,  <33.522205, 37.245785, 50.877647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193336, 37.126797, 51.516178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287827, 37.489292, 51.656425>,  <33.344521, 37.706787, 51.740574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287827, 37.489292, 51.656425>,  <33.193336, 37.126797, 51.516178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287827, 37.489292, 51.656425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844034, 0.012579, 0.536142,
		0.481461, -0.422585, 0.767865,
		0.236224, 0.906236, 0.350620,
		33.358692, 37.761162, 51.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466911, 37.112942, 52.220737>,  <33.193336, 37.126797, 51.516178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466911, 37.112942, 52.220737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292877, 37.465038, 52.144966>,  <33.188457, 37.676296, 52.099503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292877, 37.465038, 52.144966>,  <33.466911, 37.112942, 52.220737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292877, 37.465038, 52.144966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511618, -0.068567, 0.856473,
		0.740911, 0.469553, 0.480178,
		-0.435084, 0.880237, -0.189430,
		33.162354, 37.729111, 52.088139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675484, 36.589401, 51.734554>,  <33.466911, 37.112942, 52.220737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675484, 36.589401, 51.734554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548096, 36.387947, 52.055786>,  <33.471664, 36.267075, 52.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548096, 36.387947, 52.055786>,  <33.675484, 36.589401, 51.734554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548096, 36.387947, 52.055786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891860, -0.127864, -0.433862,
		0.321192, -0.854402, -0.408451,
		-0.318466, -0.503634, 0.803076,
		33.452557, 36.236858, 52.296707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322300, 36.010651, 51.435913>,  <33.675484, 36.589401, 51.734554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322300, 36.010651, 51.435913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423985, 35.681213, 51.638721>,  <33.484993, 35.483551, 51.760406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423985, 35.681213, 51.638721>,  <33.322300, 36.010651, 51.435913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423985, 35.681213, 51.638721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263422, -0.445456, -0.855674,
		0.930584, 0.351080, 0.103714,
		0.254209, -0.823597, 0.507017,
		33.500248, 35.434135, 51.790825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084255, 35.893921, 51.432583>,  <33.322300, 36.010651, 51.435913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084255, 35.893921, 51.432583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854496, 35.566490, 51.433487>,  <33.716640, 35.370033, 51.434029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854496, 35.566490, 51.433487>,  <34.084255, 35.893921, 51.432583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854496, 35.566490, 51.433487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415397, -0.293868, -0.860864,
		0.705345, -0.493539, 0.508830,
		-0.574399, -0.818572, 0.002263,
		33.682175, 35.320919, 51.434166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484531, 35.318298, 51.369858>,  <34.084255, 35.893921, 51.432583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484531, 35.318298, 51.369858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125263, 35.235600, 51.214653>,  <33.909702, 35.185978, 51.121532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125263, 35.235600, 51.214653>,  <34.484531, 35.318298, 51.369858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125263, 35.235600, 51.214653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432282, -0.254336, -0.865127,
		0.080181, -0.944758, 0.317811,
		-0.898166, -0.206750, -0.388009,
		33.855812, 35.173576, 51.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572414, 34.667980, 50.991093>,  <34.484531, 35.318298, 51.369858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572414, 34.667980, 50.991093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275242, 34.858631, 50.803097>,  <34.096939, 34.973022, 50.690300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275242, 34.858631, 50.803097>,  <34.572414, 34.667980, 50.991093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275242, 34.858631, 50.803097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323845, -0.358553, -0.875536,
		-0.585818, -0.802663, 0.112026,
		-0.742928, 0.476626, -0.469985,
		34.052364, 35.001617, 50.662102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131832, 34.252590, 50.630268>,  <34.572414, 34.667980, 50.991093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131832, 34.252590, 50.630268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113037, 34.605946, 50.443756>,  <34.101761, 34.817959, 50.331848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113037, 34.605946, 50.443756>,  <34.131832, 34.252590, 50.630268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113037, 34.605946, 50.443756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614130, -0.342601, -0.710963,
		-0.787805, -0.319765, -0.526416,
		-0.046990, 0.883388, -0.466280,
		34.098942, 34.870960, 50.303871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030624, 34.176907, 49.920456>,  <34.131832, 34.252590, 50.630268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030624, 34.176907, 49.920456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143803, 34.559452, 49.891293>,  <34.211708, 34.788979, 49.873795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143803, 34.559452, 49.891293>,  <34.030624, 34.176907, 49.920456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143803, 34.559452, 49.891293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557472, -0.225834, -0.798889,
		-0.780493, 0.185395, -0.597043,
		0.282943, 0.956362, -0.072910,
		34.228687, 34.846359, 49.869419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020321, 34.207691, 49.235218>,  <34.030624, 34.176907, 49.920456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020321, 34.207691, 49.235218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232605, 34.526554, 49.350380>,  <34.359978, 34.717873, 49.419476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232605, 34.526554, 49.350380>,  <34.020321, 34.207691, 49.235218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232605, 34.526554, 49.350380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637732, -0.151850, -0.755142,
		-0.558247, 0.584368, -0.588960,
		0.530714, 0.797155, 0.287900,
		34.391819, 34.765701, 49.436749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178688, 34.555870, 48.602856>,  <34.020321, 34.207691, 49.235218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178688, 34.555870, 48.602856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439751, 34.692501, 48.873371>,  <34.596390, 34.774479, 49.035679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439751, 34.692501, 48.873371>,  <34.178688, 34.555870, 48.602856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439751, 34.692501, 48.873371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745890, -0.132993, -0.652656,
		-0.132993, 0.930395, -0.341581,
		0.652656, 0.341581, 0.676286,
		34.635548, 34.794975, 49.076256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489761, 35.233715, 48.345505>,  <34.178688, 34.555870, 48.602856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489761, 35.233715, 48.345505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753548, 35.080437, 48.604202>,  <34.911819, 34.988472, 48.759418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753548, 35.080437, 48.604202>,  <34.489761, 35.233715, 48.345505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753548, 35.080437, 48.604202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715049, 0.054267, -0.696965,
		0.231975, 0.922073, 0.309788,
		0.659464, -0.383192, 0.646739,
		34.951385, 34.965481, 48.798225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070873, 35.646725, 48.203136>,  <34.489761, 35.233715, 48.345505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070873, 35.646725, 48.203136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191971, 35.314335, 48.389828>,  <35.264629, 35.114902, 48.501842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191971, 35.314335, 48.389828>,  <35.070873, 35.646725, 48.203136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191971, 35.314335, 48.389828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729512, -0.113089, -0.674554,
		0.613316, 0.544701, 0.571966,
		0.302747, -0.830971, 0.466725,
		35.282795, 35.065044, 48.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851624, 35.593700, 48.136032>,  <35.070873, 35.646725, 48.203136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851624, 35.593700, 48.136032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782265, 35.211697, 48.232273>,  <35.740650, 34.982494, 48.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782265, 35.211697, 48.232273>,  <35.851624, 35.593700, 48.136032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782265, 35.211697, 48.232273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680683, -0.292771, -0.671532,
		0.711762, 0.047334, 0.700824,
		-0.173395, -0.955010, 0.240602,
		35.730247, 34.925194, 48.304455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523151, 35.318562, 48.101112>,  <35.851624, 35.593700, 48.136032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523151, 35.318562, 48.101112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260220, 35.019283, 48.065079>,  <36.102459, 34.839718, 48.043457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260220, 35.019283, 48.065079>,  <36.523151, 35.318562, 48.101112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260220, 35.019283, 48.065079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608425, -0.456360, -0.649272,
		0.444670, -0.481600, 0.755202,
		-0.657333, -0.748196, -0.090088,
		36.063019, 34.794823, 48.038052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967365, 34.656685, 48.009468>,  <36.523151, 35.318562, 48.101112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967365, 34.656685, 48.009468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608631, 34.554134, 47.865269>,  <36.393391, 34.492603, 47.778751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608631, 34.554134, 47.865269>,  <36.967365, 34.656685, 48.009468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608631, 34.554134, 47.865269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424207, -0.267344, -0.865203,
		0.125443, -0.928869, 0.348521,
		-0.896835, -0.256378, -0.360496,
		36.339581, 34.477222, 47.757118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047077, 33.959679, 47.643898>,  <36.967365, 34.656685, 48.009468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047077, 33.959679, 47.643898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732002, 34.160789, 47.501484>,  <36.542957, 34.281456, 47.416035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732002, 34.160789, 47.501484>,  <37.047077, 33.959679, 47.643898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732002, 34.160789, 47.501484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283272, -0.217615, -0.934024,
		-0.547087, -0.836574, 0.028989,
		-0.787688, 0.502780, -0.356033,
		36.495697, 34.311623, 47.394672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795078, 33.483570, 47.133335>,  <37.047077, 33.959679, 47.643898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795078, 33.483570, 47.133335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615570, 33.829361, 47.042759>,  <36.507866, 34.036835, 46.988415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615570, 33.829361, 47.042759>,  <36.795078, 33.483570, 47.133335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615570, 33.829361, 47.042759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085872, -0.210497, -0.973816,
		-0.889510, -0.456468, 0.020231,
		-0.448774, 0.864481, -0.226437,
		36.480938, 34.088707, 46.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408596, 33.311222, 46.584728>,  <36.795078, 33.483570, 47.133335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408596, 33.311222, 46.584728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424690, 33.710159, 46.560436>,  <36.434349, 33.949520, 46.545860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424690, 33.710159, 46.560436>,  <36.408596, 33.311222, 46.584728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424690, 33.710159, 46.560436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087929, -0.057010, -0.994494,
		-0.995314, 0.045358, 0.085401,
		0.040239, 0.997343, -0.060732,
		36.436764, 34.009361, 46.542217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862076, 33.524029, 46.093872>,  <36.408596, 33.311222, 46.584728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862076, 33.524029, 46.093872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088203, 33.853271, 46.115490>,  <36.223881, 34.050816, 46.128460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088203, 33.853271, 46.115490>,  <35.862076, 33.524029, 46.093872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088203, 33.853271, 46.115490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029867, 0.045047, -0.998538,
		-0.824334, 0.566102, 0.000882,
		0.565315, 0.823103, 0.054042,
		36.257797, 34.100201, 46.131702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596806, 34.089825, 45.761818>,  <35.862076, 33.524029, 46.093872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596806, 34.089825, 45.761818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987804, 34.162609, 45.719120>,  <36.222404, 34.206280, 45.693501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987804, 34.162609, 45.719120>,  <35.596806, 34.089825, 45.761818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987804, 34.162609, 45.719120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132896, 0.138169, -0.981452,
		-0.163833, 0.973550, 0.159241,
		0.977495, 0.181957, -0.106744,
		36.281052, 34.217197, 45.687096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654060, 34.622906, 45.414848>,  <35.596806, 34.089825, 45.761818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654060, 34.622906, 45.414848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954285, 34.363552, 45.363838>,  <36.134418, 34.207939, 45.333233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954285, 34.363552, 45.363838>,  <35.654060, 34.622906, 45.414848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954285, 34.363552, 45.363838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320479, -0.188394, -0.928332,
		0.577890, 0.737636, -0.349194,
		0.750557, -0.648383, -0.127526,
		36.179451, 34.169037, 45.325581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055096, 34.703533, 44.802143>,  <35.654060, 34.622906, 45.414848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055096, 34.703533, 44.802143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086571, 34.319221, 44.908508>,  <36.105457, 34.088634, 44.972328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086571, 34.319221, 44.908508>,  <36.055096, 34.703533, 44.802143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086571, 34.319221, 44.908508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123850, -0.274096, -0.953694,
		0.989176, 0.042109, -0.140560,
		0.078686, -0.960780, 0.265914,
		36.110176, 34.030987, 44.988281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584435, 34.410328, 44.452164>,  <36.055096, 34.703533, 44.802143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584435, 34.410328, 44.452164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384319, 34.079922, 44.556015>,  <36.264248, 33.881676, 44.618324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384319, 34.079922, 44.556015>,  <36.584435, 34.410328, 44.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384319, 34.079922, 44.556015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002519, -0.298457, -0.954420,
		0.865854, -0.478141, 0.147234,
		-0.500290, -0.826017, 0.259625,
		36.234234, 33.832115, 44.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930660, 33.853855, 44.106678>,  <36.584435, 34.410328, 44.452164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930660, 33.853855, 44.106678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555370, 33.740273, 44.185783>,  <36.330196, 33.672123, 44.233246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555370, 33.740273, 44.185783>,  <36.930660, 33.853855, 44.106678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555370, 33.740273, 44.185783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079364, -0.379694, -0.921702,
		0.336809, -0.880456, 0.333701,
		-0.938222, -0.283954, 0.197761,
		36.273903, 33.655087, 44.245113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920517, 33.230087, 43.780731>,  <36.930660, 33.853855, 44.106678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920517, 33.230087, 43.780731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536133, 33.319149, 43.846428>,  <36.305500, 33.372585, 43.885845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536133, 33.319149, 43.846428>,  <36.920517, 33.230087, 43.780731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536133, 33.319149, 43.846428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253793, -0.472958, -0.843742,
		-0.110185, -0.852487, 0.511004,
		-0.960962, 0.222657, 0.164242,
		36.247845, 33.385944, 43.895699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561703, 32.595768, 43.840755>,  <36.920517, 33.230087, 43.780731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561703, 32.595768, 43.840755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275013, 32.862648, 43.759617>,  <36.102997, 33.022778, 43.710934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275013, 32.862648, 43.759617>,  <36.561703, 32.595768, 43.840755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275013, 32.862648, 43.759617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352318, -0.597476, -0.720343,
		-0.601834, -0.444799, 0.663286,
		-0.716706, 0.667215, -0.202871,
		36.059994, 33.062809, 43.698761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881958, 32.151352, 43.651272>,  <36.561703, 32.595768, 43.840755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881958, 32.151352, 43.651272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822636, 32.512611, 43.490112>,  <35.787041, 32.729366, 43.393417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822636, 32.512611, 43.490112>,  <35.881958, 32.151352, 43.651272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822636, 32.512611, 43.490112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298406, -0.429286, -0.852448,
		-0.942846, -0.006195, 0.333171,
		-0.148307, 0.903147, -0.402902,
		35.778145, 32.783554, 43.369240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281769, 32.079185, 43.325260>,  <35.881958, 32.151352, 43.651272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281769, 32.079185, 43.325260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421875, 32.407005, 43.143864>,  <35.505939, 32.603699, 43.035027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421875, 32.407005, 43.143864>,  <35.281769, 32.079185, 43.325260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421875, 32.407005, 43.143864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399987, -0.306914, -0.863605,
		-0.846950, 0.483880, 0.220308,
		0.350265, 0.819551, -0.453487,
		35.526955, 32.652870, 43.007816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710548, 32.322533, 42.908974>,  <35.281769, 32.079185, 43.325260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710548, 32.322533, 42.908974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046886, 32.479351, 42.759697>,  <35.248688, 32.573444, 42.670132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046886, 32.479351, 42.759697>,  <34.710548, 32.322533, 42.908974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046886, 32.479351, 42.759697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314557, -0.207160, -0.926358,
		-0.440490, 0.896316, -0.050868,
		0.840847, 0.392050, -0.373194,
		35.299141, 32.596966, 42.647739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547909, 32.603157, 42.333187>,  <34.710548, 32.322533, 42.908974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547909, 32.603157, 42.333187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943623, 32.603077, 42.274780>,  <35.181049, 32.603031, 42.239735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943623, 32.603077, 42.274780>,  <34.547909, 32.603157, 42.333187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943623, 32.603077, 42.274780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145457, -0.089030, -0.985351,
		-0.012805, 0.996029, -0.088105,
		0.989282, -0.000198, -0.146020,
		35.240406, 32.603016, 42.230976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768314, 33.047241, 41.826813>,  <34.547909, 32.603157, 42.333187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768314, 33.047241, 41.826813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078205, 32.794323, 41.827110>,  <35.264137, 32.642570, 41.827290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078205, 32.794323, 41.827110>,  <34.768314, 33.047241, 41.826813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078205, 32.794323, 41.827110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111412, -0.137661, -0.984193,
		0.622406, 0.762397, -0.177095,
		0.774725, -0.632298, 0.000741,
		35.310623, 32.604633, 41.827332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215004, 33.269161, 41.344189>,  <34.768314, 33.047241, 41.826813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215004, 33.269161, 41.344189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357216, 32.900654, 41.407257>,  <35.442543, 32.679550, 41.445099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357216, 32.900654, 41.407257>,  <35.215004, 33.269161, 41.344189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357216, 32.900654, 41.407257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195229, -0.091779, -0.976454,
		0.914049, 0.377939, 0.147229,
		0.355527, -0.921270, 0.157675,
		35.463875, 32.624271, 41.454559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929153, 33.235508, 41.033646>,  <35.215004, 33.269161, 41.344189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929153, 33.235508, 41.033646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766068, 32.871498, 41.063633>,  <35.668217, 32.653091, 41.081627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766068, 32.871498, 41.063633>,  <35.929153, 33.235508, 41.033646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766068, 32.871498, 41.063633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177444, -0.159503, -0.971119,
		0.895700, -0.382641, 0.226511,
		-0.407719, -0.910025, 0.074970,
		35.643753, 32.598492, 41.086124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499626, 32.790920, 40.753353>,  <35.929153, 33.235508, 41.033646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499626, 32.790920, 40.753353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140690, 32.614677, 40.743137>,  <35.925327, 32.508934, 40.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140690, 32.614677, 40.743137>,  <36.499626, 32.790920, 40.753353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140690, 32.614677, 40.743137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162984, -0.277039, -0.946935,
		0.410147, -0.853884, 0.320409,
		-0.897338, -0.440604, -0.025542,
		35.871487, 32.482494, 40.735474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606247, 32.275997, 40.309578>,  <36.499626, 32.790920, 40.753353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606247, 32.275997, 40.309578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206757, 32.285778, 40.327251>,  <35.967064, 32.291649, 40.337856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206757, 32.285778, 40.327251>,  <36.606247, 32.275997, 40.309578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206757, 32.285778, 40.327251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046573, -0.107772, -0.993084,
		-0.019522, -0.993875, 0.108773,
		-0.998724, 0.024453, 0.044184,
		35.907139, 32.293114, 40.340508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360889, 31.634787, 40.005795>,  <36.606247, 32.275997, 40.309578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360889, 31.634787, 40.005795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063797, 31.902473, 40.014706>,  <35.885540, 32.063087, 40.020054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063797, 31.902473, 40.014706>,  <36.360889, 31.634787, 40.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063797, 31.902473, 40.014706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241992, -0.237249, -0.940826,
		-0.624332, -0.704172, 0.338158,
		-0.742731, 0.669219, 0.022281,
		35.840977, 32.103241, 40.021389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798847, 31.283894, 39.746445>,  <36.360889, 31.634787, 40.005795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798847, 31.283894, 39.746445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731102, 31.672253, 39.678711>,  <35.690456, 31.905268, 39.638069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731102, 31.672253, 39.678711>,  <35.798847, 31.283894, 39.746445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731102, 31.672253, 39.678711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027618, -0.167074, -0.985558,
		-0.985167, -0.171594, 0.001482,
		-0.169363, 0.970897, -0.169335,
		35.680294, 31.963522, 39.627911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405373, 31.323961, 39.230343>,  <35.798847, 31.283894, 39.746445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405373, 31.323961, 39.230343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501961, 31.711658, 39.211338>,  <35.559914, 31.944277, 39.199936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501961, 31.711658, 39.211338>,  <35.405373, 31.323961, 39.230343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501961, 31.711658, 39.211338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187425, -0.001458, -0.982278,
		-0.952136, 0.246100, 0.181308,
		0.241474, 0.969243, -0.047514,
		35.574402, 32.002430, 39.197083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929558, 31.615850, 38.789776>,  <35.405373, 31.323961, 39.230343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929558, 31.615850, 38.789776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220821, 31.889929, 38.796650>,  <35.395580, 32.054375, 38.800774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220821, 31.889929, 38.796650>,  <34.929558, 31.615850, 38.789776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220821, 31.889929, 38.796650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076161, 0.105797, -0.991467,
		-0.681168, 0.720633, 0.129222,
		0.728155, 0.685197, 0.017181,
		35.439266, 32.095490, 38.801804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619751, 32.285202, 38.455860>,  <34.929558, 31.615850, 38.789776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619751, 32.285202, 38.455860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013908, 32.224941, 38.424076>,  <35.250401, 32.188786, 38.405006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013908, 32.224941, 38.424076>,  <34.619751, 32.285202, 38.455860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013908, 32.224941, 38.424076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049534, 0.192881, -0.979971,
		0.162958, 0.969588, 0.182601,
		0.985389, -0.150649, -0.079459,
		35.309525, 32.179745, 38.400238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790707, 32.798809, 37.968033>,  <34.619751, 32.285202, 38.455860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790707, 32.798809, 37.968033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113064, 32.562115, 37.975937>,  <35.306477, 32.420097, 37.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113064, 32.562115, 37.975937>,  <34.790707, 32.798809, 37.968033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113064, 32.562115, 37.975937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069086, 0.060840, -0.995754,
		0.588019, 0.803835, 0.089911,
		0.805892, -0.591733, 0.019759,
		35.354832, 32.384594, 37.981865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373474, 33.085049, 37.681343>,  <34.790707, 32.798809, 37.968033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373474, 33.085049, 37.681343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467724, 32.698387, 37.641220>,  <35.524273, 32.466389, 37.617146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467724, 32.698387, 37.641220>,  <35.373474, 33.085049, 37.681343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467724, 32.698387, 37.641220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133987, 0.134540, -0.981808,
		0.962563, 0.217900, 0.161220,
		0.235626, -0.966653, -0.100308,
		35.538410, 32.408390, 37.611126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923130, 33.069294, 37.219784>,  <35.373474, 33.085049, 37.681343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923130, 33.069294, 37.219784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778255, 32.696735, 37.205208>,  <35.691330, 32.473202, 37.196461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778255, 32.696735, 37.205208>,  <35.923130, 33.069294, 37.219784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778255, 32.696735, 37.205208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238610, -0.054851, -0.969565,
		0.901046, -0.359862, 0.242106,
		-0.362189, -0.931392, -0.036443,
		35.669598, 32.417316, 37.194275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379539, 32.633980, 36.751179>,  <35.923130, 33.069294, 37.219784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379539, 32.633980, 36.751179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023800, 32.451248, 36.758778>,  <35.810356, 32.341610, 36.763336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023800, 32.451248, 36.758778>,  <36.379539, 32.633980, 36.751179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023800, 32.451248, 36.758778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099419, -0.233764, -0.967197,
		0.446289, -0.858288, 0.253316,
		-0.889349, -0.456834, 0.018996,
		35.756996, 32.314198, 36.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484879, 31.983433, 36.310978>,  <36.379539, 32.633980, 36.751179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484879, 31.983433, 36.310978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085022, 31.972736, 36.311520>,  <35.845108, 31.966318, 36.311844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085022, 31.972736, 36.311520>,  <36.484879, 31.983433, 36.310978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085022, 31.972736, 36.311520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005405, -0.250923, -0.967992,
		0.026226, -0.967638, 0.250978,
		-0.999642, -0.026743, 0.001350,
		35.785130, 31.964714, 36.311924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927620, 31.463125, 36.073956>,  <36.484879, 31.983433, 36.310978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927620, 31.463125, 36.073956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877228, 31.098963, 35.916328>,  <36.846992, 30.880465, 35.821754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877228, 31.098963, 35.916328>,  <36.927620, 31.463125, 36.073956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877228, 31.098963, 35.916328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944741, -0.231291, 0.232313,
		-0.302643, -0.343021, 0.889238,
		-0.125985, -0.910407, -0.394064,
		36.839432, 30.825840, 35.798111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502457, 31.744455, 36.379253>,  <36.927620, 31.463125, 36.073956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502457, 31.744455, 36.379253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871960, 31.827375, 36.250446>,  <38.093662, 31.877127, 36.173161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871960, 31.827375, 36.250446>,  <37.502457, 31.744455, 36.379253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871960, 31.827375, 36.250446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331152, -0.010001, 0.943524,
		0.192374, -0.978226, -0.077887,
		0.923759, 0.207302, -0.322018,
		38.149086, 31.889566, 36.153839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006268, 31.284307, 36.793350>,  <37.502457, 31.744455, 36.379253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006268, 31.284307, 36.793350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187794, 31.621815, 36.678734>,  <38.296711, 31.824320, 36.609966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187794, 31.621815, 36.678734>,  <38.006268, 31.284307, 36.793350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187794, 31.621815, 36.678734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376975, 0.109574, 0.919719,
		0.807427, -0.525404, -0.268353,
		0.453819, 0.843768, -0.286537,
		38.323940, 31.874945, 36.592773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770390, 31.181053, 36.896957>,  <38.006268, 31.284307, 36.793350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770390, 31.181053, 36.896957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707153, 31.575457, 36.875801>,  <38.669212, 31.812098, 36.863110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707153, 31.575457, 36.875801>,  <38.770390, 31.181053, 36.896957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707153, 31.575457, 36.875801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507105, 0.127033, 0.852471,
		0.847261, 0.107950, -0.520092,
		-0.158093, 0.986007, -0.052888,
		38.659725, 31.871258, 36.859936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477066, 31.559877, 36.910599>,  <38.770390, 31.181053, 36.896957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477066, 31.559877, 36.910599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170258, 31.779408, 37.043545>,  <38.986172, 31.911125, 37.123310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170258, 31.779408, 37.043545>,  <39.477066, 31.559877, 36.910599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170258, 31.779408, 37.043545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489411, 0.165478, 0.856209,
		0.414909, 0.819396, -0.395526,
		-0.767025, 0.548824, 0.332363,
		38.940151, 31.944056, 37.143253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709301, 31.951233, 37.584209>,  <39.477066, 31.559877, 36.910599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709301, 31.951233, 37.584209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326008, 32.060898, 37.616756>,  <39.096031, 32.126698, 37.636284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326008, 32.060898, 37.616756>,  <39.709301, 31.951233, 37.584209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326008, 32.060898, 37.616756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069334, -0.053303, 0.996168,
		0.277450, 0.960205, 0.032068,
		-0.958235, 0.274164, 0.081364,
		39.038536, 32.143147, 37.641167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654068, 32.473537, 38.102158>,  <39.709301, 31.951233, 37.584209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654068, 32.473537, 38.102158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286243, 32.317284, 38.085098>,  <39.065548, 32.223530, 38.074863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286243, 32.317284, 38.085098>,  <39.654068, 32.473537, 38.102158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286243, 32.317284, 38.085098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005024, -0.096847, 0.995287,
		-0.392924, 0.915437, 0.087094,
		-0.919557, -0.390635, -0.042652,
		39.010376, 32.200092, 38.072304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279453, 32.895302, 38.631634>,  <39.654068, 32.473537, 38.102158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279453, 32.895302, 38.631634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062077, 32.565571, 38.568199>,  <38.931648, 32.367733, 38.530140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062077, 32.565571, 38.568199>,  <39.279453, 32.895302, 38.631634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062077, 32.565571, 38.568199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211397, -0.048439, 0.976199,
		-0.812391, 0.564035, -0.147936,
		-0.543445, -0.824329, -0.158587,
		38.899044, 32.318272, 38.520622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685543, 33.062668, 38.932156>,  <39.279453, 32.895302, 38.631634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685543, 33.062668, 38.932156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707424, 32.664528, 38.900459>,  <38.720554, 32.425644, 38.881443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707424, 32.664528, 38.900459>,  <38.685543, 33.062668, 38.932156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707424, 32.664528, 38.900459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199772, -0.088666, 0.975822,
		-0.978314, -0.037549, -0.203694,
		0.054702, -0.995353, -0.079242,
		38.723835, 32.365921, 38.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015484, 32.716854, 39.176620>,  <38.685543, 33.062668, 38.932156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015484, 32.716854, 39.176620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320473, 32.460758, 39.213989>,  <38.503464, 32.307098, 39.236412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320473, 32.460758, 39.213989>,  <38.015484, 32.716854, 39.176620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320473, 32.460758, 39.213989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139710, -0.021931, 0.989949,
		-0.631760, -0.767859, -0.106170,
		0.762470, -0.640244, 0.093423,
		38.549213, 32.268684, 39.242016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816845, 32.213390, 39.598125>,  <38.015484, 32.716854, 39.176620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816845, 32.213390, 39.598125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216049, 32.197815, 39.617989>,  <38.455570, 32.188469, 39.629906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216049, 32.197815, 39.617989>,  <37.816845, 32.213390, 39.598125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216049, 32.197815, 39.617989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050510, -0.021314, 0.998496,
		-0.037834, -0.999014, -0.023239,
		0.998007, -0.038951, 0.049653,
		38.515450, 32.186134, 39.632885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960747, 31.713747, 40.025055>,  <37.816845, 32.213390, 39.598125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960747, 31.713747, 40.025055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303490, 31.918634, 40.048466>,  <38.509136, 32.041565, 40.062511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303490, 31.918634, 40.048466>,  <37.960747, 31.713747, 40.025055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303490, 31.918634, 40.048466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032771, -0.059178, 0.997709,
		0.514507, -0.856815, -0.033922,
		0.856860, 0.512217, 0.058526,
		38.560547, 32.072300, 40.066025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327068, 31.435699, 40.582073>,  <37.960747, 31.713747, 40.025055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327068, 31.435699, 40.582073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518780, 31.781063, 40.519062>,  <38.633808, 31.988281, 40.481255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518780, 31.781063, 40.519062>,  <38.327068, 31.435699, 40.582073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518780, 31.781063, 40.519062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036639, 0.159645, 0.986494,
		0.876898, -0.478577, 0.044880,
		0.479278, 0.863411, -0.157527,
		38.662563, 32.040085, 40.471806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951180, 31.419846, 41.135124>,  <38.327068, 31.435699, 40.582073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951180, 31.419846, 41.135124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883797, 31.789883, 40.998993>,  <38.843365, 32.011906, 40.917313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883797, 31.789883, 40.998993>,  <38.951180, 31.419846, 41.135124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883797, 31.789883, 40.998993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109341, 0.360672, 0.926262,
		0.979625, 0.118825, -0.161909,
		-0.168459, 0.925093, -0.340331,
		38.833260, 32.067410, 40.896893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562347, 31.782829, 41.313225>,  <38.951180, 31.419846, 41.135124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562347, 31.782829, 41.313225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236065, 32.011387, 41.277161>,  <39.040295, 32.148521, 41.255524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236065, 32.011387, 41.277161>,  <39.562347, 31.782829, 41.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236065, 32.011387, 41.277161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085077, 0.272668, 0.958339,
		0.572173, 0.774055, -0.271030,
		-0.815708, 0.571394, -0.090159,
		38.991352, 32.182804, 41.250114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857178, 32.279907, 41.707844>,  <39.562347, 31.782829, 41.313225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857178, 32.279907, 41.707844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467705, 32.356636, 41.658623>,  <39.234020, 32.402672, 41.629089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467705, 32.356636, 41.658623>,  <39.857178, 32.279907, 41.707844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467705, 32.356636, 41.658623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034971, 0.407791, 0.912405,
		0.225199, 0.892699, -0.390352,
		-0.973685, 0.191822, -0.123052,
		39.175598, 32.414181, 41.621708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755859, 32.901741, 41.980965>,  <39.857178, 32.279907, 41.707844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755859, 32.901741, 41.980965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384155, 32.755154, 41.999645>,  <39.161133, 32.667202, 42.010853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384155, 32.755154, 41.999645>,  <39.755859, 32.901741, 41.980965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384155, 32.755154, 41.999645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105062, 0.383339, 0.917613,
		-0.354173, 0.847794, -0.394723,
		-0.929259, -0.366464, 0.046698,
		39.105377, 32.645214, 42.013653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461521, 33.378376, 42.249054>,  <39.755859, 32.901741, 41.980965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461521, 33.378376, 42.249054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230701, 33.063797, 42.337158>,  <39.092209, 32.875050, 42.390022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230701, 33.063797, 42.337158>,  <39.461521, 33.378376, 42.249054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230701, 33.063797, 42.337158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187782, 0.390229, 0.901365,
		-0.794828, 0.478772, -0.372862,
		-0.577049, -0.786447, 0.220260,
		39.057587, 32.827862, 42.403236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169884, 33.647198, 42.884693>,  <39.461521, 33.378376, 42.249054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169884, 33.647198, 42.884693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053196, 33.264599, 42.883091>,  <38.983185, 33.035038, 42.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053196, 33.264599, 42.883091>,  <39.169884, 33.647198, 42.884693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053196, 33.264599, 42.883091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259148, 0.075006, 0.962921,
		-0.920731, 0.281936, -0.269754,
		-0.291715, -0.956497, -0.004003,
		38.965683, 32.977650, 42.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446472, 33.622227, 43.200687>,  <39.169884, 33.647198, 42.884693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446472, 33.622227, 43.200687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605217, 33.255798, 43.223736>,  <38.700462, 33.035942, 43.237564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605217, 33.255798, 43.223736>,  <38.446472, 33.622227, 43.200687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605217, 33.255798, 43.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139560, 0.001822, 0.990212,
		-0.907206, -0.401020, -0.127123,
		0.396863, -0.916067, 0.057619,
		38.724277, 32.980980, 43.241020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947071, 33.347984, 43.497921>,  <38.446472, 33.622227, 43.200687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947071, 33.347984, 43.497921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284077, 33.146080, 43.573162>,  <38.486282, 33.024937, 43.618305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284077, 33.146080, 43.573162>,  <37.947071, 33.347984, 43.497921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284077, 33.146080, 43.573162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110048, 0.180548, 0.977390,
		-0.527310, -0.844167, 0.096567,
		0.842516, -0.504761, 0.188104,
		38.536831, 32.994652, 43.629593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757271, 32.765190, 43.814934>,  <37.947071, 33.347984, 43.497921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757271, 32.765190, 43.814934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139801, 32.850571, 43.894810>,  <38.369320, 32.901798, 43.942734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139801, 32.850571, 43.894810>,  <37.757271, 32.765190, 43.814934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139801, 32.850571, 43.894810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227437, 0.114258, 0.967067,
		0.183611, -0.970248, 0.157816,
		0.956326, 0.213457, 0.199691,
		38.426701, 32.914608, 43.954716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905975, 32.411617, 44.442814>,  <37.757271, 32.765190, 43.814934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905975, 32.411617, 44.442814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182533, 32.699905, 44.422680>,  <38.348469, 32.872879, 44.410599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182533, 32.699905, 44.422680>,  <37.905975, 32.411617, 44.442814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182533, 32.699905, 44.422680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145906, 0.207524, 0.967287,
		0.707590, -0.661434, 0.248639,
		0.691395, 0.720721, -0.050335,
		38.389954, 32.916122, 44.407578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135555, 32.408970, 45.168461>,  <37.905975, 32.411617, 44.442814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135555, 32.408970, 45.168461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307693, 32.736008, 45.015446>,  <38.410976, 32.932232, 44.923637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307693, 32.736008, 45.015446>,  <38.135555, 32.408970, 45.168461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307693, 32.736008, 45.015446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187700, 0.495576, 0.848041,
		0.882933, -0.293149, 0.366732,
		0.430346, 0.817599, -0.382536,
		38.436798, 32.981289, 44.900684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609631, 32.673271, 45.644726>,  <38.135555, 32.408970, 45.168461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609631, 32.673271, 45.644726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521252, 32.986252, 45.411850>,  <38.468224, 33.174042, 45.272125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521252, 32.986252, 45.411850>,  <38.609631, 32.673271, 45.644726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521252, 32.986252, 45.411850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173889, 0.555774, 0.812944,
		0.959659, 0.280854, 0.013263,
		-0.220947, 0.782456, -0.582190,
		38.454967, 33.220989, 45.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879448, 33.197300, 46.029083>,  <38.609631, 32.673271, 45.644726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879448, 33.197300, 46.029083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644463, 33.392464, 45.770832>,  <38.503471, 33.509563, 45.615883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644463, 33.392464, 45.770832>,  <38.879448, 33.197300, 46.029083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644463, 33.392464, 45.770832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213983, 0.675752, 0.705386,
		0.780448, 0.552540, -0.292574,
		-0.587462, 0.487912, -0.645624,
		38.468224, 33.538837, 45.577145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137859, 33.793545, 45.922222>,  <38.879448, 33.197300, 46.029083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137859, 33.793545, 45.922222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751236, 33.845905, 45.834011>,  <38.519260, 33.877323, 45.781086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751236, 33.845905, 45.834011>,  <39.137859, 33.793545, 45.922222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751236, 33.845905, 45.834011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064171, 0.709107, 0.702175,
		0.248293, 0.692843, -0.676993,
		-0.966557, 0.130902, -0.220526,
		38.461269, 33.885178, 45.767853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149498, 34.477207, 45.863499>,  <39.137859, 33.793545, 45.922222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149498, 34.477207, 45.863499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762737, 34.380360, 45.895676>,  <38.530682, 34.322250, 45.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762737, 34.380360, 45.895676>,  <39.149498, 34.477207, 45.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762737, 34.380360, 45.895676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164921, 0.833708, 0.527002,
		-0.194664, 0.496295, -0.846048,
		-0.966906, -0.242119, 0.080443,
		38.472664, 34.307724, 45.919807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815369, 35.161114, 45.818230>,  <39.149498, 34.477207, 45.863499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815369, 35.161114, 45.818230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571423, 34.908104, 46.009220>,  <38.425056, 34.756298, 46.123814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571423, 34.908104, 46.009220>,  <38.815369, 35.161114, 45.818230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571423, 34.908104, 46.009220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138512, 0.678288, 0.721623,
		-0.780309, 0.373955, -0.501274,
		-0.609863, -0.632521, 0.477477,
		38.388462, 34.718349, 46.152462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178509, 35.515900, 45.924179>,  <38.815369, 35.161114, 45.818230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178509, 35.515900, 45.924179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189713, 35.227753, 46.201389>,  <38.196434, 35.054867, 46.367718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189713, 35.227753, 46.201389>,  <38.178509, 35.515900, 45.924179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189713, 35.227753, 46.201389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196552, 0.675796, 0.710399,
		-0.980093, -0.156116, -0.122659,
		0.028012, -0.720366, 0.693028,
		38.198116, 35.011642, 46.409298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553150, 35.577389, 46.299942>,  <38.178509, 35.515900, 45.924179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553150, 35.577389, 46.299942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763824, 35.366879, 46.566967>,  <37.890228, 35.240574, 46.727180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763824, 35.366879, 46.566967>,  <37.553150, 35.577389, 46.299942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763824, 35.366879, 46.566967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170285, 0.704072, 0.689409,
		-0.832832, -0.476776, 0.281205,
		0.526682, -0.526277, 0.667561,
		37.921829, 35.208996, 46.767235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186481, 35.523106, 47.029346>,  <37.553150, 35.577389, 46.299942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186481, 35.523106, 47.029346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579556, 35.479233, 47.089077>,  <37.815399, 35.452911, 47.124916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579556, 35.479233, 47.089077>,  <37.186481, 35.523106, 47.029346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579556, 35.479233, 47.089077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059832, 0.574912, 0.816024,
		-0.175350, -0.810830, 0.558396,
		0.982686, -0.109680, 0.149324,
		37.874363, 35.446327, 47.133873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185650, 35.614433, 47.743252>,  <37.186481, 35.523106, 47.029346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185650, 35.614433, 47.743252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574860, 35.608284, 47.651180>,  <37.808388, 35.604595, 47.595936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574860, 35.608284, 47.651180>,  <37.185650, 35.614433, 47.743252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574860, 35.608284, 47.651180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183738, 0.654978, 0.732969,
		0.139497, -0.755492, 0.640135,
		0.973027, -0.015370, -0.230180,
		37.866768, 35.603672, 47.582127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451744, 35.575016, 48.331562>,  <37.185650, 35.614433, 47.743252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451744, 35.575016, 48.331562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753345, 35.715607, 48.109592>,  <37.934307, 35.799961, 47.976410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753345, 35.715607, 48.109592>,  <37.451744, 35.575016, 48.331562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753345, 35.715607, 48.109592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261687, 0.614141, 0.744547,
		0.602490, -0.706610, 0.371090,
		0.754006, 0.351473, -0.554925,
		37.979546, 35.821049, 47.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124287, 35.531643, 48.743572>,  <37.451744, 35.575016, 48.331562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124287, 35.531643, 48.743572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170567, 35.802692, 48.453075>,  <38.198334, 35.965324, 48.278778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170567, 35.802692, 48.453075>,  <38.124287, 35.531643, 48.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170567, 35.802692, 48.453075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131752, 0.714226, 0.687402,
		0.984507, -0.175218, -0.006642,
		0.115702, 0.677628, -0.726246,
		38.205276, 36.005981, 48.235203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747444, 35.932465, 48.900097>,  <38.124287, 35.531643, 48.743572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747444, 35.932465, 48.900097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536396, 36.173340, 48.660435>,  <38.409767, 36.317863, 48.516636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536396, 36.173340, 48.660435>,  <38.747444, 35.932465, 48.900097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536396, 36.173340, 48.660435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122592, 0.751917, 0.647759,
		0.840588, 0.268318, -0.470549,
		-0.527620, 0.602184, -0.599159,
		38.378109, 36.353996, 48.480686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074722, 36.627495, 49.018089>,  <38.747444, 35.932465, 48.900097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074722, 36.627495, 49.018089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713036, 36.678852, 48.855160>,  <38.496025, 36.709667, 48.757401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713036, 36.678852, 48.855160>,  <39.074722, 36.627495, 49.018089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713036, 36.678852, 48.855160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276352, 0.551266, 0.787233,
		0.325619, 0.824392, -0.462981,
		-0.904213, 0.128392, -0.407325,
		38.441772, 36.717369, 48.732964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898518, 37.332161, 49.130974>,  <39.074722, 36.627495, 49.018089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898518, 37.332161, 49.130974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535507, 37.166389, 49.103695>,  <38.317703, 37.066925, 49.087330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535507, 37.166389, 49.103695>,  <38.898518, 37.332161, 49.130974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535507, 37.166389, 49.103695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279786, 0.475435, 0.834075,
		-0.313243, 0.776022, -0.547420,
		-0.907523, -0.414428, -0.068193,
		38.263248, 37.042061, 49.083237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425659, 37.883198, 49.090824>,  <38.898518, 37.332161, 49.130974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425659, 37.883198, 49.090824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259090, 37.547401, 49.230453>,  <38.159149, 37.345924, 49.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259090, 37.547401, 49.230453>,  <38.425659, 37.883198, 49.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259090, 37.547401, 49.230453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215549, 0.464158, 0.859125,
		-0.883248, 0.282521, -0.374238,
		-0.416427, -0.839488, 0.349069,
		38.134163, 37.295555, 49.335175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101185, 38.462288, 49.076607>,  <38.425659, 37.883198, 49.090824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101185, 38.462288, 49.076607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397896, 38.726162, 49.124912>,  <38.575924, 38.884487, 49.153896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397896, 38.726162, 49.124912>,  <38.101185, 38.462288, 49.076607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397896, 38.726162, 49.124912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256219, -0.112356, -0.960066,
		-0.619769, 0.743100, -0.252367,
		0.741780, 0.659681, 0.120762,
		38.620430, 38.924065, 49.161140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013805, 39.032394, 48.536289>,  <38.101185, 38.462288, 49.076607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013805, 39.032394, 48.536289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396023, 39.024586, 48.653973>,  <38.625351, 39.019901, 48.724583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396023, 39.024586, 48.653973>,  <38.013805, 39.032394, 48.536289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396023, 39.024586, 48.653973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288471, -0.144652, -0.946499,
		0.061036, 0.989290, -0.132589,
		0.955541, -0.019523, 0.294211,
		38.682686, 39.018730, 48.742237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378468, 39.499424, 48.111347>,  <38.013805, 39.032394, 48.536289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378468, 39.499424, 48.111347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648090, 39.242313, 48.256943>,  <38.809864, 39.088047, 48.344299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648090, 39.242313, 48.256943>,  <38.378468, 39.499424, 48.111347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648090, 39.242313, 48.256943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292877, -0.219810, -0.930541,
		0.678141, 0.733837, 0.040092,
		0.674053, -0.642780, 0.363986,
		38.850307, 39.049480, 48.366138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913876, 39.589149, 47.647865>,  <38.378468, 39.499424, 48.111347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913876, 39.589149, 47.647865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008106, 39.247581, 47.833477>,  <39.064644, 39.042641, 47.944843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008106, 39.247581, 47.833477>,  <38.913876, 39.589149, 47.647865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008106, 39.247581, 47.833477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392137, -0.353356, -0.849334,
		0.889232, 0.382044, 0.251612,
		0.235575, -0.853921, 0.464029,
		39.078777, 38.991405, 47.972687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583145, 39.497223, 47.575920>,  <38.913876, 39.589149, 47.647865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583145, 39.497223, 47.575920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417412, 39.136387, 47.624180>,  <39.317970, 38.919884, 47.653137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417412, 39.136387, 47.624180>,  <39.583145, 39.497223, 47.575920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417412, 39.136387, 47.624180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525229, -0.345262, -0.777772,
		0.743278, -0.258889, 0.616859,
		-0.414334, -0.902092, 0.120650,
		39.293110, 38.865761, 47.660374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066273, 39.082195, 47.347183>,  <39.583145, 39.497223, 47.575920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066273, 39.082195, 47.347183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752220, 38.834480, 47.344044>,  <39.563789, 38.685852, 47.342159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752220, 38.834480, 47.344044>,  <40.066273, 39.082195, 47.347183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752220, 38.834480, 47.344044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285064, -0.350094, -0.892285,
		0.549829, -0.702796, 0.451404,
		-0.785128, -0.619284, -0.007850,
		39.516682, 38.648697, 47.341690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262093, 38.469528, 47.169910>,  <40.066273, 39.082195, 47.347183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262093, 38.469528, 47.169910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871693, 38.413364, 47.103336>,  <39.637451, 38.379665, 47.063393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871693, 38.413364, 47.103336>,  <40.262093, 38.469528, 47.169910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871693, 38.413364, 47.103336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214152, -0.480584, -0.850398,
		0.039420, -0.865635, 0.499122,
		-0.976005, -0.140411, -0.166433,
		39.578892, 38.371243, 47.053406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177555, 37.744682, 46.912022>,  <40.262093, 38.469528, 47.169910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177555, 37.744682, 46.912022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845646, 37.933506, 46.792938>,  <39.646500, 38.046803, 46.721489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845646, 37.933506, 46.792938>,  <40.177555, 37.744682, 46.912022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845646, 37.933506, 46.792938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013379, -0.516448, -0.856214,
		-0.557938, -0.714448, 0.422220,
		-0.829775, 0.472065, -0.297705,
		39.596714, 38.075127, 46.703629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665234, 37.232635, 46.577206>,  <40.177555, 37.744682, 46.912022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665234, 37.232635, 46.577206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562393, 37.596012, 46.445374>,  <39.500690, 37.814037, 46.366272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562393, 37.596012, 46.445374>,  <39.665234, 37.232635, 46.577206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562393, 37.596012, 46.445374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058244, -0.325862, -0.943622,
		-0.964628, -0.261801, 0.030868,
		-0.257099, 0.908446, -0.329584,
		39.485264, 37.868546, 46.346497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165379, 37.084209, 46.184917>,  <39.665234, 37.232635, 46.577206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165379, 37.084209, 46.184917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250015, 37.449852, 46.046562>,  <39.300797, 37.669239, 45.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250015, 37.449852, 46.046562>,  <39.165379, 37.084209, 46.184917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250015, 37.449852, 46.046562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006194, -0.355147, -0.934790,
		-0.977337, 0.195656, -0.080810,
		0.211596, 0.914106, -0.345886,
		39.313496, 37.724083, 45.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672462, 37.339134, 45.644302>,  <39.165379, 37.084209, 46.184917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672462, 37.339134, 45.644302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011101, 37.540176, 45.574261>,  <39.214283, 37.660801, 45.532238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011101, 37.540176, 45.574261>,  <38.672462, 37.339134, 45.644302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011101, 37.540176, 45.574261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033630, -0.277817, -0.960045,
		-0.531174, 0.818658, -0.218296,
		0.846595, 0.502609, -0.175100,
		39.265079, 37.690960, 45.521732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521210, 37.699261, 45.057045>,  <38.672462, 37.339134, 45.644302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521210, 37.699261, 45.057045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918468, 37.689171, 45.102699>,  <39.156822, 37.683117, 45.130093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918468, 37.689171, 45.102699>,  <38.521210, 37.699261, 45.057045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918468, 37.689171, 45.102699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103276, -0.267971, -0.957876,
		0.054744, 0.963097, -0.263530,
		0.993145, -0.025222, 0.114134,
		39.216412, 37.681602, 45.136940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791576, 38.161102, 44.539505>,  <38.521210, 37.699261, 45.057045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791576, 38.161102, 44.539505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066727, 37.893372, 44.651814>,  <39.231815, 37.732735, 44.719200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066727, 37.893372, 44.651814>,  <38.791576, 38.161102, 44.539505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066727, 37.893372, 44.651814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061273, -0.331899, -0.941323,
		0.723238, 0.664716, -0.187294,
		0.687875, -0.669325, 0.280771,
		39.273090, 37.692574, 44.736046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380482, 38.208263, 44.061169>,  <38.791576, 38.161102, 44.539505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380482, 38.208263, 44.061169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403187, 37.843910, 44.224663>,  <39.416809, 37.625298, 44.322762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403187, 37.843910, 44.224663>,  <39.380482, 38.208263, 44.061169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403187, 37.843910, 44.224663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043695, -0.406739, -0.912499,
		0.997431, 0.069652, 0.016715,
		0.056759, -0.910885, 0.408738,
		39.420216, 37.570644, 44.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903454, 37.827911, 43.725819>,  <39.380482, 38.208263, 44.061169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903454, 37.827911, 43.725819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654224, 37.562099, 43.890831>,  <39.504688, 37.402611, 43.989838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654224, 37.562099, 43.890831>,  <39.903454, 37.827911, 43.725819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654224, 37.562099, 43.890831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135352, -0.611068, -0.779920,
		0.770366, -0.430108, 0.470684,
		-0.623070, -0.664532, 0.412530,
		39.467304, 37.362740, 44.014591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169621, 37.166519, 43.300934>,  <39.903454, 37.827911, 43.725819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169621, 37.166519, 43.300934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860413, 37.036388, 43.518780>,  <39.674889, 36.958309, 43.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860413, 37.036388, 43.518780>,  <40.169621, 37.166519, 43.300934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860413, 37.036388, 43.518780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006712, -0.862639, -0.505775,
		0.634349, -0.387318, 0.669019,
		-0.773018, -0.325328, 0.544614,
		39.628506, 36.938789, 43.682163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372707, 36.564014, 43.607372>,  <40.169621, 37.166519, 43.300934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372707, 36.564014, 43.607372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976940, 36.556126, 43.549885>,  <39.739479, 36.551392, 43.515392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976940, 36.556126, 43.549885>,  <40.372707, 36.564014, 43.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976940, 36.556126, 43.549885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109249, -0.753104, -0.648767,
		-0.095439, -0.657605, 0.747293,
		-0.989422, -0.019724, -0.143718,
		39.680115, 36.550209, 43.506771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215721, 35.861679, 43.569042>,  <40.372707, 36.564014, 43.607372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215721, 35.861679, 43.569042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928665, 36.063625, 43.377167>,  <39.756432, 36.184795, 43.262043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928665, 36.063625, 43.377167>,  <40.215721, 35.861679, 43.569042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928665, 36.063625, 43.377167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180734, -0.530179, -0.828399,
		-0.672552, -0.681189, 0.289232,
		-0.717641, 0.504868, -0.479687,
		39.713371, 36.215084, 43.233261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802559, 35.338795, 43.278984>,  <40.215721, 35.861679, 43.569042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802559, 35.338795, 43.278984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708641, 35.668346, 43.072647>,  <39.652290, 35.866077, 42.948845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708641, 35.668346, 43.072647>,  <39.802559, 35.338795, 43.278984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708641, 35.668346, 43.072647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030669, -0.536692, -0.843221,
		-0.971562, -0.182160, 0.151278,
		-0.234791, 0.823881, -0.515843,
		39.638203, 35.915512, 42.917892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200287, 35.092758, 42.848614>,  <39.802559, 35.338795, 43.278984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200287, 35.092758, 42.848614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316257, 35.435173, 42.677437>,  <39.385841, 35.640621, 42.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316257, 35.435173, 42.677437>,  <39.200287, 35.092758, 42.848614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316257, 35.435173, 42.677437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062048, -0.429399, -0.900981,
		-0.955035, 0.287773, -0.071379,
		0.289928, 0.856040, -0.427946,
		39.403236, 35.691986, 42.549053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803177, 35.163639, 42.294918>,  <39.200287, 35.092758, 42.848614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803177, 35.163639, 42.294918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106674, 35.404442, 42.195404>,  <39.288773, 35.548923, 42.135696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106674, 35.404442, 42.195404>,  <38.803177, 35.163639, 42.294918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106674, 35.404442, 42.195404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047363, -0.431910, -0.900673,
		-0.649663, 0.671598, -0.356222,
		0.758746, 0.602005, -0.248787,
		39.334297, 35.585045, 42.120770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680988, 35.431393, 41.578220>,  <38.803177, 35.163639, 42.294918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680988, 35.431393, 41.578220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074310, 35.482857, 41.629692>,  <39.310303, 35.513737, 41.660576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074310, 35.482857, 41.629692>,  <38.680988, 35.431393, 41.578220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074310, 35.482857, 41.629692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168027, -0.370503, -0.913507,
		-0.069858, 0.919877, -0.385936,
		0.983304, 0.128663, 0.128682,
		39.369301, 35.521454, 41.668297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957989, 35.644550, 40.945576>,  <38.680988, 35.431393, 41.578220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957989, 35.644550, 40.945576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278030, 35.489216, 41.128456>,  <39.470055, 35.396015, 41.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278030, 35.489216, 41.128456>,  <38.957989, 35.644550, 40.945576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278030, 35.489216, 41.128456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296543, -0.406464, -0.864204,
		0.521438, 0.827031, -0.210053,
		0.800103, -0.388339, 0.457196,
		39.518063, 35.372715, 41.265614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496563, 35.721642, 40.438297>,  <38.957989, 35.644550, 40.945576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496563, 35.721642, 40.438297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634266, 35.439762, 40.686451>,  <39.716888, 35.270634, 40.835342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634266, 35.439762, 40.686451>,  <39.496563, 35.721642, 40.438297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634266, 35.439762, 40.686451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404211, -0.485157, -0.775394,
		0.847408, 0.517703, 0.117830,
		0.344258, -0.704703, 0.620387,
		39.737545, 35.228352, 40.872566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012100, 35.505127, 40.113098>,  <39.496563, 35.721642, 40.438297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012100, 35.505127, 40.113098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999573, 35.194683, 40.365025>,  <39.992058, 35.008415, 40.516178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999573, 35.194683, 40.365025>,  <40.012100, 35.505127, 40.113098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999573, 35.194683, 40.365025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469301, -0.567763, -0.676315,
		0.882483, 0.274393, 0.382011,
		-0.031316, -0.776114, 0.629814,
		39.990177, 34.961849, 40.553970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666512, 35.254269, 40.155823>,  <40.012100, 35.505127, 40.113098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666512, 35.254269, 40.155823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433441, 34.946953, 40.261822>,  <40.293598, 34.762562, 40.325420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433441, 34.946953, 40.261822>,  <40.666512, 35.254269, 40.155823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433441, 34.946953, 40.261822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549403, -0.612645, -0.568174,
		0.598874, -0.185467, 0.779071,
		-0.582672, -0.768289, 0.265001,
		40.258640, 34.716465, 40.341324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063988, 34.668537, 40.243660>,  <40.666512, 35.254269, 40.155823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063988, 34.668537, 40.243660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706161, 34.501179, 40.180790>,  <40.491467, 34.400764, 40.143070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706161, 34.501179, 40.180790>,  <41.063988, 34.668537, 40.243660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706161, 34.501179, 40.180790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415431, -0.648693, -0.637663,
		0.164838, -0.635725, 0.754111,
		-0.894564, -0.418392, -0.157171,
		40.437794, 34.375660, 40.133640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990761, 34.020767, 40.369843>,  <41.063988, 34.668537, 40.243660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990761, 34.020767, 40.369843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711357, 34.050575, 40.085155>,  <40.543716, 34.068459, 39.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711357, 34.050575, 40.085155>,  <40.990761, 34.020767, 40.369843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711357, 34.050575, 40.085155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569096, -0.545119, -0.615609,
		-0.433841, -0.835041, 0.338362,
		-0.698506, 0.074516, -0.711714,
		40.501804, 34.072929, 39.871643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020210, 33.423512, 40.062370>,  <40.990761, 34.020767, 40.369843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020210, 33.423512, 40.062370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804058, 33.620308, 39.789333>,  <40.674366, 33.738384, 39.625511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804058, 33.620308, 39.789333>,  <41.020210, 33.423512, 40.062370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804058, 33.620308, 39.789333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384074, -0.577566, -0.720351,
		-0.748649, -0.651430, 0.123144,
		-0.540382, 0.491993, -0.682591,
		40.641945, 33.767906, 39.584557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919914, 32.882767, 39.556164>,  <41.020210, 33.423512, 40.062370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919914, 32.882767, 39.556164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851040, 33.224377, 39.359795>,  <40.809715, 33.429340, 39.241974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851040, 33.224377, 39.359795>,  <40.919914, 32.882767, 39.556164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851040, 33.224377, 39.359795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263744, -0.440198, -0.858292,
		-0.949100, -0.277263, -0.149447,
		-0.172187, 0.854020, -0.490919,
		40.799385, 33.480583, 39.212521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629265, 32.679543, 38.938511>,  <40.919914, 32.882767, 39.556164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629265, 32.679543, 38.938511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720867, 33.057678, 38.845657>,  <40.775829, 33.284561, 38.789944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720867, 33.057678, 38.845657>,  <40.629265, 32.679543, 38.938511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720867, 33.057678, 38.845657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242034, -0.286284, -0.927071,
		-0.942854, 0.156124, -0.294367,
		0.229011, 0.945339, -0.232137,
		40.789570, 33.341282, 38.776016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373299, 32.809425, 38.299732>,  <40.629265, 32.679543, 38.938511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373299, 32.809425, 38.299732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685070, 33.056870, 38.339355>,  <40.872135, 33.205334, 38.363129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685070, 33.056870, 38.339355>,  <40.373299, 32.809425, 38.299732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685070, 33.056870, 38.339355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266413, -0.184181, -0.946098,
		-0.567019, 0.763808, -0.308362,
		0.779431, 0.618607, 0.099054,
		40.918900, 33.242451, 38.369072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203712, 33.294586, 37.782845>,  <40.373299, 32.809425, 38.299732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203712, 33.294586, 37.782845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595066, 33.308334, 37.864403>,  <40.829880, 33.316586, 37.913338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595066, 33.308334, 37.864403>,  <40.203712, 33.294586, 37.782845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595066, 33.308334, 37.864403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205432, -0.049351, -0.977426,
		-0.023534, 0.998190, -0.055345,
		0.978388, 0.034372, 0.203898,
		40.888584, 33.318645, 37.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339470, 33.770325, 37.405487>,  <40.203712, 33.294586, 37.782845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339470, 33.770325, 37.405487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698402, 33.609966, 37.479324>,  <40.913761, 33.513752, 37.523628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698402, 33.609966, 37.479324>,  <40.339470, 33.770325, 37.405487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698402, 33.609966, 37.479324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320271, 0.303681, -0.897332,
		0.303681, 0.864325, 0.400899,
		0.897332, -0.400899, 0.184596,
		40.967602, 33.489697, 37.534702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790245, 34.280869, 37.189079>,  <40.339470, 33.770325, 37.405487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790245, 34.280869, 37.189079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031128, 33.961811, 37.175701>,  <41.175655, 33.770378, 37.167675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031128, 33.961811, 37.175701>,  <40.790245, 34.280869, 37.189079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031128, 33.961811, 37.175701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417572, 0.350411, -0.838359,
		0.680430, 0.490897, 0.544091,
		0.602203, -0.797642, -0.033445,
		41.211788, 33.722519, 37.165668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524109, 34.450096, 37.125370>,  <40.790245, 34.280869, 37.189079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524109, 34.450096, 37.125370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525337, 34.079449, 36.974972>,  <41.526073, 33.857059, 36.884731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525337, 34.079449, 36.974972>,  <41.524109, 34.450096, 37.125370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525337, 34.079449, 36.974972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414328, 0.343387, -0.842863,
		0.910123, -0.153195, 0.384978,
		0.003074, -0.926616, -0.375997,
		41.526260, 33.801464, 36.862171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204273, 34.404182, 36.853294>,  <41.524109, 34.450096, 37.125370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204273, 34.404182, 36.853294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024052, 34.088474, 36.686413>,  <41.915920, 33.899052, 36.586285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024052, 34.088474, 36.686413>,  <42.204273, 34.404182, 36.853294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024052, 34.088474, 36.686413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629207, 0.050786, -0.775577,
		0.633324, -0.611948, 0.473730,
		-0.450554, -0.789266, -0.417207,
		41.888885, 33.851696, 36.561253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773857, 34.194328, 36.493214>,  <42.204273, 34.404182, 36.853294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773857, 34.194328, 36.493214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464725, 33.989796, 36.342869>,  <42.279247, 33.867077, 36.252663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464725, 33.989796, 36.342869>,  <42.773857, 34.194328, 36.493214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464725, 33.989796, 36.342869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459052, -0.041488, -0.887441,
		0.438185, -0.858380, 0.266792,
		-0.772830, -0.511334, -0.375861,
		42.232876, 33.836395, 36.230110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030750, 33.601509, 36.120232>,  <42.773857, 34.194328, 36.493214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030750, 33.601509, 36.120232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667736, 33.667809, 35.965881>,  <42.449928, 33.707588, 35.873272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667736, 33.667809, 35.965881>,  <43.030750, 33.601509, 36.120232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667736, 33.667809, 35.965881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370450, -0.116905, -0.921466,
		-0.197844, -0.979214, 0.044694,
		-0.907538, 0.165749, -0.385879,
		42.395473, 33.717533, 35.850117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952599, 33.069611, 35.568329>,  <43.030750, 33.601509, 36.120232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952599, 33.069611, 35.568329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676151, 33.342518, 35.472942>,  <42.510281, 33.506260, 35.415710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676151, 33.342518, 35.472942>,  <42.952599, 33.069611, 35.568329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676151, 33.342518, 35.472942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323127, -0.003449, -0.946350,
		-0.646483, -0.731097, -0.218075,
		-0.691121, 0.682265, -0.238467,
		42.468815, 33.547195, 35.401402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519184, 32.923550, 34.919422>,  <42.952599, 33.069611, 35.568329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519184, 32.923550, 34.919422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566105, 33.316193, 34.979664>,  <42.594257, 33.551781, 35.015808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566105, 33.316193, 34.979664>,  <42.519184, 32.923550, 34.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566105, 33.316193, 34.979664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248314, 0.117848, -0.961484,
		-0.961551, 0.150181, -0.229923,
		0.117301, 0.981610, 0.150609,
		42.601295, 33.610676, 35.024845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036316, 33.433109, 34.387455>,  <42.519184, 32.923550, 34.919422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036316, 33.433109, 34.387455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393497, 33.571671, 34.502441>,  <42.607807, 33.654808, 34.571434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393497, 33.571671, 34.502441>,  <42.036316, 33.433109, 34.387455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393497, 33.571671, 34.502441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315929, -0.027383, -0.948388,
		-0.320656, 0.937685, -0.133892,
		0.892955, 0.346406, 0.287462,
		42.661385, 33.675594, 34.588680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295521, 34.065018, 34.069725>,  <42.036316, 33.433109, 34.387455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295521, 34.065018, 34.069725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581200, 33.795471, 34.145432>,  <42.752609, 33.633743, 34.190857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581200, 33.795471, 34.145432>,  <42.295521, 34.065018, 34.069725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581200, 33.795471, 34.145432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237881, -0.020629, -0.971075,
		0.658279, 0.738565, 0.145567,
		0.714199, -0.673866, 0.189270,
		42.795460, 33.593311, 34.202213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943264, 34.354034, 33.927418>,  <42.295521, 34.065018, 34.069725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943264, 34.354034, 33.927418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856697, 33.968563, 33.864822>,  <42.804756, 33.737282, 33.827267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856697, 33.968563, 33.864822>,  <42.943264, 34.354034, 33.927418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856697, 33.968563, 33.864822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065452, 0.145601, -0.987176,
		0.974104, -0.223888, 0.031563,
		-0.216421, -0.963678, -0.156484,
		42.791771, 33.679459, 33.817879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378860, 34.104183, 33.332268>,  <42.943264, 34.354034, 33.927418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378860, 34.104183, 33.332268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044586, 33.889820, 33.380325>,  <42.844021, 33.761204, 33.409161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044586, 33.889820, 33.380325>,  <43.378860, 34.104183, 33.332268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044586, 33.889820, 33.380325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149157, 0.010922, -0.988753,
		0.528568, -0.844206, -0.089062,
		-0.835684, -0.535908, 0.120146,
		42.793880, 33.729050, 33.416370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684708, 34.662777, 33.755161>,  <43.378860, 34.104183, 33.332268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684708, 34.662777, 33.755161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991230, 34.415607, 33.825535>,  <44.175144, 34.267307, 33.867760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991230, 34.415607, 33.825535>,  <43.684708, 34.662777, 33.755161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991230, 34.415607, 33.825535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155413, 0.443979, 0.882457,
		-0.623398, -0.648888, 0.436256,
		0.766304, -0.617922, 0.175930,
		44.221123, 34.230232, 33.878315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277439, 35.026295, 33.984398>,  <43.684708, 34.662777, 33.755161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277439, 35.026295, 33.984398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425827, 35.206406, 34.309269>,  <44.514858, 35.314472, 34.504192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425827, 35.206406, 34.309269>,  <44.277439, 35.026295, 33.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425827, 35.206406, 34.309269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229236, 0.891918, -0.389785,
		-0.899907, -0.041582, 0.434094,
		0.370969, 0.450281, 0.812176,
		44.537117, 35.341492, 34.552921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903214, 35.583351, 34.059673>,  <44.277439, 35.026295, 33.984398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903214, 35.583351, 34.059673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252438, 35.657444, 34.240097>,  <44.461971, 35.701900, 34.348351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252438, 35.657444, 34.240097>,  <43.903214, 35.583351, 34.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252438, 35.657444, 34.240097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015738, 0.935262, -0.353606,
		-0.487353, 0.301621, 0.819458,
		0.873063, 0.185228, 0.451056,
		44.514355, 35.713013, 34.375412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878113, 36.187668, 34.539196>,  <43.903214, 35.583351, 34.059673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878113, 36.187668, 34.539196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264866, 36.164799, 34.439697>,  <44.496918, 36.151077, 34.379997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264866, 36.164799, 34.439697>,  <43.878113, 36.187668, 34.539196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264866, 36.164799, 34.439697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027803, 0.945197, -0.325314,
		0.253714, 0.321455, 0.912302,
		0.966880, -0.057172, -0.248747,
		44.554932, 36.147648, 34.365074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097847, 36.861759, 34.661354>,  <43.878113, 36.187668, 34.539196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097847, 36.861759, 34.661354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396866, 36.698906, 34.451431>,  <44.576275, 36.601192, 34.325478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396866, 36.698906, 34.451431>,  <44.097847, 36.861759, 34.661354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396866, 36.698906, 34.451431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206309, 0.893358, -0.399184,
		0.631360, 0.190136, 0.751820,
		0.747544, -0.407136, -0.524803,
		44.621128, 36.576763, 34.293991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540520, 37.378922, 34.633129>,  <44.097847, 36.861759, 34.661354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540520, 37.378922, 34.633129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682751, 37.149643, 34.337830>,  <44.768089, 37.012077, 34.160648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682751, 37.149643, 34.337830>,  <44.540520, 37.378922, 34.633129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682751, 37.149643, 34.337830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263404, 0.819312, -0.509260,
		0.896762, -0.013376, 0.442311,
		0.355578, -0.573192, -0.738251,
		44.789425, 36.977684, 34.116356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259079, 37.571510, 34.472061>,  <44.540520, 37.378922, 34.633129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259079, 37.571510, 34.472061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111263, 37.416531, 34.134228>,  <45.022575, 37.323544, 33.931526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111263, 37.416531, 34.134228>,  <45.259079, 37.571510, 34.472061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111263, 37.416531, 34.134228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196432, 0.855807, -0.478548,
		0.908215, -0.342746, -0.240148,
		-0.369540, -0.387451, -0.844583,
		45.000401, 37.300297, 33.880852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751850, 37.852184, 33.950275>,  <45.259079, 37.571510, 34.472061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751850, 37.852184, 33.950275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418449, 37.728245, 33.767296>,  <45.218407, 37.653881, 33.657509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418449, 37.728245, 33.767296>,  <45.751850, 37.852184, 33.950275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418449, 37.728245, 33.767296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009323, 0.835716, -0.549083,
		0.552431, -0.453400, -0.699463,
		-0.833507, -0.309852, -0.457448,
		45.168396, 37.635288, 33.630062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843876, 38.016277, 33.268791>,  <45.751850, 37.852184, 33.950275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843876, 38.016277, 33.268791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451080, 37.943089, 33.287632>,  <45.215405, 37.899178, 33.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451080, 37.943089, 33.287632>,  <45.843876, 38.016277, 33.268791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451080, 37.943089, 33.287632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184867, 0.879065, -0.439396,
		0.038994, -0.440189, -0.897058,
		-0.981990, -0.182970, 0.047098,
		45.156483, 37.888199, 33.301762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683903, 38.043667, 32.609192>,  <45.843876, 38.016277, 33.268791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683903, 38.043667, 32.609192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375027, 38.148609, 32.840672>,  <45.189701, 38.211575, 32.979557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375027, 38.148609, 32.840672>,  <45.683903, 38.043667, 32.609192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375027, 38.148609, 32.840672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042214, 0.887579, -0.458717,
		-0.633984, -0.378647, -0.674307,
		-0.772193, 0.262354, 0.578696,
		45.143368, 38.227314, 33.014278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199997, 38.308323, 32.168072>,  <45.683903, 38.043667, 32.609192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199997, 38.308323, 32.168072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059017, 38.442894, 32.517376>,  <44.974430, 38.523636, 32.726959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059017, 38.442894, 32.517376>,  <45.199997, 38.308323, 32.168072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059017, 38.442894, 32.517376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337427, 0.824689, -0.453906,
		-0.872880, -0.454644, -0.177143,
		-0.352453, 0.336432, 0.873264,
		44.953281, 38.543823, 32.779354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577778, 38.700836, 32.056473>,  <45.199997, 38.308323, 32.168072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577778, 38.700836, 32.056473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692013, 38.821827, 32.420219>,  <44.760555, 38.894421, 32.638466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692013, 38.821827, 32.420219>,  <44.577778, 38.700836, 32.056473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692013, 38.821827, 32.420219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408836, 0.896662, -0.169853,
		-0.866771, -0.323274, 0.379738,
		0.285588, 0.302474, 0.909367,
		44.777691, 38.912571, 32.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993980, 39.065018, 32.243103>,  <44.577778, 38.700836, 32.056473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993980, 39.065018, 32.243103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287083, 39.218555, 32.467861>,  <44.462944, 39.310677, 32.602718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287083, 39.218555, 32.467861>,  <43.993980, 39.065018, 32.243103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287083, 39.218555, 32.467861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402488, 0.910276, -0.096957,
		-0.548700, -0.155112, 0.821504,
		0.732756, 0.383846, 0.561899,
		44.506908, 39.333710, 32.636433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630581, 39.527733, 32.652180>,  <43.993980, 39.065018, 32.243103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630581, 39.527733, 32.652180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016666, 39.631165, 32.667648>,  <44.248318, 39.693226, 32.676929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016666, 39.631165, 32.667648>,  <43.630581, 39.527733, 32.652180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016666, 39.631165, 32.667648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247126, 0.950568, -0.188013,
		-0.085378, 0.171916, 0.981405,
		0.965214, 0.258583, 0.038672,
		44.306232, 39.708740, 32.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626663, 40.140926, 33.014816>,  <43.630581, 39.527733, 32.652180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626663, 40.140926, 33.014816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981312, 40.160938, 32.830902>,  <44.194099, 40.172947, 32.720554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981312, 40.160938, 32.830902>,  <43.626663, 40.140926, 33.014816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981312, 40.160938, 32.830902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013706, 0.996538, 0.082001,
		0.462295, -0.066402, 0.884236,
		0.886620, 0.050028, -0.459784,
		44.247299, 40.175945, 32.692966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909256, 40.618248, 33.441120>,  <43.626663, 40.140926, 33.014816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909256, 40.618248, 33.441120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134766, 40.620495, 33.110756>,  <44.270073, 40.621841, 32.912537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134766, 40.620495, 33.110756>,  <43.909256, 40.618248, 33.441120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134766, 40.620495, 33.110756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273584, 0.942254, 0.193155,
		0.779300, -0.334852, 0.529684,
		0.563775, 0.005613, -0.825909,
		44.303898, 40.622177, 32.862984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545372, 40.996025, 33.559406>,  <43.909256, 40.618248, 33.441120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545372, 40.996025, 33.559406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523705, 41.009392, 33.160217>,  <44.510704, 41.017410, 32.920704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523705, 41.009392, 33.160217>,  <44.545372, 40.996025, 33.559406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523705, 41.009392, 33.160217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103246, 0.994270, 0.027689,
		0.993180, -0.101536, -0.057308,
		-0.054169, 0.033417, -0.997972,
		44.507454, 41.019417, 32.860825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124737, 41.483814, 33.418861>,  <44.545372, 40.996025, 33.559406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124737, 41.483814, 33.418861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882183, 41.471951, 33.101013>,  <44.736652, 41.464832, 32.910305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882183, 41.471951, 33.101013>,  <45.124737, 41.483814, 33.418861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882183, 41.471951, 33.101013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035930, 0.999306, -0.009879,
		0.794361, 0.022560, -0.607027,
		-0.606383, -0.029658, -0.794620,
		44.700268, 41.463055, 32.862629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459297, 41.741699, 32.797523>,  <45.124737, 41.483814, 33.418861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459297, 41.741699, 32.797523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063629, 41.789547, 32.763500>,  <44.826229, 41.818256, 32.743084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063629, 41.789547, 32.763500>,  <45.459297, 41.741699, 32.797523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063629, 41.789547, 32.763500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126436, 0.988757, -0.079831,
		0.074555, -0.089721, -0.993173,
		-0.989169, 0.119621, -0.085061,
		44.766880, 41.825432, 32.737984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388439, 42.166882, 32.251984>,  <45.459297, 41.741699, 32.797523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388439, 42.166882, 32.251984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039867, 42.199741, 32.445423>,  <44.830727, 42.219456, 32.561489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039867, 42.199741, 32.445423>,  <45.388439, 42.166882, 32.251984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039867, 42.199741, 32.445423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094583, 0.995516, 0.001332,
		-0.481323, 0.046902, -0.875288,
		-0.871425, 0.082146, 0.483601,
		44.778439, 42.224384, 32.590504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138760, 42.782585, 32.001614>,  <45.388439, 42.166882, 32.251984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138760, 42.782585, 32.001614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890293, 42.707420, 32.305943>,  <44.741215, 42.662323, 32.488541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890293, 42.707420, 32.305943>,  <45.138760, 42.782585, 32.001614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890293, 42.707420, 32.305943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214321, 0.974550, 0.065721,
		-0.753807, -0.122236, -0.645626,
		-0.621161, -0.187912, 0.760820,
		44.703945, 42.651047, 32.534187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500584, 43.173393, 31.908140>,  <45.138760, 42.782585, 32.001614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500584, 43.173393, 31.908140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522949, 43.112797, 32.302891>,  <44.536369, 43.076439, 32.539742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522949, 43.112797, 32.302891>,  <44.500584, 43.173393, 31.908140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522949, 43.112797, 32.302891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060880, 0.986067, 0.154812,
		-0.996578, -0.068737, 0.045912,
		0.055914, -0.151487, 0.986877,
		44.539722, 43.067352, 32.598953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135918, 43.719780, 32.199097>,  <44.500584, 43.173393, 31.908140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135918, 43.719780, 32.199097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342503, 43.588341, 32.515400>,  <44.466454, 43.509476, 32.705181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342503, 43.588341, 32.515400>,  <44.135918, 43.719780, 32.199097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342503, 43.588341, 32.515400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010166, 0.925731, 0.378046,
		-0.856251, -0.187207, 0.481444,
		0.516460, -0.328597, 0.790754,
		44.497440, 43.489761, 32.752625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950291, 44.045559, 32.904743>,  <44.135918, 43.719780, 32.199097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950291, 44.045559, 32.904743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878654, 44.407166, 33.060017>,  <43.835674, 44.624130, 33.153179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878654, 44.407166, 33.060017>,  <43.950291, 44.045559, 32.904743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878654, 44.407166, 33.060017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182047, -0.418195, 0.889928,
		0.966843, 0.088711, 0.239468,
		-0.179091, 0.904015, 0.388179,
		43.824928, 44.678371, 33.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559956, 44.323494, 33.425056>,  <43.950291, 44.045559, 32.904743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559956, 44.323494, 33.425056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933483, 44.436600, 33.337391>,  <44.157600, 44.504463, 33.284790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933483, 44.436600, 33.337391>,  <43.559956, 44.323494, 33.425056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933483, 44.436600, 33.337391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208786, 0.066731, 0.975682,
		0.290511, -0.956866, 0.003277,
		0.933816, 0.282762, -0.219166,
		44.213627, 44.521427, 33.271641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962452, 43.959541, 33.786701>,  <43.559956, 44.323494, 33.425056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962452, 43.959541, 33.786701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177727, 44.286472, 33.704403>,  <44.306892, 44.482632, 33.655022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177727, 44.286472, 33.704403>,  <43.962452, 43.959541, 33.786701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177727, 44.286472, 33.704403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339187, 0.013440, 0.940623,
		0.771559, -0.576021, -0.269993,
		0.538189, 0.817325, -0.205749,
		44.339184, 44.531670, 33.642677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587471, 43.483162, 34.159157>,  <43.962452, 43.959541, 33.786701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587471, 43.483162, 34.159157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817837, 43.160469, 34.212090>,  <43.956055, 42.966854, 34.243851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817837, 43.160469, 34.212090>,  <43.587471, 43.483162, 34.159157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817837, 43.160469, 34.212090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417066, -0.150712, 0.896294,
		-0.703124, -0.571376, -0.423257,
		0.575911, -0.806731, 0.132332,
		43.990608, 42.918449, 34.251789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109962, 43.010712, 34.460545>,  <43.587471, 43.483162, 34.159157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109962, 43.010712, 34.460545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485870, 42.926228, 34.568043>,  <43.711414, 42.875538, 34.632542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485870, 42.926228, 34.568043>,  <43.109962, 43.010712, 34.460545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485870, 42.926228, 34.568043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315586, -0.234128, 0.919559,
		-0.131301, -0.948985, -0.286682,
		0.939769, -0.211212, 0.268745,
		43.767799, 42.862862, 34.648666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078621, 42.343517, 34.642429>,  <43.109962, 43.010712, 34.460545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078621, 42.343517, 34.642429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334625, 42.599957, 34.811836>,  <43.488228, 42.753822, 34.913483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334625, 42.599957, 34.811836>,  <43.078621, 42.343517, 34.642429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334625, 42.599957, 34.811836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531674, -0.028421, 0.846472,
		0.554712, -0.766929, 0.322667,
		0.640014, 0.641102, 0.423522,
		43.526630, 42.792286, 34.938892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450191, 42.174591, 35.286613>,  <43.078621, 42.343517, 34.642429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450191, 42.174591, 35.286613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421200, 42.572163, 35.319721>,  <43.403805, 42.810707, 35.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421200, 42.572163, 35.319721>,  <43.450191, 42.174591, 35.286613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421200, 42.572163, 35.319721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363492, -0.103602, 0.925819,
		0.928774, 0.037014, 0.368794,
		-0.072476, 0.993930, 0.082768,
		43.399456, 42.870342, 35.344551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908573, 42.495728, 35.900291>,  <43.450191, 42.174591, 35.286613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908573, 42.495728, 35.900291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585697, 42.711155, 35.803635>,  <43.391972, 42.840412, 35.745640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585697, 42.711155, 35.803635>,  <43.908573, 42.495728, 35.900291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585697, 42.711155, 35.803635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461350, -0.320221, 0.827414,
		0.368237, 0.779364, 0.506946,
		-0.807191, 0.538564, -0.241642,
		43.343540, 42.872723, 35.731140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615429, 42.901730, 36.460186>,  <43.908573, 42.495728, 35.900291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615429, 42.901730, 36.460186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337868, 42.774902, 36.201584>,  <43.171329, 42.698807, 36.046421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337868, 42.774902, 36.201584>,  <43.615429, 42.901730, 36.460186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337868, 42.774902, 36.201584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498002, -0.437171, 0.748916,
		-0.520091, 0.841635, 0.145453,
		-0.693902, -0.317068, -0.646505,
		43.129696, 42.679783, 36.007633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956177, 43.442471, 36.241627>,  <43.615429, 42.901730, 36.460186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956177, 43.442471, 36.241627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827061, 43.427086, 36.619904>,  <43.749592, 43.417854, 36.846870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827061, 43.427086, 36.619904>,  <43.956177, 43.442471, 36.241627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827061, 43.427086, 36.619904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682432, -0.701792, 0.204389,
		0.655814, 0.711343, 0.252781,
		-0.322790, -0.038465, 0.945688,
		43.730225, 43.415546, 36.903610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549816, 43.358784, 36.686550>,  <43.956177, 43.442471, 36.241627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549816, 43.358784, 36.686550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.214924, 43.192272, 36.828396>,  <44.013988, 43.092365, 36.913506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.214924, 43.192272, 36.828396>,  <44.549816, 43.358784, 36.686550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214924, 43.192272, 36.828396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502479, -0.841495, 0.198498,
		0.215777, 0.344376, 0.913698,
		-0.837231, -0.416283, 0.354617,
		43.963753, 43.067387, 36.934780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674278, 43.137230, 37.366680>,  <44.549816, 43.358784, 36.686550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674278, 43.137230, 37.366680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379211, 42.907803, 37.224213>,  <44.202171, 42.770145, 37.138733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379211, 42.907803, 37.224213>,  <44.674278, 43.137230, 37.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379211, 42.907803, 37.224213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515875, -0.819153, 0.250719,
		-0.435562, 0.001210, 0.900158,
		-0.737671, -0.573573, -0.356168,
		44.157909, 42.735729, 37.117363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634037, 42.591076, 37.864201>,  <44.674278, 43.137230, 37.366680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634037, 42.591076, 37.864201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477203, 42.453377, 37.522964>,  <44.383102, 42.370758, 37.318222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477203, 42.453377, 37.522964>,  <44.634037, 42.591076, 37.864201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477203, 42.453377, 37.522964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489488, -0.863238, 0.123378,
		-0.778893, -0.369202, 0.506967,
		-0.392081, -0.344252, -0.853090,
		44.359577, 42.350101, 37.267036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413422, 41.938686, 38.060242>,  <44.634037, 42.591076, 37.864201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413422, 41.938686, 38.060242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414722, 41.918041, 37.660778>,  <44.415504, 41.905655, 37.421101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414722, 41.918041, 37.660778>,  <44.413422, 41.938686, 38.060242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414722, 41.918041, 37.660778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359435, -0.931865, 0.049331,
		-0.933165, -0.359114, 0.015518,
		0.003255, -0.051612, -0.998662,
		44.415699, 41.902557, 37.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814816, 41.339043, 37.873489>,  <44.413422, 41.938686, 38.060242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814816, 41.339043, 37.873489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098717, 41.406841, 37.599987>,  <44.269058, 41.447521, 37.435886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098717, 41.406841, 37.599987>,  <43.814816, 41.339043, 37.873489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098717, 41.406841, 37.599987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196985, -0.979655, -0.038370,
		-0.676352, -0.107457, -0.728698,
		0.709750, 0.169494, -0.683759,
		44.311642, 41.457691, 37.394859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513580, 41.122463, 37.299118>,  <43.814816, 41.339043, 37.873489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513580, 41.122463, 37.299118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903568, 41.120396, 37.210201>,  <44.137562, 41.119156, 37.156853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903568, 41.120396, 37.210201>,  <43.513580, 41.122463, 37.299118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903568, 41.120396, 37.210201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065769, -0.961694, -0.266117,
		-0.212401, 0.274075, -0.937960,
		0.974967, -0.005165, -0.222290,
		44.196060, 41.118847, 37.143513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561131, 40.596256, 36.796265>,  <43.513580, 41.122463, 37.299118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561131, 40.596256, 36.796265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938015, 40.663017, 36.912460>,  <44.164146, 40.703072, 36.982178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938015, 40.663017, 36.912460>,  <43.561131, 40.596256, 36.796265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938015, 40.663017, 36.912460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214422, -0.966641, -0.140102,
		0.257416, 0.194292, -0.946566,
		0.942210, 0.166900, 0.290489,
		44.220676, 40.713089, 36.999607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003025, 40.371681, 36.252617>,  <43.561131, 40.596256, 36.796265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003025, 40.371681, 36.252617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248493, 40.369755, 36.568436>,  <44.395775, 40.368599, 36.757927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248493, 40.369755, 36.568436>,  <44.003025, 40.371681, 36.252617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248493, 40.369755, 36.568436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435032, -0.832443, -0.343200,
		0.658906, 0.554090, -0.508751,
		0.613669, -0.004813, 0.789549,
		44.432594, 40.368309, 36.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671600, 40.080524, 36.017555>,  <44.003025, 40.371681, 36.252617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671600, 40.080524, 36.017555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692272, 40.054932, 36.416199>,  <44.704678, 40.039574, 36.655384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692272, 40.054932, 36.416199>,  <44.671600, 40.080524, 36.017555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692272, 40.054932, 36.416199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341975, -0.936478, -0.077860,
		0.938287, 0.344841, -0.026519,
		0.051684, -0.063986, 0.996612,
		44.707779, 40.035736, 36.715183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325180, 39.769531, 36.029453>,  <44.671600, 40.080524, 36.017555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325180, 39.769531, 36.029453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168995, 39.717361, 36.393986>,  <45.075283, 39.686058, 36.612705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168995, 39.717361, 36.393986>,  <45.325180, 39.769531, 36.029453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168995, 39.717361, 36.393986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228797, -0.972603, -0.041165,
		0.891735, 0.192437, 0.409606,
		-0.390462, -0.130425, 0.911333,
		45.051857, 39.678234, 36.667385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795712, 39.297028, 36.332401>,  <45.325180, 39.769531, 36.029453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795712, 39.297028, 36.332401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460949, 39.285980, 36.551060>,  <45.260090, 39.279350, 36.682255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460949, 39.285980, 36.551060>,  <45.795712, 39.297028, 36.332401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460949, 39.285980, 36.551060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093166, -0.991340, 0.092548,
		0.539356, 0.128383, 0.832233,
		-0.836908, -0.027619, 0.546646,
		45.209877, 39.277695, 36.715054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029037, 38.910358, 36.951153>,  <45.795712, 39.297028, 36.332401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029037, 38.910358, 36.951153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632114, 38.896156, 36.903717>,  <45.393959, 38.887634, 36.875256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632114, 38.896156, 36.903717>,  <46.029037, 38.910358, 36.951153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632114, 38.896156, 36.903717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043449, -0.996935, -0.065055,
		-0.115916, -0.069707, 0.990810,
		-0.992308, -0.035509, -0.118589,
		45.334423, 38.885502, 36.868141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833626, 38.401806, 37.326843>,  <46.029037, 38.910358, 36.951153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833626, 38.401806, 37.326843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531494, 38.428059, 37.066025>,  <45.350216, 38.443810, 36.909534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531494, 38.428059, 37.066025>,  <45.833626, 38.401806, 37.326843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531494, 38.428059, 37.066025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077970, -0.978904, -0.188859,
		-0.650686, -0.193491, 0.734281,
		-0.755334, 0.065636, -0.652045,
		45.304893, 38.447750, 36.870411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564217, 37.801849, 37.452377>,  <45.833626, 38.401806, 37.326843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564217, 37.801849, 37.452377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413063, 37.940891, 37.109127>,  <45.322372, 38.024315, 36.903179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413063, 37.940891, 37.109127>,  <45.564217, 37.801849, 37.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413063, 37.940891, 37.109127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044255, -0.919004, -0.391756,
		-0.924798, -0.186011, 0.331886,
		-0.377876, 0.347608, -0.858125,
		45.299698, 38.045174, 36.851688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117954, 37.328873, 37.185425>,  <45.564217, 37.801849, 37.452377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117954, 37.328873, 37.185425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187572, 37.539276, 36.852432>,  <45.229343, 37.665516, 36.652637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187572, 37.539276, 36.852432>,  <45.117954, 37.328873, 37.185425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187572, 37.539276, 36.852432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137731, -0.850078, -0.508328,
		-0.975058, -0.026186, -0.220400,
		0.174046, 0.526005, -0.832482,
		45.239788, 37.697079, 36.602688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790333, 36.945702, 36.668785>,  <45.117954, 37.328873, 37.185425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790333, 36.945702, 36.668785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066784, 37.182838, 36.503433>,  <45.232655, 37.325119, 36.404224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066784, 37.182838, 36.503433>,  <44.790333, 36.945702, 36.668785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066784, 37.182838, 36.503433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380003, -0.784600, -0.489899,
		-0.614768, 0.181498, -0.767540,
		0.691128, 0.592842, -0.413378,
		45.274120, 37.360691, 36.379421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821785, 36.652443, 35.911331>,  <44.790333, 36.945702, 36.668785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821785, 36.652443, 35.911331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130783, 36.898777, 35.973305>,  <45.316181, 37.046577, 36.010487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130783, 36.898777, 35.973305>,  <44.821785, 36.652443, 35.911331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130783, 36.898777, 35.973305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585575, -0.596435, -0.548969,
		-0.245667, 0.514799, -0.821358,
		0.772496, 0.615831, 0.154930,
		45.362534, 37.083527, 36.019783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119331, 36.837868, 35.197327>,  <44.821785, 36.652443, 35.911331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119331, 36.837868, 35.197327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399292, 36.891750, 35.477898>,  <45.567268, 36.924080, 35.646240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399292, 36.891750, 35.477898>,  <45.119331, 36.837868, 35.197327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399292, 36.891750, 35.477898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656741, -0.507429, -0.557859,
		0.280773, 0.851099, -0.443619,
		0.699898, 0.134711, 0.701424,
		45.609261, 36.932163, 35.688324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742073, 37.141838, 34.875389>,  <45.119331, 36.837868, 35.197327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742073, 37.141838, 34.875389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869553, 36.943775, 35.198685>,  <45.946041, 36.824936, 35.392662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869553, 36.943775, 35.198685>,  <45.742073, 37.141838, 34.875389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869553, 36.943775, 35.198685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641636, -0.514924, -0.568469,
		0.697664, 0.699764, 0.153607,
		0.318698, -0.495160, 0.808238,
		45.965160, 36.795227, 35.441154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475929, 37.159431, 34.813171>,  <45.742073, 37.141838, 34.875389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475929, 37.159431, 34.813171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436146, 36.874874, 35.091457>,  <46.412277, 36.704140, 35.258430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436146, 36.874874, 35.091457>,  <46.475929, 37.159431, 34.813171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436146, 36.874874, 35.091457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614428, -0.593871, -0.519419,
		0.782680, 0.375811, 0.496164,
		-0.099454, -0.711395, 0.695719,
		46.406311, 36.661457, 35.300175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178501, 36.992577, 34.990051>,  <46.475929, 37.159431, 34.813171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178501, 36.992577, 34.990051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931923, 36.694660, 35.092258>,  <46.783978, 36.515911, 35.153584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931923, 36.694660, 35.092258>,  <47.178501, 36.992577, 34.990051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931923, 36.694660, 35.092258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654011, -0.665015, -0.360589,
		0.438484, -0.055173, 0.897044,
		-0.616443, -0.744789, 0.255515,
		46.746990, 36.471222, 35.168915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536064, 36.515427, 35.278671>,  <47.178501, 36.992577, 34.990051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536064, 36.515427, 35.278671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198410, 36.346909, 35.146038>,  <46.995815, 36.245800, 35.066460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198410, 36.346909, 35.146038>,  <47.536064, 36.515427, 35.278671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.198410, 36.346909, 35.146038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533438, -0.721876, -0.440840,
		-0.053637, -0.549007, 0.834095,
		-0.844137, -0.421293, -0.331580,
		46.945168, 36.220520, 35.046566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555248, 35.769283, 35.447845>,  <47.536064, 36.515427, 35.278671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555248, 35.769283, 35.447845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330307, 35.821335, 35.121208>,  <47.195343, 35.852566, 34.925228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330307, 35.821335, 35.121208>,  <47.555248, 35.769283, 35.447845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330307, 35.821335, 35.121208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559189, -0.667642, -0.491489,
		-0.609149, -0.733021, 0.302684,
		-0.562357, 0.130133, -0.816591,
		47.161598, 35.860374, 34.876232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.217030, 35.054211, 35.256706>,  <47.555248, 35.769283, 35.447845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.217030, 35.054211, 35.256706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294868, 35.306553, 34.956264>,  <47.341572, 35.457958, 34.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294868, 35.306553, 34.956264>,  <47.217030, 35.054211, 35.256706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294868, 35.306553, 34.956264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594694, -0.684833, -0.421121,
		-0.780046, -0.364728, -0.508430,
		0.194595, 0.630854, -0.751103,
		47.353249, 35.495808, 34.730934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563828, 34.534470, 34.934971>,  <47.217030, 35.054211, 35.256706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563828, 34.534470, 34.934971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632381, 34.819275, 34.662598>,  <47.673515, 34.990158, 34.499176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632381, 34.819275, 34.662598>,  <47.563828, 34.534470, 34.934971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632381, 34.819275, 34.662598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423598, -0.677265, -0.601562,
		-0.889489, -0.185340, -0.417682,
		0.171388, 0.712012, -0.680929,
		47.683800, 35.032879, 34.458321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.059753, 38.440815, 41.775955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756084, 38.224377, 41.920658>,  <36.573883, 38.094513, 42.007481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756084, 38.224377, 41.920658>,  <37.059753, 38.440815, 41.775955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756084, 38.224377, 41.920658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118093, -0.432065, -0.894077,
		0.640087, -0.721480, 0.264113,
		-0.759173, -0.541097, 0.361761,
		36.528332, 38.062046, 42.029186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221882, 37.836777, 41.586422>,  <37.059753, 38.440815, 41.775955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221882, 37.836777, 41.586422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829529, 37.780815, 41.640533>,  <36.594116, 37.747238, 41.673000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829529, 37.780815, 41.640533>,  <37.221882, 37.836777, 41.586422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829529, 37.780815, 41.640533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043895, -0.518150, -0.854163,
		0.189597, -0.843769, 0.502102,
		-0.980881, -0.139907, 0.135277,
		36.535263, 37.738842, 41.681118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095085, 37.108429, 41.391457>,  <37.221882, 37.836777, 41.586422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095085, 37.108429, 41.391457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753799, 37.316467, 41.375858>,  <36.549026, 37.441292, 41.366497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753799, 37.316467, 41.375858>,  <37.095085, 37.108429, 41.391457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753799, 37.316467, 41.375858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211650, -0.413611, -0.885511,
		-0.476687, -0.747276, 0.462978,
		-0.853214, 0.520101, -0.039002,
		36.497833, 37.472496, 41.364159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587410, 36.675621, 41.071522>,  <37.095085, 37.108429, 41.391457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587410, 36.675621, 41.071522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380039, 37.016750, 41.046452>,  <36.255615, 37.221428, 41.031410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380039, 37.016750, 41.046452>,  <36.587410, 36.675621, 41.071522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380039, 37.016750, 41.046452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408349, -0.311302, -0.858104,
		-0.751322, -0.419268, 0.509636,
		-0.518426, 0.852822, -0.062680,
		36.224510, 37.272598, 41.027649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931858, 36.440418, 40.922272>,  <36.587410, 36.675621, 41.071522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931858, 36.440418, 40.922272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958260, 36.820122, 40.799271>,  <35.974102, 37.047943, 40.725471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958260, 36.820122, 40.799271>,  <35.931858, 36.440418, 40.922272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958260, 36.820122, 40.799271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475411, -0.241029, -0.846103,
		-0.877284, 0.202036, 0.435378,
		0.066005, 0.949256, -0.307502,
		35.978062, 37.104897, 40.707020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395752, 36.689083, 40.636215>,  <35.931858, 36.440418, 40.922272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395752, 36.689083, 40.636215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644043, 36.956280, 40.472027>,  <35.793018, 37.116596, 40.373516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644043, 36.956280, 40.472027>,  <35.395752, 36.689083, 40.636215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644043, 36.956280, 40.472027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287288, -0.293337, -0.911822,
		-0.729496, 0.683915, 0.009824,
		0.620726, 0.667993, -0.410469,
		35.830261, 37.156677, 40.348885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127110, 36.837841, 39.901775>,  <35.395752, 36.689083, 40.636215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127110, 36.837841, 39.901775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494900, 36.994972, 39.908051>,  <35.715576, 37.089252, 39.911816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494900, 36.994972, 39.908051>,  <35.127110, 36.837841, 39.901775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494900, 36.994972, 39.908051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148816, -0.310837, -0.938741,
		-0.363889, 0.865486, -0.344267,
		0.919477, 0.392830, 0.015688,
		35.770744, 37.112820, 39.912758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143692, 37.168262, 39.234970>,  <35.127110, 36.837841, 39.901775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143692, 37.168262, 39.234970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521557, 37.093430, 39.342754>,  <35.748276, 37.048531, 39.407425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521557, 37.093430, 39.342754>,  <35.143692, 37.168262, 39.234970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521557, 37.093430, 39.342754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177192, -0.400278, -0.899100,
		0.276063, 0.897094, -0.344980,
		0.944665, -0.187081, 0.269460,
		35.804955, 37.037304, 39.423592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495697, 37.530148, 38.761074>,  <35.143692, 37.168262, 39.234970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495697, 37.530148, 38.761074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728092, 37.237816, 38.904381>,  <35.867527, 37.062416, 38.990364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728092, 37.237816, 38.904381>,  <35.495697, 37.530148, 38.761074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728092, 37.237816, 38.904381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151359, -0.335481, -0.929808,
		0.799717, 0.594430, -0.084293,
		0.580984, -0.730825, 0.358262,
		35.902386, 37.018570, 39.011860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158634, 37.588451, 38.381634>,  <35.495697, 37.530148, 38.761074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158634, 37.588451, 38.381634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106495, 37.214649, 38.514126>,  <36.075211, 36.990368, 38.593620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106495, 37.214649, 38.514126>,  <36.158634, 37.588451, 38.381634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106495, 37.214649, 38.514126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217961, -0.352919, -0.909913,
		0.967215, -0.046405, 0.249685,
		-0.130343, -0.934503, 0.331233,
		36.067390, 36.934299, 38.613495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734287, 37.284470, 38.277836>,  <36.158634, 37.588451, 38.381634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734287, 37.284470, 38.277836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531925, 36.943039, 38.327583>,  <36.410507, 36.738182, 38.357433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531925, 36.943039, 38.327583>,  <36.734287, 37.284470, 38.277836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531925, 36.943039, 38.327583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458024, -0.387997, -0.799795,
		0.730943, -0.347653, 0.587248,
		-0.505901, -0.853578, 0.124370,
		36.380154, 36.686966, 38.364895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164207, 36.757927, 38.592182>,  <36.734287, 37.284470, 38.277836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164207, 36.757927, 38.592182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882496, 36.550068, 38.398708>,  <36.713467, 36.425350, 38.282623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882496, 36.550068, 38.398708>,  <37.164207, 36.757927, 38.592182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882496, 36.550068, 38.398708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708748, -0.475514, -0.521117,
		0.040799, -0.709825, 0.703196,
		-0.704281, -0.519650, -0.483686,
		36.671211, 36.394173, 38.253601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359932, 36.046959, 38.594166>,  <37.164207, 36.757927, 38.592182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359932, 36.046959, 38.594166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106182, 36.113632, 38.292229>,  <36.953934, 36.153637, 38.111065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106182, 36.113632, 38.292229>,  <37.359932, 36.046959, 38.594166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106182, 36.113632, 38.292229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647268, -0.419323, -0.636563,
		-0.422649, -0.892398, 0.158092,
		-0.634359, 0.166715, -0.754847,
		36.915871, 36.163639, 38.065777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324852, 35.378170, 38.191971>,  <37.359932, 36.046959, 38.594166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324852, 35.378170, 38.191971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164165, 35.636177, 37.931946>,  <37.067753, 35.790981, 37.775932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164165, 35.636177, 37.931946>,  <37.324852, 35.378170, 38.191971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164165, 35.636177, 37.931946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498510, -0.441438, -0.746069,
		-0.768189, -0.623769, -0.144215,
		-0.401713, 0.645015, -0.650063,
		37.043652, 35.829681, 37.736927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087227, 34.962887, 37.599510>,  <37.324852, 35.378170, 38.191971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087227, 34.962887, 37.599510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162418, 35.334557, 37.472195>,  <37.207535, 35.557556, 37.395805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162418, 35.334557, 37.472195>,  <37.087227, 34.962887, 37.599510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162418, 35.334557, 37.472195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451850, -0.369544, -0.811954,
		-0.872064, 0.008813, -0.489312,
		0.187977, 0.929171, -0.318284,
		37.218811, 35.613308, 37.376709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078007, 34.861629, 36.930988>,  <37.087227, 34.962887, 37.599510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078007, 34.861629, 36.930988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246304, 35.224075, 36.948547>,  <37.347282, 35.441544, 36.959084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246304, 35.224075, 36.948547>,  <37.078007, 34.861629, 36.930988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246304, 35.224075, 36.948547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571596, -0.227213, -0.788450,
		-0.704453, 0.356827, -0.613531,
		0.420742, 0.906117, 0.043900,
		37.372528, 35.495911, 36.961716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130131, 35.089622, 36.244923>,  <37.078007, 34.861629, 36.930988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130131, 35.089622, 36.244923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412659, 35.302834, 36.431255>,  <37.582176, 35.430759, 36.543056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412659, 35.302834, 36.431255>,  <37.130131, 35.089622, 36.244923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412659, 35.302834, 36.431255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630907, -0.175555, -0.755736,
		-0.321048, 0.827686, -0.460287,
		0.706318, 0.533026, 0.465831,
		37.624554, 35.462742, 36.571003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577435, 35.481575, 35.689224>,  <37.130131, 35.089622, 36.244923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577435, 35.481575, 35.689224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809853, 35.472515, 36.014648>,  <37.949303, 35.467079, 36.209904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809853, 35.472515, 36.014648>,  <37.577435, 35.481575, 35.689224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809853, 35.472515, 36.014648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811762, -0.055786, -0.581318,
		0.058551, 0.998186, -0.014030,
		0.581046, -0.022647, 0.813556,
		37.984165, 35.465721, 36.258717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053478, 36.052326, 35.590744>,  <37.577435, 35.481575, 35.689224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053478, 36.052326, 35.590744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264603, 35.828705, 35.846519>,  <38.391277, 35.694534, 35.999985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264603, 35.828705, 35.846519>,  <38.053478, 36.052326, 35.590744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264603, 35.828705, 35.846519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734679, -0.077286, -0.673999,
		0.426219, 0.825523, 0.369931,
		0.527811, -0.559051, 0.639435,
		38.422947, 35.660988, 36.038349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746361, 36.244667, 35.563305>,  <38.053478, 36.052326, 35.590744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746361, 36.244667, 35.563305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785824, 35.887959, 35.739944>,  <38.809502, 35.673935, 35.845928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785824, 35.887959, 35.739944>,  <38.746361, 36.244667, 35.563305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785824, 35.887959, 35.739944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671518, -0.267829, -0.690892,
		0.734391, 0.364705, 0.572416,
		0.098661, -0.891772, 0.441597,
		38.815422, 35.620426, 35.872425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485008, 36.115334, 35.635258>,  <38.746361, 36.244667, 35.563305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485008, 36.115334, 35.635258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300316, 35.760571, 35.629601>,  <39.189499, 35.547714, 35.626205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300316, 35.760571, 35.629601>,  <39.485008, 36.115334, 35.635258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300316, 35.760571, 35.629601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439260, -0.214774, -0.872309,
		0.770621, -0.408982, 0.488751,
		-0.461730, -0.886908, -0.014140,
		39.161797, 35.494499, 35.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981297, 35.606964, 35.505089>,  <39.485008, 36.115334, 35.635258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981297, 35.606964, 35.505089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626114, 35.502792, 35.353447>,  <39.413006, 35.440289, 35.262463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626114, 35.502792, 35.353447>,  <39.981297, 35.606964, 35.505089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626114, 35.502792, 35.353447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437920, -0.226769, -0.869943,
		0.140587, -0.938485, 0.315406,
		-0.887954, -0.260425, -0.379101,
		39.359726, 35.424664, 35.239716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273006, 35.009762, 35.304993>,  <39.981297, 35.606964, 35.505089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273006, 35.009762, 35.304993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639168, 35.160942, 35.249596>,  <40.858864, 35.251652, 35.216358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639168, 35.160942, 35.249596>,  <40.273006, 35.009762, 35.304993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639168, 35.160942, 35.249596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083635, 0.157957, 0.983898,
		0.393744, -0.912250, 0.112985,
		0.915407, 0.377954, -0.138491,
		40.913792, 35.274330, 35.208050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718327, 34.793095, 35.881145>,  <40.273006, 35.009762, 35.304993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718327, 34.793095, 35.881145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847000, 35.136887, 35.722244>,  <40.924206, 35.343163, 35.626904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847000, 35.136887, 35.722244>,  <40.718327, 34.793095, 35.881145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847000, 35.136887, 35.722244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049112, 0.403845, 0.913508,
		0.945573, -0.313371, 0.087700,
		0.321684, 0.859481, -0.397255,
		40.943504, 35.394730, 35.603069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292095, 34.950245, 36.220669>,  <40.718327, 34.793095, 35.881145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292095, 34.950245, 36.220669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.192642, 35.304256, 36.063240>,  <41.132973, 35.516663, 35.968781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.192642, 35.304256, 36.063240>,  <41.292095, 34.950245, 36.220669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192642, 35.304256, 36.063240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187291, 0.442593, 0.876945,
		0.950319, 0.144320, -0.275799,
		-0.248628, 0.885033, -0.393575,
		41.118053, 35.569767, 35.945168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887791, 35.367939, 36.394371>,  <41.292095, 34.950245, 36.220669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887791, 35.367939, 36.394371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.569447, 35.596634, 36.314648>,  <41.378441, 35.733852, 36.266815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.569447, 35.596634, 36.314648>,  <41.887791, 35.367939, 36.394371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569447, 35.596634, 36.314648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156883, 0.512644, 0.844147,
		0.584805, 0.640553, -0.497689,
		-0.795858, 0.571741, -0.199305,
		41.330688, 35.768158, 36.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147873, 36.046513, 36.548313>,  <41.887791, 35.367939, 36.394371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147873, 36.046513, 36.548313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748569, 36.068249, 36.539070>,  <41.508987, 36.081291, 36.533524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748569, 36.068249, 36.539070>,  <42.147873, 36.046513, 36.548313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748569, 36.068249, 36.539070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014578, 0.606076, 0.795273,
		0.057220, 0.793549, -0.605810,
		-0.998255, 0.054337, -0.023112,
		41.449093, 36.084549, 36.532135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015495, 36.762543, 37.033295>,  <42.147873, 36.046513, 36.548313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015495, 36.762543, 37.033295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.657822, 36.593742, 36.973492>,  <41.443218, 36.492462, 36.937611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.657822, 36.593742, 36.973492>,  <42.015495, 36.762543, 37.033295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657822, 36.593742, 36.973492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324765, 0.381552, 0.865416,
		-0.308158, 0.822397, -0.478228,
		-0.894185, -0.421997, -0.149508,
		41.389565, 36.467144, 36.928638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532001, 37.201641, 37.308533>,  <42.015495, 36.762543, 37.033295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532001, 37.201641, 37.308533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325771, 36.858910, 37.310387>,  <41.202034, 36.653271, 37.311501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325771, 36.858910, 37.310387>,  <41.532001, 37.201641, 37.308533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325771, 36.858910, 37.310387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408295, 0.250429, 0.877827,
		-0.753311, 0.450694, -0.478955,
		-0.515576, -0.856832, 0.004635,
		41.171097, 36.601860, 37.311779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923084, 37.337524, 37.555458>,  <41.532001, 37.201641, 37.308533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923084, 37.337524, 37.555458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.925404, 36.940262, 37.602104>,  <40.926796, 36.701904, 37.630093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.925404, 36.940262, 37.602104>,  <40.923084, 37.337524, 37.555458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925404, 36.940262, 37.602104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320553, 0.108616, 0.940983,
		-0.947213, -0.042832, -0.317731,
		0.005794, -0.993160, 0.116612,
		40.927143, 36.642315, 37.637089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157505, 37.116096, 37.704102>,  <40.923084, 37.337524, 37.555458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157505, 37.116096, 37.704102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442028, 36.873413, 37.846058>,  <40.612743, 36.727806, 37.931232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442028, 36.873413, 37.846058>,  <40.157505, 37.116096, 37.704102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442028, 36.873413, 37.846058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205842, 0.302970, 0.930504,
		-0.672063, -0.734928, 0.090620,
		0.711309, -0.606704, 0.354894,
		40.655422, 36.691402, 37.952526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779770, 36.794960, 38.263721>,  <40.157505, 37.116096, 37.704102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779770, 36.794960, 38.263721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167908, 36.724224, 38.329632>,  <40.400791, 36.681782, 38.369179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167908, 36.724224, 38.329632>,  <39.779770, 36.794960, 38.263721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167908, 36.724224, 38.329632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135159, 0.168183, 0.976446,
		-0.200391, -0.969763, 0.139294,
		0.970348, -0.176844, 0.164774,
		40.459011, 36.671173, 38.379063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798218, 36.403465, 38.797852>,  <39.779770, 36.794960, 38.263721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798218, 36.403465, 38.797852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161549, 36.570736, 38.794567>,  <40.379547, 36.671101, 38.792599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161549, 36.570736, 38.794567>,  <39.798218, 36.403465, 38.797852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161549, 36.570736, 38.794567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059573, 0.148770, 0.987076,
		0.413997, -0.896099, 0.160044,
		0.908327, 0.418181, -0.008207,
		40.434048, 36.696190, 38.792107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071148, 36.119427, 39.291088>,  <39.798218, 36.403465, 38.797852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071148, 36.119427, 39.291088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.313766, 36.429760, 39.221596>,  <40.459339, 36.615959, 39.179901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.313766, 36.429760, 39.221596>,  <40.071148, 36.119427, 39.291088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313766, 36.429760, 39.221596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278338, 0.411901, 0.867678,
		0.744735, -0.477931, 0.465781,
		0.606546, 0.775835, -0.173731,
		40.495731, 36.662510, 39.169476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444012, 36.167049, 39.899773>,  <40.071148, 36.119427, 39.291088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444012, 36.167049, 39.899773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430515, 36.511005, 39.696026>,  <40.422417, 36.717381, 39.573780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430515, 36.511005, 39.696026>,  <40.444012, 36.167049, 39.899773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430515, 36.511005, 39.696026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287995, 0.479669, 0.828841,
		0.957037, 0.174661, 0.231459,
		-0.033743, 0.859890, -0.509362,
		40.420391, 36.768974, 39.543217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363312, 36.661015, 40.399551>,  <40.444012, 36.167049, 39.899773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363312, 36.661015, 40.399551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.342747, 36.926281, 40.100868>,  <40.330406, 37.085442, 39.921658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.342747, 36.926281, 40.100868>,  <40.363312, 36.661015, 40.399551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342747, 36.926281, 40.100868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533248, 0.613958, 0.581981,
		0.844395, 0.428102, 0.322064,
		-0.051414, 0.663162, -0.746708,
		40.327324, 37.125229, 39.876854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792496, 37.287216, 40.549561>,  <40.363312, 36.661015, 40.399551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792496, 37.287216, 40.549561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498219, 37.382797, 40.296055>,  <40.321651, 37.440147, 40.143951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498219, 37.382797, 40.296055>,  <40.792496, 37.287216, 40.549561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498219, 37.382797, 40.296055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396897, 0.606128, 0.689262,
		0.548845, 0.758624, -0.351083,
		-0.735691, 0.238955, -0.633766,
		40.277512, 37.454483, 40.105927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808731, 38.000286, 40.491840>,  <40.792496, 37.287216, 40.549561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808731, 38.000286, 40.491840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438210, 37.897331, 40.381779>,  <40.215897, 37.835556, 40.315742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438210, 37.897331, 40.381779>,  <40.808731, 38.000286, 40.491840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438210, 37.897331, 40.381779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376652, 0.651173, 0.658868,
		0.009587, 0.713950, -0.700131,
		-0.926305, -0.257389, -0.275154,
		40.160316, 37.820114, 40.299232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535793, 38.626442, 40.327129>,  <40.808731, 38.000286, 40.491840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535793, 38.626442, 40.327129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.225739, 38.390194, 40.416870>,  <40.039707, 38.248444, 40.470715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.225739, 38.390194, 40.416870>,  <40.535793, 38.626442, 40.327129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225739, 38.390194, 40.416870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338489, 0.688052, 0.641880,
		-0.533472, 0.421604, -0.733252,
		-0.775134, -0.590622, 0.224348,
		39.993198, 38.213009, 40.484173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815414, 38.996269, 40.382828>,  <40.535793, 38.626442, 40.327129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815414, 38.996269, 40.382828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741520, 38.664932, 40.594379>,  <39.697186, 38.466129, 40.721310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741520, 38.664932, 40.594379>,  <39.815414, 38.996269, 40.382828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741520, 38.664932, 40.594379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280931, 0.560199, 0.779266,
		-0.941781, -0.004624, -0.336195,
		-0.184732, -0.828345, 0.528884,
		39.686100, 38.416428, 40.753044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.583447, 38.837578, 40.700474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802910, 38.577347, 40.910507>,  <38.934589, 38.421207, 41.036530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802910, 38.577347, 40.910507>,  <38.583447, 38.837578, 40.700474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802910, 38.577347, 40.910507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385450, 0.360490, 0.849397,
		-0.741890, -0.668425, -0.052980,
		0.548659, -0.650581, 0.525088,
		38.967506, 38.382172, 41.068035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125195, 38.510288, 41.175117>,  <38.583447, 38.837578, 40.700474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125195, 38.510288, 41.175117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492882, 38.438484, 41.315300>,  <38.713493, 38.395401, 41.399410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492882, 38.438484, 41.315300>,  <38.125195, 38.510288, 41.175117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492882, 38.438484, 41.315300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313620, 0.204393, 0.927289,
		-0.238085, -0.962289, 0.131585,
		0.919216, -0.179506, 0.350456,
		38.768646, 38.384632, 41.420437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119030, 37.937386, 41.722912>,  <38.125195, 38.510288, 41.175117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119030, 37.937386, 41.722912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442379, 38.162952, 41.790478>,  <38.636387, 38.298294, 41.831017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442379, 38.162952, 41.790478>,  <38.119030, 37.937386, 41.722912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442379, 38.162952, 41.790478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395927, 0.308476, 0.864919,
		0.435639, -0.766052, 0.472634,
		0.808369, 0.563921, 0.168917,
		38.684891, 38.332127, 41.841152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177555, 37.780598, 42.412086>,  <38.119030, 37.937386, 41.722912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177555, 37.780598, 42.412086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415363, 38.098602, 42.363911>,  <38.558048, 38.289406, 42.335007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415363, 38.098602, 42.363911>,  <38.177555, 37.780598, 42.412086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415363, 38.098602, 42.363911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154455, 0.259908, 0.953201,
		0.789106, -0.548095, 0.277314,
		0.594521, 0.795009, -0.120439,
		38.593719, 38.337105, 42.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387272, 37.913719, 43.090622>,  <38.177555, 37.780598, 42.412086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387272, 37.913719, 43.090622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469929, 38.255783, 42.900459>,  <38.519524, 38.461021, 42.786362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469929, 38.255783, 42.900459>,  <38.387272, 37.913719, 43.090622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469929, 38.255783, 42.900459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238012, 0.515228, 0.823341,
		0.949026, -0.056982, 0.310004,
		0.206639, 0.855157, -0.475403,
		38.531921, 38.512329, 42.757839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896328, 38.283756, 43.458729>,  <38.387272, 37.913719, 43.090622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896328, 38.283756, 43.458729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.713638, 38.562107, 43.237041>,  <38.604023, 38.729118, 43.104027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.713638, 38.562107, 43.237041>,  <38.896328, 38.283756, 43.458729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713638, 38.562107, 43.237041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047159, 0.603179, 0.796211,
		0.888357, 0.389786, -0.242671,
		-0.456725, 0.695875, -0.554220,
		38.576622, 38.770870, 43.070774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121132, 38.884670, 43.763458>,  <38.896328, 38.283756, 43.458729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121132, 38.884670, 43.763458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808544, 39.009750, 43.547485>,  <38.620991, 39.084797, 43.417904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808544, 39.009750, 43.547485>,  <39.121132, 38.884670, 43.763458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808544, 39.009750, 43.547485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107774, 0.784695, 0.610441,
		0.614564, 0.535232, -0.579515,
		-0.781470, 0.312698, -0.539929,
		38.574104, 39.103561, 43.385506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229660, 39.644630, 43.624538>,  <39.121132, 38.884670, 43.763458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229660, 39.644630, 43.624538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837555, 39.580318, 43.578506>,  <38.602291, 39.541733, 43.550888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837555, 39.580318, 43.578506>,  <39.229660, 39.644630, 43.624538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837555, 39.580318, 43.578506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195615, 0.703959, 0.682772,
		-0.028766, 0.691804, -0.721512,
		-0.980259, -0.160779, -0.115077,
		38.543476, 39.532085, 43.543983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874310, 40.326172, 43.638096>,  <39.229660, 39.644630, 43.624538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874310, 40.326172, 43.638096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.579483, 40.077194, 43.743397>,  <38.402588, 39.927807, 43.806580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.579483, 40.077194, 43.743397>,  <38.874310, 40.326172, 43.638096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579483, 40.077194, 43.743397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269932, 0.628252, 0.729682,
		-0.619577, 0.466760, -0.631078,
		-0.737062, -0.622443, 0.263257,
		38.358364, 39.890461, 43.822372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307987, 40.837723, 43.729572>,  <38.874310, 40.326172, 43.638096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307987, 40.837723, 43.729572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.196842, 40.497234, 43.907658>,  <38.130157, 40.292942, 44.014511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.196842, 40.497234, 43.907658>,  <38.307987, 40.837723, 43.729572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196842, 40.497234, 43.907658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196824, 0.504082, 0.840929,
		-0.940242, 0.146030, -0.307605,
		-0.277859, -0.851221, 0.445217,
		38.113483, 40.241867, 44.041222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647766, 40.968834, 44.018200>,  <38.307987, 40.837723, 43.729572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647766, 40.968834, 44.018200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780922, 40.652885, 44.224224>,  <37.860817, 40.463318, 44.347839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780922, 40.652885, 44.224224>,  <37.647766, 40.968834, 44.018200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780922, 40.652885, 44.224224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133926, 0.501076, 0.854977,
		-0.933407, -0.353593, 0.061019,
		0.332889, -0.789870, 0.515064,
		37.880791, 40.415924, 44.378742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189342, 40.710155, 44.472584>,  <37.647766, 40.968834, 44.018200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189342, 40.710155, 44.472584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526493, 40.578484, 44.642857>,  <37.728783, 40.499481, 44.745022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526493, 40.578484, 44.642857>,  <37.189342, 40.710155, 44.472584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526493, 40.578484, 44.642857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247814, 0.464734, 0.850065,
		-0.477656, -0.821986, 0.310135,
		0.842872, -0.329183, 0.425682,
		37.779354, 40.479729, 44.770561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004848, 40.734413, 45.132164>,  <37.189342, 40.710155, 44.472584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004848, 40.734413, 45.132164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395538, 40.659576, 45.174133>,  <37.629951, 40.614674, 45.199314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395538, 40.659576, 45.174133>,  <37.004848, 40.734413, 45.132164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395538, 40.659576, 45.174133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065105, 0.207492, 0.976068,
		-0.204389, -0.960178, 0.190481,
		0.976722, -0.187097, 0.104922,
		37.688557, 40.603447, 45.205608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067509, 40.241352, 45.599216>,  <37.004848, 40.734413, 45.132164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067509, 40.241352, 45.599216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439011, 40.389549, 45.604149>,  <37.661911, 40.478466, 45.607109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439011, 40.389549, 45.604149>,  <37.067509, 40.241352, 45.599216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439011, 40.389549, 45.604149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073903, 0.152468, 0.985542,
		0.363255, -0.916237, 0.168986,
		0.928754, 0.370491, 0.012328,
		37.717636, 40.500698, 45.607845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349281, 40.038223, 46.209259>,  <37.067509, 40.241352, 45.599216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349281, 40.038223, 46.209259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581562, 40.345955, 46.102741>,  <37.720932, 40.530594, 46.038830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581562, 40.345955, 46.102741>,  <37.349281, 40.038223, 46.209259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581562, 40.345955, 46.102741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008270, 0.332651, 0.943014,
		0.814072, -0.545411, 0.199534,
		0.580705, 0.769331, -0.266292,
		37.755775, 40.576756, 46.022854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931911, 39.953327, 46.579552>,  <37.349281, 40.038223, 46.209259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931911, 39.953327, 46.579552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926128, 40.339539, 46.475594>,  <37.922661, 40.571266, 46.413219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926128, 40.339539, 46.475594>,  <37.931911, 39.953327, 46.579552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926128, 40.339539, 46.475594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014982, 0.259686, 0.965577,
		0.999783, 0.017852, 0.010712,
		-0.014456, 0.965528, -0.259898,
		37.921791, 40.629196, 46.397625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392197, 40.282639, 47.109337>,  <37.931911, 39.953327, 46.579552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392197, 40.282639, 47.109337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201286, 40.577183, 46.917511>,  <38.086739, 40.753910, 46.802414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201286, 40.577183, 46.917511>,  <38.392197, 40.282639, 47.109337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201286, 40.577183, 46.917511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026457, 0.557528, 0.829736,
		0.878354, 0.383328, -0.285578,
		-0.477279, 0.736357, -0.479566,
		38.058102, 40.798092, 46.773640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821453, 40.825287, 47.196709>,  <38.392197, 40.282639, 47.109337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821453, 40.825287, 47.196709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.453369, 40.974815, 47.150284>,  <38.232517, 41.064533, 47.122429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.453369, 40.974815, 47.150284>,  <38.821453, 40.825287, 47.196709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453369, 40.974815, 47.150284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044861, 0.395274, 0.917467,
		0.388843, 0.839057, -0.380505,
		-0.920211, 0.373820, -0.116058,
		38.177307, 41.086960, 47.115467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845398, 41.605095, 47.269939>,  <38.821453, 40.825287, 47.196709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845398, 41.605095, 47.269939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479126, 41.477253, 47.367413>,  <38.259361, 41.400547, 47.425896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479126, 41.477253, 47.367413>,  <38.845398, 41.605095, 47.269939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479126, 41.477253, 47.367413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077132, 0.455302, 0.886990,
		-0.394438, 0.830994, -0.392259,
		-0.915680, -0.319607, 0.243685,
		38.204422, 41.381371, 47.440517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547428, 42.163757, 47.583797>,  <38.845398, 41.605095, 47.269939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547428, 42.163757, 47.583797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320354, 41.853390, 47.693844>,  <38.184109, 41.667168, 47.759872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320354, 41.853390, 47.693844>,  <38.547428, 42.163757, 47.583797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320354, 41.853390, 47.693844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076511, 0.382460, 0.920799,
		-0.819684, 0.501673, -0.276482,
		-0.567683, -0.775918, 0.275113,
		38.150051, 41.620613, 47.776379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992168, 42.437984, 47.917454>,  <38.547428, 42.163757, 47.583797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992168, 42.437984, 47.917454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970589, 42.057808, 48.039925>,  <37.957642, 41.829700, 48.113407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970589, 42.057808, 48.039925>,  <37.992168, 42.437984, 47.917454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970589, 42.057808, 48.039925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197541, 0.310725, 0.929746,
		-0.978809, -0.010319, -0.204516,
		-0.053954, -0.950444, 0.306179,
		37.954403, 41.772675, 48.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344975, 42.328468, 48.318356>,  <37.992168, 42.437984, 47.917454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344975, 42.328468, 48.318356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595623, 42.047039, 48.452419>,  <37.746010, 41.878181, 48.532860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595623, 42.047039, 48.452419>,  <37.344975, 42.328468, 48.318356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595623, 42.047039, 48.452419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264525, 0.212516, 0.940672,
		-0.733060, -0.678100, -0.052947,
		0.626617, -0.703574, 0.335161,
		37.783607, 41.835968, 48.552967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961277, 42.105743, 48.936653>,  <37.344975, 42.328468, 48.318356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961277, 42.105743, 48.936653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338184, 41.972675, 48.951912>,  <37.564331, 41.892834, 48.961067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338184, 41.972675, 48.951912>,  <36.961277, 42.105743, 48.936653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338184, 41.972675, 48.951912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018207, 0.062858, 0.997856,
		-0.334359, -0.940945, 0.053172,
		0.942270, -0.332674, 0.038149,
		37.620865, 41.872871, 48.963356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111866, 41.679897, 49.647156>,  <36.961277, 42.105743, 48.936653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111866, 41.679897, 49.647156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.467957, 41.795151, 49.506035>,  <37.681610, 41.864304, 49.421364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.467957, 41.795151, 49.506035>,  <37.111866, 41.679897, 49.647156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467957, 41.795151, 49.506035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298081, 0.217161, 0.929510,
		0.344440, -0.932641, 0.107435,
		0.890229, 0.288136, -0.352801,
		37.735027, 41.881592, 49.400196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546558, 41.261200, 49.412949>,  <37.111866, 41.679897, 49.647156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546558, 41.261200, 49.412949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152206, 41.240524, 49.476658>,  <35.915596, 41.228119, 49.514881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152206, 41.240524, 49.476658>,  <36.546558, 41.261200, 49.412949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152206, 41.240524, 49.476658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068638, -0.742827, -0.665955,
		0.152734, -0.667485, 0.728791,
		-0.985881, -0.051691, 0.159269,
		35.856441, 41.225018, 49.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464497, 40.617817, 49.561031>,  <36.546558, 41.261200, 49.412949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464497, 40.617817, 49.561031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130257, 40.770359, 49.402870>,  <35.929714, 40.861885, 49.307976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130257, 40.770359, 49.402870>,  <36.464497, 40.617817, 49.561031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130257, 40.770359, 49.402870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041911, -0.761932, -0.646300,
		-0.547736, -0.523477, 0.652654,
		-0.835601, 0.381355, -0.395398,
		35.879578, 40.884766, 49.284252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206844, 40.053276, 49.411034>,  <36.464497, 40.617817, 49.561031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206844, 40.053276, 49.411034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991177, 40.321033, 49.206596>,  <35.861778, 40.481689, 49.083935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991177, 40.321033, 49.206596>,  <36.206844, 40.053276, 49.411034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991177, 40.321033, 49.206596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218177, -0.697151, -0.682920,
		-0.813448, -0.256699, 0.521927,
		-0.539167, 0.669392, -0.511090,
		35.829426, 40.521851, 49.053268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509930, 39.731525, 49.367302>,  <36.206844, 40.053276, 49.411034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509930, 39.731525, 49.367302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567181, 39.982651, 49.061264>,  <35.601532, 40.133327, 48.877644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567181, 39.982651, 49.061264>,  <35.509930, 39.731525, 49.367302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567181, 39.982651, 49.061264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224928, -0.732188, -0.642890,
		-0.963806, 0.264104, 0.036419,
		0.143124, 0.627813, -0.765092,
		35.610119, 40.170994, 48.831738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917046, 39.600201, 48.849918>,  <35.509930, 39.731525, 49.367302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917046, 39.600201, 48.849918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188255, 39.799274, 48.633553>,  <35.350983, 39.918716, 48.503731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188255, 39.799274, 48.633553>,  <34.917046, 39.600201, 48.849918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188255, 39.799274, 48.633553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161056, -0.617434, -0.769959,
		-0.717175, 0.609172, -0.338482,
		0.678027, 0.497680, -0.540919,
		35.391663, 39.948578, 48.471275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599838, 39.783794, 48.248070>,  <34.917046, 39.600201, 48.849918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599838, 39.783794, 48.248070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984108, 39.792969, 48.137375>,  <35.214668, 39.798473, 48.070957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984108, 39.792969, 48.137375>,  <34.599838, 39.783794, 48.248070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984108, 39.792969, 48.137375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193902, -0.657958, -0.727663,
		-0.198769, 0.752705, -0.627635,
		0.960673, 0.022937, -0.276733,
		35.272308, 39.799850, 48.054356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538017, 40.008614, 47.527534>,  <34.599838, 39.783794, 48.248070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538017, 40.008614, 47.527534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909744, 39.860901, 47.526402>,  <35.132778, 39.772274, 47.525723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909744, 39.860901, 47.526402>,  <34.538017, 40.008614, 47.527534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909744, 39.860901, 47.526402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156697, -0.387382, -0.908505,
		0.334396, 0.844730, -0.417864,
		0.929315, -0.369278, -0.002828,
		35.188538, 39.750118, 47.525555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931999, 40.185787, 46.955208>,  <34.538017, 40.008614, 47.527534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931999, 40.185787, 46.955208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.151463, 39.863243, 47.043533>,  <35.283142, 39.669716, 47.096527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.151463, 39.863243, 47.043533>,  <34.931999, 40.185787, 46.955208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151463, 39.863243, 47.043533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027668, -0.246458, -0.968758,
		0.835588, 0.537628, -0.112912,
		0.548660, -0.806359, 0.220812,
		35.316059, 39.621334, 47.109776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322487, 40.155041, 46.478008>,  <34.931999, 40.185787, 46.955208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322487, 40.155041, 46.478008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.317253, 39.778221, 46.612099>,  <35.314114, 39.552132, 46.692554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.317253, 39.778221, 46.612099>,  <35.322487, 40.155041, 46.478008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317253, 39.778221, 46.612099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157156, -0.333030, -0.929727,
		0.987487, 0.040515, 0.152406,
		-0.013088, -0.942046, 0.335230,
		35.313328, 39.495609, 46.712669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956509, 39.939865, 46.335583>,  <35.322487, 40.155041, 46.478008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956509, 39.939865, 46.335583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740036, 39.604748, 46.364517>,  <35.610153, 39.403679, 46.381878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740036, 39.604748, 46.364517>,  <35.956509, 39.939865, 46.335583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740036, 39.604748, 46.364517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267891, -0.253306, -0.929554,
		0.797094, -0.483678, 0.361520,
		-0.541180, -0.837790, 0.072335,
		35.577682, 39.353413, 46.386219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357224, 39.462505, 46.099468>,  <35.956509, 39.939865, 46.335583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357224, 39.462505, 46.099468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021469, 39.245472, 46.086628>,  <35.820015, 39.115253, 46.078926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021469, 39.245472, 46.086628>,  <36.357224, 39.462505, 46.099468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021469, 39.245472, 46.086628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240389, -0.317626, -0.917239,
		0.487482, -0.777637, 0.397043,
		-0.839390, -0.542581, -0.032098,
		35.769653, 39.082699, 46.077000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539284, 38.826759, 45.785954>,  <36.357224, 39.462505, 46.099468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539284, 38.826759, 45.785954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143951, 38.806599, 45.728455>,  <35.906754, 38.794502, 45.693954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143951, 38.806599, 45.728455>,  <36.539284, 38.826759, 45.785954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143951, 38.806599, 45.728455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151697, -0.240010, -0.958845,
		0.013829, -0.969461, 0.244856,
		-0.988330, -0.050404, -0.143745,
		35.847454, 38.791477, 45.685329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445686, 38.237080, 45.384605>,  <36.539284, 38.826759, 45.785954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445686, 38.237080, 45.384605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128128, 38.469444, 45.312756>,  <35.937592, 38.608864, 45.269646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128128, 38.469444, 45.312756>,  <36.445686, 38.237080, 45.384605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128128, 38.469444, 45.312756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129219, -0.127474, -0.983388,
		-0.594163, -0.803920, 0.026136,
		-0.793897, 0.580915, -0.179622,
		35.889957, 38.643719, 45.258869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027950, 37.847694, 45.091778>,  <36.445686, 38.237080, 45.384605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027950, 37.847694, 45.091778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907169, 38.216820, 44.996075>,  <35.834702, 38.438293, 44.938652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907169, 38.216820, 44.996075>,  <36.027950, 37.847694, 45.091778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907169, 38.216820, 44.996075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186103, -0.189083, -0.964165,
		-0.934983, -0.335654, -0.114646,
		-0.301948, 0.922813, -0.239255,
		35.816586, 38.493664, 44.924297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538879, 37.795334, 44.579552>,  <36.027950, 37.847694, 45.091778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538879, 37.795334, 44.579552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668407, 38.172848, 44.552982>,  <35.746124, 38.399357, 44.537041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668407, 38.172848, 44.552982>,  <35.538879, 37.795334, 44.579552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668407, 38.172848, 44.552982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103674, -0.105175, -0.989035,
		-0.940421, 0.313384, -0.131904,
		0.323820, 0.943784, -0.066419,
		35.765553, 38.455982, 44.533058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049419, 38.167595, 44.065563>,  <35.538879, 37.795334, 44.579552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049419, 38.167595, 44.065563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386055, 38.383236, 44.078842>,  <35.588036, 38.512619, 44.086811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386055, 38.383236, 44.078842>,  <35.049419, 38.167595, 44.065563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386055, 38.383236, 44.078842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144065, -0.164816, -0.975746,
		-0.520554, 0.825958, -0.216373,
		0.841587, 0.539100, 0.033196,
		35.638531, 38.544968, 44.088802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932140, 38.518925, 43.593651>,  <35.049419, 38.167595, 44.065563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932140, 38.518925, 43.593651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324291, 38.524261, 43.672325>,  <35.559582, 38.527462, 43.719528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324291, 38.524261, 43.672325>,  <34.932140, 38.518925, 43.593651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324291, 38.524261, 43.672325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194442, 0.098978, -0.975908,
		-0.032485, 0.995000, 0.094442,
		0.980376, 0.013339, 0.196685,
		35.618404, 38.528263, 43.731331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229656, 38.876637, 43.034943>,  <34.932140, 38.518925, 43.593651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229656, 38.876637, 43.034943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552956, 38.671642, 43.150936>,  <35.746937, 38.548645, 43.220531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552956, 38.671642, 43.150936>,  <35.229656, 38.876637, 43.034943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552956, 38.671642, 43.150936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239835, -0.163256, -0.956988,
		0.537783, 0.843035, -0.009040,
		0.808250, -0.512484, 0.289986,
		35.795429, 38.517899, 43.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740311, 39.149700, 42.642406>,  <35.229656, 38.876637, 43.034943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740311, 39.149700, 42.642406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905720, 38.804482, 42.758438>,  <36.004967, 38.597351, 42.828056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905720, 38.804482, 42.758438>,  <35.740311, 39.149700, 42.642406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905720, 38.804482, 42.758438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363469, -0.135630, -0.921680,
		0.834799, 0.486569, 0.257606,
		0.413522, -0.863050, 0.290076,
		36.029778, 38.545567, 42.845463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313599, 39.084602, 42.341003>,  <35.740311, 39.149700, 42.642406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313599, 39.084602, 42.341003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276798, 38.692776, 42.412540>,  <36.254719, 38.457680, 42.455463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276798, 38.692776, 42.412540>,  <36.313599, 39.084602, 42.341003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276798, 38.692776, 42.412540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244844, -0.196348, -0.949473,
		0.965187, -0.043565, 0.257905,
		-0.092002, -0.979566, 0.178846,
		36.249199, 38.398907, 42.466194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.021679, 43.316376, 33.837376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751331, 43.374763, 33.548405>,  <44.589123, 43.409798, 33.375023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751331, 43.374763, 33.548405>,  <45.021679, 43.316376, 33.837376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751331, 43.374763, 33.548405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042055, -0.970956, -0.235532,
		-0.735825, -0.189569, 0.650097,
		-0.675865, 0.145971, -0.722426,
		44.548573, 43.418556, 33.331676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477661, 42.813236, 33.874493>,  <45.021679, 43.316376, 33.837376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477661, 42.813236, 33.874493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505917, 42.899406, 33.484909>,  <44.522869, 42.951107, 33.251160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505917, 42.899406, 33.484909>,  <44.477661, 42.813236, 33.874493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505917, 42.899406, 33.484909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240470, -0.943927, -0.226224,
		-0.968082, 0.250190, -0.014878,
		0.070643, 0.215425, -0.973962,
		44.527111, 42.964035, 33.192722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921062, 42.517746, 33.581421>,  <44.477661, 42.813236, 33.874493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921062, 42.517746, 33.581421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135555, 42.557571, 33.246151>,  <44.264252, 42.581467, 33.044987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135555, 42.557571, 33.246151>,  <43.921062, 42.517746, 33.581421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135555, 42.557571, 33.246151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336765, -0.885324, -0.320611,
		-0.773979, 0.454191, -0.441211,
		0.536233, 0.099562, -0.838177,
		44.296425, 42.587440, 32.994698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512745, 42.263107, 33.095169>,  <43.921062, 42.517746, 33.581421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512745, 42.263107, 33.095169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873703, 42.254581, 32.923016>,  <44.090279, 42.249466, 32.819725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873703, 42.254581, 32.923016>,  <43.512745, 42.263107, 33.095169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873703, 42.254581, 32.923016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134537, -0.962782, -0.234414,
		-0.409365, 0.269436, -0.871679,
		0.902397, -0.021312, -0.430379,
		44.144421, 42.248188, 32.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465561, 41.873581, 32.474712>,  <43.512745, 42.263107, 33.095169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465561, 41.873581, 32.474712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856953, 41.871559, 32.557224>,  <44.091789, 41.870346, 32.606731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856953, 41.871559, 32.557224>,  <43.465561, 41.873581, 32.474712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856953, 41.871559, 32.557224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079796, -0.912663, -0.400848,
		0.190290, 0.408682, -0.892619,
		0.978480, -0.005050, 0.206282,
		44.150497, 41.870045, 32.619110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794250, 41.498520, 31.926405>,  <43.465561, 41.873581, 32.474712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794250, 41.498520, 31.926405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069927, 41.467499, 32.214573>,  <44.235332, 41.448887, 32.387474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069927, 41.467499, 32.214573>,  <43.794250, 41.498520, 31.926405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069927, 41.467499, 32.214573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071583, -0.982104, -0.174208,
		0.721036, 0.171633, -0.671305,
		0.689191, -0.077556, 0.720417,
		44.276684, 41.444233, 32.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350334, 41.041092, 31.625982>,  <43.794250, 41.498520, 31.926405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350334, 41.041092, 31.625982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416336, 41.053360, 32.020309>,  <44.455936, 41.060722, 32.256905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416336, 41.053360, 32.020309>,  <44.350334, 41.041092, 31.625982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416336, 41.053360, 32.020309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019611, -0.999421, 0.027810,
		0.986098, 0.014744, -0.165510,
		0.165005, 0.030669, 0.985816,
		44.465839, 41.062561, 32.316055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945354, 40.688629, 31.726410>,  <44.350334, 41.041092, 31.625982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945354, 40.688629, 31.726410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755859, 40.648861, 32.076424>,  <44.642162, 40.625000, 32.286430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755859, 40.648861, 32.076424>,  <44.945354, 40.688629, 31.726410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755859, 40.648861, 32.076424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, -0.994375, -0.104843,
		0.880536, -0.036518, 0.472571,
		-0.473742, -0.099420, 0.875034,
		44.613735, 40.619034, 32.338932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355770, 40.122562, 32.056873>,  <44.945354, 40.688629, 31.726410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355770, 40.122562, 32.056873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.017517, 40.153160, 32.268177>,  <44.814564, 40.171516, 32.394958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.017517, 40.153160, 32.268177>,  <45.355770, 40.122562, 32.056873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017517, 40.153160, 32.268177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091166, -0.954439, 0.284139,
		0.525921, 0.288436, 0.800132,
		-0.845633, 0.076490, 0.528255,
		44.763828, 40.176105, 32.426655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563545, 40.062901, 32.768589>,  <45.355770, 40.122562, 32.056873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563545, 40.062901, 32.768589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.178276, 39.958206, 32.743946>,  <44.947113, 39.895390, 32.729160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.178276, 39.958206, 32.743946>,  <45.563545, 40.062901, 32.768589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178276, 39.958206, 32.743946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199153, -0.848337, 0.490573,
		-0.180661, 0.460238, 0.869220,
		-0.963172, -0.261735, -0.061603,
		44.889324, 39.879684, 32.725464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469109, 39.789043, 33.358997>,  <45.563545, 40.062901, 32.768589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469109, 39.789043, 33.358997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163174, 39.648300, 33.143139>,  <44.979614, 39.563854, 33.013626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163174, 39.648300, 33.143139>,  <45.469109, 39.789043, 33.358997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163174, 39.648300, 33.143139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176791, -0.920146, 0.349393,
		-0.619490, 0.171825, 0.765969,
		-0.764838, -0.351862, -0.539644,
		44.933723, 39.542740, 32.981247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970493, 39.414280, 33.802891>,  <45.469109, 39.789043, 33.358997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970493, 39.414280, 33.802891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900757, 39.266716, 33.437702>,  <44.858913, 39.178177, 33.218590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900757, 39.266716, 33.437702>,  <44.970493, 39.414280, 33.802891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900757, 39.266716, 33.437702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097996, -0.929064, 0.356703,
		-0.979797, -0.027279, 0.198126,
		-0.174341, -0.368912, -0.912967,
		44.848454, 39.156044, 33.163811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563461, 38.904835, 33.963196>,  <44.970493, 39.414280, 33.802891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563461, 38.904835, 33.963196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.679279, 38.811657, 33.591843>,  <44.748772, 38.755749, 33.369030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.679279, 38.811657, 33.591843>,  <44.563461, 38.904835, 33.963196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679279, 38.811657, 33.591843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057943, -0.963889, 0.259923,
		-0.955407, -0.129055, -0.265597,
		0.289551, -0.232943, -0.928385,
		44.766144, 38.741776, 33.313328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121262, 38.347137, 33.827168>,  <44.563461, 38.904835, 33.963196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121262, 38.347137, 33.827168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439362, 38.335796, 33.584919>,  <44.630222, 38.328991, 33.439571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439362, 38.335796, 33.584919>,  <44.121262, 38.347137, 33.827168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439362, 38.335796, 33.584919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059285, -0.990482, 0.124218,
		-0.603377, -0.134688, -0.786000,
		0.795250, -0.028352, -0.605619,
		44.677937, 38.327290, 33.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920937, 37.848896, 33.258236>,  <44.121262, 38.347137, 33.827168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920937, 37.848896, 33.258236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313766, 37.859657, 33.332855>,  <44.549465, 37.866112, 33.377625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313766, 37.859657, 33.332855>,  <43.920937, 37.848896, 33.258236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313766, 37.859657, 33.332855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010020, -0.995814, 0.090851,
		0.188207, -0.087354, -0.978237,
		0.982079, 0.026900, 0.186544,
		44.608391, 37.867729, 33.388817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172028, 37.233627, 32.938786>,  <43.920937, 37.848896, 33.258236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172028, 37.233627, 32.938786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.448788, 37.344257, 33.205551>,  <44.614845, 37.410637, 33.365612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.448788, 37.344257, 33.205551>,  <44.172028, 37.233627, 32.938786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448788, 37.344257, 33.205551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220680, -0.960524, 0.169395,
		0.687439, 0.029970, -0.725624,
		0.691902, 0.276579, 0.666915,
		44.656357, 37.427231, 33.405624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726646, 36.687675, 32.795921>,  <44.172028, 37.233627, 32.938786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726646, 36.687675, 32.795921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817638, 36.872822, 33.138618>,  <44.872234, 36.983910, 33.344238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817638, 36.872822, 33.138618>,  <44.726646, 36.687675, 32.795921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817638, 36.872822, 33.138618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198638, -0.883367, 0.424507,
		0.953309, 0.073617, -0.292887,
		0.227475, 0.462865, 0.856744,
		44.885880, 37.011681, 33.395641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243099, 36.342205, 33.105667>,  <44.726646, 36.687675, 32.795921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243099, 36.342205, 33.105667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101105, 36.543022, 33.421120>,  <45.015907, 36.663513, 33.610390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101105, 36.543022, 33.421120>,  <45.243099, 36.342205, 33.105667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101105, 36.543022, 33.421120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290174, -0.742738, 0.603439,
		0.888697, 0.443055, 0.117986,
		-0.354989, 0.502038, 0.788632,
		44.994606, 36.693634, 33.657711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719349, 36.235107, 33.655083>,  <45.243099, 36.342205, 33.105667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719349, 36.235107, 33.655083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416771, 36.339348, 33.895042>,  <45.235226, 36.401890, 34.039017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416771, 36.339348, 33.895042>,  <45.719349, 36.235107, 33.655083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416771, 36.339348, 33.895042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222379, -0.760085, 0.610589,
		0.615093, 0.595282, 0.517011,
		-0.756445, 0.260597, 0.599901,
		45.189838, 36.417526, 34.075012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879299, 36.045151, 34.343975>,  <45.719349, 36.235107, 33.655083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879299, 36.045151, 34.343975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.479687, 36.062191, 34.348537>,  <45.239922, 36.072414, 34.351276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.479687, 36.062191, 34.348537>,  <45.879299, 36.045151, 34.343975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479687, 36.062191, 34.348537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024115, -0.744335, 0.667371,
		0.036919, 0.666447, 0.744638,
		-0.999027, 0.042596, 0.011409,
		45.179977, 36.074970, 34.351959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616165, 36.018852, 35.090103>,  <45.879299, 36.045151, 34.343975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616165, 36.018852, 35.090103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300514, 35.917820, 34.866146>,  <45.111122, 35.857201, 34.731773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300514, 35.917820, 34.866146>,  <45.616165, 36.018852, 35.090103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300514, 35.917820, 34.866146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098334, -0.847831, 0.521069,
		-0.606303, 0.466248, 0.644212,
		-0.789130, -0.252578, -0.559891,
		45.063774, 35.842045, 34.698177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018990, 35.447689, 35.541470>,  <45.616165, 36.018852, 35.090103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018990, 35.447689, 35.541470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.270981, 35.748718, 35.464767>,  <46.422176, 35.929337, 35.418747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.270981, 35.748718, 35.464767>,  <46.018990, 35.447689, 35.541470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270981, 35.748718, 35.464767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445349, 0.552357, 0.704674,
		0.636237, -0.358525, 0.683127,
		0.629973, 0.752570, -0.191761,
		46.459972, 35.974487, 35.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357544, 35.724590, 36.182526>,  <46.018990, 35.447689, 35.541470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357544, 35.724590, 36.182526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.362183, 36.017464, 35.910122>,  <46.364967, 36.193188, 35.746681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.362183, 36.017464, 35.910122>,  <46.357544, 35.724590, 36.182526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362183, 36.017464, 35.910122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501231, 0.593568, 0.629639,
		0.865236, 0.334040, 0.373877,
		0.011597, 0.732185, -0.681007,
		46.365662, 36.237118, 35.705818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396484, 36.334557, 36.593472>,  <46.357544, 35.724590, 36.182526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396484, 36.334557, 36.593472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.284004, 36.462906, 36.231705>,  <46.216515, 36.539917, 36.014645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.284004, 36.462906, 36.231705>,  <46.396484, 36.334557, 36.593472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284004, 36.462906, 36.231705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474485, 0.772695, 0.421670,
		0.834140, 0.547705, -0.065032,
		-0.281201, 0.320875, -0.904414,
		46.199642, 36.559170, 35.960381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497200, 37.089485, 36.633156>,  <46.396484, 36.334557, 36.593472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497200, 37.089485, 36.633156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.243156, 37.037624, 36.328568>,  <46.090733, 37.006508, 36.145817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.243156, 37.037624, 36.328568>,  <46.497200, 37.089485, 36.633156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243156, 37.037624, 36.328568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558497, 0.758081, 0.336741,
		0.533594, 0.639143, -0.553872,
		-0.635105, -0.129653, -0.761466,
		46.052624, 36.998730, 36.100128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428883, 37.769341, 36.445145>,  <46.497200, 37.089485, 36.633156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428883, 37.769341, 36.445145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.131054, 37.569061, 36.268551>,  <45.952354, 37.448895, 36.162594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.131054, 37.569061, 36.268551>,  <46.428883, 37.769341, 36.445145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131054, 37.569061, 36.268551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626132, 0.753141, 0.201833,
		0.231442, 0.426707, -0.874274,
		-0.744575, -0.500699, -0.441484,
		45.907681, 37.418850, 36.136105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179287, 38.213211, 35.866165>,  <46.428883, 37.769341, 36.445145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179287, 38.213211, 35.866165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.907871, 37.955364, 36.007050>,  <45.745022, 37.800655, 36.091579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.907871, 37.955364, 36.007050>,  <46.179287, 38.213211, 35.866165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907871, 37.955364, 36.007050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639806, 0.754199, 0.147754,
		-0.360885, -0.125093, -0.924183,
		-0.678535, -0.644620, 0.352214,
		45.704311, 37.761978, 36.112713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506241, 38.311783, 35.496525>,  <46.179287, 38.213211, 35.866165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506241, 38.311783, 35.496525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413719, 38.126049, 35.838493>,  <45.358208, 38.014610, 36.043674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413719, 38.126049, 35.838493>,  <45.506241, 38.311783, 35.496525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413719, 38.126049, 35.838493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413722, 0.842284, 0.345532,
		-0.880530, -0.273778, -0.386926,
		-0.231303, -0.464331, 0.854924,
		45.344330, 37.986752, 36.094971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812496, 38.473133, 35.638458>,  <45.506241, 38.311783, 35.496525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812496, 38.473133, 35.638458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.966541, 38.356182, 35.988590>,  <45.058968, 38.286011, 36.198669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.966541, 38.356182, 35.988590>,  <44.812496, 38.473133, 35.638458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966541, 38.356182, 35.988590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277193, 0.868044, 0.411902,
		-0.880256, -0.401265, 0.253250,
		0.385114, -0.292381, 0.875329,
		45.082077, 38.268467, 36.251190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298847, 38.618393, 36.073734>,  <44.812496, 38.473133, 35.638458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298847, 38.618393, 36.073734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628464, 38.596165, 36.299252>,  <44.826233, 38.582829, 36.434563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628464, 38.596165, 36.299252>,  <44.298847, 38.618393, 36.073734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628464, 38.596165, 36.299252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248414, 0.858962, 0.447744,
		-0.509159, -0.509015, 0.694018,
		0.824043, -0.055569, 0.563795,
		44.875675, 38.579494, 36.468391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069923, 38.814125, 36.681099>,  <44.298847, 38.618393, 36.073734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069923, 38.814125, 36.681099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.463936, 38.857601, 36.734619>,  <44.700344, 38.883686, 36.766731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.463936, 38.857601, 36.734619>,  <44.069923, 38.814125, 36.681099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463936, 38.857601, 36.734619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162574, 0.843824, 0.511401,
		-0.057320, -0.525497, 0.848862,
		0.985030, 0.108689, 0.133800,
		44.759445, 38.890209, 36.774757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187759, 39.086750, 37.416336>,  <44.069923, 38.814125, 36.681099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187759, 39.086750, 37.416336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503258, 39.182453, 37.189835>,  <44.692554, 39.239876, 37.053932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503258, 39.182453, 37.189835>,  <44.187759, 39.086750, 37.416336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503258, 39.182453, 37.189835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000690, 0.921494, 0.388392,
		0.614723, -0.305951, 0.726987,
		0.788743, 0.239255, -0.566253,
		44.739880, 39.254230, 37.019958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515652, 39.496651, 37.874092>,  <44.187759, 39.086750, 37.416336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515652, 39.496651, 37.874092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650673, 39.547802, 37.501060>,  <44.731686, 39.578491, 37.277241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650673, 39.547802, 37.501060>,  <44.515652, 39.496651, 37.874092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650673, 39.547802, 37.501060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114766, 0.977747, 0.175612,
		0.934285, -0.166306, 0.315362,
		0.337549, 0.127879, -0.932581,
		44.751938, 39.586166, 37.221287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784866, 40.087589, 37.994774>,  <44.515652, 39.496651, 37.874092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784866, 40.087589, 37.994774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782505, 40.055290, 37.596088>,  <44.781090, 40.035912, 37.356876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782505, 40.055290, 37.596088>,  <44.784866, 40.087589, 37.994774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782505, 40.055290, 37.596088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031285, 0.996261, -0.080526,
		0.999493, 0.030707, -0.008407,
		-0.005903, -0.080748, -0.996717,
		44.780735, 40.031067, 37.297073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288055, 40.481098, 37.800934>,  <44.784866, 40.087589, 37.994774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288055, 40.481098, 37.800934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035187, 40.447109, 37.492870>,  <44.883465, 40.426716, 37.308033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035187, 40.447109, 37.492870>,  <45.288055, 40.481098, 37.800934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035187, 40.447109, 37.492870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031059, 0.995949, -0.084388,
		0.774207, -0.029427, -0.632248,
		-0.632170, -0.084971, -0.770157,
		44.845535, 40.421619, 37.261822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470486, 40.961670, 37.330204>,  <45.288055, 40.481098, 37.800934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470486, 40.961670, 37.330204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084805, 40.894802, 37.247871>,  <44.853397, 40.854683, 37.198471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084805, 40.894802, 37.247871>,  <45.470486, 40.961670, 37.330204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084805, 40.894802, 37.247871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117026, 0.964831, -0.235384,
		0.237943, -0.202870, -0.949856,
		-0.964203, -0.167166, -0.205834,
		44.795544, 40.844654, 37.186123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498146, 41.194603, 36.651257>,  <45.470486, 40.961670, 37.330204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498146, 41.194603, 36.651257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131454, 41.180187, 36.810406>,  <44.911438, 41.171539, 36.905895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131454, 41.180187, 36.810406>,  <45.498146, 41.194603, 36.651257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131454, 41.180187, 36.810406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169919, 0.936524, -0.306676,
		-0.361564, -0.348746, -0.864666,
		-0.916733, -0.036041, 0.397872,
		44.856434, 41.169376, 36.929768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161007, 41.792679, 36.455441>,  <45.498146, 41.194603, 36.651257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161007, 41.792679, 36.455441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894939, 41.676262, 36.730495>,  <44.735298, 41.606411, 36.895527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894939, 41.676262, 36.730495>,  <45.161007, 41.792679, 36.455441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894939, 41.676262, 36.730495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434268, 0.899931, -0.039182,
		-0.607423, -0.324681, -0.724996,
		-0.665168, -0.291043, 0.687638,
		44.695389, 41.588947, 36.936787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518864, 41.847775, 36.091125>,  <45.161007, 41.792679, 36.455441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518864, 41.847775, 36.091125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466713, 41.853954, 36.487663>,  <44.435421, 41.857662, 36.725586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466713, 41.853954, 36.487663>,  <44.518864, 41.847775, 36.091125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466713, 41.853954, 36.487663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650123, 0.753581, -0.097244,
		-0.748560, -0.657174, -0.088205,
		-0.130375, 0.015449, 0.991344,
		44.427601, 41.858589, 36.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794685, 41.849873, 36.240025>,  <44.518864, 41.847775, 36.091125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794685, 41.849873, 36.240025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987316, 42.015923, 36.548763>,  <44.102894, 42.115555, 36.734005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987316, 42.015923, 36.548763>,  <43.794685, 41.849873, 36.240025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987316, 42.015923, 36.548763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603823, 0.795479, -0.051095,
		-0.635200, -0.441453, 0.633751,
		0.481580, 0.415129, 0.771848,
		44.131790, 42.140461, 36.780319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193268, 41.993523, 36.646637>,  <43.794685, 41.849873, 36.240025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193268, 41.993523, 36.646637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486645, 42.224182, 36.790604>,  <43.662670, 42.362579, 36.876984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486645, 42.224182, 36.790604>,  <43.193268, 41.993523, 36.646637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486645, 42.224182, 36.790604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617567, 0.786517, -0.001650,
		-0.284031, -0.221062, 0.932983,
		0.733442, 0.576648, 0.359916,
		43.706676, 42.397175, 36.898579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888664, 42.379562, 37.225491>,  <43.193268, 41.993523, 36.646637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888664, 42.379562, 37.225491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209915, 42.582550, 37.100613>,  <43.402664, 42.704342, 37.025688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209915, 42.582550, 37.100613>,  <42.888664, 42.379562, 37.225491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209915, 42.582550, 37.100613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524761, 0.850621, 0.032716,
		0.282159, 0.137551, 0.949456,
		0.803126, 0.507468, -0.312191,
		43.450851, 42.734791, 37.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.285252, 37.692066, 39.034580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018784, 37.394825, 39.059902>,  <40.858902, 37.216480, 39.075096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018784, 37.394825, 39.059902>,  <41.285252, 37.692066, 39.034580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018784, 37.394825, 39.059902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475393, -0.488510, -0.731683,
		0.574646, -0.457329, 0.678699,
		-0.666171, -0.743107, 0.063309,
		40.818932, 37.171894, 39.078896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615089, 37.175179, 38.675640>,  <41.285252, 37.692066, 39.034580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615089, 37.175179, 38.675640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250542, 37.019562, 38.729393>,  <41.031815, 36.926193, 38.761646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250542, 37.019562, 38.729393>,  <41.615089, 37.175179, 38.675640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250542, 37.019562, 38.729393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134706, -0.590438, -0.795762,
		0.388931, -0.707128, 0.590511,
		-0.911366, -0.389042, 0.134386,
		40.977131, 36.902847, 38.769711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730530, 36.425747, 38.690990>,  <41.615089, 37.175179, 38.675640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730530, 36.425747, 38.690990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355534, 36.514797, 38.583988>,  <41.130535, 36.568226, 38.519787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355534, 36.514797, 38.583988>,  <41.730530, 36.425747, 38.690990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355534, 36.514797, 38.583988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108684, -0.542924, -0.832720,
		-0.330617, -0.809736, 0.484788,
		-0.937486, 0.222623, -0.267505,
		41.074287, 36.581585, 38.503738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491760, 35.808201, 38.416985>,  <41.730530, 36.425747, 38.690990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491760, 35.808201, 38.416985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246147, 36.097095, 38.289654>,  <41.098778, 36.270432, 38.213253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246147, 36.097095, 38.289654>,  <41.491760, 35.808201, 38.416985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246147, 36.097095, 38.289654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014070, -0.413270, -0.910500,
		-0.789154, -0.554600, 0.263924,
		-0.614035, 0.722238, -0.318331,
		41.061935, 36.313766, 38.194153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084694, 35.375172, 37.925583>,  <41.491760, 35.808201, 38.416985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084694, 35.375172, 37.925583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042820, 35.759514, 37.822983>,  <41.017696, 35.990120, 37.761425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042820, 35.759514, 37.822983>,  <41.084694, 35.375172, 37.925583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042820, 35.759514, 37.822983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022812, -0.255527, -0.966533,
		-0.994243, -0.107036, 0.004832,
		-0.104689, 0.960859, -0.256497,
		41.011414, 36.047771, 37.746033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759510, 35.346096, 37.316238>,  <41.084694, 35.375172, 37.925583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759510, 35.346096, 37.316238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864864, 35.731915, 37.309696>,  <40.928078, 35.963406, 37.305771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864864, 35.731915, 37.309696>,  <40.759510, 35.346096, 37.316238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864864, 35.731915, 37.309696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192071, -0.069044, -0.978949,
		-0.945375, 0.254705, -0.203448,
		0.263390, 0.964551, -0.016351,
		40.943882, 36.021278, 37.304790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323666, 35.654640, 36.848301>,  <40.759510, 35.346096, 37.316238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323666, 35.654640, 36.848301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652786, 35.879898, 36.878933>,  <40.850258, 36.015053, 36.897312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652786, 35.879898, 36.878933>,  <40.323666, 35.654640, 36.848301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652786, 35.879898, 36.878933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135100, -0.062925, -0.988832,
		-0.552033, 0.823961, -0.127855,
		0.822804, 0.563141, 0.076580,
		40.899628, 36.048840, 36.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185287, 36.305099, 36.514679>,  <40.323666, 35.654640, 36.848301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185287, 36.305099, 36.514679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577606, 36.227501, 36.522755>,  <40.812996, 36.180943, 36.527599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577606, 36.227501, 36.522755>,  <40.185287, 36.305099, 36.514679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577606, 36.227501, 36.522755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032602, -0.265099, -0.963670,
		0.192300, 0.944504, -0.266332,
		0.980794, -0.193997, 0.020186,
		40.871845, 36.169300, 36.528809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452175, 36.745739, 36.035934>,  <40.185287, 36.305099, 36.514679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452175, 36.745739, 36.035934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694481, 36.435001, 36.104702>,  <40.839863, 36.248558, 36.145962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694481, 36.435001, 36.104702>,  <40.452175, 36.745739, 36.035934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694481, 36.435001, 36.104702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104992, -0.136142, -0.985110,
		0.788687, 0.614795, -0.000907,
		0.605764, -0.776848, 0.171922,
		40.876209, 36.201946, 36.156277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795914, 36.691532, 35.378860>,  <40.452175, 36.745739, 36.035934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795914, 36.691532, 35.378860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914909, 36.364613, 35.576252>,  <40.986305, 36.168461, 35.694687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914909, 36.364613, 35.576252>,  <40.795914, 36.691532, 35.378860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914909, 36.364613, 35.576252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347128, -0.388915, -0.853374,
		0.889384, 0.425168, 0.168010,
		0.297486, -0.817298, 0.493483,
		41.004154, 36.119423, 35.724297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466965, 36.469009, 35.127918>,  <40.795914, 36.691532, 35.378860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466965, 36.469009, 35.127918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277557, 36.145046, 35.266376>,  <41.163914, 35.950668, 35.349453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277557, 36.145046, 35.266376>,  <41.466965, 36.469009, 35.127918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277557, 36.145046, 35.266376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108191, -0.443511, -0.889715,
		0.874113, -0.383848, 0.297637,
		-0.473520, -0.809913, 0.346150,
		41.135502, 35.902073, 35.370220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963444, 36.066334, 34.965752>,  <41.466965, 36.469009, 35.127918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963444, 36.066334, 34.965752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618645, 35.871635, 35.022377>,  <41.411766, 35.754818, 35.056351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618645, 35.871635, 35.022377>,  <41.963444, 36.066334, 34.965752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618645, 35.871635, 35.022377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003094, -0.284306, -0.958729,
		0.506899, -0.825986, 0.246578,
		-0.862000, -0.486742, 0.141559,
		41.360046, 35.725613, 35.064846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935944, 35.313820, 34.742085>,  <41.963444, 36.066334, 34.965752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935944, 35.313820, 34.742085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585598, 35.506340, 34.728149>,  <41.375389, 35.621853, 34.719788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585598, 35.506340, 34.728149>,  <41.935944, 35.313820, 34.742085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585598, 35.506340, 34.728149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054674, -0.170707, -0.983804,
		-0.479448, -0.859775, 0.175831,
		-0.875865, 0.481296, -0.034838,
		41.322838, 35.650730, 34.717697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291416, 34.733829, 35.131790>,  <41.935944, 35.313820, 34.742085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291416, 34.733829, 35.131790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282658, 34.345730, 35.035343>,  <42.277401, 34.112869, 34.977474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282658, 34.345730, 35.035343>,  <42.291416, 34.733829, 35.131790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282658, 34.345730, 35.035343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221491, -0.230477, 0.947535,
		-0.974917, 0.074154, -0.209854,
		-0.021897, -0.970248, -0.241120,
		42.276089, 34.054657, 34.963009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617435, 34.494823, 35.127193>,  <42.291416, 34.733829, 35.131790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617435, 34.494823, 35.127193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876614, 34.202911, 35.214447>,  <42.032120, 34.027763, 35.266800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876614, 34.202911, 35.214447>,  <41.617435, 34.494823, 35.127193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876614, 34.202911, 35.214447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445630, -0.130953, 0.885587,
		-0.617718, -0.671023, -0.410063,
		0.647949, -0.729780, 0.218136,
		42.070999, 33.983978, 35.279888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310230, 33.924019, 35.147053>,  <41.617435, 34.494823, 35.127193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310230, 33.924019, 35.147053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637035, 33.910954, 35.377331>,  <41.833118, 33.903114, 35.515499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637035, 33.910954, 35.377331>,  <41.310230, 33.924019, 35.147053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637035, 33.910954, 35.377331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557406, -0.300349, 0.774008,
		0.147626, -0.953270, -0.263597,
		0.817010, -0.032666, 0.575698,
		41.882137, 33.901154, 35.550041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117493, 33.416660, 35.666481>,  <41.310230, 33.924019, 35.147053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117493, 33.416660, 35.666481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448887, 33.560383, 35.838299>,  <41.647724, 33.646618, 35.941391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448887, 33.560383, 35.838299>,  <41.117493, 33.416660, 35.666481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448887, 33.560383, 35.838299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251765, -0.446169, 0.858806,
		0.500224, -0.819654, -0.279185,
		0.828487, 0.359306, 0.429545,
		41.697433, 33.668175, 35.967163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425556, 32.782471, 35.929832>,  <41.117493, 33.416660, 35.666481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425556, 32.782471, 35.929832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529190, 33.117840, 36.121632>,  <41.591370, 33.319061, 36.236710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529190, 33.117840, 36.121632>,  <41.425556, 32.782471, 35.929832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529190, 33.117840, 36.121632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221656, -0.431582, 0.874417,
		0.940075, -0.332834, 0.074024,
		0.259088, 0.838426, 0.479494,
		41.606918, 33.369370, 36.265480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816460, 32.591518, 36.542793>,  <41.425556, 32.782471, 35.929832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816460, 32.591518, 36.542793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687195, 32.960922, 36.625443>,  <41.609638, 33.182564, 36.675034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687195, 32.960922, 36.625443>,  <41.816460, 32.591518, 36.542793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687195, 32.960922, 36.625443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167172, -0.270615, 0.948062,
		0.931462, 0.271832, 0.241837,
		-0.323158, 0.923512, 0.206625,
		41.590248, 33.237976, 36.687431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050282, 32.800652, 37.204414>,  <41.816460, 32.591518, 36.542793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050282, 32.800652, 37.204414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754341, 33.069054, 37.184933>,  <41.576778, 33.230095, 37.173244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754341, 33.069054, 37.184933>,  <42.050282, 32.800652, 37.204414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754341, 33.069054, 37.184933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070342, -0.005154, 0.997510,
		0.669085, 0.741433, 0.051013,
		-0.739850, 0.671007, -0.048706,
		41.532387, 33.270355, 37.170322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092472, 32.978504, 37.856003>,  <42.050282, 32.800652, 37.204414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092472, 32.978504, 37.856003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761875, 33.174217, 37.744640>,  <41.563515, 33.291645, 37.677822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761875, 33.174217, 37.744640>,  <42.092472, 32.978504, 37.856003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761875, 33.174217, 37.744640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244830, 0.132920, 0.960412,
		0.506918, 0.861937, 0.009934,
		-0.826494, 0.489282, -0.278408,
		41.513927, 33.321003, 37.661118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028748, 33.560593, 38.319221>,  <42.092472, 32.978504, 37.856003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028748, 33.560593, 38.319221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660580, 33.559429, 38.162857>,  <41.439678, 33.558731, 38.069038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660580, 33.559429, 38.162857>,  <42.028748, 33.560593, 38.319221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660580, 33.559429, 38.162857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383561, 0.199835, 0.901636,
		0.075498, 0.979825, -0.185048,
		-0.920424, -0.002906, -0.390910,
		41.384453, 33.558556, 38.045586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737625, 34.214096, 38.504353>,  <42.028748, 33.560593, 38.319221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737625, 34.214096, 38.504353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456509, 33.937546, 38.437305>,  <41.287842, 33.771618, 38.397076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456509, 33.937546, 38.437305>,  <41.737625, 34.214096, 38.504353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456509, 33.937546, 38.437305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505263, 0.319222, 0.801752,
		-0.500800, 0.648153, -0.573669,
		-0.702786, -0.691371, -0.167621,
		41.245674, 33.730133, 38.387020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051495, 34.603863, 38.501259>,  <41.737625, 34.214096, 38.504353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051495, 34.603863, 38.501259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973259, 34.218227, 38.573128>,  <40.926319, 33.986847, 38.616249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973259, 34.218227, 38.573128>,  <41.051495, 34.603863, 38.501259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973259, 34.218227, 38.573128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677519, 0.265297, 0.685992,
		-0.709023, 0.012437, -0.705076,
		-0.195586, -0.964087, 0.179675,
		40.914581, 33.929001, 38.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423084, 34.511528, 38.458591>,  <41.051495, 34.603863, 38.501259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423084, 34.511528, 38.458591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525509, 34.198124, 38.685059>,  <40.586964, 34.010082, 38.820938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525509, 34.198124, 38.685059>,  <40.423084, 34.511528, 38.458591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525509, 34.198124, 38.685059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725920, 0.230902, 0.647861,
		-0.638335, -0.576884, -0.509641,
		0.256064, -0.783511, 0.566164,
		40.602329, 33.963070, 38.854908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861061, 34.254269, 38.705681>,  <40.423084, 34.511528, 38.458591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861061, 34.254269, 38.705681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123314, 34.126534, 38.979374>,  <40.280666, 34.049892, 39.143589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123314, 34.126534, 38.979374>,  <39.861061, 34.254269, 38.705681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123314, 34.126534, 38.979374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677125, 0.152346, 0.719925,
		-0.334137, -0.935316, -0.116347,
		0.655632, -0.319335, 0.684230,
		40.320004, 34.030731, 39.184643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510849, 33.843887, 39.146229>,  <39.861061, 34.254269, 38.705681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510849, 33.843887, 39.146229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824139, 33.979855, 39.354465>,  <40.012112, 34.061436, 39.479408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824139, 33.979855, 39.354465>,  <39.510849, 33.843887, 39.146229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824139, 33.979855, 39.354465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596579, 0.175083, 0.783224,
		0.175083, -0.924014, 0.339916,
		-0.783224, -0.339916, -0.520593,
		40.059105, 34.081829, 39.510643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277275, 33.843880, 39.897964>,  <39.510849, 33.843887, 39.146229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277275, 33.843880, 39.897964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632877, 34.012386, 39.969742>,  <39.846241, 34.113491, 40.012810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632877, 34.012386, 39.969742>,  <39.277275, 33.843880, 39.897964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632877, 34.012386, 39.969742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315989, 0.280807, 0.906255,
		0.331392, -0.862367, 0.382756,
		0.889005, 0.421273, 0.179441,
		39.899578, 34.138767, 40.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321201, 33.169903, 40.273998>,  <39.277275, 33.843880, 39.897964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321201, 33.169903, 40.273998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118866, 32.827606, 40.317505>,  <38.997467, 32.622227, 40.343609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118866, 32.827606, 40.317505>,  <39.321201, 33.169903, 40.273998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118866, 32.827606, 40.317505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058099, -0.159593, -0.985472,
		0.860671, -0.492167, 0.130446,
		-0.505835, -0.855746, 0.108763,
		38.967113, 32.570881, 40.350132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655643, 32.686470, 39.920887>,  <39.321201, 33.169903, 40.273998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655643, 32.686470, 39.920887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307549, 32.492901, 39.957787>,  <39.098690, 32.376759, 39.979927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307549, 32.492901, 39.957787>,  <39.655643, 32.686470, 39.920887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307549, 32.492901, 39.957787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022642, -0.226356, -0.973782,
		0.492113, -0.845332, 0.207940,
		-0.870237, -0.483919, 0.092253,
		39.046478, 32.347725, 39.985462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786938, 32.024307, 39.647369>,  <39.655643, 32.686470, 39.920887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786938, 32.024307, 39.647369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391525, 32.084705, 39.645939>,  <39.154278, 32.120945, 39.645081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391525, 32.084705, 39.645939>,  <39.786938, 32.024307, 39.647369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391525, 32.084705, 39.645939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006822, -0.068324, -0.997640,
		-0.150885, -0.986170, 0.068571,
		-0.988528, 0.150997, -0.003581,
		39.094967, 32.130005, 39.644863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440617, 31.302006, 39.255985>,  <39.786938, 32.024307, 39.647369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440617, 31.302006, 39.255985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177696, 31.603378, 39.262951>,  <39.019943, 31.784203, 39.267132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177696, 31.603378, 39.262951>,  <39.440617, 31.302006, 39.255985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177696, 31.603378, 39.262951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142727, -0.101762, -0.984517,
		-0.739994, -0.649605, 0.174422,
		-0.657296, 0.753431, 0.017413,
		38.980507, 31.829407, 39.268173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776283, 31.078920, 38.785965>,  <39.440617, 31.302006, 39.255985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776283, 31.078920, 38.785965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759148, 31.477858, 38.809540>,  <38.748867, 31.717220, 38.823685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759148, 31.477858, 38.809540>,  <38.776283, 31.078920, 38.785965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759148, 31.477858, 38.809540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230228, 0.047544, -0.971974,
		-0.972193, -0.055210, 0.227580,
		-0.042842, 0.997342, 0.058933,
		38.746296, 31.777060, 38.827221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262409, 31.196602, 38.375210>,  <38.776283, 31.078920, 38.785965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262409, 31.196602, 38.375210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451271, 31.546572, 38.418259>,  <38.564587, 31.756554, 38.444088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451271, 31.546572, 38.418259>,  <38.262409, 31.196602, 38.375210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451271, 31.546572, 38.418259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142349, 0.196156, -0.970185,
		-0.869948, 0.442755, 0.217160,
		0.472151, 0.874923, 0.107620,
		38.592915, 31.809050, 38.450546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878143, 31.618380, 38.079372>,  <38.262409, 31.196602, 38.375210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878143, 31.618380, 38.079372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220936, 31.824312, 38.088562>,  <38.426613, 31.947872, 38.094074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220936, 31.824312, 38.088562>,  <37.878143, 31.618380, 38.079372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220936, 31.824312, 38.088562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165565, 0.317263, -0.933773,
		-0.488025, 0.796424, 0.357128,
		0.856983, 0.514833, 0.022972,
		38.478031, 31.978762, 38.095455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736004, 32.312656, 37.817471>,  <37.878143, 31.618380, 38.079372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736004, 32.312656, 37.817471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125259, 32.236832, 37.765221>,  <38.358814, 32.191338, 37.733871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125259, 32.236832, 37.765221>,  <37.736004, 32.312656, 37.817471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125259, 32.236832, 37.765221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061161, 0.334138, -0.940538,
		0.221932, 0.923266, 0.313571,
		0.973142, -0.189557, -0.130624,
		38.417202, 32.179966, 37.726032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995506, 32.909260, 37.460163>,  <37.736004, 32.312656, 37.817471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995506, 32.909260, 37.460163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247025, 32.607037, 37.386673>,  <38.397934, 32.425701, 37.342579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247025, 32.607037, 37.386673>,  <37.995506, 32.909260, 37.460163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247025, 32.607037, 37.386673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088031, 0.165588, -0.982258,
		0.772574, 0.633810, 0.037608,
		0.628792, -0.755557, -0.183724,
		38.435661, 32.380371, 37.331554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282970, 33.106152, 36.841202>,  <37.995506, 32.909260, 37.460163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282970, 33.106152, 36.841202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409286, 32.726639, 36.844898>,  <38.485077, 32.498932, 36.847115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409286, 32.726639, 36.844898>,  <38.282970, 33.106152, 36.841202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409286, 32.726639, 36.844898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004374, -0.011194, -0.999928,
		0.948820, 0.315725, -0.007685,
		0.315788, -0.948785, 0.009240,
		38.504025, 32.442005, 36.847672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788322, 33.090893, 36.325451>,  <38.282970, 33.106152, 36.841202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788322, 33.090893, 36.325451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629734, 32.730087, 36.393795>,  <38.534580, 32.513603, 36.434799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629734, 32.730087, 36.393795>,  <38.788322, 33.090893, 36.325451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629734, 32.730087, 36.393795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018557, -0.178195, -0.983820,
		0.917860, -0.393225, 0.053910,
		-0.396469, -0.902009, 0.170856,
		38.510792, 32.459484, 36.445053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160748, 32.655949, 35.927559>,  <38.788322, 33.090893, 36.325451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160748, 32.655949, 35.927559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811176, 32.478699, 36.007458>,  <38.601433, 32.372349, 36.055397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811176, 32.478699, 36.007458>,  <39.160748, 32.655949, 35.927559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811176, 32.478699, 36.007458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138360, -0.167160, -0.976173,
		0.465954, -0.880738, 0.084774,
		-0.873924, -0.443123, 0.199748,
		38.549000, 32.345760, 36.067383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.658775, 33.177975, 44.145130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274147, 33.078182, 44.099258>,  <39.043369, 33.018307, 44.071735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274147, 33.078182, 44.099258>,  <39.658775, 33.177975, 44.145130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274147, 33.078182, 44.099258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217062, -0.434919, -0.873916,
		0.168151, -0.865219, 0.472356,
		-0.961566, -0.249481, -0.114674,
		38.985676, 33.003338, 44.064857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633377, 32.400051, 43.881176>,  <39.658775, 33.177975, 44.145130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633377, 32.400051, 43.881176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.278309, 32.565178, 43.799572>,  <39.065266, 32.664253, 43.750610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.278309, 32.565178, 43.799572>,  <39.633377, 32.400051, 43.881176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278309, 32.565178, 43.799572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018191, -0.411258, -0.911337,
		-0.460115, -0.812681, 0.357554,
		-0.887673, 0.412815, -0.204009,
		39.012005, 32.689022, 43.738369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379009, 31.875666, 43.393272>,  <39.633377, 32.400051, 43.881176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379009, 31.875666, 43.393272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151089, 32.203484, 43.369038>,  <39.014336, 32.400173, 43.354496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151089, 32.203484, 43.369038>,  <39.379009, 31.875666, 43.393272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151089, 32.203484, 43.369038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052579, -0.109932, -0.992547,
		-0.820096, -0.562373, 0.105730,
		-0.569805, 0.819543, -0.060585,
		38.980148, 32.449348, 43.350861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731228, 31.684765, 43.070312>,  <39.379009, 31.875666, 43.393272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731228, 31.684765, 43.070312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801762, 32.071568, 42.996773>,  <38.844082, 32.303650, 42.952648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801762, 32.071568, 42.996773>,  <38.731228, 31.684765, 43.070312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801762, 32.071568, 42.996773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190040, -0.149821, -0.970278,
		-0.965810, 0.206037, 0.157351,
		0.176338, 0.967007, -0.183853,
		38.854664, 32.361671, 42.941616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231041, 31.928104, 42.651649>,  <38.731228, 31.684765, 43.070312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231041, 31.928104, 42.651649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.514317, 32.201054, 42.579166>,  <38.684284, 32.364822, 42.535675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.514317, 32.201054, 42.579166>,  <38.231041, 31.928104, 42.651649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514317, 32.201054, 42.579166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126539, -0.129827, -0.983429,
		-0.694589, 0.719385, -0.005596,
		0.708191, 0.682371, -0.181207,
		38.726772, 32.405766, 42.524803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889740, 32.185768, 42.093655>,  <38.231041, 31.928104, 42.651649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889740, 32.185768, 42.093655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269905, 32.307072, 42.066101>,  <38.498005, 32.379852, 42.049568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269905, 32.307072, 42.066101>,  <37.889740, 32.185768, 42.093655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269905, 32.307072, 42.066101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033034, -0.121803, -0.992004,
		-0.309222, 0.945092, -0.105746,
		0.950416, 0.303257, -0.068885,
		38.555031, 32.398048, 42.045437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867153, 32.626312, 41.524120>,  <37.889740, 32.185768, 42.093655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867153, 32.626312, 41.524120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258682, 32.563202, 41.576309>,  <38.493599, 32.525337, 41.607620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258682, 32.563202, 41.576309>,  <37.867153, 32.626312, 41.524120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258682, 32.563202, 41.576309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138920, 0.043729, -0.989338,
		0.150384, 0.986507, 0.064720,
		0.978819, -0.157772, 0.130469,
		38.552326, 32.515869, 41.615448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173973, 33.172272, 41.155987>,  <37.867153, 32.626312, 41.524120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173973, 33.172272, 41.155987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453098, 32.887417, 41.186756>,  <38.620575, 32.716503, 41.205219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453098, 32.887417, 41.186756>,  <38.173973, 33.172272, 41.155987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453098, 32.887417, 41.186756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136155, 0.026437, -0.990335,
		0.703221, 0.701542, 0.115409,
		0.697813, -0.712137, 0.076927,
		38.662441, 32.673775, 41.209835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690254, 33.340656, 40.645012>,  <38.173973, 33.172272, 41.155987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690254, 33.340656, 40.645012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.724480, 32.948673, 40.716961>,  <38.745014, 32.713482, 40.760128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.724480, 32.948673, 40.716961>,  <38.690254, 33.340656, 40.645012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724480, 32.948673, 40.716961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085417, -0.172651, -0.981272,
		0.992664, 0.099328, 0.068933,
		0.085566, -0.979962, 0.179868,
		38.750149, 32.654686, 40.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330528, 33.816738, 40.649448>,  <38.690254, 33.340656, 40.645012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330528, 33.816738, 40.649448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617271, 34.077881, 40.551548>,  <39.789318, 34.234566, 40.492809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617271, 34.077881, 40.551548>,  <39.330528, 33.816738, 40.649448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617271, 34.077881, 40.551548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354033, 0.643252, 0.678887,
		0.600648, -0.400016, 0.692250,
		0.716856, 0.652851, -0.244749,
		39.832329, 34.273735, 40.478123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643620, 33.997971, 41.322884>,  <39.330528, 33.816738, 40.649448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643620, 33.997971, 41.322884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.735561, 34.293533, 41.069527>,  <39.790726, 34.470871, 40.917511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.735561, 34.293533, 41.069527>,  <39.643620, 33.997971, 41.322884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735561, 34.293533, 41.069527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232320, 0.673663, 0.701574,
		0.945089, -0.014113, 0.326509,
		0.229859, 0.738904, -0.633392,
		39.804520, 34.515205, 40.879509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149220, 34.334923, 41.663223>,  <39.643620, 33.997971, 41.322884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149220, 34.334923, 41.663223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.011269, 34.615498, 41.413731>,  <39.928497, 34.783844, 41.264034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.011269, 34.615498, 41.413731>,  <40.149220, 34.334923, 41.663223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011269, 34.615498, 41.413731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010738, 0.667409, 0.744614,
		0.938587, 0.250102, -0.237705,
		-0.344875, 0.701438, -0.623736,
		39.907806, 34.825928, 41.226608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533234, 34.868156, 41.907734>,  <40.149220, 34.334923, 41.663223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533234, 34.868156, 41.907734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233028, 35.027168, 41.696568>,  <40.052906, 35.122578, 41.569866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233028, 35.027168, 41.696568>,  <40.533234, 34.868156, 41.907734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233028, 35.027168, 41.696568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205076, 0.619303, 0.757896,
		0.628228, 0.677076, -0.383273,
		-0.750516, 0.397531, -0.527916,
		40.007874, 35.146427, 41.538193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636383, 35.556248, 41.936878>,  <40.533234, 34.868156, 41.907734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636383, 35.556248, 41.936878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245811, 35.561501, 41.850708>,  <40.011467, 35.564651, 41.799004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245811, 35.561501, 41.850708>,  <40.636383, 35.556248, 41.936878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245811, 35.561501, 41.850708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176678, 0.524643, 0.832788,
		0.123962, 0.851221, -0.509957,
		-0.976431, 0.013136, -0.215428,
		39.952881, 35.565441, 41.786079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359486, 36.271599, 41.804214>,  <40.636383, 35.556248, 41.936878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359486, 36.271599, 41.804214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049141, 36.040855, 41.906410>,  <39.862934, 35.902409, 41.967728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049141, 36.040855, 41.906410>,  <40.359486, 36.271599, 41.804214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049141, 36.040855, 41.906410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250153, 0.653041, 0.714815,
		-0.579187, 0.490689, -0.650973,
		-0.775865, -0.576855, 0.255486,
		39.816383, 35.867798, 41.983055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880489, 36.771664, 41.957855>,  <40.359486, 36.271599, 41.804214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880489, 36.771664, 41.957855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740669, 36.439861, 42.132092>,  <39.656776, 36.240780, 42.236633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740669, 36.439861, 42.132092>,  <39.880489, 36.771664, 41.957855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740669, 36.439861, 42.132092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277141, 0.535660, 0.797659,
		-0.894991, 0.158100, -0.417129,
		-0.349549, -0.829501, 0.435595,
		39.635803, 36.191010, 42.262772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338833, 37.043926, 42.389656>,  <39.880489, 36.771664, 41.957855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338833, 37.043926, 42.389656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.425835, 36.686981, 42.547836>,  <39.478035, 36.472813, 42.642742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.425835, 36.686981, 42.547836>,  <39.338833, 37.043926, 42.389656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425835, 36.686981, 42.547836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258356, 0.338060, 0.904968,
		-0.941246, -0.299001, -0.157018,
		0.217505, -0.892364, 0.395446,
		39.491085, 36.419273, 42.666470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702641, 36.819561, 42.682896>,  <39.338833, 37.043926, 42.389656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702641, 36.819561, 42.682896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004921, 36.627846, 42.861423>,  <39.186291, 36.512817, 42.968540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004921, 36.627846, 42.861423>,  <38.702641, 36.819561, 42.682896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004921, 36.627846, 42.861423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285461, 0.372283, 0.883129,
		-0.589429, -0.794788, 0.144517,
		0.755702, -0.479289, 0.446315,
		39.231632, 36.484058, 42.995319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382469, 36.507969, 43.272141>,  <38.702641, 36.819561, 42.682896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382469, 36.507969, 43.272141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774284, 36.542576, 43.344830>,  <39.009373, 36.563339, 43.388443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774284, 36.542576, 43.344830>,  <38.382469, 36.507969, 43.272141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774284, 36.542576, 43.344830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198318, 0.568897, 0.798139,
		-0.034327, -0.817845, 0.574414,
		0.979536, 0.086519, 0.181722,
		39.068146, 36.568531, 43.399345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463230, 36.626545, 44.040771>,  <38.382469, 36.507969, 43.272141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463230, 36.626545, 44.040771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832642, 36.715965, 43.916115>,  <39.054287, 36.769619, 43.841320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832642, 36.715965, 43.916115>,  <38.463230, 36.626545, 44.040771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832642, 36.715965, 43.916115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178569, 0.468479, 0.865240,
		0.339419, -0.854724, 0.392736,
		0.923530, 0.223549, -0.311638,
		39.109699, 36.783031, 43.822624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876163, 36.312157, 44.588551>,  <38.463230, 36.626545, 44.040771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876163, 36.312157, 44.588551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054485, 36.624115, 44.412815>,  <39.161480, 36.811291, 44.307373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054485, 36.624115, 44.412815>,  <38.876163, 36.312157, 44.588551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054485, 36.624115, 44.412815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174655, 0.405590, 0.897213,
		0.877926, -0.476715, 0.044601,
		0.445805, 0.779897, -0.439339,
		39.188229, 36.858086, 44.281013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386414, 36.394287, 45.041409>,  <38.876163, 36.312157, 44.588551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386414, 36.394287, 45.041409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399136, 36.729259, 44.823162>,  <39.406769, 36.930244, 44.692215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399136, 36.729259, 44.823162>,  <39.386414, 36.394287, 45.041409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399136, 36.729259, 44.823162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226086, 0.525718, 0.820065,
		0.973588, -0.149438, -0.172612,
		0.031804, 0.837430, -0.545618,
		39.408676, 36.980488, 44.659477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127132, 36.746597, 45.054455>,  <39.386414, 36.394287, 45.041409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127132, 36.746597, 45.054455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848522, 37.017796, 44.960506>,  <39.681355, 37.180515, 44.904137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848522, 37.017796, 44.960506>,  <40.127132, 36.746597, 45.054455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848522, 37.017796, 44.960506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115959, 0.429396, 0.895641,
		0.708097, 0.596604, -0.377707,
		-0.696529, 0.677999, -0.234872,
		39.639565, 37.221195, 44.890045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.649117, 37.325718, 44.226189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.911858, 37.043800, 44.333378>,  <34.069500, 36.874649, 44.397694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.911858, 37.043800, 44.333378>,  <33.649117, 37.325718, 44.226189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911858, 37.043800, 44.333378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214787, -0.165779, -0.962488,
		0.722782, 0.689768, 0.042489,
		0.656850, -0.704796, 0.267975,
		34.108913, 36.832363, 44.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129257, 37.351902, 43.764801>,  <33.649117, 37.325718, 44.226189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129257, 37.351902, 43.764801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198387, 36.985985, 43.910835>,  <34.239864, 36.766434, 43.998455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198387, 36.985985, 43.910835>,  <34.129257, 37.351902, 43.764801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198387, 36.985985, 43.910835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220770, -0.325255, -0.919495,
		0.959892, 0.239510, 0.145747,
		0.172824, -0.914792, 0.365086,
		34.250233, 36.711548, 44.020363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682827, 37.085529, 43.384026>,  <34.129257, 37.351902, 43.764801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682827, 37.085529, 43.384026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514637, 36.760212, 43.544895>,  <34.413723, 36.565022, 43.641418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514637, 36.760212, 43.544895>,  <34.682827, 37.085529, 43.384026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514637, 36.760212, 43.544895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138101, -0.495469, -0.857577,
		0.896731, -0.305052, 0.320651,
		-0.420479, -0.813298, 0.402175,
		34.388493, 36.516224, 43.665546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088585, 36.549526, 43.259769>,  <34.682827, 37.085529, 43.384026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088585, 36.549526, 43.259769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743088, 36.361252, 43.331779>,  <34.535789, 36.248287, 43.374985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743088, 36.361252, 43.331779>,  <35.088585, 36.549526, 43.259769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743088, 36.361252, 43.331779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064400, -0.457398, -0.886927,
		0.499809, -0.754480, 0.425384,
		-0.863738, -0.470689, 0.180023,
		34.483967, 36.220047, 43.385788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143547, 36.008167, 42.835793>,  <35.088585, 36.549526, 43.259769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143547, 36.008167, 42.835793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.751621, 36.004478, 42.915665>,  <34.516464, 36.002266, 42.963589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.751621, 36.004478, 42.915665>,  <35.143547, 36.008167, 42.835793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751621, 36.004478, 42.915665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177644, -0.417856, -0.890976,
		0.091660, -0.908467, 0.407783,
		-0.979817, -0.009227, 0.199685,
		34.457676, 36.001709, 42.975571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068371, 35.345863, 42.777657>,  <35.143547, 36.008167, 42.835793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068371, 35.345863, 42.777657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739243, 35.560612, 42.703102>,  <34.541767, 35.689461, 42.658371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739243, 35.560612, 42.703102>,  <35.068371, 35.345863, 42.777657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739243, 35.560612, 42.703102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103256, -0.463743, -0.879932,
		-0.558844, -0.704780, 0.437011,
		-0.822819, 0.536869, -0.186387,
		34.492397, 35.721672, 42.647186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764622, 34.840511, 42.364014>,  <35.068371, 35.345863, 42.777657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764622, 34.840511, 42.364014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550190, 35.172215, 42.300827>,  <34.421532, 35.371235, 42.262917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550190, 35.172215, 42.300827>,  <34.764622, 34.840511, 42.364014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550190, 35.172215, 42.300827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015368, -0.196682, -0.980347,
		-0.844029, -0.523115, 0.118181,
		-0.536078, 0.829257, -0.157966,
		34.389366, 35.420990, 42.253437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307343, 34.611778, 41.829346>,  <34.764622, 34.840511, 42.364014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307343, 34.611778, 41.829346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.260189, 35.008820, 41.840935>,  <34.231899, 35.247044, 41.847889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.260189, 35.008820, 41.840935>,  <34.307343, 34.611778, 41.829346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260189, 35.008820, 41.840935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095916, 0.017661, -0.995233,
		-0.988384, -0.120099, 0.093124,
		-0.117882, 0.992605, 0.028975,
		34.224823, 35.306602, 41.849628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705723, 34.754478, 41.407513>,  <34.307343, 34.611778, 41.829346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705723, 34.754478, 41.407513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940845, 35.078011, 41.414036>,  <34.081921, 35.272129, 41.417950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940845, 35.078011, 41.414036>,  <33.705723, 34.754478, 41.407513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940845, 35.078011, 41.414036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032569, -0.003515, -0.999463,
		-0.808343, 0.588026, -0.028409,
		0.587810, 0.808835, 0.016310,
		34.117188, 35.320660, 41.418930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369503, 35.250778, 41.032124>,  <33.705723, 34.754478, 41.407513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369503, 35.250778, 41.032124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766689, 35.298004, 41.028450>,  <34.005001, 35.326340, 41.026245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766689, 35.298004, 41.028450>,  <33.369503, 35.250778, 41.032124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766689, 35.298004, 41.028450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016812, 0.063806, -0.997821,
		-0.117219, 0.990954, 0.065342,
		0.992964, 0.118062, -0.009180,
		34.064579, 35.333424, 41.025696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357555, 35.398983, 40.283234>,  <33.369503, 35.250778, 41.032124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357555, 35.398983, 40.283234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735367, 35.335693, 40.398357>,  <33.962051, 35.297718, 40.467430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735367, 35.335693, 40.398357>,  <33.357555, 35.398983, 40.283234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735367, 35.335693, 40.398357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263274, -0.159157, -0.951502,
		0.196358, 0.974492, -0.108672,
		0.944527, -0.158225, 0.287810,
		34.018726, 35.288227, 40.484699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818161, 35.791790, 39.771782>,  <33.357555, 35.398983, 40.283234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818161, 35.791790, 39.771782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068352, 35.535141, 39.949364>,  <34.218468, 35.381149, 40.055912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068352, 35.535141, 39.949364>,  <33.818161, 35.791790, 39.771782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068352, 35.535141, 39.949364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478357, -0.134168, -0.867856,
		0.616403, 0.755192, 0.223007,
		0.625478, -0.641626, 0.443953,
		34.255997, 35.342655, 40.082550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597305, 35.941025, 39.609516>,  <33.818161, 35.791790, 39.771782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597305, 35.941025, 39.609516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610962, 35.556911, 39.720284>,  <34.619156, 35.326443, 39.786743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610962, 35.556911, 39.720284>,  <34.597305, 35.941025, 39.609516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610962, 35.556911, 39.720284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397859, -0.241121, -0.885194,
		0.916811, 0.140400, 0.373825,
		0.034145, -0.960286, 0.276922,
		34.621204, 35.268826, 39.803360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196335, 35.645210, 39.263504>,  <34.597305, 35.941025, 39.609516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196335, 35.645210, 39.263504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936954, 35.348122, 39.330299>,  <34.781326, 35.169868, 39.370377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936954, 35.348122, 39.330299>,  <35.196335, 35.645210, 39.263504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936954, 35.348122, 39.330299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156844, -0.344996, -0.925407,
		0.744927, -0.573887, 0.340203,
		-0.648448, -0.742719, 0.166986,
		34.742420, 35.125305, 39.380394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012989, 35.760395, 39.191765>,  <35.196335, 35.645210, 39.263504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012989, 35.760395, 39.191765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071941, 36.114998, 39.016315>,  <36.107311, 36.327759, 38.911045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071941, 36.114998, 39.016315>,  <36.012989, 35.760395, 39.191765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071941, 36.114998, 39.016315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110958, 0.425844, 0.897967,
		0.982837, -0.181009, -0.035604,
		0.147379, 0.886506, -0.438620,
		36.116154, 36.380951, 38.884731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711018, 36.083778, 39.412090>,  <36.012989, 35.760395, 39.191765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711018, 36.083778, 39.412090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481125, 36.391743, 39.301151>,  <36.343189, 36.576523, 39.234589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481125, 36.391743, 39.301151>,  <36.711018, 36.083778, 39.412090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481125, 36.391743, 39.301151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161864, 0.439168, 0.883703,
		0.802176, 0.462997, -0.377024,
		-0.574729, 0.769912, -0.277347,
		36.308704, 36.622715, 39.217949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991577, 36.807072, 39.511810>,  <36.711018, 36.083778, 39.412090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991577, 36.807072, 39.511810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615582, 36.942268, 39.493084>,  <36.389984, 37.023384, 39.481850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615582, 36.942268, 39.493084>,  <36.991577, 36.807072, 39.511810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615582, 36.942268, 39.493084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142369, 0.513179, 0.846392,
		0.310097, 0.788930, -0.530499,
		-0.939985, 0.337990, -0.046816,
		36.333588, 37.043667, 39.479038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052174, 37.360809, 39.908783>,  <36.991577, 36.807072, 39.511810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052174, 37.360809, 39.908783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659061, 37.287586, 39.898735>,  <36.423195, 37.243652, 39.892704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659061, 37.287586, 39.898735>,  <37.052174, 37.360809, 39.908783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659061, 37.287586, 39.898735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105937, 0.446824, 0.888327,
		-0.151391, 0.875693, -0.458523,
		-0.982781, -0.183059, -0.025123,
		36.364227, 37.232670, 39.891197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657166, 38.044281, 39.902023>,  <37.052174, 37.360809, 39.908783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657166, 38.044281, 39.902023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429592, 37.749256, 40.047531>,  <36.293049, 37.572243, 40.134834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429592, 37.749256, 40.047531>,  <36.657166, 38.044281, 39.902023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429592, 37.749256, 40.047531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057521, 0.476938, 0.877053,
		-0.820372, 0.478057, -0.313769,
		-0.568930, -0.737558, 0.363768,
		36.258915, 37.527988, 40.156662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200665, 38.332142, 40.270775>,  <36.657166, 38.044281, 39.902023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200665, 38.332142, 40.270775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.104954, 37.964779, 40.396809>,  <36.047527, 37.744362, 40.472427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.104954, 37.964779, 40.396809>,  <36.200665, 38.332142, 40.270775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104954, 37.964779, 40.396809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018969, 0.328866, 0.944186,
		-0.970766, 0.219948, -0.096112,
		-0.239279, -0.918406, 0.315080,
		36.033169, 37.689259, 40.491333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697319, 38.416363, 40.786221>,  <36.200665, 38.332142, 40.270775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697319, 38.416363, 40.786221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881451, 38.069595, 40.862690>,  <35.991928, 37.861534, 40.908573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881451, 38.069595, 40.862690>,  <35.697319, 38.416363, 40.786221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881451, 38.069595, 40.862690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039263, 0.235018, 0.971198,
		-0.886879, -0.439565, 0.142224,
		0.460330, -0.866919, 0.191174,
		36.019550, 37.809521, 40.920044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329239, 38.086739, 41.300892>,  <35.697319, 38.416363, 40.786221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329239, 38.086739, 41.300892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679138, 37.894848, 41.328266>,  <35.889076, 37.779713, 41.344692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679138, 37.894848, 41.328266>,  <35.329239, 38.086739, 41.300892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679138, 37.894848, 41.328266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015448, 0.168761, 0.985536,
		-0.484334, -0.861037, 0.155034,
		0.874747, -0.479724, 0.068435,
		35.941563, 37.750931, 41.348797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262943, 37.562542, 41.780125>,  <35.329239, 38.086739, 41.300892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262943, 37.562542, 41.780125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649132, 37.664715, 41.759640>,  <35.880844, 37.726021, 41.747349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649132, 37.664715, 41.759640>,  <35.262943, 37.562542, 41.780125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649132, 37.664715, 41.759640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037522, 0.058184, 0.997600,
		0.257803, -0.965073, 0.046590,
		0.965469, 0.255436, -0.051211,
		35.938774, 37.741344, 41.744278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445152, 37.344841, 42.446045>,  <35.262943, 37.562542, 41.780125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445152, 37.344841, 42.446045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769024, 37.553574, 42.338631>,  <35.963348, 37.678814, 42.274181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769024, 37.553574, 42.338631>,  <35.445152, 37.344841, 42.446045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769024, 37.553574, 42.338631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128178, 0.289275, 0.948626,
		0.572706, -0.802501, 0.167332,
		0.809678, 0.521835, -0.268533,
		36.011929, 37.710125, 42.258072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100765, 37.166157, 42.822392>,  <35.445152, 37.344841, 42.446045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100765, 37.166157, 42.822392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144054, 37.546089, 42.705017>,  <36.170029, 37.774048, 42.634594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144054, 37.546089, 42.705017>,  <36.100765, 37.166157, 42.822392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144054, 37.546089, 42.705017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215388, 0.265754, 0.939672,
		0.970513, -0.164898, -0.175821,
		0.108225, 0.949833, -0.293435,
		36.176521, 37.831039, 42.616985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422771, 37.418407, 43.347420>,  <36.100765, 37.166157, 42.822392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422771, 37.418407, 43.347420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319839, 37.766415, 43.179199>,  <36.258080, 37.975220, 43.078266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319839, 37.766415, 43.179199>,  <36.422771, 37.418407, 43.347420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319839, 37.766415, 43.179199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002292, 0.434652, 0.900596,
		0.966322, 0.232710, -0.109853,
		-0.257326, 0.870013, -0.420547,
		36.242641, 38.027420, 43.053036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874508, 38.037254, 43.672607>,  <36.422771, 37.418407, 43.347420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874508, 38.037254, 43.672607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526150, 38.172447, 43.529884>,  <36.317135, 38.253563, 43.444252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526150, 38.172447, 43.529884>,  <36.874508, 38.037254, 43.672607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526150, 38.172447, 43.529884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152762, 0.503879, 0.850158,
		0.467131, 0.794903, -0.387193,
		-0.870892, 0.337987, -0.356808,
		36.264881, 38.273842, 43.422840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908253, 38.671394, 43.825371>,  <36.874508, 38.037254, 43.672607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908253, 38.671394, 43.825371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.510277, 38.633514, 43.811947>,  <36.271492, 38.610786, 43.803894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.510277, 38.633514, 43.811947>,  <36.908253, 38.671394, 43.825371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510277, 38.633514, 43.811947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065907, 0.363058, 0.929433,
		-0.075838, 0.926941, -0.367463,
		-0.994940, -0.094705, -0.033559,
		36.211796, 38.605103, 43.801880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308468, 39.110538, 43.425850>,  <36.908253, 38.671394, 43.825371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308468, 39.110538, 43.425850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.680645, 39.252731, 43.461411>,  <37.903950, 39.338047, 43.482746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.680645, 39.252731, 43.461411>,  <37.308468, 39.110538, 43.425850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680645, 39.252731, 43.461411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247150, -0.429682, -0.868499,
		-0.270539, 0.830062, -0.487653,
		0.930444, 0.355486, 0.088904,
		37.959778, 39.359379, 43.488083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520302, 39.498131, 42.797115>,  <37.308468, 39.110538, 43.425850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520302, 39.498131, 42.797115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858723, 39.373295, 42.969997>,  <38.061775, 39.298393, 43.073727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858723, 39.373295, 42.969997>,  <37.520302, 39.498131, 42.797115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858723, 39.373295, 42.969997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284187, -0.421911, -0.860946,
		0.451045, 0.851230, -0.268266,
		0.846047, -0.312088, 0.432209,
		38.112537, 39.279667, 43.099659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 39.725121, 42.418034>,  <37.520302, 39.498131, 42.797115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021927, 39.725121, 42.418034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.167892, 39.410511, 42.617317>,  <38.255474, 39.221745, 42.736889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.167892, 39.410511, 42.617317>,  <38.021927, 39.725121, 42.418034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167892, 39.410511, 42.617317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432598, -0.330607, -0.838784,
		0.824436, 0.521612, 0.219604,
		0.364917, -0.786524, 0.498212,
		38.277367, 39.174553, 42.766781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710464, 39.664017, 42.148666>,  <38.021927, 39.725121, 42.418034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710464, 39.664017, 42.148666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660099, 39.315868, 42.339081>,  <38.629879, 39.106979, 42.453327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660099, 39.315868, 42.339081>,  <38.710464, 39.664017, 42.148666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660099, 39.315868, 42.339081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533775, -0.463910, -0.707016,
		0.836199, 0.165071, 0.522993,
		-0.125914, -0.870367, 0.476032,
		38.622326, 39.054760, 42.481892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305332, 39.390026, 42.034180>,  <38.710464, 39.664017, 42.148666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305332, 39.390026, 42.034180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081303, 39.072468, 42.128880>,  <38.946884, 38.881931, 42.185699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081303, 39.072468, 42.128880>,  <39.305332, 39.390026, 42.034180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081303, 39.072468, 42.128880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460041, -0.535704, -0.708084,
		0.688970, -0.287667, 0.665258,
		-0.560073, -0.793895, 0.236745,
		38.913280, 38.834301, 42.199902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766914, 38.942879, 42.143780>,  <39.305332, 39.390026, 42.034180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766914, 38.942879, 42.143780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428055, 38.751431, 42.051468>,  <39.224739, 38.636562, 41.996082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428055, 38.751431, 42.051468>,  <39.766914, 38.942879, 42.143780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428055, 38.751431, 42.051468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481988, -0.509361, -0.712909,
		0.223665, -0.715173, 0.662195,
		-0.847149, -0.478623, -0.230779,
		39.173908, 38.607845, 41.982235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952988, 38.263687, 42.057613>,  <39.766914, 38.942879, 42.143780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952988, 38.263687, 42.057613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.605694, 38.302620, 41.863007>,  <39.397320, 38.325977, 41.746243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.605694, 38.302620, 41.863007>,  <39.952988, 38.263687, 42.057613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605694, 38.302620, 41.863007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304461, -0.669737, -0.677315,
		-0.391764, -0.736192, 0.551853,
		-0.868231, 0.097330, -0.486521,
		39.345226, 38.331818, 41.717049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813560, 37.635742, 41.796978>,  <39.952988, 38.263687, 42.057613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813560, 37.635742, 41.796978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.601379, 37.880657, 41.562462>,  <39.474072, 38.027607, 41.421753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.601379, 37.880657, 41.562462>,  <39.813560, 37.635742, 41.796978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601379, 37.880657, 41.562462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349942, -0.471771, -0.809304,
		-0.772116, -0.634462, 0.035986,
		-0.530449, 0.612284, -0.586287,
		39.442245, 38.064342, 41.386578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389679, 37.297176, 41.292732>,  <39.813560, 37.635742, 41.796978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389679, 37.297176, 41.292732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456913, 37.657131, 41.131756>,  <39.497253, 37.873104, 41.035172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456913, 37.657131, 41.131756>,  <39.389679, 37.297176, 41.292732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456913, 37.657131, 41.131756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263588, -0.434413, -0.861282,
		-0.949879, 0.038687, -0.310215,
		0.168081, 0.899883, -0.402442,
		39.507336, 37.927097, 41.011024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941929, 37.390762, 40.760960>,  <39.389679, 37.297176, 41.292732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941929, 37.390762, 40.760960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242447, 37.632465, 40.654800>,  <39.422756, 37.777485, 40.591106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242447, 37.632465, 40.654800>,  <38.941929, 37.390762, 40.760960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242447, 37.632465, 40.654800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154929, -0.552374, -0.819072,
		-0.641525, 0.574247, -0.508612,
		0.751294, 0.604254, -0.265395,
		39.467834, 37.813740, 40.575184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902027, 37.506157, 40.028244>,  <38.941929, 37.390762, 40.760960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902027, 37.506157, 40.028244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279438, 37.609428, 40.111286>,  <39.505886, 37.671391, 40.161114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279438, 37.609428, 40.111286>,  <38.902027, 37.506157, 40.028244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279438, 37.609428, 40.111286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310822, -0.472981, -0.824426,
		-0.114652, 0.842398, -0.526517,
		0.943528, 0.258175, 0.207607,
		39.562496, 37.686882, 40.173569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237225, 37.707253, 39.361584>,  <38.902027, 37.506157, 40.028244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237225, 37.707253, 39.361584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561314, 37.635349, 39.584736>,  <39.755768, 37.592209, 39.718628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561314, 37.635349, 39.584736>,  <39.237225, 37.707253, 39.361584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561314, 37.635349, 39.584736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367162, -0.586263, -0.722141,
		0.456873, 0.789926, -0.409004,
		0.810222, -0.179756, 0.557879,
		39.804379, 37.581421, 39.752098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774899, 37.766808, 38.927353>,  <39.237225, 37.707253, 39.361584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774899, 37.766808, 38.927353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.944248, 37.550228, 39.217892>,  <40.045860, 37.420280, 39.392216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.944248, 37.550228, 39.217892>,  <39.774899, 37.766808, 38.927353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944248, 37.550228, 39.217892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453580, -0.567341, -0.687306,
		0.784229, 0.620448, 0.005391,
		0.423379, -0.541451, 0.726348,
		40.071262, 37.387794, 39.435795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482185, 37.860268, 38.873299>,  <39.774899, 37.766808, 38.927353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482185, 37.860268, 38.873299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441013, 37.529522, 39.094460>,  <40.416309, 37.331074, 39.227158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441013, 37.529522, 39.094460>,  <40.482185, 37.860268, 38.873299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441013, 37.529522, 39.094460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554560, -0.509155, -0.658198,
		0.825753, 0.238871, 0.510952,
		-0.102930, -0.826863, 0.552904,
		40.410133, 37.281464, 39.260330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.181980, 35.474243, 41.395985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951866, 35.705048, 41.627884>,  <28.813797, 35.843529, 41.767021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951866, 35.705048, 41.627884>,  <29.181980, 35.474243, 41.395985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951866, 35.705048, 41.627884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679813, 0.056858, -0.731178,
		-0.454862, -0.814754, 0.359550,
		-0.575287, 0.577012, 0.579743,
		28.779280, 35.878151, 41.801807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539297, 35.347233, 41.430054>,  <29.181980, 35.474243, 41.395985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539297, 35.347233, 41.430054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424238, 35.729836, 41.410648>,  <28.355204, 35.959396, 41.399006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424238, 35.729836, 41.410648>,  <28.539297, 35.347233, 41.430054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424238, 35.729836, 41.410648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489017, -0.190239, -0.851277,
		-0.823482, -0.221140, 0.522470,
		-0.287645, 0.956507, -0.048517,
		28.337944, 36.016788, 41.396091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824785, 35.561161, 41.435043>,  <28.539297, 35.347233, 41.430054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824785, 35.561161, 41.435043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008280, 35.831783, 41.204624>,  <28.118376, 35.994156, 41.066372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008280, 35.831783, 41.204624>,  <27.824785, 35.561161, 41.435043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008280, 35.831783, 41.204624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589671, -0.253179, -0.766934,
		-0.664718, 0.691500, 0.282804,
		0.458735, 0.676557, -0.576050,
		28.145901, 36.034752, 41.031811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234892, 35.905293, 41.122696>,  <27.824785, 35.561161, 41.435043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234892, 35.905293, 41.122696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564941, 35.947300, 40.900654>,  <27.762972, 35.972504, 40.767429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564941, 35.947300, 40.900654>,  <27.234892, 35.905293, 41.122696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564941, 35.947300, 40.900654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495138, -0.338712, -0.800070,
		-0.272047, 0.935010, -0.227479,
		0.825123, 0.105023, -0.555105,
		27.812479, 35.978806, 40.734123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986502, 36.073135, 40.506680>,  <27.234892, 35.905293, 41.122696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986502, 36.073135, 40.506680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354877, 35.930401, 40.444023>,  <27.575903, 35.844761, 40.406429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354877, 35.930401, 40.444023>,  <26.986502, 36.073135, 40.506680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354877, 35.930401, 40.444023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297949, -0.385644, -0.873215,
		0.251192, 0.850848, -0.461475,
		0.920939, -0.356840, -0.156638,
		27.631159, 35.823349, 40.397030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089579, 36.204842, 39.832813>,  <26.986502, 36.073135, 40.506680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089579, 36.204842, 39.832813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.367668, 35.922165, 39.885349>,  <27.534523, 35.752560, 39.916870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.367668, 35.922165, 39.885349>,  <27.089579, 36.204842, 39.832813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367668, 35.922165, 39.885349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189880, -0.356790, -0.914684,
		0.693259, 0.610973, -0.382236,
		0.695225, -0.706692, 0.131336,
		27.576235, 35.710159, 39.924751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413738, 36.112026, 39.149273>,  <27.089579, 36.204842, 39.832813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413738, 36.112026, 39.149273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472866, 35.776314, 39.358562>,  <27.508343, 35.574886, 39.484135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472866, 35.776314, 39.358562>,  <27.413738, 36.112026, 39.149273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472866, 35.776314, 39.358562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135033, -0.541206, -0.829978,
		0.979753, 0.052036, -0.193331,
		0.147820, -0.839279, 0.523221,
		27.517212, 35.524529, 39.515530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900011, 35.672806, 38.664612>,  <27.413738, 36.112026, 39.149273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900011, 35.672806, 38.664612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773127, 35.423092, 38.950172>,  <27.696997, 35.273266, 39.121510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773127, 35.423092, 38.950172>,  <27.900011, 35.672806, 38.664612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773127, 35.423092, 38.950172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258981, -0.667138, -0.698467,
		0.912308, -0.406447, 0.049945,
		-0.317210, -0.624282, 0.713898,
		27.677963, 35.235806, 39.164341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264780, 35.059334, 38.543545>,  <27.900011, 35.672806, 38.664612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264780, 35.059334, 38.543545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924398, 34.992615, 38.742764>,  <27.720169, 34.952583, 38.862297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924398, 34.992615, 38.742764>,  <28.264780, 35.059334, 38.543545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924398, 34.992615, 38.742764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375600, -0.469587, -0.799007,
		0.367148, -0.866988, 0.336949,
		-0.850956, -0.166796, 0.498049,
		27.669111, 34.942577, 38.892178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189528, 34.398212, 38.475063>,  <28.264780, 35.059334, 38.543545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189528, 34.398212, 38.475063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823347, 34.523201, 38.576504>,  <27.603640, 34.598194, 38.637367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823347, 34.523201, 38.576504>,  <28.189528, 34.398212, 38.475063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823347, 34.523201, 38.576504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384146, -0.490714, -0.782068,
		-0.119928, -0.813364, 0.569259,
		-0.915450, 0.312470, 0.253601,
		27.548712, 34.616943, 38.652584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827974, 33.791668, 38.604263>,  <28.189528, 34.398212, 38.475063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827974, 33.791668, 38.604263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577578, 34.087593, 38.505623>,  <27.427340, 34.265148, 38.446438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577578, 34.087593, 38.505623>,  <27.827974, 33.791668, 38.604263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577578, 34.087593, 38.505623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461694, -0.606442, -0.647353,
		-0.628471, -0.291382, 0.721194,
		-0.625990, 0.739814, -0.246602,
		27.389780, 34.309536, 38.431644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185354, 33.393986, 38.649857>,  <27.827974, 33.791668, 38.604263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185354, 33.393986, 38.649857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116011, 33.722546, 38.432510>,  <27.074404, 33.919682, 38.302105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116011, 33.722546, 38.432510>,  <27.185354, 33.393986, 38.649857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116011, 33.722546, 38.432510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538848, -0.540922, -0.645791,
		-0.824371, 0.180835, 0.536386,
		-0.173361, 0.821402, -0.543364,
		27.064003, 33.968967, 38.269501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457531, 33.363602, 38.554749>,  <27.185354, 33.393986, 38.649857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457531, 33.363602, 38.554749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593088, 33.618000, 38.277431>,  <26.674423, 33.770638, 38.111042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593088, 33.618000, 38.277431>,  <26.457531, 33.363602, 38.554749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593088, 33.618000, 38.277431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606731, -0.415455, -0.677699,
		-0.719047, 0.650312, 0.245083,
		0.338895, 0.635997, -0.693295,
		26.694757, 33.808800, 38.069443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844662, 33.480545, 38.166534>,  <26.457531, 33.363602, 38.554749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844662, 33.480545, 38.166534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149698, 33.606255, 37.940369>,  <26.332720, 33.681679, 37.804668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149698, 33.606255, 37.940369>,  <25.844662, 33.480545, 38.166534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149698, 33.606255, 37.940369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464868, -0.341569, -0.816840,
		-0.449839, 0.885755, -0.114381,
		0.762589, 0.314275, -0.565411,
		26.378475, 33.700539, 37.770744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622839, 33.987259, 37.587280>,  <25.844662, 33.480545, 38.166534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622839, 33.987259, 37.587280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.962994, 33.813190, 37.468979>,  <26.167086, 33.708748, 37.397999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.962994, 33.813190, 37.468979>,  <25.622839, 33.987259, 37.587280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962994, 33.813190, 37.468979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426408, -0.240678, -0.871923,
		0.308253, 0.867583, -0.390229,
		0.850386, -0.435170, -0.295755,
		26.218109, 33.682640, 37.380253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500229, 34.035202, 36.908916>,  <25.622839, 33.987259, 37.587280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500229, 34.035202, 36.908916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.827740, 33.806019, 36.894333>,  <26.024246, 33.668510, 36.885582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.827740, 33.806019, 36.894333>,  <25.500229, 34.035202, 36.908916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827740, 33.806019, 36.894333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259836, -0.313189, -0.913454,
		0.511948, 0.757388, -0.405306,
		0.818776, -0.572954, -0.036460,
		26.073372, 33.634132, 36.883396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833168, 34.117161, 36.212780>,  <25.500229, 34.035202, 36.908916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833168, 34.117161, 36.212780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.971954, 33.766247, 36.345432>,  <26.055225, 33.555698, 36.425026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.971954, 33.766247, 36.345432>,  <25.833168, 34.117161, 36.212780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971954, 33.766247, 36.345432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244501, -0.425984, -0.871066,
		0.905447, 0.221145, -0.362300,
		0.346966, -0.877287, 0.331635,
		26.076044, 33.503059, 36.444923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385015, 33.717285, 35.647640>,  <25.833168, 34.117161, 36.212780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385015, 33.717285, 35.647640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.213348, 33.451218, 35.892052>,  <26.110348, 33.291576, 36.038700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.213348, 33.451218, 35.892052>,  <26.385015, 33.717285, 35.647640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213348, 33.451218, 35.892052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212455, -0.583179, -0.784070,
		0.877882, -0.466316, 0.108963,
		-0.429169, -0.665171, 0.611033,
		26.084599, 33.251667, 36.075363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614340, 33.084457, 35.373146>,  <26.385015, 33.717285, 35.647640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614340, 33.084457, 35.373146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.300093, 32.977470, 35.596310>,  <26.111544, 32.913280, 35.730209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.300093, 32.977470, 35.596310>,  <26.614340, 33.084457, 35.373146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300093, 32.977470, 35.596310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313915, -0.604737, -0.731950,
		0.533161, -0.750170, 0.391132,
		-0.785619, -0.267465, 0.557912,
		26.064407, 32.897232, 35.763683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356792, 32.746601, 35.202404>,  <26.614340, 33.084457, 35.373146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356792, 32.746601, 35.202404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613445, 32.563259, 34.956406>,  <27.767437, 32.453255, 34.808807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613445, 32.563259, 34.956406>,  <27.356792, 32.746601, 35.202404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613445, 32.563259, 34.956406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725335, 0.101882, 0.680815,
		-0.249397, -0.882911, 0.397830,
		0.641631, -0.458354, -0.614997,
		27.805935, 32.425755, 34.771908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658527, 32.197361, 35.514915>,  <27.356792, 32.746601, 35.202404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658527, 32.197361, 35.514915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923456, 32.364643, 35.266258>,  <28.082413, 32.465012, 35.117065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923456, 32.364643, 35.266258>,  <27.658527, 32.197361, 35.514915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923456, 32.364643, 35.266258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567307, 0.262027, 0.780708,
		0.489380, -0.869741, -0.063703,
		0.662322, 0.418202, -0.621641,
		28.122152, 32.490105, 35.079765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294928, 31.873636, 35.681412>,  <27.658527, 32.197361, 35.514915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294928, 31.873636, 35.681412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381645, 32.212395, 35.487190>,  <28.433676, 32.415649, 35.370659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381645, 32.212395, 35.487190>,  <28.294928, 31.873636, 35.681412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381645, 32.212395, 35.487190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674119, 0.229880, 0.701939,
		0.706090, -0.479499, -0.521073,
		0.216795, 0.846898, -0.485555,
		28.446684, 32.466465, 35.341522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980450, 31.954874, 35.850037>,  <28.294928, 31.873636, 35.681412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980450, 31.954874, 35.850037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896963, 32.317150, 35.702435>,  <28.846870, 32.534515, 35.613873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896963, 32.317150, 35.702435>,  <28.980450, 31.954874, 35.850037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896963, 32.317150, 35.702435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561180, 0.419925, 0.713260,
		0.800946, -0.058208, -0.595900,
		-0.208716, 0.905690, -0.369003,
		28.834349, 32.588856, 35.591732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625118, 32.287792, 35.613132>,  <28.980450, 31.954874, 35.850037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625118, 32.287792, 35.613132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353918, 32.576084, 35.670906>,  <29.191198, 32.749062, 35.705570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353918, 32.576084, 35.670906>,  <29.625118, 32.287792, 35.613132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353918, 32.576084, 35.670906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558863, 0.377792, 0.738205,
		0.477482, 0.581221, -0.658933,
		-0.677999, 0.720733, 0.144434,
		29.150518, 32.792305, 35.714237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999332, 32.911892, 35.766670>,  <29.625118, 32.287792, 35.613132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999332, 32.911892, 35.766670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645140, 33.030643, 35.909660>,  <29.432625, 33.101894, 35.995457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645140, 33.030643, 35.909660>,  <29.999332, 32.911892, 35.766670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645140, 33.030643, 35.909660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464348, 0.536359, 0.704769,
		0.017491, 0.790053, -0.612789,
		-0.885480, 0.296874, 0.357478,
		29.379496, 33.119705, 36.016903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039602, 33.635399, 35.867420>,  <29.999332, 32.911892, 35.766670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039602, 33.635399, 35.867420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718636, 33.548115, 36.089596>,  <29.526054, 33.495743, 36.222900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718636, 33.548115, 36.089596>,  <30.039602, 33.635399, 35.867420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718636, 33.548115, 36.089596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257581, 0.712937, 0.652206,
		-0.538310, 0.666411, -0.515866,
		-0.802418, -0.218211, 0.555436,
		29.477911, 33.482651, 36.256226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618412, 34.269455, 36.045845>,  <30.039602, 33.635399, 35.867420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618412, 34.269455, 36.045845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563749, 33.991077, 36.327835>,  <29.530951, 33.824051, 36.497028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563749, 33.991077, 36.327835>,  <29.618412, 34.269455, 36.045845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563749, 33.991077, 36.327835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271136, 0.658199, 0.702324,
		-0.952790, 0.287122, 0.098747,
		-0.136658, -0.695941, 0.704975,
		29.522753, 33.782295, 36.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459139, 34.671024, 36.571545>,  <29.618412, 34.269455, 36.045845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459139, 34.671024, 36.571545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498125, 34.326134, 36.770367>,  <29.521517, 34.119198, 36.889660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498125, 34.326134, 36.770367>,  <29.459139, 34.671024, 36.571545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498125, 34.326134, 36.770367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415285, 0.489108, 0.767015,
		-0.904455, 0.131661, 0.405742,
		0.097466, -0.862229, 0.497053,
		29.527365, 34.067467, 36.919483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022501, 34.664532, 37.154789>,  <29.459139, 34.671024, 36.571545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022501, 34.664532, 37.154789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303402, 34.397030, 37.252445>,  <29.471943, 34.236530, 37.311039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303402, 34.397030, 37.252445>,  <29.022501, 34.664532, 37.154789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303402, 34.397030, 37.252445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342504, 0.618002, 0.707646,
		-0.624123, -0.413328, 0.663046,
		0.702254, -0.668755, 0.244143,
		29.514078, 34.196404, 37.325687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958214, 34.567432, 37.890301>,  <29.022501, 34.664532, 37.154789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958214, 34.567432, 37.890301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329609, 34.449524, 37.799953>,  <29.552446, 34.378777, 37.745747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329609, 34.449524, 37.799953>,  <28.958214, 34.567432, 37.890301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329609, 34.449524, 37.799953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371234, 0.752488, 0.544010,
		0.009600, -0.588957, 0.808108,
		0.928490, -0.294774, -0.225865,
		29.608156, 34.361092, 37.732193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265368, 34.688492, 38.415741>,  <28.958214, 34.567432, 37.890301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265368, 34.688492, 38.415741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582663, 34.672646, 38.172691>,  <29.773039, 34.663139, 38.026863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582663, 34.672646, 38.172691>,  <29.265368, 34.688492, 38.415741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582663, 34.672646, 38.172691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430432, 0.742310, 0.513521,
		0.430703, -0.668884, 0.605879,
		0.793236, -0.039615, -0.607624,
		29.820633, 34.660763, 37.990402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798191, 34.650631, 38.893604>,  <29.265368, 34.688492, 38.415741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798191, 34.650631, 38.893604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925835, 34.815704, 38.552345>,  <30.002420, 34.914749, 38.347591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925835, 34.815704, 38.552345>,  <29.798191, 34.650631, 38.893604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925835, 34.815704, 38.552345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556190, 0.647334, 0.521164,
		0.767348, -0.640819, -0.022963,
		0.319107, 0.412686, -0.853148,
		30.021566, 34.939510, 38.296402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497808, 34.828430, 39.026443>,  <29.798191, 34.650631, 38.893604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497808, 34.828430, 39.026443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.403635, 35.056843, 38.711864>,  <30.347132, 35.193890, 38.523117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.403635, 35.056843, 38.711864>,  <30.497808, 34.828430, 39.026443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403635, 35.056843, 38.711864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422113, 0.788963, 0.446495,
		0.875438, -0.226849, -0.426787,
		-0.235432, 0.571031, -0.786445,
		30.333006, 35.228153, 38.475929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096397, 35.215675, 38.840942>,  <30.497808, 34.828430, 39.026443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096397, 35.215675, 38.840942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793667, 35.431175, 38.692909>,  <30.612028, 35.560474, 38.604088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793667, 35.431175, 38.692909>,  <31.096397, 35.215675, 38.840942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793667, 35.431175, 38.692909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360686, 0.816444, 0.450916,
		0.545084, 0.207781, -0.812226,
		-0.756828, 0.538746, -0.370086,
		30.566618, 35.592800, 38.581882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394333, 35.849930, 38.505867>,  <31.096397, 35.215675, 38.840942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394333, 35.849930, 38.505867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.013016, 35.963787, 38.546284>,  <30.784225, 36.032101, 38.570534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.013016, 35.963787, 38.546284>,  <31.394333, 35.849930, 38.505867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013016, 35.963787, 38.546284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298506, 0.836786, 0.459004,
		0.046099, 0.467728, -0.882670,
		-0.953294, 0.284642, 0.101044,
		30.727028, 36.049179, 38.576595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346317, 36.563950, 38.254745>,  <31.394333, 35.849930, 38.505867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346317, 36.563950, 38.254745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.039326, 36.508747, 38.505165>,  <30.855131, 36.475624, 38.655415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.039326, 36.508747, 38.505165>,  <31.346317, 36.563950, 38.254745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039326, 36.508747, 38.505165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232524, 0.850128, 0.472457,
		-0.597420, 0.508171, -0.620364,
		-0.767477, -0.138006, 0.626046,
		30.809082, 36.467346, 38.692978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146791, 37.245209, 38.583187>,  <31.346317, 36.563950, 38.254745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146791, 37.245209, 38.583187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917952, 37.008282, 38.810116>,  <30.780647, 36.866123, 38.946274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917952, 37.008282, 38.810116>,  <31.146791, 37.245209, 38.583187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917952, 37.008282, 38.810116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022147, 0.680295, 0.732603,
		-0.819884, 0.431688, -0.376080,
		-0.572102, -0.592321, 0.567323,
		30.746321, 36.830585, 38.980312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627764, 37.630848, 38.773003>,  <31.146791, 37.245209, 38.583187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627764, 37.630848, 38.773003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.625860, 37.337009, 39.044395>,  <30.624718, 37.160706, 39.207233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.625860, 37.337009, 39.044395>,  <30.627764, 37.630848, 38.773003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625860, 37.337009, 39.044395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212181, 0.663785, 0.717195,
		-0.977219, -0.140547, -0.159028,
		-0.004761, -0.734599, 0.678484,
		30.624432, 37.116631, 39.247940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092171, 37.731339, 39.279629>,  <30.627764, 37.630848, 38.773003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092171, 37.731339, 39.279629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.333405, 37.472813, 39.466633>,  <30.478144, 37.317696, 39.578835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.333405, 37.472813, 39.466633>,  <30.092171, 37.731339, 39.279629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333405, 37.472813, 39.466633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023939, 0.571160, 0.820489,
		-0.797319, -0.506015, 0.328985,
		0.603083, -0.646316, 0.467511,
		30.514330, 37.278919, 39.606888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766399, 37.647945, 39.954918>,  <30.092171, 37.731339, 39.279629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766399, 37.647945, 39.954918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154718, 37.554245, 39.975605>,  <30.387711, 37.498024, 39.988018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154718, 37.554245, 39.975605>,  <29.766399, 37.647945, 39.954918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154718, 37.554245, 39.975605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091021, 0.559142, 0.824060,
		-0.221953, -0.795290, 0.564137,
		0.970799, -0.234251, 0.051715,
		30.445959, 37.483971, 39.991119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892242, 37.491394, 40.708420>,  <29.766399, 37.647945, 39.954918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892242, 37.491394, 40.708420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259533, 37.551956, 40.562027>,  <30.479906, 37.588291, 40.474194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259533, 37.551956, 40.562027>,  <29.892242, 37.491394, 40.708420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259533, 37.551956, 40.562027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224817, 0.561507, 0.796346,
		0.326068, -0.813503, 0.481552,
		0.918225, 0.151401, -0.365979,
		30.535000, 37.597378, 40.452232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409044, 37.129910, 41.131775>,  <29.892242, 37.491394, 40.708420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409044, 37.129910, 41.131775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515327, 37.474041, 40.957775>,  <30.579098, 37.680519, 40.853374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515327, 37.474041, 40.957775>,  <30.409044, 37.129910, 41.131775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515327, 37.474041, 40.957775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045089, 0.439637, 0.897043,
		0.962998, -0.257967, 0.078024,
		0.265709, 0.860333, -0.435001,
		30.595041, 37.732140, 40.827274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.497524, 37.765141, 45.085384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097649, 37.763348, 45.075630>,  <39.857723, 37.762272, 45.069778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097649, 37.763348, 45.075630>,  <40.497524, 37.765141, 45.085384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097649, 37.763348, 45.075630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022712, 0.559930, 0.828229,
		0.009939, 0.828528, -0.559859,
		-0.999693, -0.004483, -0.024382,
		39.797741, 37.762001, 45.068314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263371, 38.502403, 45.199005>,  <40.497524, 37.765141, 45.085384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263371, 38.502403, 45.199005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.964493, 38.262970, 45.314526>,  <39.785168, 38.119308, 45.383839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.964493, 38.262970, 45.314526>,  <40.263371, 38.502403, 45.199005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964493, 38.262970, 45.314526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173007, 0.594743, 0.785079,
		-0.641697, 0.536638, -0.547945,
		-0.747190, -0.598582, 0.288802,
		39.740337, 38.083397, 45.401165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711243, 38.884148, 45.492241>,  <40.263371, 38.502403, 45.199005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711243, 38.884148, 45.492241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614872, 38.526791, 45.643929>,  <39.557049, 38.312378, 45.734940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614872, 38.526791, 45.643929>,  <39.711243, 38.884148, 45.492241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614872, 38.526791, 45.643929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436941, 0.448738, 0.779562,
		-0.866623, 0.022122, -0.498472,
		-0.240929, -0.893390, 0.379221,
		39.542595, 38.258774, 45.757694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017578, 38.952839, 45.763458>,  <39.711243, 38.884148, 45.492241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017578, 38.952839, 45.763458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.183640, 38.641712, 45.952206>,  <39.283276, 38.455036, 46.065453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.183640, 38.641712, 45.952206>,  <39.017578, 38.952839, 45.763458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183640, 38.641712, 45.952206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336676, 0.350494, 0.873958,
		-0.845162, -0.521690, -0.116364,
		0.415150, -0.777813, 0.471865,
		39.308186, 38.408367, 46.093765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532261, 38.796551, 46.317947>,  <39.017578, 38.952839, 45.763458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532261, 38.796551, 46.317947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840645, 38.566315, 46.426991>,  <39.025677, 38.428173, 46.492416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840645, 38.566315, 46.426991>,  <38.532261, 38.796551, 46.317947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840645, 38.566315, 46.426991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253599, 0.115196, 0.960425,
		-0.584213, -0.809585, -0.057157,
		0.770962, -0.575588, 0.272609,
		39.071934, 38.393639, 46.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354191, 38.335800, 46.795868>,  <38.532261, 38.796551, 46.317947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354191, 38.335800, 46.795868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744431, 38.381374, 46.870945>,  <38.978573, 38.408718, 46.915989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744431, 38.381374, 46.870945>,  <38.354191, 38.335800, 46.795868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744431, 38.381374, 46.870945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193820, 0.045247, 0.979993,
		0.103175, -0.992456, 0.066228,
		0.975596, 0.113947, 0.187690,
		39.037109, 38.415558, 46.927254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467117, 37.848507, 47.395962>,  <38.354191, 38.335800, 46.795868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467117, 37.848507, 47.395962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768620, 38.111347, 47.392635>,  <38.949520, 38.269051, 47.390640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768620, 38.111347, 47.392635>,  <38.467117, 37.848507, 47.395962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768620, 38.111347, 47.392635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060148, 0.081583, 0.994850,
		0.654395, -0.749375, 0.101017,
		0.753757, 0.657101, -0.008315,
		38.994747, 38.308479, 47.390141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846508, 37.652298, 47.943317>,  <38.467117, 37.848507, 47.395962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846508, 37.652298, 47.943317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.989151, 38.014885, 47.852856>,  <39.074738, 38.232437, 47.798580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.989151, 38.014885, 47.852856>,  <38.846508, 37.652298, 47.943317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989151, 38.014885, 47.852856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044113, 0.225458, 0.973254,
		0.933214, -0.357043, 0.040412,
		0.356604, 0.906471, -0.226150,
		39.096134, 38.286827, 47.785011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225471, 37.832375, 48.500511>,  <38.846508, 37.652298, 47.943317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225471, 37.832375, 48.500511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186337, 38.197220, 48.341274>,  <39.162857, 38.416126, 48.245731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186337, 38.197220, 48.341274>,  <39.225471, 37.832375, 48.500511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186337, 38.197220, 48.341274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131652, 0.408357, 0.903279,
		0.986456, 0.035966, -0.160035,
		-0.097839, 0.912114, -0.398091,
		39.156986, 38.470856, 48.221848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831635, 38.267879, 48.709545>,  <39.225471, 37.832375, 48.500511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831635, 38.267879, 48.709545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501930, 38.477650, 48.624157>,  <39.304108, 38.603512, 48.572926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501930, 38.477650, 48.624157>,  <39.831635, 38.267879, 48.709545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501930, 38.477650, 48.624157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114649, 0.523798, 0.844092,
		0.554475, 0.671281, -0.491873,
		-0.824265, 0.524421, -0.213471,
		39.254650, 38.634975, 48.560116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926510, 38.895798, 49.015209>,  <39.831635, 38.267879, 48.709545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926510, 38.895798, 49.015209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533871, 38.912376, 48.940651>,  <39.298286, 38.922321, 48.895916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533871, 38.912376, 48.940651>,  <39.926510, 38.895798, 49.015209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533871, 38.912376, 48.940651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133052, 0.551702, 0.823360,
		0.136957, 0.833010, -0.536037,
		-0.981601, 0.041445, -0.186393,
		39.239391, 38.924809, 48.884731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725395, 39.542007, 49.302727>,  <39.926510, 38.895798, 49.015209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725395, 39.542007, 49.302727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372704, 39.367008, 49.232132>,  <39.161087, 39.262009, 49.189774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372704, 39.367008, 49.232132>,  <39.725395, 39.542007, 49.302727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372704, 39.367008, 49.232132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391050, 0.468559, 0.792170,
		-0.263876, 0.767496, -0.584225,
		-0.881731, -0.437495, -0.176488,
		39.108185, 39.235760, 49.179184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285328, 40.058681, 49.155220>,  <39.725395, 39.542007, 49.302727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285328, 40.058681, 49.155220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113670, 39.735355, 49.316444>,  <39.010674, 39.541359, 49.413181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113670, 39.735355, 49.316444>,  <39.285328, 40.058681, 49.155220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113670, 39.735355, 49.316444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355039, 0.561284, 0.747601,
		-0.830531, 0.177726, -0.527856,
		-0.429146, -0.808315, 0.403064,
		38.984928, 39.492863, 49.437363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686657, 40.296455, 49.495655>,  <39.285328, 40.058681, 49.155220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686657, 40.296455, 49.495655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773415, 39.940617, 49.656445>,  <38.825470, 39.727116, 49.752918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773415, 39.940617, 49.656445>,  <38.686657, 40.296455, 49.495655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773415, 39.940617, 49.656445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410983, 0.290288, 0.864191,
		-0.885466, -0.352639, -0.302647,
		0.216892, -0.889595, 0.401969,
		38.838482, 39.673737, 49.777035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485470, 40.814201, 49.053223>,  <38.686657, 40.296455, 49.495655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485470, 40.814201, 49.053223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257515, 41.123280, 48.941380>,  <38.120743, 41.308727, 48.874275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257515, 41.123280, 48.941380>,  <38.485470, 40.814201, 49.053223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257515, 41.123280, 48.941380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118480, -0.413976, -0.902544,
		-0.813139, -0.481218, 0.327467,
		-0.569884, 0.772692, -0.279605,
		38.086548, 41.355087, 48.857498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941650, 40.574268, 48.606281>,  <38.485470, 40.814201, 49.053223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941650, 40.574268, 48.606281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925644, 40.949726, 48.469261>,  <37.916042, 41.175003, 48.387051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925644, 40.949726, 48.469261>,  <37.941650, 40.574268, 48.606281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925644, 40.949726, 48.469261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273137, -0.340041, -0.899871,
		-0.961143, 0.057557, 0.269985,
		-0.040012, 0.938648, -0.342549,
		37.913639, 41.231319, 48.366497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312241, 40.668816, 48.202400>,  <37.941650, 40.574268, 48.606281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312241, 40.668816, 48.202400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567017, 40.945011, 48.065262>,  <37.719883, 41.110729, 47.982979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567017, 40.945011, 48.065262>,  <37.312241, 40.668816, 48.202400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567017, 40.945011, 48.065262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244978, -0.240387, -0.939255,
		-0.730957, 0.682235, 0.016043,
		0.636936, 0.690485, -0.342846,
		37.758099, 41.152157, 47.962410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929184, 40.973591, 47.581745>,  <37.312241, 40.668816, 48.202400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929184, 40.973591, 47.581745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312778, 41.083523, 47.554001>,  <37.542934, 41.149483, 47.537354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312778, 41.083523, 47.554001>,  <36.929184, 40.973591, 47.581745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312778, 41.083523, 47.554001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030403, -0.143564, -0.989174,
		-0.281808, 0.950716, -0.129321,
		0.958989, 0.274826, -0.069362,
		37.600475, 41.165970, 47.533192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002579, 41.620773, 47.147835>,  <36.929184, 40.973591, 47.581745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002579, 41.620773, 47.147835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344265, 41.413937, 47.126175>,  <37.549274, 41.289833, 47.113178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344265, 41.413937, 47.126175>,  <37.002579, 41.620773, 47.147835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344265, 41.413937, 47.126175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121244, -0.096841, -0.987888,
		0.505588, 0.850432, -0.145417,
		0.854214, -0.517095, -0.054148,
		37.600529, 41.258808, 47.109932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352924, 41.779991, 46.576809>,  <37.002579, 41.620773, 47.147835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352924, 41.779991, 46.576809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542072, 41.432854, 46.637783>,  <37.655563, 41.224571, 46.674366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542072, 41.432854, 46.637783>,  <37.352924, 41.779991, 46.576809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542072, 41.432854, 46.637783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164201, -0.083172, -0.982914,
		0.865696, 0.489822, 0.103171,
		0.472872, -0.867846, 0.152431,
		37.683933, 41.172501, 46.683514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795296, 41.874771, 46.169598>,  <37.352924, 41.779991, 46.576809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795296, 41.874771, 46.169598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825562, 41.478973, 46.218872>,  <37.843719, 41.241493, 46.248436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825562, 41.478973, 46.218872>,  <37.795296, 41.874771, 46.169598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825562, 41.478973, 46.218872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369757, -0.086886, -0.925057,
		0.926042, 0.115543, 0.359299,
		0.075666, -0.989495, 0.123183,
		37.848263, 41.182125, 46.255829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454140, 41.677738, 45.819908>,  <37.795296, 41.874771, 46.169598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454140, 41.677738, 45.819908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245682, 41.340958, 45.875793>,  <38.120605, 41.138889, 45.909325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245682, 41.340958, 45.875793>,  <38.454140, 41.677738, 45.819908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245682, 41.340958, 45.875793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153018, -0.253228, -0.955228,
		0.839639, -0.476434, 0.260803,
		-0.521145, -0.841954, 0.139717,
		38.089336, 41.088371, 45.917709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752296, 41.216713, 45.469219>,  <38.454140, 41.677738, 45.819908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752296, 41.216713, 45.469219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452503, 40.963409, 45.546429>,  <38.272629, 40.811428, 45.592754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452503, 40.963409, 45.546429>,  <38.752296, 41.216713, 45.469219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452503, 40.963409, 45.546429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171194, -0.467034, -0.867509,
		0.639507, -0.617138, 0.458444,
		-0.749482, -0.633261, 0.193021,
		38.227657, 40.773430, 45.604336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992065, 40.568359, 45.283302>,  <38.752296, 41.216713, 45.469219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992065, 40.568359, 45.283302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592461, 40.557671, 45.269077>,  <38.352699, 40.551258, 45.260544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592461, 40.557671, 45.269077>,  <38.992065, 40.568359, 45.283302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592461, 40.557671, 45.269077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044335, -0.532432, -0.845311,
		0.003658, -0.846050, 0.533090,
		-0.999010, -0.026727, -0.035562,
		38.292759, 40.549652, 45.258408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877190, 39.928318, 45.107056>,  <38.992065, 40.568359, 45.283302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877190, 39.928318, 45.107056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520123, 40.093655, 45.035164>,  <38.305882, 40.192856, 44.992027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520123, 40.093655, 45.035164>,  <38.877190, 39.928318, 45.107056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520123, 40.093655, 45.035164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179329, -0.691550, -0.699714,
		-0.413512, -0.592378, 0.691445,
		-0.892664, 0.413336, -0.179733,
		38.252323, 40.217655, 44.981243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371880, 39.383041, 44.969982>,  <38.877190, 39.928318, 45.107056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371880, 39.383041, 44.969982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219944, 39.705284, 44.788116>,  <38.128784, 39.898628, 44.678997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219944, 39.705284, 44.788116>,  <38.371880, 39.383041, 44.969982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219944, 39.705284, 44.788116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112271, -0.528013, -0.841782,
		-0.918214, -0.268695, 0.291007,
		-0.379838, 0.805608, -0.454663,
		38.105991, 39.946968, 44.651718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883839, 39.114693, 44.620892>,  <38.371880, 39.383041, 44.969982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883839, 39.114693, 44.620892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921043, 39.476681, 44.454819>,  <37.943367, 39.693874, 44.355175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921043, 39.476681, 44.454819>,  <37.883839, 39.114693, 44.620892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921043, 39.476681, 44.454819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034255, -0.419647, -0.907041,
		-0.995076, 0.070142, -0.070031,
		0.093010, 0.904973, -0.415178,
		37.948948, 39.748173, 44.330265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411194, 39.084152, 44.156956>,  <37.883839, 39.114693, 44.620892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411194, 39.084152, 44.156956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.688679, 39.344036, 44.032608>,  <37.855171, 39.499966, 43.958000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.688679, 39.344036, 44.032608>,  <37.411194, 39.084152, 44.156956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688679, 39.344036, 44.032608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030098, -0.457387, -0.888758,
		-0.719623, 0.607185, -0.336850,
		0.693712, 0.649709, -0.310872,
		37.896793, 39.538948, 43.939346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690166, 39.285450, 44.162785>,  <37.411194, 39.084152, 44.156956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690166, 39.285450, 44.162785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366535, 39.051224, 44.142773>,  <36.172356, 38.910686, 44.130764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366535, 39.051224, 44.142773>,  <36.690166, 39.285450, 44.162785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366535, 39.051224, 44.142773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274254, 0.300893, 0.913372,
		-0.519787, 0.752710, -0.404041,
		-0.809077, -0.585569, -0.050033,
		36.123814, 38.875553, 44.127762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074131, 39.720909, 44.301041>,  <36.690166, 39.285450, 44.162785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074131, 39.720909, 44.301041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955250, 39.351315, 44.397305>,  <35.883919, 39.129559, 44.455063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955250, 39.351315, 44.397305>,  <36.074131, 39.720909, 44.301041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955250, 39.351315, 44.397305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196404, 0.305818, 0.931612,
		-0.934395, 0.229615, -0.272366,
		-0.297206, -0.923987, 0.240658,
		35.866089, 39.074120, 44.469501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414532, 39.729210, 44.684952>,  <36.074131, 39.720909, 44.301041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414532, 39.729210, 44.684952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514069, 39.346722, 44.746548>,  <35.573792, 39.117229, 44.783504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514069, 39.346722, 44.746548>,  <35.414532, 39.729210, 44.684952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514069, 39.346722, 44.746548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455133, 0.024892, 0.890075,
		-0.854944, -0.291576, -0.429015,
		0.248845, -0.956223, 0.153987,
		35.588722, 39.059853, 44.792744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836426, 39.371189, 45.017052>,  <35.414532, 39.729210, 44.684952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836426, 39.371189, 45.017052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162884, 39.155697, 45.100643>,  <35.358761, 39.026402, 45.150799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162884, 39.155697, 45.100643>,  <34.836426, 39.371189, 45.017052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162884, 39.155697, 45.100643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160507, 0.136067, 0.977611,
		-0.555106, -0.831416, 0.024580,
		0.816147, -0.538733, 0.208979,
		35.407726, 38.994076, 45.163338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604671, 38.775597, 45.473019>,  <34.836426, 39.371189, 45.017052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604671, 38.775597, 45.473019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995434, 38.827480, 45.540936>,  <35.229893, 38.858608, 45.581684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995434, 38.827480, 45.540936>,  <34.604671, 38.775597, 45.473019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995434, 38.827480, 45.540936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166912, -0.032808, 0.985426,
		0.133386, -0.991009, -0.010400,
		0.976907, 0.129706, 0.169788,
		35.288506, 38.866390, 45.591873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689713, 38.368916, 46.090446>,  <34.604671, 38.775597, 45.473019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689713, 38.368916, 46.090446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016476, 38.599354, 46.079334>,  <35.212532, 38.737617, 46.072666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016476, 38.599354, 46.079334>,  <34.689713, 38.368916, 46.090446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016476, 38.599354, 46.079334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003408, 0.052989, 0.998589,
		0.576758, -0.815661, 0.045250,
		0.816907, 0.576099, -0.027782,
		35.261547, 38.772182, 46.070999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084682, 38.114002, 46.623051>,  <34.689713, 38.368916, 46.090446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084682, 38.114002, 46.623051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218678, 38.483704, 46.549805>,  <35.299076, 38.705524, 46.505859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218678, 38.483704, 46.549805>,  <35.084682, 38.114002, 46.623051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218678, 38.483704, 46.549805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120836, 0.150593, 0.981183,
		0.934441, -0.350813, -0.061236,
		0.334990, 0.924258, -0.183111,
		35.319176, 38.760983, 46.494873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146450, 37.519421, 47.048965>,  <35.084682, 38.114002, 46.623051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146450, 37.519421, 47.048965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751968, 37.488991, 47.107773>,  <34.515278, 37.470734, 47.143059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751968, 37.488991, 47.107773>,  <35.146450, 37.519421, 47.048965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751968, 37.488991, 47.107773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106435, -0.388832, -0.915140,
		0.126784, -0.918163, 0.375370,
		-0.986204, -0.076072, 0.147022,
		34.456108, 37.466167, 47.151878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005196, 36.911133, 46.777630>,  <35.146450, 37.519421, 47.048965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005196, 36.911133, 46.777630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649014, 37.092495, 46.793232>,  <34.435307, 37.201313, 46.802593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649014, 37.092495, 46.793232>,  <35.005196, 36.911133, 46.777630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649014, 37.092495, 46.793232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261144, -0.438918, -0.859741,
		-0.372688, -0.775745, 0.509238,
		-0.890453, 0.453400, 0.039002,
		34.381878, 37.228516, 46.804932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516754, 36.378189, 46.743145>,  <35.005196, 36.911133, 46.777630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516754, 36.378189, 46.743145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341156, 36.717560, 46.624855>,  <34.235798, 36.921185, 46.553883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341156, 36.717560, 46.624855>,  <34.516754, 36.378189, 46.743145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341156, 36.717560, 46.624855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145807, -0.392040, -0.908320,
		-0.886581, -0.355628, 0.295810,
		-0.438994, 0.848430, -0.295722,
		34.209457, 36.972088, 46.536137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991714, 36.145512, 46.352402>,  <34.516754, 36.378189, 46.743145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991714, 36.145512, 46.352402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.012424, 36.526539, 46.232452>,  <34.024849, 36.755157, 46.160480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.012424, 36.526539, 46.232452>,  <33.991714, 36.145512, 46.352402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012424, 36.526539, 46.232452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146238, -0.289810, -0.945846,
		-0.987894, 0.092823, 0.124298,
		0.051774, 0.952572, -0.299876,
		34.027958, 36.812309, 46.142490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615452, 36.200245, 45.715164>,  <33.991714, 36.145512, 46.352402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615452, 36.200245, 45.715164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819077, 36.544254, 45.701241>,  <33.941254, 36.750660, 45.692886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819077, 36.544254, 45.701241>,  <33.615452, 36.200245, 45.715164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819077, 36.544254, 45.701241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031668, -0.021699, -0.999263,
		-0.860145, 0.509793, 0.016190,
		0.509066, 0.860023, -0.034808,
		33.971798, 36.802261, 45.690800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189785, 36.681408, 45.349148>,  <33.615452, 36.200245, 45.715164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189785, 36.681408, 45.349148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578732, 36.767361, 45.312637>,  <33.812099, 36.818932, 45.290730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578732, 36.767361, 45.312637>,  <33.189785, 36.681408, 45.349148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578732, 36.767361, 45.312637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054662, -0.170559, -0.983830,
		-0.226975, 0.961632, -0.154100,
		0.972365, 0.214881, -0.091277,
		33.870441, 36.831825, 45.285255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301395, 37.194801, 44.839260>,  <33.189785, 36.681408, 45.349148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301395, 37.194801, 44.839260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649208, 36.997303, 44.834633>,  <33.857895, 36.878803, 44.831856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649208, 36.997303, 44.834633>,  <33.301395, 37.194801, 44.839260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649208, 36.997303, 44.834633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011220, 0.003674, -0.999930,
		0.493750, 0.869601, -0.002345,
		0.869532, -0.493742, -0.011571,
		33.910069, 36.849182, 44.831161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.191933, 36.672665, 49.520554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.449619, 36.933651, 49.360916>,  <37.604233, 37.090244, 49.265133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.449619, 36.933651, 49.360916>,  <37.191933, 36.672665, 49.520554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449619, 36.933651, 49.360916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343758, -0.713125, -0.610969,
		-0.683239, 0.256405, -0.683697,
		0.644217, 0.652464, -0.399093,
		37.642883, 37.129391, 49.241188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044128, 36.685223, 48.820019>,  <37.191933, 36.672665, 49.520554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044128, 36.685223, 48.820019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423004, 36.798977, 48.879303>,  <37.650330, 36.867229, 48.914871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423004, 36.798977, 48.879303>,  <37.044128, 36.685223, 48.820019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423004, 36.798977, 48.879303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297206, -0.604864, -0.738788,
		-0.120454, 0.743817, -0.657439,
		0.947185, 0.284384, 0.148209,
		37.707161, 36.884293, 48.923767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302937, 36.876984, 48.236450>,  <37.044128, 36.685223, 48.820019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302937, 36.876984, 48.236450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.667130, 36.826458, 48.393963>,  <37.885647, 36.796143, 48.488472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.667130, 36.826458, 48.393963>,  <37.302937, 36.876984, 48.236450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667130, 36.826458, 48.393963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307152, -0.431042, -0.848446,
		0.276912, 0.893446, -0.353657,
		0.910482, -0.126318, 0.393785,
		37.940273, 36.788563, 48.512100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727196, 37.126244, 47.693069>,  <37.302937, 36.876984, 48.236450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727196, 37.126244, 47.693069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.916916, 36.870880, 47.935547>,  <38.030746, 36.717663, 48.081036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.916916, 36.870880, 47.935547>,  <37.727196, 37.126244, 47.693069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916916, 36.870880, 47.935547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302966, -0.528153, -0.793262,
		0.826589, 0.559903, -0.057089,
		0.474302, -0.638406, 0.606197,
		38.059208, 36.679359, 48.117405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413651, 36.961178, 47.355145>,  <37.727196, 37.126244, 47.693069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413651, 36.961178, 47.355145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345562, 36.663334, 47.613316>,  <38.304710, 36.484627, 47.768219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345562, 36.663334, 47.613316>,  <38.413651, 36.961178, 47.355145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345562, 36.663334, 47.613316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060233, -0.661627, -0.747410,
		0.983563, -0.088350, 0.157474,
		-0.170222, -0.744610, 0.645430,
		38.294495, 36.439949, 47.806946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899155, 36.439117, 47.217003>,  <38.413651, 36.961178, 47.355145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899155, 36.439117, 47.217003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.587952, 36.275871, 47.408058>,  <38.401230, 36.177925, 47.522690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.587952, 36.275871, 47.408058>,  <38.899155, 36.439117, 47.217003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587952, 36.275871, 47.408058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068394, -0.700730, -0.710141,
		0.624516, -0.585165, 0.517263,
		-0.778012, -0.408117, 0.477639,
		38.354549, 36.153435, 47.551350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109772, 35.756142, 47.221798>,  <38.899155, 36.439117, 47.217003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109772, 35.756142, 47.221798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.730335, 35.707363, 47.338623>,  <38.502674, 35.678097, 47.408718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.730335, 35.707363, 47.338623>,  <39.109772, 35.756142, 47.221798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730335, 35.707363, 47.338623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062372, -0.832668, -0.550249,
		0.310296, -0.540178, 0.782256,
		-0.948592, -0.121949, 0.292065,
		38.445759, 35.670780, 47.426243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117920, 35.159515, 47.288155>,  <39.109772, 35.756142, 47.221798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117920, 35.159515, 47.288155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.726730, 35.231701, 47.246208>,  <38.492016, 35.275013, 47.221039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.726730, 35.231701, 47.246208>,  <39.117920, 35.159515, 47.288155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726730, 35.231701, 47.246208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084608, -0.802064, -0.591214,
		-0.190807, -0.569320, 0.799667,
		-0.977975, 0.180466, -0.104870,
		38.433338, 35.285839, 47.214748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783020, 34.538467, 47.420746>,  <39.117920, 35.159515, 47.288155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783020, 34.538467, 47.420746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.505394, 34.752678, 47.228294>,  <38.338818, 34.881203, 47.112823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.505394, 34.752678, 47.228294>,  <38.783020, 34.538467, 47.420746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505394, 34.752678, 47.228294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066682, -0.713265, -0.697715,
		-0.716790, -0.452198, 0.530782,
		-0.694093, 0.535509, -0.481108,
		38.297173, 34.913334, 47.083958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250732, 34.065491, 47.318134>,  <38.783020, 34.538467, 47.420746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250732, 34.065491, 47.318134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.209473, 34.349903, 47.039913>,  <38.184715, 34.520550, 46.872982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.209473, 34.349903, 47.039913>,  <38.250732, 34.065491, 47.318134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209473, 34.349903, 47.039913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106718, -0.703155, -0.702983,
		-0.988924, 0.001715, 0.148411,
		-0.103150, 0.711035, -0.695550,
		38.178528, 34.563213, 46.831249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771511, 33.811386, 46.817085>,  <38.250732, 34.065491, 47.318134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771511, 33.811386, 46.817085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.934040, 34.102409, 46.595974>,  <38.031559, 34.277023, 46.463306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.934040, 34.102409, 46.595974>,  <37.771511, 33.811386, 46.817085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934040, 34.102409, 46.595974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135673, -0.550226, -0.823920,
		-0.903601, 0.409775, -0.124860,
		0.406323, 0.727555, -0.552781,
		38.055935, 34.320675, 46.430141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281082, 33.900314, 46.289661>,  <37.771511, 33.811386, 46.817085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281082, 33.900314, 46.289661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633038, 34.035633, 46.156185>,  <37.844212, 34.116825, 46.076099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633038, 34.035633, 46.156185>,  <37.281082, 33.900314, 46.289661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633038, 34.035633, 46.156185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052531, -0.628682, -0.775886,
		-0.472266, 0.700223, -0.535399,
		0.879889, 0.338299, -0.333689,
		37.897003, 34.137123, 46.056080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488316, 34.478466, 45.896549>,  <37.281082, 33.900314, 46.289661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488316, 34.478466, 45.896549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107201, 34.383270, 45.821129>,  <36.878532, 34.326153, 45.775879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107201, 34.383270, 45.821129>,  <37.488316, 34.478466, 45.896549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107201, 34.383270, 45.821129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251315, 0.269679, 0.929577,
		-0.170378, 0.933079, -0.316758,
		-0.952792, -0.237985, -0.188549,
		36.821362, 34.311874, 45.764565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011154, 35.131020, 45.944275>,  <37.488316, 34.478466, 45.896549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011154, 35.131020, 45.944275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831303, 34.783260, 46.026234>,  <36.723392, 34.574604, 46.075409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831303, 34.783260, 46.026234>,  <37.011154, 35.131020, 45.944275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831303, 34.783260, 46.026234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276153, 0.353451, 0.893763,
		-0.849457, 0.345277, -0.399008,
		-0.449625, -0.869400, 0.204892,
		36.696415, 34.522442, 46.087700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495724, 35.276497, 46.322208>,  <37.011154, 35.131020, 45.944275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495724, 35.276497, 46.322208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.502953, 34.887768, 46.416218>,  <36.507290, 34.654530, 46.472622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.502953, 34.887768, 46.416218>,  <36.495724, 35.276497, 46.322208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502953, 34.887768, 46.416218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370809, 0.211780, 0.904240,
		-0.928533, -0.103492, -0.356532,
		0.018075, -0.971822, 0.235021,
		36.508377, 34.596222, 46.486725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955452, 35.252476, 46.631405>,  <36.495724, 35.276497, 46.322208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955452, 35.252476, 46.631405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.100029, 34.894897, 46.737404>,  <36.186775, 34.680351, 46.801003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.100029, 34.894897, 46.737404>,  <35.955452, 35.252476, 46.631405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100029, 34.894897, 46.737404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281631, 0.166266, 0.945008,
		-0.888843, -0.416199, -0.191666,
		0.361444, -0.893943, 0.264999,
		36.208462, 34.626713, 46.816902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385628, 34.875179, 46.970650>,  <35.955452, 35.252476, 46.631405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385628, 34.875179, 46.970650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.722248, 34.703182, 47.101433>,  <35.924221, 34.599983, 47.179901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.722248, 34.703182, 47.101433>,  <35.385628, 34.875179, 46.970650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722248, 34.703182, 47.101433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408592, -0.110789, 0.905968,
		-0.353342, -0.896006, -0.268928,
		0.841548, -0.429998, 0.326955,
		35.974712, 34.574184, 47.199520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169865, 34.219624, 47.217247>,  <35.385628, 34.875179, 46.970650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169865, 34.219624, 47.217247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.514679, 34.334351, 47.384403>,  <35.721565, 34.403187, 47.484699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.514679, 34.334351, 47.384403>,  <35.169865, 34.219624, 47.217247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514679, 34.334351, 47.384403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406911, -0.099954, 0.907983,
		0.302199, -0.952755, 0.030548,
		0.862032, 0.286821, 0.417893,
		35.773289, 34.420399, 47.509769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252541, 33.825203, 47.931885>,  <35.169865, 34.219624, 47.217247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252541, 33.825203, 47.931885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.497414, 34.139515, 47.967171>,  <35.644337, 34.328102, 47.988342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.497414, 34.139515, 47.967171>,  <35.252541, 33.825203, 47.931885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497414, 34.139515, 47.967171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250863, 0.087213, 0.964086,
		0.749870, -0.612321, 0.250514,
		0.612179, 0.785784, 0.088210,
		35.681068, 34.375252, 47.993633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618767, 33.706203, 48.560631>,  <35.252541, 33.825203, 47.931885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618767, 33.706203, 48.560631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621063, 34.094875, 48.466133>,  <35.622440, 34.328079, 48.409435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621063, 34.094875, 48.466133>,  <35.618767, 33.706203, 48.560631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621063, 34.094875, 48.466133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231196, 0.231136, 0.945053,
		0.972890, 0.049191, 0.225976,
		0.005743, 0.971677, -0.236242,
		35.622787, 34.386379, 48.395260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778332, 34.080929, 49.206551>,  <35.618767, 33.706203, 48.560631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778332, 34.080929, 49.206551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.619843, 34.380615, 48.994255>,  <35.524750, 34.560425, 48.866879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.619843, 34.380615, 48.994255>,  <35.778332, 34.080929, 49.206551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619843, 34.380615, 48.994255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373875, 0.396298, 0.838550,
		0.838583, 0.530686, 0.123088,
		-0.396227, 0.749213, -0.530738,
		35.500973, 34.605381, 48.835033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826023, 34.571861, 49.659058>,  <35.778332, 34.080929, 49.206551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826023, 34.571861, 49.659058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553432, 34.719254, 49.406136>,  <35.389877, 34.807690, 49.254383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553432, 34.719254, 49.406136>,  <35.826023, 34.571861, 49.659058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553432, 34.719254, 49.406136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495799, 0.403064, 0.769235,
		0.538310, 0.837712, -0.091985,
		-0.681474, 0.368481, -0.632310,
		35.348991, 34.829800, 49.216442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595146, 35.203915, 49.892330>,  <35.826023, 34.571861, 49.659058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595146, 35.203915, 49.892330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.301956, 35.102684, 49.639759>,  <35.126041, 35.041946, 49.488216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.301956, 35.102684, 49.639759>,  <35.595146, 35.203915, 49.892330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301956, 35.102684, 49.639759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669365, 0.433743, 0.603173,
		0.121225, 0.864765, -0.487326,
		-0.732977, -0.253079, -0.631423,
		35.082062, 35.026760, 49.450333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199444, 35.690536, 49.959965>,  <35.595146, 35.203915, 49.892330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199444, 35.690536, 49.959965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960026, 35.413620, 49.798733>,  <34.816376, 35.247471, 49.701996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960026, 35.413620, 49.798733>,  <35.199444, 35.690536, 49.959965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960026, 35.413620, 49.798733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744029, 0.293913, 0.600030,
		-0.296928, 0.659046, -0.691008,
		-0.598544, -0.692296, -0.403078,
		34.780464, 35.205933, 49.677811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656158, 36.034813, 49.702805>,  <35.199444, 35.690536, 49.959965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656158, 36.034813, 49.702805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519485, 35.665012, 49.770401>,  <34.437481, 35.443134, 49.810959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519485, 35.665012, 49.770401>,  <34.656158, 36.034813, 49.702805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519485, 35.665012, 49.770401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697177, 0.369920, 0.614088,
		-0.630236, 0.092005, -0.770933,
		-0.341683, -0.924497, 0.168993,
		34.416981, 35.387665, 49.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010406, 36.045353, 49.788322>,  <34.656158, 36.034813, 49.702805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010406, 36.045353, 49.788322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.040085, 35.678986, 49.946106>,  <34.057892, 35.459167, 50.040775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.040085, 35.678986, 49.946106>,  <34.010406, 36.045353, 49.788322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040085, 35.678986, 49.946106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649552, 0.255746, 0.716014,
		-0.756688, -0.309347, -0.575958,
		0.074198, -0.915914, 0.394457,
		34.062344, 35.404213, 50.064442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148304, 36.752598, 49.918499>,  <34.010406, 36.045353, 49.788322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148304, 36.752598, 49.918499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997261, 37.122921, 49.911697>,  <33.906635, 37.345116, 49.907616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997261, 37.122921, 49.911697>,  <34.148304, 36.752598, 49.918499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997261, 37.122921, 49.911697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265086, 0.090486, -0.959969,
		-0.887210, -0.367000, -0.279588,
		-0.377608, 0.925809, -0.017007,
		33.883980, 37.400665, 49.906597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452690, 36.935383, 49.486385>,  <34.148304, 36.752598, 49.918499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452690, 36.935383, 49.486385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695118, 37.252590, 49.511047>,  <33.840572, 37.442917, 49.525845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695118, 37.252590, 49.511047>,  <33.452690, 36.935383, 49.486385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695118, 37.252590, 49.511047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148794, -0.036891, -0.988180,
		-0.781374, 0.608075, -0.140355,
		0.606065, 0.793022, 0.061652,
		33.876938, 37.490498, 49.529545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117844, 37.475784, 49.088516>,  <33.452690, 36.935383, 49.486385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117844, 37.475784, 49.088516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512352, 37.539253, 49.106827>,  <33.749058, 37.577335, 49.117813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512352, 37.539253, 49.106827>,  <33.117844, 37.475784, 49.088516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512352, 37.539253, 49.106827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054463, -0.050820, -0.997222,
		-0.155908, 0.986022, -0.058764,
		0.986269, 0.158676, 0.045779,
		33.808231, 37.586857, 49.120560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322613, 38.003017, 48.560719>,  <33.117844, 37.475784, 49.088516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322613, 38.003017, 48.560719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661709, 37.807220, 48.642426>,  <33.865166, 37.689743, 48.691448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661709, 37.807220, 48.642426>,  <33.322613, 38.003017, 48.560719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661709, 37.807220, 48.642426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233572, -0.001244, -0.972339,
		0.476209, 0.872005, 0.113278,
		0.847744, -0.489495, 0.204268,
		33.916031, 37.660374, 48.703705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617752, 38.345047, 48.147633>,  <33.322613, 38.003017, 48.560719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617752, 38.345047, 48.147633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.823635, 38.009583, 48.218876>,  <33.947163, 37.808304, 48.261623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.823635, 38.009583, 48.218876>,  <33.617752, 38.345047, 48.147633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823635, 38.009583, 48.218876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082725, -0.158189, -0.983937,
		0.853367, 0.521171, -0.012042,
		0.514705, -0.838664, 0.178107,
		33.978046, 37.757984, 48.272308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155769, 38.451469, 47.748348>,  <33.617752, 38.345047, 48.147633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155769, 38.451469, 47.748348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.137684, 38.058533, 47.820972>,  <34.126831, 37.822769, 47.864548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.137684, 38.058533, 47.820972>,  <34.155769, 38.451469, 47.748348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137684, 38.058533, 47.820972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126256, -0.185905, -0.974422,
		0.990967, -0.021133, 0.132432,
		-0.045213, -0.982341, 0.181557,
		34.124119, 37.763832, 47.875439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887112, 38.083511, 47.533527>,  <34.155769, 38.451469, 47.748348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887112, 38.083511, 47.533527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573986, 37.834904, 47.545597>,  <34.386108, 37.685738, 47.552837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573986, 37.834904, 47.545597>,  <34.887112, 38.083511, 47.533527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573986, 37.834904, 47.545597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186301, -0.280365, -0.941641,
		0.593710, -0.731509, 0.335264,
		-0.782815, -0.621522, 0.030175,
		34.339142, 37.648449, 47.554649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630219, 38.247250, 47.091469>,  <34.887112, 38.083511, 47.533527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630219, 38.247250, 47.091469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.538036, 38.620506, 46.981102>,  <35.482727, 38.844460, 46.914883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.538036, 38.620506, 46.981102>,  <35.630219, 38.247250, 47.091469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538036, 38.620506, 46.981102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241078, 0.329462, 0.912873,
		0.942747, 0.143856, -0.300887,
		-0.230453, 0.933145, -0.275919,
		35.468899, 38.900452, 46.898327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097759, 38.693405, 47.486713>,  <35.630219, 38.247250, 47.091469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097759, 38.693405, 47.486713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840797, 38.971474, 47.357685>,  <35.686619, 39.138313, 47.280270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840797, 38.971474, 47.357685>,  <36.097759, 38.693405, 47.486713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840797, 38.971474, 47.357685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247241, 0.586401, 0.771366,
		0.725388, 0.415776, -0.548582,
		-0.642404, 0.695172, -0.322572,
		35.648075, 39.180027, 47.260914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398876, 39.248478, 47.630661>,  <36.097759, 38.693405, 47.486713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398876, 39.248478, 47.630661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030178, 39.399567, 47.595524>,  <35.808960, 39.490219, 47.574444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030178, 39.399567, 47.595524>,  <36.398876, 39.248478, 47.630661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030178, 39.399567, 47.595524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172325, 0.601857, 0.779790,
		0.347414, 0.703627, -0.619848,
		-0.921742, 0.377725, -0.087841,
		35.753654, 39.512886, 47.569172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548447, 39.921272, 47.931225>,  <36.398876, 39.248478, 47.630661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548447, 39.921272, 47.931225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149525, 39.894829, 47.943993>,  <35.910172, 39.878963, 47.951653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149525, 39.894829, 47.943993>,  <36.548447, 39.921272, 47.931225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149525, 39.894829, 47.943993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031587, 0.778951, 0.626289,
		-0.066269, 0.623591, -0.778937,
		-0.997302, -0.066108, 0.031923,
		35.850334, 39.874996, 47.953568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338028, 40.571991, 47.878090>,  <36.548447, 39.921272, 47.931225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338028, 40.571991, 47.878090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031376, 40.382465, 48.051422>,  <35.847385, 40.268749, 48.155422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031376, 40.382465, 48.051422>,  <36.338028, 40.571991, 47.878090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031376, 40.382465, 48.051422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002543, 0.677118, 0.735871,
		-0.642083, 0.563039, -0.520304,
		-0.766631, -0.473814, 0.433334,
		35.801388, 40.240322, 48.181423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857414, 41.077629, 47.979450>,  <36.338028, 40.571991, 47.878090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857414, 41.077629, 47.979450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785652, 40.787109, 48.244869>,  <35.742596, 40.612797, 48.404121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785652, 40.787109, 48.244869>,  <35.857414, 41.077629, 47.979450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785652, 40.787109, 48.244869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322869, 0.680606, 0.657671,
		-0.929284, -0.096248, -0.356607,
		-0.179410, -0.726300, 0.663551,
		35.731831, 40.569218, 48.443935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206284, 41.292240, 48.242687>,  <35.857414, 41.077629, 47.979450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206284, 41.292240, 48.242687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380611, 41.059509, 48.517361>,  <35.485210, 40.919872, 48.682163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380611, 41.059509, 48.517361>,  <35.206284, 41.292240, 48.242687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380611, 41.059509, 48.517361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429673, 0.535898, 0.726770,
		-0.790848, -0.611791, -0.016440,
		0.435821, -0.581829, 0.686684,
		35.511356, 40.884960, 48.723366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814560, 41.446407, 48.789520>,  <35.206284, 41.292240, 48.242687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814560, 41.446407, 48.789520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.118591, 41.244694, 48.953465>,  <35.301010, 41.123665, 49.051830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.118591, 41.244694, 48.953465>,  <34.814560, 41.446407, 48.789520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118591, 41.244694, 48.953465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239170, 0.369358, 0.897983,
		-0.604219, -0.780562, 0.160132,
		0.760077, -0.504279, 0.409860,
		35.346615, 41.093410, 49.076424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535049, 41.317451, 49.544235>,  <34.814560, 41.446407, 48.789520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535049, 41.317451, 49.544235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934349, 41.301163, 49.527039>,  <35.173927, 41.291389, 49.516720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934349, 41.301163, 49.527039>,  <34.535049, 41.317451, 49.544235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934349, 41.301163, 49.527039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058186, 0.540039, 0.839626,
		-0.010977, -0.840654, 0.541461,
		0.998245, -0.040722, -0.042987,
		35.233822, 41.288948, 49.514141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.585678, 34.609692, 35.034340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914833, 34.732849, 35.225361>,  <39.112328, 34.806744, 35.339973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914833, 34.732849, 35.225361>,  <38.585678, 34.609692, 35.034340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914833, 34.732849, 35.225361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528242, 0.104940, 0.842584,
		0.209315, -0.945615, 0.248998,
		0.822889, 0.307897, 0.477548,
		39.161701, 34.825218, 35.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627224, 34.305340, 35.751450>,  <38.585678, 34.609692, 35.034340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627224, 34.305340, 35.751450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819523, 34.655773, 35.736763>,  <38.934902, 34.866035, 35.727951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819523, 34.655773, 35.736763>,  <38.627224, 34.305340, 35.751450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819523, 34.655773, 35.736763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603344, 0.360890, 0.711150,
		0.636281, -0.319732, 0.702081,
		0.480752, 0.876088, -0.036719,
		38.963749, 34.918598, 35.725746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862183, 34.420811, 36.346172>,  <38.627224, 34.305340, 35.751450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862183, 34.420811, 36.346172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874146, 34.796249, 36.208687>,  <38.881321, 35.021515, 36.126198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874146, 34.796249, 36.208687>,  <38.862183, 34.420811, 36.346172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874146, 34.796249, 36.208687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674300, 0.272777, 0.686231,
		0.737852, 0.211242, 0.641055,
		0.029904, 0.938600, -0.343710,
		38.883118, 35.077827, 36.105576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028214, 34.925758, 36.866146>,  <38.862183, 34.420811, 36.346172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028214, 34.925758, 36.866146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808994, 35.127529, 36.599255>,  <38.677464, 35.248592, 36.439121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808994, 35.127529, 36.599255>,  <39.028214, 34.925758, 36.866146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808994, 35.127529, 36.599255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567621, 0.361620, 0.739620,
		0.614368, 0.784082, 0.088137,
		-0.548050, 0.504427, -0.667229,
		38.644581, 35.278858, 36.399086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818890, 35.527466, 37.240948>,  <39.028214, 34.925758, 36.866146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818890, 35.527466, 37.240948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555187, 35.491840, 36.942299>,  <38.396965, 35.470467, 36.763107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555187, 35.491840, 36.942299>,  <38.818890, 35.527466, 37.240948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555187, 35.491840, 36.942299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698158, 0.441216, 0.563830,
		0.279207, 0.892971, -0.353054,
		-0.659257, -0.089062, -0.746625,
		38.357410, 35.465122, 36.718311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582863, 36.245876, 37.126755>,  <38.818890, 35.527466, 37.240948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582863, 36.245876, 37.126755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297310, 36.005619, 36.982750>,  <38.125980, 35.861465, 36.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297310, 36.005619, 36.982750>,  <38.582863, 36.245876, 37.126755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297310, 36.005619, 36.982750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674518, 0.451666, 0.583971,
		-0.188153, 0.659718, -0.727578,
		-0.713879, -0.600641, -0.360010,
		38.083145, 35.825428, 36.874748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941505, 36.640553, 37.122696>,  <38.582863, 36.245876, 37.126755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941505, 36.640553, 37.122696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762112, 36.289726, 37.053867>,  <37.654476, 36.079231, 37.012569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762112, 36.289726, 37.053867>,  <37.941505, 36.640553, 37.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762112, 36.289726, 37.053867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764745, 0.276911, 0.581795,
		-0.462627, 0.392517, -0.794926,
		-0.448488, -0.877069, -0.172068,
		37.627563, 36.026604, 37.002247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244442, 36.826191, 36.851986>,  <37.941505, 36.640553, 37.122696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244442, 36.826191, 36.851986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241604, 36.462749, 37.019028>,  <37.239902, 36.244686, 37.119255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241604, 36.462749, 37.019028>,  <37.244442, 36.826191, 36.851986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241604, 36.462749, 37.019028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807807, 0.251358, 0.533167,
		-0.589405, -0.333563, -0.735756,
		-0.007093, -0.908600, 0.417606,
		37.239475, 36.190170, 37.144310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537525, 36.724346, 36.973534>,  <37.244442, 36.826191, 36.851986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537525, 36.724346, 36.973534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705120, 36.433861, 37.191547>,  <36.805679, 36.259571, 37.322357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705120, 36.433861, 37.191547>,  <36.537525, 36.724346, 36.973534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705120, 36.433861, 37.191547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705995, 0.116910, 0.698501,
		-0.570980, -0.677456, -0.463718,
		0.418990, -0.726213, 0.545034,
		36.830818, 36.215996, 37.355057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055256, 36.277748, 37.088902>,  <36.537525, 36.724346, 36.973534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055256, 36.277748, 37.088902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307739, 36.233055, 37.395908>,  <36.459229, 36.206238, 37.580112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307739, 36.233055, 37.395908>,  <36.055256, 36.277748, 37.088902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307739, 36.233055, 37.395908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763036, 0.088012, 0.640335,
		-0.139096, -0.989833, -0.029700,
		0.631211, -0.111731, 0.767521,
		36.497101, 36.199535, 37.626163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650745, 35.880028, 37.648628>,  <36.055256, 36.277748, 37.088902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650745, 35.880028, 37.648628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971222, 36.044407, 37.822620>,  <36.163509, 36.143036, 37.927017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971222, 36.044407, 37.822620>,  <35.650745, 35.880028, 37.648628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971222, 36.044407, 37.822620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511384, 0.092705, 0.854337,
		0.310769, -0.906930, 0.284430,
		0.801193, 0.410955, 0.434980,
		36.211578, 36.167694, 37.953114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671474, 35.611877, 38.325901>,  <35.650745, 35.880028, 37.648628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671474, 35.611877, 38.325901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915504, 35.928391, 38.342319>,  <36.061920, 36.118298, 38.352169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915504, 35.928391, 38.342319>,  <35.671474, 35.611877, 38.325901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915504, 35.928391, 38.342319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147927, 0.062856, 0.986999,
		0.778416, -0.608210, 0.155399,
		0.610071, 0.791283, 0.041043,
		36.098526, 36.165775, 38.354633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205162, 35.131096, 38.682552>,  <35.671474, 35.611877, 38.325901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205162, 35.131096, 38.682552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891754, 34.959507, 38.862366>,  <34.703709, 34.856552, 38.970253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891754, 34.959507, 38.862366>,  <35.205162, 35.131096, 38.682552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891754, 34.959507, 38.862366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216564, -0.489578, -0.844638,
		0.582410, -0.759142, 0.290692,
		-0.783517, -0.428973, 0.449538,
		34.656700, 34.830814, 38.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212013, 34.482185, 38.472107>,  <35.205162, 35.131096, 38.682552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212013, 34.482185, 38.472107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836109, 34.565163, 38.580780>,  <34.610565, 34.614948, 38.645985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836109, 34.565163, 38.580780>,  <35.212013, 34.482185, 38.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836109, 34.565163, 38.580780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334392, -0.393059, -0.856555,
		-0.070895, -0.895809, 0.438749,
		-0.939764, 0.207440, 0.271685,
		34.554180, 34.627396, 38.662285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889656, 33.895809, 38.240410>,  <35.212013, 34.482185, 38.472107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889656, 33.895809, 38.240410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583771, 34.148293, 38.292255>,  <34.400242, 34.299782, 38.323364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583771, 34.148293, 38.292255>,  <34.889656, 33.895809, 38.240410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583771, 34.148293, 38.292255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440675, -0.365525, -0.819877,
		-0.470132, -0.684085, 0.557676,
		-0.764710, 0.631204, 0.129614,
		34.354359, 34.337654, 38.331139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342175, 33.532078, 38.159977>,  <34.889656, 33.895809, 38.240410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342175, 33.532078, 38.159977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208817, 33.905766, 38.109261>,  <34.128799, 34.129978, 38.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208817, 33.905766, 38.109261>,  <34.342175, 33.532078, 38.159977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208817, 33.905766, 38.109261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478718, -0.283607, -0.830901,
		-0.812204, -0.216324, 0.541783,
		-0.333397, 0.934222, -0.126789,
		34.108799, 34.186031, 38.071224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593822, 33.450691, 37.994003>,  <34.342175, 33.532078, 38.159977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593822, 33.450691, 37.994003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686684, 33.824848, 37.887310>,  <33.742401, 34.049343, 37.823296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686684, 33.824848, 37.887310>,  <33.593822, 33.450691, 37.994003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686684, 33.824848, 37.887310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560740, -0.095366, -0.822481,
		-0.794780, 0.340508, 0.502373,
		0.232153, 0.935393, -0.266731,
		33.756329, 34.105465, 37.807289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879826, 33.887218, 37.985569>,  <33.593822, 33.450691, 37.994003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879826, 33.887218, 37.985569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167042, 34.018723, 37.740185>,  <33.339371, 34.097626, 37.592953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167042, 34.018723, 37.740185>,  <32.879826, 33.887218, 37.985569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167042, 34.018723, 37.740185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585832, -0.190420, -0.787744,
		-0.375793, 0.925018, 0.055868,
		0.718039, 0.328758, -0.613464,
		33.382454, 34.117352, 37.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547031, 34.240749, 37.440407>,  <32.879826, 33.887218, 37.985569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547031, 34.240749, 37.440407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900471, 34.130329, 37.289124>,  <33.112534, 34.064075, 37.198353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900471, 34.130329, 37.289124>,  <32.547031, 34.240749, 37.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900471, 34.130329, 37.289124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441343, -0.221197, -0.869648,
		0.156411, 0.935343, -0.317284,
		0.883602, -0.276054, -0.378210,
		33.165550, 34.047512, 37.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487728, 34.513802, 36.817101>,  <32.547031, 34.240749, 37.440407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487728, 34.513802, 36.817101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769356, 34.230499, 36.796436>,  <32.938332, 34.060520, 36.784039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769356, 34.230499, 36.796436>,  <32.487728, 34.513802, 36.817101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769356, 34.230499, 36.796436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480080, -0.421118, -0.769534,
		0.523270, 0.566604, -0.636513,
		0.704068, -0.708252, -0.051657,
		32.980576, 34.018024, 36.780941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750725, 34.584694, 36.203056>,  <32.487728, 34.513802, 36.817101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750725, 34.584694, 36.203056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825394, 34.206863, 36.311073>,  <32.870193, 33.980164, 36.375885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825394, 34.206863, 36.311073>,  <32.750725, 34.584694, 36.203056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825394, 34.206863, 36.311073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482423, -0.327589, -0.812376,
		0.855817, 0.021371, -0.516838,
		0.186672, -0.944579, 0.270046,
		32.881393, 33.923489, 36.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116505, 34.253174, 35.623810>,  <32.750725, 34.584694, 36.203056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116505, 34.253174, 35.623810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984985, 33.946667, 35.844616>,  <32.906075, 33.762760, 35.977100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984985, 33.946667, 35.844616>,  <33.116505, 34.253174, 35.623810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984985, 33.946667, 35.844616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484887, -0.364610, -0.794949,
		0.810416, -0.529044, -0.251671,
		-0.328801, -0.766271, 0.552012,
		32.886345, 33.716785, 36.010220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185284, 33.648540, 35.193737>,  <33.116505, 34.253174, 35.623810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185284, 33.648540, 35.193737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944984, 33.507118, 35.480541>,  <32.800804, 33.422264, 35.652622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944984, 33.507118, 35.480541>,  <33.185284, 33.648540, 35.193737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944984, 33.507118, 35.480541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476301, -0.562030, -0.676210,
		0.642059, -0.747743, 0.169238,
		-0.600748, -0.353558, 0.717007,
		32.764759, 33.401051, 35.695644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178535, 32.811699, 35.075836>,  <33.185284, 33.648540, 35.193737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178535, 32.811699, 35.075836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834431, 32.886978, 35.265373>,  <32.627968, 32.932148, 35.379097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834431, 32.886978, 35.265373>,  <33.178535, 32.811699, 35.075836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834431, 32.886978, 35.265373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462654, -0.678671, -0.570400,
		0.214234, -0.709919, 0.670908,
		-0.860265, 0.188200, 0.473841,
		32.576351, 32.943439, 35.407524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974365, 32.235802, 35.411381>,  <33.178535, 32.811699, 35.075836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974365, 32.235802, 35.411381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638424, 32.448963, 35.370075>,  <32.436859, 32.576859, 35.345291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638424, 32.448963, 35.370075>,  <32.974365, 32.235802, 35.411381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638424, 32.448963, 35.370075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483981, -0.821290, -0.302070,
		-0.245783, -0.203717, 0.947676,
		-0.839854, 0.532901, -0.103264,
		32.386467, 32.608833, 35.339096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511318, 31.745081, 35.720566>,  <32.974365, 32.235802, 35.411381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511318, 31.745081, 35.720566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296143, 31.999166, 35.498890>,  <32.167038, 32.151619, 35.365883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296143, 31.999166, 35.498890>,  <32.511318, 31.745081, 35.720566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296143, 31.999166, 35.498890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533222, -0.765586, -0.359934,
		-0.652917, 0.101886, 0.750545,
		-0.537935, 0.635214, -0.554192,
		32.134762, 32.189732, 35.332634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840843, 31.592146, 36.409389>,  <32.511318, 31.745081, 35.720566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840843, 31.592146, 36.409389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124218, 31.872694, 36.440895>,  <33.294243, 32.041023, 36.459797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124218, 31.872694, 36.440895>,  <32.840843, 31.592146, 36.409389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124218, 31.872694, 36.440895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662290, -0.699199, 0.269246,
		0.243912, -0.138578, -0.959845,
		0.708434, 0.701368, 0.078764,
		33.336750, 32.083103, 36.464523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533653, 31.440519, 36.009735>,  <32.840843, 31.592146, 36.409389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533653, 31.440519, 36.009735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632511, 31.692930, 36.303871>,  <33.691826, 31.844376, 36.480354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632511, 31.692930, 36.303871>,  <33.533653, 31.440519, 36.009735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632511, 31.692930, 36.303871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832364, -0.526769, 0.172292,
		0.496076, 0.569491, -0.655430,
		0.247142, 0.631026, 0.735341,
		33.706654, 31.882238, 36.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307796, 31.583569, 36.020927>,  <33.533653, 31.440519, 36.009735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307796, 31.583569, 36.020927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190548, 31.682022, 36.390469>,  <34.120197, 31.741095, 36.612194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190548, 31.682022, 36.390469>,  <34.307796, 31.583569, 36.020927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190548, 31.682022, 36.390469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885668, -0.294045, 0.359347,
		0.360100, 0.923556, -0.131801,
		-0.293122, 0.246133, 0.923850,
		34.102612, 31.755861, 36.667622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546562, 32.070938, 36.492916>,  <34.307796, 31.583569, 36.020927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546562, 32.070938, 36.492916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926998, 31.955210, 36.449608>,  <35.155258, 31.885773, 36.423622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926998, 31.955210, 36.449608>,  <34.546562, 32.070938, 36.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926998, 31.955210, 36.449608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194269, 0.287666, 0.937821,
		-0.240181, -0.912986, 0.329802,
		0.951090, -0.289317, -0.108273,
		35.212326, 31.868414, 36.417126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701164, 31.543564, 36.945644>,  <34.546562, 32.070938, 36.492916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701164, 31.543564, 36.945644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014088, 31.774090, 36.851109>,  <35.201839, 31.912405, 36.794388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014088, 31.774090, 36.851109>,  <34.701164, 31.543564, 36.945644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014088, 31.774090, 36.851109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130824, 0.218945, 0.966927,
		0.609001, -0.787352, 0.095886,
		0.782306, 0.576316, -0.236343,
		35.248779, 31.946985, 36.780205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148857, 31.205324, 37.412243>,  <34.701164, 31.543564, 36.945644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148857, 31.205324, 37.412243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281906, 31.571993, 37.323627>,  <35.361736, 31.791994, 37.270458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281906, 31.571993, 37.323627>,  <35.148857, 31.205324, 37.412243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281906, 31.571993, 37.323627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322051, 0.110378, 0.940266,
		0.886367, -0.384098, -0.258501,
		0.332622, 0.916671, -0.221534,
		35.381691, 31.846994, 37.257168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867268, 31.178593, 37.747211>,  <35.148857, 31.205324, 37.412243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867268, 31.178593, 37.747211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765915, 31.556377, 37.663506>,  <35.705105, 31.783049, 37.613281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765915, 31.556377, 37.663506>,  <35.867268, 31.178593, 37.747211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765915, 31.556377, 37.663506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349468, 0.291081, 0.890586,
		0.902036, 0.152529, -0.403814,
		-0.253382, 0.944461, -0.209262,
		35.689899, 31.839716, 37.600727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454380, 31.641647, 37.845226>,  <35.867268, 31.178593, 37.747211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454380, 31.641647, 37.845226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122871, 31.861401, 37.887794>,  <35.923965, 31.993252, 37.913334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122871, 31.861401, 37.887794>,  <36.454380, 31.641647, 37.845226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122871, 31.861401, 37.887794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205773, 0.122345, 0.970922,
		0.520387, 0.826566, -0.214443,
		-0.828767, 0.549382, 0.106419,
		35.874241, 32.026215, 37.919720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631050, 32.143852, 38.395443>,  <36.454380, 31.641647, 37.845226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631050, 32.143852, 38.395443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232964, 32.143730, 38.356373>,  <35.994110, 32.143658, 38.332932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232964, 32.143730, 38.356373>,  <36.631050, 32.143852, 38.395443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232964, 32.143730, 38.356373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093719, 0.284857, 0.953978,
		0.027530, 0.958570, -0.283524,
		-0.995218, -0.000308, -0.097678,
		35.934399, 32.143639, 38.327068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540302, 32.709755, 38.855061>,  <36.631050, 32.143852, 38.395443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540302, 32.709755, 38.855061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167934, 32.564224, 38.842258>,  <35.944515, 32.476906, 38.834576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167934, 32.564224, 38.842258>,  <36.540302, 32.709755, 38.855061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167934, 32.564224, 38.842258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050736, 0.042032, 0.997827,
		-0.361690, 0.930518, -0.057588,
		-0.930917, -0.363826, -0.032008,
		35.888660, 32.455078, 38.832657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968506, 33.224888, 39.107109>,  <36.540302, 32.709755, 38.855061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968506, 33.224888, 39.107109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842625, 32.848385, 39.156105>,  <35.767097, 32.622482, 39.185501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842625, 32.848385, 39.156105>,  <35.968506, 33.224888, 39.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842625, 32.848385, 39.156105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074340, 0.153089, 0.985412,
		-0.946274, 0.301007, -0.118150,
		-0.314703, -0.941254, 0.122487,
		35.748215, 32.566010, 39.192852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306381, 33.165329, 39.430683>,  <35.968506, 33.224888, 39.107109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306381, 33.165329, 39.430683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427010, 32.789864, 39.497570>,  <35.499386, 32.564583, 39.537701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427010, 32.789864, 39.497570>,  <35.306381, 33.165329, 39.430683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427010, 32.789864, 39.497570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348656, 0.054664, 0.935655,
		-0.887408, -0.340469, -0.310786,
		0.301572, -0.938666, 0.167216,
		35.517483, 32.508263, 39.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819813, 32.927662, 39.872066>,  <35.306381, 33.165329, 39.430683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819813, 32.927662, 39.872066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121643, 32.667301, 39.905399>,  <35.302742, 32.511086, 39.925400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121643, 32.667301, 39.905399>,  <34.819813, 32.927662, 39.872066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121643, 32.667301, 39.905399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201034, -0.108412, 0.973567,
		-0.624664, -0.751379, -0.212659,
		0.754573, -0.650904, 0.083332,
		35.348015, 32.472031, 39.930397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627060, 32.436359, 40.401417>,  <34.819813, 32.927662, 39.872066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627060, 32.436359, 40.401417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021343, 32.374790, 40.374016>,  <35.257912, 32.337849, 40.357574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021343, 32.374790, 40.374016>,  <34.627060, 32.436359, 40.401417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021343, 32.374790, 40.374016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039360, -0.184958, 0.981958,
		-0.163808, -0.970619, -0.176256,
		0.985706, -0.153915, -0.068501,
		35.317055, 32.328613, 40.353466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807915, 31.732658, 40.752071>,  <34.627060, 32.436359, 40.401417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807915, 31.732658, 40.752071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125431, 31.975937, 40.752579>,  <35.315941, 32.121902, 40.752884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125431, 31.975937, 40.752579>,  <34.807915, 31.732658, 40.752071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125431, 31.975937, 40.752579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071867, -0.095868, 0.992796,
		0.603936, -0.787977, -0.119808,
		0.793786, 0.608196, 0.001268,
		35.363567, 32.158394, 40.752960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108776, 31.488409, 41.329792>,  <34.807915, 31.732658, 40.752071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108776, 31.488409, 41.329792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302368, 31.826309, 41.238441>,  <35.418522, 32.029049, 41.183632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302368, 31.826309, 41.238441>,  <35.108776, 31.488409, 41.329792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302368, 31.826309, 41.238441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110964, 0.199626, 0.973569,
		0.868015, -0.496530, 0.002878,
		0.483981, 0.844753, -0.228376,
		35.447563, 32.079735, 41.169930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809090, 31.381628, 41.592930>,  <35.108776, 31.488409, 41.329792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809090, 31.381628, 41.592930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728237, 31.771610, 41.555828>,  <35.679726, 32.005600, 41.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728237, 31.771610, 41.555828>,  <35.809090, 31.381628, 41.592930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728237, 31.771610, 41.555828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159545, 0.126228, 0.979087,
		0.966275, 0.183109, -0.181065,
		-0.202135, 0.974955, -0.092756,
		35.667595, 32.064098, 41.528000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393921, 31.831966, 41.906914>,  <35.809090, 31.381628, 41.592930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393921, 31.831966, 41.906914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067787, 32.062988, 41.890629>,  <35.872105, 32.201603, 41.880859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067787, 32.062988, 41.890629>,  <36.393921, 31.831966, 41.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067787, 32.062988, 41.890629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136724, 0.260382, 0.955776,
		0.562613, 0.773713, -0.291265,
		-0.815336, 0.577555, -0.040709,
		35.823185, 32.236256, 41.878418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523861, 32.446743, 42.263508>,  <36.393921, 31.831966, 41.906914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523861, 32.446743, 42.263508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134716, 32.518616, 42.205193>,  <35.901230, 32.561737, 42.170204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134716, 32.518616, 42.205193>,  <36.523861, 32.446743, 42.263508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134716, 32.518616, 42.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027175, 0.714433, 0.699176,
		0.229781, 0.676241, -0.699928,
		-0.972863, 0.179678, -0.145786,
		35.842857, 32.572517, 42.161457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385345, 33.204445, 42.280415>,  <36.523861, 32.446743, 42.263508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385345, 33.204445, 42.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048901, 33.014378, 42.383755>,  <35.847034, 32.900337, 42.445759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048901, 33.014378, 42.383755>,  <36.385345, 33.204445, 42.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048901, 33.014378, 42.383755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024028, 0.444362, 0.895525,
		-0.540326, 0.759445, -0.362342,
		-0.841113, -0.475169, 0.258348,
		35.796566, 32.871826, 42.461258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977669, 33.683041, 42.389107>,  <36.385345, 33.204445, 42.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977669, 33.683041, 42.389107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855358, 33.357063, 42.586033>,  <35.781971, 33.161476, 42.704189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855358, 33.357063, 42.586033>,  <35.977669, 33.683041, 42.389107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855358, 33.357063, 42.586033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117570, 0.545444, 0.829860,
		-0.944817, 0.195868, -0.262595,
		-0.305774, -0.814939, 0.492317,
		35.763626, 33.112583, 42.733727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531097, 33.954815, 42.857605>,  <35.977669, 33.683041, 42.389107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531097, 33.954815, 42.857605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592403, 33.596416, 43.024311>,  <35.629185, 33.381378, 43.124336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592403, 33.596416, 43.024311>,  <35.531097, 33.954815, 42.857605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592403, 33.596416, 43.024311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114526, 0.435012, 0.893111,
		-0.981527, -0.089149, 0.169286,
		0.153261, -0.896001, 0.416766,
		35.638382, 33.327618, 43.149342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086353, 33.889004, 43.406300>,  <35.531097, 33.954815, 42.857605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086353, 33.889004, 43.406300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402378, 33.657822, 43.488052>,  <35.591991, 33.519112, 43.537102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402378, 33.657822, 43.488052>,  <35.086353, 33.889004, 43.406300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402378, 33.657822, 43.488052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018013, 0.311364, 0.950120,
		-0.612763, -0.754334, 0.235586,
		0.790061, -0.577955, 0.204380,
		35.639397, 33.484436, 43.549366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070656, 33.818180, 44.262650>,  <35.086353, 33.889004, 43.406300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070656, 33.818180, 44.262650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390785, 33.609623, 44.144238>,  <35.582863, 33.484489, 44.073189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390785, 33.609623, 44.144238>,  <35.070656, 33.818180, 44.262650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390785, 33.609623, 44.144238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266697, -0.132627, 0.954611,
		-0.536988, -0.842948, 0.032909,
		0.800323, -0.521391, -0.296031,
		35.630882, 33.453205, 44.055428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184856, 33.121449, 44.588989>,  <35.070656, 33.818180, 44.262650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184856, 33.121449, 44.588989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549015, 33.253551, 44.489304>,  <35.767509, 33.332813, 44.429493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549015, 33.253551, 44.489304>,  <35.184856, 33.121449, 44.588989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549015, 33.253551, 44.489304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216736, 0.132411, 0.967209,
		0.352425, -0.934558, 0.048968,
		0.910397, 0.330255, -0.249218,
		35.822136, 33.352627, 44.414539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540062, 32.794827, 45.060802>,  <35.184856, 33.121449, 44.588989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540062, 32.794827, 45.060802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774143, 33.088139, 44.922337>,  <35.914593, 33.264126, 44.839256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774143, 33.088139, 44.922337>,  <35.540062, 32.794827, 45.060802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774143, 33.088139, 44.922337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430018, 0.081293, 0.899153,
		0.687476, -0.675044, -0.267753,
		0.585202, 0.733285, -0.346168,
		35.949703, 33.308125, 44.818485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254223, 32.811211, 45.285557>,  <35.540062, 32.794827, 45.060802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254223, 32.811211, 45.285557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189503, 33.196156, 45.198219>,  <36.150669, 33.427124, 45.145817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189503, 33.196156, 45.198219>,  <36.254223, 32.811211, 45.285557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189503, 33.196156, 45.198219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289603, 0.257820, 0.921769,
		0.943371, 0.085915, -0.320421,
		-0.161805, 0.962365, -0.218339,
		36.140961, 33.484863, 45.132717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891735, 33.237785, 45.200108>,  <36.254223, 32.811211, 45.285557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891735, 33.237785, 45.200108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566845, 33.422546, 45.342621>,  <36.371910, 33.533401, 45.428127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566845, 33.422546, 45.342621>,  <36.891735, 33.237785, 45.200108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566845, 33.422546, 45.342621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380434, -0.043577, 0.923781,
		0.442220, 0.885861, -0.140328,
		-0.812226, 0.461900, 0.356283,
		36.323177, 33.561115, 45.449505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225666, 33.768898, 45.587517>,  <36.891735, 33.237785, 45.200108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225666, 33.768898, 45.587517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612556, 33.846497, 45.653046>,  <37.844692, 33.893055, 45.692364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612556, 33.846497, 45.653046>,  <37.225666, 33.768898, 45.587517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612556, 33.846497, 45.653046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231531, -0.408953, -0.882695,
		-0.104241, 0.891697, -0.440466,
		0.967227, 0.193994, 0.163826,
		37.902725, 33.904694, 45.702194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500954, 34.047588, 44.919373>,  <37.225666, 33.768898, 45.587517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500954, 34.047588, 44.919373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813129, 33.901207, 45.122150>,  <38.000435, 33.813377, 45.243816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813129, 33.901207, 45.122150>,  <37.500954, 34.047588, 44.919373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813129, 33.901207, 45.122150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313445, -0.472551, -0.823679,
		0.540982, 0.801732, -0.254093,
		0.780442, -0.365952, 0.506941,
		38.047260, 33.791420, 45.274231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086773, 34.250713, 44.531017>,  <37.500954, 34.047588, 44.919373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086773, 34.250713, 44.531017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208397, 33.936783, 44.747013>,  <38.281372, 33.748425, 44.876610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208397, 33.936783, 44.747013>,  <38.086773, 34.250713, 44.531017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208397, 33.936783, 44.747013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035174, -0.557193, -0.829638,
		0.952002, 0.271257, -0.141817,
		0.304065, -0.784828, 0.539990,
		38.299618, 33.701336, 44.909012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782112, 34.174343, 44.330963>,  <38.086773, 34.250713, 44.531017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782112, 34.174343, 44.330963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691078, 33.826664, 44.506554>,  <38.636459, 33.618057, 44.611908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691078, 33.826664, 44.506554>,  <38.782112, 34.174343, 44.330963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691078, 33.826664, 44.506554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438085, -0.494004, -0.751027,
		0.869648, 0.021389, 0.493209,
		-0.227584, -0.869197, 0.438979,
		38.622803, 33.565907, 44.638248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319412, 33.755539, 44.376637>,  <38.782112, 34.174343, 44.330963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319412, 33.755539, 44.376637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015453, 33.496094, 44.393841>,  <38.833076, 33.340427, 44.404163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015453, 33.496094, 44.393841>,  <39.319412, 33.755539, 44.376637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015453, 33.496094, 44.393841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439201, -0.561081, -0.701634,
		0.479225, -0.514280, 0.711238,
		-0.759899, -0.648616, 0.043012,
		38.787483, 33.301510, 44.406746>
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
