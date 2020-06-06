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
	<24.674368, 35.266624, 35.269829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480822, 35.214081, 34.923737>,  <24.364695, 35.182556, 34.716084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480822, 35.214081, 34.923737>,  <24.674368, 35.266624, 35.269829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480822, 35.214081, 34.923737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853099, -0.291301, -0.432857,
		-0.195183, -0.947570, 0.253010,
		-0.483865, -0.131356, -0.865228,
		24.335663, 35.174675, 34.664169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129892, 35.087261, 34.660172>,  <24.674368, 35.266624, 35.269829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129892, 35.087261, 34.660172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455856, 35.138008, 34.886387>,  <25.651434, 35.168457, 35.022114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455856, 35.138008, 34.886387>,  <25.129892, 35.087261, 34.660172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455856, 35.138008, 34.886387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475607, -0.704025, -0.527396,
		0.331245, 0.698752, -0.634052,
		0.814908, 0.126863, 0.565536,
		25.700329, 35.176067, 35.056049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834625, 35.193096, 34.236481>,  <25.129892, 35.087261, 34.660172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834625, 35.193096, 34.236481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984295, 35.049076, 34.578323>,  <26.074097, 34.962662, 34.783428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984295, 35.049076, 34.578323>,  <25.834625, 35.193096, 34.236481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984295, 35.049076, 34.578323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440642, -0.741844, -0.505473,
		0.815983, 0.565711, -0.118924,
		0.374175, -0.360054, 0.854608,
		26.096548, 34.941059, 34.834705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537172, 35.148655, 34.274300>,  <25.834625, 35.193096, 34.236481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537172, 35.148655, 34.274300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429462, 34.851349, 34.519268>,  <26.364836, 34.672966, 34.666248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429462, 34.851349, 34.519268>,  <26.537172, 35.148655, 34.274300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429462, 34.851349, 34.519268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493326, -0.652593, -0.575110,
		0.827116, 0.147258, 0.542397,
		-0.269275, -0.743261, 0.612416,
		26.348680, 34.628372, 34.702991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141916, 34.909321, 34.654179>,  <26.537172, 35.148655, 34.274300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141916, 34.909321, 34.654179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834698, 34.676449, 34.547470>,  <26.650368, 34.536724, 34.483444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834698, 34.676449, 34.547470>,  <27.141916, 34.909321, 34.654179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834698, 34.676449, 34.547470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621694, -0.577897, -0.528708,
		0.153637, -0.571923, 0.805791,
		-0.768044, -0.582185, -0.266775,
		26.604284, 34.501793, 34.467438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088696, 34.200932, 34.970387>,  <27.141916, 34.909321, 34.654179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088696, 34.200932, 34.970387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966244, 34.240379, 34.591640>,  <26.892773, 34.264046, 34.364391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966244, 34.240379, 34.591640>,  <27.088696, 34.200932, 34.970387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966244, 34.240379, 34.591640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750882, -0.586395, -0.303837,
		-0.585198, -0.804001, 0.105475,
		-0.306136, 0.098605, -0.946867,
		26.874405, 34.269962, 34.307579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974781, 33.574223, 34.689301>,  <27.088696, 34.200932, 34.970387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974781, 33.574223, 34.689301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048485, 33.824337, 34.385971>,  <27.092707, 33.974407, 34.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048485, 33.824337, 34.385971>,  <26.974781, 33.574223, 34.689301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048485, 33.824337, 34.385971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750075, -0.588050, -0.302630,
		-0.635166, -0.513039, -0.577370,
		0.184261, 0.625291, -0.758327,
		27.103764, 34.011925, 34.158474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801395, 33.286400, 34.068573>,  <26.974781, 33.574223, 34.689301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801395, 33.286400, 34.068573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113766, 33.535622, 34.050854>,  <27.301188, 33.685154, 34.040222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113766, 33.535622, 34.050854>,  <26.801395, 33.286400, 34.068573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113766, 33.535622, 34.050854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603338, -0.770768, -0.204693,
		-0.161677, 0.133124, -0.977823,
		0.780925, 0.623052, -0.044296,
		27.348043, 33.722538, 34.037563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183315, 32.921982, 33.565109>,  <26.801395, 33.286400, 34.068573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183315, 32.921982, 33.565109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427675, 33.186302, 33.739529>,  <27.574291, 33.344894, 33.844181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427675, 33.186302, 33.739529>,  <27.183315, 32.921982, 33.565109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427675, 33.186302, 33.739529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776783, -0.606715, -0.168831,
		0.152994, 0.441856, -0.883944,
		0.610901, 0.660803, 0.436050,
		27.610945, 33.384544, 33.870342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756411, 33.038364, 33.069992>,  <27.183315, 32.921982, 33.565109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756411, 33.038364, 33.069992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846315, 33.149212, 33.443665>,  <27.900259, 33.215721, 33.667866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846315, 33.149212, 33.443665>,  <27.756411, 33.038364, 33.069992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846315, 33.149212, 33.443665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935196, -0.330599, -0.126937,
		0.273662, 0.902170, -0.333465,
		0.224762, 0.277117, 0.934178,
		27.913744, 33.232346, 33.723919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389675, 33.416302, 33.021942>,  <27.756411, 33.038364, 33.069992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389675, 33.416302, 33.021942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375984, 33.294945, 33.402843>,  <28.367769, 33.222130, 33.631382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375984, 33.294945, 33.402843>,  <28.389675, 33.416302, 33.021942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375984, 33.294945, 33.402843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976123, -0.214651, -0.033305,
		0.214506, 0.928374, 0.303496,
		-0.034226, -0.303393, 0.952251,
		28.365717, 33.203926, 33.688519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824688, 33.912548, 33.498680>,  <28.389675, 33.416302, 33.021942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824688, 33.912548, 33.498680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808014, 33.536739, 33.634663>,  <28.798010, 33.311256, 33.716251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808014, 33.536739, 33.634663>,  <28.824688, 33.912548, 33.498680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808014, 33.536739, 33.634663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997093, -0.060837, -0.045867,
		0.063775, 0.337054, 0.939323,
		-0.041686, -0.939518, 0.339954,
		28.795507, 33.254883, 33.736649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318796, 34.410492, 33.370983>,  <28.824688, 33.912548, 33.498680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318796, 34.410492, 33.370983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231808, 34.394817, 33.761097>,  <29.179615, 34.385414, 33.995163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231808, 34.394817, 33.761097>,  <29.318796, 34.410492, 33.370983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231808, 34.394817, 33.761097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460991, 0.876607, 0.138012,
		-0.860345, 0.479609, -0.172571,
		-0.217469, -0.039184, 0.975280,
		29.166567, 34.383060, 34.053680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992849, 34.974220, 33.636417>,  <29.318796, 34.410492, 33.370983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992849, 34.974220, 33.636417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184887, 34.833965, 33.958054>,  <29.300110, 34.749813, 34.151035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184887, 34.833965, 33.958054>,  <28.992849, 34.974220, 33.636417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184887, 34.833965, 33.958054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302591, 0.926573, 0.223385,
		-0.823377, 0.136065, 0.550942,
		0.480094, -0.350640, 0.804091,
		29.328915, 34.728775, 34.199280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170448, 35.483047, 34.100956>,  <28.992849, 34.974220, 33.636417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170448, 35.483047, 34.100956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444706, 35.221241, 34.228394>,  <29.609261, 35.064156, 34.304855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444706, 35.221241, 34.228394>,  <29.170448, 35.483047, 34.100956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444706, 35.221241, 34.228394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564313, 0.754384, 0.335344,
		-0.459829, -0.050140, 0.886591,
		0.685644, -0.654516, 0.318593,
		29.650398, 35.024887, 34.323971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238600, 35.762341, 34.813015>,  <29.170448, 35.483047, 34.100956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238600, 35.762341, 34.813015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557955, 35.547798, 34.703548>,  <29.749569, 35.419071, 34.637867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557955, 35.547798, 34.703548>,  <29.238600, 35.762341, 34.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557955, 35.547798, 34.703548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594175, 0.628075, 0.502471,
		-0.097622, -0.563773, 0.820140,
		0.798389, -0.536360, -0.273666,
		29.797472, 35.386890, 34.621449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766211, 35.548306, 35.343273>,  <29.238600, 35.762341, 34.813015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766211, 35.548306, 35.343273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974781, 35.596184, 35.005329>,  <30.099924, 35.624912, 34.802563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974781, 35.596184, 35.005329>,  <29.766211, 35.548306, 35.343273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974781, 35.596184, 35.005329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722336, 0.465170, 0.511710,
		0.454248, -0.877093, 0.156098,
		0.521430, 0.119688, -0.844859,
		30.131208, 35.632092, 34.751873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423586, 35.178478, 35.312061>,  <29.766211, 35.548306, 35.343273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423586, 35.178478, 35.312061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402485, 35.522541, 35.109142>,  <30.389824, 35.728977, 34.987389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402485, 35.522541, 35.109142>,  <30.423586, 35.178478, 35.312061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402485, 35.522541, 35.109142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778529, 0.353571, 0.518537,
		0.625388, -0.367593, -0.688306,
		-0.052755, 0.860153, -0.507301,
		30.386658, 35.780586, 34.956951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894156, 35.297535, 34.673412>,  <30.423586, 35.178478, 35.312061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894156, 35.297535, 34.673412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792830, 35.588192, 34.928856>,  <30.732035, 35.762589, 35.082123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792830, 35.588192, 34.928856>,  <30.894156, 35.297535, 34.673412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792830, 35.588192, 34.928856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959518, 0.104715, 0.261458,
		0.123117, 0.678984, -0.723756,
		-0.253314, 0.726647, 0.638605,
		30.716835, 35.806187, 35.120438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157209, 35.951633, 34.480362>,  <30.894156, 35.297535, 34.673412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157209, 35.951633, 34.480362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140877, 35.883923, 34.874252>,  <31.131077, 35.843296, 35.110584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140877, 35.883923, 34.874252>,  <31.157209, 35.951633, 34.480362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140877, 35.883923, 34.874252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964469, 0.250788, 0.083101,
		-0.261024, 0.953127, 0.153024,
		-0.040829, -0.169279, 0.984722,
		31.128628, 35.833138, 35.169670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783291, 36.140167, 33.994747>,  <31.157209, 35.951633, 34.480362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783291, 36.140167, 33.994747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770889, 36.463787, 34.229519>,  <31.763449, 36.657959, 34.370380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770889, 36.463787, 34.229519>,  <31.783291, 36.140167, 33.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770889, 36.463787, 34.229519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259321, -0.560593, 0.786440,
		0.965293, 0.176586, -0.192422,
		-0.031004, 0.809045, 0.586929,
		31.761589, 36.706501, 34.405598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460335, 36.153244, 34.380417>,  <31.783291, 36.140167, 33.994747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460335, 36.153244, 34.380417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140667, 36.312405, 34.560642>,  <31.948868, 36.407902, 34.668777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140667, 36.312405, 34.560642>,  <32.460335, 36.153244, 34.380417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140667, 36.312405, 34.560642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198095, -0.533340, 0.822379,
		0.567531, 0.746471, 0.347404,
		-0.799166, 0.397906, 0.450559,
		31.900917, 36.431778, 34.695808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673946, 36.389065, 35.070164>,  <32.460335, 36.153244, 34.380417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673946, 36.389065, 35.070164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285927, 36.294403, 35.048294>,  <32.053116, 36.237606, 35.035172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285927, 36.294403, 35.048294>,  <32.673946, 36.389065, 35.070164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285927, 36.294403, 35.048294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120943, -0.665840, 0.736227,
		-0.210640, 0.707567, 0.674523,
		-0.970053, -0.236657, -0.054677,
		31.994911, 36.223404, 35.031891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237576, 36.550835, 35.683567>,  <32.673946, 36.389065, 35.070164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237576, 36.550835, 35.683567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118446, 36.226837, 35.481495>,  <32.046970, 36.032436, 35.360252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118446, 36.226837, 35.481495>,  <32.237576, 36.550835, 35.683567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118446, 36.226837, 35.481495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074964, -0.547404, 0.833504,
		-0.951675, 0.210363, 0.223747,
		-0.297819, -0.809998, -0.505181,
		32.029102, 35.983837, 35.329941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585054, 36.208256, 36.104790>,  <32.237576, 36.550835, 35.683567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585054, 36.208256, 36.104790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775911, 35.964024, 35.851955>,  <31.890427, 35.817486, 35.700256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775911, 35.964024, 35.851955>,  <31.585054, 36.208256, 36.104790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775911, 35.964024, 35.851955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043864, -0.734887, 0.676770,
		-0.877730, -0.295191, -0.377429,
		0.477144, -0.610577, -0.632084,
		31.919054, 35.780849, 35.662331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321392, 35.534889, 36.194756>,  <31.585054, 36.208256, 36.104790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321392, 35.534889, 36.194756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680607, 35.447376, 36.042091>,  <31.896135, 35.394871, 35.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680607, 35.447376, 36.042091>,  <31.321392, 35.534889, 36.194756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680607, 35.447376, 36.042091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064792, -0.792334, 0.606637,
		-0.435124, -0.569511, -0.697370,
		0.898036, -0.218778, -0.381663,
		31.950018, 35.381744, 35.927593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375055, 34.762363, 36.051029>,  <31.321392, 35.534889, 36.194756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375055, 34.762363, 36.051029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735249, 34.926487, 36.108677>,  <31.951365, 35.024963, 36.143265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735249, 34.926487, 36.108677>,  <31.375055, 34.762363, 36.051029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735249, 34.926487, 36.108677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266846, -0.782992, 0.561887,
		0.343397, -0.467512, -0.814562,
		0.900484, 0.410313, 0.144124,
		32.005394, 35.049580, 36.151913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025555, 34.290710, 35.873863>,  <31.375055, 34.762363, 36.051029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025555, 34.290710, 35.873863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124908, 34.533020, 36.176212>,  <32.184521, 34.678406, 36.357620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124908, 34.533020, 36.176212>,  <32.025555, 34.290710, 35.873863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124908, 34.533020, 36.176212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294070, -0.790653, 0.537020,
		0.922946, 0.088893, -0.374525,
		0.248382, 0.605777, 0.755871,
		32.199425, 34.714752, 36.402973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740639, 34.185070, 36.086849>,  <32.025555, 34.290710, 35.873863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740639, 34.185070, 36.086849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487766, 34.203892, 36.396206>,  <32.336040, 34.215183, 36.581818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487766, 34.203892, 36.396206>,  <32.740639, 34.185070, 36.086849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487766, 34.203892, 36.396206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197533, -0.955385, 0.219592,
		0.749214, 0.291592, 0.594687,
		-0.632186, 0.047051, 0.773387,
		32.298111, 34.218006, 36.628223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060333, 33.763145, 36.618122>,  <32.740639, 34.185070, 36.086849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060333, 33.763145, 36.618122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663792, 33.776794, 36.668793>,  <32.425865, 33.784985, 36.699196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663792, 33.776794, 36.668793>,  <33.060333, 33.763145, 36.618122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663792, 33.776794, 36.668793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000466, -0.966494, 0.256688,
		0.131187, 0.254411, 0.958157,
		-0.991357, 0.034120, 0.126673,
		32.366383, 33.787029, 36.706795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816288, 33.474819, 37.302750>,  <33.060333, 33.763145, 36.618122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816288, 33.474819, 37.302750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555920, 33.459644, 36.999470>,  <32.399700, 33.450539, 36.817501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555920, 33.459644, 36.999470>,  <32.816288, 33.474819, 37.302750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555920, 33.459644, 36.999470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321696, -0.890857, 0.320757,
		-0.687615, 0.452696, 0.567672,
		-0.650920, -0.037939, -0.758198,
		32.360645, 33.448261, 36.772011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454090, 33.811169, 37.870003>,  <32.816288, 33.474819, 37.302750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454090, 33.811169, 37.870003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110039, 33.631104, 37.965954>,  <31.903608, 33.523064, 38.023525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110039, 33.631104, 37.965954>,  <32.454090, 33.811169, 37.870003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110039, 33.631104, 37.965954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160703, 0.207180, 0.965013,
		-0.484109, 0.868580, -0.105859,
		-0.860124, -0.450160, 0.239881,
		31.852001, 33.496056, 38.037918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088161, 34.228367, 38.278427>,  <32.454090, 33.811169, 37.870003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088161, 34.228367, 38.278427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911510, 33.879879, 38.364162>,  <31.805521, 33.670784, 38.415604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911510, 33.879879, 38.364162>,  <32.088161, 34.228367, 38.278427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911510, 33.879879, 38.364162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107943, 0.288754, 0.951299,
		-0.890684, 0.396980, -0.221563,
		-0.441623, -0.871222, 0.214337,
		31.779024, 33.618511, 38.428463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390287, 34.325150, 38.543709>,  <32.088161, 34.228367, 38.278427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390287, 34.325150, 38.543709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552530, 33.984898, 38.677525>,  <31.649876, 33.780746, 38.757816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552530, 33.984898, 38.677525>,  <31.390287, 34.325150, 38.543709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552530, 33.984898, 38.677525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202176, 0.273445, 0.940400,
		-0.891407, -0.449070, -0.061064,
		0.405608, -0.850625, 0.334542,
		31.674213, 33.729710, 38.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049524, 33.710571, 38.545582>,  <31.390287, 34.325150, 38.543709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049524, 33.710571, 38.545582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937574, 33.379902, 38.350323>,  <30.870403, 33.181499, 38.233166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937574, 33.379902, 38.350323>,  <31.049524, 33.710571, 38.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937574, 33.379902, 38.350323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068122, 0.490085, -0.869009,
		0.957617, -0.276468, -0.080849,
		-0.279875, -0.826670, -0.488147,
		30.853611, 33.131901, 38.203880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384459, 33.596085, 38.161526>,  <31.049524, 33.710571, 38.545582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384459, 33.596085, 38.161526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508112, 33.381775, 37.847233>,  <30.582304, 33.253189, 37.658657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508112, 33.381775, 37.847233>,  <30.384459, 33.596085, 38.161526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508112, 33.381775, 37.847233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320497, 0.719182, -0.616489,
		0.895387, 0.442404, 0.050610,
		0.309135, -0.535776, -0.785735,
		30.600853, 33.221043, 37.611511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985495, 32.935604, 38.039986>,  <30.384459, 33.596085, 38.161526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985495, 32.935604, 38.039986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735245, 32.995243, 38.346283>,  <29.585094, 33.031025, 38.530060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735245, 32.995243, 38.346283>,  <29.985495, 32.935604, 38.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735245, 32.995243, 38.346283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241548, 0.970352, 0.008410,
		-0.741788, 0.190226, -0.643090,
		-0.625624, 0.149099, 0.765744,
		29.547558, 33.039974, 38.576008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421490, 32.372921, 38.433647>,  <29.985495, 32.935604, 38.039986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421490, 32.372921, 38.433647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471218, 32.038982, 38.648151>,  <30.501055, 31.838619, 38.776855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471218, 32.038982, 38.648151>,  <30.421490, 32.372921, 38.433647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471218, 32.038982, 38.648151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990449, 0.071937, -0.117626,
		0.059622, 0.545764, 0.835815,
		0.124322, -0.834845, 0.536263,
		30.508514, 31.788528, 38.809029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936823, 32.518341, 38.992046>,  <30.421490, 32.372921, 38.433647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936823, 32.518341, 38.992046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941599, 32.132420, 38.886971>,  <30.944464, 31.900866, 38.823925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941599, 32.132420, 38.886971>,  <30.936823, 32.518341, 38.992046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941599, 32.132420, 38.886971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969633, 0.075348, -0.232666,
		0.244271, -0.251937, 0.936408,
		0.011939, -0.964806, -0.262692,
		30.945181, 31.842978, 38.808163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404318, 32.002285, 39.418304>,  <30.936823, 32.518341, 38.992046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404318, 32.002285, 39.418304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375195, 31.903322, 39.031837>,  <31.357721, 31.843945, 38.799957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375195, 31.903322, 39.031837>,  <31.404318, 32.002285, 39.418304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375195, 31.903322, 39.031837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971575, 0.201202, -0.124737,
		0.225257, -0.947790, 0.225728,
		-0.072807, -0.247410, -0.966171,
		31.353352, 31.829100, 38.741985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936165, 31.549595, 39.371696>,  <31.404318, 32.002285, 39.418304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936165, 31.549595, 39.371696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851131, 31.684547, 39.004875>,  <31.800112, 31.765518, 38.784782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851131, 31.684547, 39.004875>,  <31.936165, 31.549595, 39.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851131, 31.684547, 39.004875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963643, 0.227852, -0.139559,
		0.161867, -0.913377, -0.373554,
		-0.212585, 0.337382, -0.917050,
		31.787355, 31.785763, 38.729759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119804, 31.186310, 38.891590>,  <31.936165, 31.549595, 39.371696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119804, 31.186310, 38.891590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161335, 31.571297, 38.791290>,  <32.186253, 31.802288, 38.731110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161335, 31.571297, 38.791290>,  <32.119804, 31.186310, 38.891590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161335, 31.571297, 38.791290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931975, -0.182192, -0.313413,
		-0.347335, -0.201154, -0.915912,
		0.103828, 0.962467, -0.250752,
		32.192482, 31.860037, 38.716064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585052, 31.129227, 38.257324>,  <32.119804, 31.186310, 38.891590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585052, 31.129227, 38.257324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577930, 31.501173, 38.404308>,  <32.573658, 31.724340, 38.492500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577930, 31.501173, 38.404308>,  <32.585052, 31.129227, 38.257324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577930, 31.501173, 38.404308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988210, 0.072265, -0.134973,
		-0.152062, 0.360729, -0.920191,
		-0.017809, 0.929867, 0.367465,
		32.572586, 31.780132, 38.514549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055744, 31.655542, 37.870644>,  <32.585052, 31.129227, 38.257324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055744, 31.655542, 37.870644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025928, 31.817188, 38.235310>,  <33.008038, 31.914175, 38.454109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025928, 31.817188, 38.235310>,  <33.055744, 31.655542, 37.870644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025928, 31.817188, 38.235310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923806, 0.372259, -0.089476,
		-0.375534, 0.835534, -0.401071,
		-0.074542, 0.404113, 0.911667,
		33.003567, 31.938421, 38.508808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045860, 32.342102, 37.818207>,  <33.055744, 31.655542, 37.870644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045860, 32.342102, 37.818207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195679, 32.264896, 38.180965>,  <33.285568, 32.218575, 38.398621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195679, 32.264896, 38.180965>,  <33.045860, 32.342102, 37.818207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195679, 32.264896, 38.180965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867454, 0.418391, -0.269208,
		-0.327479, 0.887522, 0.324133,
		0.374542, -0.193011, 0.906899,
		33.308041, 32.206993, 38.453033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371765, 32.928116, 38.098934>,  <33.045860, 32.342102, 37.818207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371765, 32.928116, 38.098934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562851, 32.624310, 38.275536>,  <33.677502, 32.442024, 38.381496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562851, 32.624310, 38.275536>,  <33.371765, 32.928116, 38.098934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562851, 32.624310, 38.275536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848423, 0.268454, -0.456192,
		0.227963, 0.592509, 0.772636,
		0.477714, -0.759517, 0.441501,
		33.706165, 32.396454, 38.407986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576530, 33.437977, 38.600273>,  <33.371765, 32.928116, 38.098934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576530, 33.437977, 38.600273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757339, 33.676754, 38.865402>,  <33.865826, 33.820019, 39.024479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757339, 33.676754, 38.865402>,  <33.576530, 33.437977, 38.600273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757339, 33.676754, 38.865402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149993, -0.681626, 0.716162,
		0.879307, -0.423138, -0.218570,
		0.452019, 0.596942, 0.662826,
		33.892944, 33.855835, 39.064251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018227, 33.052094, 39.010750>,  <33.576530, 33.437977, 38.600273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018227, 33.052094, 39.010750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951450, 33.369476, 39.244865>,  <33.911385, 33.559906, 39.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951450, 33.369476, 39.244865>,  <34.018227, 33.052094, 39.010750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951450, 33.369476, 39.244865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061013, -0.600792, 0.797074,
		0.984077, 0.097354, 0.148707,
		-0.166940, 0.793455, 0.585286,
		33.901367, 33.607513, 39.420452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662056, 33.173939, 38.800934>,  <34.018227, 33.052094, 39.010750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662056, 33.173939, 38.800934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834972, 33.450687, 38.569611>,  <34.938721, 33.616737, 38.430817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834972, 33.450687, 38.569611>,  <34.662056, 33.173939, 38.800934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834972, 33.450687, 38.569611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537792, -0.712600, -0.450534,
		-0.723812, -0.116244, -0.680135,
		0.432292, 0.691873, -0.578304,
		34.964661, 33.658249, 38.396118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558067, 33.207409, 38.075916>,  <34.662056, 33.173939, 38.800934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558067, 33.207409, 38.075916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926674, 33.309021, 38.193413>,  <35.147839, 33.369987, 38.263908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926674, 33.309021, 38.193413>,  <34.558067, 33.207409, 38.075916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926674, 33.309021, 38.193413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327236, -0.915226, -0.235114,
		0.209110, 0.312782, -0.926521,
		0.921515, 0.254026, 0.293737,
		35.203129, 33.385227, 38.281532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028267, 32.740742, 37.847946>,  <34.558067, 33.207409, 38.075916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028267, 32.740742, 37.847946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282909, 32.921860, 38.097652>,  <35.435696, 33.030529, 38.247478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282909, 32.921860, 38.097652>,  <35.028267, 32.740742, 37.847946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282909, 32.921860, 38.097652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577981, -0.816046, 0.002495,
		0.510562, 0.359227, -0.781205,
		0.636604, 0.452796, 0.624269,
		35.473892, 33.057697, 38.284935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736286, 32.587765, 37.583447>,  <35.028267, 32.740742, 37.847946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736286, 32.587765, 37.583447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710697, 32.633408, 37.980007>,  <35.695343, 32.660793, 38.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710697, 32.633408, 37.980007>,  <35.736286, 32.587765, 37.583447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710697, 32.633408, 37.980007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569872, -0.811360, 0.130158,
		0.819240, 0.573301, -0.013127,
		-0.063970, 0.114111, 0.991406,
		35.691505, 32.667641, 38.277428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272102, 32.394215, 37.834820>,  <35.736286, 32.587765, 37.583447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272102, 32.394215, 37.834820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015774, 32.360569, 38.140045>,  <35.861977, 32.340382, 38.323181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015774, 32.360569, 38.140045>,  <36.272102, 32.394215, 37.834820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015774, 32.360569, 38.140045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265924, -0.956762, 0.117860,
		0.720158, 0.278445, 0.635485,
		-0.640826, -0.084113, 0.763065,
		35.823524, 32.335335, 38.368965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474003, 32.044647, 38.470516>,  <36.272102, 32.394215, 37.834820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474003, 32.044647, 38.470516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077816, 31.991524, 38.485180>,  <35.840103, 31.959648, 38.493977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077816, 31.991524, 38.485180>,  <36.474003, 32.044647, 38.470516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077816, 31.991524, 38.485180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137236, -0.974584, 0.177065,
		0.012210, 0.180407, 0.983516,
		-0.990463, -0.132812, 0.036658,
		35.780678, 31.951681, 38.496178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533604, 31.422302, 38.757282>,  <36.474003, 32.044647, 38.470516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533604, 31.422302, 38.757282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135834, 31.420681, 38.715130>,  <35.897171, 31.419708, 38.689838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135834, 31.420681, 38.715130>,  <36.533604, 31.422302, 38.757282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135834, 31.420681, 38.715130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017028, -0.979976, 0.198385,
		-0.104077, 0.199073, 0.974442,
		-0.994423, -0.004054, -0.105383,
		35.837505, 31.419464, 38.683514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147877, 31.397791, 39.382431>,  <36.533604, 31.422302, 38.757282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147877, 31.397791, 39.382431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000813, 31.224274, 39.053394>,  <35.912575, 31.120163, 38.855972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000813, 31.224274, 39.053394>,  <36.147877, 31.397791, 39.382431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000813, 31.224274, 39.053394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218647, -0.900066, 0.376928,
		-0.903893, -0.041276, 0.425763,
		-0.367657, -0.433794, -0.822588,
		35.890514, 31.094135, 38.806618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247726, 30.690695, 39.510155>,  <36.147877, 31.397791, 39.382431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247726, 30.690695, 39.510155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009071, 30.676382, 39.189468>,  <35.865879, 30.667795, 38.997059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009071, 30.676382, 39.189468>,  <36.247726, 30.690695, 39.510155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009071, 30.676382, 39.189468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037501, -0.999157, 0.016685,
		-0.801635, -0.020110, 0.597475,
		-0.596636, -0.035781, -0.801714,
		35.830082, 30.665648, 38.948956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607811, 30.342339, 39.688450>,  <36.247726, 30.690695, 39.510155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607811, 30.342339, 39.688450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629494, 30.306931, 39.290611>,  <35.642502, 30.285686, 39.051907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629494, 30.306931, 39.290611>,  <35.607811, 30.342339, 39.688450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629494, 30.306931, 39.290611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278444, -0.957893, 0.070076,
		-0.958922, 0.273142, -0.076571,
		0.054206, -0.088518, -0.994598,
		35.645756, 30.280375, 38.992233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009655, 29.865604, 39.474617>,  <35.607811, 30.342339, 39.688450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009655, 29.865604, 39.474617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249313, 29.897585, 39.155960>,  <35.393108, 29.916773, 38.964767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249313, 29.897585, 39.155960>,  <35.009655, 29.865604, 39.474617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249313, 29.897585, 39.155960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008116, -0.994344, -0.105894,
		-0.800600, 0.069912, -0.595106,
		0.599144, 0.079949, -0.796640,
		35.429058, 29.921570, 38.916969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641106, 29.498240, 38.894222>,  <35.009655, 29.865604, 39.474617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641106, 29.498240, 38.894222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037632, 29.527937, 38.850819>,  <35.275547, 29.545755, 38.824776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037632, 29.527937, 38.850819>,  <34.641106, 29.498240, 38.894222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037632, 29.527937, 38.850819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048017, -0.972736, -0.226892,
		-0.122396, 0.219712, -0.967856,
		0.991319, 0.074244, -0.108509,
		35.335030, 29.550211, 38.818268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744995, 29.020994, 38.281586>,  <34.641106, 29.498240, 38.894222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744995, 29.020994, 38.281586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075752, 29.085690, 38.497025>,  <35.274208, 29.124508, 38.626289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075752, 29.085690, 38.497025>,  <34.744995, 29.020994, 38.281586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075752, 29.085690, 38.497025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146752, -0.986624, 0.070976,
		0.542876, 0.020351, -0.839566,
		0.826892, 0.161740, 0.538601,
		35.323818, 29.134211, 38.658604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222309, 28.771099, 37.723995>,  <34.744995, 29.020994, 38.281586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222309, 28.771099, 37.723995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385059, 29.106424, 37.578842>,  <35.482708, 29.307619, 37.491749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385059, 29.106424, 37.578842>,  <35.222309, 28.771099, 37.723995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385059, 29.106424, 37.578842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102374, -0.352907, -0.930041,
		-0.907729, 0.415562, -0.057768,
		0.406876, 0.838311, -0.362886,
		35.507122, 29.357918, 37.469975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751701, 29.097979, 37.274483>,  <35.222309, 28.771099, 37.723995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751701, 29.097979, 37.274483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132309, 29.168642, 37.173759>,  <35.360672, 29.211040, 37.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132309, 29.168642, 37.173759>,  <34.751701, 29.097979, 37.274483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132309, 29.168642, 37.173759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203068, -0.254105, -0.945619,
		-0.231037, 0.950906, -0.205911,
		0.951518, 0.176659, -0.251806,
		35.417763, 29.221640, 37.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014565, 29.777403, 36.832005>,  <34.751701, 29.097979, 37.274483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014565, 29.777403, 36.832005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229729, 29.444035, 36.781315>,  <35.358826, 29.244013, 36.750900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229729, 29.444035, 36.781315>,  <35.014565, 29.777403, 36.832005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229729, 29.444035, 36.781315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130023, 0.066499, -0.989279,
		0.832913, 0.548621, -0.072593,
		0.537912, -0.833422, -0.126721,
		35.391102, 29.194008, 36.743298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582973, 29.816912, 36.335213>,  <35.014565, 29.777403, 36.832005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582973, 29.816912, 36.335213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412613, 29.455158, 36.345768>,  <35.310394, 29.238106, 36.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412613, 29.455158, 36.345768>,  <35.582973, 29.816912, 36.335213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412613, 29.455158, 36.345768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300892, 0.114077, -0.946811,
		0.853270, -0.411189, -0.320708,
		-0.425904, -0.904384, 0.026385,
		35.284843, 29.183844, 36.353683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652695, 29.530390, 35.621941>,  <35.582973, 29.816912, 36.335213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652695, 29.530390, 35.621941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367203, 29.348894, 35.835377>,  <35.195908, 29.239996, 35.963436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367203, 29.348894, 35.835377>,  <35.652695, 29.530390, 35.621941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367203, 29.348894, 35.835377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556171, -0.095934, -0.825512,
		0.425756, -0.885956, -0.183886,
		-0.713727, -0.453739, 0.533587,
		35.153084, 29.212772, 35.995453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424683, 28.844889, 35.281914>,  <35.652695, 29.530390, 35.621941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424683, 28.844889, 35.281914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106857, 28.996988, 35.471260>,  <34.916161, 29.088247, 35.584869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106857, 28.996988, 35.471260>,  <35.424683, 28.844889, 35.281914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106857, 28.996988, 35.471260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543097, -0.096482, -0.834108,
		-0.271497, -0.919838, 0.283173,
		-0.794566, 0.380248, 0.473367,
		34.868488, 29.111063, 35.613270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902054, 28.359272, 35.161610>,  <35.424683, 28.844889, 35.281914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902054, 28.359272, 35.161610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761147, 28.723587, 35.247746>,  <34.676601, 28.942177, 35.299427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761147, 28.723587, 35.247746>,  <34.902054, 28.359272, 35.161610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761147, 28.723587, 35.247746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494229, 0.014358, -0.869213,
		-0.794760, -0.412627, 0.445079,
		-0.352270, 0.910787, 0.215344,
		34.655464, 28.996822, 35.312347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153790, 28.314325, 35.227005>,  <34.902054, 28.359272, 35.161610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153790, 28.314325, 35.227005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265316, 28.689342, 35.143795>,  <34.332233, 28.914352, 35.093868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265316, 28.689342, 35.143795>,  <34.153790, 28.314325, 35.227005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265316, 28.689342, 35.143795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539528, -0.026276, -0.841558,
		-0.794462, 0.346879, 0.498504,
		0.278819, 0.937542, -0.208026,
		34.348961, 28.970606, 35.081387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550999, 28.761560, 35.145203>,  <34.153790, 28.314325, 35.227005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550999, 28.761560, 35.145203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837532, 28.938297, 34.929188>,  <34.009453, 29.044340, 34.799580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837532, 28.938297, 34.929188>,  <33.550999, 28.761560, 35.145203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837532, 28.938297, 34.929188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607124, 0.013235, -0.794497,
		-0.343895, 0.896995, 0.277733,
		0.716336, 0.441842, -0.540036,
		34.052433, 29.070850, 34.767178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211185, 29.241642, 34.622078>,  <33.550999, 28.761560, 35.145203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211185, 29.241642, 34.622078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571804, 29.188837, 34.457260>,  <33.788177, 29.157154, 34.358368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571804, 29.188837, 34.457260>,  <33.211185, 29.241642, 34.622078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571804, 29.188837, 34.457260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372981, 0.245559, -0.894755,
		0.219302, 0.960351, 0.172144,
		0.901550, -0.132015, -0.412044,
		33.842270, 29.149233, 34.333649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133453, 29.661747, 34.063622>,  <33.211185, 29.241642, 34.622078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133453, 29.661747, 34.063622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458439, 29.452396, 33.960876>,  <33.653431, 29.326786, 33.899231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458439, 29.452396, 33.960876>,  <33.133453, 29.661747, 34.063622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458439, 29.452396, 33.960876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238342, 0.103900, -0.965607,
		0.532062, 0.845745, -0.040327,
		0.812467, -0.523374, -0.256858,
		33.702179, 29.295383, 33.883820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488239, 30.064381, 33.554104>,  <33.133453, 29.661747, 34.063622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488239, 30.064381, 33.554104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598953, 29.684521, 33.495384>,  <33.665382, 29.456604, 33.460152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598953, 29.684521, 33.495384>,  <33.488239, 30.064381, 33.554104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598953, 29.684521, 33.495384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249620, 0.076465, -0.965320,
		0.927943, 0.303833, -0.215888,
		0.276788, -0.949652, -0.146798,
		33.681992, 29.399626, 33.451344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381577, 30.058502, 32.889839>,  <33.488239, 30.064381, 33.554104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381577, 30.058502, 32.889839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475079, 29.671619, 32.929581>,  <33.531178, 29.439489, 32.953426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475079, 29.671619, 32.929581>,  <33.381577, 30.058502, 32.889839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475079, 29.671619, 32.929581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204641, -0.148838, -0.967455,
		0.950516, 0.205814, -0.232721,
		0.233753, -0.967206, 0.099355,
		33.545204, 29.381458, 32.959389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974800, 29.878216, 32.359970>,  <33.381577, 30.058502, 32.889839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974800, 29.878216, 32.359970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756451, 29.558834, 32.461552>,  <33.625443, 29.367205, 32.522499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756451, 29.558834, 32.461552>,  <33.974800, 29.878216, 32.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756451, 29.558834, 32.461552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171436, -0.190247, -0.966652,
		0.820142, -0.571205, -0.033034,
		-0.545872, -0.798455, 0.253955,
		33.592690, 29.319298, 32.537739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315060, 29.266001, 31.985258>,  <33.974800, 29.878216, 32.359970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315060, 29.266001, 31.985258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936584, 29.189543, 32.089706>,  <33.709499, 29.143667, 32.152374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936584, 29.189543, 32.089706>,  <34.315060, 29.266001, 31.985258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936584, 29.189543, 32.089706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240548, -0.124318, -0.962643,
		0.216469, -0.973657, 0.071648,
		-0.946191, -0.191148, 0.261122,
		33.652725, 29.132198, 32.168045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118435, 28.663952, 31.692673>,  <34.315060, 29.266001, 31.985258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118435, 28.663952, 31.692673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762936, 28.840466, 31.742292>,  <33.549637, 28.946375, 31.772064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762936, 28.840466, 31.742292>,  <34.118435, 28.663952, 31.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762936, 28.840466, 31.742292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279042, -0.306135, -0.910174,
		-0.363672, -0.843533, 0.395216,
		-0.888751, 0.441286, 0.124049,
		33.496311, 28.972851, 31.779507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762295, 28.257547, 31.228773>,  <34.118435, 28.663952, 31.692673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762295, 28.257547, 31.228773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544113, 28.577435, 31.329115>,  <33.413204, 28.769367, 31.389320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544113, 28.577435, 31.329115>,  <33.762295, 28.257547, 31.228773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544113, 28.577435, 31.329115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375929, 0.034068, -0.926022,
		-0.749104, -0.599406, 0.282055,
		-0.545454, 0.799720, 0.250855,
		33.380478, 28.817350, 31.404371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089645, 28.135641, 30.965355>,  <33.762295, 28.257547, 31.228773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089645, 28.135641, 30.965355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133347, 28.531418, 31.003454>,  <33.159569, 28.768883, 31.026314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133347, 28.531418, 31.003454>,  <33.089645, 28.135641, 30.965355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133347, 28.531418, 31.003454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228240, 0.118234, -0.966399,
		-0.967455, 0.083846, 0.238747,
		0.109256, 0.989439, 0.095249,
		33.166122, 28.828249, 31.032028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494022, 28.435198, 30.780071>,  <33.089645, 28.135641, 30.965355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494022, 28.435198, 30.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746994, 28.740028, 30.724541>,  <32.898777, 28.922926, 30.691221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746994, 28.740028, 30.724541>,  <32.494022, 28.435198, 30.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746994, 28.740028, 30.724541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369598, 0.139364, -0.918681,
		-0.680757, 0.632312, 0.369800,
		0.632430, 0.762076, -0.138828,
		32.936722, 28.968651, 30.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101223, 28.859034, 30.364643>,  <32.494022, 28.435198, 30.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101223, 28.859034, 30.364643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469578, 29.011723, 30.333025>,  <32.690590, 29.103336, 30.314054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469578, 29.011723, 30.333025>,  <32.101223, 28.859034, 30.364643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469578, 29.011723, 30.333025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212745, 0.322221, -0.922449,
		-0.326651, 0.866291, 0.377940,
		0.920890, 0.381724, -0.079046,
		32.745846, 29.126240, 30.309311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989344, 29.476418, 30.068937>,  <32.101223, 28.859034, 30.364643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989344, 29.476418, 30.068937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385578, 29.438995, 30.028957>,  <32.623318, 29.416542, 30.004969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385578, 29.438995, 30.028957>,  <31.989344, 29.476418, 30.068937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385578, 29.438995, 30.028957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039476, 0.503883, -0.862869,
		0.131087, 0.858691, 0.495446,
		0.990585, -0.093553, -0.099950,
		32.682755, 29.410929, 29.998972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276257, 30.088535, 29.873487>,  <31.989344, 29.476418, 30.068937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276257, 30.088535, 29.873487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538799, 29.825499, 29.725559>,  <32.696323, 29.667677, 29.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538799, 29.825499, 29.725559>,  <32.276257, 30.088535, 29.873487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538799, 29.825499, 29.725559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018325, 0.476145, -0.879176,
		0.754228, 0.583829, 0.300471,
		0.656356, -0.657593, -0.369821,
		32.735706, 29.628222, 29.614613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944820, 30.427237, 29.663837>,  <32.276257, 30.088535, 29.873487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944820, 30.427237, 29.663837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899391, 30.080465, 29.469709>,  <32.872131, 29.872402, 29.353231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899391, 30.080465, 29.469709>,  <32.944820, 30.427237, 29.663837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899391, 30.080465, 29.469709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191723, 0.460177, -0.866879,
		0.974855, -0.191504, 0.113945,
		-0.113576, -0.866927, -0.485322,
		32.865318, 29.820387, 29.324112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243504, 30.627132, 29.080509>,  <32.944820, 30.427237, 29.663837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243504, 30.627132, 29.080509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110798, 30.269508, 28.960115>,  <33.031174, 30.054934, 28.887878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110798, 30.269508, 28.960115>,  <33.243504, 30.627132, 29.080509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110798, 30.269508, 28.960115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112477, 0.279291, -0.953596,
		0.936635, -0.350218, 0.007904,
		-0.331759, -0.894060, -0.300985,
		33.011269, 30.001289, 28.869820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741657, 30.340984, 28.725277>,  <33.243504, 30.627132, 29.080509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741657, 30.340984, 28.725277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390930, 30.196394, 28.598452>,  <33.180496, 30.109640, 28.522356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390930, 30.196394, 28.598452>,  <33.741657, 30.340984, 28.725277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390930, 30.196394, 28.598452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172623, 0.378800, -0.909237,
		0.448774, -0.851964, -0.269738,
		-0.876814, -0.361479, -0.317064,
		33.127884, 30.087950, 28.503332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796047, 30.304705, 28.029825>,  <33.741657, 30.340984, 28.725277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796047, 30.304705, 28.029825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404121, 30.236633, 28.071795>,  <33.168968, 30.195791, 28.096975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404121, 30.236633, 28.071795>,  <33.796047, 30.304705, 28.029825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404121, 30.236633, 28.071795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162652, 0.373381, -0.913308,
		0.116249, -0.911935, -0.393522,
		-0.979811, -0.170178, 0.104923,
		33.110176, 30.185579, 28.103271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629620, 30.080910, 27.353971>,  <33.796047, 30.304705, 28.029825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629620, 30.080910, 27.353971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296211, 30.194698, 27.543423>,  <33.096169, 30.262972, 27.657093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296211, 30.194698, 27.543423>,  <33.629620, 30.080910, 27.353971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296211, 30.194698, 27.543423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247202, 0.574641, -0.780179,
		-0.494105, -0.767375, -0.408651,
		-0.833518, 0.284471, 0.473630,
		33.046158, 30.280039, 27.685513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034885, 29.931070, 26.931561>,  <33.629620, 30.080910, 27.353971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034885, 29.931070, 26.931561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944798, 30.234663, 27.175928>,  <32.890743, 30.416819, 27.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944798, 30.234663, 27.175928>,  <33.034885, 29.931070, 26.931561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944798, 30.234663, 27.175928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112188, 0.602655, -0.790076,
		-0.967827, -0.246480, -0.050583,
		-0.225222, 0.758982, 0.610918,
		32.877232, 30.462358, 27.359203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450817, 30.327732, 26.602962>,  <33.034885, 29.931070, 26.931561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450817, 30.327732, 26.602962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614479, 30.574766, 26.871645>,  <32.712677, 30.722986, 27.032854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614479, 30.574766, 26.871645>,  <32.450817, 30.327732, 26.602962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614479, 30.574766, 26.871645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032420, 0.745515, -0.665699,
		-0.911890, 0.250596, 0.325051,
		0.409152, 0.617583, 0.671704,
		32.737225, 30.760040, 27.073156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002960, 30.839800, 26.722605>,  <32.450817, 30.327732, 26.602962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002960, 30.839800, 26.722605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352947, 30.999161, 26.832668>,  <32.562939, 31.094776, 26.898706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352947, 30.999161, 26.832668>,  <32.002960, 30.839800, 26.722605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352947, 30.999161, 26.832668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135632, 0.747215, -0.650595,
		-0.464802, 0.531927, 0.707823,
		0.874964, 0.398401, 0.275161,
		32.615437, 31.118681, 26.915216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900780, 31.487665, 26.605770>,  <32.002960, 30.839800, 26.722605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900780, 31.487665, 26.605770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298798, 31.455421, 26.629061>,  <32.537609, 31.436075, 26.643034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298798, 31.455421, 26.629061>,  <31.900780, 31.487665, 26.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298798, 31.455421, 26.629061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098008, 0.696066, -0.711257,
		0.016805, 0.713439, 0.700516,
		0.995044, -0.080609, 0.058226,
		32.597309, 31.431238, 26.646528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185219, 32.144768, 26.754889>,  <31.900780, 31.487665, 26.605770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185219, 32.144768, 26.754889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481373, 31.933912, 26.588057>,  <32.659065, 31.807398, 26.487957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481373, 31.933912, 26.588057>,  <32.185219, 32.144768, 26.754889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481373, 31.933912, 26.588057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204975, 0.767984, -0.606783,
		0.640169, 0.363762, 0.676654,
		0.740384, -0.527142, -0.417078,
		32.703487, 31.775770, 26.462933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533016, 32.702351, 26.450003>,  <32.185219, 32.144768, 26.754889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533016, 32.702351, 26.450003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692757, 32.380672, 26.273914>,  <32.788601, 32.187668, 26.168261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692757, 32.380672, 26.273914>,  <32.533016, 32.702351, 26.450003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692757, 32.380672, 26.273914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296907, 0.567739, -0.767801,
		0.867391, 0.175916, 0.465497,
		0.399349, -0.804193, -0.440221,
		32.812561, 32.139416, 26.141848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170452, 32.862446, 26.264351>,  <32.533016, 32.702351, 26.450003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170452, 32.862446, 26.264351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079514, 32.557182, 26.022392>,  <33.024952, 32.374023, 25.877218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079514, 32.557182, 26.022392>,  <33.170452, 32.862446, 26.264351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079514, 32.557182, 26.022392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385236, 0.500008, -0.775619,
		0.894376, -0.409358, 0.180325,
		-0.227342, -0.763164, -0.604894,
		33.011311, 32.328232, 25.840923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757416, 32.637589, 25.881817>,  <33.170452, 32.862446, 26.264351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757416, 32.637589, 25.881817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417999, 32.576294, 25.679237>,  <33.214348, 32.539516, 25.557690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417999, 32.576294, 25.679237>,  <33.757416, 32.637589, 25.881817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417999, 32.576294, 25.679237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309923, 0.631837, -0.710444,
		0.428857, -0.759803, -0.488651,
		-0.848546, -0.153235, -0.506448,
		33.163437, 32.530323, 25.527304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994167, 32.648869, 25.343840>,  <33.757416, 32.637589, 25.881817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994167, 32.648869, 25.343840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610935, 32.675465, 25.232368>,  <33.380997, 32.691422, 25.165485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610935, 32.675465, 25.232368>,  <33.994167, 32.648869, 25.343840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610935, 32.675465, 25.232368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276883, 0.464786, -0.841017,
		0.073608, -0.882923, -0.463711,
		-0.958080, 0.066488, -0.278679,
		33.323513, 32.695412, 25.148766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003067, 32.341351, 24.697569>,  <33.994167, 32.648869, 25.343840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003067, 32.341351, 24.697569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683582, 32.581402, 24.715052>,  <33.491890, 32.725433, 24.725542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683582, 32.581402, 24.715052>,  <34.003067, 32.341351, 24.697569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683582, 32.581402, 24.715052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245247, 0.391013, -0.887109,
		-0.549466, -0.697825, -0.459485,
		-0.798712, 0.600124, 0.043709,
		33.443970, 32.761440, 24.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648464, 32.222294, 24.007490>,  <34.003067, 32.341351, 24.697569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648464, 32.222294, 24.007490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484436, 32.559460, 24.146826>,  <33.386021, 32.761761, 24.230427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484436, 32.559460, 24.146826>,  <33.648464, 32.222294, 24.007490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484436, 32.559460, 24.146826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165493, 0.444353, -0.880433,
		-0.896915, -0.303389, -0.321711,
		-0.410067, 0.842915, 0.348338,
		33.361416, 32.812336, 24.251328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014145, 32.304115, 23.550215>,  <33.648464, 32.222294, 24.007490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014145, 32.304115, 23.550215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122009, 32.644764, 23.730005>,  <33.186726, 32.849152, 23.837879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122009, 32.644764, 23.730005>,  <33.014145, 32.304115, 23.550215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122009, 32.644764, 23.730005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128647, 0.430723, -0.893268,
		-0.954324, 0.298700, 0.006589,
		0.269657, 0.851620, 0.449476,
		33.202908, 32.900249, 23.864849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594772, 32.773857, 23.250919>,  <33.014145, 32.304115, 23.550215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594772, 32.773857, 23.250919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898281, 32.986420, 23.401581>,  <33.080387, 33.113956, 23.491978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898281, 32.986420, 23.401581>,  <32.594772, 32.773857, 23.250919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898281, 32.986420, 23.401581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004746, 0.573734, -0.819028,
		-0.651336, 0.623245, 0.432813,
		0.758774, 0.531408, 0.376652,
		33.125912, 33.145844, 23.514576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390701, 33.513451, 23.304480>,  <32.594772, 32.773857, 23.250919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390701, 33.513451, 23.304480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790268, 33.498028, 23.294092>,  <33.030010, 33.488773, 23.287859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790268, 33.498028, 23.294092>,  <32.390701, 33.513451, 23.304480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790268, 33.498028, 23.294092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008746, 0.704590, -0.709560,
		0.045654, 0.708566, 0.704166,
		0.998919, -0.038553, -0.025970,
		33.089943, 33.486462, 23.286301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490749, 34.192219, 22.965086>,  <32.390701, 33.513451, 23.304480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490749, 34.192219, 22.965086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830822, 33.988064, 22.913418>,  <33.034866, 33.865570, 22.882418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830822, 33.988064, 22.913418>,  <32.490749, 34.192219, 22.965086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830822, 33.988064, 22.913418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135015, 0.448502, -0.883525,
		0.508876, 0.733721, 0.450220,
		0.850186, -0.510391, -0.129169,
		33.085876, 33.834946, 22.874666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985107, 34.602772, 22.616280>,  <32.490749, 34.192219, 22.965086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985107, 34.602772, 22.616280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141396, 34.243942, 22.533726>,  <33.235168, 34.028645, 22.484194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141396, 34.243942, 22.533726>,  <32.985107, 34.602772, 22.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141396, 34.243942, 22.533726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311466, 0.339822, -0.887418,
		0.866216, 0.282447, 0.412183,
		0.390717, -0.897076, -0.206386,
		33.258610, 33.974819, 22.471809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574028, 34.765743, 22.234251>,  <32.985107, 34.602772, 22.616280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574028, 34.765743, 22.234251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521893, 34.377193, 22.154814>,  <33.490612, 34.144062, 22.107151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521893, 34.377193, 22.154814>,  <33.574028, 34.765743, 22.234251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521893, 34.377193, 22.154814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180040, 0.173785, -0.968186,
		0.974986, -0.161945, 0.152236,
		-0.130337, -0.971377, -0.198595,
		33.482792, 34.085781, 22.095236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106575, 34.687340, 21.710886>,  <33.574028, 34.765743, 22.234251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106575, 34.687340, 21.710886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835068, 34.393871, 21.698254>,  <33.672161, 34.217789, 21.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835068, 34.393871, 21.698254>,  <34.106575, 34.687340, 21.710886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835068, 34.393871, 21.698254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127464, -0.075357, -0.988976,
		0.723203, -0.675313, 0.144667,
		-0.678771, -0.733671, -0.031580,
		33.631435, 34.173771, 21.688780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437511, 34.129826, 21.329287>,  <34.106575, 34.687340, 21.710886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437511, 34.129826, 21.329287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043842, 34.073616, 21.286091>,  <33.807640, 34.039890, 21.260174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043842, 34.073616, 21.286091>,  <34.437511, 34.129826, 21.329287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043842, 34.073616, 21.286091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114037, -0.035698, -0.992835,
		0.135660, -0.989434, 0.051158,
		-0.984171, -0.140522, -0.107989,
		33.748592, 34.031460, 21.253695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400471, 33.682644, 20.713266>,  <34.437511, 34.129826, 21.329287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400471, 33.682644, 20.713266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024826, 33.808014, 20.769606>,  <33.799438, 33.883236, 20.803410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024826, 33.808014, 20.769606>,  <34.400471, 33.682644, 20.713266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024826, 33.808014, 20.769606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104852, 0.128967, -0.986090,
		-0.327233, -0.940814, -0.088250,
		-0.939108, 0.313428, 0.140849,
		33.743095, 33.902042, 20.811861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980656, 33.351776, 20.191490>,  <34.400471, 33.682644, 20.713266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980656, 33.351776, 20.191490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760448, 33.672585, 20.284172>,  <33.628323, 33.865070, 20.339781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760448, 33.672585, 20.284172>,  <33.980656, 33.351776, 20.191490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760448, 33.672585, 20.284172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231547, 0.119969, -0.965398,
		-0.802070, -0.585120, 0.119661,
		-0.550518, 0.802024, 0.231706,
		33.595295, 33.913193, 20.353683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276203, 33.333366, 19.865665>,  <33.980656, 33.351776, 20.191490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276203, 33.333366, 19.865665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332134, 33.724869, 19.925655>,  <33.365692, 33.959770, 19.961649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332134, 33.724869, 19.925655>,  <33.276203, 33.333366, 19.865665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332134, 33.724869, 19.925655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151999, 0.170883, -0.973497,
		-0.978440, 0.113328, 0.172664,
		0.139829, 0.978752, 0.149972,
		33.374084, 34.018494, 19.970648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893131, 33.679268, 19.316807>,  <33.276203, 33.333366, 19.865665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893131, 33.679268, 19.316807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107670, 33.980782, 19.468668>,  <33.236393, 34.161690, 19.559786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107670, 33.980782, 19.468668>,  <32.893131, 33.679268, 19.316807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107670, 33.980782, 19.468668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087196, 0.397932, -0.913262,
		-0.839482, 0.522928, 0.147702,
		0.536346, 0.753788, 0.379654,
		33.268574, 34.206917, 19.582563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583271, 34.279591, 19.109497>,  <32.893131, 33.679268, 19.316807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583271, 34.279591, 19.109497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981819, 34.305214, 19.131950>,  <33.220947, 34.320587, 19.145422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981819, 34.305214, 19.131950>,  <32.583271, 34.279591, 19.109497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981819, 34.305214, 19.131950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026832, 0.389397, -0.920679,
		-0.080839, 0.918840, 0.386263,
		0.996366, 0.064062, 0.056133,
		33.280727, 34.324432, 19.148790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763695, 35.009495, 19.179504>,  <32.583271, 34.279591, 19.109497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763695, 35.009495, 19.179504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992718, 34.743431, 18.987780>,  <33.130131, 34.583794, 18.872746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992718, 34.743431, 18.987780>,  <32.763695, 35.009495, 19.179504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992718, 34.743431, 18.987780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017503, 0.594407, -0.803974,
		0.819675, 0.451935, 0.351976,
		0.572561, -0.665158, -0.479311,
		33.164486, 34.543884, 18.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453533, 35.221512, 18.908606>,  <32.763695, 35.009495, 19.179504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453533, 35.221512, 18.908606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219543, 34.976070, 18.696455>,  <33.079151, 34.828804, 18.569164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219543, 34.976070, 18.696455>,  <33.453533, 35.221512, 18.908606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219543, 34.976070, 18.696455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010791, 0.659767, -0.751392,
		0.810983, -0.433819, -0.392566,
		-0.584970, -0.613602, -0.530378,
		33.044052, 34.791988, 18.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582745, 35.901772, 18.725340>,  <33.453533, 35.221512, 18.908606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582745, 35.901772, 18.725340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543262, 35.705864, 19.071838>,  <33.519573, 35.588318, 19.279737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543262, 35.705864, 19.071838>,  <33.582745, 35.901772, 18.725340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543262, 35.705864, 19.071838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977420, 0.115720, 0.176804,
		-0.186835, 0.864139, 0.467287,
		-0.098709, -0.489769, 0.866247,
		33.513649, 35.558933, 19.331713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412498, 35.951511, 18.684126>,  <33.582745, 35.901772, 18.725340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412498, 35.951511, 18.684126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771255, 36.024693, 18.845177>,  <34.986511, 36.068600, 18.941807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771255, 36.024693, 18.845177>,  <34.412498, 35.951511, 18.684126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771255, 36.024693, 18.845177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440063, 0.278884, 0.853562,
		0.043870, -0.942738, 0.330638,
		0.896895, 0.182947, 0.402629,
		35.040325, 36.079578, 18.965965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442108, 35.567902, 19.422012>,  <34.412498, 35.951511, 18.684126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442108, 35.567902, 19.422012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621670, 35.915909, 19.340469>,  <34.729408, 36.124714, 19.291544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621670, 35.915909, 19.340469>,  <34.442108, 35.567902, 19.422012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621670, 35.915909, 19.340469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288859, 0.357175, 0.888249,
		0.845604, -0.339851, 0.411649,
		0.448903, 0.870016, -0.203860,
		34.756340, 36.176914, 19.279312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015095, 35.660503, 19.914541>,  <34.442108, 35.567902, 19.422012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015095, 35.660503, 19.914541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832981, 36.006935, 19.831968>,  <34.723713, 36.214794, 19.782425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832981, 36.006935, 19.831968>,  <35.015095, 35.660503, 19.914541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832981, 36.006935, 19.831968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303001, 0.067297, 0.950611,
		0.837200, 0.495351, 0.231784,
		-0.455287, 0.866083, -0.206433,
		34.696396, 36.266762, 19.770039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264881, 36.249474, 20.255447>,  <35.015095, 35.660503, 19.914541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264881, 36.249474, 20.255447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866745, 36.223587, 20.284048>,  <34.627865, 36.208054, 20.301208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866745, 36.223587, 20.284048>,  <35.264881, 36.249474, 20.255447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866745, 36.223587, 20.284048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077526, -0.095954, 0.992362,
		-0.057365, 0.993279, 0.100525,
		-0.995339, -0.064720, 0.071501,
		34.568142, 36.204170, 20.305498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850357, 36.739616, 20.710552>,  <35.264881, 36.249474, 20.255447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850357, 36.739616, 20.710552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646225, 36.396000, 20.694468>,  <34.523746, 36.189831, 20.684816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646225, 36.396000, 20.694468>,  <34.850357, 36.739616, 20.710552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646225, 36.396000, 20.694468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085679, -0.097313, 0.991559,
		-0.855700, 0.502577, 0.123264,
		-0.510330, -0.859038, -0.040211,
		34.493126, 36.138290, 20.682404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374748, 36.819408, 21.198940>,  <34.850357, 36.739616, 20.710552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374748, 36.819408, 21.198940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401836, 36.424240, 21.143183>,  <34.418087, 36.187141, 21.109728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401836, 36.424240, 21.143183>,  <34.374748, 36.819408, 21.198940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401836, 36.424240, 21.143183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159199, -0.148623, 0.975995,
		-0.984921, -0.043902, -0.167340,
		0.067719, -0.987919, -0.139392,
		34.422153, 36.127865, 21.101364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863171, 36.596401, 21.630581>,  <34.374748, 36.819408, 21.198940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863171, 36.596401, 21.630581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132469, 36.306782, 21.570583>,  <34.294048, 36.133011, 21.534584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132469, 36.306782, 21.570583>,  <33.863171, 36.596401, 21.630581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132469, 36.306782, 21.570583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093608, -0.284680, 0.954041,
		-0.733473, -0.628260, -0.259435,
		0.673243, -0.724049, -0.149995,
		34.334442, 36.089569, 21.525585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710583, 36.058899, 21.991282>,  <33.863171, 36.596401, 21.630581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710583, 36.058899, 21.991282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101757, 35.993217, 21.939615>,  <34.336460, 35.953808, 21.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101757, 35.993217, 21.939615>,  <33.710583, 36.058899, 21.991282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101757, 35.993217, 21.939615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087394, -0.240029, 0.966824,
		-0.189753, -0.956779, -0.220383,
		0.977935, -0.164197, -0.129162,
		34.395138, 35.943958, 21.900866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793896, 35.437481, 22.347881>,  <33.710583, 36.058899, 21.991282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793896, 35.437481, 22.347881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168049, 35.567936, 22.293194>,  <34.392540, 35.646210, 22.260382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168049, 35.567936, 22.293194>,  <33.793896, 35.437481, 22.347881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168049, 35.567936, 22.293194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220506, -0.235648, 0.946492,
		0.276467, -0.915481, -0.292336,
		0.935384, 0.326135, -0.136720,
		34.448666, 35.665775, 22.252178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345474, 34.932968, 22.609417>,  <33.793896, 35.437481, 22.347881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345474, 34.932968, 22.609417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562237, 35.269142, 22.609482>,  <34.692295, 35.470848, 22.609522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562237, 35.269142, 22.609482>,  <34.345474, 34.932968, 22.609417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562237, 35.269142, 22.609482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317509, -0.204908, 0.925851,
		0.778153, -0.501676, -0.377888,
		0.541910, 0.840437, 0.000163,
		34.724812, 35.521275, 22.609531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046234, 34.831284, 22.869493>,  <34.345474, 34.932968, 22.609417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046234, 34.831284, 22.869493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984211, 35.222115, 22.927839>,  <34.946995, 35.456612, 22.962847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984211, 35.222115, 22.927839>,  <35.046234, 34.831284, 22.869493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984211, 35.222115, 22.927839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471358, -0.056585, 0.880125,
		0.868204, 0.205227, -0.451779,
		-0.155062, 0.977077, 0.145863,
		34.937691, 35.515236, 22.971598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674461, 35.039871, 23.157139>,  <35.046234, 34.831284, 22.869493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674461, 35.039871, 23.157139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410057, 35.327114, 23.244219>,  <35.251415, 35.499458, 23.296467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410057, 35.327114, 23.244219>,  <35.674461, 35.039871, 23.157139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410057, 35.327114, 23.244219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372799, 0.062492, 0.925805,
		0.651219, 0.693126, -0.309016,
		-0.661010, 0.718103, 0.217701,
		35.211754, 35.542545, 23.309528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997837, 35.362423, 23.621429>,  <35.674461, 35.039871, 23.157139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997837, 35.362423, 23.621429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627502, 35.508438, 23.660572>,  <35.405300, 35.596046, 23.684057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627502, 35.508438, 23.660572>,  <35.997837, 35.362423, 23.621429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627502, 35.508438, 23.660572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152506, 0.123957, 0.980498,
		0.345791, 0.922703, -0.170435,
		-0.925835, 0.365039, 0.097854,
		35.349751, 35.617950, 23.689928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075500, 35.986763, 24.062456>,  <35.997837, 35.362423, 23.621429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075500, 35.986763, 24.062456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696011, 35.860409, 24.067158>,  <35.468319, 35.784595, 24.069979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696011, 35.860409, 24.067158>,  <36.075500, 35.986763, 24.062456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696011, 35.860409, 24.067158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030912, -0.055714, 0.997968,
		-0.314594, 0.947159, 0.062622,
		-0.948723, -0.315890, 0.011752,
		35.411392, 35.765640, 24.070683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807091, 36.356853, 24.490269>,  <36.075500, 35.986763, 24.062456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807091, 36.356853, 24.490269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532307, 36.066181, 24.488390>,  <35.367435, 35.891777, 24.487263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532307, 36.066181, 24.488390>,  <35.807091, 36.356853, 24.490269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532307, 36.066181, 24.488390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071867, -0.074368, 0.994638,
		-0.723130, 0.682942, 0.103312,
		-0.686963, -0.726677, -0.004697,
		35.326218, 35.848179, 24.486980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272041, 36.372860, 25.094469>,  <35.807091, 36.356853, 24.490269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272041, 36.372860, 25.094469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240410, 35.983910, 25.006615>,  <35.221432, 35.750542, 24.953903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240410, 35.983910, 25.006615>,  <35.272041, 36.372860, 25.094469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240410, 35.983910, 25.006615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048693, -0.216293, 0.975113,
		-0.995679, 0.087805, -0.030243,
		-0.079078, -0.972372, -0.219634,
		35.216686, 35.692200, 24.940725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709152, 36.095337, 25.531849>,  <35.272041, 36.372860, 25.094469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709152, 36.095337, 25.531849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921398, 35.778397, 25.411432>,  <35.048744, 35.588230, 25.339182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921398, 35.778397, 25.411432>,  <34.709152, 36.095337, 25.531849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921398, 35.778397, 25.411432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094848, -0.408439, 0.907844,
		-0.842291, -0.453160, -0.291876,
		0.530612, -0.792353, -0.301044,
		35.080582, 35.540691, 25.321119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269596, 35.570610, 25.770395>,  <34.709152, 36.095337, 25.531849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269596, 35.570610, 25.770395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641731, 35.431976, 25.722479>,  <34.865013, 35.348797, 25.693729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641731, 35.431976, 25.722479>,  <34.269596, 35.570610, 25.770395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641731, 35.431976, 25.722479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082037, -0.515106, 0.853191,
		-0.357406, -0.783930, -0.507656,
		0.930339, -0.346583, -0.119791,
		34.920834, 35.328003, 25.686541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255009, 34.831478, 25.796923>,  <34.269596, 35.570610, 25.770395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255009, 34.831478, 25.796923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635727, 34.933659, 25.864845>,  <34.864159, 34.994968, 25.905600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635727, 34.933659, 25.864845>,  <34.255009, 34.831478, 25.796923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635727, 34.933659, 25.864845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025502, -0.485764, 0.873718,
		0.305681, -0.835928, -0.455832,
		0.951792, 0.255454, 0.169807,
		34.921265, 35.010296, 25.915787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381550, 34.352062, 26.234573>,  <34.255009, 34.831478, 25.796923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381550, 34.352062, 26.234573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684170, 34.612309, 26.260887>,  <34.865742, 34.768456, 26.276676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684170, 34.612309, 26.260887>,  <34.381550, 34.352062, 26.234573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684170, 34.612309, 26.260887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236960, -0.366520, 0.899729,
		0.609488, -0.665105, -0.431462,
		0.756554, 0.650614, 0.065787,
		34.911137, 34.807491, 26.280622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789814, 34.012573, 26.606108>,  <34.381550, 34.352062, 26.234573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789814, 34.012573, 26.606108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924084, 34.382748, 26.676416>,  <35.004646, 34.604851, 26.718601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924084, 34.382748, 26.676416>,  <34.789814, 34.012573, 26.606108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924084, 34.382748, 26.676416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200955, -0.252657, 0.946457,
		0.920293, -0.282381, -0.270781,
		0.335676, 0.925432, 0.175773,
		35.024788, 34.660378, 26.729149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482590, 33.881653, 26.879871>,  <34.789814, 34.012573, 26.606108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482590, 33.881653, 26.879871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323647, 34.223591, 27.013346>,  <35.228279, 34.428753, 27.093430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323647, 34.223591, 27.013346>,  <35.482590, 33.881653, 26.879871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323647, 34.223591, 27.013346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262278, -0.242660, 0.933984,
		0.879383, 0.458646, -0.127783,
		-0.397361, 0.854845, 0.333684,
		35.204437, 34.480045, 27.113451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827911, 34.102833, 27.545689>,  <35.482590, 33.881653, 26.879871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827911, 34.102833, 27.545689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519825, 34.356110, 27.576227>,  <35.334972, 34.508076, 27.594551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519825, 34.356110, 27.576227>,  <35.827911, 34.102833, 27.545689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519825, 34.356110, 27.576227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044090, -0.172284, 0.984060,
		0.636256, 0.754573, 0.160613,
		-0.770217, 0.633196, 0.076348,
		35.288761, 34.546070, 27.599131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949287, 34.589745, 28.015934>,  <35.827911, 34.102833, 27.545689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949287, 34.589745, 28.015934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550571, 34.563499, 27.997572>,  <35.311340, 34.547752, 27.986555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550571, 34.563499, 27.997572>,  <35.949287, 34.589745, 28.015934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550571, 34.563499, 27.997572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037853, -0.119099, 0.992161,
		-0.070561, 0.990712, 0.116233,
		-0.996789, -0.065608, -0.045905,
		35.251534, 34.543816, 27.983801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769825, 34.897373, 28.557474>,  <35.949287, 34.589745, 28.015934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769825, 34.897373, 28.557474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416283, 34.737495, 28.460279>,  <35.204155, 34.641571, 28.401962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416283, 34.737495, 28.460279>,  <35.769825, 34.897373, 28.557474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416283, 34.737495, 28.460279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188136, -0.171841, 0.966993,
		-0.428253, 0.900399, 0.076687,
		-0.883857, -0.399691, -0.242989,
		35.151127, 34.617588, 28.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335266, 35.217274, 29.124243>,  <35.769825, 34.897373, 28.557474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335266, 35.217274, 29.124243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156975, 34.899487, 28.959248>,  <35.049999, 34.708813, 28.860250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156975, 34.899487, 28.959248>,  <35.335266, 35.217274, 29.124243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156975, 34.899487, 28.959248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206686, -0.357007, 0.910948,
		-0.870980, 0.491292, -0.005077,
		-0.445729, -0.794467, -0.412490,
		35.023254, 34.661148, 28.835501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722626, 35.143429, 29.420330>,  <35.335266, 35.217274, 29.124243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722626, 35.143429, 29.420330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786812, 34.780819, 29.264139>,  <34.825325, 34.563255, 29.170425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786812, 34.780819, 29.264139>,  <34.722626, 35.143429, 29.420330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786812, 34.780819, 29.264139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318655, -0.421997, 0.848750,
		-0.934189, -0.011768, -0.356583,
		0.160465, -0.906521, -0.390475,
		34.834949, 34.508862, 29.146997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079674, 34.774761, 29.504875>,  <34.722626, 35.143429, 29.420330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079674, 34.774761, 29.504875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376740, 34.514416, 29.441847>,  <34.554977, 34.358208, 29.404030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376740, 34.514416, 29.441847>,  <34.079674, 34.774761, 29.504875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376740, 34.514416, 29.441847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233570, -0.472275, 0.849942,
		-0.627615, -0.594415, -0.502763,
		0.742661, -0.650866, -0.157569,
		34.599537, 34.319157, 29.394577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828682, 33.978386, 29.428951>,  <34.079674, 34.774761, 29.504875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828682, 33.978386, 29.428951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207813, 33.987892, 29.556108>,  <34.435291, 33.993595, 29.632402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207813, 33.987892, 29.556108>,  <33.828682, 33.978386, 29.428951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207813, 33.987892, 29.556108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242579, -0.593209, 0.767632,
		0.206821, -0.804698, -0.556495,
		0.947829, 0.023768, 0.317891,
		34.492161, 33.995022, 29.651476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902603, 33.381798, 29.672012>,  <33.828682, 33.978386, 29.428951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902603, 33.381798, 29.672012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226891, 33.555550, 29.829010>,  <34.421463, 33.659801, 29.923208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226891, 33.555550, 29.829010>,  <33.902603, 33.381798, 29.672012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226891, 33.555550, 29.829010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123217, -0.528807, 0.839750,
		0.572321, -0.729164, -0.375192,
		0.810720, 0.434377, 0.392493,
		34.470108, 33.685863, 29.946758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354572, 32.840424, 29.932364>,  <33.902603, 33.381798, 29.672012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354572, 32.840424, 29.932364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434723, 33.174171, 30.137760>,  <34.482815, 33.374420, 30.260998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434723, 33.174171, 30.137760>,  <34.354572, 32.840424, 29.932364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434723, 33.174171, 30.137760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121872, -0.498822, 0.858093,
		0.972109, -0.234524, 0.001733,
		0.200379, 0.834371, 0.513491,
		34.494835, 33.424484, 30.291807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862869, 32.631428, 30.460104>,  <34.354572, 32.840424, 29.932364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862869, 32.631428, 30.460104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750015, 32.991856, 30.591841>,  <34.682304, 33.208115, 30.670883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750015, 32.991856, 30.591841>,  <34.862869, 32.631428, 30.460104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750015, 32.991856, 30.591841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076861, -0.363417, 0.928451,
		0.956291, 0.236636, 0.171791,
		-0.282136, 0.901073, 0.329344,
		34.665375, 33.262177, 30.690643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336662, 32.828560, 31.026611>,  <34.862869, 32.631428, 30.460104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336662, 32.828560, 31.026611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997730, 33.029282, 31.096163>,  <34.794373, 33.149715, 31.137894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997730, 33.029282, 31.096163>,  <35.336662, 32.828560, 31.026611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997730, 33.029282, 31.096163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020154, -0.296790, 0.954730,
		0.530690, 0.812472, 0.241364,
		-0.847326, 0.501801, 0.173878,
		34.743534, 33.179821, 31.148327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556438, 33.295155, 31.505949>,  <35.336662, 32.828560, 31.026611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556438, 33.295155, 31.505949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161633, 33.257107, 31.557730>,  <34.924751, 33.234276, 31.588799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161633, 33.257107, 31.557730>,  <35.556438, 33.295155, 31.505949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161633, 33.257107, 31.557730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148945, -0.239998, 0.959279,
		-0.060180, 0.966102, 0.251049,
		-0.987013, -0.095122, 0.129453,
		34.865528, 33.228569, 31.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482220, 33.554508, 32.269966>,  <35.556438, 33.295155, 31.505949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482220, 33.554508, 32.269966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129353, 33.395386, 32.169140>,  <34.917633, 33.299911, 32.108643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129353, 33.395386, 32.169140>,  <35.482220, 33.554508, 32.269966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129353, 33.395386, 32.169140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134283, -0.300553, 0.944265,
		-0.451393, 0.866845, 0.211718,
		-0.882164, -0.397805, -0.252070,
		34.864704, 33.276043, 32.093517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028519, 33.810944, 32.749641>,  <35.482220, 33.554508, 32.269966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028519, 33.810944, 32.749641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849541, 33.482502, 32.607891>,  <34.742153, 33.285439, 32.522839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849541, 33.482502, 32.607891>,  <35.028519, 33.810944, 32.749641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849541, 33.482502, 32.607891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157113, -0.317924, 0.935008,
		-0.880403, 0.474041, 0.013248,
		-0.447444, -0.821103, -0.354379,
		34.715309, 33.236172, 32.501575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430363, 33.857750, 32.961014>,  <35.028519, 33.810944, 32.749641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430363, 33.857750, 32.961014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483280, 33.467945, 32.888554>,  <34.515030, 33.234062, 32.845078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483280, 33.467945, 32.888554>,  <34.430363, 33.857750, 32.961014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483280, 33.467945, 32.888554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203357, -0.205556, 0.957284,
		-0.970126, -0.089801, -0.225368,
		0.132291, -0.974516, -0.181154,
		34.522968, 33.175591, 32.834206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880657, 33.490658, 33.231796>,  <34.430363, 33.857750, 32.961014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880657, 33.490658, 33.231796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160957, 33.207264, 33.198334>,  <34.329136, 33.037228, 33.178257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160957, 33.207264, 33.198334>,  <33.880657, 33.490658, 33.231796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160957, 33.207264, 33.198334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187678, -0.296204, 0.936504,
		-0.688277, -0.640557, -0.340533,
		0.700751, -0.708485, -0.083652,
		34.371181, 32.994720, 33.173237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655151, 33.024811, 33.768909>,  <33.880657, 33.490658, 33.231796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655151, 33.024811, 33.768909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008835, 32.866478, 33.669720>,  <34.221046, 32.771477, 33.610207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008835, 32.866478, 33.669720>,  <33.655151, 33.024811, 33.768909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008835, 32.866478, 33.669720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030943, -0.480092, 0.876672,
		-0.466054, -0.782840, -0.412257,
		0.884215, -0.395820, -0.247972,
		34.274097, 32.747730, 33.595325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549152, 32.314419, 33.854805>,  <33.655151, 33.024811, 33.768909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549152, 32.314419, 33.854805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936211, 32.411354, 33.882893>,  <34.168446, 32.469517, 33.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936211, 32.411354, 33.882893>,  <33.549152, 32.314419, 33.854805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936211, 32.411354, 33.882893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029842, -0.386290, 0.921895,
		0.250539, -0.889973, -0.381024,
		0.967646, 0.242341, 0.070222,
		34.226505, 32.484055, 33.903957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901031, 31.731758, 34.101879>,  <33.549152, 32.314419, 33.854805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901031, 31.731758, 34.101879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158470, 32.028706, 34.176365>,  <34.312935, 32.206875, 34.221054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158470, 32.028706, 34.176365>,  <33.901031, 31.731758, 34.101879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158470, 32.028706, 34.176365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070027, -0.299391, 0.951557,
		0.762155, -0.599378, -0.244673,
		0.643596, 0.742368, 0.186210,
		34.351547, 32.251415, 34.232227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613144, 31.413477, 34.231670>,  <33.901031, 31.731758, 34.101879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613144, 31.413477, 34.231670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598717, 31.778109, 34.395489>,  <34.590061, 31.996887, 34.493778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598717, 31.778109, 34.395489>,  <34.613144, 31.413477, 34.231670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598717, 31.778109, 34.395489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328230, -0.376268, 0.866423,
		0.943909, 0.165677, -0.285634,
		-0.036072, 0.911578, 0.409543,
		34.587894, 32.051582, 34.518353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238529, 31.507097, 34.425953>,  <34.613144, 31.413477, 34.231670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238529, 31.507097, 34.425953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003448, 31.748142, 34.641903>,  <34.862400, 31.892769, 34.771473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003448, 31.748142, 34.641903>,  <35.238529, 31.507097, 34.425953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003448, 31.748142, 34.641903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355450, -0.407117, 0.841375,
		0.726815, 0.686376, 0.025065,
		-0.587704, 0.602614, 0.539871,
		34.827137, 31.928926, 34.803864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691521, 31.837574, 34.882622>,  <35.238529, 31.507097, 34.425953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691521, 31.837574, 34.882622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325146, 31.870840, 35.039661>,  <35.105320, 31.890800, 35.133884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325146, 31.870840, 35.039661>,  <35.691521, 31.837574, 34.882622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325146, 31.870840, 35.039661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293369, -0.528773, 0.796451,
		0.273834, 0.844679, 0.459926,
		-0.915942, 0.083167, 0.392599,
		35.050362, 31.895790, 35.157440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061176, 32.506142, 34.982559>,  <35.691521, 31.837574, 34.882622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061176, 32.506142, 34.982559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442703, 32.520813, 35.101810>,  <36.671619, 32.529617, 35.173363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442703, 32.520813, 35.101810>,  <36.061176, 32.506142, 34.982559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442703, 32.520813, 35.101810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298480, -0.004241, -0.954407,
		-0.033746, 0.999318, -0.014994,
		0.953819, 0.036683, 0.298133,
		36.728848, 32.531818, 35.191250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412174, 33.108990, 34.726616>,  <36.061176, 32.506142, 34.982559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412174, 33.108990, 34.726616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687737, 32.821407, 34.763500>,  <36.853073, 32.648857, 34.785633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687737, 32.821407, 34.763500>,  <36.412174, 33.108990, 34.726616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687737, 32.821407, 34.763500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227561, 0.093733, -0.969242,
		0.688201, 0.688703, 0.228181,
		0.688908, -0.718959, 0.092215,
		36.894409, 32.605721, 34.791164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012798, 33.387573, 34.535366>,  <36.412174, 33.108990, 34.726616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012798, 33.387573, 34.535366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092220, 32.999809, 34.477654>,  <37.139874, 32.767151, 34.443024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092220, 32.999809, 34.477654>,  <37.012798, 33.387573, 34.535366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092220, 32.999809, 34.477654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303931, 0.200862, -0.931279,
		0.931773, 0.141061, 0.334516,
		0.198559, -0.969410, -0.144285,
		37.151787, 32.708984, 34.434368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710003, 33.339195, 34.186249>,  <37.012798, 33.387573, 34.535366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710003, 33.339195, 34.186249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546528, 32.976341, 34.146095>,  <37.448444, 32.758629, 34.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546528, 32.976341, 34.146095>,  <37.710003, 33.339195, 34.186249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546528, 32.976341, 34.146095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318014, -0.038443, -0.947307,
		0.855478, -0.419075, 0.304194,
		-0.408687, -0.907137, -0.100384,
		37.423923, 32.704201, 34.115978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113388, 32.949406, 33.720882>,  <37.710003, 33.339195, 34.186249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113388, 32.949406, 33.720882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779976, 32.729973, 33.694683>,  <37.579929, 32.598312, 33.678963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779976, 32.729973, 33.694683>,  <38.113388, 32.949406, 33.720882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779976, 32.729973, 33.694683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253051, -0.273704, -0.927929,
		0.491115, -0.790030, 0.366959,
		-0.833530, -0.548579, -0.065498,
		37.529919, 32.565399, 33.675034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353504, 32.344925, 33.241199>,  <38.113388, 32.949406, 33.720882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353504, 32.344925, 33.241199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955135, 32.309387, 33.247360>,  <37.716114, 32.288063, 33.251057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955135, 32.309387, 33.247360>,  <38.353504, 32.344925, 33.241199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955135, 32.309387, 33.247360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014818, -0.007229, -0.999864,
		0.088944, -0.996019, 0.005883,
		-0.995926, -0.088844, 0.015402,
		37.656357, 32.282734, 33.251980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217503, 31.738102, 32.813133>,  <38.353504, 32.344925, 33.241199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217503, 31.738102, 32.813133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910275, 31.994186, 32.818790>,  <37.725937, 32.147839, 32.822186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910275, 31.994186, 32.818790>,  <38.217503, 31.738102, 32.813133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910275, 31.994186, 32.818790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013486, 0.038255, -0.999177,
		-0.640225, -0.767247, -0.038016,
		-0.768070, 0.640210, 0.014145,
		37.679855, 32.186249, 32.823032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700466, 31.447861, 32.362499>,  <38.217503, 31.738102, 32.813133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700466, 31.447861, 32.362499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616432, 31.838156, 32.387169>,  <37.566013, 32.072334, 32.401970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616432, 31.838156, 32.387169>,  <37.700466, 31.447861, 32.362499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616432, 31.838156, 32.387169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075215, 0.079021, -0.994031,
		-0.974786, -0.204193, -0.089991,
		-0.210085, 0.975736, 0.061670,
		37.553406, 32.130878, 32.405670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170425, 31.519604, 31.896101>,  <37.700466, 31.447861, 32.362499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170425, 31.519604, 31.896101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375401, 31.858917, 31.949492>,  <37.498386, 32.062504, 31.981525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375401, 31.858917, 31.949492>,  <37.170425, 31.519604, 31.896101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375401, 31.858917, 31.949492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110546, 0.088978, -0.989880,
		-0.851576, 0.522012, -0.048178,
		0.512443, 0.848284, 0.133478,
		37.529133, 32.113403, 31.989534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800663, 31.918285, 31.445877>,  <37.170425, 31.519604, 31.896101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800663, 31.918285, 31.445877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141239, 32.117516, 31.511559>,  <37.345585, 32.237053, 31.550968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141239, 32.117516, 31.511559>,  <36.800663, 31.918285, 31.445877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141239, 32.117516, 31.511559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083503, 0.437860, -0.895157,
		-0.517757, 0.748464, 0.414403,
		0.851443, 0.498078, 0.164206,
		37.396671, 32.266937, 31.560820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648262, 32.497089, 31.208860>,  <36.800663, 31.918285, 31.445877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648262, 32.497089, 31.208860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047821, 32.507755, 31.224358>,  <37.287556, 32.514156, 31.233656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047821, 32.507755, 31.224358>,  <36.648262, 32.497089, 31.208860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047821, 32.507755, 31.224358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018003, 0.544278, -0.838711,
		-0.043452, 0.838481, 0.543196,
		0.998893, 0.026665, 0.038745,
		37.347488, 32.515755, 31.235981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882168, 33.117683, 30.956928>,  <36.648262, 32.497089, 31.208860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882168, 33.117683, 30.956928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196903, 32.875099, 30.911158>,  <37.385746, 32.729549, 30.883696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196903, 32.875099, 30.911158>,  <36.882168, 33.117683, 30.956928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196903, 32.875099, 30.911158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186109, 0.409940, -0.892923,
		0.588426, 0.681293, 0.435425,
		0.786841, -0.606456, -0.114425,
		37.432957, 32.693161, 30.876831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263824, 33.575890, 30.839069>,  <36.882168, 33.117683, 30.956928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263824, 33.575890, 30.839069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445446, 33.250240, 30.694269>,  <37.554417, 33.054852, 30.607389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445446, 33.250240, 30.694269>,  <37.263824, 33.575890, 30.839069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445446, 33.250240, 30.694269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095579, 0.448458, -0.888678,
		0.885834, 0.368906, 0.281436,
		0.454051, -0.814121, -0.362000,
		37.581661, 33.006004, 30.585669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878803, 33.891747, 30.518021>,  <37.263824, 33.575890, 30.839069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878803, 33.891747, 30.518021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857399, 33.522987, 30.364529>,  <37.844559, 33.301731, 30.272434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857399, 33.522987, 30.364529>,  <37.878803, 33.891747, 30.518021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857399, 33.522987, 30.364529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190756, 0.367766, -0.910143,
		0.980178, -0.121896, 0.156179,
		-0.053506, -0.921894, -0.383729,
		37.841347, 33.246418, 30.249411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474579, 33.778912, 30.190044>,  <37.878803, 33.891747, 30.518021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474579, 33.778912, 30.190044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187607, 33.556046, 30.022783>,  <38.015423, 33.422325, 29.922426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187607, 33.556046, 30.022783>,  <38.474579, 33.778912, 30.190044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187607, 33.556046, 30.022783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189583, 0.421437, -0.886820,
		0.670333, -0.715509, -0.196724,
		-0.717435, -0.557169, -0.418152,
		37.972378, 33.388893, 29.897337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712769, 33.630386, 29.613071>,  <38.474579, 33.778912, 30.190044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712769, 33.630386, 29.613071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323597, 33.554237, 29.560669>,  <38.090092, 33.508549, 29.529228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323597, 33.554237, 29.560669>,  <38.712769, 33.630386, 29.613071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323597, 33.554237, 29.560669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044456, 0.402114, -0.914510,
		0.226778, -0.895579, -0.382766,
		-0.972931, -0.190375, -0.131004,
		38.031719, 33.497124, 29.521368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659622, 33.235340, 29.022129>,  <38.712769, 33.630386, 29.613071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659622, 33.235340, 29.022129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295155, 33.397717, 29.050352>,  <38.076473, 33.495144, 29.067286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295155, 33.397717, 29.050352>,  <38.659622, 33.235340, 29.022129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295155, 33.397717, 29.050352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037915, 0.253127, -0.966690,
		-0.410280, -0.878145, -0.246033,
		-0.911171, 0.405942, 0.070558,
		38.021805, 33.519501, 29.071520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261486, 33.001659, 28.414743>,  <38.659622, 33.235340, 29.022129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261486, 33.001659, 28.414743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098484, 33.338673, 28.555643>,  <38.000683, 33.540882, 28.640182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098484, 33.338673, 28.555643>,  <38.261486, 33.001659, 28.414743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098484, 33.338673, 28.555643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069050, 0.413050, -0.908087,
		-0.910589, -0.345726, -0.226496,
		-0.407503, 0.842534, 0.352247,
		37.976234, 33.591434, 28.661318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791370, 33.157383, 27.891087>,  <38.261486, 33.001659, 28.414743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791370, 33.157383, 27.891087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802124, 33.484509, 28.121027>,  <37.808578, 33.680786, 28.258991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802124, 33.484509, 28.121027>,  <37.791370, 33.157383, 27.891087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802124, 33.484509, 28.121027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132216, 0.572917, -0.808879,
		-0.990856, -0.054257, 0.123532,
		0.026886, 0.817816, 0.574852,
		37.810188, 33.729855, 28.293482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150085, 33.579094, 27.853785>,  <37.791370, 33.157383, 27.891087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150085, 33.579094, 27.853785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437408, 33.827713, 27.978819>,  <37.609802, 33.976883, 28.053841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437408, 33.827713, 27.978819>,  <37.150085, 33.579094, 27.853785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437408, 33.827713, 27.978819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220402, 0.629451, -0.745127,
		-0.659891, 0.466336, 0.589130,
		0.718308, 0.621549, 0.312587,
		37.652901, 34.014179, 28.072596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814056, 34.289467, 27.857962>,  <37.150085, 33.579094, 27.853785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814056, 34.289467, 27.857962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211937, 34.307091, 27.820801>,  <37.450665, 34.317665, 27.798504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211937, 34.307091, 27.820801>,  <36.814056, 34.289467, 27.857962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211937, 34.307091, 27.820801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102541, 0.492051, -0.864506,
		0.007622, 0.869450, 0.493962,
		0.994700, 0.044062, -0.092904,
		37.510345, 34.320309, 27.792929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985516, 34.825817, 27.576641>,  <36.814056, 34.289467, 27.857962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985516, 34.825817, 27.576641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344982, 34.665051, 27.506365>,  <37.560661, 34.568592, 27.464199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344982, 34.665051, 27.506365>,  <36.985516, 34.825817, 27.576641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344982, 34.665051, 27.506365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077525, 0.539768, -0.838237,
		0.431731, 0.739673, 0.516229,
		0.898665, -0.401914, -0.175691,
		37.614582, 34.544476, 27.453657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217533, 35.416252, 27.310163>,  <36.985516, 34.825817, 27.576641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217533, 35.416252, 27.310163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476044, 35.129990, 27.204205>,  <37.631149, 34.958233, 27.140629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476044, 35.129990, 27.204205>,  <37.217533, 35.416252, 27.310163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476044, 35.129990, 27.204205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195201, 0.490616, -0.849230,
		0.737716, 0.497129, 0.456770,
		0.646276, -0.715653, -0.264895,
		37.669926, 34.915295, 27.124737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733288, 35.742088, 26.876471>,  <37.217533, 35.416252, 27.310163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733288, 35.742088, 26.876471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741211, 35.353546, 26.781750>,  <37.745964, 35.120422, 26.724916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741211, 35.353546, 26.781750>,  <37.733288, 35.742088, 26.876471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741211, 35.353546, 26.781750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056582, 0.235382, -0.970254,
		0.998201, 0.032620, -0.050298,
		0.019811, -0.971355, -0.236804,
		37.747154, 35.062141, 26.710709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254471, 35.627880, 26.335575>,  <37.733288, 35.742088, 26.876471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254471, 35.627880, 26.335575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046356, 35.288914, 26.293266>,  <37.921490, 35.085533, 26.267881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046356, 35.288914, 26.293266>,  <38.254471, 35.627880, 26.335575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046356, 35.288914, 26.293266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022252, 0.137267, -0.990284,
		0.853703, -0.512876, -0.090275,
		-0.520285, -0.847417, -0.105773,
		37.890270, 35.034687, 26.261534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604889, 35.270161, 25.803444>,  <38.254471, 35.627880, 26.335575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604889, 35.270161, 25.803444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237354, 35.113243, 25.820644>,  <38.016834, 35.019093, 25.830965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237354, 35.113243, 25.820644>,  <38.604889, 35.270161, 25.803444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237354, 35.113243, 25.820644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015386, -0.073269, -0.997193,
		0.394341, -0.916918, 0.061287,
		-0.918836, -0.392291, 0.043001,
		37.961704, 34.995556, 25.833544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682835, 34.643291, 25.433914>,  <38.604889, 35.270161, 25.803444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682835, 34.643291, 25.433914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303856, 34.771248, 25.435461>,  <38.076469, 34.848022, 25.436388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303856, 34.771248, 25.435461>,  <38.682835, 34.643291, 25.433914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303856, 34.771248, 25.435461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026465, -0.066327, -0.997447,
		-0.318819, -0.945130, 0.071307,
		-0.947446, 0.319892, 0.003866,
		38.019623, 34.867214, 25.436621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451637, 34.309170, 24.886118>,  <38.682835, 34.643291, 25.433914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451637, 34.309170, 24.886118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214378, 34.622555, 24.960268>,  <38.072025, 34.810585, 25.004759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214378, 34.622555, 24.960268>,  <38.451637, 34.309170, 24.886118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214378, 34.622555, 24.960268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055535, 0.189891, -0.980233,
		-0.803178, -0.591715, -0.069123,
		-0.593145, 0.783463, 0.185378,
		38.036434, 34.857594, 25.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919807, 34.193188, 24.364023>,  <38.451637, 34.309170, 24.886118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919807, 34.193188, 24.364023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885239, 34.572948, 24.484804>,  <37.864498, 34.800804, 24.557272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885239, 34.572948, 24.484804>,  <37.919807, 34.193188, 24.364023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885239, 34.572948, 24.484804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303738, 0.263547, -0.915580,
		-0.948828, -0.170842, 0.265591,
		-0.086424, 0.949398, 0.301951,
		37.859310, 34.857769, 24.575390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228401, 34.467472, 24.023695>,  <37.919807, 34.193188, 24.364023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228401, 34.467472, 24.023695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418304, 34.798889, 24.142435>,  <37.532246, 34.997738, 24.213680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418304, 34.798889, 24.142435>,  <37.228401, 34.467472, 24.023695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418304, 34.798889, 24.142435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340547, 0.483952, -0.806113,
		-0.811560, 0.281618, 0.511919,
		0.474760, 0.828542, 0.296852,
		37.560734, 35.047451, 24.231491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705570, 35.018894, 24.010553>,  <37.228401, 34.467472, 24.023695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705570, 35.018894, 24.010553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068817, 35.180523, 23.966640>,  <37.286766, 35.277500, 23.940292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068817, 35.180523, 23.966640>,  <36.705570, 35.018894, 24.010553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068817, 35.180523, 23.966640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277917, 0.385560, -0.879833,
		-0.313186, 0.829501, 0.462431,
		0.908117, 0.404069, -0.109780,
		37.341251, 35.301743, 23.933706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629696, 35.669456, 23.686199>,  <36.705570, 35.018894, 24.010553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629696, 35.669456, 23.686199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008209, 35.555218, 23.625566>,  <37.235317, 35.486675, 23.589186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008209, 35.555218, 23.625566>,  <36.629696, 35.669456, 23.686199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008209, 35.555218, 23.625566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177718, -0.067776, -0.981745,
		0.270109, 0.955950, -0.114891,
		0.946286, -0.285597, -0.151583,
		37.292095, 35.469540, 23.580091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792229, 36.033783, 23.148132>,  <36.629696, 35.669456, 23.686199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792229, 36.033783, 23.148132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100349, 35.778790, 23.141937>,  <37.285221, 35.625793, 23.138220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100349, 35.778790, 23.141937>,  <36.792229, 36.033783, 23.148132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100349, 35.778790, 23.141937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060343, 0.097048, -0.993449,
		0.634814, 0.764325, 0.113224,
		0.770305, -0.637487, -0.015486,
		37.331440, 35.587543, 23.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365814, 36.447506, 22.900682>,  <36.792229, 36.033783, 23.148132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365814, 36.447506, 22.900682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445023, 36.058853, 22.848978>,  <37.492550, 35.825661, 22.817955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445023, 36.058853, 22.848978>,  <37.365814, 36.447506, 22.900682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445023, 36.058853, 22.848978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166510, 0.163302, -0.972423,
		0.965950, 0.171041, 0.194125,
		0.198025, -0.971636, -0.129262,
		37.504429, 35.767361, 22.810200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102394, 36.392002, 22.612522>,  <37.365814, 36.447506, 22.900682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102394, 36.392002, 22.612522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956169, 36.032757, 22.514738>,  <37.868435, 35.817211, 22.456068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956169, 36.032757, 22.514738>,  <38.102394, 36.392002, 22.612522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956169, 36.032757, 22.514738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258557, 0.154319, -0.953590,
		0.894156, -0.411801, 0.175801,
		-0.365560, -0.898112, -0.244459,
		37.846500, 35.763325, 22.441401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566944, 36.190594, 22.123310>,  <38.102394, 36.392002, 22.612522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566944, 36.190594, 22.123310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244995, 35.956917, 22.081547>,  <38.051826, 35.816711, 22.056488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244995, 35.956917, 22.081547>,  <38.566944, 36.190594, 22.123310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244995, 35.956917, 22.081547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067335, 0.084903, -0.994111,
		0.589620, -0.807160, -0.028999,
		-0.804869, -0.584195, -0.104411,
		38.003532, 35.781658, 22.050224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721298, 35.658203, 21.525280>,  <38.566944, 36.190594, 22.123310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721298, 35.658203, 21.525280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330826, 35.725758, 21.579744>,  <38.096542, 35.766289, 21.612423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330826, 35.725758, 21.579744>,  <38.721298, 35.658203, 21.525280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330826, 35.725758, 21.579744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074944, 0.326463, -0.942234,
		-0.203582, -0.930000, -0.306031,
		-0.976185, 0.168887, 0.136160,
		38.037971, 35.776424, 21.620592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376057, 35.323288, 21.047636>,  <38.721298, 35.658203, 21.525280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376057, 35.323288, 21.047636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074139, 35.563213, 21.153851>,  <37.892986, 35.707169, 21.217579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074139, 35.563213, 21.153851>,  <38.376057, 35.323288, 21.047636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074139, 35.563213, 21.153851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067959, 0.331122, -0.941138,
		-0.652428, -0.728414, -0.209167,
		-0.754797, 0.599810, 0.265536,
		37.847698, 35.743156, 21.233511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907093, 34.758160, 20.949392>,  <38.376057, 35.323288, 21.047636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907093, 34.758160, 20.949392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958794, 34.772961, 21.345760>,  <38.989815, 34.781841, 21.583582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958794, 34.772961, 21.345760>,  <38.907093, 34.758160, 20.949392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958794, 34.772961, 21.345760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189486, -0.981811, 0.011948,
		0.973339, 0.186221, -0.133913,
		0.129252, 0.037004, 0.990921,
		38.997570, 34.784061, 21.643036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887356, 33.964943, 21.152157>,  <38.907093, 34.758160, 20.949392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887356, 33.964943, 21.152157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226376, 33.792366, 21.028530>,  <39.429787, 33.688820, 20.954353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226376, 33.792366, 21.028530>,  <38.887356, 33.964943, 21.152157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226376, 33.792366, 21.028530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026464, -0.547276, 0.836534,
		-0.530048, -0.717187, -0.452429,
		0.847555, -0.431430, -0.309062,
		39.480640, 33.662933, 20.935810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745514, 33.368500, 21.216923>,  <38.887356, 33.964943, 21.152157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745514, 33.368500, 21.216923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144279, 33.386986, 21.191544>,  <39.383537, 33.398079, 21.176315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144279, 33.386986, 21.191544>,  <38.745514, 33.368500, 21.216923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144279, 33.386986, 21.191544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077271, -0.435488, 0.896872,
		0.013822, -0.899007, -0.437716,
		0.996915, 0.046219, -0.063448,
		39.443356, 33.400852, 21.172508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990757, 32.664066, 21.360256>,  <38.745514, 33.368500, 21.216923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990757, 32.664066, 21.360256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294178, 32.911484, 21.442225>,  <39.476231, 33.059937, 21.491405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294178, 32.911484, 21.442225>,  <38.990757, 32.664066, 21.360256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294178, 32.911484, 21.442225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075348, -0.395639, 0.915310,
		0.647237, -0.678874, -0.346720,
		0.758556, 0.618547, 0.204921,
		39.521744, 33.097046, 21.503700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379822, 32.231339, 21.678312>,  <38.990757, 32.664066, 21.360256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379822, 32.231339, 21.678312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540928, 32.590302, 21.750366>,  <39.637592, 32.805679, 21.793598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540928, 32.590302, 21.750366>,  <39.379822, 32.231339, 21.678312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540928, 32.590302, 21.750366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064184, -0.224011, 0.972471,
		0.913052, -0.380112, -0.147822,
		0.402762, 0.897404, 0.180137,
		39.661755, 32.859524, 21.804407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903549, 32.105968, 22.138346>,  <39.379822, 32.231339, 21.678312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903549, 32.105968, 22.138346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810295, 32.486298, 22.219921>,  <39.754345, 32.714493, 22.268866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810295, 32.486298, 22.219921>,  <39.903549, 32.105968, 22.138346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810295, 32.486298, 22.219921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027169, -0.216003, 0.976015,
		0.972066, 0.221999, 0.076190,
		-0.233132, 0.950820, 0.203937,
		39.740356, 32.771545, 22.281103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338161, 32.396008, 22.635763>,  <39.903549, 32.105968, 22.138346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338161, 32.396008, 22.635763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994297, 32.598412, 22.663895>,  <39.787979, 32.719852, 22.680775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994297, 32.598412, 22.663895>,  <40.338161, 32.396008, 22.635763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994297, 32.598412, 22.663895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126813, -0.344718, 0.930101,
		0.494883, 0.790649, 0.360507,
		-0.859657, 0.506008, 0.070330,
		39.736401, 32.750214, 22.684994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377319, 32.658367, 23.339705>,  <40.338161, 32.396008, 22.635763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377319, 32.658367, 23.339705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991329, 32.708511, 23.247520>,  <39.759735, 32.738598, 23.192209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991329, 32.708511, 23.247520>,  <40.377319, 32.658367, 23.339705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991329, 32.708511, 23.247520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229235, 0.024315, 0.973067,
		0.127585, 0.991814, 0.005273,
		-0.964973, 0.125357, -0.230460,
		39.701836, 32.746117, 23.178383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163548, 33.166847, 23.731508>,  <40.377319, 32.658367, 23.339705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163548, 33.166847, 23.731508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831558, 32.957310, 23.654839>,  <39.632366, 32.831589, 23.608837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831558, 32.957310, 23.654839>,  <40.163548, 33.166847, 23.731508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831558, 32.957310, 23.654839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217735, -0.012120, 0.975933,
		-0.513559, 0.851728, -0.104000,
		-0.829969, -0.523844, -0.191676,
		39.582569, 32.800156, 23.597336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851898, 33.115704, 24.396290>,  <40.163548, 33.166847, 23.731508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851898, 33.115704, 24.396290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587803, 32.884346, 24.204645>,  <39.429348, 32.745533, 24.089659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587803, 32.884346, 24.204645>,  <39.851898, 33.115704, 24.396290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587803, 32.884346, 24.204645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481352, -0.163813, 0.861084,
		-0.576531, 0.799140, -0.170256,
		-0.660236, -0.578395, -0.479111,
		39.389732, 32.710827, 24.060911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105934, 33.354568, 24.508978>,  <39.851898, 33.115704, 24.396290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105934, 33.354568, 24.508978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122841, 32.963406, 24.427092>,  <39.132984, 32.728706, 24.377960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122841, 32.963406, 24.427092>,  <39.105934, 33.354568, 24.508978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122841, 32.963406, 24.427092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574675, -0.191407, 0.795683,
		-0.817290, 0.084012, -0.570070,
		0.042269, -0.977909, -0.204715,
		39.135521, 32.670033, 24.365677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459648, 33.155525, 24.665806>,  <39.105934, 33.354568, 24.508978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459648, 33.155525, 24.665806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652561, 32.805191, 24.658676>,  <38.768311, 32.594990, 24.654398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652561, 32.805191, 24.658676>,  <38.459648, 33.155525, 24.665806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652561, 32.805191, 24.658676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421813, -0.250010, 0.871532,
		-0.767774, -0.412806, -0.490014,
		0.482283, -0.875835, -0.017825,
		38.797245, 32.542442, 24.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967762, 32.649487, 24.845896>,  <38.459648, 33.155525, 24.665806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967762, 32.649487, 24.845896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327698, 32.494568, 24.926188>,  <38.543659, 32.401615, 24.974363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327698, 32.494568, 24.926188>,  <37.967762, 32.649487, 24.845896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327698, 32.494568, 24.926188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302843, -0.223442, 0.926477,
		-0.313975, -0.894467, -0.318352,
		0.899837, -0.387301, 0.200728,
		38.597649, 32.378380, 24.986406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797367, 32.073891, 25.233431>,  <37.967762, 32.649487, 24.845896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797367, 32.073891, 25.233431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189129, 32.095139, 25.311344>,  <38.424187, 32.107887, 25.358091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189129, 32.095139, 25.311344>,  <37.797367, 32.073891, 25.233431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189129, 32.095139, 25.311344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167246, -0.326973, 0.930117,
		0.113093, -0.943540, -0.311356,
		0.979407, 0.053116, 0.194782,
		38.482952, 32.111073, 25.369780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008976, 31.475586, 25.596756>,  <37.797367, 32.073891, 25.233431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008976, 31.475586, 25.596756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273441, 31.760567, 25.690804>,  <38.432121, 31.931555, 25.747232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273441, 31.760567, 25.690804>,  <38.008976, 31.475586, 25.596756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273441, 31.760567, 25.690804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031348, -0.339351, 0.940137,
		0.749590, -0.614210, -0.246699,
		0.661159, 0.712452, 0.235120,
		38.471790, 31.974302, 25.761339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477642, 31.111931, 25.920340>,  <38.008976, 31.475586, 25.596756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477642, 31.111931, 25.920340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520359, 31.495800, 26.024359>,  <38.545990, 31.726122, 26.086769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520359, 31.495800, 26.024359>,  <38.477642, 31.111931, 25.920340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520359, 31.495800, 26.024359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098695, -0.270481, 0.957653,
		0.989371, -0.076607, -0.123600,
		0.106794, 0.959672, 0.260046,
		38.552399, 31.783701, 26.102373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090706, 31.072611, 26.322275>,  <38.477642, 31.111931, 25.920340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090706, 31.072611, 26.322275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912720, 31.417192, 26.420177>,  <38.805927, 31.623941, 26.478918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912720, 31.417192, 26.420177>,  <39.090706, 31.072611, 26.322275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912720, 31.417192, 26.420177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297816, -0.115405, 0.947622,
		0.844578, 0.494549, -0.205204,
		-0.444964, 0.861454, 0.244753,
		38.779232, 31.675629, 26.493603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568634, 31.370054, 26.764349>,  <39.090706, 31.072611, 26.322275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568634, 31.370054, 26.764349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221710, 31.552593, 26.843861>,  <39.013554, 31.662117, 26.891567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221710, 31.552593, 26.843861>,  <39.568634, 31.370054, 26.764349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221710, 31.552593, 26.843861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120721, -0.194577, 0.973430,
		0.482902, 0.868266, 0.113668,
		-0.867313, 0.456349, 0.198780,
		38.961517, 31.689497, 26.903494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574440, 31.778549, 27.474512>,  <39.568634, 31.370054, 26.764349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574440, 31.778549, 27.474512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184731, 31.720989, 27.405140>,  <38.950905, 31.686453, 27.363516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184731, 31.720989, 27.405140>,  <39.574440, 31.778549, 27.474512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184731, 31.720989, 27.405140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154306, -0.134898, 0.978771,
		-0.164241, 0.980354, 0.109223,
		-0.974276, -0.143901, -0.173430,
		38.892448, 31.677818, 27.353111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279758, 32.090748, 28.028028>,  <39.574440, 31.778549, 27.474512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279758, 32.090748, 28.028028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981388, 31.863537, 27.888918>,  <38.802368, 31.727211, 27.805450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981388, 31.863537, 27.888918>,  <39.279758, 32.090748, 28.028028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981388, 31.863537, 27.888918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295051, -0.186316, 0.937140,
		-0.597114, 0.801646, -0.028619,
		-0.745922, -0.568023, -0.347778,
		38.757610, 31.693130, 27.784584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702469, 32.169395, 28.467579>,  <39.279758, 32.090748, 28.028028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702469, 32.169395, 28.467579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637955, 31.815928, 28.291801>,  <38.599247, 31.603846, 28.186335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637955, 31.815928, 28.291801>,  <38.702469, 32.169395, 28.467579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637955, 31.815928, 28.291801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236069, -0.397801, 0.886581,
		-0.958258, 0.246733, -0.144447,
		-0.161288, -0.883672, -0.439442,
		38.589569, 31.550825, 28.159969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954578, 31.919815, 28.587671>,  <38.702469, 32.169395, 28.467579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954578, 31.919815, 28.587671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197884, 31.610809, 28.514748>,  <38.343864, 31.425406, 28.470993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197884, 31.610809, 28.514748>,  <37.954578, 31.919815, 28.587671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197884, 31.610809, 28.514748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144808, -0.333835, 0.931442,
		-0.780416, -0.540160, -0.314925,
		0.608261, -0.772517, -0.182311,
		38.380363, 31.379055, 28.460054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592369, 31.361994, 28.919575>,  <37.954578, 31.919815, 28.587671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592369, 31.361994, 28.919575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946178, 31.197269, 28.831911>,  <38.158463, 31.098434, 28.779312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946178, 31.197269, 28.831911>,  <37.592369, 31.361994, 28.919575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946178, 31.197269, 28.831911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006897, -0.458204, 0.888820,
		-0.466457, -0.787688, -0.402449,
		0.884517, -0.411821, -0.219165,
		38.211536, 31.073725, 28.766163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570538, 30.721062, 29.340590>,  <37.592369, 31.361994, 28.919575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570538, 30.721062, 29.340590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952866, 30.773912, 29.235556>,  <38.182262, 30.805622, 29.172535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952866, 30.773912, 29.235556>,  <37.570538, 30.721062, 29.340590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952866, 30.773912, 29.235556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293892, -0.411125, 0.862904,
		0.006056, -0.901953, -0.431793,
		0.955819, 0.132126, -0.262587,
		38.239613, 30.813551, 29.156780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862743, 30.068258, 29.530344>,  <37.570538, 30.721062, 29.340590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862743, 30.068258, 29.530344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153156, 30.342884, 29.514851>,  <38.327404, 30.507660, 29.505554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153156, 30.342884, 29.514851>,  <37.862743, 30.068258, 29.530344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153156, 30.342884, 29.514851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401153, -0.377120, 0.834780,
		0.558524, -0.621618, -0.549220,
		0.726036, 0.686566, -0.038734,
		38.370968, 30.548853, 29.503231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434456, 29.745232, 29.678209>,  <37.862743, 30.068258, 29.530344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434456, 29.745232, 29.678209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535870, 30.127285, 29.739452>,  <38.596718, 30.356518, 29.776197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535870, 30.127285, 29.739452>,  <38.434456, 29.745232, 29.678209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535870, 30.127285, 29.739452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572634, -0.275759, 0.772041,
		0.779622, -0.108066, -0.616855,
		0.253534, 0.955133, 0.153106,
		38.611931, 30.413824, 29.785383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036804, 29.612606, 29.881355>,  <38.434456, 29.745232, 29.678209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036804, 29.612606, 29.881355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944412, 29.969398, 30.036800>,  <38.888977, 30.183474, 30.130068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944412, 29.969398, 30.036800>,  <39.036804, 29.612606, 29.881355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944412, 29.969398, 30.036800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477382, -0.244131, 0.844101,
		0.847793, 0.380490, -0.369424,
		-0.230984, 0.891979, 0.388612,
		38.875118, 30.236992, 30.153383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588448, 29.844677, 30.309465>,  <39.036804, 29.612606, 29.881355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588448, 29.844677, 30.309465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294819, 30.086462, 30.433249>,  <39.118641, 30.231533, 30.507519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294819, 30.086462, 30.433249>,  <39.588448, 29.844677, 30.309465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294819, 30.086462, 30.433249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262713, -0.167434, 0.950236,
		0.626195, 0.778840, -0.035892,
		-0.734072, 0.604462, 0.309457,
		39.074596, 30.267801, 30.526085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918491, 30.323599, 30.761906>,  <39.588448, 29.844677, 30.309465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918491, 30.323599, 30.761906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535095, 30.365257, 30.868080>,  <39.305058, 30.390251, 30.931784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535095, 30.365257, 30.868080>,  <39.918491, 30.323599, 30.761906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535095, 30.365257, 30.868080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270942, 0.042623, 0.961652,
		0.088837, 0.993649, -0.069070,
		-0.958488, 0.104144, 0.265435,
		39.247547, 30.396500, 30.947710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861897, 30.948101, 31.242985>,  <39.918491, 30.323599, 30.761906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861897, 30.948101, 31.242985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548870, 30.710594, 31.317846>,  <39.361053, 30.568090, 31.362762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548870, 30.710594, 31.317846>,  <39.861897, 30.948101, 31.242985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548870, 30.710594, 31.317846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212006, 0.028483, 0.976853,
		-0.585353, 0.804133, 0.103592,
		-0.782570, -0.593766, 0.187153,
		39.314098, 30.532465, 31.373993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557877, 31.129620, 31.887220>,  <39.861897, 30.948101, 31.242985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557877, 31.129620, 31.887220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419445, 30.758268, 31.833036>,  <39.336388, 30.535458, 31.800526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419445, 30.758268, 31.833036>,  <39.557877, 31.129620, 31.887220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419445, 30.758268, 31.833036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346906, -0.260770, 0.900919,
		-0.871715, 0.264794, 0.412306,
		-0.346075, -0.928376, -0.135458,
		39.315624, 30.479755, 31.792398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373936, 30.936607, 32.554562>,  <39.557877, 31.129620, 31.887220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373936, 30.936607, 32.554562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383965, 30.598528, 32.341015>,  <39.389980, 30.395679, 32.212887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383965, 30.598528, 32.341015>,  <39.373936, 30.936607, 32.554562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383965, 30.598528, 32.341015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308392, -0.501447, 0.808360,
		-0.950929, -0.184902, 0.248082,
		0.025067, -0.845199, -0.533863,
		39.391483, 30.344969, 32.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070545, 30.433128, 32.988659>,  <39.373936, 30.936607, 32.554562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070545, 30.433128, 32.988659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289055, 30.208235, 32.740311>,  <39.420162, 30.073299, 32.591301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289055, 30.208235, 32.740311>,  <39.070545, 30.433128, 32.988659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289055, 30.208235, 32.740311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335260, -0.532506, 0.777199,
		-0.767583, -0.632717, -0.102401,
		0.546276, -0.562234, -0.620867,
		39.452938, 30.039564, 32.554050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946259, 29.777664, 33.230362>,  <39.070545, 30.433128, 32.988659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946259, 29.777664, 33.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294422, 29.787615, 33.033684>,  <39.503319, 29.793585, 32.915676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294422, 29.787615, 33.033684>,  <38.946259, 29.777664, 33.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294422, 29.787615, 33.033684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395670, -0.629655, 0.668566,
		-0.292970, -0.776477, -0.557900,
		0.870410, 0.024875, -0.491699,
		39.555546, 29.795076, 32.886173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062519, 29.081882, 33.168594>,  <38.946259, 29.777664, 33.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062519, 29.081882, 33.168594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414761, 29.268341, 33.134525>,  <39.626106, 29.380217, 33.114086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414761, 29.268341, 33.134525>,  <39.062519, 29.081882, 33.168594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414761, 29.268341, 33.134525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428045, -0.705398, 0.564970,
		0.203279, -0.533968, -0.820704,
		0.880599, 0.466145, -0.085170,
		39.678940, 29.408184, 33.108974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610275, 28.608858, 32.886967>,  <39.062519, 29.081882, 33.168594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610275, 28.608858, 32.886967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825684, 28.902035, 33.053242>,  <39.954929, 29.077940, 33.153008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825684, 28.902035, 33.053242>,  <39.610275, 28.608858, 32.886967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825684, 28.902035, 33.053242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471192, -0.670930, 0.572565,
		0.698554, -0.112469, -0.706664,
		0.538518, 0.732942, 0.415686,
		39.987240, 29.121918, 33.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327068, 28.443428, 32.839516>,  <39.610275, 28.608858, 32.886967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327068, 28.443428, 32.839516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381813, 28.720552, 33.122723>,  <40.414661, 28.886827, 33.292645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381813, 28.720552, 33.122723>,  <40.327068, 28.443428, 32.839516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381813, 28.720552, 33.122723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644750, -0.604920, 0.467300,
		0.752042, 0.392536, -0.529479,
		0.136860, 0.692811, 0.708013,
		40.422871, 28.928396, 33.335125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072487, 28.400740, 32.933514>,  <40.327068, 28.443428, 32.839516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072487, 28.400740, 32.933514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917454, 28.581720, 33.254776>,  <40.824432, 28.690310, 33.447533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917454, 28.581720, 33.254776>,  <41.072487, 28.400740, 32.933514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917454, 28.581720, 33.254776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581346, -0.556195, 0.593872,
		0.715412, 0.697089, -0.047459,
		-0.387585, 0.452453, 0.803159,
		40.801178, 28.717457, 33.495724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655251, 28.565931, 33.365997>,  <41.072487, 28.400740, 32.933514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655251, 28.565931, 33.365997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351791, 28.561735, 33.626564>,  <41.169716, 28.559217, 33.782906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351791, 28.561735, 33.626564>,  <41.655251, 28.565931, 33.365997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351791, 28.561735, 33.626564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536005, -0.578423, 0.614919,
		0.370343, 0.815670, 0.444442,
		-0.758646, -0.010492, 0.651418,
		41.124199, 28.558588, 33.821991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928379, 28.581192, 34.097050>,  <41.655251, 28.565931, 33.365997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928379, 28.581192, 34.097050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556499, 28.438648, 34.134274>,  <41.333370, 28.353123, 34.156609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556499, 28.438648, 34.134274>,  <41.928379, 28.581192, 34.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556499, 28.438648, 34.134274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329681, -0.692545, 0.641633,
		-0.164204, 0.627208, 0.761346,
		-0.929703, -0.356360, 0.093059,
		41.277588, 28.331739, 34.162189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768719, 28.538277, 34.757805>,  <41.928379, 28.581192, 34.097050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768719, 28.538277, 34.757805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550953, 28.273214, 34.552086>,  <41.420296, 28.114178, 34.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550953, 28.273214, 34.552086>,  <41.768719, 28.538277, 34.757805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550953, 28.273214, 34.552086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262872, -0.717019, 0.645586,
		-0.796563, 0.216270, 0.564548,
		-0.544412, -0.662654, -0.514300,
		41.387630, 28.074417, 34.397797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443810, 28.173214, 35.281158>,  <41.768719, 28.538277, 34.757805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443810, 28.173214, 35.281158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407997, 27.895586, 34.995430>,  <41.386509, 27.729010, 34.823994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407997, 27.895586, 34.995430>,  <41.443810, 28.173214, 35.281158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407997, 27.895586, 34.995430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095089, -0.719881, 0.687553,
		-0.991435, -0.006367, 0.130449,
		-0.089530, -0.694068, -0.714321,
		41.381138, 27.687366, 34.781136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949886, 27.560976, 35.536949>,  <41.443810, 28.173214, 35.281158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949886, 27.560976, 35.536949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253342, 27.439823, 35.306217>,  <41.435413, 27.367132, 35.167778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253342, 27.439823, 35.306217>,  <40.949886, 27.560976, 35.536949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253342, 27.439823, 35.306217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260520, -0.670481, 0.694683,
		-0.597162, -0.677287, -0.429744,
		0.758635, -0.302881, -0.576833,
		41.480930, 27.348959, 35.133167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625443, 26.993219, 35.986858>,  <40.949886, 27.560976, 35.536949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625443, 26.993219, 35.986858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258671, 27.073862, 35.849110>,  <40.038609, 27.122248, 35.766460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258671, 27.073862, 35.849110>,  <40.625443, 26.993219, 35.986858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258671, 27.073862, 35.849110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349217, 0.012185, 0.936963,
		0.193092, 0.979391, 0.059231,
		-0.916931, 0.201605, -0.344373,
		39.983593, 27.134344, 35.745796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254684, 27.570053, 36.201965>,  <40.625443, 26.993219, 35.986858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254684, 27.570053, 36.201965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970955, 27.300224, 36.120174>,  <39.800716, 27.138327, 36.071098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970955, 27.300224, 36.120174>,  <40.254684, 27.570053, 36.201965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970955, 27.300224, 36.120174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348478, 0.083436, 0.933596,
		-0.612716, 0.733479, -0.294256,
		-0.709325, -0.674572, -0.204479,
		39.758156, 27.097853, 36.058830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733597, 27.736855, 36.601181>,  <40.254684, 27.570053, 36.201965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733597, 27.736855, 36.601181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623859, 27.357277, 36.538906>,  <39.558018, 27.129530, 36.501541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623859, 27.357277, 36.538906>,  <39.733597, 27.736855, 36.601181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623859, 27.357277, 36.538906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494609, 0.000407, 0.869116,
		-0.824681, 0.315438, -0.469469,
		-0.274343, -0.948946, -0.155683,
		39.541557, 27.072594, 36.492203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200554, 27.684208, 37.085457>,  <39.733597, 27.736855, 36.601181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200554, 27.684208, 37.085457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253540, 27.298962, 36.991768>,  <39.285332, 27.067814, 36.935555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253540, 27.298962, 36.991768>,  <39.200554, 27.684208, 37.085457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253540, 27.298962, 36.991768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480237, -0.269077, 0.834847,
		-0.867078, 0.001892, -0.498168,
		0.132466, -0.963117, -0.234219,
		39.293282, 27.010027, 36.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694614, 27.349884, 37.502613>,  <39.200554, 27.684208, 37.085457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694614, 27.349884, 37.502613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969246, 27.067932, 37.431328>,  <39.134026, 26.898762, 37.388557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969246, 27.067932, 37.431328>,  <38.694614, 27.349884, 37.502613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969246, 27.067932, 37.431328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290289, -0.490496, 0.821673,
		-0.666594, -0.512406, -0.541380,
		0.686575, -0.704879, -0.178216,
		39.175217, 26.856468, 37.377865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034206, 27.733870, 37.704002>,  <38.694614, 27.349884, 37.502613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034206, 27.733870, 37.704002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882740, 27.394003, 37.557209>,  <37.791859, 27.190083, 37.469131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882740, 27.394003, 37.557209>,  <38.034206, 27.733870, 37.704002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882740, 27.394003, 37.557209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734414, 0.034544, 0.677822,
		-0.563246, 0.526187, -0.637088,
		-0.378669, -0.849667, -0.366982,
		37.769138, 27.139103, 37.447113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459595, 27.686199, 38.113255>,  <38.034206, 27.733870, 37.704002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459595, 27.686199, 38.113255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444599, 27.351217, 37.895168>,  <37.435604, 27.150227, 37.764317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444599, 27.351217, 37.895168>,  <37.459595, 27.686199, 38.113255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444599, 27.351217, 37.895168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783717, -0.313864, 0.535982,
		-0.619986, 0.447387, -0.644564,
		-0.037486, -0.837457, -0.545216,
		37.433353, 27.099979, 37.731602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804382, 27.592724, 37.716946>,  <37.459595, 27.686199, 38.113255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804382, 27.592724, 37.716946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990509, 27.274069, 37.871269>,  <37.102184, 27.082876, 37.963863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990509, 27.274069, 37.871269>,  <36.804382, 27.592724, 37.716946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990509, 27.274069, 37.871269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852061, -0.285087, 0.438996,
		-0.239729, -0.533009, -0.811438,
		0.465319, -0.796635, 0.385813,
		37.130104, 27.035078, 37.987011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464191, 26.921837, 37.516201>,  <36.804382, 27.592724, 37.716946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464191, 26.921837, 37.516201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640732, 26.926563, 37.875103>,  <36.746658, 26.929399, 38.090443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640732, 26.926563, 37.875103>,  <36.464191, 26.921837, 37.516201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640732, 26.926563, 37.875103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832941, -0.366551, 0.414547,
		0.333789, -0.930323, -0.151935,
		0.441355, 0.011818, 0.897255,
		36.773140, 26.930109, 38.144279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054001, 26.410297, 37.907093>,  <36.464191, 26.921837, 37.516201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054001, 26.410297, 37.907093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237141, 26.637169, 38.180935>,  <36.347027, 26.773293, 38.345238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237141, 26.637169, 38.180935>,  <36.054001, 26.410297, 37.907093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237141, 26.637169, 38.180935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812828, -0.044856, 0.580774,
		0.360111, -0.822372, 0.440481,
		0.457854, 0.567179, 0.684601,
		36.374496, 26.807322, 38.386314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989727, 26.133865, 38.620857>,  <36.054001, 26.410297, 37.907093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989727, 26.133865, 38.620857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015301, 26.531847, 38.589939>,  <36.030643, 26.770636, 38.571388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015301, 26.531847, 38.589939>,  <35.989727, 26.133865, 38.620857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015301, 26.531847, 38.589939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810500, 0.096960, 0.577657,
		0.582238, 0.025720, 0.812611,
		0.063933, 0.994956, -0.077300,
		36.034481, 26.830334, 38.566750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503338, 26.536425, 38.987022>,  <35.989727, 26.133865, 38.620857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503338, 26.536425, 38.987022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695469, 26.885426, 38.951183>,  <35.810749, 27.094826, 38.929680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695469, 26.885426, 38.951183>,  <35.503338, 26.536425, 38.987022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695469, 26.885426, 38.951183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799592, 0.477579, 0.364103,
		0.360467, -0.103252, 0.927040,
		0.480329, 0.872501, -0.089591,
		35.839569, 27.147177, 38.924305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965767, 27.014938, 39.308788>,  <35.503338, 26.536425, 38.987022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965767, 27.014938, 39.308788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241173, 27.253674, 39.143993>,  <35.406418, 27.396914, 39.045116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241173, 27.253674, 39.143993>,  <34.965767, 27.014938, 39.308788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241173, 27.253674, 39.143993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604821, 0.786022, 0.127912,
		0.400173, 0.161109, 0.902167,
		0.688515, 0.596837, -0.411987,
		35.447727, 27.432724, 39.020397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982086, 27.675917, 38.752823>,  <34.965767, 27.014938, 39.308788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982086, 27.675917, 38.752823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215191, 27.710144, 39.076073>,  <35.355053, 27.730680, 39.270023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215191, 27.710144, 39.076073>,  <34.982086, 27.675917, 38.752823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215191, 27.710144, 39.076073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479520, 0.766653, -0.426970,
		-0.656087, 0.636335, 0.405744,
		0.582761, 0.085568, 0.808127,
		35.390018, 27.735815, 39.318512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817837, 28.280165, 39.169739>,  <34.982086, 27.675917, 38.752823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817837, 28.280165, 39.169739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204063, 28.180922, 39.201031>,  <35.435799, 28.121376, 39.219807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204063, 28.180922, 39.201031>,  <34.817837, 28.280165, 39.169739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204063, 28.180922, 39.201031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258160, 0.876711, -0.405871,
		0.032112, 0.412093, 0.910576,
		0.965568, -0.248108, 0.078233,
		35.493732, 28.106489, 39.224499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259556, 28.605942, 39.650520>,  <34.817837, 28.280165, 39.169739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259556, 28.605942, 39.650520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457619, 28.495514, 39.321011>,  <35.576458, 28.429256, 39.123306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457619, 28.495514, 39.321011>,  <35.259556, 28.605942, 39.650520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457619, 28.495514, 39.321011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120336, 0.960825, -0.249669,
		0.860427, 0.024497, 0.508984,
		0.495161, -0.276071, -0.823772,
		35.606167, 28.412693, 39.073879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965946, 28.962978, 39.667828>,  <35.259556, 28.605942, 39.650520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965946, 28.962978, 39.667828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840027, 28.881172, 39.297081>,  <35.764477, 28.832088, 39.074635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840027, 28.881172, 39.297081>,  <35.965946, 28.962978, 39.667828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840027, 28.881172, 39.297081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110458, 0.961982, -0.249779,
		0.942710, -0.181010, -0.280240,
		-0.314798, -0.204514, -0.926864,
		35.745586, 28.819818, 39.019020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533203, 29.191916, 39.210751>,  <35.965946, 28.962978, 39.667828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533203, 29.191916, 39.210751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174461, 29.184782, 39.033966>,  <35.959217, 29.180502, 38.927895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174461, 29.184782, 39.033966>,  <36.533203, 29.191916, 39.210751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174461, 29.184782, 39.033966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105079, 0.961992, -0.252053,
		0.429661, -0.272496, -0.860894,
		-0.896856, -0.017835, -0.441963,
		35.905403, 29.179432, 38.901379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613647, 29.501148, 38.516685>,  <36.533203, 29.191916, 39.210751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613647, 29.501148, 38.516685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222694, 29.512245, 38.600548>,  <35.988121, 29.518904, 38.650864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222694, 29.512245, 38.600548>,  <36.613647, 29.501148, 38.516685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222694, 29.512245, 38.600548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007612, 0.986099, -0.165981,
		-0.211343, -0.163823, -0.963585,
		-0.977382, 0.027744, 0.209653,
		35.929482, 29.520569, 38.663445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376587, 30.048553, 38.042084>,  <36.613647, 29.501148, 38.516685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376587, 30.048553, 38.042084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071003, 29.991114, 38.293716>,  <35.887653, 29.956650, 38.444695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071003, 29.991114, 38.293716>,  <36.376587, 30.048553, 38.042084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071003, 29.991114, 38.293716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231986, 0.970860, -0.060106,
		-0.602121, -0.191857, -0.775011,
		-0.763959, -0.143601, 0.629083,
		35.841816, 29.948034, 38.482441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754749, 30.230486, 37.716976>,  <36.376587, 30.048553, 38.042084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754749, 30.230486, 37.716976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738617, 30.262402, 38.115376>,  <35.728939, 30.281551, 38.354416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738617, 30.262402, 38.115376>,  <35.754749, 30.230486, 37.716976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738617, 30.262402, 38.115376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131245, 0.987747, -0.084441,
		-0.990529, -0.134126, -0.029365,
		-0.040331, 0.079788, 0.995996,
		35.726517, 30.286337, 38.414173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275890, 30.709896, 37.756069>,  <35.754749, 30.230486, 37.716976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275890, 30.709896, 37.756069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418022, 30.698841, 38.129803>,  <35.503304, 30.692207, 38.354042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418022, 30.698841, 38.129803>,  <35.275890, 30.709896, 37.756069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418022, 30.698841, 38.129803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215293, 0.970268, 0.110580,
		-0.909608, -0.240448, 0.338817,
		0.355333, -0.027640, 0.934331,
		35.524620, 30.690550, 38.410103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747028, 30.732538, 38.224464>,  <35.275890, 30.709896, 37.756069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747028, 30.732538, 38.224464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089798, 30.897631, 38.347973>,  <35.295460, 30.996687, 38.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089798, 30.897631, 38.347973>,  <34.747028, 30.732538, 38.224464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089798, 30.897631, 38.347973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454406, 0.887669, 0.074555,
		-0.243315, -0.204195, 0.948210,
		0.856921, 0.412732, 0.308771,
		35.346874, 31.021450, 38.440605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676407, 31.508715, 38.104465>,  <34.747028, 30.732538, 38.224464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676407, 31.508715, 38.104465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011093, 31.510689, 38.323513>,  <35.211906, 31.511873, 38.454941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011093, 31.510689, 38.323513>,  <34.676407, 31.508715, 38.104465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011093, 31.510689, 38.323513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041031, 0.997714, 0.053700,
		-0.546099, -0.067401, 0.835004,
		0.836715, 0.004935, 0.547616,
		35.262108, 31.512169, 38.487797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541180, 31.961321, 38.713570>,  <34.676407, 31.508715, 38.104465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541180, 31.961321, 38.713570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933281, 31.956364, 38.634628>,  <35.168541, 31.953390, 38.587265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933281, 31.956364, 38.634628>,  <34.541180, 31.961321, 38.713570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933281, 31.956364, 38.634628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055692, 0.974937, 0.215398,
		0.189736, -0.222136, 0.956377,
		0.980255, -0.012393, -0.197352,
		35.227356, 31.952646, 38.575424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898129, 32.207924, 39.283291>,  <34.541180, 31.961321, 38.713570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898129, 32.207924, 39.283291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143871, 32.275444, 38.974987>,  <35.291317, 32.315956, 38.790005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143871, 32.275444, 38.974987>,  <34.898129, 32.207924, 39.283291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143871, 32.275444, 38.974987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069771, 0.961400, 0.266163,
		0.785938, -0.217296, 0.578864,
		0.614356, 0.168799, -0.770762,
		35.328178, 32.326084, 38.743759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434238, 32.580830, 39.530315>,  <34.898129, 32.207924, 39.283291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434238, 32.580830, 39.530315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440544, 32.656273, 39.137547>,  <35.444328, 32.701538, 38.901886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440544, 32.656273, 39.137547>,  <35.434238, 32.580830, 39.530315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440544, 32.656273, 39.137547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210220, 0.959472, 0.187675,
		0.977527, -0.209380, -0.024521,
		0.015768, 0.188612, -0.981925,
		35.445274, 32.712856, 38.842968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863823, 33.180584, 39.472538>,  <35.434238, 32.580830, 39.530315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863823, 33.180584, 39.472538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711826, 33.157909, 39.103237>,  <35.620628, 33.144306, 38.881657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711826, 33.157909, 39.103237>,  <35.863823, 33.180584, 39.472538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711826, 33.157909, 39.103237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343903, 0.917914, -0.197900,
		0.858685, -0.392709, -0.329303,
		-0.379989, -0.056685, -0.923252,
		35.597828, 33.140903, 38.826260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327099, 33.326313, 38.975826>,  <35.863823, 33.180584, 39.472538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327099, 33.326313, 38.975826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983906, 33.420483, 38.793205>,  <35.777988, 33.476982, 38.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983906, 33.420483, 38.793205>,  <36.327099, 33.326313, 38.975826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983906, 33.420483, 38.793205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395479, 0.869941, -0.294619,
		0.327818, -0.433336, -0.839497,
		-0.857982, 0.235422, -0.456557,
		35.726513, 33.491108, 38.656239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343086, 33.227844, 38.138214>,  <36.327099, 33.326313, 38.975826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343086, 33.227844, 38.138214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123543, 33.516018, 38.307789>,  <35.991817, 33.688923, 38.409534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123543, 33.516018, 38.307789>,  <36.343086, 33.227844, 38.138214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123543, 33.516018, 38.307789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619931, 0.691022, -0.371717,
		-0.560747, 0.058789, -0.825898,
		-0.548861, 0.720439, 0.423934,
		35.958885, 33.732151, 38.434967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111660, 33.522198, 37.590134>,  <36.343086, 33.227844, 38.138214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111660, 33.522198, 37.590134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132111, 33.754723, 37.914963>,  <36.144382, 33.894238, 38.109859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132111, 33.754723, 37.914963>,  <36.111660, 33.522198, 37.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132111, 33.754723, 37.914963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530550, 0.673092, -0.515231,
		-0.846110, 0.457187, -0.274003,
		0.051128, 0.581315, 0.812071,
		36.147449, 33.929115, 38.158585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515518, 33.529926, 36.923374>,  <36.111660, 33.522198, 37.590134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515518, 33.529926, 36.923374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859943, 33.733086, 36.933228>,  <37.066597, 33.854980, 36.939140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859943, 33.733086, 36.933228>,  <36.515518, 33.529926, 36.923374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859943, 33.733086, 36.933228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388465, -0.688289, 0.612661,
		0.328124, -0.517972, -0.789962,
		0.861063, 0.507901, 0.024630,
		37.118263, 33.885456, 36.940617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073101, 33.139942, 36.718143>,  <36.515518, 33.529926, 36.923374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073101, 33.139942, 36.718143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195759, 33.415920, 36.980427>,  <37.269356, 33.581505, 37.137794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195759, 33.415920, 36.980427>,  <37.073101, 33.139942, 36.718143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195759, 33.415920, 36.980427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278798, -0.723785, 0.631195,
		0.910076, -0.010745, -0.414301,
		0.306647, 0.689942, 0.655704,
		37.287754, 33.622902, 37.177139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779228, 32.983257, 36.943417>,  <37.073101, 33.139942, 36.718143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779228, 32.983257, 36.943417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590603, 33.206181, 37.216778>,  <37.477428, 33.339935, 37.380795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590603, 33.206181, 37.216778>,  <37.779228, 32.983257, 36.943417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590603, 33.206181, 37.216778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201626, -0.686307, 0.698806,
		0.858472, 0.467323, 0.211269,
		-0.471563, 0.557309, 0.683400,
		37.449135, 33.373375, 37.421799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313171, 32.387768, 36.749447>,  <37.779228, 32.983257, 36.943417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313171, 32.387768, 36.749447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611176, 32.327393, 37.009350>,  <37.789978, 32.291168, 37.165291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611176, 32.327393, 37.009350>,  <37.313171, 32.387768, 36.749447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611176, 32.327393, 37.009350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167017, 0.900831, 0.400761,
		-0.645807, -0.407090, 0.645918,
		0.745009, -0.150934, 0.649754,
		37.834679, 32.282112, 37.204277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049610, 32.624889, 37.303146>,  <37.313171, 32.387768, 36.749447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049610, 32.624889, 37.303146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442196, 32.634953, 37.379147>,  <37.677746, 32.640991, 37.424747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442196, 32.634953, 37.379147>,  <37.049610, 32.624889, 37.303146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442196, 32.634953, 37.379147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078614, 0.956950, 0.279404,
		-0.174789, -0.289161, 0.941188,
		0.981462, 0.025153, 0.189996,
		37.736633, 32.642498, 37.436146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061241, 33.011082, 37.869892>,  <37.049610, 32.624889, 37.303146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061241, 33.011082, 37.869892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433094, 33.043709, 37.726151>,  <37.656204, 33.063286, 37.639908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433094, 33.043709, 37.726151>,  <37.061241, 33.011082, 37.869892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433094, 33.043709, 37.726151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055156, 0.933410, 0.354548,
		0.364340, -0.349419, 0.863228,
		0.929631, 0.081564, -0.359351,
		37.711983, 33.068176, 37.618343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601429, 33.312416, 38.423740>,  <37.061241, 33.011082, 37.869892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601429, 33.312416, 38.423740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675911, 33.423649, 38.046806>,  <37.720600, 33.490387, 37.820644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675911, 33.423649, 38.046806>,  <37.601429, 33.312416, 38.423740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675911, 33.423649, 38.046806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062766, 0.953785, 0.293860,
		0.980505, -0.113864, 0.160142,
		0.186201, 0.278080, -0.942338,
		37.731770, 33.507072, 37.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226780, 33.579170, 38.315617>,  <37.601429, 33.312416, 38.423740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226780, 33.579170, 38.315617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001659, 33.787338, 38.058735>,  <37.866589, 33.912239, 37.904606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001659, 33.787338, 38.058735>,  <38.226780, 33.579170, 38.315617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001659, 33.787338, 38.058735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157979, 0.830326, 0.534418,
		0.811356, 0.199317, -0.549522,
		-0.562801, 0.520416, -0.642202,
		37.832821, 33.943462, 37.866074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699963, 33.989399, 37.890808>,  <38.226780, 33.579170, 38.315617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699963, 33.989399, 37.890808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342316, 34.165138, 37.925537>,  <38.127728, 34.270580, 37.946373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342316, 34.165138, 37.925537>,  <38.699963, 33.989399, 37.890808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342316, 34.165138, 37.925537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445909, 0.855383, 0.263601,
		0.041547, 0.274404, -0.960717,
		-0.894114, 0.439344, 0.086821,
		38.074081, 34.296940, 37.951584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707447, 34.623650, 37.418877>,  <38.699963, 33.989399, 37.890808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707447, 34.623650, 37.418877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446865, 34.639374, 37.721943>,  <38.290516, 34.648808, 37.903782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446865, 34.639374, 37.721943>,  <38.707447, 34.623650, 37.418877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446865, 34.639374, 37.721943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461096, 0.813572, 0.354247,
		-0.602492, 0.580134, -0.548131,
		-0.651455, 0.039310, 0.757669,
		38.251431, 34.651165, 37.949242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473240, 34.563957, 37.409458>,  <38.707447, 34.623650, 37.418877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473240, 34.563957, 37.409458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476250, 34.475559, 37.799557>,  <39.478054, 34.422520, 38.033615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476250, 34.475559, 37.799557>,  <39.473240, 34.563957, 37.409458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476250, 34.475559, 37.799557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999770, -0.017945, -0.011781,
		0.020104, 0.975110, 0.220809,
		0.007526, -0.220995, 0.975246,
		39.478508, 34.409260, 38.092129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831558, 35.069275, 37.932007>,  <39.473240, 34.563957, 37.409458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831558, 35.069275, 37.932007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852455, 34.709354, 38.105270>,  <39.864994, 34.493401, 38.209229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852455, 34.709354, 38.105270>,  <39.831558, 35.069275, 37.932007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852455, 34.709354, 38.105270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994676, 0.085468, 0.057570,
		-0.088822, 0.427841, 0.899479,
		0.052246, -0.899804, 0.433155,
		39.868130, 34.439415, 38.235218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431702, 35.465088, 38.299850>,  <39.831558, 35.069275, 37.932007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431702, 35.465088, 38.299850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571587, 35.244251, 37.997089>,  <40.655518, 35.111748, 37.815434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571587, 35.244251, 37.997089>,  <40.431702, 35.465088, 38.299850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571587, 35.244251, 37.997089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906545, -0.004437, 0.422086,
		-0.236388, -0.833772, 0.498943,
		0.349710, -0.552090, -0.756901,
		40.676498, 35.078625, 37.770020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892223, 34.995079, 38.600544>,  <40.431702, 35.465088, 38.299850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892223, 34.995079, 38.600544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994137, 35.014900, 38.214252>,  <41.055286, 35.026791, 37.982479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994137, 35.014900, 38.214252>,  <40.892223, 34.995079, 38.600544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994137, 35.014900, 38.214252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964499, -0.084760, 0.250115,
		-0.069462, -0.995169, -0.069388,
		0.254787, 0.049551, -0.965726,
		41.070572, 35.029766, 37.924534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415585, 34.416157, 38.508373>,  <40.892223, 34.995079, 38.600544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415585, 34.416157, 38.508373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431965, 34.732643, 38.264309>,  <41.441792, 34.922535, 38.117870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431965, 34.732643, 38.264309>,  <41.415585, 34.416157, 38.508373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431965, 34.732643, 38.264309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959338, 0.139556, 0.245345,
		0.279273, -0.595401, -0.753329,
		0.040947, 0.791215, -0.610165,
		41.444248, 34.970009, 38.081261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965973, 34.315197, 38.032082>,  <41.415585, 34.416157, 38.508373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965973, 34.315197, 38.032082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902405, 34.707794, 38.074821>,  <41.864265, 34.943352, 38.100464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902405, 34.707794, 38.074821>,  <41.965973, 34.315197, 38.032082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902405, 34.707794, 38.074821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984030, 0.166251, -0.063605,
		-0.080191, 0.095031, -0.992239,
		-0.158916, 0.981494, 0.106845,
		41.854729, 35.002243, 38.106876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182949, 34.634113, 37.469669>,  <41.965973, 34.315197, 38.032082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182949, 34.634113, 37.469669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205509, 34.868145, 37.793274>,  <42.219044, 35.008564, 37.987438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205509, 34.868145, 37.793274>,  <42.182949, 34.634113, 37.469669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205509, 34.868145, 37.793274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954358, 0.206442, -0.215829,
		-0.293291, 0.784262, -0.546730,
		0.056399, 0.585077, 0.809014,
		42.222427, 35.043667, 38.035976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560165, 35.234634, 37.256405>,  <42.182949, 34.634113, 37.469669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560165, 35.234634, 37.256405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578144, 35.203236, 37.654766>,  <42.588932, 35.184399, 37.893784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578144, 35.203236, 37.654766>,  <42.560165, 35.234634, 37.256405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578144, 35.203236, 37.654766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968270, 0.248743, -0.024090,
		-0.245832, 0.965384, 0.087182,
		0.044942, -0.078494, 0.995901,
		42.591625, 35.179688, 37.953537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880280, 35.892414, 37.419643>,  <42.560165, 35.234634, 37.256405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880280, 35.892414, 37.419643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948868, 35.579006, 37.658539>,  <42.990021, 35.390961, 37.801876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948868, 35.579006, 37.658539>,  <42.880280, 35.892414, 37.419643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948868, 35.579006, 37.658539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984240, 0.162844, -0.068948,
		-0.043234, 0.599645, 0.799097,
		0.171472, -0.783522, 0.597235,
		43.000309, 35.343948, 37.837708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499210, 36.104813, 37.859924>,  <42.880280, 35.892414, 37.419643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499210, 36.104813, 37.859924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478531, 35.706947, 37.824207>,  <43.466122, 35.468227, 37.802776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478531, 35.706947, 37.824207>,  <43.499210, 36.104813, 37.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478531, 35.706947, 37.824207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988414, -0.038189, -0.146900,
		0.142706, -0.095854, 0.985113,
		-0.051701, -0.994662, -0.089294,
		43.463020, 35.408550, 37.797421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929352, 35.768864, 38.379124>,  <43.499210, 36.104813, 37.859924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929352, 35.768864, 38.379124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918415, 35.528057, 38.059917>,  <43.911854, 35.383575, 37.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918415, 35.528057, 38.059917>,  <43.929352, 35.768864, 38.379124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918415, 35.528057, 38.059917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999625, -0.015408, -0.022625,
		0.001325, -0.798338, 0.602208,
		-0.027342, -0.602012, -0.798019,
		43.910213, 35.347454, 37.820511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485256, 35.311768, 38.506359>,  <43.929352, 35.768864, 38.379124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485256, 35.311768, 38.506359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403854, 35.284588, 38.115673>,  <44.355015, 35.268280, 37.881264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403854, 35.284588, 38.115673>,  <44.485256, 35.311768, 38.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403854, 35.284588, 38.115673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978076, -0.059131, -0.199675,
		-0.044187, -0.995935, 0.078492,
		-0.203505, -0.067948, -0.976713,
		44.342804, 35.264202, 37.822659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676083, 34.681309, 38.173336>,  <44.485256, 35.311768, 38.506359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676083, 34.681309, 38.173336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706425, 35.003277, 37.937931>,  <44.724628, 35.196457, 37.796688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706425, 35.003277, 37.937931>,  <44.676083, 34.681309, 38.173336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706425, 35.003277, 37.937931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977592, -0.176267, -0.115084,
		-0.196369, -0.566592, -0.800258,
		0.075853, 0.804925, -0.588509,
		44.729179, 35.244755, 37.761379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196495, 34.444130, 37.627655>,  <44.676083, 34.681309, 38.173336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196495, 34.444130, 37.627655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183773, 34.840019, 37.683422>,  <45.176140, 35.077553, 37.716885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183773, 34.840019, 37.683422>,  <45.196495, 34.444130, 37.627655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183773, 34.840019, 37.683422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998840, 0.036517, -0.031383,
		-0.036152, 0.138260, -0.989736,
		-0.031804, 0.989722, 0.139420,
		45.174232, 35.136936, 37.725246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758034, 34.673111, 37.138317>,  <45.196495, 34.444130, 37.627655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758034, 34.673111, 37.138317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667912, 34.885689, 37.464951>,  <45.613838, 35.013237, 37.660931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667912, 34.885689, 37.464951>,  <45.758034, 34.673111, 37.138317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667912, 34.885689, 37.464951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968703, 0.032575, 0.246075,
		0.104175, 0.846467, -0.522150,
		-0.225303, 0.531443, 0.816582,
		45.600319, 35.045120, 37.709927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258911, 35.231304, 37.241993>,  <45.758034, 34.673111, 37.138317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258911, 35.231304, 37.241993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108875, 35.154053, 37.604652>,  <46.018856, 35.107704, 37.822247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108875, 35.154053, 37.604652>,  <46.258911, 35.231304, 37.241993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108875, 35.154053, 37.604652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914260, 0.084462, 0.396225,
		-0.153099, 0.977532, 0.144887,
		-0.375085, -0.193126, 0.906649,
		45.996349, 35.096115, 37.876648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486607, 35.690365, 37.664043>,  <46.258911, 35.231304, 37.241993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486607, 35.690365, 37.664043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432232, 35.384769, 37.916344>,  <46.399609, 35.201412, 38.067722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432232, 35.384769, 37.916344>,  <46.486607, 35.690365, 37.664043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432232, 35.384769, 37.916344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988031, -0.057679, 0.143069,
		-0.072922, 0.642645, 0.762686,
		-0.135933, -0.763990, 0.630747,
		46.391453, 35.155571, 38.105568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155464, 35.311802, 37.939743>,  <46.486607, 35.690365, 37.664043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155464, 35.311802, 37.939743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528648, 35.285225, 37.798229>,  <47.752560, 35.269279, 37.713322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528648, 35.285225, 37.798229>,  <47.155464, 35.311802, 37.939743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528648, 35.285225, 37.798229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353559, -0.015488, 0.935284,
		-0.067624, -0.997670, 0.009043,
		0.932965, -0.066445, -0.353783,
		47.808537, 35.265293, 37.692093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450527, 35.684479, 37.320198>,  <47.155464, 35.311802, 37.939743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450527, 35.684479, 37.320198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708771, 35.385666, 37.256786>,  <47.863716, 35.206379, 37.218739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708771, 35.385666, 37.256786>,  <47.450527, 35.684479, 37.320198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708771, 35.385666, 37.256786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386797, -0.140891, -0.911338,
		0.658465, 0.649686, -0.379911,
		0.645610, -0.747033, -0.158525,
		47.902454, 35.161556, 37.209229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754513, 35.819389, 36.716724>,  <47.450527, 35.684479, 37.320198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754513, 35.819389, 36.716724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731361, 35.428253, 36.797195>,  <47.717472, 35.193569, 36.845478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731361, 35.428253, 36.797195>,  <47.754513, 35.819389, 36.716724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731361, 35.428253, 36.797195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440973, -0.155751, -0.883903,
		0.895652, -0.139871, -0.422188,
		-0.057877, -0.977843, 0.201178,
		47.713997, 35.134899, 36.857548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.144806, 35.407265, 36.187656>,  <47.754513, 35.819389, 36.716724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.144806, 35.407265, 36.187656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815678, 35.260815, 36.361515>,  <47.618198, 35.172943, 36.465828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815678, 35.260815, 36.361515>,  <48.144806, 35.407265, 36.187656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.815678, 35.260815, 36.361515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475508, 0.024718, -0.879364,
		0.311213, -0.930238, -0.194434,
		-0.822823, -0.366124, 0.434643,
		47.568832, 35.150978, 36.491909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855404, 34.949963, 35.769253>,  <48.144806, 35.407265, 36.187656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855404, 34.949963, 35.769253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569672, 35.129704, 35.983849>,  <47.398232, 35.237549, 36.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569672, 35.129704, 35.983849>,  <47.855404, 34.949963, 35.769253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569672, 35.129704, 35.983849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472754, 0.255397, -0.843372,
		-0.515986, -0.856071, 0.029995,
		-0.714326, 0.449348, 0.536493,
		47.355373, 35.264507, 36.144798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447971, 34.760517, 35.134838>,  <47.855404, 34.949963, 35.769253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447971, 34.760517, 35.134838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557663, 35.020603, 34.851425>,  <47.623478, 35.176655, 34.681377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557663, 35.020603, 34.851425>,  <47.447971, 34.760517, 35.134838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557663, 35.020603, 34.851425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351891, 0.617836, 0.703172,
		0.894971, -0.442155, -0.059379,
		0.274225, 0.650214, -0.708535,
		47.639931, 35.215668, 34.638863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.781250, 29.006189, 25.933891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391754, 29.016840, 26.024338>,  <35.158058, 29.023230, 26.078606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391754, 29.016840, 26.024338>,  <35.781250, 29.006189, 25.933891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391754, 29.016840, 26.024338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209307, -0.286124, 0.935052,
		0.089595, 0.957822, 0.273037,
		-0.973737, 0.026627, 0.226114,
		35.099632, 29.024828, 26.092173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782566, 29.405563, 26.598078>,  <35.781250, 29.006189, 25.933891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782566, 29.405563, 26.598078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444565, 29.193069, 26.573574>,  <35.241764, 29.065573, 26.558872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444565, 29.193069, 26.573574>,  <35.782566, 29.405563, 26.598078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444565, 29.193069, 26.573574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044146, -0.183466, 0.982034,
		-0.532932, 0.827121, 0.178482,
		-0.845006, -0.531236, -0.061261,
		35.191063, 29.033699, 26.555195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441452, 29.654650, 27.065975>,  <35.782566, 29.405563, 26.598078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441452, 29.654650, 27.065975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286366, 29.288109, 27.026022>,  <35.193314, 29.068184, 27.002050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286366, 29.288109, 27.026022>,  <35.441452, 29.654650, 27.065975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286366, 29.288109, 27.026022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183754, -0.029349, 0.982534,
		-0.903279, 0.399294, -0.157005,
		-0.387712, -0.916353, -0.099882,
		35.170052, 29.013203, 26.996058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076584, 29.660120, 27.624155>,  <35.441452, 29.654650, 27.065975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076584, 29.660120, 27.624155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059265, 29.275269, 27.516499>,  <35.048874, 29.044357, 27.451904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059265, 29.275269, 27.516499>,  <35.076584, 29.660120, 27.624155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059265, 29.275269, 27.516499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159289, -0.259297, 0.952571,
		-0.986282, 0.084115, -0.142029,
		-0.043297, -0.962128, -0.269139,
		35.046276, 28.986629, 27.435757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383392, 29.385174, 27.745686>,  <35.076584, 29.660120, 27.624155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383392, 29.385174, 27.745686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664280, 29.100653, 27.757950>,  <34.832813, 28.929939, 27.765308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664280, 29.100653, 27.757950>,  <34.383392, 29.385174, 27.745686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664280, 29.100653, 27.757950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146493, -0.102211, 0.983917,
		-0.696729, -0.695415, -0.175975,
		0.702217, -0.711302, 0.030660,
		34.874947, 28.887262, 27.767147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095684, 28.768484, 27.983332>,  <34.383392, 29.385174, 27.745686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095684, 28.768484, 27.983332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485779, 28.708757, 28.048595>,  <34.719833, 28.672922, 28.087753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485779, 28.708757, 28.048595>,  <34.095684, 28.768484, 27.983332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485779, 28.708757, 28.048595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191474, -0.200768, 0.960745,
		-0.110693, -0.968193, -0.224386,
		0.975236, -0.149312, 0.163160,
		34.778351, 28.663963, 28.097544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097424, 28.315828, 28.404505>,  <34.095684, 28.768484, 27.983332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097424, 28.315828, 28.404505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481194, 28.418903, 28.450279>,  <34.711456, 28.480749, 28.477743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481194, 28.418903, 28.450279>,  <34.097424, 28.315828, 28.404505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481194, 28.418903, 28.450279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115846, -0.009754, 0.993219,
		0.257056, -0.966179, 0.020494,
		0.959428, 0.257688, 0.114435,
		34.769020, 28.496210, 28.484610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367424, 27.910969, 28.977985>,  <34.097424, 28.315828, 28.404505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367424, 27.910969, 28.977985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613979, 28.223049, 28.935360>,  <34.761913, 28.410297, 28.909784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613979, 28.223049, 28.935360>,  <34.367424, 27.910969, 28.977985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613979, 28.223049, 28.935360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137592, 0.026533, 0.990134,
		0.775330, -0.624967, -0.090995,
		0.616386, 0.780201, -0.106562,
		34.798897, 28.457109, 28.903391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987019, 27.740126, 29.337484>,  <34.367424, 27.910969, 28.977985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987019, 27.740126, 29.337484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979740, 28.137133, 29.289183>,  <34.975372, 28.375336, 29.260202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979740, 28.137133, 29.289183>,  <34.987019, 27.740126, 29.337484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979740, 28.137133, 29.289183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307944, 0.120464, 0.943747,
		0.951230, -0.020011, -0.307831,
		-0.018197, 0.992516, -0.120752,
		34.974281, 28.434887, 29.252956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602871, 27.991169, 29.546543>,  <34.987019, 27.740126, 29.337484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602871, 27.991169, 29.546543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371017, 28.315678, 29.577179>,  <35.231907, 28.510384, 29.595560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371017, 28.315678, 29.577179>,  <35.602871, 27.991169, 29.546543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371017, 28.315678, 29.577179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413142, 0.211559, 0.885752,
		0.702384, 0.545049, -0.457797,
		-0.579629, 0.811273, 0.076587,
		35.197128, 28.559059, 29.600155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027592, 28.498907, 29.628971>,  <35.602871, 27.991169, 29.546543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027592, 28.498907, 29.628971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680187, 28.601923, 29.798374>,  <35.471745, 28.663733, 29.900017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680187, 28.601923, 29.798374>,  <36.027592, 28.498907, 29.628971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680187, 28.601923, 29.798374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473050, 0.175515, 0.863376,
		0.148023, 0.950193, -0.274266,
		-0.868512, 0.257541, 0.423508,
		35.419632, 28.679186, 29.925426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993111, 29.224569, 29.959017>,  <36.027592, 28.498907, 29.628971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993111, 29.224569, 29.959017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713387, 29.005018, 30.142191>,  <35.545551, 28.873287, 30.252094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713387, 29.005018, 30.142191>,  <35.993111, 29.224569, 29.959017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713387, 29.005018, 30.142191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477864, 0.117471, 0.870544,
		-0.531616, 0.827607, 0.180141,
		-0.699307, -0.548878, 0.457933,
		35.503593, 28.840355, 30.279572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260574, 29.296421, 30.617340>,  <35.993111, 29.224569, 29.959017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260574, 29.296421, 30.617340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942112, 29.064724, 30.687334>,  <35.751034, 28.925705, 30.729330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942112, 29.064724, 30.687334>,  <36.260574, 29.296421, 30.617340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942112, 29.064724, 30.687334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250625, -0.052457, 0.966662,
		-0.550754, 0.813465, 0.186937,
		-0.796152, -0.579244, 0.174983,
		35.703266, 28.890951, 30.739830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926800, 29.596407, 31.211657>,  <36.260574, 29.296421, 30.617340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926800, 29.596407, 31.211657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803654, 29.216696, 31.186066>,  <35.729767, 28.988869, 31.170712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803654, 29.216696, 31.186066>,  <35.926800, 29.596407, 31.211657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803654, 29.216696, 31.186066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229343, -0.139302, 0.963326,
		-0.923375, 0.281902, 0.260596,
		-0.307865, -0.949277, -0.063975,
		35.711296, 28.931913, 31.166874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611412, 29.393396, 31.839294>,  <35.926800, 29.596407, 31.211657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611412, 29.393396, 31.839294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718254, 29.046076, 31.672104>,  <35.782360, 28.837683, 31.571789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718254, 29.046076, 31.672104>,  <35.611412, 29.393396, 31.839294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718254, 29.046076, 31.672104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449736, -0.271285, 0.850965,
		-0.852286, -0.415280, 0.318044,
		0.267108, -0.868301, -0.417979,
		35.798386, 28.785585, 31.546711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445782, 28.925055, 32.316334>,  <35.611412, 29.393396, 31.839294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445782, 28.925055, 32.316334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718590, 28.701494, 32.127666>,  <35.882275, 28.567358, 32.014465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718590, 28.701494, 32.127666>,  <35.445782, 28.925055, 32.316334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718590, 28.701494, 32.127666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365869, -0.297684, 0.881773,
		-0.633234, -0.773958, 0.001458,
		0.682022, -0.558902, -0.471671,
		35.923195, 28.533823, 31.986166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385525, 28.135008, 32.615402>,  <35.445782, 28.925055, 32.316334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385525, 28.135008, 32.615402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741734, 28.226240, 32.457951>,  <35.955460, 28.280979, 32.363480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741734, 28.226240, 32.457951>,  <35.385525, 28.135008, 32.615402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741734, 28.226240, 32.457951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444289, -0.249913, 0.860320,
		0.097848, -0.941022, -0.323886,
		0.890524, 0.228080, -0.393632,
		36.008892, 28.294664, 32.339859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835827, 27.560766, 32.725163>,  <35.385525, 28.135008, 32.615402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835827, 27.560766, 32.725163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107170, 27.850212, 32.674225>,  <36.269978, 28.023880, 32.643661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107170, 27.850212, 32.674225>,  <35.835827, 27.560766, 32.725163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107170, 27.850212, 32.674225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378191, -0.195293, 0.904894,
		0.629924, -0.662001, -0.406142,
		0.678357, 0.723613, -0.127343,
		36.310677, 28.067295, 32.636021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302895, 27.322443, 33.092533>,  <35.835827, 27.560766, 32.725163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302895, 27.322443, 33.092533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435410, 27.695513, 33.035450>,  <36.514919, 27.919355, 33.001198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435410, 27.695513, 33.035450>,  <36.302895, 27.322443, 33.092533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435410, 27.695513, 33.035450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516924, -0.052878, 0.854397,
		0.789329, -0.356820, -0.499640,
		0.331286, 0.932675, -0.142711,
		36.534794, 27.975315, 32.992638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944397, 27.213202, 33.254860>,  <36.302895, 27.322443, 33.092533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944397, 27.213202, 33.254860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876514, 27.607174, 33.268219>,  <36.835785, 27.843557, 33.276234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876514, 27.607174, 33.268219>,  <36.944397, 27.213202, 33.254860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876514, 27.607174, 33.268219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461754, 0.049529, 0.885624,
		0.870622, 0.165717, -0.463200,
		-0.169705, 0.984929, 0.033400,
		36.825603, 27.902653, 33.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577591, 27.416864, 33.465748>,  <36.944397, 27.213202, 33.254860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577591, 27.416864, 33.465748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303322, 27.693943, 33.555214>,  <37.138760, 27.860189, 33.608894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303322, 27.693943, 33.555214>,  <37.577591, 27.416864, 33.465748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303322, 27.693943, 33.555214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292384, -0.019300, 0.956106,
		0.666608, 0.720971, -0.189299,
		-0.685672, 0.692696, 0.223666,
		37.097622, 27.901752, 33.622314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926334, 27.909651, 33.874527>,  <37.577591, 27.416864, 33.465748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926334, 27.909651, 33.874527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538616, 27.991217, 33.929485>,  <37.305984, 28.040157, 33.962460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538616, 27.991217, 33.929485>,  <37.926334, 27.909651, 33.874527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538616, 27.991217, 33.929485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149530, 0.045269, 0.987720,
		0.195193, 0.977941, -0.074371,
		-0.969299, 0.203917, 0.137396,
		37.247826, 28.052391, 33.970703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681618, 27.537659, 34.021645>,  <37.926334, 27.909651, 33.874527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681618, 27.537659, 34.021645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972580, 27.263741, 34.004051>,  <39.147156, 27.099390, 33.993496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972580, 27.263741, 34.004051>,  <38.681618, 27.537659, 34.021645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972580, 27.263741, 34.004051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086321, -0.027724, -0.995881,
		0.680756, 0.728208, -0.079279,
		0.727407, -0.684795, -0.043987,
		39.190804, 27.058302, 33.990856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130089, 27.694628, 33.427658>,  <38.681618, 27.537659, 34.021645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130089, 27.694628, 33.427658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130093, 27.304379, 33.515434>,  <39.130096, 27.070229, 33.568100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130093, 27.304379, 33.515434>,  <39.130089, 27.694628, 33.427658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130093, 27.304379, 33.515434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222275, -0.213957, -0.951218,
		0.974984, -0.048767, -0.216859,
		0.000011, -0.975625, 0.219444,
		39.130096, 27.011690, 33.581268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535069, 27.284063, 33.003296>,  <39.130089, 27.694628, 33.427658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535069, 27.284063, 33.003296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.308643, 26.975378, 33.119247>,  <39.172791, 26.790167, 33.188820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.308643, 26.975378, 33.119247>,  <39.535069, 27.284063, 33.003296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308643, 26.975378, 33.119247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187180, -0.222138, -0.956879,
		0.802832, -0.595911, -0.018706,
		-0.566060, -0.771715, 0.289882,
		39.138824, 26.743864, 33.206211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687626, 26.859056, 32.492931>,  <39.535069, 27.284063, 33.003296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687626, 26.859056, 32.492931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377804, 26.686089, 32.677574>,  <39.191910, 26.582308, 32.788361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377804, 26.686089, 32.677574>,  <39.687626, 26.859056, 32.492931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377804, 26.686089, 32.677574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312587, -0.372758, -0.873694,
		0.549873, -0.821013, 0.153551,
		-0.774551, -0.432422, 0.461607,
		39.145439, 26.556362, 32.816055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702953, 26.163048, 32.302193>,  <39.687626, 26.859056, 32.492931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702953, 26.163048, 32.302193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324509, 26.187674, 32.429367>,  <39.097443, 26.202450, 32.505672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324509, 26.187674, 32.429367>,  <39.702953, 26.163048, 32.302193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324509, 26.187674, 32.429367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323820, -0.168108, -0.931064,
		-0.003872, -0.983844, 0.178985,
		-0.946111, 0.061564, 0.317938,
		39.040676, 26.206142, 32.524750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442642, 25.576597, 32.095856>,  <39.702953, 26.163048, 32.302193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442642, 25.576597, 32.095856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.145535, 25.840157, 32.143425>,  <38.967270, 25.998291, 32.171967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.145535, 25.840157, 32.143425>,  <39.442642, 25.576597, 32.095856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145535, 25.840157, 32.143425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237508, -0.093223, -0.966902,
		-0.626003, -0.746434, 0.225737,
		-0.742773, 0.658898, 0.118926,
		38.922703, 26.037827, 32.179104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934364, 25.293015, 31.709831>,  <39.442642, 25.576597, 32.095856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934364, 25.293015, 31.709831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811790, 25.671169, 31.754269>,  <38.738247, 25.898062, 31.780931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811790, 25.671169, 31.754269>,  <38.934364, 25.293015, 31.709831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811790, 25.671169, 31.754269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392538, -0.019181, -0.919536,
		-0.867186, -0.325385, 0.376978,
		-0.306434, 0.945387, 0.111093,
		38.719860, 25.954784, 31.787596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249229, 25.283077, 31.476097>,  <38.934364, 25.293015, 31.709831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249229, 25.283077, 31.476097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353050, 25.668913, 31.457338>,  <38.415344, 25.900414, 31.446083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353050, 25.668913, 31.457338>,  <38.249229, 25.283077, 31.476097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353050, 25.668913, 31.457338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429639, 0.071843, -0.900138,
		-0.864895, 0.253782, 0.433073,
		0.259552, 0.964590, -0.046897,
		38.430916, 25.958290, 31.443270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690834, 25.619415, 31.138208>,  <38.249229, 25.283077, 31.476097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690834, 25.619415, 31.138208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991253, 25.883009, 31.121893>,  <38.171505, 26.041166, 31.112103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991253, 25.883009, 31.121893>,  <37.690834, 25.619415, 31.138208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991253, 25.883009, 31.121893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279398, 0.261239, -0.923954,
		-0.598217, 0.705330, 0.380322,
		0.751048, 0.658986, -0.040790,
		38.216568, 26.080706, 31.109655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402500, 26.242407, 30.897711>,  <37.690834, 25.619415, 31.138208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402500, 26.242407, 30.897711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788761, 26.271584, 30.797953>,  <38.020515, 26.289089, 30.738098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788761, 26.271584, 30.797953>,  <37.402500, 26.242407, 30.897711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788761, 26.271584, 30.797953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259176, 0.339184, -0.904313,
		0.018630, 0.937888, 0.346437,
		0.965651, 0.072941, -0.249397,
		38.078457, 26.293467, 30.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392330, 26.851242, 30.435604>,  <37.402500, 26.242407, 30.897711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392330, 26.851242, 30.435604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745216, 26.679625, 30.358023>,  <37.956947, 26.576654, 30.311474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745216, 26.679625, 30.358023>,  <37.392330, 26.851242, 30.435604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745216, 26.679625, 30.358023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122450, 0.188692, -0.974372,
		0.454646, 0.883355, 0.113931,
		0.882215, -0.429044, -0.193955,
		38.009880, 26.550911, 30.299837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775780, 27.318602, 30.163206>,  <37.392330, 26.851242, 30.435604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775780, 27.318602, 30.163206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968784, 26.998724, 30.020283>,  <38.084587, 26.806797, 29.934528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968784, 26.998724, 30.020283>,  <37.775780, 27.318602, 30.163206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968784, 26.998724, 30.020283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013663, 0.414759, -0.909829,
		0.875783, 0.434121, 0.211052,
		0.482511, -0.799696, -0.357307,
		38.113537, 26.758816, 29.913090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259853, 27.590435, 29.760578>,  <37.775780, 27.318602, 30.163206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259853, 27.590435, 29.760578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180584, 27.216602, 29.642405>,  <38.133022, 26.992302, 29.571501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180584, 27.216602, 29.642405>,  <38.259853, 27.590435, 29.760578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180584, 27.216602, 29.642405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052580, 0.311115, -0.948917,
		0.978756, -0.172515, -0.110795,
		-0.198172, -0.934583, -0.295435,
		38.121132, 26.936228, 29.553774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704735, 27.469048, 29.240999>,  <38.259853, 27.590435, 29.760578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704735, 27.469048, 29.240999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424698, 27.195810, 29.157803>,  <38.256676, 27.031868, 29.107885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424698, 27.195810, 29.157803>,  <38.704735, 27.469048, 29.240999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424698, 27.195810, 29.157803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038422, 0.254823, -0.966224,
		0.713022, -0.684433, -0.152152,
		-0.700088, -0.683093, -0.207992,
		38.214672, 26.990883, 29.095406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868374, 27.154388, 28.542234>,  <38.704735, 27.469048, 29.240999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868374, 27.154388, 28.542234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.481758, 27.077461, 28.610132>,  <38.249790, 27.031305, 28.650871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.481758, 27.077461, 28.610132>,  <38.868374, 27.154388, 28.542234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481758, 27.077461, 28.610132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227211, 0.334743, -0.914507,
		0.119058, -0.922475, -0.367240,
		-0.966541, -0.192320, 0.169743,
		38.191795, 27.019766, 28.661055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803120, 26.832628, 27.931553>,  <38.868374, 27.154388, 28.542234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803120, 26.832628, 27.931553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460873, 26.975983, 28.080942>,  <38.255524, 27.061995, 28.170576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460873, 26.975983, 28.080942>,  <38.803120, 26.832628, 27.931553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460873, 26.975983, 28.080942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211805, 0.415945, -0.884380,
		-0.472293, -0.835793, -0.279981,
		-0.855615, 0.358385, 0.373473,
		38.204189, 27.083498, 28.192984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175926, 26.533302, 27.530956>,  <38.803120, 26.832628, 27.931553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175926, 26.533302, 27.530956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041187, 26.865242, 27.708891>,  <37.960342, 27.064405, 27.815651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041187, 26.865242, 27.708891>,  <38.175926, 26.533302, 27.530956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041187, 26.865242, 27.708891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314183, 0.346302, -0.883948,
		-0.887592, -0.437519, 0.144072,
		-0.336852, 0.829850, 0.444836,
		37.940132, 27.114197, 27.842342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474243, 26.548132, 27.294090>,  <38.175926, 26.533302, 27.530956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474243, 26.548132, 27.294090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566296, 26.918346, 27.414370>,  <37.621529, 27.140474, 27.486538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566296, 26.918346, 27.414370>,  <37.474243, 26.548132, 27.294090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566296, 26.918346, 27.414370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259696, 0.356196, -0.897598,
		-0.937868, 0.128476, 0.322330,
		0.230133, 0.925537, 0.300700,
		37.635334, 27.196007, 27.504580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.913132, 26.995909, 27.062634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216980, 27.244631, 27.138874>,  <37.399288, 27.393864, 27.184618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216980, 27.244631, 27.138874>,  <36.913132, 26.995909, 27.062634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216980, 27.244631, 27.138874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268943, 0.567171, -0.778452,
		-0.592150, 0.540069, 0.598066,
		0.759623, 0.621806, 0.190603,
		37.444866, 27.431173, 27.196054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701878, 27.762054, 27.265373>,  <36.913132, 26.995909, 27.062634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701878, 27.762054, 27.265373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056042, 27.744915, 27.080240>,  <37.268539, 27.734631, 26.969160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056042, 27.744915, 27.080240>,  <36.701878, 27.762054, 27.265373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056042, 27.744915, 27.080240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339208, 0.621210, -0.706425,
		0.317787, 0.782471, 0.535490,
		0.885409, -0.042850, -0.462833,
		37.321663, 27.732059, 26.941391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828548, 28.446224, 27.038477>,  <36.701878, 27.762054, 27.265373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828548, 28.446224, 27.038477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096790, 28.222248, 26.843847>,  <37.257736, 28.087862, 26.727070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096790, 28.222248, 26.843847>,  <36.828548, 28.446224, 27.038477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096790, 28.222248, 26.843847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216970, 0.479189, -0.850471,
		0.709374, 0.675904, 0.199858,
		0.670606, -0.559939, -0.486575,
		37.297974, 28.054266, 26.697874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115334, 28.955032, 26.674404>,  <36.828548, 28.446224, 27.038477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115334, 28.955032, 26.674404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248764, 28.627493, 26.487551>,  <37.328823, 28.430969, 26.375439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248764, 28.627493, 26.487551>,  <37.115334, 28.955032, 26.674404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248764, 28.627493, 26.487551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051365, 0.510565, -0.858304,
		0.941324, 0.262313, 0.212371,
		0.333573, -0.818850, -0.467133,
		37.348835, 28.381838, 26.347410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643726, 29.184303, 26.187872>,  <37.115334, 28.955032, 26.674404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643726, 29.184303, 26.187872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521999, 28.828207, 26.052309>,  <37.448963, 28.614550, 25.970970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521999, 28.828207, 26.052309>,  <37.643726, 29.184303, 26.187872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521999, 28.828207, 26.052309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032845, 0.345765, -0.937746,
		0.952004, -0.296506, -0.075983,
		-0.304320, -0.890242, -0.338909,
		37.430702, 28.561134, 25.950636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066391, 29.106483, 25.668932>,  <37.643726, 29.184303, 26.187872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066391, 29.106483, 25.668932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772072, 28.848305, 25.586960>,  <37.595482, 28.693398, 25.537777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772072, 28.848305, 25.586960>,  <38.066391, 29.106483, 25.668932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772072, 28.848305, 25.586960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078828, 0.382192, -0.920715,
		0.672598, -0.661306, -0.332095,
		-0.735798, -0.645449, -0.204932,
		37.551331, 28.654671, 25.525480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148483, 28.894070, 25.059074>,  <38.066391, 29.106483, 25.668932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148483, 28.894070, 25.059074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.759693, 28.829512, 25.127434>,  <37.526417, 28.790777, 25.168449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.759693, 28.829512, 25.127434>,  <38.148483, 28.894070, 25.059074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759693, 28.829512, 25.127434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201224, 0.195485, -0.959841,
		0.121502, -0.967336, -0.222483,
		-0.971981, -0.161392, 0.170899,
		37.468098, 28.781092, 25.178703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840038, 28.630243, 24.440437>,  <38.148483, 28.894070, 25.059074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840038, 28.630243, 24.440437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491154, 28.755314, 24.590893>,  <37.281822, 28.830357, 24.681166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491154, 28.755314, 24.590893>,  <37.840038, 28.630243, 24.440437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491154, 28.755314, 24.590893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181380, 0.507415, -0.842397,
		-0.454255, -0.802972, -0.385860,
		-0.872212, 0.312676, 0.376138,
		37.229488, 28.849117, 24.703733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310436, 28.381500, 24.009912>,  <37.840038, 28.630243, 24.440437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310436, 28.381500, 24.009912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190826, 28.709038, 24.205904>,  <37.119061, 28.905560, 24.323500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190826, 28.709038, 24.205904>,  <37.310436, 28.381500, 24.009912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190826, 28.709038, 24.205904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204270, 0.446642, -0.871083,
		-0.932124, -0.360566, 0.033706,
		-0.299029, 0.818843, 0.489979,
		37.101116, 28.954691, 24.352898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675980, 28.543858, 23.622929>,  <37.310436, 28.381500, 24.009912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675980, 28.543858, 23.622929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784203, 28.851274, 23.854841>,  <36.849136, 29.035725, 23.993988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784203, 28.851274, 23.854841>,  <36.675980, 28.543858, 23.622929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784203, 28.851274, 23.854841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100185, 0.621449, -0.777022,
		-0.957477, 0.152141, 0.245132,
		0.270554, 0.768540, 0.579781,
		36.865368, 29.081837, 24.028776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267693, 29.093027, 23.419046>,  <36.675980, 28.543858, 23.622929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267693, 29.093027, 23.419046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601250, 29.229668, 23.592455>,  <36.801384, 29.311651, 23.696499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601250, 29.229668, 23.592455>,  <36.267693, 29.093027, 23.419046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601250, 29.229668, 23.592455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217505, 0.518509, -0.826946,
		-0.507269, 0.783873, 0.358079,
		0.833888, 0.341600, 0.433520,
		36.851418, 29.332148, 23.722511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251732, 29.812082, 23.305811>,  <36.267693, 29.093027, 23.419046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251732, 29.812082, 23.305811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624111, 29.680050, 23.368273>,  <36.847538, 29.600830, 23.405750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624111, 29.680050, 23.368273>,  <36.251732, 29.812082, 23.305811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624111, 29.680050, 23.368273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332246, 0.588264, -0.737264,
		0.151497, 0.738235, 0.657311,
		0.930946, -0.330082, 0.156155,
		36.903397, 29.581026, 23.415119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590042, 30.363813, 23.077618>,  <36.251732, 29.812082, 23.305811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590042, 30.363813, 23.077618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895588, 30.107439, 23.107851>,  <37.078915, 29.953613, 23.125992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895588, 30.107439, 23.107851>,  <36.590042, 30.363813, 23.077618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895588, 30.107439, 23.107851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402478, 0.381537, -0.832130,
		0.504504, 0.666055, 0.549405,
		0.763863, -0.640937, 0.075586,
		37.124748, 29.915157, 23.130527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157738, 30.752966, 23.004389>,  <36.590042, 30.363813, 23.077618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157738, 30.752966, 23.004389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289120, 30.387632, 22.908106>,  <37.367947, 30.168432, 22.850336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289120, 30.387632, 22.908106>,  <37.157738, 30.752966, 23.004389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289120, 30.387632, 22.908106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370997, 0.359115, -0.856387,
		0.868609, 0.191980, 0.456795,
		0.328451, -0.913335, -0.240706,
		37.387653, 30.113632, 22.835894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915482, 30.795992, 22.948433>,  <37.157738, 30.752966, 23.004389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915482, 30.795992, 22.948433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815228, 30.464134, 22.748884>,  <37.755077, 30.265020, 22.629154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815228, 30.464134, 22.748884>,  <37.915482, 30.795992, 22.948433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815228, 30.464134, 22.748884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533919, 0.311397, -0.786105,
		0.807535, -0.463381, 0.364917,
		-0.250632, -0.829644, -0.498872,
		37.740036, 30.215240, 22.599222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466026, 30.684986, 22.493319>,  <37.915482, 30.795992, 22.948433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466026, 30.684986, 22.493319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176167, 30.471434, 22.319027>,  <38.002251, 30.343302, 22.214451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176167, 30.471434, 22.319027>,  <38.466026, 30.684986, 22.493319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176167, 30.471434, 22.319027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322754, 0.295727, -0.899097,
		0.608868, -0.792160, -0.041984,
		-0.724644, -0.533880, -0.435731,
		37.958775, 30.311270, 22.188307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796043, 30.253717, 21.938400>,  <38.466026, 30.684986, 22.493319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796043, 30.253717, 21.938400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412472, 30.240332, 21.825727>,  <38.182331, 30.232300, 21.758123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412472, 30.240332, 21.825727>,  <38.796043, 30.253717, 21.938400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412472, 30.240332, 21.825727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264853, 0.249939, -0.931334,
		0.101569, -0.967683, -0.230809,
		-0.958925, -0.033464, -0.281680,
		38.124794, 30.230291, 21.741224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707970, 30.018343, 21.182800>,  <38.796043, 30.253717, 21.938400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707970, 30.018343, 21.182800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352802, 30.199083, 21.217281>,  <38.139702, 30.307528, 21.237970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352802, 30.199083, 21.217281>,  <38.707970, 30.018343, 21.182800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352802, 30.199083, 21.217281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117586, 0.404117, -0.907118,
		-0.444717, -0.795312, -0.411954,
		-0.887919, 0.451851, 0.086201,
		38.086426, 30.334639, 21.243141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411499, 29.904667, 20.527437>,  <38.707970, 30.018343, 21.182800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411499, 29.904667, 20.527437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234299, 30.219780, 20.698620>,  <38.127979, 30.408848, 20.801329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234299, 30.219780, 20.698620>,  <38.411499, 29.904667, 20.527437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234299, 30.219780, 20.698620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170304, 0.542607, -0.822541,
		-0.880195, -0.291507, -0.374540,
		-0.443004, 0.787782, 0.427955,
		38.101398, 30.456114, 20.827007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820763, 30.173283, 20.175873>,  <38.411499, 29.904667, 20.527437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820763, 30.173283, 20.175873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918736, 30.516094, 20.357204>,  <37.977520, 30.721781, 20.466003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918736, 30.516094, 20.357204>,  <37.820763, 30.173283, 20.175873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918736, 30.516094, 20.357204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017369, 0.471374, -0.881762,
		-0.969385, 0.208096, 0.130339,
		0.244930, 0.857031, 0.453329,
		37.992214, 30.773203, 20.493202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335258, 30.609346, 19.875177>,  <37.820763, 30.173283, 20.175873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335258, 30.609346, 19.875177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615124, 30.845068, 20.036762>,  <37.783043, 30.986502, 20.133713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615124, 30.845068, 20.036762>,  <37.335258, 30.609346, 19.875177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615124, 30.845068, 20.036762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014179, 0.576744, -0.816802,
		-0.714329, 0.565761, 0.411884,
		0.699666, 0.589305, 0.403963,
		37.825024, 31.021860, 20.157951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004799, 31.214144, 19.867058>,  <37.335258, 30.609346, 19.875177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004799, 31.214144, 19.867058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397022, 31.288769, 19.891367>,  <37.632359, 31.333544, 19.905952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397022, 31.288769, 19.891367>,  <37.004799, 31.214144, 19.867058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397022, 31.288769, 19.891367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047608, 0.526686, -0.848725,
		-0.190349, 0.829334, 0.525331,
		0.980561, 0.186564, 0.060771,
		37.691193, 31.344738, 19.909597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241283, 32.001717, 19.738174>,  <37.004799, 31.214144, 19.867058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241283, 32.001717, 19.738174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550125, 31.764542, 19.646708>,  <37.735428, 31.622238, 19.591827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550125, 31.764542, 19.646708>,  <37.241283, 32.001717, 19.738174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550125, 31.764542, 19.646708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227129, 0.593524, -0.772102,
		0.593524, 0.544205, 0.592934,
		0.772102, -0.592934, -0.228665,
		37.781757, 31.586662, 19.578108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800472, 32.299576, 19.124979>,  <37.241283, 32.001717, 19.738174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800472, 32.299576, 19.124979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498943, 32.555935, 19.182961>,  <36.318027, 32.709751, 19.217751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498943, 32.555935, 19.182961>,  <36.800472, 32.299576, 19.124979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498943, 32.555935, 19.182961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280294, 0.114111, 0.953107,
		0.594301, 0.759100, -0.265658,
		-0.753818, 0.640895, 0.144955,
		36.272797, 32.748203, 19.226446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977329, 32.867630, 19.601509>,  <36.800472, 32.299576, 19.124979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977329, 32.867630, 19.601509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579357, 32.832127, 19.620443>,  <36.340576, 32.810825, 19.631804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579357, 32.832127, 19.620443>,  <36.977329, 32.867630, 19.601509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579357, 32.832127, 19.620443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036535, 0.119564, 0.992154,
		-0.093724, 0.988851, -0.115715,
		-0.994928, -0.088761, 0.047334,
		36.280880, 32.805500, 19.634644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746380, 33.384842, 19.977079>,  <36.977329, 32.867630, 19.601509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746380, 33.384842, 19.977079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411167, 33.167179, 19.993029>,  <36.210037, 33.036583, 20.002598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411167, 33.167179, 19.993029>,  <36.746380, 33.384842, 19.977079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411167, 33.167179, 19.993029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115978, 0.249068, 0.961516,
		-0.533148, 0.801160, -0.271838,
		-0.838035, -0.544158, 0.039873,
		36.159756, 33.003933, 20.004990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297199, 33.751755, 20.476507>,  <36.746380, 33.384842, 19.977079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297199, 33.751755, 20.476507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128845, 33.389038, 20.466864>,  <36.027832, 33.171410, 20.461079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128845, 33.389038, 20.466864>,  <36.297199, 33.751755, 20.476507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128845, 33.389038, 20.466864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357978, 0.141619, 0.922928,
		-0.833490, 0.397079, -0.384218,
		-0.420888, -0.906792, -0.024107,
		36.002579, 33.117001, 20.459631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713535, 33.801640, 20.953234>,  <36.297199, 33.751755, 20.476507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713535, 33.801640, 20.953234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732334, 33.407906, 20.885256>,  <35.743614, 33.171665, 20.844469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732334, 33.407906, 20.885256>,  <35.713535, 33.801640, 20.953234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732334, 33.407906, 20.885256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188933, -0.175823, 0.966121,
		-0.980865, -0.013296, -0.194236,
		0.046996, -0.984332, -0.169947,
		35.746433, 33.112606, 20.834272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004353, 33.393761, 21.016191>,  <35.713535, 33.801640, 20.953234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004353, 33.393761, 21.016191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320255, 33.155689, 21.075579>,  <35.509796, 33.012844, 21.111212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320255, 33.155689, 21.075579>,  <35.004353, 33.393761, 21.016191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320255, 33.155689, 21.075579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373822, -0.275076, 0.885771,
		-0.486354, -0.755045, -0.439735,
		0.789757, -0.595181, 0.148468,
		35.557182, 32.977135, 21.120119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668995, 32.759636, 21.260475>,  <35.004353, 33.393761, 21.016191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668995, 32.759636, 21.260475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052956, 32.727154, 21.367807>,  <35.283333, 32.707664, 21.432207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052956, 32.727154, 21.367807>,  <34.668995, 32.759636, 21.260475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052956, 32.727154, 21.367807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280090, -0.319228, 0.905341,
		0.012138, -0.944192, -0.329172,
		0.959898, -0.081208, 0.268333,
		35.340923, 32.702789, 21.448307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785954, 32.112129, 21.375038>,  <34.668995, 32.759636, 21.260475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785954, 32.112129, 21.375038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069157, 32.298969, 21.586901>,  <35.239079, 32.411072, 21.714018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069157, 32.298969, 21.586901>,  <34.785954, 32.112129, 21.375038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069157, 32.298969, 21.586901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211315, -0.575516, 0.790017,
		0.673844, -0.671266, -0.308767,
		0.708012, 0.467101, 0.529656,
		35.281559, 32.439098, 21.745798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017197, 31.562983, 21.944170>,  <34.785954, 32.112129, 21.375038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017197, 31.562983, 21.944170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154476, 31.912493, 22.082003>,  <35.236843, 32.122200, 22.164701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154476, 31.912493, 22.082003>,  <35.017197, 31.562983, 21.944170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154476, 31.912493, 22.082003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034287, -0.378272, 0.925059,
		0.938638, -0.305663, -0.159780,
		0.343197, 0.873774, 0.344580,
		35.257435, 32.174625, 22.185377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654907, 31.370169, 22.237560>,  <35.017197, 31.562983, 21.944170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654907, 31.370169, 22.237560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517555, 31.717638, 22.380390>,  <35.435146, 31.926119, 22.466087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517555, 31.717638, 22.380390>,  <35.654907, 31.370169, 22.237560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517555, 31.717638, 22.380390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109210, -0.340681, 0.933815,
		0.932827, 0.359645, 0.022114,
		-0.343376, 0.868673, 0.357073,
		35.414543, 31.978239, 22.487513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040447, 31.427494, 22.865351>,  <35.654907, 31.370169, 22.237560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040447, 31.427494, 22.865351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716885, 31.662333, 22.877905>,  <35.522747, 31.803236, 22.885437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716885, 31.662333, 22.877905>,  <36.040447, 31.427494, 22.865351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716885, 31.662333, 22.877905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146604, -0.253117, 0.956263,
		0.569363, 0.768928, 0.290819,
		-0.808909, 0.587096, 0.031388,
		35.474213, 31.838461, 22.887321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079811, 31.660679, 23.555754>,  <36.040447, 31.427494, 22.865351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079811, 31.660679, 23.555754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697937, 31.729931, 23.458927>,  <35.468811, 31.771482, 23.400831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697937, 31.729931, 23.458927>,  <36.079811, 31.660679, 23.555754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697937, 31.729931, 23.458927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288242, -0.335485, 0.896865,
		0.074065, 0.926000, 0.370187,
		-0.954689, 0.173130, -0.242065,
		35.411530, 31.781870, 23.386309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781471, 32.088528, 24.087069>,  <36.079811, 31.660679, 23.555754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781471, 32.088528, 24.087069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490986, 31.877920, 23.910259>,  <35.316696, 31.751554, 23.804173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490986, 31.877920, 23.910259>,  <35.781471, 32.088528, 24.087069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490986, 31.877920, 23.910259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287301, -0.351694, 0.890937,
		-0.624556, 0.774006, 0.104135,
		-0.726215, -0.526522, -0.442026,
		35.273121, 31.719963, 23.777651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226696, 32.047707, 24.578665>,  <35.781471, 32.088528, 24.087069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226696, 32.047707, 24.578665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140915, 31.744593, 24.332161>,  <35.089447, 31.562725, 24.184259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140915, 31.744593, 24.332161>,  <35.226696, 32.047707, 24.578665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140915, 31.744593, 24.332161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168867, -0.592672, 0.787543,
		-0.962027, 0.272953, -0.000867,
		-0.214448, -0.757784, -0.616259,
		35.076580, 31.517258, 24.147284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708630, 31.607470, 25.013950>,  <35.226696, 32.047707, 24.578665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708630, 31.607470, 25.013950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807518, 31.369205, 24.708252>,  <34.866852, 31.226246, 24.524834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807518, 31.369205, 24.708252>,  <34.708630, 31.607470, 25.013950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807518, 31.369205, 24.708252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178315, -0.803225, 0.568361,
		-0.952410, -0.004234, -0.304789,
		0.247221, -0.595661, -0.764245,
		34.881683, 31.190508, 24.478979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185287, 31.245361, 24.946339>,  <34.708630, 31.607470, 25.013950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185287, 31.245361, 24.946339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470264, 31.025398, 24.771967>,  <34.641251, 30.893421, 24.667345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470264, 31.025398, 24.771967>,  <34.185287, 31.245361, 24.946339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470264, 31.025398, 24.771967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185171, -0.746517, 0.639081,
		-0.676862, -0.374585, -0.633675,
		0.712440, -0.549907, -0.435927,
		34.683994, 30.860426, 24.641190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871445, 30.525532, 24.796982>,  <34.185287, 31.245361, 24.946339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871445, 30.525532, 24.796982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262924, 30.453880, 24.756876>,  <34.497814, 30.410889, 24.732813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262924, 30.453880, 24.756876>,  <33.871445, 30.525532, 24.796982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262924, 30.453880, 24.756876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109257, -0.868037, 0.484329,
		-0.173791, -0.463060, -0.869121,
		0.978703, -0.179130, -0.100265,
		34.556534, 30.400141, 24.726797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976871, 29.834564, 24.622871>,  <33.871445, 30.525532, 24.796982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976871, 29.834564, 24.622871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352097, 29.857645, 24.759525>,  <34.577232, 29.871494, 24.841516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352097, 29.857645, 24.759525>,  <33.976871, 29.834564, 24.622871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352097, 29.857645, 24.759525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093394, -0.907422, 0.409712,
		0.333647, -0.416241, -0.845827,
		0.938061, 0.057704, 0.341633,
		34.633514, 29.874956, 24.862015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285599, 29.189327, 24.569401>,  <33.976871, 29.834564, 24.622871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285599, 29.189327, 24.569401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502007, 29.386972, 24.841619>,  <34.631851, 29.505560, 25.004951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502007, 29.386972, 24.841619>,  <34.285599, 29.189327, 24.569401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502007, 29.386972, 24.841619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076932, -0.834890, 0.545013,
		0.837482, -0.242508, -0.489708,
		0.541022, 0.494113, 0.680549,
		34.664314, 29.535206, 25.045784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870872, 28.739658, 24.828009>,  <34.285599, 29.189327, 24.569401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870872, 28.739658, 24.828009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839409, 29.027000, 25.104494>,  <34.820530, 29.199406, 25.270386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839409, 29.027000, 25.104494>,  <34.870872, 28.739658, 24.828009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839409, 29.027000, 25.104494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241548, -0.658969, 0.712331,
		0.967195, 0.222995, -0.121681,
		-0.078662, 0.718355, 0.691215,
		34.815811, 29.242506, 25.311859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362511, 28.592985, 25.355394>,  <34.870872, 28.739658, 24.828009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362511, 28.592985, 25.355394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125553, 28.854448, 25.543776>,  <34.983379, 29.011326, 25.656805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125553, 28.854448, 25.543776>,  <35.362511, 28.592985, 25.355394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125553, 28.854448, 25.543776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224334, -0.427614, 0.875683,
		0.773782, 0.624404, 0.106681,
		-0.592398, 0.653656, 0.470955,
		34.947834, 29.050545, 25.685062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.716335, 25.726196, 29.524334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.561867, 26.070639, 29.656622>,  <38.469185, 26.277304, 29.735994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.561867, 26.070639, 29.656622>,  <38.716335, 25.726196, 29.524334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561867, 26.070639, 29.656622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224048, -0.260233, 0.939192,
		0.894806, 0.436782, -0.092435,
		-0.386168, 0.861104, 0.330718,
		38.446018, 26.328970, 29.755836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170322, 25.970295, 29.948248>,  <38.716335, 25.726196, 29.524334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170322, 25.970295, 29.948248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829666, 26.148039, 30.059422>,  <38.625271, 26.254684, 30.126125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829666, 26.148039, 30.059422>,  <39.170322, 25.970295, 29.948248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829666, 26.148039, 30.059422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300600, -0.020291, 0.953534,
		0.429350, 0.895620, -0.116293,
		-0.851644, 0.444358, 0.277936,
		38.574173, 26.281345, 30.142803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348755, 26.300604, 30.448784>,  <39.170322, 25.970295, 29.948248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348755, 26.300604, 30.448784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.957413, 26.319368, 30.529402>,  <38.722607, 26.330627, 30.577772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.957413, 26.319368, 30.529402>,  <39.348755, 26.300604, 30.448784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957413, 26.319368, 30.529402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203699, 0.046779, 0.977915,
		0.036449, 0.997803, -0.055322,
		-0.978355, 0.046913, 0.201546,
		38.663906, 26.333443, 30.589867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262051, 26.867832, 30.880735>,  <39.348755, 26.300604, 30.448784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262051, 26.867832, 30.880735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940208, 26.642675, 30.956387>,  <38.747105, 26.507582, 31.001778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940208, 26.642675, 30.956387>,  <39.262051, 26.867832, 30.880735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940208, 26.642675, 30.956387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181074, 0.070756, 0.980921,
		-0.565534, 0.823497, 0.044995,
		-0.804602, -0.562891, 0.189129,
		38.698830, 26.473808, 31.013124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901955, 27.177788, 31.368088>,  <39.262051, 26.867832, 30.880735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901955, 27.177788, 31.368088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771065, 26.800159, 31.384382>,  <38.692532, 26.573584, 31.394159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771065, 26.800159, 31.384382>,  <38.901955, 27.177788, 31.368088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771065, 26.800159, 31.384382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105697, 0.079409, 0.991223,
		-0.939018, 0.320042, -0.125769,
		-0.327220, -0.944070, 0.040739,
		38.672897, 26.516939, 31.396605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393379, 27.194628, 31.833664>,  <38.901955, 27.177788, 31.368088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393379, 27.194628, 31.833664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475334, 26.803221, 31.824492>,  <38.524506, 26.568377, 31.818987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475334, 26.803221, 31.824492>,  <38.393379, 27.194628, 31.833664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475334, 26.803221, 31.824492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024074, -0.028460, 0.999305,
		-0.978490, -0.204189, -0.029388,
		0.204883, -0.978518, -0.022933,
		38.536800, 26.509665, 31.817612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968651, 26.933445, 32.300556>,  <38.393379, 27.194628, 31.833664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968651, 26.933445, 32.300556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244385, 26.646999, 32.256748>,  <38.409824, 26.475132, 32.230465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244385, 26.646999, 32.256748>,  <37.968651, 26.933445, 32.300556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244385, 26.646999, 32.256748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037249, -0.115940, 0.992558,
		-0.723481, -0.688287, -0.053248,
		0.689338, -0.716113, -0.109518,
		38.451187, 26.432165, 32.223892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853600, 26.474827, 32.966553>,  <37.968651, 26.933445, 32.300556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853600, 26.474827, 32.966553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215660, 26.390993, 32.818615>,  <38.432896, 26.340693, 32.729855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215660, 26.390993, 32.818615>,  <37.853600, 26.474827, 32.966553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215660, 26.390993, 32.818615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297345, -0.309613, 0.903175,
		-0.303801, -0.927477, -0.217926,
		0.905147, -0.209586, -0.369841,
		38.487206, 26.328117, 32.707661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090843, 25.946831, 33.438950>,  <37.853600, 26.474827, 32.966553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090843, 25.946831, 33.438950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388573, 26.142563, 33.257168>,  <38.567211, 26.260002, 33.148098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388573, 26.142563, 33.257168>,  <38.090843, 25.946831, 33.438950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388573, 26.142563, 33.257168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545397, -0.052707, 0.836519,
		0.385382, -0.870504, -0.306111,
		0.744327, 0.489332, -0.454458,
		38.611870, 26.289362, 33.120831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760834, 25.651285, 33.787167>,  <38.090843, 25.946831, 33.438950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760834, 25.651285, 33.787167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844376, 25.998081, 33.606190>,  <38.894501, 26.206160, 33.497604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844376, 25.998081, 33.606190>,  <38.760834, 25.651285, 33.787167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844376, 25.998081, 33.606190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503057, 0.301498, 0.809958,
		0.838638, -0.396767, -0.373177,
		0.208853, 0.866992, -0.452445,
		38.907032, 26.258179, 33.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422539, 25.753098, 33.938072>,  <38.760834, 25.651285, 33.787167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422539, 25.753098, 33.938072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317089, 26.121944, 33.824791>,  <39.253819, 26.343252, 33.756821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317089, 26.121944, 33.824791>,  <39.422539, 25.753098, 33.938072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317089, 26.121944, 33.824791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475388, 0.379659, 0.793640,
		0.839350, 0.074589, -0.538450,
		-0.263624, 0.922115, -0.283208,
		39.238003, 26.398579, 33.739830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023121, 26.111755, 33.938614>,  <39.422539, 25.753098, 33.938072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023121, 26.111755, 33.938614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733009, 26.385027, 33.972645>,  <39.558941, 26.548990, 33.993065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733009, 26.385027, 33.972645>,  <40.023121, 26.111755, 33.938614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733009, 26.385027, 33.972645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392801, 0.309145, 0.866105,
		0.565400, 0.661588, -0.492569,
		-0.725280, 0.683177, 0.085082,
		39.515427, 26.589979, 33.998169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284306, 26.880163, 33.847416>,  <40.023121, 26.111755, 33.938614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284306, 26.880163, 33.847416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947964, 26.849140, 34.061687>,  <39.746159, 26.830526, 34.190250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947964, 26.849140, 34.061687>,  <40.284306, 26.880163, 33.847416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947964, 26.849140, 34.061687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466578, 0.397795, 0.789977,
		-0.274361, 0.914190, -0.298298,
		-0.840851, -0.077560, 0.535681,
		39.695709, 26.825872, 34.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435265, 27.590988, 33.871033>,  <40.284306, 26.880163, 33.847416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435265, 27.590988, 33.871033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639969, 27.715626, 34.191284>,  <40.762791, 27.790407, 34.383434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639969, 27.715626, 34.191284>,  <40.435265, 27.590988, 33.871033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639969, 27.715626, 34.191284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191939, 0.949824, -0.246970,
		-0.837414, -0.027284, 0.545888,
		0.511759, 0.311593, 0.800633,
		40.793495, 27.809103, 34.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102600, 27.847071, 34.413795>,  <40.435265, 27.590988, 33.871033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102600, 27.847071, 34.413795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.456493, 28.019917, 34.343914>,  <40.668831, 28.123623, 34.301987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.456493, 28.019917, 34.343914>,  <40.102600, 27.847071, 34.413795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456493, 28.019917, 34.343914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465694, 0.804045, -0.369649,
		-0.019264, 0.408398, 0.912601,
		0.884736, 0.432113, -0.174699,
		40.721912, 28.149551, 34.291504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055199, 28.544552, 34.566006>,  <40.102600, 27.847071, 34.413795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055199, 28.544552, 34.566006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378666, 28.551052, 34.330788>,  <40.572746, 28.554953, 34.189655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378666, 28.551052, 34.330788>,  <40.055199, 28.544552, 34.566006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378666, 28.551052, 34.330788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361128, 0.802809, -0.474430,
		0.464379, 0.596015, 0.655072,
		0.808665, 0.016250, -0.588045,
		40.621265, 28.555927, 34.154373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267471, 29.246603, 34.601868>,  <40.055199, 28.544552, 34.566006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267471, 29.246603, 34.601868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421150, 29.081043, 34.271759>,  <40.513359, 28.981707, 34.073692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421150, 29.081043, 34.271759>,  <40.267471, 29.246603, 34.601868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421150, 29.081043, 34.271759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215280, 0.829076, -0.516031,
		0.897799, 0.375924, 0.229428,
		0.384202, -0.413901, -0.825273,
		40.536411, 28.956873, 34.024178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535728, 29.844419, 34.229584>,  <40.267471, 29.246603, 34.601868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535728, 29.844419, 34.229584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471954, 29.556290, 33.959557>,  <40.433689, 29.383411, 33.797539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471954, 29.556290, 33.959557>,  <40.535728, 29.844419, 34.229584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471954, 29.556290, 33.959557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250117, 0.690978, -0.678227,
		0.954998, 0.060711, -0.290333,
		-0.159438, -0.720323, -0.675067,
		40.424122, 29.340193, 33.757038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726372, 30.154985, 33.604481>,  <40.535728, 29.844419, 34.229584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726372, 30.154985, 33.604481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491814, 29.855049, 33.481922>,  <40.351078, 29.675087, 33.408386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491814, 29.855049, 33.481922>,  <40.726372, 30.154985, 33.604481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491814, 29.855049, 33.481922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350468, 0.575878, -0.738605,
		0.730282, -0.325734, -0.600488,
		-0.586396, -0.749841, -0.306394,
		40.315895, 29.630096, 33.390003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817669, 30.006460, 32.862926>,  <40.726372, 30.154985, 33.604481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817669, 30.006460, 32.862926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477272, 29.808626, 32.933586>,  <40.273033, 29.689926, 32.975983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477272, 29.808626, 32.933586>,  <40.817669, 30.006460, 32.862926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477272, 29.808626, 32.933586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280426, 0.143517, -0.949086,
		0.444051, -0.857198, -0.260825,
		-0.850987, -0.494585, 0.176651,
		40.221977, 29.660252, 32.986580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622978, 29.790417, 32.167191>,  <40.817669, 30.006460, 32.862926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622978, 29.790417, 32.167191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.294117, 29.772726, 32.394207>,  <40.096798, 29.762112, 32.530418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.294117, 29.772726, 32.394207>,  <40.622978, 29.790417, 32.167191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294117, 29.772726, 32.394207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549898, 0.319526, -0.771697,
		-0.147217, -0.946545, -0.287019,
		-0.822155, -0.044224, 0.567543,
		40.047470, 29.759459, 32.564468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203400, 29.329969, 31.795881>,  <40.622978, 29.790417, 32.167191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203400, 29.329969, 31.795881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969952, 29.555418, 32.029709>,  <39.829884, 29.690687, 32.170006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969952, 29.555418, 32.029709>,  <40.203400, 29.329969, 31.795881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969952, 29.555418, 32.029709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530637, 0.280211, -0.799941,
		-0.614668, -0.777053, 0.135543,
		-0.583616, 0.563623, 0.584570,
		39.794868, 29.724504, 32.205078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578335, 29.222332, 31.479019>,  <40.203400, 29.329969, 31.795881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578335, 29.222332, 31.479019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526539, 29.554239, 31.696171>,  <39.495461, 29.753384, 31.826462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526539, 29.554239, 31.696171>,  <39.578335, 29.222332, 31.479019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526539, 29.554239, 31.696171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664092, 0.333993, -0.668903,
		-0.736352, -0.447139, 0.507792,
		-0.129494, 0.829768, 0.542878,
		39.487690, 29.803169, 31.859034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827419, 29.315210, 31.531456>,  <39.578335, 29.222332, 31.479019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827419, 29.315210, 31.531456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965637, 29.679764, 31.620878>,  <39.048569, 29.898497, 31.674532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965637, 29.679764, 31.620878>,  <38.827419, 29.315210, 31.531456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965637, 29.679764, 31.620878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567249, 0.392639, -0.723922,
		-0.747548, 0.123335, 0.652656,
		0.345543, 0.911385, 0.223555,
		39.069302, 29.953178, 31.687944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267838, 29.727024, 31.362621>,  <38.827419, 29.315210, 31.531456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267838, 29.727024, 31.362621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582535, 29.971066, 31.400162>,  <38.771355, 30.117491, 31.422686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582535, 29.971066, 31.400162>,  <38.267838, 29.727024, 31.362621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582535, 29.971066, 31.400162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244464, 0.447560, -0.860190,
		-0.566810, 0.653805, 0.501263,
		0.786742, 0.610105, 0.093850,
		38.818558, 30.154097, 31.428316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026127, 30.361019, 31.359110>,  <38.267838, 29.727024, 31.362621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026127, 30.361019, 31.359110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401054, 30.376364, 31.220570>,  <38.626011, 30.385571, 31.137445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401054, 30.376364, 31.220570>,  <38.026127, 30.361019, 31.359110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401054, 30.376364, 31.220570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336477, 0.358117, -0.870940,
		0.090623, 0.932888, 0.348578,
		0.937321, 0.038361, -0.346349,
		38.682251, 30.387873, 31.116665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115082, 31.008398, 30.907007>,  <38.026127, 30.361019, 31.359110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115082, 31.008398, 30.907007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436459, 30.794638, 30.802021>,  <38.629284, 30.666382, 30.739029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436459, 30.794638, 30.802021>,  <38.115082, 31.008398, 30.907007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436459, 30.794638, 30.802021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089459, 0.327473, -0.940616,
		0.588618, 0.779215, 0.215300,
		0.803447, -0.534403, -0.262464,
		38.677494, 30.634317, 30.723282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555058, 31.428841, 30.580021>,  <38.115082, 31.008398, 30.907007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555058, 31.428841, 30.580021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646240, 31.064814, 30.441565>,  <38.700951, 30.846397, 30.358492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646240, 31.064814, 30.441565>,  <38.555058, 31.428841, 30.580021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646240, 31.064814, 30.441565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199006, 0.304446, -0.931509,
		0.953118, 0.281225, -0.111710,
		0.227954, -0.910069, -0.346139,
		38.714626, 30.791794, 30.337723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608757, 32.165562, 30.783596>,  <38.555058, 31.428841, 30.580021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608757, 32.165562, 30.783596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.242985, 32.325638, 30.807795>,  <38.023521, 32.421684, 30.822313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.242985, 32.325638, 30.807795>,  <38.608757, 32.165562, 30.783596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242985, 32.325638, 30.807795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056226, -0.022409, 0.998167,
		0.400817, 0.916156, -0.002010,
		-0.914431, 0.400195, 0.060494,
		37.968655, 32.445698, 30.825943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672207, 32.583984, 31.352402>,  <38.608757, 32.165562, 30.783596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672207, 32.583984, 31.352402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275162, 32.560806, 31.309752>,  <38.036934, 32.546902, 31.284161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275162, 32.560806, 31.309752>,  <38.672207, 32.583984, 31.352402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275162, 32.560806, 31.309752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106211, -0.010219, 0.994291,
		-0.058702, 0.998268, 0.003989,
		-0.992609, -0.057943, -0.106627,
		37.977379, 32.543423, 31.277763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389530, 33.036736, 31.766655>,  <38.672207, 32.583984, 31.352402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389530, 33.036736, 31.766655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075634, 32.794945, 31.711811>,  <37.887299, 32.649872, 31.678905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075634, 32.794945, 31.711811>,  <38.389530, 33.036736, 31.766655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075634, 32.794945, 31.711811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201906, 0.040149, 0.978582,
		-0.586021, 0.795613, -0.153553,
		-0.784738, -0.604473, -0.137110,
		37.840214, 32.613602, 31.670677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815369, 33.357002, 32.101097>,  <38.389530, 33.036736, 31.766655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815369, 33.357002, 32.101097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731270, 32.967152, 32.070354>,  <37.680809, 32.733242, 32.051910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731270, 32.967152, 32.070354>,  <37.815369, 33.357002, 32.101097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731270, 32.967152, 32.070354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373841, 0.007511, 0.927463,
		-0.903348, 0.223730, -0.365933,
		-0.210249, -0.974622, -0.076855,
		37.668194, 32.674767, 32.047298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259647, 33.383003, 32.492638>,  <37.815369, 33.357002, 32.101097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259647, 33.383003, 32.492638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369675, 32.999271, 32.467236>,  <37.435692, 32.769032, 32.451996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369675, 32.999271, 32.467236>,  <37.259647, 33.383003, 32.492638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369675, 32.999271, 32.467236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346757, -0.160596, 0.924104,
		-0.896716, -0.232167, -0.376828,
		0.275064, -0.959327, -0.063504,
		37.452194, 32.711475, 32.448185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641033, 32.933571, 32.766983>,  <37.259647, 33.383003, 32.492638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641033, 32.933571, 32.766983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980530, 32.726486, 32.810097>,  <37.184227, 32.602234, 32.835964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980530, 32.726486, 32.810097>,  <36.641033, 32.933571, 32.766983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980530, 32.726486, 32.810097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254842, -0.221842, 0.941192,
		-0.463359, -0.826291, -0.320221,
		0.848737, -0.517715, 0.107782,
		37.235149, 32.571171, 32.842430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406250, 32.465462, 33.220123>,  <36.641033, 32.933571, 32.766983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406250, 32.465462, 33.220123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.802700, 32.414799, 33.236248>,  <37.040569, 32.384399, 33.245922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.802700, 32.414799, 33.236248>,  <36.406250, 32.465462, 33.220123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802700, 32.414799, 33.236248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052057, -0.090821, 0.994506,
		-0.122310, -0.987779, -0.096609,
		0.991126, -0.126668, 0.040312,
		37.100037, 32.376801, 33.248341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445019, 31.887077, 33.633537>,  <36.406250, 32.465462, 33.220123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445019, 31.887077, 33.633537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775188, 32.112652, 33.643749>,  <36.973289, 32.247997, 33.649876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775188, 32.112652, 33.643749>,  <36.445019, 31.887077, 33.633537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775188, 32.112652, 33.643749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004294, -0.038958, 0.999232,
		0.564500, -0.824898, -0.029735,
		0.825422, 0.563938, 0.025534,
		37.022816, 32.281834, 33.651409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902912, 31.516924, 33.958286>,  <36.445019, 31.887077, 33.633537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902912, 31.516924, 33.958286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.051868, 31.885000, 34.006577>,  <37.141243, 32.105846, 34.035549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.051868, 31.885000, 34.006577>,  <36.902912, 31.516924, 33.958286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051868, 31.885000, 34.006577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046530, -0.148430, 0.987828,
		0.926909, -0.362239, -0.098091,
		0.372389, 0.920191, 0.120726,
		37.163586, 32.161057, 34.042793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455750, 31.419626, 34.402454>,  <36.902912, 31.516924, 33.958286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455750, 31.419626, 34.402454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.354656, 31.806011, 34.424519>,  <37.293999, 32.037842, 34.437759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.354656, 31.806011, 34.424519>,  <37.455750, 31.419626, 34.402454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354656, 31.806011, 34.424519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094523, -0.081393, 0.992190,
		0.962907, 0.245547, 0.111876,
		-0.252735, 0.965962, 0.055164,
		37.278835, 32.095798, 34.441067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792599, 31.666721, 34.977409>,  <37.455750, 31.419626, 34.402454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792599, 31.666721, 34.977409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502792, 31.933939, 34.909538>,  <37.328907, 32.094269, 34.868816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502792, 31.933939, 34.909538>,  <37.792599, 31.666721, 34.977409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502792, 31.933939, 34.909538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306511, -0.091783, 0.947432,
		0.617352, 0.738440, 0.271262,
		-0.724519, 0.668044, -0.169678,
		37.285439, 32.134354, 34.858635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887928, 32.339241, 35.396858>,  <37.792599, 31.666721, 34.977409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887928, 32.339241, 35.396858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.513718, 32.210503, 35.338596>,  <37.289192, 32.133259, 35.303638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.513718, 32.210503, 35.338596>,  <37.887928, 32.339241, 35.396858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513718, 32.210503, 35.338596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164622, 0.032377, 0.985825,
		-0.312569, 0.946238, -0.083272,
		-0.935521, -0.321847, -0.145651,
		37.233063, 32.113949, 35.294903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.842548, 34.490047, 27.896244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445244, 34.459469, 27.861410>,  <38.206860, 34.441124, 27.840509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445244, 34.459469, 27.861410>,  <38.842548, 34.490047, 27.896244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445244, 34.459469, 27.861410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057283, -0.329353, 0.942468,
		-0.100728, 0.941108, 0.322755,
		-0.993264, -0.076445, -0.087084,
		38.147266, 34.436535, 27.835285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545654, 34.801426, 28.514721>,  <38.842548, 34.490047, 27.896244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545654, 34.801426, 28.514721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260620, 34.567635, 28.359488>,  <38.089600, 34.427361, 28.266348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260620, 34.567635, 28.359488>,  <38.545654, 34.801426, 28.514721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260620, 34.567635, 28.359488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139275, -0.424294, 0.894750,
		-0.687622, 0.691636, 0.220943,
		-0.712586, -0.584478, -0.388081,
		38.046844, 34.392292, 28.243063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943859, 34.834633, 29.005281>,  <38.545654, 34.801426, 28.514721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943859, 34.834633, 29.005281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894024, 34.503468, 28.786547>,  <37.864120, 34.304768, 28.655306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894024, 34.503468, 28.786547>,  <37.943859, 34.834633, 29.005281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894024, 34.503468, 28.786547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191007, -0.520809, 0.832031,
		-0.973650, 0.208113, -0.093250,
		-0.124591, -0.827917, -0.546836,
		37.856647, 34.255093, 28.622496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187645, 34.542110, 29.063936>,  <37.943859, 34.834633, 29.005281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187645, 34.542110, 29.063936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444351, 34.261585, 28.939806>,  <37.598373, 34.093269, 28.865328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444351, 34.261585, 28.939806>,  <37.187645, 34.542110, 29.063936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444351, 34.261585, 28.939806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143164, -0.507094, 0.849918,
		-0.753421, -0.501019, -0.425837,
		0.641764, -0.701310, -0.310327,
		37.636879, 34.051193, 28.846708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767471, 33.959351, 29.226313>,  <37.187645, 34.542110, 29.063936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767471, 33.959351, 29.226313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149513, 33.847633, 29.186762>,  <37.378738, 33.780602, 29.163031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149513, 33.847633, 29.186762>,  <36.767471, 33.959351, 29.226313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149513, 33.847633, 29.186762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125798, -0.684431, 0.718142,
		-0.268247, -0.673460, -0.688836,
		0.955101, -0.279294, -0.098877,
		37.436043, 33.763844, 29.157099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758553, 33.196899, 29.301121>,  <36.767471, 33.959351, 29.226313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758553, 33.196899, 29.301121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138687, 33.298687, 29.372786>,  <37.366768, 33.359760, 29.415785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138687, 33.298687, 29.372786>,  <36.758553, 33.196899, 29.301121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138687, 33.298687, 29.372786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024772, -0.512008, 0.858624,
		0.310227, -0.820423, -0.480277,
		0.950340, 0.254470, 0.179162,
		37.423790, 33.375027, 29.426535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122875, 32.536316, 29.217426>,  <36.758553, 33.196899, 29.301121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122875, 32.536316, 29.217426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343082, 32.790112, 29.434443>,  <37.475208, 32.942390, 29.564653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343082, 32.790112, 29.434443>,  <37.122875, 32.536316, 29.217426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343082, 32.790112, 29.434443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104874, -0.697302, 0.709063,
		0.828211, -0.333452, -0.450418,
		0.550516, 0.634491, 0.542543,
		37.508236, 32.980457, 29.597206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633274, 32.072903, 29.627645>,  <37.122875, 32.536316, 29.217426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633274, 32.072903, 29.627645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698910, 32.422016, 29.811529>,  <37.738293, 32.631485, 29.921860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698910, 32.422016, 29.811529>,  <37.633274, 32.072903, 29.627645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698910, 32.422016, 29.811529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116931, -0.479948, 0.869469,
		0.979491, -0.088915, -0.180809,
		0.164088, 0.872779, 0.459707,
		37.748135, 32.683849, 29.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219273, 31.995493, 30.138037>,  <37.633274, 32.072903, 29.627645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219273, 31.995493, 30.138037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998680, 32.297493, 30.279938>,  <37.866325, 32.478691, 30.365078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998680, 32.297493, 30.279938>,  <38.219273, 31.995493, 30.138037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998680, 32.297493, 30.279938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136080, -0.338145, 0.931203,
		0.823015, 0.561814, 0.083740,
		-0.551479, 0.754999, 0.354750,
		37.833237, 32.523994, 30.386362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835751, 31.667892, 29.948776>,  <38.219273, 31.995493, 30.138037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835751, 31.667892, 29.948776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800930, 31.271755, 29.905619>,  <38.780037, 31.034073, 29.879725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800930, 31.271755, 29.905619>,  <38.835751, 31.667892, 29.948776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800930, 31.271755, 29.905619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050170, 0.103809, -0.993331,
		0.994940, -0.091886, 0.040649,
		-0.087053, -0.990344, -0.107894,
		38.774815, 30.974651, 29.873251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367020, 31.425817, 29.513771>,  <38.835751, 31.667892, 29.948776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367020, 31.425817, 29.513771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081505, 31.146414, 29.493401>,  <38.910194, 30.978771, 29.481178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081505, 31.146414, 29.493401>,  <39.367020, 31.425817, 29.513771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081505, 31.146414, 29.493401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010375, 0.062158, -0.998012,
		0.700285, -0.712897, -0.037121,
		-0.713788, -0.698508, -0.050924,
		38.867367, 30.936861, 29.478123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575104, 30.951004, 28.974670>,  <39.367020, 31.425817, 29.513771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575104, 30.951004, 28.974670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179482, 30.924927, 29.027620>,  <38.942108, 30.909281, 29.059391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179482, 30.924927, 29.027620>,  <39.575104, 30.951004, 28.974670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179482, 30.924927, 29.027620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135682, 0.049211, -0.989530,
		0.058037, -0.996656, -0.057523,
		-0.989051, -0.065234, 0.132372,
		38.882767, 30.905369, 29.067333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391842, 30.474363, 28.507500>,  <39.575104, 30.951004, 28.974670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391842, 30.474363, 28.507500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038975, 30.650930, 28.573145>,  <38.827255, 30.756870, 28.612532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038975, 30.650930, 28.573145>,  <39.391842, 30.474363, 28.507500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038975, 30.650930, 28.573145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084952, 0.193604, -0.977395,
		-0.463211, -0.876167, -0.133292,
		-0.882167, 0.441417, 0.164111,
		38.774326, 30.783356, 28.622377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867184, 30.233408, 28.008051>,  <39.391842, 30.474363, 28.507500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867184, 30.233408, 28.008051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747429, 30.590906, 28.141670>,  <38.675575, 30.805405, 28.221842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747429, 30.590906, 28.141670>,  <38.867184, 30.233408, 28.008051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747429, 30.590906, 28.141670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250464, 0.264215, -0.931374,
		-0.920673, -0.362504, 0.144749,
		-0.299382, 0.893746, 0.334050,
		38.657616, 30.859030, 28.241886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316353, 30.450832, 27.551439>,  <38.867184, 30.233408, 28.008051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316353, 30.450832, 27.551439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415543, 30.784159, 27.749065>,  <38.475056, 30.984154, 27.867641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415543, 30.784159, 27.749065>,  <38.316353, 30.450832, 27.551439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415543, 30.784159, 27.749065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044810, 0.519312, -0.853409,
		-0.967731, 0.189481, 0.166115,
		0.247970, 0.833314, 0.494064,
		38.489933, 31.034153, 27.897285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840584, 30.935352, 27.288656>,  <38.316353, 30.450832, 27.551439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840584, 30.935352, 27.288656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141491, 31.148788, 27.443254>,  <38.322033, 31.276850, 27.536015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141491, 31.148788, 27.443254>,  <37.840584, 30.935352, 27.288656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141491, 31.148788, 27.443254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016070, 0.571580, -0.820389,
		-0.658666, 0.623360, 0.421405,
		0.752264, 0.533590, 0.386497,
		38.367168, 31.308865, 27.559204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656116, 31.647997, 27.077183>,  <37.840584, 30.935352, 27.288656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656116, 31.647997, 27.077183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046242, 31.643368, 27.165392>,  <38.280315, 31.640591, 27.218317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046242, 31.643368, 27.165392>,  <37.656116, 31.647997, 27.077183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046242, 31.643368, 27.165392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193891, 0.522835, -0.830090,
		-0.105692, 0.852355, 0.512172,
		0.975313, -0.011572, 0.220524,
		38.338837, 31.639896, 27.231548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750675, 32.304165, 27.087696>,  <37.656116, 31.647997, 27.077183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750675, 32.304165, 27.087696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094269, 32.110443, 27.021238>,  <38.300423, 31.994211, 26.981363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094269, 32.110443, 27.021238>,  <37.750675, 32.304165, 27.087696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094269, 32.110443, 27.021238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042587, 0.390951, -0.919426,
		0.510233, 0.782693, 0.356444,
		0.858981, -0.484302, -0.166144,
		38.351963, 31.965153, 26.971395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282139, 32.782219, 26.793657>,  <37.750675, 32.304165, 27.087696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282139, 32.782219, 26.793657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446243, 32.433426, 26.686823>,  <38.544704, 32.224152, 26.622723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446243, 32.433426, 26.686823>,  <38.282139, 32.782219, 26.793657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446243, 32.433426, 26.686823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024650, 0.303366, -0.952555,
		0.911634, 0.384214, 0.145954,
		0.410263, -0.871980, -0.267088,
		38.569321, 32.171833, 26.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787140, 33.019524, 26.394382>,  <38.282139, 32.782219, 26.793657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787140, 33.019524, 26.394382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753983, 32.628094, 26.318987>,  <38.734089, 32.393238, 26.273750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753983, 32.628094, 26.318987>,  <38.787140, 33.019524, 26.394382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753983, 32.628094, 26.318987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259369, 0.161437, -0.952190,
		0.962215, -0.127817, 0.240429,
		-0.082892, -0.978571, -0.188488,
		38.729115, 32.334522, 26.262440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301956, 32.933571, 25.983145>,  <38.787140, 33.019524, 26.394382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301956, 32.933571, 25.983145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052727, 32.624603, 25.933912>,  <38.903187, 32.439224, 25.904373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052727, 32.624603, 25.933912>,  <39.301956, 32.933571, 25.983145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052727, 32.624603, 25.933912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185146, 0.007236, -0.982684,
		0.759932, -0.635075, 0.138501,
		-0.623076, -0.772416, -0.123080,
		38.865803, 32.392879, 25.896988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717682, 32.385609, 25.673822>,  <39.301956, 32.933571, 25.983145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717682, 32.385609, 25.673822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346996, 32.293018, 25.555426>,  <39.124584, 32.237465, 25.484388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346996, 32.293018, 25.555426>,  <39.717682, 32.385609, 25.673822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346996, 32.293018, 25.555426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311610, -0.033234, -0.949629,
		0.209980, -0.972273, 0.102929,
		-0.926719, -0.231477, -0.295991,
		39.068981, 32.223576, 25.466629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721443, 31.733227, 25.246016>,  <39.717682, 32.385609, 25.673822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721443, 31.733227, 25.246016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376812, 31.908249, 25.143082>,  <39.170033, 32.013264, 25.081322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376812, 31.908249, 25.143082>,  <39.721443, 31.733227, 25.246016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376812, 31.908249, 25.143082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283953, -0.004782, -0.958826,
		-0.420772, -0.899178, -0.120126,
		-0.861581, 0.437557, -0.257337,
		39.118340, 32.039516, 25.065880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.667702, 31.465281, 24.978945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.785927, 31.724941, 25.259300>,  <32.856861, 31.880737, 25.427513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.785927, 31.724941, 25.259300>,  <32.667702, 31.465281, 24.978945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785927, 31.724941, 25.259300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078929, -0.747753, 0.659269,
		0.952057, -0.139535, -0.272245,
		0.295563, 0.649150, 0.700890,
		32.874596, 31.919685, 25.469566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199879, 31.093119, 25.448118>,  <32.667702, 31.465281, 24.978945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199879, 31.093119, 25.448118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.110939, 31.407757, 25.678537>,  <33.057575, 31.596539, 25.816790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.110939, 31.407757, 25.678537>,  <33.199879, 31.093119, 25.448118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110939, 31.407757, 25.678537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052779, -0.580262, 0.812718,
		0.973538, 0.211108, 0.087504,
		-0.222347, 0.786594, 0.576049,
		33.044235, 31.643734, 25.851353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655499, 30.994280, 26.038752>,  <33.199879, 31.093119, 25.448118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655499, 30.994280, 26.038752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.393944, 31.268488, 26.166807>,  <33.237011, 31.433012, 26.243641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.393944, 31.268488, 26.166807>,  <33.655499, 30.994280, 26.038752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393944, 31.268488, 26.166807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122942, -0.513782, 0.849066,
		0.746533, 0.515838, 0.420237,
		-0.653891, 0.685521, 0.320138,
		33.197777, 31.474144, 26.262848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914509, 31.304390, 26.694126>,  <33.655499, 30.994280, 26.038752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914509, 31.304390, 26.694126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.516331, 31.334522, 26.670738>,  <33.277424, 31.352602, 26.656706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.516331, 31.334522, 26.670738>,  <33.914509, 31.304390, 26.694126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516331, 31.334522, 26.670738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087742, -0.483447, 0.870965,
		0.037345, 0.872126, 0.487854,
		-0.995443, 0.075332, -0.058468,
		33.217697, 31.357122, 26.653198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747974, 31.477066, 27.342522>,  <33.914509, 31.304390, 26.694126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747974, 31.477066, 27.342522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.382866, 31.382008, 27.209629>,  <33.163803, 31.324972, 27.129894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.382866, 31.382008, 27.209629>,  <33.747974, 31.477066, 27.342522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382866, 31.382008, 27.209629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167762, -0.523480, 0.835359,
		-0.372436, 0.818225, 0.437948,
		-0.912769, -0.237647, -0.332230,
		33.109035, 31.310713, 27.109961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282555, 31.556591, 27.963589>,  <33.747974, 31.477066, 27.342522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282555, 31.556591, 27.963589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.119469, 31.307804, 27.696180>,  <33.021618, 31.158531, 27.535734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.119469, 31.307804, 27.696180>,  <33.282555, 31.556591, 27.963589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119469, 31.307804, 27.696180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139142, -0.681270, 0.718687,
		-0.902444, 0.386041, 0.191225,
		-0.407719, -0.621967, -0.668522,
		32.997154, 31.121214, 27.495623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449955, 31.426184, 28.140383>,  <33.282555, 31.556591, 27.963589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449955, 31.426184, 28.140383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585697, 31.126389, 27.913013>,  <32.667141, 30.946510, 27.776592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585697, 31.126389, 27.913013>,  <32.449955, 31.426184, 28.140383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585697, 31.126389, 27.913013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274258, -0.656860, 0.702366,
		-0.899789, -0.082458, -0.428462,
		0.339355, -0.749490, -0.568421,
		32.687504, 30.901541, 27.742487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982727, 30.833647, 28.199415>,  <32.449955, 31.426184, 28.140383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982727, 30.833647, 28.199415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.303425, 30.649096, 28.047449>,  <32.495846, 30.538364, 27.956270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.303425, 30.649096, 28.047449>,  <31.982727, 30.833647, 28.199415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303425, 30.649096, 28.047449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046924, -0.682296, 0.729569,
		-0.595819, -0.567102, -0.568678,
		0.801746, -0.461375, -0.379915,
		32.543949, 30.510683, 27.933475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852665, 30.077774, 28.183043>,  <31.982727, 30.833647, 28.199415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852665, 30.077774, 28.183043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.251633, 30.094986, 28.160046>,  <32.491013, 30.105312, 28.146248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.251633, 30.094986, 28.160046>,  <31.852665, 30.077774, 28.183043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251633, 30.094986, 28.160046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071804, -0.610106, 0.789059,
		-0.001123, -0.791150, -0.611621,
		0.997418, 0.043031, -0.057493,
		32.550858, 30.107895, 28.142797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058952, 29.376175, 28.180540>,  <31.852665, 30.077774, 28.183043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058952, 29.376175, 28.180540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364048, 29.611204, 28.288607>,  <32.547104, 29.752222, 28.353447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364048, 29.611204, 28.288607>,  <32.058952, 29.376175, 28.180540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364048, 29.611204, 28.288607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125310, -0.544115, 0.829600,
		0.634451, -0.598913, -0.488646,
		0.762738, 0.587573, 0.270164,
		32.592869, 29.787476, 28.369656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478737, 28.896845, 28.409695>,  <32.058952, 29.376175, 28.180540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478737, 28.896845, 28.409695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.639366, 29.231827, 28.557970>,  <32.735744, 29.432816, 28.646935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.639366, 29.231827, 28.557970>,  <32.478737, 28.896845, 28.409695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639366, 29.231827, 28.557970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283144, -0.498457, 0.819372,
		0.870958, -0.224080, -0.437287,
		0.401573, 0.837454, 0.370688,
		32.759838, 29.483063, 28.669176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058018, 28.654623, 28.703815>,  <32.478737, 28.896845, 28.409695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058018, 28.654623, 28.703815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003178, 29.007355, 28.884296>,  <32.970276, 29.218994, 28.992586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003178, 29.007355, 28.884296>,  <33.058018, 28.654623, 28.703815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003178, 29.007355, 28.884296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338906, -0.386258, 0.857874,
		0.930777, 0.270528, -0.245902,
		-0.137098, 0.881827, 0.451204,
		32.962048, 29.271902, 29.019657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581554, 28.742510, 29.231096>,  <33.058018, 28.654623, 28.703815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581554, 28.742510, 29.231096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337173, 29.040062, 29.339457>,  <33.190544, 29.218594, 29.404472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337173, 29.040062, 29.339457>,  <33.581554, 28.742510, 29.231096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337173, 29.040062, 29.339457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299445, -0.099627, 0.948898,
		0.732854, 0.660847, -0.161883,
		-0.610948, 0.743879, 0.270899,
		33.153889, 29.263226, 29.420727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930138, 29.152058, 29.601379>,  <33.581554, 28.742510, 29.231096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930138, 29.152058, 29.601379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559624, 29.242126, 29.722237>,  <33.337315, 29.296167, 29.794752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559624, 29.242126, 29.722237>,  <33.930138, 29.152058, 29.601379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559624, 29.242126, 29.722237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327100, 0.082386, 0.941392,
		0.187085, 0.970829, -0.149967,
		-0.926286, 0.225174, 0.302145,
		33.281738, 29.309679, 29.812880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438816, 29.599655, 29.648417>,  <33.930138, 29.152058, 29.601379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438816, 29.599655, 29.648417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661724, 29.267796, 29.634928>,  <34.795467, 29.068680, 29.626835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661724, 29.267796, 29.634928>,  <34.438816, 29.599655, 29.648417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661724, 29.267796, 29.634928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050648, 0.006575, -0.998695,
		0.828786, 0.558249, -0.038356,
		0.557269, -0.829647, -0.033723,
		34.828903, 29.018902, 29.624811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864464, 29.760014, 29.071398>,  <34.438816, 29.599655, 29.648417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864464, 29.760014, 29.071398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912529, 29.368088, 29.135302>,  <34.941368, 29.132933, 29.173645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912529, 29.368088, 29.135302>,  <34.864464, 29.760014, 29.071398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912529, 29.368088, 29.135302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059651, -0.167762, -0.984021,
		0.990961, 0.108709, -0.078605,
		0.120159, -0.979815, 0.159761,
		34.948578, 29.074142, 29.183229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511417, 29.534523, 28.770834>,  <34.864464, 29.760014, 29.071398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511417, 29.534523, 28.770834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.301823, 29.196741, 28.815252>,  <35.176064, 28.994072, 28.841904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.301823, 29.196741, 28.815252>,  <35.511417, 29.534523, 28.770834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301823, 29.196741, 28.815252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131576, -0.209069, -0.969009,
		0.841500, -0.493139, 0.220660,
		-0.523989, -0.844455, 0.111047,
		35.144627, 28.943405, 28.848566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997913, 28.918724, 28.547859>,  <35.511417, 29.534523, 28.770834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997913, 28.918724, 28.547859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617970, 28.794237, 28.535851>,  <35.390003, 28.719545, 28.528645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617970, 28.794237, 28.535851>,  <35.997913, 28.918724, 28.547859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617970, 28.794237, 28.535851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081161, -0.152701, -0.984934,
		0.301947, -0.937990, 0.170305,
		-0.949864, -0.311220, -0.030021,
		35.333012, 28.700871, 28.526844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086472, 28.392958, 28.077539>,  <35.997913, 28.918724, 28.547859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086472, 28.392958, 28.077539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693794, 28.469114, 28.079372>,  <35.458187, 28.514809, 28.080471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693794, 28.469114, 28.079372>,  <36.086472, 28.392958, 28.077539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693794, 28.469114, 28.079372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028315, -0.122129, -0.992110,
		-0.188328, -0.974082, 0.125284,
		-0.981698, 0.190389, 0.004580,
		35.399284, 28.526232, 28.080746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661030, 27.861385, 27.690971>,  <36.086472, 28.392958, 28.077539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661030, 27.861385, 27.690971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460159, 28.207169, 27.700209>,  <35.339638, 28.414639, 27.705751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460159, 28.207169, 27.700209>,  <35.661030, 27.861385, 27.690971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460159, 28.207169, 27.700209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061726, -0.009194, -0.998051,
		-0.862562, -0.502619, 0.057976,
		-0.502172, 0.864459, 0.023094,
		35.309509, 28.466507, 27.707136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314667, 27.778122, 27.089947>,  <35.661030, 27.861385, 27.690971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314667, 27.778122, 27.089947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228725, 28.158440, 27.179232>,  <35.177158, 28.386631, 27.232803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228725, 28.158440, 27.179232>,  <35.314667, 27.778122, 27.089947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228725, 28.158440, 27.179232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149921, 0.193732, -0.969531,
		-0.965070, -0.241775, 0.100920,
		-0.214857, 0.950796, 0.223212,
		35.164268, 28.443678, 27.246195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557034, 27.904060, 26.817875>,  <35.314667, 27.778122, 27.089947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557034, 27.904060, 26.817875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776588, 28.235075, 26.865046>,  <34.908321, 28.433683, 26.893349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776588, 28.235075, 26.865046>,  <34.557034, 27.904060, 26.817875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776588, 28.235075, 26.865046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380619, 0.373036, -0.846152,
		-0.744212, 0.419558, 0.519730,
		0.548888, 0.827536, 0.117926,
		34.941254, 28.483335, 26.900423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028698, 28.419483, 26.624905>,  <34.557034, 27.904060, 26.817875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028698, 28.419483, 26.624905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389095, 28.588974, 26.587648>,  <34.605331, 28.690668, 26.565294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389095, 28.588974, 26.587648>,  <34.028698, 28.419483, 26.624905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389095, 28.588974, 26.587648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346169, 0.572744, -0.743056,
		-0.261505, 0.701728, 0.662716,
		0.900989, 0.423725, -0.093141,
		34.659393, 28.716091, 26.559706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938381, 29.147280, 26.562618>,  <34.028698, 28.419483, 26.624905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938381, 29.147280, 26.562618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304317, 29.116087, 26.404131>,  <34.523880, 29.097372, 26.309038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304317, 29.116087, 26.404131>,  <33.938381, 29.147280, 26.562618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304317, 29.116087, 26.404131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265680, 0.622681, -0.735991,
		0.304111, 0.778580, 0.548935,
		0.914839, -0.077982, -0.396218,
		34.578770, 29.092691, 26.285265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091724, 29.807529, 26.366598>,  <33.938381, 29.147280, 26.562618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091724, 29.807529, 26.366598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371944, 29.609465, 26.161057>,  <34.540077, 29.490625, 26.037731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371944, 29.609465, 26.161057>,  <34.091724, 29.807529, 26.366598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371944, 29.609465, 26.161057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140189, 0.610553, -0.779469,
		0.699696, 0.618095, 0.358308,
		0.700552, -0.495160, -0.513852,
		34.582111, 29.460917, 26.006901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705982, 30.244930, 26.173336>,  <34.091724, 29.807529, 26.366598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705982, 30.244930, 26.173336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.728863, 29.927691, 25.930777>,  <34.742592, 29.737347, 25.785240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.728863, 29.927691, 25.930777>,  <34.705982, 30.244930, 26.173336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728863, 29.927691, 25.930777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124368, 0.608323, -0.783885,
		0.990586, -0.030573, 0.133436,
		0.057206, -0.793101, -0.606398,
		34.746025, 29.689760, 25.748857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321342, 30.279751, 25.790627>,  <34.705982, 30.244930, 26.173336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321342, 30.279751, 25.790627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.057003, 30.078026, 25.568293>,  <34.898399, 29.956991, 25.434893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.057003, 30.078026, 25.568293>,  <35.321342, 30.279751, 25.790627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057003, 30.078026, 25.568293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179215, 0.613138, -0.769379,
		0.728808, -0.608056, -0.314811,
		-0.660848, -0.504310, -0.555833,
		34.858749, 29.926733, 25.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749031, 29.887644, 25.233944>,  <35.321342, 30.279751, 25.790627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749031, 29.887644, 25.233944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368931, 29.960596, 25.132933>,  <35.140873, 30.004368, 25.072327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368931, 29.960596, 25.132933>,  <35.749031, 29.887644, 25.233944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368931, 29.960596, 25.132933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308726, 0.443456, -0.841448,
		-0.041480, -0.877544, -0.477698,
		-0.950246, 0.182381, -0.252527,
		35.083858, 30.015310, 25.057175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086220, 29.187344, 25.192236>,  <35.749031, 29.887644, 25.233944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086220, 29.187344, 25.192236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443192, 29.082682, 25.045210>,  <36.657375, 29.019884, 24.956995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443192, 29.082682, 25.045210>,  <36.086220, 29.187344, 25.192236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443192, 29.082682, 25.045210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082459, -0.706358, 0.703035,
		-0.443583, -0.657721, -0.608801,
		0.892432, -0.261653, -0.367564,
		36.710922, 29.004185, 24.934940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258846, 28.505953, 25.496088>,  <36.086220, 29.187344, 25.192236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258846, 28.505953, 25.496088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628830, 28.571396, 25.358873>,  <36.850822, 28.610662, 25.276545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628830, 28.571396, 25.358873>,  <36.258846, 28.505953, 25.496088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628830, 28.571396, 25.358873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366938, -0.619527, 0.693933,
		-0.098987, -0.767736, -0.633074,
		0.924964, 0.163608, -0.343037,
		36.906319, 28.620478, 25.255962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525314, 27.871168, 25.363655>,  <36.258846, 28.505953, 25.496088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525314, 27.871168, 25.363655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843056, 28.110622, 25.404907>,  <37.033703, 28.254295, 25.429659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843056, 28.110622, 25.404907>,  <36.525314, 27.871168, 25.363655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843056, 28.110622, 25.404907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304574, -0.539395, 0.785040,
		0.525580, -0.592190, -0.610800,
		0.794355, 0.598635, 0.103129,
		37.081364, 28.290213, 25.435846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004814, 27.399925, 25.547821>,  <36.525314, 27.871168, 25.363655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004814, 27.399925, 25.547821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135670, 27.757624, 25.670006>,  <37.214184, 27.972242, 25.743317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135670, 27.757624, 25.670006>,  <37.004814, 27.399925, 25.547821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135670, 27.757624, 25.670006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214045, -0.384968, 0.897767,
		0.920415, -0.228314, -0.317348,
		0.327142, 0.894244, 0.305460,
		37.233810, 28.025896, 25.761644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683949, 27.251181, 25.807430>,  <37.004814, 27.399925, 25.547821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683949, 27.251181, 25.807430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574593, 27.603058, 25.963070>,  <37.508980, 27.814184, 26.056454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574593, 27.603058, 25.963070>,  <37.683949, 27.251181, 25.807430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574593, 27.603058, 25.963070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288435, -0.310922, 0.905612,
		0.917639, 0.359818, -0.168730,
		-0.273394, 0.879693, 0.389098,
		37.492573, 27.866966, 26.079800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311962, 27.459492, 26.165089>,  <37.683949, 27.251181, 25.807430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311962, 27.459492, 26.165089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002186, 27.655104, 26.325636>,  <37.816322, 27.772470, 26.421965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002186, 27.655104, 26.325636>,  <38.311962, 27.459492, 26.165089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002186, 27.655104, 26.325636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318695, -0.246494, 0.915245,
		0.546516, 0.836715, 0.035043,
		-0.774437, 0.489028, 0.401370,
		37.769855, 27.801813, 26.446047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576557, 27.894939, 26.685637>,  <38.311962, 27.459492, 26.165089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576557, 27.894939, 26.685637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187382, 27.849216, 26.765966>,  <37.953876, 27.821783, 26.814165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187382, 27.849216, 26.765966>,  <38.576557, 27.894939, 26.685637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187382, 27.849216, 26.765966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228946, -0.359121, 0.904774,
		-0.031301, 0.926265, 0.375572,
		-0.972936, -0.114306, 0.200824,
		37.895500, 27.814924, 26.826214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481644, 28.154423, 27.487988>,  <38.576557, 27.894939, 26.685637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481644, 28.154423, 27.487988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157219, 27.937386, 27.400564>,  <37.962563, 27.807163, 27.348110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157219, 27.937386, 27.400564>,  <38.481644, 28.154423, 27.487988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157219, 27.937386, 27.400564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101979, -0.236754, 0.966203,
		-0.575999, 0.805941, 0.136690,
		-0.811065, -0.542592, -0.218559,
		37.913898, 27.774609, 27.334997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960663, 28.369038, 27.894392>,  <38.481644, 28.154423, 27.487988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960663, 28.369038, 27.894392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865753, 27.999832, 27.773235>,  <37.808807, 27.778309, 27.700541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865753, 27.999832, 27.773235>,  <37.960663, 28.369038, 27.894392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865753, 27.999832, 27.773235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037153, -0.302946, 0.952283,
		-0.970731, 0.237209, 0.037589,
		-0.237277, -0.923015, -0.302892,
		37.794571, 27.722927, 27.682367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460178, 28.156607, 28.396168>,  <37.960663, 28.369038, 27.894392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460178, 28.156607, 28.396168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589676, 27.820425, 28.222353>,  <37.667374, 27.618715, 28.118065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589676, 27.820425, 28.222353>,  <37.460178, 28.156607, 28.396168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589676, 27.820425, 28.222353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106541, -0.423965, 0.899390,
		-0.940126, -0.337471, -0.047714,
		0.323748, -0.840456, -0.434535,
		37.686802, 27.568289, 28.091993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053696, 27.515301, 28.587521>,  <37.460178, 28.156607, 28.396168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053696, 27.515301, 28.587521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417671, 27.387869, 28.481302>,  <37.636059, 27.311411, 28.417570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417671, 27.387869, 28.481302>,  <37.053696, 27.515301, 28.587521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417671, 27.387869, 28.481302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023769, -0.679284, 0.733490,
		-0.414056, -0.661121, -0.625681,
		0.909941, -0.318578, -0.265547,
		37.690655, 27.292295, 28.401638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909832, 26.795969, 28.708796>,  <37.053696, 27.515301, 28.587521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909832, 26.795969, 28.708796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306110, 26.849771, 28.700584>,  <37.543877, 26.882053, 28.695658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306110, 26.849771, 28.700584>,  <36.909832, 26.795969, 28.708796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306110, 26.849771, 28.700584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110645, -0.708605, 0.696876,
		0.079190, -0.692666, -0.716898,
		0.990700, 0.134507, -0.020526,
		37.603321, 26.890123, 28.694427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229256, 26.141953, 28.863075>,  <36.909832, 26.795969, 28.708796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229256, 26.141953, 28.863075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.523235, 26.405146, 28.928698>,  <37.699623, 26.563061, 28.968071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.523235, 26.405146, 28.928698>,  <37.229256, 26.141953, 28.863075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523235, 26.405146, 28.928698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139475, -0.383427, 0.912979,
		0.663627, -0.648109, -0.373570,
		0.734947, 0.657981, 0.164057,
		37.743721, 26.602539, 28.977915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837860, 25.743303, 29.120201>,  <37.229256, 26.141953, 28.863075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837860, 25.743303, 29.120201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888412, 26.115988, 29.256403>,  <37.918743, 26.339598, 29.338123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888412, 26.115988, 29.256403>,  <37.837860, 25.743303, 29.120201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888412, 26.115988, 29.256403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147178, -0.357069, 0.922410,
		0.981003, -0.066460, -0.182254,
		0.126380, 0.931711, 0.340504,
		37.926327, 26.395500, 29.358555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.437511, 31.441162, 24.573730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.236622, 31.786654, 24.590448>,  <39.116089, 31.993948, 24.600479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.236622, 31.786654, 24.590448>,  <39.437511, 31.441162, 24.573730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236622, 31.786654, 24.590448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160813, 0.140776, -0.976894,
		-0.849654, -0.483897, -0.209599,
		-0.502223, 0.863728, 0.041794,
		39.085957, 32.045773, 24.602987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050072, 31.441221, 24.009851>,  <39.437511, 31.441162, 24.573730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050072, 31.441221, 24.009851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056576, 31.823370, 24.127834>,  <39.060478, 32.052658, 24.198624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056576, 31.823370, 24.127834>,  <39.050072, 31.441221, 24.009851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056576, 31.823370, 24.127834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170216, 0.288045, -0.942368,
		-0.985273, 0.065526, -0.157937,
		0.016256, 0.955373, 0.294956,
		39.061451, 32.109982, 24.216322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830650, 31.792683, 23.376570>,  <39.050072, 31.441221, 24.009851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830650, 31.792683, 23.376570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983494, 32.084999, 23.602823>,  <39.075199, 32.260387, 23.738575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983494, 32.084999, 23.602823>,  <38.830650, 31.792683, 23.376570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983494, 32.084999, 23.602823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273840, 0.495046, -0.824585,
		-0.882611, 0.469976, -0.010957,
		0.382111, 0.730789, 0.565632,
		39.098125, 32.304237, 23.772512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467030, 32.364311, 23.194429>,  <38.830650, 31.792683, 23.376570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467030, 32.364311, 23.194429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821163, 32.500439, 23.321152>,  <39.033642, 32.582115, 23.397186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821163, 32.500439, 23.321152>,  <38.467030, 32.364311, 23.194429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821163, 32.500439, 23.321152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176234, 0.384912, -0.905972,
		-0.430261, 0.857920, 0.280800,
		0.885335, 0.340318, 0.316807,
		39.086765, 32.602535, 23.416193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469028, 32.962341, 22.868750>,  <38.467030, 32.364311, 23.194429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469028, 32.962341, 22.868750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851269, 32.895428, 22.965784>,  <39.080612, 32.855278, 23.024004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851269, 32.895428, 22.965784>,  <38.469028, 32.962341, 22.868750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851269, 32.895428, 22.965784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294523, 0.515906, -0.804424,
		0.009420, 0.840152, 0.542269,
		0.955598, -0.167288, 0.242584,
		39.137947, 32.845242, 23.038559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812180, 33.585461, 22.600475>,  <38.469028, 32.962341, 22.868750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812180, 33.585461, 22.600475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.085247, 33.294376, 22.627016>,  <39.249088, 33.119724, 22.642941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.085247, 33.294376, 22.627016>,  <38.812180, 33.585461, 22.600475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085247, 33.294376, 22.627016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469054, 0.366763, -0.803414,
		0.560320, 0.579584, 0.591713,
		0.682664, -0.727714, 0.066352,
		39.290047, 33.076061, 22.646921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436588, 33.962883, 22.681986>,  <38.812180, 33.585461, 22.600475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436588, 33.962883, 22.681986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.523952, 33.598072, 22.543125>,  <39.576370, 33.379185, 22.459808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.523952, 33.598072, 22.543125>,  <39.436588, 33.962883, 22.681986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523952, 33.598072, 22.543125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421195, 0.408997, -0.809516,
		0.880280, 0.030586, 0.473467,
		0.218407, -0.912023, -0.347150,
		39.589474, 33.324467, 22.438980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036442, 34.003532, 22.280830>,  <39.436588, 33.962883, 22.681986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036442, 34.003532, 22.280830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.883427, 33.667645, 22.126673>,  <39.791618, 33.466110, 22.034178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.883427, 33.667645, 22.126673>,  <40.036442, 34.003532, 22.280830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883427, 33.667645, 22.126673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312573, 0.274905, -0.909244,
		0.869461, -0.468285, 0.157313,
		-0.382539, -0.839724, -0.385392,
		39.768665, 33.415726, 22.011055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588051, 33.779884, 21.758987>,  <40.036442, 34.003532, 22.280830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588051, 33.779884, 21.758987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.239342, 33.601635, 21.677576>,  <40.030117, 33.494686, 21.628729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.239342, 33.601635, 21.677576>,  <40.588051, 33.779884, 21.758987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239342, 33.601635, 21.677576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225102, 0.004634, -0.974324,
		0.435129, -0.895207, 0.096271,
		-0.871776, -0.445627, -0.203529,
		39.977810, 33.467945, 21.616518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781502, 33.327682, 21.196739>,  <40.588051, 33.779884, 21.758987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781502, 33.327682, 21.196739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383572, 33.368317, 21.195826>,  <40.144814, 33.392696, 21.195278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383572, 33.368317, 21.195826>,  <40.781502, 33.327682, 21.196739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383572, 33.368317, 21.195826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025752, 0.230339, -0.972770,
		-0.098291, -0.967794, -0.231763,
		-0.994824, 0.101583, -0.002282,
		40.085125, 33.398792, 21.195141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632118, 33.222267, 20.521715>,  <40.781502, 33.327682, 21.196739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632118, 33.222267, 20.521715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.285770, 33.359627, 20.667231>,  <40.077961, 33.442043, 20.754539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.285770, 33.359627, 20.667231>,  <40.632118, 33.222267, 20.521715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285770, 33.359627, 20.667231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234872, 0.363014, -0.901696,
		-0.441700, -0.866198, -0.233670,
		-0.865873, 0.343396, 0.363789,
		40.026009, 33.462646, 20.776367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042889, 32.978973, 20.150471>,  <40.632118, 33.222267, 20.521715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042889, 32.978973, 20.150471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.961060, 33.338844, 20.304731>,  <39.911961, 33.554768, 20.397287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.961060, 33.338844, 20.304731>,  <40.042889, 32.978973, 20.150471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961060, 33.338844, 20.304731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262849, 0.329024, -0.907003,
		-0.942899, -0.286919, 0.169169,
		-0.204576, 0.899678, 0.385653,
		39.899685, 33.608749, 20.420427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315617, 33.211166, 20.136103>,  <40.042889, 32.978973, 20.150471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315617, 33.211166, 20.136103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.559582, 33.528084, 20.129452>,  <39.705963, 33.718235, 20.125462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.559582, 33.528084, 20.129452>,  <39.315617, 33.211166, 20.136103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559582, 33.528084, 20.129452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461370, 0.337951, -0.820321,
		-0.644314, 0.507999, 0.571662,
		0.609915, 0.792292, -0.016629,
		39.742558, 33.765770, 20.124462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896118, 32.602314, 20.057453>,  <39.315617, 33.211166, 20.136103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896118, 32.602314, 20.057453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745209, 32.929085, 19.882963>,  <38.654663, 33.125149, 19.778269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745209, 32.929085, 19.882963>,  <38.896118, 32.602314, 20.057453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745209, 32.929085, 19.882963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699893, -0.056953, -0.711974,
		-0.606475, -0.573921, -0.550275,
		-0.377277, 0.816928, -0.436223,
		38.632027, 33.174164, 19.752096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958138, 31.822508, 19.966894>,  <38.896118, 32.602314, 20.057453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958138, 31.822508, 19.966894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585148, 31.679434, 19.987110>,  <38.361355, 31.593590, 19.999239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585148, 31.679434, 19.987110>,  <38.958138, 31.822508, 19.966894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585148, 31.679434, 19.987110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211581, -0.427391, 0.878960,
		-0.292791, 0.830300, 0.474210,
		-0.932474, -0.357685, 0.050539,
		38.305405, 31.572128, 20.002272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680470, 31.877954, 20.698780>,  <38.958138, 31.822508, 19.966894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680470, 31.877954, 20.698780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404991, 31.639067, 20.534332>,  <38.239704, 31.495733, 20.435663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404991, 31.639067, 20.534332>,  <38.680470, 31.877954, 20.698780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404991, 31.639067, 20.534332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203075, -0.385444, 0.900108,
		-0.696027, 0.703392, 0.144174,
		-0.688700, -0.597221, -0.411121,
		38.198380, 31.459900, 20.410995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019306, 31.921501, 21.160740>,  <38.680470, 31.877954, 20.698780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019306, 31.921501, 21.160740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027096, 31.572554, 20.965357>,  <38.031769, 31.363186, 20.848127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027096, 31.572554, 20.965357>,  <38.019306, 31.921501, 21.160740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027096, 31.572554, 20.965357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258167, -0.476371, 0.840489,
		-0.965904, 0.109737, -0.234493,
		0.019473, -0.872370, -0.488459,
		38.032936, 31.310843, 20.818819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546726, 31.493237, 21.415695>,  <38.019306, 31.921501, 21.160740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546726, 31.493237, 21.415695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726551, 31.183987, 21.236732>,  <37.834446, 30.998436, 21.129354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726551, 31.183987, 21.236732>,  <37.546726, 31.493237, 21.415695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726551, 31.183987, 21.236732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431707, -0.626549, 0.648896,
		-0.781999, -0.098571, -0.615435,
		0.449562, -0.773124, -0.447407,
		37.861420, 30.952049, 21.102510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969524, 30.979267, 21.417583>,  <37.546726, 31.493237, 21.415695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969524, 30.979267, 21.417583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322155, 30.799307, 21.360437>,  <37.533733, 30.691330, 21.326149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322155, 30.799307, 21.360437>,  <36.969524, 30.979267, 21.417583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322155, 30.799307, 21.360437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246641, -0.697075, 0.673242,
		-0.402480, -0.558279, -0.725489,
		0.881577, -0.449902, -0.142865,
		37.586628, 30.664337, 21.317577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841099, 30.296654, 21.401077>,  <36.969524, 30.979267, 21.417583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841099, 30.296654, 21.401077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223949, 30.305698, 21.516588>,  <37.453659, 30.311125, 21.585896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223949, 30.305698, 21.516588>,  <36.841099, 30.296654, 21.401077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223949, 30.305698, 21.516588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230262, -0.545455, 0.805890,
		0.175740, -0.837835, -0.516864,
		0.957129, 0.022613, 0.288779,
		37.511089, 30.312483, 21.603222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036819, 29.643383, 21.520493>,  <36.841099, 30.296654, 21.401077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036819, 29.643383, 21.520493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304066, 29.853500, 21.731277>,  <37.464413, 29.979570, 21.857748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304066, 29.853500, 21.731277>,  <37.036819, 29.643383, 21.520493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304066, 29.853500, 21.731277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259737, -0.499023, 0.826748,
		0.697251, -0.689235, -0.196967,
		0.668115, 0.525292, 0.526964,
		37.504501, 30.011087, 21.889366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306534, 29.125460, 21.959028>,  <37.036819, 29.643383, 21.520493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306534, 29.125460, 21.959028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424088, 29.462666, 22.139229>,  <37.494621, 29.664989, 22.247349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424088, 29.462666, 22.139229>,  <37.306534, 29.125460, 21.959028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424088, 29.462666, 22.139229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232664, -0.394048, 0.889153,
		0.927091, -0.366128, 0.080333,
		0.293889, 0.843016, 0.450503,
		37.512253, 29.715570, 22.274380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709229, 28.888510, 22.555149>,  <37.306534, 29.125460, 21.959028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709229, 28.888510, 22.555149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.605667, 29.264004, 22.646139>,  <37.543530, 29.489300, 22.700733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.605667, 29.264004, 22.646139>,  <37.709229, 28.888510, 22.555149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605667, 29.264004, 22.646139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162193, -0.274414, 0.947835,
		0.952189, 0.208501, 0.223302,
		-0.258902, 0.938735, 0.227476,
		37.527996, 29.545624, 22.714382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068020, 29.062391, 23.197807>,  <37.709229, 28.888510, 22.555149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068020, 29.062391, 23.197807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782703, 29.342314, 23.182394>,  <37.611511, 29.510267, 23.173145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782703, 29.342314, 23.182394>,  <38.068020, 29.062391, 23.197807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782703, 29.342314, 23.182394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222222, -0.173677, 0.959403,
		0.664701, 0.692900, 0.279395,
		-0.713295, 0.699804, -0.038534,
		37.568714, 29.552256, 23.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180145, 29.734726, 23.690615>,  <38.068020, 29.062391, 23.197807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180145, 29.734726, 23.690615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795223, 29.652426, 23.619473>,  <37.564270, 29.603046, 23.576786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795223, 29.652426, 23.619473>,  <38.180145, 29.734726, 23.690615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795223, 29.652426, 23.619473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142503, -0.175553, 0.974102,
		-0.231643, 0.962730, 0.139616,
		-0.962307, -0.205749, -0.177858,
		37.506531, 29.590702, 23.566114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904522, 29.759928, 24.339569>,  <38.180145, 29.734726, 23.690615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904522, 29.759928, 24.339569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580223, 29.638699, 24.139238>,  <37.385643, 29.565960, 24.019039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580223, 29.638699, 24.139238>,  <37.904522, 29.759928, 24.339569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580223, 29.638699, 24.139238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393075, -0.352129, 0.849410,
		-0.433791, 0.885523, 0.166358,
		-0.810751, -0.303075, -0.500827,
		37.336998, 29.547775, 23.988991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385155, 30.058548, 24.685246>,  <37.904522, 29.759928, 24.339569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385155, 30.058548, 24.685246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.225792, 29.748802, 24.488621>,  <37.130173, 29.562956, 24.370646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.225792, 29.748802, 24.488621>,  <37.385155, 30.058548, 24.685246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225792, 29.748802, 24.488621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516945, -0.253125, 0.817738,
		-0.757653, 0.579904, -0.299455,
		-0.398410, -0.774363, -0.491560,
		37.106270, 29.516493, 24.341152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627129, 29.997707, 24.963636>,  <37.385155, 30.058548, 24.685246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627129, 29.997707, 24.963636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775387, 29.675344, 24.778971>,  <36.864342, 29.481926, 24.668171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775387, 29.675344, 24.778971>,  <36.627129, 29.997707, 24.963636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775387, 29.675344, 24.778971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273638, -0.569760, 0.774917,
		-0.887552, -0.160886, -0.431703,
		0.370641, -0.805909, -0.461667,
		36.886578, 29.433571, 24.640471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951836, 30.352789, 24.703968>,  <36.627129, 29.997707, 24.963636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951836, 30.352789, 24.703968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553589, 30.330597, 24.673853>,  <35.314640, 30.317282, 24.655783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553589, 30.330597, 24.673853>,  <35.951836, 30.352789, 24.703968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553589, 30.330597, 24.673853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032853, 0.546269, -0.836965,
		0.087562, -0.835770, -0.542053,
		-0.995617, -0.055478, -0.075290,
		35.254902, 30.313953, 24.651266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739292, 30.389271, 24.030916>,  <35.951836, 30.352789, 24.703968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739292, 30.389271, 24.030916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403542, 30.515188, 24.208166>,  <35.202091, 30.590738, 24.314516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403542, 30.515188, 24.208166>,  <35.739292, 30.389271, 24.030916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403542, 30.515188, 24.208166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099449, 0.712533, -0.694555,
		-0.534380, -0.627059, -0.566775,
		-0.839373, 0.314792, 0.443124,
		35.151730, 30.609625, 24.341103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146511, 30.347094, 23.512232>,  <35.739292, 30.389271, 24.030916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146511, 30.347094, 23.512232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051331, 30.611595, 23.796801>,  <34.994221, 30.770296, 23.967543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051331, 30.611595, 23.796801>,  <35.146511, 30.347094, 23.512232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051331, 30.611595, 23.796801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061899, 0.720649, -0.690531,
		-0.969303, -0.208349, -0.130548,
		-0.237951, 0.661253, 0.711424,
		34.979946, 30.809971, 24.010227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581474, 30.710932, 23.302076>,  <35.146511, 30.347094, 23.512232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581474, 30.710932, 23.302076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749722, 30.958235, 23.567657>,  <34.850670, 31.106617, 23.727007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749722, 30.958235, 23.567657>,  <34.581474, 30.710932, 23.302076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749722, 30.958235, 23.567657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066775, 0.708759, -0.702284,
		-0.904776, 0.339730, 0.256834,
		0.420620, 0.618260, 0.663953,
		34.875908, 31.143713, 23.766844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275734, 31.244799, 23.124197>,  <34.581474, 30.710932, 23.302076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275734, 31.244799, 23.124197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578205, 31.388765, 23.342794>,  <34.759689, 31.475145, 23.473953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578205, 31.388765, 23.342794>,  <34.275734, 31.244799, 23.124197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578205, 31.388765, 23.342794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173943, 0.694546, -0.698104,
		-0.630822, 0.622950, 0.462597,
		0.756179, 0.359914, 0.546493,
		34.805058, 31.496740, 23.506742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155182, 31.972672, 23.166853>,  <34.275734, 31.244799, 23.124197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155182, 31.972672, 23.166853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546822, 31.913044, 23.222197>,  <34.781807, 31.877268, 23.255404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546822, 31.913044, 23.222197>,  <34.155182, 31.972672, 23.166853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546822, 31.913044, 23.222197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203144, 0.683853, -0.700769,
		0.009845, 0.714229, 0.699843,
		0.979099, -0.149068, 0.138359,
		34.840553, 31.868324, 23.263704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528297, 32.723148, 23.186291>,  <34.155182, 31.972672, 23.166853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528297, 32.723148, 23.186291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797150, 32.445946, 23.082005>,  <34.958462, 32.279625, 23.019432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797150, 32.445946, 23.082005>,  <34.528297, 32.723148, 23.186291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797150, 32.445946, 23.082005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196433, 0.506393, -0.839631,
		0.713898, 0.513130, 0.476494,
		0.672134, -0.693010, -0.260718,
		34.998791, 32.238041, 23.003790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351803, 33.498207, 23.373995>,  <34.528297, 32.723148, 23.186291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351803, 33.498207, 23.373995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955780, 33.486198, 23.319038>,  <33.718166, 33.478992, 23.286064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955780, 33.486198, 23.319038>,  <34.351803, 33.498207, 23.373995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955780, 33.486198, 23.319038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125049, -0.259099, 0.957722,
		-0.064351, 0.965384, 0.252770,
		-0.990062, -0.030021, -0.137393,
		33.658760, 33.477192, 23.277821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091377, 33.863926, 23.939974>,  <34.351803, 33.498207, 23.373995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091377, 33.863926, 23.939974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776386, 33.647278, 23.822309>,  <33.587391, 33.517288, 23.751711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776386, 33.647278, 23.822309>,  <34.091377, 33.863926, 23.939974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776386, 33.647278, 23.822309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119945, -0.333472, 0.935099,
		-0.604559, 0.771653, 0.197637,
		-0.787478, -0.541617, -0.294160,
		33.540142, 33.484795, 23.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597221, 33.989498, 24.449539>,  <34.091377, 33.863926, 23.939974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597221, 33.989498, 24.449539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475666, 33.657421, 24.262596>,  <33.402733, 33.458176, 24.150431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475666, 33.657421, 24.262596>,  <33.597221, 33.989498, 24.449539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475666, 33.657421, 24.262596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343993, -0.361850, 0.866449,
		-0.888437, 0.424073, -0.175619,
		-0.303890, -0.830197, -0.467359,
		33.384499, 33.408363, 24.122389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007347, 33.948460, 24.763084>,  <33.597221, 33.989498, 24.449539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007347, 33.948460, 24.763084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080807, 33.597763, 24.585278>,  <33.124882, 33.387344, 24.478594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080807, 33.597763, 24.585278>,  <33.007347, 33.948460, 24.763084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080807, 33.597763, 24.585278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349801, -0.480896, 0.803977,
		-0.918648, 0.007846, -0.394999,
		0.183645, -0.876743, -0.444519,
		33.135899, 33.334740, 24.451921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368500, 33.498486, 24.714691>,  <33.007347, 33.948460, 24.763084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368500, 33.498486, 24.714691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704208, 33.281460, 24.728828>,  <32.905632, 33.151245, 24.737310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704208, 33.281460, 24.728828>,  <32.368500, 33.498486, 24.714691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704208, 33.281460, 24.728828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387633, -0.551503, 0.738638,
		-0.381263, -0.633619, -0.673175,
		0.839273, -0.542560, 0.035344,
		32.955990, 33.118690, 24.739431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083675, 32.872402, 24.722275>,  <32.368500, 33.498486, 24.714691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083675, 32.872402, 24.722275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453995, 32.807060, 24.858633>,  <32.676186, 32.767857, 24.940449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453995, 32.807060, 24.858633>,  <32.083675, 32.872402, 24.722275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453995, 32.807060, 24.858633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337261, -0.764250, 0.549706,
		0.170734, -0.623888, -0.762636,
		0.925800, -0.163354, 0.340897,
		32.731735, 32.758053, 24.960901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033150, 32.214500, 24.899982>,  <32.083675, 32.872402, 24.722275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033150, 32.214500, 24.899982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382816, 32.298080, 25.075335>,  <32.592617, 32.348228, 25.180546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382816, 32.298080, 25.075335>,  <32.033150, 32.214500, 24.899982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382816, 32.298080, 25.075335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075454, -0.833303, 0.547643,
		0.479731, -0.511808, -0.712679,
		0.874165, 0.208947, 0.438380,
		32.645065, 32.360764, 25.206848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.913609, 36.641289, 21.693789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188927, 36.383514, 21.560555>,  <37.354118, 36.228848, 21.480614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188927, 36.383514, 21.560555>,  <36.913609, 36.641289, 21.693789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188927, 36.383514, 21.560555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115481, -0.550637, 0.826719,
		-0.716180, -0.530562, -0.453421,
		0.688296, -0.644441, -0.333085,
		37.395416, 36.190182, 21.460629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739254, 35.845234, 22.003120>,  <36.913609, 36.641289, 21.693789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739254, 35.845234, 22.003120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110317, 35.792107, 21.863512>,  <37.332954, 35.760231, 21.779747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110317, 35.792107, 21.863512>,  <36.739254, 35.845234, 22.003120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110317, 35.792107, 21.863512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230029, -0.533032, 0.814225,
		-0.294182, -0.835605, -0.463919,
		0.927655, -0.132816, -0.349022,
		37.388615, 35.752262, 21.758806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867653, 35.128712, 21.969387>,  <36.739254, 35.845234, 22.003120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867653, 35.128712, 21.969387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210533, 35.333973, 21.986763>,  <37.416260, 35.457130, 21.997189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210533, 35.333973, 21.986763>,  <36.867653, 35.128712, 21.969387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210533, 35.333973, 21.986763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169499, -0.360773, 0.917122,
		0.486298, -0.778790, -0.396233,
		0.857195, 0.513156, 0.043439,
		37.467693, 35.487919, 21.999794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274837, 34.596786, 22.201662>,  <36.867653, 35.128712, 21.969387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274837, 34.596786, 22.201662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462925, 34.942436, 22.273417>,  <37.575779, 35.149826, 22.316469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462925, 34.942436, 22.273417>,  <37.274837, 34.596786, 22.201662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462925, 34.942436, 22.273417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087274, -0.247794, 0.964874,
		0.878225, -0.438044, -0.191933,
		0.470217, 0.864127, 0.179388,
		37.603989, 35.201675, 22.327232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878551, 34.506245, 22.594988>,  <37.274837, 34.596786, 22.201662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878551, 34.506245, 22.594988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757931, 34.880737, 22.667149>,  <37.685558, 35.105431, 22.710445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757931, 34.880737, 22.667149>,  <37.878551, 34.506245, 22.594988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757931, 34.880737, 22.667149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197033, -0.123935, 0.972532,
		0.932870, 0.328810, -0.147096,
		-0.301548, 0.936229, 0.180402,
		37.667465, 35.161606, 22.721270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299732, 34.671375, 23.164892>,  <37.878551, 34.506245, 22.594988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299732, 34.671375, 23.164892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.020687, 34.957874, 23.157673>,  <37.853260, 35.129772, 23.153341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.020687, 34.957874, 23.157673>,  <38.299732, 34.671375, 23.164892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020687, 34.957874, 23.157673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022536, 0.047111, 0.998635,
		0.716117, 0.696258, -0.049006,
		-0.697617, 0.716244, -0.018046,
		37.811401, 35.172749, 23.152260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605309, 35.216621, 23.433975>,  <38.299732, 34.671375, 23.164892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605309, 35.216621, 23.433975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.218311, 35.305431, 23.482428>,  <37.986115, 35.358715, 23.511499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.218311, 35.305431, 23.482428>,  <38.605309, 35.216621, 23.433975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218311, 35.305431, 23.482428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151007, 0.122893, 0.980864,
		0.202886, 0.967266, -0.152424,
		-0.967488, 0.222021, 0.121131,
		37.928066, 35.372036, 23.518766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571842, 35.781387, 23.886141>,  <38.605309, 35.216621, 23.433975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571842, 35.781387, 23.886141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.207455, 35.617657, 23.906467>,  <37.988823, 35.519417, 23.918663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.207455, 35.617657, 23.906467>,  <38.571842, 35.781387, 23.886141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207455, 35.617657, 23.906467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033725, 0.048871, 0.998235,
		-0.411090, 0.911077, -0.030716,
		-0.910971, -0.409329, 0.050816,
		37.934162, 35.494858, 23.921713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268456, 36.072147, 24.510132>,  <38.571842, 35.781387, 23.886141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268456, 36.072147, 24.510132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.043598, 35.749401, 24.437510>,  <37.908684, 35.555752, 24.393936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.043598, 35.749401, 24.437510>,  <38.268456, 36.072147, 24.510132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043598, 35.749401, 24.437510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141401, -0.122524, 0.982341,
		-0.814863, 0.577887, -0.045216,
		-0.562142, -0.806867, -0.181554,
		37.874954, 35.507339, 24.383043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814686, 36.041729, 25.078554>,  <38.268456, 36.072147, 24.510132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814686, 36.041729, 25.078554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809498, 35.687965, 24.891939>,  <37.806385, 35.475708, 24.779970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809498, 35.687965, 24.891939>,  <37.814686, 36.041729, 25.078554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809498, 35.687965, 24.891939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012566, -0.466684, 0.884335,
		-0.999837, 0.005608, 0.017167,
		-0.012970, -0.884406, -0.466537,
		37.805607, 35.422642, 24.751978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188519, 35.803246, 25.153036>,  <37.814686, 36.041729, 25.078554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188519, 35.803246, 25.153036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.443298, 35.496952, 25.117388>,  <37.596169, 35.313175, 25.095999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.443298, 35.496952, 25.117388>,  <37.188519, 35.803246, 25.153036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443298, 35.496952, 25.117388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330959, -0.376027, 0.865488,
		-0.696246, -0.521779, -0.492938,
		0.636952, -0.765734, -0.089120,
		37.634384, 35.267231, 25.090652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775330, 35.302910, 25.423506>,  <37.188519, 35.803246, 25.153036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775330, 35.302910, 25.423506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.151287, 35.167690, 25.442778>,  <37.376862, 35.086559, 25.454340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.151287, 35.167690, 25.442778>,  <36.775330, 35.302910, 25.423506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151287, 35.167690, 25.442778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124966, -0.209231, 0.969848,
		-0.317774, -0.917577, -0.238900,
		0.939895, -0.338047, 0.048178,
		37.433254, 35.066277, 25.457232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115299, 34.866257, 25.413874>,  <36.775330, 35.302910, 25.423506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115299, 34.866257, 25.413874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.740688, 34.983570, 25.490715>,  <35.515923, 35.053959, 25.536819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.740688, 34.983570, 25.490715>,  <36.115299, 34.866257, 25.413874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740688, 34.983570, 25.490715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134515, 0.205413, -0.969387,
		-0.323770, -0.933696, -0.152922,
		-0.936525, 0.293288, 0.192103,
		35.459732, 35.071556, 25.548346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677422, 34.513817, 24.879353>,  <36.115299, 34.866257, 25.413874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677422, 34.513817, 24.879353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.498398, 34.840694, 25.024614>,  <35.390984, 35.036819, 25.111773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.498398, 34.840694, 25.024614>,  <35.677422, 34.513817, 24.879353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498398, 34.840694, 25.024614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323647, 0.230548, -0.917660,
		-0.833633, -0.528242, 0.161299,
		-0.447560, 0.817195, 0.363157,
		35.364128, 35.085854, 25.133562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057163, 34.513783, 24.494425>,  <35.677422, 34.513817, 24.879353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057163, 34.513783, 24.494425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094505, 34.880081, 24.650730>,  <35.116909, 35.099861, 24.744513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094505, 34.880081, 24.650730>,  <35.057163, 34.513783, 24.494425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094505, 34.880081, 24.650730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380496, 0.395499, -0.835945,
		-0.920059, -0.070644, 0.385359,
		0.093354, 0.915746, 0.390762,
		35.122513, 35.154804, 24.767960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454716, 34.833618, 24.456427>,  <35.057163, 34.513783, 24.494425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454716, 34.833618, 24.456427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.720245, 35.132515, 24.444023>,  <34.879562, 35.311855, 24.436581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.720245, 35.132515, 24.444023>,  <34.454716, 34.833618, 24.456427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720245, 35.132515, 24.444023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384856, 0.305751, -0.870863,
		-0.641266, 0.590035, 0.490547,
		0.663825, 0.747245, -0.031010,
		34.919392, 35.356689, 24.434721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135670, 35.397743, 24.160069>,  <34.454716, 34.833618, 24.456427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135670, 35.397743, 24.160069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.522552, 35.496750, 24.137257>,  <34.754681, 35.556156, 24.123569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.522552, 35.496750, 24.137257>,  <34.135670, 35.397743, 24.160069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522552, 35.496750, 24.137257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172520, 0.475363, -0.862709,
		-0.186426, 0.844254, 0.502474,
		0.967203, 0.247519, -0.057031,
		34.812714, 35.571007, 24.120148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192055, 36.103973, 23.941227>,  <34.135670, 35.397743, 24.160069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192055, 36.103973, 23.941227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552254, 35.952267, 23.856123>,  <34.768372, 35.861244, 23.805061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552254, 35.952267, 23.856123>,  <34.192055, 36.103973, 23.941227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552254, 35.952267, 23.856123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009156, 0.505677, -0.862674,
		0.434769, 0.774886, 0.458832,
		0.900496, -0.379265, -0.212758,
		34.822403, 35.838486, 23.792295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672638, 36.636337, 23.760279>,  <34.192055, 36.103973, 23.941227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672638, 36.636337, 23.760279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.784512, 36.287941, 23.598709>,  <34.851635, 36.078903, 23.501768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.784512, 36.287941, 23.598709>,  <34.672638, 36.636337, 23.760279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784512, 36.287941, 23.598709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085690, 0.396389, -0.914075,
		0.956261, 0.290263, 0.036228,
		0.279683, -0.870989, -0.403924,
		34.868416, 36.026646, 23.477531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814243, 36.816368, 23.082710>,  <34.672638, 36.636337, 23.760279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814243, 36.816368, 23.082710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.828094, 36.417629, 23.054152>,  <34.836407, 36.178387, 23.037016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.828094, 36.417629, 23.054152>,  <34.814243, 36.816368, 23.082710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828094, 36.417629, 23.054152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006351, 0.071657, -0.997409,
		0.999380, 0.034088, 0.008813,
		0.034631, -0.996847, -0.071396,
		34.838486, 36.118576, 23.032732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163517, 36.702240, 22.507483>,  <34.814243, 36.816368, 23.082710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163517, 36.702240, 22.507483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.043736, 36.321915, 22.539175>,  <34.971867, 36.093719, 22.558191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.043736, 36.321915, 22.539175>,  <35.163517, 36.702240, 22.507483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043736, 36.321915, 22.539175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208213, -0.015919, -0.977954,
		0.931116, -0.309345, -0.193205,
		-0.299450, -0.950817, 0.079232,
		34.953899, 36.036671, 22.562944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565365, 36.294132, 22.006920>,  <35.163517, 36.702240, 22.507483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565365, 36.294132, 22.006920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.240112, 36.070423, 22.071465>,  <35.044960, 35.936199, 22.110191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.240112, 36.070423, 22.071465>,  <35.565365, 36.294132, 22.006920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240112, 36.070423, 22.071465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128846, -0.097399, -0.986870,
		0.567645, -0.823243, 0.007138,
		-0.813129, -0.559271, 0.161360,
		34.996174, 35.902641, 22.119873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627945, 35.792622, 21.503025>,  <35.565365, 36.294132, 22.006920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627945, 35.792622, 21.503025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.250687, 35.793556, 21.635967>,  <35.024330, 35.794117, 21.715733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.250687, 35.793556, 21.635967>,  <35.627945, 35.792622, 21.503025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250687, 35.793556, 21.635967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329127, -0.145833, -0.932957,
		0.046290, -0.989306, 0.138312,
		-0.943150, 0.002336, 0.332358,
		34.967743, 35.794258, 21.735674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220360, 35.170658, 21.262873>,  <35.627945, 35.792622, 21.503025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220360, 35.170658, 21.262873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938137, 35.447132, 21.325411>,  <34.768803, 35.613018, 21.362934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938137, 35.447132, 21.325411>,  <35.220360, 35.170658, 21.262873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938137, 35.447132, 21.325411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260795, -0.048121, -0.964194,
		-0.658916, -0.721071, 0.214210,
		-0.705561, 0.691188, 0.156344,
		34.726467, 35.654488, 21.372314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605530, 34.867085, 20.980047>,  <35.220360, 35.170658, 21.262873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605530, 34.867085, 20.980047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.529102, 35.257061, 21.025612>,  <34.483246, 35.491047, 21.052950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.529102, 35.257061, 21.025612>,  <34.605530, 34.867085, 20.980047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529102, 35.257061, 21.025612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458729, 0.013903, -0.888468,
		-0.867790, -0.222014, 0.444579,
		-0.191071, 0.974945, 0.113909,
		34.471783, 35.549545, 21.059784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893162, 35.009903, 20.627895>,  <34.605530, 34.867085, 20.980047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893162, 35.009903, 20.627895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.062057, 35.371990, 20.647020>,  <34.163395, 35.589245, 20.658495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.062057, 35.371990, 20.647020>,  <33.893162, 35.009903, 20.627895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062057, 35.371990, 20.647020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174132, 0.132759, -0.975732,
		-0.889601, 0.403669, 0.213684,
		0.422241, 0.905222, 0.047811,
		34.188728, 35.643559, 20.661364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095039, 35.083256, 20.735518>,  <33.893162, 35.009903, 20.627895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095039, 35.083256, 20.735518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.210205, 34.712597, 20.638830>,  <33.279305, 34.490200, 20.580818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.210205, 34.712597, 20.638830>,  <33.095039, 35.083256, 20.735518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210205, 34.712597, 20.638830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066991, -0.271274, 0.960168,
		-0.955310, -0.260254, -0.140181,
		0.287915, -0.926649, -0.241716,
		33.296581, 34.434601, 20.566315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635361, 34.520329, 21.082615>,  <33.095039, 35.083256, 20.735518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635361, 34.520329, 21.082615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981571, 34.341755, 20.991795>,  <33.189297, 34.234612, 20.937304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981571, 34.341755, 20.991795>,  <32.635361, 34.520329, 21.082615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981571, 34.341755, 20.991795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043079, -0.385286, 0.921791,
		-0.499002, -0.807618, -0.314244,
		0.865529, -0.446438, -0.227050,
		33.241230, 34.207825, 20.923679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482246, 33.858547, 21.253366>,  <32.635361, 34.520329, 21.082615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482246, 33.858547, 21.253366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879501, 33.904869, 21.246935>,  <33.117855, 33.932663, 21.243076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879501, 33.904869, 21.246935>,  <32.482246, 33.858547, 21.253366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879501, 33.904869, 21.246935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060134, -0.387989, 0.919700,
		0.100270, -0.914359, -0.392292,
		0.993141, 0.115809, -0.016081,
		33.177444, 33.939613, 21.242111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691647, 33.271927, 21.507046>,  <32.482246, 33.858547, 21.253366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691647, 33.271927, 21.507046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988407, 33.534069, 21.563755>,  <33.166462, 33.691353, 21.597780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988407, 33.534069, 21.563755>,  <32.691647, 33.271927, 21.507046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988407, 33.534069, 21.563755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072644, -0.288755, 0.954643,
		0.666567, -0.697949, -0.261834,
		0.741898, 0.655354, 0.141773,
		33.210976, 33.730675, 21.606287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121861, 32.915123, 21.896126>,  <32.691647, 33.271927, 21.507046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121861, 32.915123, 21.896126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.221161, 33.297390, 21.959471>,  <33.280739, 33.526749, 21.997477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.221161, 33.297390, 21.959471>,  <33.121861, 32.915123, 21.896126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221161, 33.297390, 21.959471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159995, -0.201683, 0.966295,
		0.955393, -0.214543, -0.202969,
		0.248247, 0.955665, 0.158360,
		33.295635, 33.584091, 22.006979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814877, 32.812729, 22.319693>,  <33.121861, 32.915123, 21.896126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814877, 32.812729, 22.319693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661221, 33.179222, 22.365215>,  <33.569027, 33.399117, 22.392529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661221, 33.179222, 22.365215>,  <33.814877, 32.812729, 22.319693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661221, 33.179222, 22.365215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118633, -0.073259, 0.990232,
		0.915619, 0.393894, -0.080553,
		-0.384145, 0.916232, 0.113806,
		33.545979, 33.454090, 22.399357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215000, 33.248421, 22.683735>,  <33.814877, 32.812729, 22.319693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215000, 33.248421, 22.683735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.869789, 33.430946, 22.770412>,  <33.662663, 33.540462, 22.822420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.869789, 33.430946, 22.770412>,  <34.215000, 33.248421, 22.683735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869789, 33.430946, 22.770412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084306, -0.292844, 0.952436,
		0.498072, 0.840247, 0.214262,
		-0.863027, 0.456319, 0.216696,
		33.610882, 33.567841, 22.835421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953091, 33.190838, 22.700531>,  <34.215000, 33.248421, 22.683735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953091, 33.190838, 22.700531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.097031, 32.818367, 22.677170>,  <35.183395, 32.594883, 22.663153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.097031, 32.818367, 22.677170>,  <34.953091, 33.190838, 22.700531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097031, 32.818367, 22.677170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564749, 0.267219, -0.780802,
		0.742673, 0.247991, 0.622042,
		0.359854, -0.931179, -0.058404,
		35.204987, 32.539013, 22.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734360, 33.207962, 22.699831>,  <34.953091, 33.190838, 22.700531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734360, 33.207962, 22.699831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.588612, 32.894478, 22.498623>,  <35.501163, 32.706387, 22.377897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.588612, 32.894478, 22.498623>,  <35.734360, 33.207962, 22.699831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588612, 32.894478, 22.498623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542445, 0.260442, -0.798701,
		0.756958, -0.563888, 0.330221,
		-0.364374, -0.783709, -0.503022,
		35.479298, 32.659367, 22.347717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257359, 33.068939, 22.275923>,  <35.734360, 33.207962, 22.699831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257359, 33.068939, 22.275923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.967010, 32.842178, 22.120108>,  <35.792801, 32.706123, 22.026619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.967010, 32.842178, 22.120108>,  <36.257359, 33.068939, 22.275923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967010, 32.842178, 22.120108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359363, 0.170329, -0.917522,
		0.586493, -0.805985, 0.080086,
		-0.725868, -0.566900, -0.389538,
		35.749249, 32.672108, 22.003246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601460, 32.732662, 21.800915>,  <36.257359, 33.068939, 22.275923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601460, 32.732662, 21.800915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.214664, 32.711399, 21.701225>,  <35.982590, 32.698643, 21.641411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.214664, 32.711399, 21.701225>,  <36.601460, 32.732662, 21.800915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214664, 32.711399, 21.701225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244842, 0.077350, -0.966473,
		0.070616, -0.995588, -0.061791,
		-0.966988, -0.053119, -0.249224,
		35.924568, 32.695454, 21.626457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522366, 32.178570, 21.385227>,  <36.601460, 32.732662, 21.800915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522366, 32.178570, 21.385227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213192, 32.417076, 21.298475>,  <36.027687, 32.560181, 21.246424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213192, 32.417076, 21.298475>,  <36.522366, 32.178570, 21.385227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213192, 32.417076, 21.298475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324028, 0.077074, -0.942902,
		-0.545504, -0.799079, -0.252780,
		-0.772937, 0.596265, -0.216880,
		35.981312, 32.595955, 21.233412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137592, 31.870125, 20.763903>,  <36.522366, 32.178570, 21.385227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137592, 31.870125, 20.763903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.998466, 32.245132, 20.767538>,  <35.914989, 32.470139, 20.769720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.998466, 32.245132, 20.767538>,  <36.137592, 31.870125, 20.763903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998466, 32.245132, 20.767538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177183, 0.075247, -0.981297,
		-0.920669, -0.339698, -0.192284,
		-0.347814, 0.937520, 0.009089,
		35.894123, 32.526390, 20.770266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695583, 31.877581, 20.259529>,  <36.137592, 31.870125, 20.763903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695583, 31.877581, 20.259529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751095, 32.266987, 20.332197>,  <35.784401, 32.500629, 20.375797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751095, 32.266987, 20.332197>,  <35.695583, 31.877581, 20.259529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751095, 32.266987, 20.332197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025008, 0.186832, -0.982073,
		-0.990008, 0.131748, 0.050274,
		0.138780, 0.973517, 0.181670,
		35.792728, 32.559044, 20.386698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105385, 32.268883, 20.028448>,  <35.695583, 31.877581, 20.259529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105385, 32.268883, 20.028448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451447, 32.469387, 20.022182>,  <35.659084, 32.589691, 20.018423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451447, 32.469387, 20.022182>,  <35.105385, 32.268883, 20.028448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451447, 32.469387, 20.022182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087882, 0.120786, -0.988781,
		-0.493746, 0.856824, 0.148551,
		0.865154, 0.501261, -0.015662,
		35.710991, 32.619766, 20.017485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978451, 32.904430, 19.737425>,  <35.105385, 32.268883, 20.028448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978451, 32.904430, 19.737425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.364571, 32.821281, 19.674194>,  <35.596241, 32.771393, 19.636255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.364571, 32.821281, 19.674194>,  <34.978451, 32.904430, 19.737425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364571, 32.821281, 19.674194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131538, 0.135904, -0.981951,
		0.225602, 0.968669, 0.103845,
		0.965299, -0.207870, -0.158077,
		35.654160, 32.758919, 19.626772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.019253, 28.320545, 34.141079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406719, 28.234137, 34.092052>,  <36.639198, 28.182291, 34.062637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406719, 28.234137, 34.092052>,  <36.019253, 28.320545, 34.141079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406719, 28.234137, 34.092052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077491, 0.205977, -0.975484,
		0.235969, 0.954415, 0.182783,
		0.968666, -0.216020, -0.122563,
		36.697319, 28.169331, 34.055283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275425, 28.880033, 33.815701>,  <36.019253, 28.320545, 34.141079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275425, 28.880033, 33.815701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532768, 28.578913, 33.760014>,  <36.687176, 28.398241, 33.726601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532768, 28.578913, 33.760014>,  <36.275425, 28.880033, 33.815701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532768, 28.578913, 33.760014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000421, 0.181498, -0.983391,
		0.765564, 0.632733, 0.116452,
		0.643360, -0.752800, -0.139215,
		36.725777, 28.353073, 33.718250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695877, 29.207609, 33.406300>,  <36.275425, 28.880033, 33.815701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695877, 29.207609, 33.406300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760326, 28.817732, 33.344318>,  <36.798996, 28.583805, 33.307129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760326, 28.817732, 33.344318>,  <36.695877, 29.207609, 33.406300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760326, 28.817732, 33.344318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171599, 0.126941, -0.976954,
		0.971901, 0.184002, -0.146803,
		0.161127, -0.974694, -0.154949,
		36.808666, 28.525324, 33.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981266, 29.198254, 32.736191>,  <36.695877, 29.207609, 33.406300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981266, 29.198254, 32.736191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856506, 28.828716, 32.824940>,  <36.781651, 28.606993, 32.878189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856506, 28.828716, 32.824940>,  <36.981266, 29.198254, 32.736191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856506, 28.828716, 32.824940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384378, -0.090869, -0.918693,
		0.868892, -0.371824, -0.326764,
		-0.311899, -0.923845, 0.221877,
		36.762936, 28.551563, 32.891502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238972, 28.906294, 32.208527>,  <36.981266, 29.198254, 32.736191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238972, 28.906294, 32.208527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948318, 28.664019, 32.338230>,  <36.773926, 28.518654, 32.416050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948318, 28.664019, 32.338230>,  <37.238972, 28.906294, 32.208527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948318, 28.664019, 32.338230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406824, -0.000985, -0.913506,
		0.553620, -0.795700, -0.245693,
		-0.726635, -0.605690, 0.324256,
		36.730328, 28.482311, 32.435509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192852, 28.425966, 31.709194>,  <37.238972, 28.906294, 32.208527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192852, 28.425966, 31.709194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843803, 28.373953, 31.897503>,  <36.634377, 28.342745, 32.010487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843803, 28.373953, 31.897503>,  <37.192852, 28.425966, 31.709194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843803, 28.373953, 31.897503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470419, -0.035367, -0.881734,
		0.131309, -0.990878, -0.030311,
		-0.872619, -0.130038, 0.470772,
		36.582016, 28.334942, 32.038734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813988, 27.992588, 31.306347>,  <37.192852, 28.425966, 31.709194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813988, 27.992588, 31.306347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523293, 28.157095, 31.526424>,  <36.348877, 28.255798, 31.658470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523293, 28.157095, 31.526424>,  <36.813988, 27.992588, 31.306347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523293, 28.157095, 31.526424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620005, -0.047912, -0.783134,
		-0.295718, -0.910254, 0.289808,
		-0.726736, 0.411269, 0.550193,
		36.305271, 28.280476, 31.691483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250057, 27.698490, 31.001549>,  <36.813988, 27.992588, 31.306347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250057, 27.698490, 31.001549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122669, 28.033125, 31.179853>,  <36.046238, 28.233906, 31.286837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122669, 28.033125, 31.179853>,  <36.250057, 27.698490, 31.001549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122669, 28.033125, 31.179853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757332, 0.058267, -0.650426,
		-0.570109, -0.544729, 0.615016,
		-0.318471, 0.836585, 0.445759,
		36.027126, 28.284100, 31.313581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523888, 27.636707, 31.066414>,  <36.250057, 27.698490, 31.001549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523888, 27.636707, 31.066414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565136, 28.034355, 31.079638>,  <35.589886, 28.272943, 31.087572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565136, 28.034355, 31.079638>,  <35.523888, 27.636707, 31.066414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565136, 28.034355, 31.079638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747776, 0.099396, -0.656469,
		-0.655895, 0.042975, 0.753628,
		0.103119, 0.994119, 0.033057,
		35.596073, 28.332590, 31.089554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867676, 27.929594, 30.937840>,  <35.523888, 27.636707, 31.066414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867676, 27.929594, 30.937840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114876, 28.239136, 30.882389>,  <35.263199, 28.424862, 30.849119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114876, 28.239136, 30.882389>,  <34.867676, 27.929594, 30.937840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114876, 28.239136, 30.882389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570641, 0.320256, -0.756178,
		-0.540777, 0.546428, 0.639513,
		0.618005, 0.773856, -0.138627,
		35.300278, 28.471292, 30.840801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421848, 28.523291, 30.795115>,  <34.867676, 27.929594, 30.937840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421848, 28.523291, 30.795115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779926, 28.577862, 30.625404>,  <34.994774, 28.610605, 30.523579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779926, 28.577862, 30.625404>,  <34.421848, 28.523291, 30.795115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779926, 28.577862, 30.625404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445157, 0.319427, -0.836541,
		0.021396, 0.937738, 0.346683,
		0.895197, 0.136430, -0.424275,
		35.048485, 28.618792, 30.498121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244827, 29.153540, 30.396622>,  <34.421848, 28.523291, 30.795115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244827, 29.153540, 30.396622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588577, 29.022255, 30.239780>,  <34.794827, 28.943483, 30.145676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588577, 29.022255, 30.239780>,  <34.244827, 29.153540, 30.396622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588577, 29.022255, 30.239780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352361, 0.175580, -0.919246,
		0.370553, 0.928143, 0.035241,
		0.859379, -0.328212, -0.392103,
		34.846390, 28.923792, 30.122150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893192, 29.681206, 30.221693>,  <34.244827, 29.153540, 30.396622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893192, 29.681206, 30.221693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524666, 29.526817, 30.240467>,  <33.303551, 29.434185, 30.251732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524666, 29.526817, 30.240467>,  <33.893192, 29.681206, 30.221693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524666, 29.526817, 30.240467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106730, -0.134972, 0.985084,
		-0.373880, 0.912583, 0.165547,
		-0.921316, -0.385972, 0.046937,
		33.248272, 29.411026, 30.254549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596416, 30.023499, 30.624338>,  <33.893192, 29.681206, 30.221693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596416, 30.023499, 30.624338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399036, 29.675592, 30.622826>,  <33.280609, 29.466848, 30.621918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399036, 29.675592, 30.622826>,  <33.596416, 30.023499, 30.624338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399036, 29.675592, 30.622826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141519, 0.076000, 0.987014,
		-0.858184, 0.487577, -0.160591,
		-0.493450, -0.869766, -0.003779,
		33.251003, 29.414663, 30.621693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073757, 30.169956, 31.103485>,  <33.596416, 30.023499, 30.624338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073757, 30.169956, 31.103485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134010, 29.775209, 31.080141>,  <33.170162, 29.538363, 31.066135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134010, 29.775209, 31.080141>,  <33.073757, 30.169956, 31.103485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134010, 29.775209, 31.080141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060088, -0.068062, 0.995870,
		-0.986762, -0.146503, -0.069551,
		0.150631, -0.986866, -0.058358,
		33.179199, 29.479149, 31.062634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657715, 29.863611, 31.658531>,  <33.073757, 30.169956, 31.103485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657715, 29.863611, 31.658531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880112, 29.538795, 31.587584>,  <33.013550, 29.343906, 31.545015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880112, 29.538795, 31.587584>,  <32.657715, 29.863611, 31.658531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880112, 29.538795, 31.587584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074682, -0.163727, 0.983675,
		-0.827823, -0.560166, -0.030387,
		0.555996, -0.812039, -0.177371,
		33.046909, 29.295183, 31.534372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349346, 29.346506, 32.110832>,  <32.657715, 29.863611, 31.658531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349346, 29.346506, 32.110832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716587, 29.221895, 32.012825>,  <32.936932, 29.147129, 31.954020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716587, 29.221895, 32.012825>,  <32.349346, 29.346506, 32.110832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716587, 29.221895, 32.012825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181114, -0.220125, 0.958511,
		-0.352539, -0.924389, -0.145675,
		0.918103, -0.311529, -0.245023,
		32.992020, 29.128437, 31.939318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418655, 28.688095, 32.411522>,  <32.349346, 29.346506, 32.110832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418655, 28.688095, 32.411522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781883, 28.846905, 32.358185>,  <32.999821, 28.942190, 32.326183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781883, 28.846905, 32.358185>,  <32.418655, 28.688095, 32.411522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781883, 28.846905, 32.358185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213294, -0.164383, 0.963060,
		0.360439, -0.902967, -0.233954,
		0.908069, 0.397025, -0.133347,
		33.054306, 28.966013, 32.318180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943108, 28.189915, 32.743763>,  <32.418655, 28.688095, 32.411522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943108, 28.189915, 32.743763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123196, 28.544428, 32.700314>,  <33.231247, 28.757137, 32.674244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123196, 28.544428, 32.700314>,  <32.943108, 28.189915, 32.743763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123196, 28.544428, 32.700314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510367, -0.155604, 0.845762,
		0.732684, -0.436218, -0.522386,
		0.450222, 0.886285, -0.108623,
		33.258263, 28.810314, 32.667728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565308, 28.074106, 33.131195>,  <32.943108, 28.189915, 32.743763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565308, 28.074106, 33.131195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555508, 28.468945, 33.067898>,  <33.549629, 28.705847, 33.029919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555508, 28.468945, 33.067898>,  <33.565308, 28.074106, 33.131195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555508, 28.468945, 33.067898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462530, 0.151526, 0.873559,
		0.886265, -0.051792, -0.460274,
		-0.024500, 0.987095, -0.158247,
		33.548157, 28.765074, 33.020424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194893, 28.238533, 33.245708>,  <33.565308, 28.074106, 33.131195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194893, 28.238533, 33.245708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033649, 28.599676, 33.305511>,  <33.936905, 28.816362, 33.341393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033649, 28.599676, 33.305511>,  <34.194893, 28.238533, 33.245708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033649, 28.599676, 33.305511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652935, 0.169274, 0.738256,
		0.641232, 0.395217, -0.657743,
		-0.403110, 0.902857, 0.149507,
		33.912716, 28.870533, 33.350365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762199, 28.690748, 33.377544>,  <34.194893, 28.238533, 33.245708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762199, 28.690748, 33.377544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442802, 28.869169, 33.539261>,  <34.251163, 28.976221, 33.636292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442802, 28.869169, 33.539261>,  <34.762199, 28.690748, 33.377544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442802, 28.869169, 33.539261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537367, 0.225371, 0.812678,
		0.271382, 0.866167, -0.419651,
		-0.798491, 0.446053, 0.404288,
		34.203255, 29.002985, 33.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049892, 29.188242, 33.833172>,  <34.762199, 28.690748, 33.377544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049892, 29.188242, 33.833172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677151, 29.200523, 33.977787>,  <34.453506, 29.207891, 34.064556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677151, 29.200523, 33.977787>,  <35.049892, 29.188242, 33.833172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677151, 29.200523, 33.977787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358383, 0.233647, 0.903865,
		-0.056723, 0.971837, -0.228727,
		-0.931850, 0.030702, 0.361543,
		34.397594, 29.209734, 34.086250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023319, 29.798117, 34.350449>,  <35.049892, 29.188242, 33.833172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023319, 29.798117, 34.350449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714649, 29.575848, 34.474216>,  <34.529446, 29.442486, 34.548477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714649, 29.575848, 34.474216>,  <35.023319, 29.798117, 34.350449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714649, 29.575848, 34.474216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315746, 0.087603, 0.944791,
		-0.552101, 0.826772, 0.107851,
		-0.771679, -0.555674, 0.309416,
		34.483147, 29.409145, 34.567039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766171, 30.181883, 34.931171>,  <35.023319, 29.798117, 34.350449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766171, 30.181883, 34.931171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633595, 29.805901, 34.963745>,  <34.554050, 29.580311, 34.983288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633595, 29.805901, 34.963745>,  <34.766171, 30.181883, 34.931171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633595, 29.805901, 34.963745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002700, 0.085365, 0.996346,
		-0.943474, 0.330444, -0.025755,
		-0.331436, -0.939957, 0.081431,
		34.534164, 29.523914, 34.988174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115025, 30.139534, 35.419827>,  <34.766171, 30.181883, 34.931171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115025, 30.139534, 35.419827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306168, 29.788439, 35.405823>,  <34.420853, 29.577782, 35.397423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306168, 29.788439, 35.405823>,  <34.115025, 30.139534, 35.419827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306168, 29.788439, 35.405823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077343, -0.081738, 0.993648,
		-0.875025, -0.472117, -0.106946,
		0.477859, -0.877738, -0.035007,
		34.449524, 29.525118, 35.395321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402985, 30.892666, 35.510170>,  <34.115025, 30.139534, 35.419827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402985, 30.892666, 35.510170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624783, 31.155878, 35.713947>,  <34.757862, 31.313805, 35.836212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624783, 31.155878, 35.713947>,  <34.402985, 30.892666, 35.510170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624783, 31.155878, 35.713947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352636, 0.740289, -0.572381,
		-0.753779, 0.137734, 0.642531,
		0.554495, 0.658028, 0.509445,
		34.791130, 31.353287, 35.866779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924759, 31.354107, 35.683628>,  <34.402985, 30.892666, 35.510170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924759, 31.354107, 35.683628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289116, 31.518862, 35.673687>,  <34.507732, 31.617716, 35.667721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289116, 31.518862, 35.673687>,  <33.924759, 31.354107, 35.683628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289116, 31.518862, 35.673687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320027, 0.667152, -0.672674,
		-0.260485, 0.620690, 0.739521,
		0.910895, 0.411889, -0.024855,
		34.562386, 31.642429, 35.666229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871937, 32.053448, 35.732044>,  <33.924759, 31.354107, 35.683628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871937, 32.053448, 35.732044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237137, 32.020321, 35.572258>,  <34.456257, 32.000443, 35.476387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237137, 32.020321, 35.572258>,  <33.871937, 32.053448, 35.732044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237137, 32.020321, 35.572258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240340, 0.682018, -0.690715,
		0.329645, 0.726630, 0.602779,
		0.913001, -0.082819, -0.399462,
		34.511036, 31.995476, 35.452419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106709, 32.753193, 35.543789>,  <33.871937, 32.053448, 35.732044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106709, 32.753193, 35.543789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312141, 32.489769, 35.323776>,  <34.435402, 32.331715, 35.191769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312141, 32.489769, 35.323776>,  <34.106709, 32.753193, 35.543789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312141, 32.489769, 35.323776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236534, 0.507528, -0.828533,
		0.824792, 0.555623, 0.104888,
		0.513585, -0.658558, -0.550029,
		34.466217, 32.292202, 35.158768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720421, 33.169220, 35.167133>,  <34.106709, 32.753193, 35.543789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720421, 33.169220, 35.167133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603024, 32.836990, 34.977814>,  <34.532585, 32.637653, 34.864220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603024, 32.836990, 34.977814>,  <34.720421, 33.169220, 35.167133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603024, 32.836990, 34.977814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080702, 0.514865, -0.853464,
		0.952550, -0.212286, -0.218136,
		-0.293489, -0.830571, -0.473302,
		34.514977, 32.587818, 34.835823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174122, 33.176422, 34.563560>,  <34.720421, 33.169220, 35.167133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174122, 33.176422, 34.563560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949432, 32.870937, 34.436302>,  <34.814617, 32.687649, 34.359947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949432, 32.870937, 34.436302>,  <35.174122, 33.176422, 34.563560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949432, 32.870937, 34.436302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207203, 0.242428, -0.947785,
		0.800959, -0.598313, 0.022065,
		-0.561723, -0.763708, -0.318147,
		34.780914, 32.641827, 34.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471489, 32.794590, 34.023468>,  <35.174122, 33.176422, 34.563560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471489, 32.794590, 34.023468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089119, 32.692379, 33.965614>,  <34.859699, 32.631054, 33.930901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089119, 32.692379, 33.965614>,  <35.471489, 32.794590, 34.023468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089119, 32.692379, 33.965614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142551, 0.026760, -0.989426,
		0.256697, -0.966431, 0.010845,
		-0.955921, -0.255529, -0.144635,
		34.802341, 32.615723, 33.922222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487141, 32.318928, 33.529564>,  <35.471489, 32.794590, 34.023468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487141, 32.318928, 33.529564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.111320, 32.455742, 33.523094>,  <34.885830, 32.537830, 33.519211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.111320, 32.455742, 33.523094>,  <35.487141, 32.318928, 33.529564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111320, 32.455742, 33.523094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077429, 0.166204, -0.983047,
		-0.333551, -0.924871, -0.182640,
		-0.939547, 0.342038, -0.016174,
		34.829456, 32.558353, 33.518242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291569, 32.154240, 32.979099>,  <35.487141, 32.318928, 33.529564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291569, 32.154240, 32.979099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994164, 32.417164, 33.028301>,  <34.815720, 32.574921, 33.057823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994164, 32.417164, 33.028301>,  <35.291569, 32.154240, 32.979099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994164, 32.417164, 33.028301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139700, 0.027208, -0.989820,
		-0.653969, -0.753126, 0.071598,
		-0.743511, 0.657314, 0.123005,
		34.771111, 32.614357, 33.065201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880127, 31.932957, 32.479038>,  <35.291569, 32.154240, 32.979099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880127, 31.932957, 32.479038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733006, 32.290855, 32.580353>,  <34.644733, 32.505596, 32.641140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733006, 32.290855, 32.580353>,  <34.880127, 31.932957, 32.479038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733006, 32.290855, 32.580353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085361, 0.238739, -0.967325,
		-0.925979, -0.377402, -0.011431,
		-0.367799, 0.894747, 0.253283,
		34.622665, 32.559280, 32.656338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189964, 32.143116, 32.109844>,  <34.880127, 31.932957, 32.479038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189964, 32.143116, 32.109844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360302, 32.493317, 32.201191>,  <34.462505, 32.703438, 32.255997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360302, 32.493317, 32.201191>,  <34.189964, 32.143116, 32.109844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360302, 32.493317, 32.201191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079953, 0.287814, -0.954343,
		-0.901259, 0.388140, 0.192562,
		0.425841, 0.875506, 0.228362,
		34.488052, 32.755970, 32.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771809, 32.585499, 31.747122>,  <34.189964, 32.143116, 32.109844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771809, 32.585499, 31.747122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094589, 32.798565, 31.849174>,  <34.288258, 32.926403, 31.910406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094589, 32.798565, 31.849174>,  <33.771809, 32.585499, 31.747122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094589, 32.798565, 31.849174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002792, 0.428533, -0.903522,
		-0.590608, 0.729812, 0.344319,
		0.806953, 0.532666, 0.255132,
		34.336674, 32.958366, 31.925714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614868, 33.303356, 31.644617>,  <33.771809, 32.585499, 31.747122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614868, 33.303356, 31.644617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009392, 33.241680, 31.621248>,  <34.246105, 33.204674, 31.607227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009392, 33.241680, 31.621248>,  <33.614868, 33.303356, 31.644617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009392, 33.241680, 31.621248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022048, 0.474461, -0.880000,
		0.163405, 0.866667, 0.471366,
		0.986313, -0.154190, -0.058421,
		34.305286, 33.195423, 31.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856213, 33.971310, 31.599476>,  <33.614868, 33.303356, 31.644617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856213, 33.971310, 31.599476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126301, 33.724083, 31.438442>,  <34.288353, 33.575748, 31.341822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126301, 33.724083, 31.438442>,  <33.856213, 33.971310, 31.599476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126301, 33.724083, 31.438442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114668, 0.627112, -0.770443,
		0.728648, 0.474056, 0.494311,
		0.675221, -0.618063, -0.402585,
		34.328869, 33.538666, 31.317667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253044, 34.446503, 31.179007>,  <33.856213, 33.971310, 31.599476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253044, 34.446503, 31.179007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369255, 34.086227, 31.049793>,  <34.438984, 33.870060, 30.972265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369255, 34.086227, 31.049793>,  <34.253044, 34.446503, 31.179007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369255, 34.086227, 31.049793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143823, 0.374864, -0.915856,
		0.945995, 0.219623, 0.238449,
		0.290529, -0.900690, -0.323033,
		34.456413, 33.816021, 30.952883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938583, 34.472816, 30.897619>,  <34.253044, 34.446503, 31.179007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938583, 34.472816, 30.897619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759033, 34.160683, 30.723452>,  <34.651302, 33.973404, 30.618952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759033, 34.160683, 30.723452>,  <34.938583, 34.472816, 30.897619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759033, 34.160683, 30.723452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311578, 0.320011, -0.894713,
		0.837516, -0.537278, 0.099492,
		-0.448872, -0.780336, -0.435419,
		34.624371, 33.926582, 30.592827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512611, 34.224434, 30.482935>,  <34.938583, 34.472816, 30.897619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512611, 34.224434, 30.482935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175934, 34.076717, 30.325363>,  <34.973927, 33.988087, 30.230820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175934, 34.076717, 30.325363>,  <35.512611, 34.224434, 30.482935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175934, 34.076717, 30.325363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254932, 0.371340, -0.892814,
		0.475990, -0.851898, -0.218410,
		-0.841690, -0.369291, -0.393930,
		34.923428, 33.965931, 30.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761574, 34.027992, 29.815035>,  <35.512611, 34.224434, 30.482935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761574, 34.027992, 29.815035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365635, 33.976643, 29.790611>,  <35.128071, 33.945835, 29.775957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365635, 33.976643, 29.790611>,  <35.761574, 34.027992, 29.815035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365635, 33.976643, 29.790611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025179, 0.264422, -0.964078,
		0.139906, -0.955825, -0.258504,
		-0.989845, -0.128371, -0.061061,
		35.068680, 33.938129, 29.772293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682762, 33.618179, 29.231707>,  <35.761574, 34.027992, 29.815035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682762, 33.618179, 29.231707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351063, 33.831490, 29.298594>,  <35.152042, 33.959476, 29.338726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351063, 33.831490, 29.298594>,  <35.682762, 33.618179, 29.231707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351063, 33.831490, 29.298594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080483, 0.182135, -0.979974,
		-0.553054, -0.826101, -0.108116,
		-0.829249, 0.533277, 0.167218,
		35.102287, 33.991474, 29.348759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170265, 33.331451, 28.790451>,  <35.682762, 33.618179, 29.231707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170265, 33.331451, 28.790451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057625, 33.706974, 28.869787>,  <34.990040, 33.932289, 28.917389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057625, 33.706974, 28.869787>,  <35.170265, 33.331451, 28.790451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057625, 33.706974, 28.869787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089483, 0.180108, -0.979568,
		-0.955349, -0.293598, 0.033289,
		-0.281604, 0.938808, 0.198338,
		34.973145, 33.988617, 28.929289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594601, 33.463951, 28.383768>,  <35.170265, 33.331451, 28.790451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594601, 33.463951, 28.383768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746067, 33.818336, 28.490862>,  <34.836945, 34.030968, 28.555119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746067, 33.818336, 28.490862>,  <34.594601, 33.463951, 28.383768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746067, 33.818336, 28.490862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048899, 0.308020, -0.950122,
		-0.924242, 0.346685, 0.159958,
		0.378663, 0.885965, 0.267733,
		34.859665, 34.084126, 28.571182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199738, 33.868359, 27.985153>,  <34.594601, 33.463951, 28.383768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199738, 33.868359, 27.985153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475861, 34.121349, 28.125689>,  <34.641537, 34.273144, 28.210011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475861, 34.121349, 28.125689>,  <34.199738, 33.868359, 27.985153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475861, 34.121349, 28.125689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146750, 0.353110, -0.924001,
		-0.708474, 0.689407, 0.150939,
		0.690311, 0.632480, 0.351340,
		34.682953, 34.311092, 28.231091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974762, 34.565327, 27.762691>,  <34.199738, 33.868359, 27.985153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974762, 34.565327, 27.762691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363377, 34.585209, 27.855333>,  <34.596546, 34.597137, 27.910919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363377, 34.585209, 27.855333>,  <33.974762, 34.565327, 27.762691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363377, 34.585209, 27.855333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193618, 0.396664, -0.897312,
		-0.136467, 0.916617, 0.375752,
		0.971539, 0.049702, 0.231605,
		34.654839, 34.600121, 27.924814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216099, 35.221825, 27.659567>,  <33.974762, 34.565327, 27.762691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216099, 35.221825, 27.659567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.568012, 35.031780, 27.653290>,  <34.779160, 34.917755, 27.649523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.568012, 35.031780, 27.653290>,  <34.216099, 35.221825, 27.659567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568012, 35.031780, 27.653290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199705, 0.399361, -0.894778,
		0.431386, 0.784080, 0.446234,
		0.879787, -0.475110, -0.015694,
		34.831947, 34.889248, 27.648581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846054, 35.709679, 27.539156>,  <34.216099, 35.221825, 27.659567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846054, 35.709679, 27.539156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963772, 35.348843, 27.412905>,  <35.034401, 35.132339, 27.337154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963772, 35.348843, 27.412905>,  <34.846054, 35.709679, 27.539156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963772, 35.348843, 27.412905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258693, 0.393113, -0.882349,
		0.920039, 0.178016, 0.349054,
		0.294290, -0.902093, -0.315628,
		35.052059, 35.078217, 27.318216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301960, 35.848885, 27.058483>,  <34.846054, 35.709679, 27.539156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301960, 35.848885, 27.058483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261318, 35.466030, 26.949986>,  <35.236935, 35.236317, 26.884888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261318, 35.466030, 26.949986>,  <35.301960, 35.848885, 27.058483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261318, 35.466030, 26.949986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238741, 0.241228, -0.940644,
		0.965753, -0.160330, 0.203997,
		-0.101604, -0.957133, -0.271244,
		35.230839, 35.178890, 26.868612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856598, 35.682030, 26.539900>,  <35.301960, 35.848885, 27.058483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856598, 35.682030, 26.539900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566357, 35.417591, 26.463535>,  <35.392212, 35.258926, 26.417717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566357, 35.417591, 26.463535>,  <35.856598, 35.682030, 26.539900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566357, 35.417591, 26.463535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165283, 0.101876, -0.980971,
		0.667968, -0.743351, 0.035347,
		-0.725604, -0.661099, -0.190913,
		35.348675, 35.219261, 26.406261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141205, 35.192951, 26.045208>,  <35.856598, 35.682030, 26.539900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141205, 35.192951, 26.045208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742115, 35.177963, 26.022789>,  <35.502663, 35.168972, 26.009338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742115, 35.177963, 26.022789>,  <36.141205, 35.192951, 26.045208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742115, 35.177963, 26.022789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053001, 0.077827, -0.995557,
		0.041656, -0.996263, -0.075665,
		-0.997725, -0.037460, -0.056045,
		35.442799, 35.166721, 26.005976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735279, 34.651817, 25.862404>,  <36.141205, 35.192951, 26.045208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735279, 34.651817, 25.862404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126312, 34.734898, 25.848591>,  <37.360931, 34.784748, 25.840303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126312, 34.734898, 25.848591>,  <36.735279, 34.651817, 25.862404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126312, 34.734898, 25.848591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066542, -0.149166, 0.986571,
		0.199763, -0.966752, -0.159643,
		0.977582, 0.207703, -0.034532,
		37.419586, 34.797207, 25.838232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062153, 34.033497, 26.187201>,  <36.735279, 34.651817, 25.862404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062153, 34.033497, 26.187201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.319530, 34.338337, 26.215979>,  <37.473957, 34.521240, 26.233246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.319530, 34.338337, 26.215979>,  <37.062153, 34.033497, 26.187201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319530, 34.338337, 26.215979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241983, -0.291670, 0.925404,
		0.726238, -0.578038, -0.372090,
		0.643446, 0.762102, 0.071947,
		37.512566, 34.566967, 26.237562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781593, 33.789852, 26.384218>,  <37.062153, 34.033497, 26.187201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781593, 33.789852, 26.384218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745991, 34.174328, 26.488678>,  <37.724628, 34.405014, 26.551353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745991, 34.174328, 26.488678>,  <37.781593, 33.789852, 26.384218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745991, 34.174328, 26.488678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278397, -0.227731, 0.933078,
		0.956333, 0.155753, -0.247321,
		-0.089007, 0.961186, 0.261148,
		37.719288, 34.462685, 26.567022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353123, 33.851051, 26.718840>,  <37.781593, 33.789852, 26.384218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353123, 33.851051, 26.718840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136009, 34.163200, 26.843040>,  <38.005741, 34.350491, 26.917561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136009, 34.163200, 26.843040>,  <38.353123, 33.851051, 26.718840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136009, 34.163200, 26.843040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317427, -0.151673, 0.936074,
		0.777579, 0.606645, -0.165385,
		-0.542781, 0.780370, 0.310504,
		37.973175, 34.397312, 26.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802334, 34.074661, 27.276144>,  <38.353123, 33.851051, 26.718840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802334, 34.074661, 27.276144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445377, 34.245590, 27.334158>,  <38.231205, 34.348148, 27.368967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445377, 34.245590, 27.334158>,  <38.802334, 34.074661, 27.276144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445377, 34.245590, 27.334158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016455, -0.290370, 0.956773,
		0.450966, 0.856200, 0.252092,
		-0.892389, 0.427324, 0.145036,
		38.177662, 34.373787, 27.377668>
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
