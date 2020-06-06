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
	<24.210289, 34.868988, 34.598282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136866, 35.202221, 34.807003>,  <24.092812, 35.402161, 34.932236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136866, 35.202221, 34.807003>,  <24.210289, 34.868988, 34.598282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136866, 35.202221, 34.807003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619714, 0.510119, -0.596435,
		-0.763060, 0.213884, -0.609912,
		-0.183560, 0.833086, 0.521798,
		24.081799, 35.452148, 34.963543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.432526, 35.250504, 34.114899>,  <24.210289, 34.868988, 34.598282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.432526, 35.250504, 34.114899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813330, 35.276329, 33.995228>,  <25.041813, 35.291824, 33.923428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813330, 35.276329, 33.995228>,  <24.432526, 35.250504, 34.114899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813330, 35.276329, 33.995228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030943, -0.992791, -0.115797,
		-0.304493, 0.100983, -0.947146,
		0.952012, 0.064567, -0.299174,
		25.098934, 35.295700, 33.905476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579451, 35.149632, 33.414845>,  <24.432526, 35.250504, 34.114899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579451, 35.149632, 33.414845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903336, 34.981049, 33.578182>,  <25.097666, 34.879898, 33.676186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903336, 34.981049, 33.578182>,  <24.579451, 35.149632, 33.414845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903336, 34.981049, 33.578182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216848, -0.861483, -0.459156,
		0.545295, 0.283235, -0.788943,
		0.809710, -0.421456, 0.408343,
		25.146248, 34.854610, 33.700684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920761, 34.652424, 32.893196>,  <24.579451, 35.149632, 33.414845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920761, 34.652424, 32.893196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003979, 34.499691, 33.253399>,  <25.053909, 34.408051, 33.469521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003979, 34.499691, 33.253399>,  <24.920761, 34.652424, 32.893196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003979, 34.499691, 33.253399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307262, -0.899562, -0.310447,
		0.928606, -0.212107, -0.304470,
		0.208042, -0.381835, 0.900511,
		25.066391, 34.385139, 33.523552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622112, 34.727634, 33.213264>,  <24.920761, 34.652424, 32.893196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622112, 34.727634, 33.213264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649960, 34.422428, 33.470310>,  <25.666668, 34.239304, 33.624538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649960, 34.422428, 33.470310>,  <25.622112, 34.727634, 33.213264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649960, 34.422428, 33.470310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441579, -0.554061, -0.705709,
		0.894518, 0.332895, 0.298360,
		0.069617, -0.763019, 0.642617,
		25.670845, 34.193523, 33.663094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470367, 34.512745, 32.455597>,  <25.622112, 34.727634, 33.213264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470367, 34.512745, 32.455597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816370, 34.691353, 32.364048>,  <26.023972, 34.798519, 32.309120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816370, 34.691353, 32.364048>,  <25.470367, 34.512745, 32.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816370, 34.691353, 32.364048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442445, -0.463637, 0.767648,
		0.236658, -0.765284, -0.598610,
		0.865006, 0.446522, -0.228872,
		26.075872, 34.825310, 32.295387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084112, 34.007236, 32.421562>,  <25.470367, 34.512745, 32.455597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084112, 34.007236, 32.421562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150869, 34.385139, 32.534405>,  <26.190924, 34.611881, 32.602112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150869, 34.385139, 32.534405>,  <26.084112, 34.007236, 32.421562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150869, 34.385139, 32.534405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294050, -0.320792, 0.900348,
		0.941106, -0.067309, -0.331343,
		0.166894, 0.944755, 0.282107,
		26.200937, 34.668568, 32.619038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530397, 33.988411, 31.812971>,  <26.084112, 34.007236, 32.421562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530397, 33.988411, 31.812971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647728, 33.618298, 31.716791>,  <26.718126, 33.396229, 31.659082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647728, 33.618298, 31.716791>,  <26.530397, 33.988411, 31.812971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647728, 33.618298, 31.716791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184908, 0.191856, -0.963847,
		0.937960, 0.327181, -0.114816,
		0.293325, -0.925280, -0.240452,
		26.735725, 33.340714, 31.644655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063982, 34.317932, 31.922657>,  <26.530397, 33.988411, 31.812971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063982, 34.317932, 31.922657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440401, 34.317818, 32.057964>,  <27.666252, 34.317749, 32.139149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440401, 34.317818, 32.057964>,  <27.063982, 34.317932, 31.922657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440401, 34.317818, 32.057964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193424, 0.819938, 0.538784,
		-0.277511, -0.572452, 0.771548,
		0.941050, -0.000283, 0.338268,
		27.722715, 34.317734, 32.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117950, 34.319073, 32.649742>,  <27.063982, 34.317932, 31.922657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117950, 34.319073, 32.649742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463009, 34.485397, 32.534542>,  <27.670044, 34.585190, 32.465420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463009, 34.485397, 32.534542>,  <27.117950, 34.319073, 32.649742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463009, 34.485397, 32.534542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180291, 0.784761, 0.592997,
		0.472586, -0.459622, 0.751937,
		0.862646, 0.415809, -0.288002,
		27.721802, 34.610142, 32.448143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312693, 34.467228, 33.264046>,  <27.117950, 34.319073, 32.649742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312693, 34.467228, 33.264046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559195, 34.675701, 33.027878>,  <27.707096, 34.800785, 32.886177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559195, 34.675701, 33.027878>,  <27.312693, 34.467228, 33.264046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559195, 34.675701, 33.027878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200729, 0.828885, 0.522165,
		0.761534, -0.203274, 0.615423,
		0.616258, 0.521180, -0.590421,
		27.744072, 34.832054, 32.850750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642252, 34.858765, 33.792797>,  <27.312693, 34.467228, 33.264046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642252, 34.858765, 33.792797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635931, 35.052883, 33.443115>,  <27.632139, 35.169353, 33.233307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635931, 35.052883, 33.443115>,  <27.642252, 34.858765, 33.792797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635931, 35.052883, 33.443115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105750, 0.870222, 0.481177,
		0.994267, -0.084844, -0.065071,
		-0.015801, 0.485299, -0.874205,
		27.631191, 35.198471, 33.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265200, 35.311356, 33.622204>,  <27.642252, 34.858765, 33.792797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265200, 35.311356, 33.622204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896442, 35.424145, 33.515923>,  <27.675188, 35.491817, 33.452152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896442, 35.424145, 33.515923>,  <28.265200, 35.311356, 33.622204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896442, 35.424145, 33.515923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157575, 0.899396, 0.407747,
		0.353951, 0.334031, -0.873580,
		-0.921894, 0.281977, -0.265707,
		27.619875, 35.508739, 33.436211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098009, 35.573429, 33.106323>,  <28.265200, 35.311356, 33.622204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098009, 35.573429, 33.106323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732485, 35.587791, 32.944500>,  <27.513170, 35.596409, 32.847408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732485, 35.587791, 32.944500>,  <28.098009, 35.573429, 33.106323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732485, 35.587791, 32.944500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132356, -0.968037, 0.213042,
		-0.383974, 0.248224, 0.889353,
		-0.913808, 0.035909, -0.404555,
		27.458342, 35.598564, 32.823135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438587, 36.123470, 32.587955>,  <28.098009, 35.573429, 33.106323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438587, 36.123470, 32.587955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825867, 36.063103, 32.667770>,  <29.058235, 36.026882, 32.715660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825867, 36.063103, 32.667770>,  <28.438587, 36.123470, 32.587955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825867, 36.063103, 32.667770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038298, -0.877560, -0.477936,
		0.247234, 0.455095, -0.855432,
		0.968199, -0.150923, 0.199533,
		29.116325, 36.017826, 32.727631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525301, 35.612602, 32.201233>,  <28.438587, 36.123470, 32.587955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525301, 35.612602, 32.201233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264709, 35.364136, 32.375465>,  <28.108355, 35.215057, 32.480003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264709, 35.364136, 32.375465>,  <28.525301, 35.612602, 32.201233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264709, 35.364136, 32.375465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464274, -0.780502, -0.418649,
		0.600023, -0.070510, 0.796869,
		-0.651477, -0.621165, 0.435583,
		28.069267, 35.177788, 32.506142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954088, 35.039883, 32.341297>,  <28.525301, 35.612602, 32.201233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954088, 35.039883, 32.341297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578510, 34.908745, 32.383068>,  <28.353165, 34.830063, 32.408131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578510, 34.908745, 32.383068>,  <28.954088, 35.039883, 32.341297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578510, 34.908745, 32.383068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270975, -0.891615, -0.362761,
		0.212035, -0.312315, 0.926013,
		-0.938943, -0.327844, 0.104424,
		28.296827, 34.810390, 32.414394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948051, 34.378937, 32.578575>,  <28.954088, 35.039883, 32.341297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948051, 34.378937, 32.578575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570171, 34.341122, 32.452969>,  <28.343443, 34.318432, 32.377605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570171, 34.341122, 32.452969>,  <28.948051, 34.378937, 32.578575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570171, 34.341122, 32.452969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232977, -0.867360, -0.439783,
		-0.230791, -0.488621, 0.841418,
		-0.944700, -0.094533, -0.314016,
		28.286762, 34.312763, 32.358765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601753, 33.667019, 32.682449>,  <28.948051, 34.378937, 32.578575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601753, 33.667019, 32.682449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468979, 33.866730, 32.362312>,  <28.389315, 33.986557, 32.170231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468979, 33.866730, 32.362312>,  <28.601753, 33.667019, 32.682449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468979, 33.866730, 32.362312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224513, -0.782247, -0.581105,
		-0.916194, -0.372577, 0.147564,
		-0.331939, 0.499275, -0.800339,
		28.369398, 34.016514, 32.122211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297241, 33.746056, 32.515148>,  <28.601753, 33.667019, 32.682449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297241, 33.746056, 32.515148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154062, 34.010872, 32.251762>,  <29.068155, 34.169762, 32.093731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154062, 34.010872, 32.251762>,  <29.297241, 33.746056, 32.515148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154062, 34.010872, 32.251762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207010, 0.743903, 0.635418,
		0.910505, 0.091139, -0.403329,
		-0.357949, 0.662044, -0.658460,
		29.046677, 34.209484, 32.054226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892725, 34.092213, 32.544899>,  <29.297241, 33.746056, 32.515148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892725, 34.092213, 32.544899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167713, 33.821537, 32.439468>,  <30.332706, 33.659130, 32.376209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167713, 33.821537, 32.439468>,  <29.892725, 34.092213, 32.544899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167713, 33.821537, 32.439468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720276, -0.589046, -0.366370,
		0.092659, 0.441719, -0.892356,
		0.687471, -0.676690, -0.263579,
		30.373955, 33.618530, 32.360394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829662, 33.958725, 31.799110>,  <29.892725, 34.092213, 32.544899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829662, 33.958725, 31.799110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984846, 33.651520, 32.002930>,  <30.077955, 33.467197, 32.125221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984846, 33.651520, 32.002930>,  <29.829662, 33.958725, 31.799110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984846, 33.651520, 32.002930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675620, -0.613018, -0.409569,
		0.626918, -0.185367, -0.756712,
		0.387957, -0.768016, 0.509549,
		30.101233, 33.421116, 32.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178385, 33.326824, 31.463913>,  <29.829662, 33.958725, 31.799110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178385, 33.326824, 31.463913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004074, 33.199005, 31.800482>,  <29.899487, 33.122314, 32.002422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004074, 33.199005, 31.800482>,  <30.178385, 33.326824, 31.463913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004074, 33.199005, 31.800482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627227, -0.562654, -0.538523,
		0.645510, -0.762438, 0.044765,
		-0.435778, -0.319544, 0.841421,
		29.873341, 33.103142, 32.052910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287729, 32.568977, 31.547777>,  <30.178385, 33.326824, 31.463913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287729, 32.568977, 31.547777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953873, 32.639008, 31.756670>,  <29.753559, 32.681026, 31.882006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953873, 32.639008, 31.756670>,  <30.287729, 32.568977, 31.547777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953873, 32.639008, 31.756670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501076, -0.635010, -0.587949,
		0.228687, -0.752404, 0.617730,
		-0.834641, 0.175074, 0.522231,
		29.703480, 32.691528, 31.913340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448147, 31.948931, 31.094154>,  <30.287729, 32.568977, 31.547777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448147, 31.948931, 31.094154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449280, 31.620768, 30.865446>,  <30.449961, 31.423870, 30.728222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449280, 31.620768, 30.865446>,  <30.448147, 31.948931, 31.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449280, 31.620768, 30.865446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956656, -0.164279, 0.240460,
		-0.291206, -0.547668, 0.784384,
		0.002834, -0.820409, -0.571769,
		30.450130, 31.374645, 30.693914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677830, 31.311966, 31.390406>,  <30.448147, 31.948931, 31.094154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677830, 31.311966, 31.390406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750925, 31.323540, 30.997311>,  <30.794783, 31.330484, 30.761454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750925, 31.323540, 30.997311>,  <30.677830, 31.311966, 31.390406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750925, 31.323540, 30.997311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980415, -0.080031, 0.179950,
		-0.073443, -0.996372, -0.042992,
		0.182738, 0.028934, -0.982735,
		30.805746, 31.332220, 30.702490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023138, 31.381939, 32.002094>,  <30.677830, 31.311966, 31.390406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023138, 31.381939, 32.002094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115290, 31.770416, 31.977720>,  <31.170582, 32.003502, 31.963097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115290, 31.770416, 31.977720>,  <31.023138, 31.381939, 32.002094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115290, 31.770416, 31.977720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959728, -0.216423, 0.179121,
		0.160774, -0.099746, -0.981938,
		0.230380, 0.971191, -0.060934,
		31.184404, 32.061775, 31.959440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598982, 31.442753, 31.554337>,  <31.023138, 31.381939, 32.002094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598982, 31.442753, 31.554337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573095, 31.748537, 31.810902>,  <31.557564, 31.932009, 31.964840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573095, 31.748537, 31.810902>,  <31.598982, 31.442753, 31.554337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573095, 31.748537, 31.810902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960126, -0.127481, 0.248812,
		0.271975, 0.631939, -0.725729,
		-0.064718, 0.764461, 0.641413,
		31.553680, 31.977875, 32.003326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231377, 31.753742, 31.539968>,  <31.598982, 31.442753, 31.554337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231377, 31.753742, 31.539968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074665, 31.889717, 31.881952>,  <31.980639, 31.971302, 32.087143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074665, 31.889717, 31.881952>,  <32.231377, 31.753742, 31.539968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074665, 31.889717, 31.881952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825137, -0.281257, 0.489941,
		0.407013, 0.897406, -0.170305,
		-0.391777, 0.339938, 0.854958,
		31.957132, 31.991699, 32.138439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680668, 32.285137, 31.843565>,  <32.231377, 31.753742, 31.539968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680668, 32.285137, 31.843565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456955, 32.114883, 32.128109>,  <32.322727, 32.012730, 32.298836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456955, 32.114883, 32.128109>,  <32.680668, 32.285137, 31.843565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456955, 32.114883, 32.128109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828965, -0.282861, 0.482501,
		-0.004153, 0.859550, 0.511035,
		-0.559286, -0.425634, 0.711362,
		32.289169, 31.987194, 32.341518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004738, 32.535110, 32.355808>,  <32.680668, 32.285137, 31.843565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004738, 32.535110, 32.355808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826962, 32.184048, 32.427578>,  <32.720295, 31.973412, 32.470642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826962, 32.184048, 32.427578>,  <33.004738, 32.535110, 32.355808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826962, 32.184048, 32.427578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868832, -0.373542, 0.324957,
		-0.218175, 0.300319, 0.928552,
		-0.444444, -0.877653, 0.179429,
		32.693630, 31.920752, 32.481407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781189, 32.339832, 32.461857>,  <33.004738, 32.535110, 32.355808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781189, 32.339832, 32.461857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874321, 32.552647, 32.787487>,  <33.930199, 32.680336, 32.982864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874321, 32.552647, 32.787487>,  <33.781189, 32.339832, 32.461857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874321, 32.552647, 32.787487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971715, 0.161256, 0.172528,
		-0.039483, -0.831223, 0.554536,
		0.232831, 0.532039, 0.814079,
		33.944172, 32.712257, 33.031712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477428, 32.085476, 32.987278>,  <33.781189, 32.339832, 32.461857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477428, 32.085476, 32.987278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540066, 32.468517, 33.084000>,  <33.577648, 32.698341, 33.142033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540066, 32.468517, 33.084000>,  <33.477428, 32.085476, 32.987278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540066, 32.468517, 33.084000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987106, 0.159969, 0.005719,
		-0.033204, -0.239579, 0.970309,
		0.156589, 0.957607, 0.241802,
		33.587044, 32.755798, 33.156540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964600, 32.260765, 33.418777>,  <33.477428, 32.085476, 32.987278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964600, 32.260765, 33.418777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079750, 32.625843, 33.302765>,  <33.148842, 32.844891, 33.233158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079750, 32.625843, 33.302765>,  <32.964600, 32.260765, 33.418777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079750, 32.625843, 33.302765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950770, 0.236097, -0.200736,
		-0.114735, 0.333540, 0.935728,
		0.287876, 0.912694, -0.290032,
		33.166111, 32.899651, 33.215755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549210, 32.702835, 33.821236>,  <32.964600, 32.260765, 33.418777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549210, 32.702835, 33.821236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666359, 32.871475, 33.477962>,  <32.736649, 32.972660, 33.271999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666359, 32.871475, 33.477962>,  <32.549210, 32.702835, 33.821236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666359, 32.871475, 33.477962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945785, 0.259539, -0.195268,
		0.140408, 0.868846, 0.474755,
		0.292875, 0.421599, -0.858183,
		32.754223, 32.997955, 33.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791134, 33.304916, 34.178963>,  <32.549210, 32.702835, 33.821236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791134, 33.304916, 34.178963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864677, 33.553185, 33.874081>,  <32.908802, 33.702145, 33.691151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864677, 33.553185, 33.874081>,  <32.791134, 33.304916, 34.178963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864677, 33.553185, 33.874081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839328, 0.502712, 0.206903,
		0.511591, 0.601704, 0.613374,
		0.183856, 0.620672, -0.762209,
		32.919834, 33.739388, 33.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573505, 33.900196, 34.435436>,  <32.791134, 33.304916, 34.178963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573505, 33.900196, 34.435436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576172, 33.889542, 34.035587>,  <32.577770, 33.883148, 33.795677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576172, 33.889542, 34.035587>,  <32.573505, 33.900196, 34.435436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576172, 33.889542, 34.035587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979581, 0.200697, -0.011880,
		0.200938, 0.979291, -0.024758,
		0.006665, -0.026639, -0.999623,
		32.578171, 33.881550, 33.735699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354034, 34.562191, 34.139103>,  <32.573505, 33.900196, 34.435436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354034, 34.562191, 34.139103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257938, 34.257740, 33.898113>,  <32.200283, 34.075069, 33.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257938, 34.257740, 33.898113>,  <32.354034, 34.562191, 34.139103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257938, 34.257740, 33.898113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970608, 0.179152, 0.160703,
		-0.014381, 0.623373, -0.781792,
		-0.240237, -0.761124, -0.602474,
		32.185867, 34.029404, 33.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866068, 34.682728, 33.464466>,  <32.354034, 34.562191, 34.139103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866068, 34.682728, 33.464466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854115, 34.341991, 33.673645>,  <31.846943, 34.137550, 33.799152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854115, 34.341991, 33.673645>,  <31.866068, 34.682728, 33.464466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854115, 34.341991, 33.673645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988474, 0.102867, 0.111075,
		-0.148412, -0.513601, -0.845097,
		-0.029885, -0.851841, 0.522947,
		31.845150, 34.086441, 33.830528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307358, 34.105515, 33.193558>,  <31.866068, 34.682728, 33.464466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307358, 34.105515, 33.193558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336508, 34.037254, 33.586609>,  <31.353998, 33.996296, 33.822441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336508, 34.037254, 33.586609>,  <31.307358, 34.105515, 33.193558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336508, 34.037254, 33.586609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988306, 0.119962, 0.094131,
		-0.133943, -0.978001, -0.159915,
		0.072877, -0.170653, 0.982633,
		31.358372, 33.986057, 33.881397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982658, 33.483234, 33.607002>,  <31.307358, 34.105515, 33.193558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982658, 33.483234, 33.607002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971972, 33.831341, 33.803745>,  <30.965559, 34.040203, 33.921791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971972, 33.831341, 33.803745>,  <30.982658, 33.483234, 33.607002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971972, 33.831341, 33.803745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988510, -0.096228, 0.116566,
		0.148774, -0.483095, 0.862836,
		-0.026717, 0.870264, 0.491861,
		30.963957, 34.092419, 33.951305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120356, 32.797207, 33.705204>,  <30.982658, 33.483234, 33.607002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120356, 32.797207, 33.705204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139866, 32.407097, 33.791420>,  <31.151573, 32.173031, 33.843151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139866, 32.407097, 33.791420>,  <31.120356, 32.797207, 33.705204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139866, 32.407097, 33.791420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501006, 0.162796, 0.849994,
		-0.864068, -0.149447, -0.480678,
		0.048776, -0.975276, 0.215541,
		31.154499, 32.114513, 33.856083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764891, 32.820583, 33.501553>,  <31.120356, 32.797207, 33.705204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764891, 32.820583, 33.501553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731543, 33.218418, 33.526390>,  <31.711535, 33.457119, 33.541294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731543, 33.218418, 33.526390>,  <31.764891, 32.820583, 33.501553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731543, 33.218418, 33.526390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941669, 0.099015, -0.321644,
		-0.326050, 0.031656, -0.944823,
		-0.083370, 0.994582, 0.062093,
		31.706532, 33.516792, 33.545017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930386, 33.130535, 32.817860>,  <31.764891, 32.820583, 33.501553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930386, 33.130535, 32.817860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000896, 33.409435, 33.095787>,  <32.043205, 33.576775, 33.262543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000896, 33.409435, 33.095787>,  <31.930386, 33.130535, 32.817860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000896, 33.409435, 33.095787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941220, 0.087238, -0.326335,
		-0.288151, 0.711503, -0.640884,
		0.176279, 0.697247, 0.694818,
		32.053780, 33.618610, 33.304234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406017, 33.387829, 32.504440>,  <31.930386, 33.130535, 32.817860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406017, 33.387829, 32.504440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438908, 33.524830, 32.878803>,  <32.458641, 33.607033, 33.103420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438908, 33.524830, 32.878803>,  <32.406017, 33.387829, 32.504440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438908, 33.524830, 32.878803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977217, -0.212082, -0.008246,
		0.195665, 0.915265, -0.352142,
		0.082230, 0.342506, 0.935910,
		32.463577, 33.627583, 33.159576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936718, 33.993912, 32.620365>,  <32.406017, 33.387829, 32.504440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936718, 33.993912, 32.620365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925499, 33.757160, 32.942581>,  <32.918766, 33.615108, 33.135910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925499, 33.757160, 32.942581>,  <32.936718, 33.993912, 32.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925499, 33.757160, 32.942581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955374, -0.252939, -0.152589,
		0.294066, 0.765308, 0.572563,
		-0.028046, -0.591883, 0.805536,
		32.917084, 33.579594, 33.184242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607418, 34.065838, 33.077633>,  <32.936718, 33.993912, 32.620365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607418, 34.065838, 33.077633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446907, 33.705536, 33.144115>,  <33.350601, 33.489357, 33.184006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446907, 33.705536, 33.144115>,  <33.607418, 34.065838, 33.077633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446907, 33.705536, 33.144115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914305, -0.404796, 0.013660,
		0.054973, 0.157441, 0.985997,
		-0.401278, -0.900751, 0.166202,
		33.326523, 33.435310, 33.193977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976574, 33.885376, 33.628605>,  <33.607418, 34.065838, 33.077633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976574, 33.885376, 33.628605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835403, 33.558968, 33.445499>,  <33.750702, 33.363121, 33.335636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835403, 33.558968, 33.445499>,  <33.976574, 33.885376, 33.628605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835403, 33.558968, 33.445499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835534, -0.495060, 0.238325,
		-0.421098, -0.298363, 0.856538,
		-0.352930, -0.816024, -0.457761,
		33.729523, 33.314159, 33.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238029, 33.458866, 34.062325>,  <33.976574, 33.885376, 33.628605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238029, 33.458866, 34.062325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137508, 33.255501, 33.732872>,  <34.077198, 33.133480, 33.535202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137508, 33.255501, 33.732872>,  <34.238029, 33.458866, 34.062325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137508, 33.255501, 33.732872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926883, -0.371522, -0.053468,
		-0.278812, -0.776843, 0.564605,
		-0.251300, -0.508415, -0.823628,
		34.062119, 33.102978, 33.485783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484310, 32.757339, 34.087421>,  <34.238029, 33.458866, 34.062325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484310, 32.757339, 34.087421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451797, 32.815315, 33.692982>,  <34.432289, 32.850101, 33.456318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451797, 32.815315, 33.692982>,  <34.484310, 32.757339, 34.087421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451797, 32.815315, 33.692982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891488, -0.431847, -0.136954,
		-0.445693, -0.890226, -0.094108,
		-0.081279, 0.144935, -0.986097,
		34.427414, 32.858795, 33.397152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529366, 32.147362, 33.732403>,  <34.484310, 32.757339, 34.087421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529366, 32.147362, 33.732403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662773, 32.438469, 33.492695>,  <34.742817, 32.613132, 33.348869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662773, 32.438469, 33.492695>,  <34.529366, 32.147362, 33.732403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662773, 32.438469, 33.492695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867860, -0.485293, -0.106348,
		-0.368218, -0.484613, -0.793451,
		0.333519, 0.727764, -0.599270,
		34.762829, 32.656799, 33.312912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876507, 31.838806, 33.243557>,  <34.529366, 32.147362, 33.732403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876507, 31.838806, 33.243557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038990, 32.203804, 33.262943>,  <35.136478, 32.422802, 33.274574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038990, 32.203804, 33.262943>,  <34.876507, 31.838806, 33.243557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038990, 32.203804, 33.262943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905328, -0.409078, 0.114178,
		0.124013, -0.002503, -0.992277,
		0.406204, 0.912496, 0.048465,
		35.160851, 32.477554, 33.277481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237663, 32.247585, 32.685513>,  <34.876507, 31.838806, 33.243557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237663, 32.247585, 32.685513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622269, 32.138481, 32.698780>,  <35.853031, 32.073017, 32.706741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622269, 32.138481, 32.698780>,  <35.237663, 32.247585, 32.685513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622269, 32.138481, 32.698780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267141, -0.899722, 0.345160,
		-0.064303, -0.340736, -0.937958,
		0.961510, -0.272762, 0.033170,
		35.910721, 32.056652, 32.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251183, 31.583719, 32.428337>,  <35.237663, 32.247585, 32.685513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251183, 31.583719, 32.428337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605503, 31.593733, 32.613693>,  <35.818096, 31.599741, 32.724907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605503, 31.593733, 32.613693>,  <35.251183, 31.583719, 32.428337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605503, 31.593733, 32.613693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039662, -0.990806, 0.129343,
		0.462369, -0.132951, -0.876663,
		0.885800, 0.025034, 0.463392,
		35.871243, 31.601244, 32.752712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803333, 31.174822, 32.099483>,  <35.251183, 31.583719, 32.428337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803333, 31.174822, 32.099483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846611, 31.208389, 32.495716>,  <35.872578, 31.228531, 32.733456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846611, 31.208389, 32.495716>,  <35.803333, 31.174822, 32.099483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846611, 31.208389, 32.495716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350558, -0.935644, 0.040977,
		0.930271, 0.342822, -0.130651,
		0.108195, 0.083921, 0.990581,
		35.879070, 31.233566, 32.792889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417019, 30.685949, 32.264744>,  <35.803333, 31.174822, 32.099483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417019, 30.685949, 32.264744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220097, 30.785824, 32.598282>,  <36.101944, 30.845749, 32.798405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220097, 30.785824, 32.598282>,  <36.417019, 30.685949, 32.264744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220097, 30.785824, 32.598282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147292, -0.920262, 0.362523,
		0.857871, 0.301290, 0.416271,
		-0.492303, 0.249685, 0.833844,
		36.072407, 30.860729, 32.848434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611328, 29.986498, 31.910574>,  <36.417019, 30.685949, 32.264744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611328, 29.986498, 31.910574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801846, 30.127417, 32.232822>,  <36.916157, 30.211967, 32.426170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801846, 30.127417, 32.232822>,  <36.611328, 29.986498, 31.910574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801846, 30.127417, 32.232822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428156, -0.707342, 0.562450,
		0.768001, -0.612825, -0.186066,
		0.476295, 0.352297, 0.805624,
		36.944733, 30.233107, 32.474510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519775, 30.028204, 31.090595>,  <36.611328, 29.986498, 31.910574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519775, 30.028204, 31.090595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660061, 29.811733, 30.784882>,  <36.744232, 29.681850, 30.601454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660061, 29.811733, 30.784882>,  <36.519775, 30.028204, 31.090595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660061, 29.811733, 30.784882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022927, 0.820837, -0.570702,
		0.936202, 0.182630, 0.300286,
		0.350713, -0.541177, -0.764282,
		36.765274, 29.649380, 30.555597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182541, 30.402210, 30.920214>,  <36.519775, 30.028204, 31.090595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182541, 30.402210, 30.920214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063580, 30.170696, 30.616488>,  <36.992203, 30.031788, 30.434252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063580, 30.170696, 30.616488>,  <37.182541, 30.402210, 30.920214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063580, 30.170696, 30.616488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227286, 0.729517, -0.645094,
		0.927303, -0.364437, -0.085414,
		-0.297408, -0.578784, -0.759314,
		36.974358, 29.997061, 30.388693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727676, 30.454088, 30.458565>,  <37.182541, 30.402210, 30.920214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727676, 30.454088, 30.458565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401424, 30.330166, 30.263107>,  <37.205673, 30.255812, 30.145834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401424, 30.330166, 30.263107>,  <37.727676, 30.454088, 30.458565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401424, 30.330166, 30.263107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181716, 0.664655, -0.724716,
		0.549298, -0.679894, -0.485815,
		-0.815629, -0.309805, -0.488641,
		37.156734, 30.237225, 30.116514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890388, 30.399105, 29.734846>,  <37.727676, 30.454088, 30.458565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890388, 30.399105, 29.734846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491745, 30.430763, 29.725891>,  <37.252560, 30.449759, 29.720518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491745, 30.430763, 29.725891>,  <37.890388, 30.399105, 29.734846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491745, 30.430763, 29.725891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077794, 0.818629, -0.569030,
		-0.026710, -0.568843, -0.822012,
		-0.996612, 0.079146, -0.022387,
		37.192760, 30.454508, 29.719175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712101, 30.499146, 28.976450>,  <37.890388, 30.399105, 29.734846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712101, 30.499146, 28.976450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416271, 30.646154, 29.202002>,  <37.238773, 30.734360, 29.337332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416271, 30.646154, 29.202002>,  <37.712101, 30.499146, 28.976450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416271, 30.646154, 29.202002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209539, 0.921850, -0.326014,
		-0.639628, -0.122957, -0.758787,
		-0.739573, 0.367523, 0.563877,
		37.194401, 30.756411, 29.371164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343929, 30.840797, 28.524736>,  <37.712101, 30.499146, 28.976450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343929, 30.840797, 28.524736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279697, 30.977104, 28.895269>,  <37.241158, 31.058887, 29.117588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279697, 30.977104, 28.895269>,  <37.343929, 30.840797, 28.524736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279697, 30.977104, 28.895269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165391, 0.934532, -0.315113,
		-0.973067, 0.102605, -0.206430,
		-0.160583, 0.340767, 0.926332,
		37.231522, 31.079334, 29.173168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303951, 31.342970, 27.780941>,  <37.343929, 30.840797, 28.524736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303951, 31.342970, 27.780941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406616, 31.727978, 27.745884>,  <37.468216, 31.958982, 27.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406616, 31.727978, 27.745884>,  <37.303951, 31.342970, 27.780941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406616, 31.727978, 27.745884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518424, 0.213636, 0.828007,
		0.815696, -0.167083, 0.553826,
		0.256663, 0.962519, -0.087642,
		37.483616, 32.016735, 27.719591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047535, 31.578205, 27.693893>,  <37.303951, 31.342970, 27.780941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047535, 31.578205, 27.693893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279202, 31.783113, 27.440235>,  <38.418201, 31.906059, 27.288040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279202, 31.783113, 27.440235>,  <38.047535, 31.578205, 27.693893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279202, 31.783113, 27.440235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540689, -0.340783, -0.769105,
		-0.610097, 0.788317, 0.079608,
		0.579170, 0.512272, -0.634145,
		38.452953, 31.936794, 27.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615669, 31.930656, 27.231907>,  <38.047535, 31.578205, 27.693893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615669, 31.930656, 27.231907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966743, 31.873991, 27.048780>,  <38.177387, 31.839991, 26.938904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966743, 31.873991, 27.048780>,  <37.615669, 31.930656, 27.231907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966743, 31.873991, 27.048780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477556, -0.178694, -0.860238,
		0.040057, 0.973652, -0.224491,
		0.877688, -0.141665, -0.457816,
		38.230049, 31.831491, 26.911436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781754, 32.403992, 26.630325>,  <37.615669, 31.930656, 27.231907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781754, 32.403992, 26.630325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923557, 32.030251, 26.615841>,  <38.008640, 31.806007, 26.607151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923557, 32.030251, 26.615841>,  <37.781754, 32.403992, 26.630325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923557, 32.030251, 26.615841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219707, -0.045595, -0.974500,
		0.908873, 0.353427, -0.221447,
		0.354511, -0.934350, -0.036211,
		38.029911, 31.749945, 26.604979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329998, 32.428574, 26.071758>,  <37.781754, 32.403992, 26.630325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329998, 32.428574, 26.071758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160404, 32.069046, 26.116217>,  <38.058647, 31.853329, 26.142891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160404, 32.069046, 26.116217>,  <38.329998, 32.428574, 26.071758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160404, 32.069046, 26.116217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209177, -0.022219, -0.977625,
		0.881181, -0.437751, -0.178592,
		-0.423988, -0.898821, 0.111147,
		38.033207, 31.799400, 26.149561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608372, 31.925571, 25.561611>,  <38.329998, 32.428574, 26.071758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608372, 31.925571, 25.561611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243050, 31.807880, 25.674250>,  <38.023857, 31.737265, 25.741833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243050, 31.807880, 25.674250>,  <38.608372, 31.925571, 25.561611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243050, 31.807880, 25.674250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251349, -0.136827, -0.958177,
		0.320455, -0.945889, 0.051010,
		-0.913308, -0.294231, 0.281595,
		37.969055, 31.719612, 25.758728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524414, 31.296816, 25.263361>,  <38.608372, 31.925571, 25.561611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524414, 31.296816, 25.263361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152702, 31.424635, 25.337465>,  <37.929676, 31.501328, 25.381927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152702, 31.424635, 25.337465>,  <38.524414, 31.296816, 25.263361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152702, 31.424635, 25.337465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262424, -0.218214, -0.939955,
		-0.259940, -0.922100, 0.286641,
		-0.929282, 0.319553, 0.185259,
		37.873917, 31.520500, 25.393044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074986, 30.795000, 25.104853>,  <38.524414, 31.296816, 25.263361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074986, 30.795000, 25.104853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853462, 31.127876, 25.093859>,  <37.720547, 31.327602, 25.087263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853462, 31.127876, 25.093859>,  <38.074986, 30.795000, 25.104853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853462, 31.127876, 25.093859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212402, -0.173111, -0.961726,
		-0.805097, -0.526776, 0.272630,
		-0.553809, 0.832190, -0.027483,
		37.687321, 31.377533, 25.085613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537659, 30.577143, 24.817812>,  <38.074986, 30.795000, 25.104853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537659, 30.577143, 24.817812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479080, 30.972486, 24.801334>,  <37.443932, 31.209694, 24.791447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479080, 30.972486, 24.801334>,  <37.537659, 30.577143, 24.817812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479080, 30.972486, 24.801334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346155, -0.090213, -0.933830,
		-0.926677, -0.122495, 0.355337,
		-0.146445, 0.988360, -0.041196,
		37.435146, 31.268995, 24.788975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823696, 30.706999, 24.583841>,  <37.537659, 30.577143, 24.817812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823696, 30.706999, 24.583841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036419, 31.034912, 24.498865>,  <37.164055, 31.231661, 24.447880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036419, 31.034912, 24.498865>,  <36.823696, 30.706999, 24.583841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036419, 31.034912, 24.498865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304169, -0.049212, -0.951346,
		-0.790353, 0.570554, 0.223182,
		0.531811, 0.819785, -0.212440,
		37.195961, 31.280848, 24.435133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379868, 31.112104, 24.198351>,  <36.823696, 30.706999, 24.583841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379868, 31.112104, 24.198351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736862, 31.267084, 24.105959>,  <36.951057, 31.360071, 24.050524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736862, 31.267084, 24.105959>,  <36.379868, 31.112104, 24.198351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736862, 31.267084, 24.105959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241499, -0.022067, -0.970150,
		-0.380979, 0.921628, 0.073873,
		0.892487, 0.387447, -0.230979,
		37.004608, 31.383318, 24.036665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250874, 31.682011, 23.793703>,  <36.379868, 31.112104, 24.198351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250874, 31.682011, 23.793703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619854, 31.549532, 23.714312>,  <36.841244, 31.470045, 23.666677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619854, 31.549532, 23.714312>,  <36.250874, 31.682011, 23.793703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619854, 31.549532, 23.714312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142485, 0.185773, -0.972207,
		0.358862, 0.925094, 0.124176,
		0.922451, -0.331195, -0.198479,
		36.896591, 31.450174, 23.654768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547287, 32.124554, 23.285801>,  <36.250874, 31.682011, 23.793703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547287, 32.124554, 23.285801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749363, 31.780413, 23.258722>,  <36.870609, 31.573929, 23.242476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749363, 31.780413, 23.258722>,  <36.547287, 32.124554, 23.285801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749363, 31.780413, 23.258722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167196, -0.020614, -0.985708,
		0.846657, 0.509289, -0.154261,
		0.505190, -0.860349, -0.067698,
		36.900921, 31.522308, 23.238413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875233, 32.127613, 22.599348>,  <36.547287, 32.124554, 23.285801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875233, 32.127613, 22.599348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860836, 31.744827, 22.714531>,  <36.852200, 31.515156, 22.783642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860836, 31.744827, 22.714531>,  <36.875233, 32.127613, 22.599348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860836, 31.744827, 22.714531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275620, -0.267464, -0.923307,
		0.960592, -0.112599, -0.254132,
		-0.035992, -0.956966, 0.287959,
		36.850037, 31.457737, 22.800919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111343, 31.845093, 21.977053>,  <36.875233, 32.127613, 22.599348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111343, 31.845093, 21.977053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950214, 31.545336, 22.187250>,  <36.853535, 31.365482, 22.313370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950214, 31.545336, 22.187250>,  <37.111343, 31.845093, 21.977053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950214, 31.545336, 22.187250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461075, -0.329819, -0.823789,
		0.790658, -0.574136, -0.212666,
		-0.402826, -0.749391, 0.525494,
		36.829365, 31.320518, 22.344898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324097, 31.274546, 21.597055>,  <37.111343, 31.845093, 21.977053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324097, 31.274546, 21.597055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007374, 31.165033, 21.815447>,  <36.817341, 31.099325, 21.946482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007374, 31.165033, 21.815447>,  <37.324097, 31.274546, 21.597055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007374, 31.165033, 21.815447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422874, -0.399269, -0.813487,
		0.440710, -0.875001, 0.200368,
		-0.791803, -0.273782, 0.545977,
		36.769833, 31.082899, 21.979240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119328, 30.442104, 21.439785>,  <37.324097, 31.274546, 21.597055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119328, 30.442104, 21.439785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806286, 30.630625, 21.602463>,  <36.618462, 30.743736, 21.700069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806286, 30.630625, 21.602463>,  <37.119328, 30.442104, 21.439785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806286, 30.630625, 21.602463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599146, -0.392950, -0.697577,
		-0.168958, -0.789599, 0.589904,
		-0.782609, 0.471300, 0.406694,
		36.571503, 30.772015, 21.724470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615326, 29.976049, 21.613546>,  <37.119328, 30.442104, 21.439785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615326, 29.976049, 21.613546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424053, 30.322718, 21.556658>,  <36.309292, 30.530718, 21.522526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424053, 30.322718, 21.556658>,  <36.615326, 29.976049, 21.613546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424053, 30.322718, 21.556658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721764, -0.480051, -0.498607,
		-0.500403, -0.135770, 0.855081,
		-0.478178, 0.866671, -0.142225,
		36.280598, 30.582718, 21.513992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964931, 29.823824, 21.838133>,  <36.615326, 29.976049, 21.613546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964931, 29.823824, 21.838133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897388, 30.145098, 21.609613>,  <35.856861, 30.337862, 21.472502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897388, 30.145098, 21.609613>,  <35.964931, 29.823824, 21.838133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897388, 30.145098, 21.609613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790429, -0.456613, -0.408323,
		-0.588820, 0.382621, 0.711964,
		-0.168859, 0.803185, -0.571297,
		35.846729, 30.386053, 21.438225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248032, 29.730581, 21.643250>,  <35.964931, 29.823824, 21.838133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248032, 29.730581, 21.643250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386402, 30.024191, 21.409481>,  <35.469425, 30.200357, 21.269220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386402, 30.024191, 21.409481>,  <35.248032, 29.730581, 21.643250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386402, 30.024191, 21.409481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514083, -0.372780, -0.772498,
		-0.784892, 0.567665, 0.248396,
		0.345923, 0.734024, -0.584419,
		35.490177, 30.244398, 21.234156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655025, 30.024889, 21.367609>,  <35.248032, 29.730581, 21.643250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655025, 30.024889, 21.367609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956940, 30.117723, 21.122190>,  <35.138088, 30.173424, 20.974939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956940, 30.117723, 21.122190>,  <34.655025, 30.024889, 21.367609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956940, 30.117723, 21.122190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534844, -0.323803, -0.780444,
		-0.379799, 0.917217, -0.120271,
		0.754781, 0.232086, -0.613549,
		35.183372, 30.187349, 20.938126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349510, 30.396479, 20.825378>,  <34.655025, 30.024889, 21.367609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349510, 30.396479, 20.825378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691990, 30.224339, 20.711029>,  <34.897476, 30.121056, 20.642420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691990, 30.224339, 20.711029>,  <34.349510, 30.396479, 20.825378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691990, 30.224339, 20.711029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433472, -0.297291, -0.850718,
		0.281117, 0.852302, -0.441084,
		0.856198, -0.430349, -0.285875,
		34.948849, 30.095234, 20.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286037, 30.579596, 20.174065>,  <34.349510, 30.396479, 20.825378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286037, 30.579596, 20.174065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576324, 30.304794, 20.159285>,  <34.750496, 30.139914, 20.150417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576324, 30.304794, 20.159285>,  <34.286037, 30.579596, 20.174065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576324, 30.304794, 20.159285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277802, -0.243475, -0.929272,
		0.629416, 0.684651, -0.367544,
		0.725715, -0.687003, -0.036951,
		34.794041, 30.098694, 20.148199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513847, 30.624325, 19.521366>,  <34.286037, 30.579596, 20.174065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513847, 30.624325, 19.521366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621964, 30.258158, 19.640667>,  <34.686832, 30.038458, 19.712248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621964, 30.258158, 19.640667>,  <34.513847, 30.624325, 19.521366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621964, 30.258158, 19.640667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467969, -0.395640, -0.790237,
		0.841396, 0.074022, -0.535325,
		0.270291, -0.915418, 0.298250,
		34.703053, 29.983532, 19.730143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880260, 30.273777, 18.896315>,  <34.513847, 30.624325, 19.521366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880260, 30.273777, 18.896315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769691, 29.976618, 19.140181>,  <34.703350, 29.798323, 19.286501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769691, 29.976618, 19.140181>,  <34.880260, 30.273777, 18.896315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769691, 29.976618, 19.140181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289984, -0.540338, -0.789901,
		0.916243, -0.395138, -0.066069,
		-0.276420, -0.742900, 0.609664,
		34.686764, 29.753748, 19.323080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089008, 29.726263, 18.569847>,  <34.880260, 30.273777, 18.896315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089008, 29.726263, 18.569847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811817, 29.599274, 18.828764>,  <34.645500, 29.523079, 18.984114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811817, 29.599274, 18.828764>,  <35.089008, 29.726263, 18.569847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811817, 29.599274, 18.828764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334428, -0.653834, -0.678719,
		0.638697, -0.686812, 0.346923,
		-0.692982, -0.317475, 0.647291,
		34.603924, 29.504032, 19.022951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083485, 29.105967, 18.608536>,  <35.089008, 29.726263, 18.569847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083485, 29.105967, 18.608536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714462, 29.180309, 18.743797>,  <34.493050, 29.224915, 18.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714462, 29.180309, 18.743797>,  <35.083485, 29.105967, 18.608536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714462, 29.180309, 18.743797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356417, -0.746226, -0.562240,
		0.147843, -0.639222, 0.754677,
		-0.922556, 0.185857, 0.338153,
		34.437695, 29.236067, 18.845243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882702, 28.503458, 18.678144>,  <35.083485, 29.105967, 18.608536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882702, 28.503458, 18.678144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532154, 28.696106, 18.676210>,  <34.321827, 28.811695, 18.675049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532154, 28.696106, 18.676210>,  <34.882702, 28.503458, 18.678144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532154, 28.696106, 18.676210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353721, -0.650395, -0.672211,
		-0.326895, -0.587393, 0.740344,
		-0.876368, 0.481618, -0.004837,
		34.269245, 28.840591, 18.674759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326405, 28.013243, 18.919861>,  <34.882702, 28.503458, 18.678144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326405, 28.013243, 18.919861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193111, 28.306919, 18.683245>,  <34.113136, 28.483124, 18.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193111, 28.306919, 18.683245>,  <34.326405, 28.013243, 18.919861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193111, 28.306919, 18.683245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365792, -0.678931, -0.636592,
		-0.868995, 0.004250, 0.494802,
		-0.333231, 0.734190, -0.591542,
		34.093143, 28.527176, 18.505781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687202, 27.752836, 18.701628>,  <34.326405, 28.013243, 18.919861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687202, 27.752836, 18.701628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729290, 28.062876, 18.452419>,  <33.754543, 28.248899, 18.302895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729290, 28.062876, 18.452419>,  <33.687202, 27.752836, 18.701628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729290, 28.062876, 18.452419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571417, -0.465620, -0.675782,
		-0.813887, 0.427110, 0.393911,
		0.105220, 0.775097, -0.623019,
		33.760857, 28.295404, 18.265514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039089, 27.826511, 18.448322>,  <33.687202, 27.752836, 18.701628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039089, 27.826511, 18.448322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291096, 27.978956, 18.177668>,  <33.442299, 28.070423, 18.015276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291096, 27.978956, 18.177668>,  <33.039089, 27.826511, 18.448322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291096, 27.978956, 18.177668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542145, -0.407991, -0.734590,
		-0.556022, 0.829637, -0.050422,
		0.630014, 0.381112, -0.676636,
		33.480099, 28.093290, 17.974676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553444, 27.996593, 17.983736>,  <33.039089, 27.826511, 18.448322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553444, 27.996593, 17.983736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904461, 27.993811, 17.791960>,  <33.115070, 27.992142, 17.676893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904461, 27.993811, 17.791960>,  <32.553444, 27.996593, 17.983736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904461, 27.993811, 17.791960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467755, -0.232290, -0.852788,
		-0.105436, 0.972621, -0.207100,
		0.877547, -0.006957, -0.479440,
		33.167725, 27.991724, 17.648129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363148, 28.361696, 17.353655>,  <32.553444, 27.996593, 17.983736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363148, 28.361696, 17.353655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680870, 28.123844, 17.303856>,  <32.871502, 27.981133, 17.273975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680870, 28.123844, 17.303856>,  <32.363148, 28.361696, 17.353655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680870, 28.123844, 17.303856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428462, -0.403015, -0.808702,
		0.430704, 0.695697, -0.574892,
		0.794301, -0.594630, -0.124500,
		32.919159, 27.945456, 17.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535954, 28.374304, 16.678528>,  <32.363148, 28.361696, 17.353655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535954, 28.374304, 16.678528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708191, 28.036304, 16.805374>,  <32.811535, 27.833504, 16.881481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708191, 28.036304, 16.805374>,  <32.535954, 28.374304, 16.678528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708191, 28.036304, 16.805374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398203, -0.493178, -0.773441,
		0.809951, 0.206766, -0.548843,
		0.430598, -0.844999, 0.317115,
		32.837372, 27.782804, 16.900509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782707, 28.155180, 16.102339>,  <32.535954, 28.374304, 16.678528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782707, 28.155180, 16.102339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771717, 27.830139, 16.335207>,  <32.765121, 27.635115, 16.474928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771717, 27.830139, 16.335207>,  <32.782707, 28.155180, 16.102339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771717, 27.830139, 16.335207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268777, -0.554939, -0.787275,
		0.962811, -0.178109, -0.203158,
		-0.027480, -0.812601, 0.582172,
		32.763474, 27.586359, 16.509859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111988, 27.666750, 15.718810>,  <32.782707, 28.155180, 16.102339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111988, 27.666750, 15.718810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885452, 27.455933, 15.972261>,  <32.749531, 27.329441, 16.124332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885452, 27.455933, 15.972261>,  <33.111988, 27.666750, 15.718810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885452, 27.455933, 15.972261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379481, -0.515707, -0.768141,
		0.731611, -0.675478, 0.092061,
		-0.566338, -0.527045, 0.633628,
		32.715549, 27.297819, 16.162350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998791, 27.141186, 15.255153>,  <33.111988, 27.666750, 15.718810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998791, 27.141186, 15.255153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753048, 27.079821, 15.564740>,  <32.605602, 27.043001, 15.750493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753048, 27.079821, 15.564740>,  <32.998791, 27.141186, 15.255153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753048, 27.079821, 15.564740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554592, -0.613773, -0.561881,
		0.561241, -0.774433, 0.291995,
		-0.614359, -0.153413, 0.773969,
		32.568741, 27.033796, 15.796931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742790, 26.499004, 15.123224>,  <32.998791, 27.141186, 15.255153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742790, 26.499004, 15.123224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473106, 26.648668, 15.377925>,  <32.311298, 26.738466, 15.530746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473106, 26.648668, 15.377925>,  <32.742790, 26.499004, 15.123224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473106, 26.648668, 15.377925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728828, -0.476460, -0.491727,
		0.119402, -0.795607, 0.593930,
		-0.674205, 0.374159, 0.636751,
		32.270844, 26.760916, 15.568951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404083, 25.928465, 15.371148>,  <32.742790, 26.499004, 15.123224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404083, 25.928465, 15.371148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160603, 26.244047, 15.404700>,  <32.014515, 26.433395, 15.424831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160603, 26.244047, 15.404700>,  <32.404083, 25.928465, 15.371148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160603, 26.244047, 15.404700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611985, -0.399601, -0.682490,
		-0.504936, -0.466764, 0.726066,
		-0.608699, 0.788955, 0.083880,
		31.977993, 26.480734, 15.429865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756485, 25.627941, 15.388140>,  <32.404083, 25.928465, 15.371148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756485, 25.627941, 15.388140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705065, 26.007719, 15.273574>,  <31.674212, 26.235586, 15.204835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705065, 26.007719, 15.273574>,  <31.756485, 25.627941, 15.388140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705065, 26.007719, 15.273574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640723, -0.299955, -0.706753,
		-0.756933, 0.092657, 0.646890,
		-0.128552, 0.949443, -0.286414,
		31.666500, 26.292551, 15.187650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098680, 25.541237, 15.136213>,  <31.756485, 25.627941, 15.388140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098680, 25.541237, 15.136213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181463, 25.909906, 15.004951>,  <31.231133, 26.131107, 14.926194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181463, 25.909906, 15.004951>,  <31.098680, 25.541237, 15.136213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181463, 25.909906, 15.004951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633072, -0.129568, -0.763172,
		-0.745914, 0.365691, 0.556671,
		0.206958, 0.921674, -0.328155,
		31.243551, 26.186409, 14.906505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477638, 25.944096, 14.989902>,  <31.098680, 25.541237, 15.136213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477638, 25.944096, 14.989902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764908, 26.097725, 14.757795>,  <30.937269, 26.189903, 14.618531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764908, 26.097725, 14.757795>,  <30.477638, 25.944096, 14.989902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764908, 26.097725, 14.757795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637014, 0.027251, -0.770370,
		-0.280068, 0.922900, 0.264232,
		0.718175, 0.384075, -0.580268,
		30.980360, 26.212948, 14.583714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135910, 26.468224, 14.554659>,  <30.477638, 25.944096, 14.989902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135910, 26.468224, 14.554659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482449, 26.369915, 14.380744>,  <30.690372, 26.310930, 14.276395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482449, 26.369915, 14.380744>,  <30.135910, 26.468224, 14.554659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482449, 26.369915, 14.380744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474289, -0.132054, -0.870409,
		0.156505, 0.960291, -0.230971,
		0.866346, -0.245771, -0.434788,
		30.742352, 26.296185, 14.250307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075293, 26.767418, 13.854818>,  <30.135910, 26.468224, 14.554659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075293, 26.767418, 13.854818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375301, 26.504494, 13.825412>,  <30.555307, 26.346739, 13.807768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375301, 26.504494, 13.825412>,  <30.075293, 26.767418, 13.854818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375301, 26.504494, 13.825412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292937, -0.230469, -0.927940,
		0.593003, 0.717512, -0.365408,
		0.750023, -0.657313, -0.073517,
		30.600307, 26.307301, 13.803357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441475, 26.869446, 13.133082>,  <30.075293, 26.767418, 13.854818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441475, 26.869446, 13.133082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518251, 26.498508, 13.261578>,  <30.564318, 26.275946, 13.338675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518251, 26.498508, 13.261578>,  <30.441475, 26.869446, 13.133082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518251, 26.498508, 13.261578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405477, -0.373013, -0.834536,
		0.893727, 0.029927, -0.447612,
		0.191940, -0.927343, 0.321237,
		30.575834, 26.220306, 13.357948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628334, 26.452391, 12.528116>,  <30.441475, 26.869446, 13.133082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628334, 26.452391, 12.528116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500111, 26.190407, 12.801838>,  <30.423176, 26.033216, 12.966071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500111, 26.190407, 12.801838>,  <30.628334, 26.452391, 12.528116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500111, 26.190407, 12.801838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477716, -0.512039, -0.713865,
		0.817943, -0.555738, -0.148746,
		-0.320558, -0.654959, 0.684304,
		30.403944, 25.993919, 13.007129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840429, 25.755478, 12.347693>,  <30.628334, 26.452391, 12.528116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840429, 25.755478, 12.347693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497183, 25.753723, 12.553068>,  <30.291235, 25.752670, 12.676293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497183, 25.753723, 12.553068>,  <30.840429, 25.755478, 12.347693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497183, 25.753723, 12.553068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461743, -0.430752, -0.775400,
		0.224567, -0.902460, 0.367609,
		-0.858116, -0.004389, 0.513437,
		30.239748, 25.752407, 12.707099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468699, 24.975611, 12.469505>,  <30.840429, 25.755478, 12.347693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468699, 24.975611, 12.469505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201864, 25.273237, 12.454746>,  <30.041763, 25.451813, 12.445890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201864, 25.273237, 12.454746>,  <30.468699, 24.975611, 12.469505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201864, 25.273237, 12.454746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509233, -0.491580, -0.706421,
		-0.543764, -0.452453, 0.706829,
		-0.667085, 0.744067, -0.036900,
		30.001738, 25.496456, 12.443677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807411, 24.631567, 12.295131>,  <30.468699, 24.975611, 12.469505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807411, 24.631567, 12.295131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768936, 25.020144, 12.208365>,  <29.745852, 25.253290, 12.156306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768936, 25.020144, 12.208365>,  <29.807411, 24.631567, 12.295131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768936, 25.020144, 12.208365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523130, -0.234737, -0.819288,
		-0.846807, 0.034668, 0.530769,
		-0.096188, 0.971440, -0.216913,
		29.740080, 25.311575, 12.143291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073723, 24.891190, 12.217654>,  <29.807411, 24.631567, 12.295131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073723, 24.891190, 12.217654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344707, 25.063856, 11.979424>,  <29.507299, 25.167456, 11.836487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344707, 25.063856, 11.979424>,  <29.073723, 24.891190, 12.217654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344707, 25.063856, 11.979424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549538, -0.241178, -0.799901,
		-0.488928, 0.869194, 0.073827,
		0.677464, 0.431665, -0.595574,
		29.547947, 25.193356, 11.800753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792992, 25.397120, 12.715501>,  <29.073723, 24.891190, 12.217654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792992, 25.397120, 12.715501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182411, 25.316195, 12.673027>,  <29.416063, 25.267639, 12.647543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182411, 25.316195, 12.673027>,  <28.792992, 25.397120, 12.715501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182411, 25.316195, 12.673027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152178, 0.227478, 0.961819,
		-0.170435, -0.952535, 0.252248,
		0.973547, -0.202314, -0.106184,
		29.474476, 25.255501, 12.641171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042309, 24.753750, 13.222449>,  <28.792992, 25.397120, 12.715501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042309, 24.753750, 13.222449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305490, 25.043633, 13.140571>,  <29.463400, 25.217562, 13.091443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305490, 25.043633, 13.140571>,  <29.042309, 24.753750, 13.222449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305490, 25.043633, 13.140571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333408, -0.036605, 0.942072,
		0.675232, -0.688086, -0.265707,
		0.657952, 0.724705, -0.204697,
		29.502876, 25.261044, 13.079162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745892, 24.215294, 12.871177>,  <29.042309, 24.753750, 13.222449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745892, 24.215294, 12.871177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389372, 24.049873, 12.945539>,  <28.175461, 23.950621, 12.990155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389372, 24.049873, 12.945539>,  <28.745892, 24.215294, 12.871177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389372, 24.049873, 12.945539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049540, 0.496375, 0.866693,
		-0.450701, 0.763274, -0.462906,
		-0.891299, -0.413552, 0.185904,
		28.121983, 23.925808, 13.001309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281992, 24.802462, 13.113595>,  <28.745892, 24.215294, 12.871177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281992, 24.802462, 13.113595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186897, 24.442188, 13.259060>,  <28.129841, 24.226025, 13.346339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186897, 24.442188, 13.259060>,  <28.281992, 24.802462, 13.113595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186897, 24.442188, 13.259060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067476, 0.358178, 0.931212,
		-0.968983, 0.245921, -0.024377,
		-0.237736, -0.900684, 0.363662,
		28.115576, 24.171984, 13.368158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667503, 24.881197, 13.481051>,  <28.281992, 24.802462, 13.113595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667503, 24.881197, 13.481051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868097, 24.573147, 13.638744>,  <27.988455, 24.388317, 13.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868097, 24.573147, 13.638744>,  <27.667503, 24.881197, 13.481051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868097, 24.573147, 13.638744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050186, 0.480800, 0.875393,
		-0.863709, -0.419212, 0.279764,
		0.501486, -0.770125, 0.394233,
		28.018543, 24.342110, 13.757014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435238, 24.890335, 14.160378>,  <27.667503, 24.881197, 13.481051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435238, 24.890335, 14.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798067, 24.722551, 14.146084>,  <28.015764, 24.621881, 14.137507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798067, 24.722551, 14.146084>,  <27.435238, 24.890335, 14.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798067, 24.722551, 14.146084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219156, 0.398030, 0.890810,
		-0.359435, -0.815859, 0.452968,
		0.907071, -0.419459, -0.035734,
		28.070189, 24.596714, 14.135364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571741, 24.568979, 14.762693>,  <27.435238, 24.890335, 14.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571741, 24.568979, 14.762693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925459, 24.654554, 14.596681>,  <28.137690, 24.705900, 14.497073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925459, 24.654554, 14.596681>,  <27.571741, 24.568979, 14.762693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925459, 24.654554, 14.596681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319586, 0.370720, 0.872027,
		0.340412, -0.903770, 0.259459,
		0.884299, 0.213929, -0.415030,
		28.190748, 24.718737, 14.472171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191343, 24.254898, 15.186759>,  <27.571741, 24.568979, 14.762693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191343, 24.254898, 15.186759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346874, 24.559307, 14.979044>,  <28.440193, 24.741953, 14.854415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346874, 24.559307, 14.979044>,  <28.191343, 24.254898, 15.186759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346874, 24.559307, 14.979044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429873, 0.348668, 0.832850,
		0.814877, -0.547061, -0.191571,
		0.388826, 0.761022, -0.519288,
		28.463522, 24.787613, 14.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805067, 24.169313, 15.431585>,  <28.191343, 24.254898, 15.186759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805067, 24.169313, 15.431585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779903, 24.543159, 15.291566>,  <28.764805, 24.767467, 15.207554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779903, 24.543159, 15.291566>,  <28.805067, 24.169313, 15.431585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779903, 24.543159, 15.291566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440715, 0.340709, 0.830474,
		0.895440, -0.102026, -0.433334,
		-0.062911, 0.934617, -0.350049,
		28.761030, 24.823544, 15.186551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447695, 24.569818, 15.553941>,  <28.805067, 24.169313, 15.431585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447695, 24.569818, 15.553941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183393, 24.863914, 15.493505>,  <29.024813, 25.040371, 15.457244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183393, 24.863914, 15.493505>,  <29.447695, 24.569818, 15.553941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183393, 24.863914, 15.493505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456449, 0.553383, 0.696722,
		0.595867, 0.391398, -0.701249,
		-0.660755, 0.735238, -0.151089,
		28.985167, 25.084486, 15.448178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872301, 25.266962, 15.609764>,  <29.447695, 24.569818, 15.553941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872301, 25.266962, 15.609764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490814, 25.357430, 15.689029>,  <29.261921, 25.411709, 15.736588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490814, 25.357430, 15.689029>,  <29.872301, 25.266962, 15.609764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490814, 25.357430, 15.689029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293847, 0.561103, 0.773832,
		0.063826, 0.796248, -0.601594,
		-0.953719, 0.226167, 0.198163,
		29.204699, 25.425280, 15.748478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846735, 25.917685, 15.833551>,  <29.872301, 25.266962, 15.609764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846735, 25.917685, 15.833551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526367, 25.727156, 15.978684>,  <29.334146, 25.612839, 16.065763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526367, 25.727156, 15.978684>,  <29.846735, 25.917685, 15.833551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526367, 25.727156, 15.978684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179644, 0.386892, 0.904457,
		-0.571190, 0.789577, -0.224300,
		-0.800918, -0.476323, 0.362832,
		29.286093, 25.584259, 16.087534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697910, 26.433531, 16.305380>,  <29.846735, 25.917685, 15.833551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697910, 26.433531, 16.305380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473227, 26.117289, 16.402885>,  <29.338415, 25.927544, 16.461388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473227, 26.117289, 16.402885>,  <29.697910, 26.433531, 16.305380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473227, 26.117289, 16.402885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053510, 0.259302, 0.964313,
		-0.825601, 0.554709, -0.103348,
		-0.561712, -0.790607, 0.243763,
		29.304712, 25.880106, 16.476015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038805, 26.763199, 16.507919>,  <29.697910, 26.433531, 16.305380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038805, 26.763199, 16.507919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126019, 26.401777, 16.655458>,  <29.178347, 26.184923, 16.743982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126019, 26.401777, 16.655458>,  <29.038805, 26.763199, 16.507919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126019, 26.401777, 16.655458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057102, 0.389104, 0.919422,
		-0.974270, -0.179401, 0.136432,
		0.218032, -0.903556, 0.368848,
		29.191427, 26.130711, 16.766113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572905, 26.715387, 17.131941>,  <29.038805, 26.763199, 16.507919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572905, 26.715387, 17.131941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870655, 26.450403, 17.165522>,  <29.049305, 26.291412, 17.185671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870655, 26.450403, 17.165522>,  <28.572905, 26.715387, 17.131941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870655, 26.450403, 17.165522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214003, 0.355757, 0.909747,
		-0.632540, -0.659227, 0.406586,
		0.744376, -0.662462, 0.083954,
		29.093967, 26.251665, 17.190708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589212, 26.353514, 17.846987>,  <28.572905, 26.715387, 17.131941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589212, 26.353514, 17.846987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961069, 26.316610, 17.704294>,  <29.184183, 26.294468, 17.618679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961069, 26.316610, 17.704294>,  <28.589212, 26.353514, 17.846987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961069, 26.316610, 17.704294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368419, 0.248297, 0.895888,
		0.005919, -0.964280, 0.264818,
		0.929641, -0.092261, -0.356729,
		29.239962, 26.288933, 17.597275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063267, 26.075077, 18.423349>,  <28.589212, 26.353514, 17.846987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063267, 26.075077, 18.423349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334499, 26.196465, 18.155584>,  <29.497238, 26.269297, 17.994925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334499, 26.196465, 18.155584>,  <29.063267, 26.075077, 18.423349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334499, 26.196465, 18.155584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660856, 0.146881, 0.735999,
		0.321677, -0.941452, -0.100952,
		0.678081, 0.303469, -0.669413,
		29.537924, 26.287506, 17.954760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676674, 25.955347, 18.830740>,  <29.063267, 26.075077, 18.423349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676674, 25.955347, 18.830740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766174, 26.213247, 18.538374>,  <29.819874, 26.367987, 18.362955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766174, 26.213247, 18.538374>,  <29.676674, 25.955347, 18.830740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766174, 26.213247, 18.538374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616821, 0.486964, 0.618383,
		0.754630, -0.589207, -0.288737,
		0.223751, 0.644749, -0.730913,
		29.833300, 26.406672, 18.319099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417431, 26.027752, 18.925955>,  <29.676674, 25.955347, 18.830740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417431, 26.027752, 18.925955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320244, 26.329699, 18.682270>,  <30.261930, 26.510866, 18.536058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320244, 26.329699, 18.682270>,  <30.417431, 26.027752, 18.925955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320244, 26.329699, 18.682270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668327, 0.585458, 0.458888,
		0.703068, -0.295658, -0.646747,
		-0.242970, 0.754868, -0.609213,
		30.247353, 26.556158, 18.499506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984489, 26.396984, 18.812847>,  <30.417431, 26.027752, 18.925955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984489, 26.396984, 18.812847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711496, 26.666578, 18.699736>,  <30.547701, 26.828335, 18.631868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711496, 26.666578, 18.699736>,  <30.984489, 26.396984, 18.812847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711496, 26.666578, 18.699736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569131, 0.732791, 0.372972,
		0.458595, 0.093607, -0.883701,
		-0.682481, 0.673985, -0.282780,
		30.506752, 26.868774, 18.614902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327198, 26.957342, 18.593451>,  <30.984489, 26.396984, 18.812847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327198, 26.957342, 18.593451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970798, 27.130283, 18.648863>,  <30.756958, 27.234047, 18.682110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970798, 27.130283, 18.648863>,  <31.327198, 26.957342, 18.593451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970798, 27.130283, 18.648863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403613, 0.614618, 0.677747,
		0.207883, 0.659785, -0.722127,
		-0.891000, 0.432352, 0.138530,
		30.703499, 27.259989, 18.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447824, 27.745058, 18.408894>,  <31.327198, 26.957342, 18.593451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447824, 27.745058, 18.408894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134224, 27.702703, 18.653559>,  <30.946064, 27.677292, 18.800358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134224, 27.702703, 18.653559>,  <31.447824, 27.745058, 18.408894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134224, 27.702703, 18.653559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287797, 0.811049, 0.509286,
		-0.550015, 0.575315, -0.605389,
		-0.784001, -0.105886, 0.611663,
		30.899023, 27.670938, 18.837057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061567, 28.416098, 18.473373>,  <31.447824, 27.745058, 18.408894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061567, 28.416098, 18.473373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947468, 28.197235, 18.788143>,  <30.879007, 28.065918, 18.977005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947468, 28.197235, 18.788143>,  <31.061567, 28.416098, 18.473373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947468, 28.197235, 18.788143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419457, 0.666970, 0.615797,
		-0.861794, 0.505737, 0.039256,
		-0.285249, -0.547157, 0.786926,
		30.861893, 28.033089, 19.024221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756769, 28.849567, 18.914322>,  <31.061567, 28.416098, 18.473373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756769, 28.849567, 18.914322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886503, 28.539604, 19.131330>,  <30.964344, 28.353626, 19.261536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886503, 28.539604, 19.131330>,  <30.756769, 28.849567, 18.914322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886503, 28.539604, 19.131330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420790, 0.631843, 0.650931,
		-0.847197, 0.017168, 0.531001,
		0.324334, -0.774907, 0.542520,
		30.983803, 28.307133, 19.294086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762730, 29.154596, 19.663471>,  <30.756769, 28.849567, 18.914322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762730, 29.154596, 19.663471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964308, 28.810156, 19.690434>,  <31.085255, 28.603491, 19.706610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964308, 28.810156, 19.690434>,  <30.762730, 29.154596, 19.663471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964308, 28.810156, 19.690434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491431, 0.350025, 0.797482,
		-0.710308, -0.368761, 0.599565,
		0.503943, -0.861103, 0.067405,
		31.115490, 28.551825, 19.710655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681246, 28.940527, 20.368902>,  <30.762730, 29.154596, 19.663471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681246, 28.940527, 20.368902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004749, 28.755041, 20.224195>,  <31.198853, 28.643749, 20.137371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004749, 28.755041, 20.224195>,  <30.681246, 28.940527, 20.368902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004749, 28.755041, 20.224195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566833, 0.450502, 0.689745,
		-0.156866, -0.762901, 0.627196,
		0.808761, -0.463713, -0.361769,
		31.247377, 28.615927, 20.115665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015955, 28.709803, 20.828739>,  <30.681246, 28.940527, 20.368902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015955, 28.709803, 20.828739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313349, 28.733013, 20.562246>,  <31.491785, 28.746939, 20.402351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313349, 28.733013, 20.562246>,  <31.015955, 28.709803, 20.828739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313349, 28.733013, 20.562246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577628, 0.446321, 0.683479,
		0.337011, -0.892990, 0.298316,
		0.743485, 0.058024, -0.666231,
		31.536394, 28.750422, 20.362377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448587, 28.314739, 21.149246>,  <31.015955, 28.709803, 20.828739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448587, 28.314739, 21.149246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621254, 28.560928, 20.885471>,  <31.724854, 28.708643, 20.727207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621254, 28.560928, 20.885471>,  <31.448587, 28.314739, 21.149246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621254, 28.560928, 20.885471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602135, 0.347723, 0.718695,
		0.671639, -0.707306, -0.220499,
		0.431664, 0.615474, -0.659438,
		31.750753, 28.745571, 20.687639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142437, 28.395370, 21.376328>,  <31.448587, 28.314739, 21.149246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142437, 28.395370, 21.376328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169731, 28.688320, 21.105339>,  <32.186108, 28.864090, 20.942745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169731, 28.688320, 21.105339>,  <32.142437, 28.395370, 21.376328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169731, 28.688320, 21.105339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577406, 0.524780, 0.625466,
		0.813601, -0.433856, -0.387069,
		0.068237, 0.732376, -0.677473,
		32.190201, 28.908033, 20.902098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865170, 28.569410, 21.236036>,  <32.142437, 28.395370, 21.376328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865170, 28.569410, 21.236036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654285, 28.895960, 21.141735>,  <32.527756, 29.091890, 21.085155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654285, 28.895960, 21.141735>,  <32.865170, 28.569410, 21.236036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654285, 28.895960, 21.141735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597077, 0.553319, 0.580807,
		0.604601, 0.165448, -0.779156,
		-0.527215, 0.816373, -0.235752,
		32.496120, 29.140871, 21.071009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292179, 29.033651, 21.109295>,  <32.865170, 28.569410, 21.236036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292179, 29.033651, 21.109295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972214, 29.263445, 21.178694>,  <32.780235, 29.401321, 21.220333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972214, 29.263445, 21.178694>,  <33.292179, 29.033651, 21.109295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972214, 29.263445, 21.178694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541849, 0.567144, 0.620281,
		0.257944, 0.590182, -0.764952,
		-0.799916, 0.574486, 0.173498,
		32.732239, 29.435791, 21.230743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617085, 29.698868, 21.294441>,  <33.292179, 29.033651, 21.109295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617085, 29.698868, 21.294441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237267, 29.730234, 21.415911>,  <33.009377, 29.749054, 21.488792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237267, 29.730234, 21.415911>,  <33.617085, 29.698868, 21.294441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237267, 29.730234, 21.415911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286853, 0.608628, 0.739789,
		-0.126814, 0.789572, -0.600412,
		-0.949544, 0.078415, 0.303674,
		32.952404, 29.753759, 21.507013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481575, 30.340990, 21.448111>,  <33.617085, 29.698868, 21.294441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481575, 30.340990, 21.448111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187874, 30.152557, 21.643641>,  <33.011654, 30.039497, 21.760958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187874, 30.152557, 21.643641>,  <33.481575, 30.340990, 21.448111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187874, 30.152557, 21.643641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260357, 0.469589, 0.843623,
		-0.626964, 0.746703, -0.222148,
		-0.734254, -0.471084, 0.488825,
		32.967598, 30.011232, 21.790289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111065, 30.788792, 21.795353>,  <33.481575, 30.340990, 21.448111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111065, 30.788792, 21.795353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027679, 30.451588, 21.993698>,  <32.977650, 30.249266, 22.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027679, 30.451588, 21.993698>,  <33.111065, 30.788792, 21.795353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027679, 30.451588, 21.993698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481585, 0.352800, 0.802252,
		-0.851245, 0.406040, 0.332435,
		-0.208463, -0.843009, 0.495862,
		32.965141, 30.198685, 22.142456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965061, 30.985117, 22.493870>,  <33.111065, 30.788792, 21.795353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965061, 30.985117, 22.493870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076309, 30.601830, 22.520607>,  <33.143059, 30.371857, 22.536650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076309, 30.601830, 22.520607>,  <32.965061, 30.985117, 22.493870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076309, 30.601830, 22.520607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390885, 0.176472, 0.903364,
		-0.877415, -0.225117, 0.423633,
		0.278122, -0.958217, 0.066844,
		33.159744, 30.314365, 22.540661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859154, 30.744366, 23.198830>,  <32.965061, 30.985117, 22.493870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859154, 30.744366, 23.198830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133076, 30.483803, 23.068161>,  <33.297428, 30.327465, 22.989759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133076, 30.483803, 23.068161>,  <32.859154, 30.744366, 23.198830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133076, 30.483803, 23.068161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516334, 0.117391, 0.848303,
		-0.514243, -0.749592, 0.416733,
		0.684802, -0.651407, -0.326673,
		33.338516, 30.288382, 22.970160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117550, 30.354385, 23.843605>,  <32.859154, 30.744366, 23.198830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117550, 30.354385, 23.843605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391865, 30.257439, 23.569103>,  <33.556454, 30.199270, 23.404402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391865, 30.257439, 23.569103>,  <33.117550, 30.354385, 23.843605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391865, 30.257439, 23.569103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696525, -0.054868, 0.715431,
		-0.211052, -0.968631, 0.131188,
		0.685791, -0.242369, -0.686256,
		33.597603, 30.184729, 23.363226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407459, 29.648584, 23.990929>,  <33.117550, 30.354385, 23.843605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407459, 29.648584, 23.990929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681740, 29.847878, 23.778675>,  <33.846310, 29.967453, 23.651323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681740, 29.847878, 23.778675>,  <33.407459, 29.648584, 23.990929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681740, 29.847878, 23.778675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699514, -0.249536, 0.669636,
		0.201224, -0.830357, -0.519630,
		0.685704, 0.498235, -0.530633,
		33.887451, 29.997349, 23.619486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988476, 29.156607, 23.867582>,  <33.407459, 29.648584, 23.990929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988476, 29.156607, 23.867582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142342, 29.519066, 23.797232>,  <34.234661, 29.736542, 23.755022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142342, 29.519066, 23.797232>,  <33.988476, 29.156607, 23.867582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142342, 29.519066, 23.797232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677497, -0.147749, 0.720533,
		0.626925, -0.396316, -0.670746,
		0.384660, 0.906148, -0.175875,
		34.257740, 29.790911, 23.744469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658234, 29.097340, 23.982750>,  <33.988476, 29.156607, 23.867582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658234, 29.097340, 23.982750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593761, 29.490870, 24.014030>,  <34.555080, 29.726988, 24.032799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593761, 29.490870, 24.014030>,  <34.658234, 29.097340, 23.982750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593761, 29.490870, 24.014030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565725, 0.027173, 0.824146,
		0.808688, 0.177073, -0.560953,
		-0.161177, 0.983823, 0.078200,
		34.545410, 29.786016, 24.037491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395840, 29.377609, 24.039339>,  <34.658234, 29.097340, 23.982750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395840, 29.377609, 24.039339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133762, 29.648378, 24.173500>,  <34.976517, 29.810841, 24.253996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133762, 29.648378, 24.173500>,  <35.395840, 29.377609, 24.039339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133762, 29.648378, 24.173500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592533, 0.185055, 0.784002,
		0.468642, 0.712410, -0.522347,
		-0.655194, 0.676925, 0.335402,
		34.937202, 29.851456, 24.274120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878952, 29.943338, 24.289778>,  <35.395840, 29.377609, 24.039339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878952, 29.943338, 24.289778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522572, 30.008291, 24.459406>,  <35.308743, 30.047264, 24.561184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522572, 30.008291, 24.459406>,  <35.878952, 29.943338, 24.289778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522572, 30.008291, 24.459406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451446, 0.215964, 0.865769,
		0.049003, 0.962804, -0.265721,
		-0.890952, 0.162384, 0.424071,
		35.255287, 30.057007, 24.586628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901291, 30.558493, 24.822165>,  <35.878952, 29.943338, 24.289778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901291, 30.558493, 24.822165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581135, 30.358210, 24.954023>,  <35.389042, 30.238041, 25.033138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581135, 30.358210, 24.954023>,  <35.901291, 30.558493, 24.822165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581135, 30.358210, 24.954023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403668, -0.043612, 0.913866,
		-0.443201, 0.864518, 0.237026,
		-0.800391, -0.500706, 0.329649,
		35.341019, 30.207998, 25.052917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719292, 30.890633, 25.486294>,  <35.901291, 30.558493, 24.822165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719292, 30.890633, 25.486294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529598, 30.538486, 25.483271>,  <35.415783, 30.327200, 25.481457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529598, 30.538486, 25.483271>,  <35.719292, 30.890633, 25.486294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529598, 30.538486, 25.483271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037537, -0.028796, 0.998880,
		-0.879596, 0.473423, 0.046703,
		-0.474238, -0.880365, -0.007558,
		35.387325, 30.274378, 25.481003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017002, 30.950493, 25.787548>,  <35.719292, 30.890633, 25.486294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017002, 30.950493, 25.787548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138027, 30.572496, 25.837269>,  <35.210644, 30.345699, 25.867102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138027, 30.572496, 25.837269>,  <35.017002, 30.950493, 25.787548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138027, 30.572496, 25.837269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074773, 0.153545, 0.985309,
		-0.950192, -0.288822, 0.117116,
		0.302562, -0.944990, 0.124301,
		35.228794, 30.289000, 25.874559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772163, 30.841240, 26.427814>,  <35.017002, 30.950493, 25.787548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772163, 30.841240, 26.427814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040581, 30.551069, 26.366547>,  <35.201630, 30.376966, 26.329786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040581, 30.551069, 26.366547>,  <34.772163, 30.841240, 26.427814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040581, 30.551069, 26.366547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387537, 0.167062, 0.906590,
		-0.632074, -0.667720, 0.393234,
		0.671043, -0.725425, -0.153171,
		35.241894, 30.333443, 26.320595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060303, 30.714455, 26.599943>,  <34.772163, 30.841240, 26.427814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060303, 30.714455, 26.599943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789230, 30.927444, 26.802813>,  <33.626587, 31.055239, 26.924534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789230, 30.927444, 26.802813>,  <34.060303, 30.714455, 26.599943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789230, 30.927444, 26.802813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674267, -0.174706, -0.717525,
		-0.293462, -0.828217, 0.477427,
		-0.677675, 0.532480, 0.507170,
		33.585926, 31.087187, 26.954964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560005, 30.256527, 26.898745>,  <34.060303, 30.714455, 26.599943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560005, 30.256527, 26.898745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439037, 30.620691, 26.785824>,  <33.366455, 30.839190, 26.718071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439037, 30.620691, 26.785824>,  <33.560005, 30.256527, 26.898745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439037, 30.620691, 26.785824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657512, -0.413680, -0.629719,
		-0.690085, -0.004826, 0.723712,
		-0.302424, 0.910410, -0.282301,
		33.348309, 30.893814, 26.701134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867710, 30.126081, 26.816755>,  <33.560005, 30.256527, 26.898745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867710, 30.126081, 26.816755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939354, 30.474882, 26.634531>,  <32.982342, 30.684162, 26.525196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939354, 30.474882, 26.634531>,  <32.867710, 30.126081, 26.816755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939354, 30.474882, 26.634531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692616, -0.217095, -0.687862,
		-0.698715, 0.438732, 0.565076,
		0.179112, 0.872000, -0.455560,
		32.993088, 30.736483, 26.497864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614204, 30.009069, 26.170841>,  <32.867710, 30.126081, 26.816755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614204, 30.009069, 26.170841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626743, 30.408873, 26.171144>,  <32.634266, 30.648754, 26.171326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626743, 30.408873, 26.171144>,  <32.614204, 30.009069, 26.170841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626743, 30.408873, 26.171144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355600, 0.011860, -0.934563,
		-0.934112, 0.029023, 0.355797,
		0.031343, 0.999509, 0.000758,
		32.636147, 30.708725, 26.171371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917723, 30.323580, 26.224714>,  <32.614204, 30.009069, 26.170841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917723, 30.323580, 26.224714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198460, 30.531414, 26.029799>,  <32.366901, 30.656115, 25.912849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198460, 30.531414, 26.029799>,  <31.917723, 30.323580, 26.224714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198460, 30.531414, 26.029799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516002, -0.100767, -0.850640,
		-0.491081, 0.848457, 0.197384,
		0.701841, 0.519584, -0.487290,
		32.409012, 30.687288, 25.883612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636784, 30.958967, 25.978102>,  <31.917723, 30.323580, 26.224714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636784, 30.958967, 25.978102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938719, 30.820787, 25.755075>,  <32.119881, 30.737879, 25.621260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938719, 30.820787, 25.755075>,  <31.636784, 30.958967, 25.978102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938719, 30.820787, 25.755075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626290, -0.127038, -0.769170,
		0.194877, 0.929799, -0.312246,
		0.754840, -0.345450, -0.557567,
		32.165173, 30.717152, 25.587805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564758, 31.258076, 25.363997>,  <31.636784, 30.958967, 25.978102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564758, 31.258076, 25.363997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798962, 30.947882, 25.269508>,  <31.939484, 30.761765, 25.212814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798962, 30.947882, 25.269508>,  <31.564758, 31.258076, 25.363997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798962, 30.947882, 25.269508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625870, -0.247222, -0.739709,
		0.515234, 0.580950, -0.630104,
		0.585509, -0.775486, -0.236222,
		31.974615, 30.715237, 25.198643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830017, 31.438629, 24.702215>,  <31.564758, 31.258076, 25.363997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830017, 31.438629, 24.702215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842764, 31.041012, 24.743910>,  <31.850412, 30.802443, 24.768927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842764, 31.041012, 24.743910>,  <31.830017, 31.438629, 24.702215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842764, 31.041012, 24.743910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550383, -0.104508, -0.828346,
		0.834304, -0.030973, -0.550434,
		0.031868, -0.994041, 0.104239,
		31.852324, 30.742800, 24.775181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833052, 31.156044, 23.963093>,  <31.830017, 31.438629, 24.702215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833052, 31.156044, 23.963093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739256, 30.840063, 24.189716>,  <31.682980, 30.650475, 24.325689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739256, 30.840063, 24.189716>,  <31.833052, 31.156044, 23.963093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739256, 30.840063, 24.189716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641378, -0.312240, -0.700814,
		0.730513, -0.527710, -0.433443,
		-0.234488, -0.789954, 0.566557,
		31.668909, 30.603077, 24.359684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895617, 30.481443, 23.554365>,  <31.833052, 31.156044, 23.963093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895617, 30.481443, 23.554365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622364, 30.426880, 23.841343>,  <31.458412, 30.394142, 24.013529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622364, 30.426880, 23.841343>,  <31.895617, 30.481443, 23.554365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622364, 30.426880, 23.841343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703379, -0.141358, -0.696618,
		0.196441, -0.980515, 0.000619,
		-0.683132, -0.136409, 0.717442,
		31.417425, 30.385958, 24.056576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564619, 29.783367, 23.359337>,  <31.895617, 30.481443, 23.554365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564619, 29.783367, 23.359337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319340, 29.976688, 23.609266>,  <31.172173, 30.092682, 23.759224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319340, 29.976688, 23.609266>,  <31.564619, 29.783367, 23.359337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319340, 29.976688, 23.609266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789728, -0.357279, -0.498679,
		-0.017776, -0.799230, 0.600762,
		-0.613199, 0.483303, 0.624824,
		31.135380, 30.121679, 23.796713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100521, 29.284544, 23.721367>,  <31.564619, 29.783367, 23.359337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100521, 29.284544, 23.721367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889639, 29.620020, 23.775997>,  <30.763109, 29.821306, 23.808775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889639, 29.620020, 23.775997>,  <31.100521, 29.284544, 23.721367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889639, 29.620020, 23.775997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783176, -0.417230, -0.461036,
		-0.329683, -0.350024, 0.876808,
		-0.527205, 0.838691, 0.136576,
		30.731478, 29.871628, 23.816969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487032, 29.024956, 23.766943>,  <31.100521, 29.284544, 23.721367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487032, 29.024956, 23.766943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437338, 29.417183, 23.706207>,  <30.407522, 29.652519, 23.669765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437338, 29.417183, 23.706207>,  <30.487032, 29.024956, 23.766943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437338, 29.417183, 23.706207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836494, -0.185809, -0.515513,
		-0.533708, 0.062969, 0.843321,
		-0.124235, 0.980566, -0.151841,
		30.400066, 29.711353, 23.660654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788609, 29.163788, 23.824242>,  <30.487032, 29.024956, 23.766943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788609, 29.163788, 23.824242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911875, 29.486244, 23.622185>,  <29.985834, 29.679718, 23.500952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911875, 29.486244, 23.622185>,  <29.788609, 29.163788, 23.824242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911875, 29.486244, 23.622185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750925, -0.119875, -0.649416,
		-0.584076, 0.579451, 0.568411,
		0.308167, 0.806143, -0.505141,
		30.004324, 29.728086, 23.470642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150074, 29.617615, 23.637592>,  <29.788609, 29.163788, 23.824242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150074, 29.617615, 23.637592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445168, 29.725189, 23.389906>,  <29.622223, 29.789734, 23.241295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445168, 29.725189, 23.389906>,  <29.150074, 29.617615, 23.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445168, 29.725189, 23.389906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637031, -0.026318, -0.770389,
		-0.223481, 0.962799, 0.151904,
		0.737732, 0.268935, -0.619214,
		29.666487, 29.805870, 23.204142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783712, 30.008026, 23.069065>,  <29.150074, 29.617615, 23.637592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783712, 30.008026, 23.069065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132839, 29.910343, 22.900043>,  <29.342316, 29.851734, 22.798630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132839, 29.910343, 22.900043>,  <28.783712, 30.008026, 23.069065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132839, 29.910343, 22.900043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431508, 0.018363, -0.901922,
		0.228014, 0.969549, -0.089349,
		0.872817, -0.244206, -0.422556,
		29.394684, 29.837082, 22.773277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922913, 30.542877, 22.490948>,  <28.783712, 30.008026, 23.069065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922913, 30.542877, 22.490948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104557, 30.189129, 22.447723>,  <29.213543, 29.976881, 22.421789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104557, 30.189129, 22.447723>,  <28.922913, 30.542877, 22.490948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104557, 30.189129, 22.447723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536096, -0.174356, -0.825955,
		0.711608, 0.433004, -0.553283,
		0.454110, -0.884368, -0.108059,
		29.240789, 29.923819, 22.415306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090227, 30.485176, 21.708235>,  <28.922913, 30.542877, 22.490948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090227, 30.485176, 21.708235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146662, 30.102293, 21.809307>,  <29.180523, 29.872562, 21.869951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146662, 30.102293, 21.809307>,  <29.090227, 30.485176, 21.708235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146662, 30.102293, 21.809307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399285, -0.288572, -0.870229,
		0.905906, 0.021886, -0.422913,
		0.141087, -0.957208, 0.252680,
		29.188988, 29.815130, 21.885111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224760, 30.099247, 21.108246>,  <29.090227, 30.485176, 21.708235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224760, 30.099247, 21.108246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169746, 29.783367, 21.347397>,  <29.136738, 29.593840, 21.490887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169746, 29.783367, 21.347397>,  <29.224760, 30.099247, 21.108246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169746, 29.783367, 21.347397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285847, -0.546287, -0.787313,
		0.948354, -0.279185, -0.150600,
		-0.137535, -0.789700, 0.597878,
		29.128487, 29.546457, 21.526760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689686, 29.572083, 20.791492>,  <29.224760, 30.099247, 21.108246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689686, 29.572083, 20.791492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413712, 29.372904, 21.001650>,  <29.248127, 29.253397, 21.127745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413712, 29.372904, 21.001650>,  <29.689686, 29.572083, 20.791492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413712, 29.372904, 21.001650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228978, -0.538412, -0.810976,
		0.686698, -0.679826, 0.257453,
		-0.689938, -0.497945, 0.525392,
		29.206730, 29.223520, 21.159267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690069, 28.885359, 20.621059>,  <29.689686, 29.572083, 20.791492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690069, 28.885359, 20.621059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316187, 28.912323, 20.760647>,  <29.091858, 28.928501, 20.844398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316187, 28.912323, 20.760647>,  <29.690069, 28.885359, 20.621059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316187, 28.912323, 20.760647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332200, -0.514761, -0.790357,
		0.126358, -0.854680, 0.503544,
		-0.934707, 0.067409, 0.348969,
		29.035774, 28.932547, 20.865337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344967, 28.166702, 20.708298>,  <29.690069, 28.885359, 20.621059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344967, 28.166702, 20.708298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061745, 28.444508, 20.657217>,  <28.891811, 28.611191, 20.626570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061745, 28.444508, 20.657217>,  <29.344967, 28.166702, 20.708298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061745, 28.444508, 20.657217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338208, -0.492274, -0.802049,
		-0.619900, -0.524704, 0.583447,
		-0.708054, 0.694516, -0.127702,
		28.849329, 28.652863, 20.618906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914513, 27.825586, 20.400349>,  <29.344967, 28.166702, 20.708298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914513, 27.825586, 20.400349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764629, 28.191032, 20.337229>,  <28.674700, 28.410301, 20.299356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764629, 28.191032, 20.337229>,  <28.914513, 27.825586, 20.400349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764629, 28.191032, 20.337229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373951, -0.304670, -0.875978,
		-0.848384, -0.269224, 0.455809,
		-0.374706, 0.913616, -0.157800,
		28.652218, 28.465117, 20.289888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190056, 27.864883, 20.239685>,  <28.914513, 27.825586, 20.400349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190056, 27.864883, 20.239685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274462, 28.223564, 20.084044>,  <28.325106, 28.438772, 19.990660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274462, 28.223564, 20.084044>,  <28.190056, 27.864883, 20.239685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274462, 28.223564, 20.084044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516071, -0.235864, -0.823431,
		-0.830146, 0.374562, 0.412990,
		0.211016, 0.896701, -0.389102,
		28.337767, 28.492575, 19.967314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596674, 28.044807, 19.805408>,  <28.190056, 27.864883, 20.239685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596674, 28.044807, 19.805408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907581, 28.262268, 19.678728>,  <28.094126, 28.392744, 19.602720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907581, 28.262268, 19.678728>,  <27.596674, 28.044807, 19.805408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907581, 28.262268, 19.678728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355974, -0.035059, -0.933838,
		-0.518784, 0.838579, 0.166275,
		0.777268, 0.543650, -0.316701,
		28.140762, 28.425364, 19.583717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359543, 28.555355, 19.328367>,  <27.596674, 28.044807, 19.805408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359543, 28.555355, 19.328367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744970, 28.500713, 19.236391>,  <27.976227, 28.467928, 19.181206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744970, 28.500713, 19.236391>,  <27.359543, 28.555355, 19.328367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744970, 28.500713, 19.236391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214967, 0.115951, -0.969714,
		0.159130, 0.983816, 0.082361,
		0.963570, -0.136606, -0.229939,
		28.034040, 28.459732, 19.167410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459311, 29.072210, 18.938972>,  <27.359543, 28.555355, 19.328367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459311, 29.072210, 18.938972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750593, 28.817686, 18.837130>,  <27.925364, 28.664972, 18.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750593, 28.817686, 18.837130>,  <27.459311, 29.072210, 18.938972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750593, 28.817686, 18.837130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148999, 0.215623, -0.965042,
		0.668963, 0.740687, 0.062210,
		0.728208, -0.636308, -0.254606,
		27.969055, 28.626793, 18.760748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860661, 29.359137, 18.395260>,  <27.459311, 29.072210, 18.938972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860661, 29.359137, 18.395260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969213, 28.974192, 18.389420>,  <28.034346, 28.743225, 18.385916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969213, 28.974192, 18.389420>,  <27.860661, 29.359137, 18.395260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969213, 28.974192, 18.389420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015680, 0.019588, -0.999685,
		0.962344, 0.271070, 0.020406,
		0.271384, -0.962360, -0.014600,
		28.050629, 28.685484, 18.385040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357456, 29.224674, 17.809296>,  <27.860661, 29.359137, 18.395260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357456, 29.224674, 17.809296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210178, 28.871826, 17.926804>,  <28.121813, 28.660118, 17.997309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210178, 28.871826, 17.926804>,  <28.357456, 29.224674, 17.809296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210178, 28.871826, 17.926804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062128, -0.291915, -0.954424,
		0.927671, -0.369663, 0.052677,
		-0.368193, -0.882119, 0.293768,
		28.099720, 28.607191, 18.014935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813189, 28.786879, 17.382622>,  <28.357456, 29.224674, 17.809296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813189, 28.786879, 17.382622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481487, 28.590073, 17.488647>,  <28.282467, 28.471989, 17.552263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481487, 28.590073, 17.488647>,  <28.813189, 28.786879, 17.382622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481487, 28.590073, 17.488647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055979, -0.398773, -0.915339,
		0.556061, -0.773887, 0.303142,
		-0.829255, -0.492015, 0.265064,
		28.232712, 28.442469, 17.568167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822601, 28.110025, 17.014179>,  <28.813189, 28.786879, 17.382622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822601, 28.110025, 17.014179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438206, 28.138580, 17.121069>,  <28.207569, 28.155714, 17.185202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438206, 28.138580, 17.121069>,  <28.822601, 28.110025, 17.014179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438206, 28.138580, 17.121069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276296, -0.202947, -0.939400,
		-0.012829, -0.976584, 0.214753,
		-0.960987, 0.071387, 0.267223,
		28.149910, 28.159996, 17.201237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504845, 27.536255, 16.787197>,  <28.822601, 28.110025, 17.014179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504845, 27.536255, 16.787197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206566, 27.801224, 16.815857>,  <28.027597, 27.960205, 16.833054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206566, 27.801224, 16.815857>,  <28.504845, 27.536255, 16.787197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206566, 27.801224, 16.815857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237776, -0.164118, -0.957355,
		-0.622412, -0.730934, 0.279890,
		-0.745698, 0.662420, 0.071649,
		27.982857, 27.999950, 16.837351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930580, 27.252628, 16.373743>,  <28.504845, 27.536255, 16.787197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930580, 27.252628, 16.373743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828682, 27.636408, 16.422012>,  <27.767542, 27.866676, 16.450974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828682, 27.636408, 16.422012>,  <27.930580, 27.252628, 16.373743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828682, 27.636408, 16.422012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426999, 0.000356, -0.904252,
		-0.867627, -0.281883, 0.409593,
		-0.254747, 0.959448, 0.120673,
		27.752258, 27.924242, 16.458214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279768, 27.277710, 16.124805>,  <27.930580, 27.252628, 16.373743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279768, 27.277710, 16.124805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396835, 27.660124, 16.132179>,  <27.467075, 27.889572, 16.136602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396835, 27.660124, 16.132179>,  <27.279768, 27.277710, 16.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396835, 27.660124, 16.132179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391350, 0.137346, -0.909935,
		-0.872462, 0.259095, 0.414342,
		0.292668, 0.956037, 0.018432,
		27.484636, 27.946936, 16.137709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712133, 27.621683, 15.818183>,  <27.279768, 27.277710, 16.124805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712133, 27.621683, 15.818183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013231, 27.880737, 15.770944>,  <27.193890, 28.036169, 15.742600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013231, 27.880737, 15.770944>,  <26.712133, 27.621683, 15.818183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013231, 27.880737, 15.770944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417920, 0.331504, -0.845841,
		-0.508646, 0.686057, 0.520197,
		0.752743, 0.647635, -0.118099,
		27.239054, 28.075027, 15.735514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440290, 28.141563, 15.393711>,  <26.712133, 27.621683, 15.818183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440290, 28.141563, 15.393711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826481, 28.245567, 15.387317>,  <27.058195, 28.307970, 15.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826481, 28.245567, 15.387317>,  <26.440290, 28.141563, 15.393711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826481, 28.245567, 15.387317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108650, 0.346147, -0.931868,
		-0.236761, 0.901431, 0.362446,
		0.965474, 0.260009, -0.015987,
		27.116123, 28.323570, 15.382521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477787, 28.900841, 15.221211>,  <26.440290, 28.141563, 15.393711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477787, 28.900841, 15.221211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814222, 28.716627, 15.107738>,  <27.016083, 28.606098, 15.039655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814222, 28.716627, 15.107738>,  <26.477787, 28.900841, 15.221211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814222, 28.716627, 15.107738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181069, 0.254479, -0.949976,
		0.509689, 0.850381, 0.130650,
		0.841089, -0.460536, -0.283683,
		27.066549, 28.578466, 15.022634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791639, 29.376286, 14.791143>,  <26.477787, 28.900841, 15.221211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791639, 29.376286, 14.791143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898125, 28.999235, 14.710556>,  <26.962015, 28.773005, 14.662204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898125, 28.999235, 14.710556>,  <26.791639, 29.376286, 14.791143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898125, 28.999235, 14.710556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389264, 0.086076, -0.917096,
		0.881819, 0.322567, -0.344016,
		0.266213, -0.942625, -0.201468,
		26.977989, 28.716448, 14.650116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606501, 30.091213, 14.427676>,  <26.791639, 29.376286, 14.791143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606501, 30.091213, 14.427676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664330, 30.469503, 14.311265>,  <26.699028, 30.696478, 14.241418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664330, 30.469503, 14.311265>,  <26.606501, 30.091213, 14.427676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664330, 30.469503, 14.311265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052018, 0.286448, 0.956683,
		0.988126, -0.153449, -0.007782,
		0.144573, 0.945728, -0.291029,
		26.707701, 30.753222, 14.223956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180723, 30.261402, 14.837324>,  <26.606501, 30.091213, 14.427676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180723, 30.261402, 14.837324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000723, 30.611244, 14.765144>,  <26.892723, 30.821150, 14.721836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000723, 30.611244, 14.765144>,  <27.180723, 30.261402, 14.837324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000723, 30.611244, 14.765144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118314, 0.258673, 0.958692,
		0.885156, 0.410062, -0.219882,
		-0.450001, 0.874607, -0.180450,
		26.865723, 30.873627, 14.711009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586336, 30.725054, 15.174949>,  <27.180723, 30.261402, 14.837324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586336, 30.725054, 15.174949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228642, 30.891809, 15.109781>,  <27.014025, 30.991863, 15.070681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228642, 30.891809, 15.109781>,  <27.586336, 30.725054, 15.174949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228642, 30.891809, 15.109781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013208, 0.339255, 0.940602,
		0.447397, 0.843273, -0.297869,
		-0.894238, 0.416888, -0.162920,
		26.960371, 31.016876, 15.060905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683697, 31.465717, 15.606608>,  <27.586336, 30.725054, 15.174949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683697, 31.465717, 15.606608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291426, 31.406036, 15.555989>,  <27.056063, 31.370228, 15.525618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291426, 31.406036, 15.555989>,  <27.683697, 31.465717, 15.606608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291426, 31.406036, 15.555989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186113, 0.512049, 0.838551,
		-0.060315, 0.845899, -0.529923,
		-0.980675, -0.149203, -0.126549,
		26.997223, 31.361275, 15.518024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284489, 32.193272, 15.691526>,  <27.683697, 31.465717, 15.606608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284489, 32.193272, 15.691526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092402, 31.850832, 15.767940>,  <26.977150, 31.645369, 15.813787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092402, 31.850832, 15.767940>,  <27.284489, 32.193272, 15.691526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092402, 31.850832, 15.767940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173936, 0.306402, 0.935876,
		-0.859732, 0.416196, -0.296045,
		-0.480216, -0.856095, 0.191032,
		26.948338, 31.594004, 15.825250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033142, 32.297737, 16.278252>,  <27.284489, 32.193272, 15.691526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033142, 32.297737, 16.278252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875988, 31.930153, 16.264711>,  <26.781696, 31.709602, 16.256586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875988, 31.930153, 16.264711>,  <27.033142, 32.297737, 16.278252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875988, 31.930153, 16.264711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109395, 0.010155, 0.993946,
		-0.913057, 0.394211, -0.104520,
		-0.392886, -0.918964, -0.033853,
		26.758121, 31.654463, 16.254555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409958, 32.374996, 16.748051>,  <27.033142, 32.297737, 16.278252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409958, 32.374996, 16.748051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525833, 31.998024, 16.681236>,  <26.595358, 31.771841, 16.641148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525833, 31.998024, 16.681236>,  <26.409958, 32.374996, 16.748051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525833, 31.998024, 16.681236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036023, -0.185132, 0.982053,
		-0.956442, -0.278474, -0.087580,
		0.289690, -0.942432, -0.167037,
		26.612740, 31.715294, 16.631124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238815, 32.136684, 17.308502>,  <26.409958, 32.374996, 16.748051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238815, 32.136684, 17.308502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492575, 31.862261, 17.166031>,  <26.644831, 31.697607, 17.080547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492575, 31.862261, 17.166031>,  <26.238815, 32.136684, 17.308502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492575, 31.862261, 17.166031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266759, -0.238165, 0.933872,
		-0.725518, -0.687462, 0.031920,
		0.634400, -0.686056, -0.356180,
		26.682894, 31.656445, 17.059177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075403, 31.480854, 17.674120>,  <26.238815, 32.136684, 17.308502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075403, 31.480854, 17.674120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445246, 31.497019, 17.522610>,  <26.667150, 31.506718, 17.431704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445246, 31.497019, 17.522610>,  <26.075403, 31.480854, 17.674120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445246, 31.497019, 17.522610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378972, 0.002927, 0.925403,
		0.038506, -0.999179, -0.012609,
		0.924607, 0.040412, -0.378774,
		26.722628, 31.509142, 17.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527988, 30.909473, 17.974115>,  <26.075403, 31.480854, 17.674120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527988, 30.909473, 17.974115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748356, 31.222443, 17.857977>,  <26.880577, 31.410225, 17.788294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748356, 31.222443, 17.857977>,  <26.527988, 30.909473, 17.974115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748356, 31.222443, 17.857977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482287, -0.014556, 0.875892,
		0.681092, -0.622578, -0.385372,
		0.550920, 0.782423, -0.290347,
		26.913631, 31.457169, 17.770872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174606, 30.644741, 18.239038>,  <26.527988, 30.909473, 17.974115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174606, 30.644741, 18.239038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228775, 31.033236, 18.160694>,  <27.261276, 31.266333, 18.113688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228775, 31.033236, 18.160694>,  <27.174606, 30.644741, 18.239038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228775, 31.033236, 18.160694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621002, 0.070831, 0.780602,
		0.772022, -0.227340, -0.593547,
		0.135421, 0.971236, -0.195862,
		27.269402, 31.324606, 18.101936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839554, 30.749990, 18.225197>,  <27.174606, 30.644741, 18.239038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839554, 30.749990, 18.225197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705921, 31.114254, 18.322428>,  <27.625742, 31.332813, 18.380766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705921, 31.114254, 18.322428>,  <27.839554, 30.749990, 18.225197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705921, 31.114254, 18.322428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753536, 0.103137, 0.649266,
		0.566191, 0.400075, -0.720672,
		-0.334083, 0.910661, 0.243076,
		27.605696, 31.387453, 18.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507544, 31.139828, 18.349802>,  <27.839554, 30.749990, 18.225197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507544, 31.139828, 18.349802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225681, 31.365477, 18.521954>,  <28.056564, 31.500866, 18.625244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225681, 31.365477, 18.521954>,  <28.507544, 31.139828, 18.349802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225681, 31.365477, 18.521954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685795, 0.385833, 0.617105,
		0.182069, 0.729998, -0.658752,
		-0.704654, 0.564124, 0.430381,
		28.014286, 31.534714, 18.651068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793924, 31.737492, 18.495737>,  <28.507544, 31.139828, 18.349802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793924, 31.737492, 18.495737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470961, 31.767620, 18.729801>,  <28.277182, 31.785698, 18.870239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470961, 31.767620, 18.729801>,  <28.793924, 31.737492, 18.495737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470961, 31.767620, 18.729801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576829, 0.309103, 0.756124,
		-0.123921, 0.948041, -0.293022,
		-0.807411, 0.075323, 0.585162,
		28.228737, 31.790216, 18.905350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802681, 32.460442, 18.748161>,  <28.793924, 31.737492, 18.495737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802681, 32.460442, 18.748161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574171, 32.243874, 18.994902>,  <28.437065, 32.113934, 19.142946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574171, 32.243874, 18.994902>,  <28.802681, 32.460442, 18.748161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574171, 32.243874, 18.994902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478632, 0.390773, 0.786262,
		-0.666749, 0.744417, 0.035904,
		-0.571277, -0.541424, 0.616849,
		28.402788, 32.081448, 19.179956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504894, 32.903885, 19.325186>,  <28.802681, 32.460442, 18.748161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504894, 32.903885, 19.325186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495405, 32.532291, 19.472925>,  <28.489712, 32.309334, 19.561569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495405, 32.532291, 19.472925>,  <28.504894, 32.903885, 19.325186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495405, 32.532291, 19.472925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247367, 0.352510, 0.902522,
		-0.968631, 0.112776, 0.221438,
		-0.023723, -0.928988, 0.369349,
		28.488289, 32.253593, 19.583731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126717, 32.980583, 19.954479>,  <28.504894, 32.903885, 19.325186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126717, 32.980583, 19.954479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345139, 32.647980, 19.995289>,  <28.476192, 32.448418, 20.019775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345139, 32.647980, 19.995289>,  <28.126717, 32.980583, 19.954479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345139, 32.647980, 19.995289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357258, 0.341288, 0.869419,
		-0.757753, -0.438302, 0.483427,
		0.546056, -0.831513, 0.102025,
		28.508955, 32.398525, 20.025896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987856, 32.688877, 20.620144>,  <28.126717, 32.980583, 19.954479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987856, 32.688877, 20.620144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335585, 32.526344, 20.507589>,  <28.544222, 32.428825, 20.440058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335585, 32.526344, 20.507589>,  <27.987856, 32.688877, 20.620144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335585, 32.526344, 20.507589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360282, 0.131232, 0.923566,
		-0.338348, -0.904253, 0.260476,
		0.869320, -0.406332, -0.281384,
		28.596380, 32.404446, 20.423174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119741, 32.222523, 21.192055>,  <27.987856, 32.688877, 20.620144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119741, 32.222523, 21.192055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472029, 32.187347, 21.005892>,  <28.683401, 32.166241, 20.894194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472029, 32.187347, 21.005892>,  <28.119741, 32.222523, 21.192055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472029, 32.187347, 21.005892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437872, -0.223429, 0.870832,
		-0.180568, -0.970745, -0.158270,
		0.880717, -0.087942, -0.465406,
		28.736244, 32.160965, 20.866270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423222, 31.629160, 21.382799>,  <28.119741, 32.222523, 21.192055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423222, 31.629160, 21.382799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743738, 31.841932, 21.273270>,  <28.936049, 31.969595, 21.207552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743738, 31.841932, 21.273270>,  <28.423222, 31.629160, 21.382799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743738, 31.841932, 21.273270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511512, -0.371739, 0.774704,
		0.310298, -0.760829, -0.569961,
		0.801293, 0.531931, -0.273823,
		28.984127, 32.001511, 21.191122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019718, 31.210608, 21.536118>,  <28.423222, 31.629160, 21.382799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019718, 31.210608, 21.536118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159332, 31.582756, 21.491240>,  <29.243101, 31.806046, 21.464314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159332, 31.582756, 21.491240>,  <29.019718, 31.210608, 21.536118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159332, 31.582756, 21.491240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447466, -0.060271, 0.892268,
		0.823377, -0.361635, -0.437345,
		0.349034, 0.930370, -0.112194,
		29.264042, 31.861866, 21.457581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648870, 31.145166, 21.829241>,  <29.019718, 31.210608, 21.536118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648870, 31.145166, 21.829241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576946, 31.537863, 21.804419>,  <29.533792, 31.773481, 21.789524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576946, 31.537863, 21.804419>,  <29.648870, 31.145166, 21.829241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576946, 31.537863, 21.804419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474192, 0.141775, 0.868931,
		0.861864, 0.126815, -0.491027,
		-0.179809, 0.981742, -0.062056,
		29.523005, 31.832386, 21.785801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244026, 31.474794, 21.893278>,  <29.648870, 31.145166, 21.829241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244026, 31.474794, 21.893278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960320, 31.733385, 22.005713>,  <29.790094, 31.888538, 22.073174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960320, 31.733385, 22.005713>,  <30.244026, 31.474794, 21.893278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960320, 31.733385, 22.005713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524578, 0.217666, 0.823067,
		0.470909, 0.731226, -0.493510,
		-0.709268, 0.646475, 0.281085,
		29.747540, 31.927328, 22.090038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634293, 32.122639, 22.022108>,  <30.244026, 31.474794, 21.893278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634293, 32.122639, 22.022108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292639, 32.127060, 22.230082>,  <30.087646, 32.129715, 22.354866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292639, 32.127060, 22.230082>,  <30.634293, 32.122639, 22.022108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292639, 32.127060, 22.230082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496523, 0.314652, 0.808986,
		-0.154654, 0.949143, -0.274244,
		-0.854135, 0.011055, 0.519934,
		30.036398, 32.130375, 22.386061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706079, 32.667812, 22.409569>,  <30.634293, 32.122639, 22.022108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706079, 32.667812, 22.409569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419748, 32.482437, 22.618498>,  <30.247950, 32.371212, 22.743855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419748, 32.482437, 22.618498>,  <30.706079, 32.667812, 22.409569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419748, 32.482437, 22.618498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437233, 0.285747, 0.852746,
		-0.544444, 0.838795, -0.001916,
		-0.715827, -0.463435, 0.522322,
		30.205000, 32.343407, 22.775194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473267, 33.173603, 22.840750>,  <30.706079, 32.667812, 22.409569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473267, 33.173603, 22.840750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364523, 32.840534, 23.033724>,  <30.299276, 32.640694, 23.149509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364523, 32.840534, 23.033724>,  <30.473267, 33.173603, 22.840750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364523, 32.840534, 23.033724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197687, 0.442305, 0.874807,
		-0.941813, 0.333198, 0.044363,
		-0.271862, -0.832674, 0.482437,
		30.282965, 32.590733, 23.178455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970659, 33.400940, 23.341597>,  <30.473267, 33.173603, 22.840750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970659, 33.400940, 23.341597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103630, 33.044914, 23.466352>,  <30.183413, 32.831299, 23.541206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103630, 33.044914, 23.466352>,  <29.970659, 33.400940, 23.341597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103630, 33.044914, 23.466352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350824, 0.423664, 0.835124,
		-0.875452, -0.168200, 0.453094,
		0.332427, -0.890066, 0.311889,
		30.203358, 32.777893, 23.559919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863121, 33.340317, 24.112057>,  <29.970659, 33.400940, 23.341597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863121, 33.340317, 24.112057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120102, 33.041424, 24.044060>,  <30.274290, 32.862087, 24.003262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120102, 33.041424, 24.044060>,  <29.863121, 33.340317, 24.112057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120102, 33.041424, 24.044060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525179, 0.267768, 0.807767,
		-0.558072, -0.608228, 0.564459,
		0.642451, -0.747234, -0.169995,
		30.312838, 32.817253, 23.993061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986547, 32.981251, 24.740053>,  <29.863121, 33.340317, 24.112057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986547, 32.981251, 24.740053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305252, 32.919395, 24.506384>,  <30.496475, 32.882282, 24.366182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305252, 32.919395, 24.506384>,  <29.986547, 32.981251, 24.740053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305252, 32.919395, 24.506384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583996, 0.445492, 0.678591,
		0.155310, -0.881830, 0.445258,
		0.796761, -0.154637, -0.584175,
		30.544281, 32.873005, 24.331131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605188, 32.863327, 25.228729>,  <29.986547, 32.981251, 24.740053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605188, 32.863327, 25.228729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791809, 32.974018, 24.892693>,  <30.903782, 33.040432, 24.691071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791809, 32.974018, 24.892693>,  <30.605188, 32.863327, 25.228729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791809, 32.974018, 24.892693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689918, 0.480492, 0.541425,
		0.553482, -0.832196, 0.033257,
		0.466551, 0.276725, -0.840091,
		30.931774, 33.057037, 24.640665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282946, 32.665028, 25.318016>,  <30.605188, 32.863327, 25.228729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282946, 32.665028, 25.318016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262400, 32.951916, 25.040037>,  <31.250072, 33.124050, 24.873249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262400, 32.951916, 25.040037>,  <31.282946, 32.665028, 25.318016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262400, 32.951916, 25.040037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718075, 0.510142, 0.473418,
		0.694068, -0.474707, -0.541223,
		-0.051365, 0.717223, -0.694948,
		31.246990, 33.167084, 24.831553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044159, 32.815807, 25.254833>,  <31.282946, 32.665028, 25.318016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044159, 32.815807, 25.254833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881477, 33.121677, 25.054888>,  <31.783869, 33.305199, 24.934921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881477, 33.121677, 25.054888>,  <32.044159, 32.815807, 25.254833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881477, 33.121677, 25.054888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587540, 0.637926, 0.497842,
		0.699564, -0.091217, -0.708724,
		-0.406702, 0.764677, -0.499864,
		31.759466, 33.351082, 24.904928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603500, 33.218159, 25.022749>,  <32.044159, 32.815807, 25.254833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603500, 33.218159, 25.022749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271725, 33.439400, 25.054018>,  <32.072659, 33.572144, 25.072779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271725, 33.439400, 25.054018>,  <32.603500, 33.218159, 25.022749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271725, 33.439400, 25.054018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516089, 0.705235, 0.486103,
		0.213732, 0.443538, -0.870398,
		-0.829440, 0.553098, 0.078174,
		32.022892, 33.605328, 25.077471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862038, 33.868809, 24.968433>,  <32.603500, 33.218159, 25.022749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862038, 33.868809, 24.968433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496197, 33.938881, 25.114206>,  <32.276691, 33.980923, 25.201670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496197, 33.938881, 25.114206>,  <32.862038, 33.868809, 24.968433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496197, 33.938881, 25.114206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329906, 0.844410, 0.422060,
		-0.233797, 0.506247, -0.830092,
		-0.914605, 0.175176, 0.364434,
		32.221817, 33.991432, 25.223536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735569, 34.593712, 24.804323>,  <32.862038, 33.868809, 24.968433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735569, 34.593712, 24.804323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468330, 34.535381, 25.096182>,  <32.307987, 34.500381, 25.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468330, 34.535381, 25.096182>,  <32.735569, 34.593712, 24.804323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468330, 34.535381, 25.096182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303491, 0.841923, 0.446161,
		-0.679369, 0.519519, -0.518226,
		-0.668095, -0.145831, 0.729646,
		32.267902, 34.491631, 25.315075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311378, 35.201401, 24.873423>,  <32.735569, 34.593712, 24.804323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311378, 35.201401, 24.873423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320465, 35.027122, 25.233347>,  <32.325916, 34.922558, 25.449301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320465, 35.027122, 25.233347>,  <32.311378, 35.201401, 24.873423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320465, 35.027122, 25.233347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343752, 0.848568, 0.402202,
		-0.938786, 0.300174, 0.169046,
		0.022716, -0.435692, 0.899809,
		32.327278, 34.896416, 25.503290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165112, 35.731163, 25.245153>,  <32.311378, 35.201401, 24.873423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165112, 35.731163, 25.245153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259827, 35.463814, 25.527203>,  <32.316658, 35.303402, 25.696432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259827, 35.463814, 25.527203>,  <32.165112, 35.731163, 25.245153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259827, 35.463814, 25.527203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377760, 0.731996, 0.566991,
		-0.895113, 0.132110, 0.425816,
		0.236790, -0.668378, 0.705125,
		32.330864, 35.263302, 25.738741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881617, 36.057453, 25.846985>,  <32.165112, 35.731163, 25.245153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881617, 36.057453, 25.846985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175137, 35.807350, 25.953260>,  <32.351250, 35.657288, 26.017027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175137, 35.807350, 25.953260>,  <31.881617, 36.057453, 25.846985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175137, 35.807350, 25.953260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451198, 0.740914, 0.497460,
		-0.507893, -0.245158, 0.825798,
		0.733801, -0.625255, 0.265690,
		32.395279, 35.619774, 26.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030060, 36.164036, 26.598188>,  <31.881617, 36.057453, 25.846985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030060, 36.164036, 26.598188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353855, 35.979805, 26.452536>,  <32.548134, 35.869267, 26.365143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353855, 35.979805, 26.452536>,  <32.030060, 36.164036, 26.598188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353855, 35.979805, 26.452536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586233, 0.599717, 0.544674,
		-0.032487, -0.654376, 0.755471,
		0.809491, -0.460577, -0.364134,
		32.596703, 35.841633, 26.343296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388931, 36.058929, 27.146152>,  <32.030060, 36.164036, 26.598188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388931, 36.058929, 27.146152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665451, 36.009933, 26.861307>,  <32.831364, 35.980537, 26.690399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665451, 36.009933, 26.861307>,  <32.388931, 36.058929, 27.146152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665451, 36.009933, 26.861307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668893, 0.481239, 0.566561,
		0.273301, -0.867989, 0.414610,
		0.691295, -0.122488, -0.712115,
		32.872841, 35.973186, 26.647673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010090, 35.748875, 27.419388>,  <32.388931, 36.058929, 27.146152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010090, 35.748875, 27.419388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224281, 35.898891, 27.116707>,  <33.352798, 35.988903, 26.935099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224281, 35.898891, 27.116707>,  <33.010090, 35.748875, 27.419388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224281, 35.898891, 27.116707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648344, 0.391625, 0.652901,
		0.541211, -0.840221, -0.033449,
		0.535482, 0.375043, -0.756704,
		33.384926, 36.011406, 26.889696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726921, 35.652653, 27.576296>,  <33.010090, 35.748875, 27.419388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726921, 35.652653, 27.576296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709885, 35.944210, 27.302975>,  <33.699665, 36.119144, 27.138981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709885, 35.944210, 27.302975>,  <33.726921, 35.652653, 27.576296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709885, 35.944210, 27.302975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571978, 0.578541, 0.581490,
		0.819162, -0.366071, -0.441548,
		-0.042587, 0.728891, -0.683304,
		33.697109, 36.162876, 27.097984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405537, 35.932407, 27.485731>,  <33.726921, 35.652653, 27.576296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405537, 35.932407, 27.485731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127277, 36.203438, 27.390261>,  <33.960323, 36.366055, 27.332979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127277, 36.203438, 27.390261>,  <34.405537, 35.932407, 27.485731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127277, 36.203438, 27.390261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420476, 0.653425, 0.629473,
		0.582472, 0.337534, -0.739458,
		-0.695648, 0.677574, -0.238676,
		33.918583, 36.406712, 27.318657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709007, 36.471832, 26.930948>,  <34.405537, 35.932407, 27.485731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709007, 36.471832, 26.930948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617954, 36.189415, 26.662714>,  <34.563320, 36.019966, 26.501774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617954, 36.189415, 26.662714>,  <34.709007, 36.471832, 26.930948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617954, 36.189415, 26.662714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914407, -0.391727, 0.102033,
		-0.334727, -0.589963, 0.734780,
		-0.227637, -0.706041, -0.670588,
		34.549664, 35.977604, 26.461538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330704, 35.979473, 26.991444>,  <34.709007, 36.471832, 26.930948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330704, 35.979473, 26.991444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128174, 35.900650, 26.655634>,  <35.006657, 35.853355, 26.454147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128174, 35.900650, 26.655634>,  <35.330704, 35.979473, 26.991444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128174, 35.900650, 26.655634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665566, -0.708325, -0.235153,
		-0.548318, -0.677823, 0.489799,
		-0.506329, -0.197055, -0.839524,
		34.976276, 35.841534, 26.403776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965599, 35.318218, 26.957878>,  <35.330704, 35.979473, 26.991444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965599, 35.318218, 26.957878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096886, 35.427406, 26.596157>,  <35.175659, 35.492920, 26.379126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096886, 35.427406, 26.596157>,  <34.965599, 35.318218, 26.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096886, 35.427406, 26.596157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429973, -0.895581, -0.114275,
		-0.841067, -0.351317, -0.411317,
		0.328221, 0.272968, -0.904300,
		35.195351, 35.509296, 26.324867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904106, 34.713776, 26.541588>,  <34.965599, 35.318218, 26.957878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904106, 34.713776, 26.541588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188644, 34.935802, 26.369131>,  <35.359367, 35.069019, 26.265657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188644, 34.935802, 26.369131>,  <34.904106, 34.713776, 26.541588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188644, 34.935802, 26.369131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564596, -0.816624, -0.119821,
		-0.418588, -0.158185, -0.894294,
		0.711348, 0.555070, -0.431140,
		35.402050, 35.102322, 26.239790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945595, 34.370495, 25.897320>,  <34.904106, 34.713776, 26.541588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945595, 34.370495, 25.897320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267067, 34.553360, 26.049690>,  <35.459949, 34.663078, 26.141113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267067, 34.553360, 26.049690>,  <34.945595, 34.370495, 25.897320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267067, 34.553360, 26.049690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470900, -0.879965, 0.062568,
		0.363807, 0.129095, -0.922485,
		0.803678, 0.457161, 0.380928,
		35.508171, 34.690510, 26.163969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622753, 34.326065, 25.507427>,  <34.945595, 34.370495, 25.897320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622753, 34.326065, 25.507427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647560, 34.344933, 25.906212>,  <35.662445, 34.356255, 26.145483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647560, 34.344933, 25.906212>,  <35.622753, 34.326065, 25.507427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647560, 34.344933, 25.906212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287965, -0.957250, 0.027376,
		0.955631, 0.285392, -0.072948,
		0.062017, 0.047168, 0.996960,
		35.666164, 34.359081, 26.205299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064079, 33.820396, 25.776979>,  <35.622753, 34.326065, 25.507427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064079, 33.820396, 25.776979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788368, 33.855228, 26.064680>,  <35.622944, 33.876129, 26.237301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788368, 33.855228, 26.064680>,  <36.064079, 33.820396, 25.776979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788368, 33.855228, 26.064680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068483, -0.980475, 0.184334,
		0.721258, 0.176313, 0.669852,
		-0.689273, 0.087079, 0.719250,
		35.581585, 33.881351, 26.280455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308041, 33.630405, 26.447933>,  <36.064079, 33.820396, 25.776979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308041, 33.630405, 26.447933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914814, 33.578999, 26.395691>,  <35.678879, 33.548157, 26.364346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914814, 33.578999, 26.395691>,  <36.308041, 33.630405, 26.447933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914814, 33.578999, 26.395691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111000, -0.984809, 0.133528,
		-0.145783, 0.116770, 0.982401,
		-0.983070, -0.128513, -0.130607,
		35.619892, 33.540443, 26.356508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097153, 33.559315, 27.104483>,  <36.308041, 33.630405, 26.447933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097153, 33.559315, 27.104483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968655, 33.307888, 26.821157>,  <35.891556, 33.157032, 26.651163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968655, 33.307888, 26.821157>,  <36.097153, 33.559315, 27.104483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968655, 33.307888, 26.821157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464788, -0.756325, 0.460374,
		-0.825089, -0.181320, 0.535118,
		-0.321248, -0.628566, -0.708311,
		35.872280, 33.119320, 26.608664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785706, 32.966793, 27.438744>,  <36.097153, 33.559315, 27.104483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785706, 32.966793, 27.438744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926586, 32.872623, 27.076412>,  <36.011116, 32.816120, 26.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926586, 32.872623, 27.076412>,  <35.785706, 32.966793, 27.438744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926586, 32.872623, 27.076412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533771, -0.744488, 0.401032,
		-0.768793, -0.624750, -0.136545,
		0.352201, -0.235427, -0.905830,
		36.032246, 32.801994, 26.804663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986485, 32.577637, 27.975491>,  <35.785706, 32.966793, 27.438744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986485, 32.577637, 27.975491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185131, 32.776390, 28.260159>,  <36.304321, 32.895641, 28.430960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185131, 32.776390, 28.260159>,  <35.986485, 32.577637, 27.975491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185131, 32.776390, 28.260159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019192, -0.826011, 0.563327,
		0.867757, -0.266100, -0.419749,
		0.496619, 0.496886, 0.711670,
		36.334118, 32.925457, 28.473660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637486, 32.230961, 28.118355>,  <35.986485, 32.577637, 27.975491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637486, 32.230961, 28.118355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461506, 32.419857, 28.423885>,  <36.355919, 32.533195, 28.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461506, 32.419857, 28.423885>,  <36.637486, 32.230961, 28.118355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461506, 32.419857, 28.423885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129353, -0.808371, 0.574285,
		0.888658, 0.351460, 0.294556,
		-0.439949, 0.472242, 0.763828,
		36.329521, 32.561531, 28.653034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109009, 32.389206, 28.581360>,  <36.637486, 32.230961, 28.118355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109009, 32.389206, 28.581360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748123, 32.322594, 28.740494>,  <36.531590, 32.282627, 28.835974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748123, 32.322594, 28.740494>,  <37.109009, 32.389206, 28.581360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748123, 32.322594, 28.740494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320262, -0.876511, 0.359388,
		0.288856, 0.451657, 0.844137,
		-0.902216, -0.166534, 0.397834,
		36.477459, 32.272633, 28.859844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298561, 32.067532, 29.172070>,  <37.109009, 32.389206, 28.581360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298561, 32.067532, 29.172070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920265, 31.973745, 29.082094>,  <36.693287, 31.917473, 29.028109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920265, 31.973745, 29.082094>,  <37.298561, 32.067532, 29.172070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920265, 31.973745, 29.082094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121733, -0.897561, 0.423752,
		-0.301253, 0.373377, 0.877403,
		-0.945742, -0.234465, -0.224940,
		36.636543, 31.903406, 29.014612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939335, 32.075142, 29.814409>,  <37.298561, 32.067532, 29.172070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939335, 32.075142, 29.814409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815327, 31.831627, 29.522308>,  <36.740921, 31.685518, 29.347048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815327, 31.831627, 29.522308>,  <36.939335, 32.075142, 29.814409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815327, 31.831627, 29.522308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058248, -0.778816, 0.624543,
		-0.948942, 0.151088, 0.276913,
		-0.310025, -0.608785, -0.730250,
		36.722321, 31.648991, 29.303234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842525, 31.441936, 30.148575>,  <36.939335, 32.075142, 29.814409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842525, 31.441936, 30.148575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756630, 31.329741, 29.774364>,  <36.705093, 31.262423, 29.549837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756630, 31.329741, 29.774364>,  <36.842525, 31.441936, 30.148575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756630, 31.329741, 29.774364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037921, -0.954757, 0.294960,
		-0.975935, 0.098816, 0.194387,
		-0.214739, -0.280490, -0.935528,
		36.692207, 31.245594, 29.493706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159634, 31.149996, 29.938681>,  <36.842525, 31.441936, 30.148575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159634, 31.149996, 29.938681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447601, 30.993763, 29.709190>,  <36.620384, 30.900024, 29.571497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447601, 30.993763, 29.709190>,  <36.159634, 31.149996, 29.938681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447601, 30.993763, 29.709190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075012, -0.865570, 0.495138,
		-0.689989, -0.313425, -0.652442,
		0.719923, -0.390580, -0.573724,
		36.663578, 30.876589, 29.537073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925823, 30.502869, 29.710121>,  <36.159634, 31.149996, 29.938681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925823, 30.502869, 29.710121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323059, 30.473288, 29.673660>,  <36.561401, 30.455540, 29.651783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323059, 30.473288, 29.673660>,  <35.925823, 30.502869, 29.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323059, 30.473288, 29.673660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031309, -0.915324, 0.401498,
		-0.113126, -0.395869, -0.911312,
		0.993087, -0.073952, -0.091153,
		36.620987, 30.451101, 29.646315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029209, 29.870527, 29.473278>,  <35.925823, 30.502869, 29.710121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029209, 29.870527, 29.473278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371376, 29.977379, 29.650776>,  <36.576675, 30.041489, 29.757275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371376, 29.977379, 29.650776>,  <36.029209, 29.870527, 29.473278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371376, 29.977379, 29.650776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042841, -0.890298, 0.453358,
		0.516171, -0.368798, -0.773017,
		0.855413, 0.267127, 0.443747,
		36.627998, 30.057518, 29.783899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653149, 29.439676, 29.230362>,  <36.029209, 29.870527, 29.473278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653149, 29.439676, 29.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680862, 29.592583, 29.598942>,  <36.697491, 29.684326, 29.820089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680862, 29.592583, 29.598942>,  <36.653149, 29.439676, 29.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680862, 29.592583, 29.598942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030626, -0.924050, 0.381043,
		0.997127, 0.001820, -0.075730,
		0.069284, 0.382267, 0.921451,
		36.701649, 29.707262, 29.875378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961914, 28.940517, 29.612652>,  <36.653149, 29.439676, 29.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961914, 28.940517, 29.612652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818714, 29.154108, 29.919039>,  <36.732796, 29.282263, 30.102871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818714, 29.154108, 29.919039>,  <36.961914, 28.940517, 29.612652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818714, 29.154108, 29.919039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018827, -0.824300, 0.565840,
		0.933533, 0.188148, 0.305149,
		-0.357996, 0.533976, 0.765969,
		36.711315, 29.314301, 30.148830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327053, 29.141144, 30.370378>,  <36.961914, 28.940517, 29.612652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327053, 29.141144, 30.370378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944550, 29.033146, 30.415407>,  <36.715046, 28.968348, 30.442425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944550, 29.033146, 30.415407>,  <37.327053, 29.141144, 30.370378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944550, 29.033146, 30.415407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271974, -0.678929, 0.681973,
		-0.107700, 0.682759, 0.722663,
		-0.956259, -0.269993, 0.112572,
		36.657673, 28.952148, 30.449179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104912, 29.108746, 31.097494>,  <37.327053, 29.141144, 30.370378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104912, 29.108746, 31.097494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893005, 28.852802, 30.874811>,  <36.765862, 28.699236, 30.741201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893005, 28.852802, 30.874811>,  <37.104912, 29.108746, 31.097494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893005, 28.852802, 30.874811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171677, -0.723698, 0.668422,
		-0.830587, 0.258534, 0.493241,
		-0.529767, -0.639861, -0.556709,
		36.734074, 28.660845, 30.707798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539684, 28.703287, 31.466225>,  <37.104912, 29.108746, 31.097494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539684, 28.703287, 31.466225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677769, 28.493740, 31.154741>,  <36.760620, 28.368011, 30.967852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677769, 28.493740, 31.154741>,  <36.539684, 28.703287, 31.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677769, 28.493740, 31.154741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293199, -0.727991, 0.619728,
		-0.891551, -0.442254, -0.097713,
		0.345211, -0.523870, -0.778710,
		36.781334, 28.336578, 30.921127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351242, 27.960430, 31.606228>,  <36.539684, 28.703287, 31.466225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351242, 27.960430, 31.606228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673470, 28.006857, 31.373819>,  <36.866806, 28.034712, 31.234375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673470, 28.006857, 31.373819>,  <36.351242, 27.960430, 31.606228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673470, 28.006857, 31.373819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490640, -0.680418, 0.544338,
		-0.332158, -0.723575, -0.605071,
		0.805570, 0.116065, -0.581021,
		36.915142, 28.041676, 31.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679741, 27.288160, 31.304871>,  <36.351242, 27.960430, 31.606228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679741, 27.288160, 31.304871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945915, 27.579178, 31.371647>,  <37.105621, 27.753788, 31.411713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945915, 27.579178, 31.371647>,  <36.679741, 27.288160, 31.304871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945915, 27.579178, 31.371647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559416, -0.634143, 0.533776,
		0.494211, -0.261805, -0.828983,
		0.665439, 0.727544, 0.166943,
		37.145546, 27.797441, 31.421730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283268, 27.039862, 31.167704>,  <36.679741, 27.288160, 31.304871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283268, 27.039862, 31.167704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376995, 27.328806, 31.427948>,  <37.433231, 27.502172, 31.584095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376995, 27.328806, 31.427948>,  <37.283268, 27.039862, 31.167704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376995, 27.328806, 31.427948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468449, -0.670315, 0.575529,
		0.851852, 0.169922, -0.495454,
		0.234315, 0.722360, 0.650609,
		37.447289, 27.545513, 31.623131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141792, 27.166462, 31.286739>,  <37.283268, 27.039862, 31.167704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141792, 27.166462, 31.286739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893532, 27.216501, 31.596357>,  <37.744576, 27.246525, 31.782127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893532, 27.216501, 31.596357>,  <38.141792, 27.166462, 31.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893532, 27.216501, 31.596357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485155, -0.714256, 0.504444,
		0.615970, 0.688614, 0.382611,
		-0.620650, 0.125097, 0.774044,
		37.707336, 27.254030, 31.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522713, 27.295668, 32.023521>,  <38.141792, 27.166462, 31.286739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522713, 27.295668, 32.023521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163044, 27.159061, 32.132969>,  <37.947243, 27.077099, 32.198635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163044, 27.159061, 32.132969>,  <38.522713, 27.295668, 32.023521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163044, 27.159061, 32.132969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436339, -0.652187, 0.619887,
		-0.033251, 0.676772, 0.735442,
		-0.899168, -0.341514, 0.273616,
		37.893295, 27.056608, 32.215054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535217, 27.231720, 32.690861>,  <38.522713, 27.295668, 32.023521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535217, 27.231720, 32.690861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269028, 26.955130, 32.578426>,  <38.109314, 26.789175, 32.510967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269028, 26.955130, 32.578426>,  <38.535217, 27.231720, 32.690861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269028, 26.955130, 32.578426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418122, -0.657283, 0.627018,
		-0.618321, 0.299735, 0.726525,
		-0.665472, -0.691475, -0.281086,
		38.069386, 26.747686, 32.494099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426682, 26.782372, 33.242310>,  <38.535217, 27.231720, 32.690861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426682, 26.782372, 33.242310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397549, 26.757748, 33.640488>,  <38.380070, 26.742973, 33.879395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397549, 26.757748, 33.640488>,  <38.426682, 26.782372, 33.242310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397549, 26.757748, 33.640488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943081, 0.320482, 0.088819,
		-0.324489, 0.945252, 0.034713,
		-0.072832, -0.061558, 0.995443,
		38.375698, 26.739281, 33.939121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606289, 27.470835, 33.654362>,  <38.426682, 26.782372, 33.242310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606289, 27.470835, 33.654362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687424, 27.192881, 33.930332>,  <38.736103, 27.026108, 34.095913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687424, 27.192881, 33.930332>,  <38.606289, 27.470835, 33.654362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687424, 27.192881, 33.930332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947000, 0.318435, 0.042314,
		-0.249098, 0.644773, 0.722646,
		0.202833, -0.694886, 0.689922,
		38.748272, 26.984415, 34.137310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550919, 27.762856, 34.337448>,  <38.606289, 27.470835, 33.654362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550919, 27.762856, 34.337448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656689, 28.148502, 34.328026>,  <38.720150, 28.379890, 34.322372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656689, 28.148502, 34.328026>,  <38.550919, 27.762856, 34.337448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656689, 28.148502, 34.328026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132120, 0.012022, -0.991161,
		-0.955313, 0.265202, 0.130559,
		0.264427, 0.964118, -0.023553,
		38.736015, 28.437738, 34.320961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964581, 28.121033, 34.082695>,  <38.550919, 27.762856, 34.337448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964581, 28.121033, 34.082695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293308, 28.330980, 33.994034>,  <38.490543, 28.456949, 33.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293308, 28.330980, 33.994034>,  <37.964581, 28.121033, 34.082695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293308, 28.330980, 33.994034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304252, 0.075359, -0.949606,
		-0.481717, 0.847840, 0.221624,
		0.821815, 0.524871, -0.221656,
		38.539852, 28.488441, 33.927536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793636, 28.803549, 33.719212>,  <37.964581, 28.121033, 34.082695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793636, 28.803549, 33.719212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140751, 28.620087, 33.642708>,  <38.349018, 28.510010, 33.596806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140751, 28.620087, 33.642708>,  <37.793636, 28.803549, 33.719212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140751, 28.620087, 33.642708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249966, -0.070246, -0.965703,
		0.429492, 0.885832, -0.175608,
		0.867787, -0.458658, -0.191258,
		38.401089, 28.482489, 33.585331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877167, 29.073351, 33.064560>,  <37.793636, 28.803549, 33.719212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877167, 29.073351, 33.064560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122932, 28.763834, 33.126190>,  <38.270393, 28.578123, 33.163170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122932, 28.763834, 33.126190>,  <37.877167, 29.073351, 33.064560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122932, 28.763834, 33.126190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057129, -0.238403, -0.969484,
		0.786913, 0.586862, -0.190684,
		0.614413, -0.773794, 0.154076,
		38.307255, 28.531696, 33.172413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619442, 29.198999, 32.773659>,  <37.877167, 29.073351, 33.064560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619442, 29.198999, 32.773659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476997, 28.825331, 32.782642>,  <38.391529, 28.601130, 32.788033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476997, 28.825331, 32.782642>,  <38.619442, 29.198999, 32.773659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476997, 28.825331, 32.782642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023648, -0.015013, -0.999608,
		0.934143, -0.356506, -0.016745,
		-0.356115, -0.934172, 0.022455,
		38.370163, 28.545078, 32.789379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789406, 29.907280, 32.812325>,  <38.619442, 29.198999, 32.773659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789406, 29.907280, 32.812325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529617, 29.795864, 32.529312>,  <38.373745, 29.729015, 32.359505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529617, 29.795864, 32.529312>,  <38.789406, 29.907280, 32.812325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529617, 29.795864, 32.529312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723193, 0.513727, 0.461602,
		0.234906, 0.811481, -0.535087,
		-0.649470, -0.278539, -0.707535,
		38.334778, 29.712303, 32.317051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560055, 30.672525, 32.812256>,  <38.789406, 29.907280, 32.812325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560055, 30.672525, 32.812256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752625, 30.506292, 33.120937>,  <38.868164, 30.406553, 33.306145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752625, 30.506292, 33.120937>,  <38.560055, 30.672525, 32.812256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752625, 30.506292, 33.120937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580830, 0.810636, 0.074200,
		-0.656407, 0.412507, 0.631639,
		0.481421, -0.415580, 0.771704,
		38.897053, 30.381618, 33.352448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587719, 30.998301, 33.439266>,  <38.560055, 30.672525, 32.812256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587719, 30.998301, 33.439266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941746, 30.812220, 33.432980>,  <39.154163, 30.700571, 33.429207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941746, 30.812220, 33.432980>,  <38.587719, 30.998301, 33.439266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941746, 30.812220, 33.432980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461995, 0.873848, 0.151496,
		-0.056744, -0.141344, 0.988333,
		0.885065, -0.465201, -0.015715,
		39.207264, 30.672659, 33.428265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055431, 31.104607, 34.068176>,  <38.587719, 30.998301, 33.439266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055431, 31.104607, 34.068176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333458, 31.041370, 33.787636>,  <39.500275, 31.003429, 33.619312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333458, 31.041370, 33.787636>,  <39.055431, 31.104607, 34.068176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333458, 31.041370, 33.787636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553680, 0.739985, 0.381916,
		0.458614, -0.653781, 0.601867,
		0.695062, -0.158089, -0.701353,
		39.541977, 30.993944, 33.577229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747063, 30.904263, 34.434238>,  <39.055431, 31.104607, 34.068176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747063, 30.904263, 34.434238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773643, 31.096539, 34.084492>,  <39.789593, 31.211905, 33.874645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773643, 31.096539, 34.084492>,  <39.747063, 30.904263, 34.434238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773643, 31.096539, 34.084492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709737, 0.593164, 0.380039,
		0.701326, -0.645826, -0.301747,
		0.066454, 0.480692, -0.874368,
		39.793579, 31.240746, 33.822182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381599, 30.872288, 34.054634>,  <39.747063, 30.904263, 34.434238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381599, 30.872288, 34.054634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167477, 31.210150, 34.054527>,  <40.039001, 31.412867, 34.054462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167477, 31.210150, 34.054527>,  <40.381599, 30.872288, 34.054634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167477, 31.210150, 34.054527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706450, 0.447890, 0.548018,
		0.463006, 0.293171, -0.836467,
		-0.535308, 0.844657, -0.000265,
		40.006886, 31.463547, 34.054447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947952, 31.464527, 33.994045>,  <40.381599, 30.872288, 34.054634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947952, 31.464527, 33.994045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609856, 31.546267, 34.191551>,  <40.406998, 31.595310, 34.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609856, 31.546267, 34.191551>,  <40.947952, 31.464527, 33.994045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609856, 31.546267, 34.191551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511619, 0.576252, 0.637322,
		-0.154297, 0.791313, -0.591622,
		-0.845245, 0.204348, 0.493764,
		40.356281, 31.607571, 34.339680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950912, 32.099678, 34.115540>,  <40.947952, 31.464527, 33.994045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950912, 32.099678, 34.115540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694626, 31.962858, 34.390488>,  <40.540855, 31.880766, 34.555458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694626, 31.962858, 34.390488>,  <40.950912, 32.099678, 34.115540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694626, 31.962858, 34.390488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429296, 0.582644, 0.690095,
		-0.636544, 0.737242, -0.226467,
		-0.640716, -0.342054, 0.687373,
		40.502411, 31.860243, 34.596699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655663, 32.722576, 34.573795>,  <40.950912, 32.099678, 34.115540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655663, 32.722576, 34.573795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726826, 32.362942, 34.733795>,  <40.769524, 32.147163, 34.829796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726826, 32.362942, 34.733795>,  <40.655663, 32.722576, 34.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726826, 32.362942, 34.733795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700806, 0.401114, 0.589898,
		-0.690812, 0.175372, 0.701444,
		0.177908, -0.899084, 0.399996,
		40.780197, 32.093216, 34.853794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829494, 32.812511, 33.928776>,  <40.655663, 32.722576, 34.573795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829494, 32.812511, 33.928776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770657, 33.193371, 33.821609>,  <40.735352, 33.421886, 33.757309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770657, 33.193371, 33.821609>,  <40.829494, 32.812511, 33.928776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770657, 33.193371, 33.821609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896444, 0.013856, -0.442941,
		-0.418032, -0.305331, -0.855583,
		-0.147098, 0.952146, -0.267920,
		40.726528, 33.479015, 33.741234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788383, 32.892151, 33.180504>,  <40.829494, 32.812511, 33.928776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788383, 32.892151, 33.180504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956463, 33.212841, 33.350529>,  <41.057312, 33.405254, 33.452541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956463, 33.212841, 33.350529>,  <40.788383, 32.892151, 33.180504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956463, 33.212841, 33.350529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838298, -0.163638, -0.520075,
		-0.347399, 0.574862, -0.740842,
		0.420202, 0.801721, 0.425058,
		41.082523, 33.453358, 33.478046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874088, 33.505535, 32.706161>,  <40.788383, 32.892151, 33.180504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874088, 33.505535, 32.706161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166367, 33.461685, 32.975697>,  <41.341732, 33.435375, 33.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166367, 33.461685, 32.975697>,  <40.874088, 33.505535, 32.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166367, 33.461685, 32.975697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636673, -0.246859, -0.730553,
		0.246434, 0.962830, -0.110581,
		0.730697, -0.109629, 0.673842,
		41.385574, 33.428795, 33.177849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470299, 33.926422, 32.723431>,  <40.874088, 33.505535, 32.706161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470299, 33.926422, 32.723431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556007, 33.560184, 32.859539>,  <41.607433, 33.340443, 32.941204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556007, 33.560184, 32.859539>,  <41.470299, 33.926422, 32.723431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556007, 33.560184, 32.859539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438849, -0.220983, -0.870964,
		0.872640, 0.335947, 0.354457,
		0.214269, -0.915591, 0.340268,
		41.620289, 33.285507, 32.961620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242844, 33.875366, 32.615772>,  <41.470299, 33.926422, 32.723431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242844, 33.875366, 32.615772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044216, 33.528469, 32.630222>,  <41.925041, 33.320332, 32.638893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044216, 33.528469, 32.630222>,  <42.242844, 33.875366, 32.615772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044216, 33.528469, 32.630222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453256, -0.294572, -0.841301,
		0.740257, -0.401387, 0.539359,
		-0.496567, -0.867246, 0.036128,
		41.895245, 33.268295, 32.641060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709339, 33.359459, 32.398823>,  <42.242844, 33.875366, 32.615772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709339, 33.359459, 32.398823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335503, 33.228130, 32.344074>,  <42.111198, 33.149334, 32.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335503, 33.228130, 32.344074>,  <42.709339, 33.359459, 32.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335503, 33.228130, 32.344074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228133, -0.258018, -0.938820,
		0.272923, -0.908641, 0.316044,
		-0.934596, -0.328325, -0.136872,
		42.055122, 33.129631, 32.303013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475651, 33.442974, 32.381577>,  <42.709339, 33.359459, 32.398823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475651, 33.442974, 32.381577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450527, 33.157421, 32.102596>,  <43.435455, 32.986092, 31.935209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450527, 33.157421, 32.102596>,  <43.475651, 33.442974, 32.381577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450527, 33.157421, 32.102596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332257, 0.673919, -0.659877,
		0.941096, 0.190288, -0.279516,
		-0.062805, -0.713879, -0.697447,
		43.431686, 32.943256, 31.893362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119926, 33.422504, 32.211033>,  <43.475651, 33.442974, 32.381577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119926, 33.422504, 32.211033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001728, 33.770660, 32.368565>,  <43.930809, 33.979553, 32.463081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001728, 33.770660, 32.368565>,  <44.119926, 33.422504, 32.211033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001728, 33.770660, 32.368565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811762, 0.446113, -0.376863,
		-0.503709, 0.208329, -0.838377,
		-0.295500, 0.870392, 0.393825,
		43.913078, 34.031776, 32.486713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106071, 34.001213, 31.678654>,  <44.119926, 33.422504, 32.211033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106071, 34.001213, 31.678654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186115, 34.117950, 32.052773>,  <44.234142, 34.187992, 32.277245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186115, 34.117950, 32.052773>,  <44.106071, 34.001213, 31.678654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186115, 34.117950, 32.052773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760393, 0.555732, -0.336102,
		-0.617864, 0.778452, -0.110709,
		0.200114, 0.291848, 0.935296,
		44.246151, 34.205505, 32.333363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628479, 34.556461, 31.714397>,  <44.106071, 34.001213, 31.678654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628479, 34.556461, 31.714397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624668, 34.542702, 32.114143>,  <44.622379, 34.534447, 32.353989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624668, 34.542702, 32.114143>,  <44.628479, 34.556461, 31.714397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624668, 34.542702, 32.114143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879736, 0.474818, 0.024733,
		-0.475366, 0.879411, 0.025738,
		-0.009530, -0.034400, 0.999363,
		44.621811, 34.532383, 32.413952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192326, 34.986378, 31.914793>,  <44.628479, 34.556461, 31.714397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192326, 34.986378, 31.914793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090012, 34.880005, 32.286568>,  <45.028622, 34.816181, 32.509632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090012, 34.880005, 32.286568>,  <45.192326, 34.986378, 31.914793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090012, 34.880005, 32.286568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800285, 0.481098, 0.357894,
		-0.542325, 0.835360, 0.089760,
		-0.255787, -0.265929, 0.929438,
		45.013275, 34.800224, 32.565399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092243, 35.508541, 32.373726>,  <45.192326, 34.986378, 31.914793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092243, 35.508541, 32.373726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203400, 35.236252, 32.644840>,  <45.270092, 35.072880, 32.807510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203400, 35.236252, 32.644840>,  <45.092243, 35.508541, 32.373726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203400, 35.236252, 32.644840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725425, 0.611238, 0.316460,
		-0.629711, 0.403744, 0.663668,
		0.277890, -0.680720, 0.677789,
		45.286766, 35.032036, 32.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200851, 35.873775, 33.107391>,  <45.092243, 35.508541, 32.373726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200851, 35.873775, 33.107391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431477, 35.572380, 32.981007>,  <45.569851, 35.391544, 32.905178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431477, 35.572380, 32.981007>,  <45.200851, 35.873775, 33.107391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431477, 35.572380, 32.981007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817023, 0.528439, 0.230708,
		-0.006870, -0.391163, 0.920296,
		0.576565, -0.753488, -0.315959,
		45.604446, 35.346333, 32.886219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720699, 35.726009, 33.502884>,  <45.200851, 35.873775, 33.107391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720699, 35.726009, 33.502884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868904, 35.592228, 33.156277>,  <45.957825, 35.511959, 32.948311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868904, 35.592228, 33.156277>,  <45.720699, 35.726009, 33.502884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868904, 35.592228, 33.156277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891937, 0.388432, 0.231451,
		0.259174, -0.858638, 0.442232,
		0.370510, -0.334457, -0.866523,
		45.980057, 35.491890, 32.896320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364151, 35.533470, 33.587154>,  <45.720699, 35.726009, 33.502884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364151, 35.533470, 33.587154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349087, 35.577026, 33.189819>,  <46.340050, 35.603161, 32.951416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349087, 35.577026, 33.189819>,  <46.364151, 35.533470, 33.587154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349087, 35.577026, 33.189819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917743, 0.397079, 0.008734,
		0.395386, -0.911302, -0.114885,
		-0.037659, 0.108888, -0.993340,
		46.337788, 35.609692, 32.891819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769012, 35.029404, 34.057617>,  <46.364151, 35.533470, 33.587154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769012, 35.029404, 34.057617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820301, 34.639324, 34.129787>,  <46.851074, 34.405277, 34.173092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820301, 34.639324, 34.129787>,  <46.769012, 35.029404, 34.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.820301, 34.639324, 34.129787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991734, 0.125215, -0.028005,
		0.004718, 0.182529, 0.983189,
		0.128222, -0.975195, 0.180429,
		46.858768, 34.346767, 34.183918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326668, 34.952286, 34.569504>,  <46.769012, 35.029404, 34.057617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326668, 34.952286, 34.569504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278938, 34.618114, 34.354904>,  <47.250301, 34.417614, 34.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278938, 34.618114, 34.354904>,  <47.326668, 34.952286, 34.569504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278938, 34.618114, 34.354904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989690, -0.056974, -0.131406,
		0.079213, -0.546645, 0.833609,
		-0.119327, -0.835424, -0.536496,
		47.243141, 34.367489, 34.193954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.684219, 34.949684, 35.301167>,  <47.326668, 34.952286, 34.569504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.684219, 34.949684, 35.301167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.903355, 34.716095, 35.061550>,  <48.034836, 34.575943, 34.917782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.903355, 34.716095, 35.061550>,  <47.684219, 34.949684, 35.301167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.903355, 34.716095, 35.061550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613461, -0.206426, 0.762269,
		-0.568802, -0.785087, 0.245157,
		0.547841, -0.583975, -0.599036,
		48.067707, 34.540901, 34.881840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.844650, 32.522396, 17.223164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.015160, 32.163517, 17.269337>,  <34.117466, 31.948189, 17.297041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.015160, 32.163517, 17.269337>,  <33.844650, 32.522396, 17.223164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015160, 32.163517, 17.269337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501847, 0.340725, 0.795020,
		-0.752620, -0.280969, 0.595499,
		0.426277, -0.897197, 0.115433,
		34.143044, 31.894358, 17.303967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626205, 32.258289, 18.025625>,  <33.844650, 32.522396, 17.223164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626205, 32.258289, 18.025625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.964745, 32.104637, 17.878035>,  <34.167866, 32.012447, 17.789480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.964745, 32.104637, 17.878035>,  <33.626205, 32.258289, 18.025625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964745, 32.104637, 17.878035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479723, 0.248731, 0.841427,
		-0.231441, -0.889144, 0.394789,
		0.846346, -0.384130, -0.368976,
		34.218647, 31.989399, 17.767342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866486, 31.816334, 18.411156>,  <33.626205, 32.258289, 18.025625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866486, 31.816334, 18.411156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193172, 31.939978, 18.216251>,  <34.389183, 32.014164, 18.099308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193172, 31.939978, 18.216251>,  <33.866486, 31.816334, 18.411156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193172, 31.939978, 18.216251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443003, 0.205214, 0.872717,
		0.369757, -0.928623, 0.030666,
		0.816718, 0.309108, -0.487262,
		34.438187, 32.032711, 18.070072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313679, 31.619940, 18.832794>,  <33.866486, 31.816334, 18.411156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313679, 31.619940, 18.832794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549568, 31.854797, 18.610987>,  <34.691101, 31.995712, 18.477901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549568, 31.854797, 18.610987>,  <34.313679, 31.619940, 18.832794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549568, 31.854797, 18.610987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449495, 0.331817, 0.829368,
		0.670958, -0.738349, -0.068240,
		0.589720, 0.587145, -0.554519,
		34.726482, 32.030941, 18.444632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025539, 31.432957, 19.089577>,  <34.313679, 31.619940, 18.832794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025539, 31.432957, 19.089577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995609, 31.795700, 18.923681>,  <34.977650, 32.013348, 18.824144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995609, 31.795700, 18.923681>,  <35.025539, 31.432957, 19.089577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995609, 31.795700, 18.923681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401289, 0.408126, 0.820000,
		0.912890, -0.105072, -0.394451,
		-0.074827, 0.906859, -0.414739,
		34.973160, 32.067757, 18.799259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672764, 31.649652, 19.266436>,  <35.025539, 31.432957, 19.089577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672764, 31.649652, 19.266436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438644, 31.969725, 19.214075>,  <35.298172, 32.161770, 19.182659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438644, 31.969725, 19.214075>,  <35.672764, 31.649652, 19.266436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438644, 31.969725, 19.214075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376901, 0.411442, 0.829856,
		0.717893, 0.436379, -0.542406,
		-0.585300, 0.800181, -0.130900,
		35.263054, 32.209778, 19.174805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072926, 32.303596, 19.450859>,  <35.672764, 31.649652, 19.266436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072926, 32.303596, 19.450859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690071, 32.418781, 19.463301>,  <35.460358, 32.487892, 19.470766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690071, 32.418781, 19.463301>,  <36.072926, 32.303596, 19.450859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690071, 32.418781, 19.463301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176933, 0.496300, 0.849930,
		0.229310, 0.819003, -0.525977,
		-0.957137, 0.287960, 0.031103,
		35.402931, 32.505169, 19.472631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191658, 32.963543, 19.727432>,  <36.072926, 32.303596, 19.450859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191658, 32.963543, 19.727432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799000, 32.903278, 19.774216>,  <35.563404, 32.867119, 19.802286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799000, 32.903278, 19.774216>,  <36.191658, 32.963543, 19.727432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799000, 32.903278, 19.774216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050002, 0.388490, 0.920095,
		-0.184057, 0.909053, -0.373825,
		-0.981643, -0.150658, 0.116958,
		35.504505, 32.858082, 19.809303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999481, 33.581661, 20.041153>,  <36.191658, 32.963543, 19.727432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999481, 33.581661, 20.041153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696495, 33.331158, 20.114958>,  <35.514706, 33.180855, 20.159241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696495, 33.331158, 20.114958>,  <35.999481, 33.581661, 20.041153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696495, 33.331158, 20.114958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080752, 0.370309, 0.925392,
		-0.647865, 0.686050, -0.331067,
		-0.757463, -0.626263, 0.184511,
		35.469257, 33.143280, 20.170311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404469, 33.995113, 20.239748>,  <35.999481, 33.581661, 20.041153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404469, 33.995113, 20.239748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414581, 33.629105, 20.400793>,  <35.420647, 33.409500, 20.497421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414581, 33.629105, 20.400793>,  <35.404469, 33.995113, 20.239748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414581, 33.629105, 20.400793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062394, 0.400514, 0.914164,
		-0.997732, -0.048228, -0.046968,
		0.025277, -0.915021, 0.402614,
		35.422165, 33.354599, 20.521578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969742, 34.068211, 20.771402>,  <35.404469, 33.995113, 20.239748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969742, 34.068211, 20.771402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138824, 33.722866, 20.881628>,  <35.240273, 33.515659, 20.947763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138824, 33.722866, 20.881628>,  <34.969742, 34.068211, 20.771402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138824, 33.722866, 20.881628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030722, 0.317542, 0.947746,
		-0.905748, -0.392148, 0.160749,
		0.422702, -0.863358, 0.275565,
		35.265636, 33.463860, 20.964298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480606, 33.859951, 21.258326>,  <34.969742, 34.068211, 20.771402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480606, 33.859951, 21.258326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844120, 33.701389, 21.310448>,  <35.062229, 33.606251, 21.341721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844120, 33.701389, 21.310448>,  <34.480606, 33.859951, 21.258326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844120, 33.701389, 21.310448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043684, 0.400941, 0.915062,
		-0.414980, -0.825899, 0.381684,
		0.908781, -0.396406, 0.130304,
		35.116753, 33.582466, 21.349539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467934, 33.701714, 21.935976>,  <34.480606, 33.859951, 21.258326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467934, 33.701714, 21.935976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860115, 33.682232, 21.859728>,  <35.095425, 33.670544, 21.813978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860115, 33.682232, 21.859728>,  <34.467934, 33.701714, 21.935976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860115, 33.682232, 21.859728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193405, 0.416333, 0.888404,
		0.036096, -0.907907, 0.417615,
		0.980455, -0.048701, -0.190622,
		35.154251, 33.667622, 21.802542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808125, 33.584396, 22.604979>,  <34.467934, 33.701714, 21.935976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808125, 33.584396, 22.604979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091881, 33.732601, 22.365150>,  <35.262135, 33.821526, 22.221254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091881, 33.732601, 22.365150>,  <34.808125, 33.584396, 22.604979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091881, 33.732601, 22.365150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321528, 0.586881, 0.743095,
		0.627206, -0.719922, 0.297196,
		0.709389, 0.370517, -0.599571,
		35.304699, 33.843754, 22.185280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458164, 33.584419, 22.971449>,  <34.808125, 33.584396, 22.604979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458164, 33.584419, 22.971449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.476265, 33.851963, 22.674646>,  <35.487125, 34.012489, 22.496565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.476265, 33.851963, 22.674646>,  <35.458164, 33.584419, 22.971449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476265, 33.851963, 22.674646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434821, 0.655527, 0.617426,
		0.899379, -0.350583, -0.261169,
		0.045256, 0.668862, -0.742008,
		35.489841, 34.052620, 22.452044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135441, 33.890972, 23.076603>,  <35.458164, 33.584419, 22.971449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135441, 33.890972, 23.076603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928242, 34.142056, 22.844168>,  <35.803921, 34.292706, 22.704706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928242, 34.142056, 22.844168>,  <36.135441, 33.890972, 23.076603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928242, 34.142056, 22.844168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176716, 0.743208, 0.645302,
		0.836929, 0.231577, -0.495905,
		-0.517997, 0.627706, -0.581089,
		35.772842, 34.330368, 22.669842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615501, 34.441273, 22.992416>,  <36.135441, 33.890972, 23.076603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615501, 34.441273, 22.992416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264912, 34.613777, 22.906799>,  <36.054558, 34.717278, 22.855429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264912, 34.613777, 22.906799>,  <36.615501, 34.441273, 22.992416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264912, 34.613777, 22.906799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131699, 0.642377, 0.754988,
		0.463090, 0.633537, -0.619821,
		-0.876472, 0.431258, -0.214042,
		36.001968, 34.743153, 22.842587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632305, 35.246525, 22.944513>,  <36.615501, 34.441273, 22.992416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632305, 35.246525, 22.944513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257923, 35.135292, 23.030914>,  <36.033295, 35.068554, 23.082756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257923, 35.135292, 23.030914>,  <36.632305, 35.246525, 22.944513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257923, 35.135292, 23.030914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048090, 0.708648, 0.703921,
		-0.348817, 0.648452, -0.676636,
		-0.935956, -0.278079, 0.216005,
		35.977135, 35.051868, 23.095716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359573, 35.785606, 23.343481>,  <36.632305, 35.246525, 22.944513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359573, 35.785606, 23.343481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048710, 35.544960, 23.417322>,  <35.862190, 35.400570, 23.461626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048710, 35.544960, 23.417322>,  <36.359573, 35.785606, 23.343481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048710, 35.544960, 23.417322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289006, 0.601786, 0.744533,
		-0.559017, 0.525268, -0.641555,
		-0.777158, -0.601620, 0.184603,
		35.815563, 35.364475, 23.472704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738049, 36.212513, 23.562685>,  <36.359573, 35.785606, 23.343481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738049, 36.212513, 23.562685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656918, 35.843945, 23.695255>,  <35.608238, 35.622803, 23.774797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656918, 35.843945, 23.695255>,  <35.738049, 36.212513, 23.562685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656918, 35.843945, 23.695255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406810, 0.387160, 0.827413,
		-0.890712, 0.032994, -0.453370,
		-0.202826, -0.921422, 0.331426,
		35.596069, 35.567516, 23.794683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964077, 36.293602, 23.808123>,  <35.738049, 36.212513, 23.562685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964077, 36.293602, 23.808123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136040, 35.974678, 23.977577>,  <35.239220, 35.783321, 24.079250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136040, 35.974678, 23.977577>,  <34.964077, 36.293602, 23.808123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136040, 35.974678, 23.977577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288348, 0.323392, 0.901262,
		-0.855590, -0.509615, -0.090876,
		0.429908, -0.797314, 0.423637,
		35.265011, 35.735485, 24.104668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445618, 35.798668, 24.141766>,  <34.964077, 36.293602, 23.808123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445618, 35.798668, 24.141766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797482, 35.742008, 24.323370>,  <35.008602, 35.708012, 24.432333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797482, 35.742008, 24.323370>,  <34.445618, 35.798668, 24.141766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797482, 35.742008, 24.323370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424147, 0.198207, 0.883636,
		-0.215155, -0.969871, 0.114276,
		0.879663, -0.141649, 0.454013,
		35.061382, 35.699512, 24.459574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722122, 35.941334, 24.803209>,  <34.445618, 35.798668, 24.141766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722122, 35.941334, 24.803209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442108, 36.197880, 24.928810>,  <34.274101, 36.351807, 25.004171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442108, 36.197880, 24.928810>,  <34.722122, 35.941334, 24.803209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442108, 36.197880, 24.928810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633619, -0.355057, -0.687358,
		-0.329365, -0.680129, 0.654937,
		-0.700033, 0.641373, 0.313999,
		34.232098, 36.390289, 25.023010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075867, 35.484665, 24.807734>,  <34.722122, 35.941334, 24.803209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075867, 35.484665, 24.807734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950172, 35.864262, 24.797411>,  <33.874756, 36.092022, 24.791218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950172, 35.864262, 24.797411>,  <34.075867, 35.484665, 24.807734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950172, 35.864262, 24.797411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778426, -0.273122, -0.565206,
		-0.543426, -0.157519, 0.824546,
		-0.314232, 0.948995, -0.025805,
		33.855904, 36.148960, 24.789669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265156, 35.529793, 24.981508>,  <34.075867, 35.484665, 24.807734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265156, 35.529793, 24.981508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379791, 35.842747, 24.760334>,  <33.448574, 36.030521, 24.627630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379791, 35.842747, 24.760334>,  <33.265156, 35.529793, 24.981508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379791, 35.842747, 24.760334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677875, -0.242246, -0.694120,
		-0.677017, 0.573747, 0.460937,
		0.286589, 0.782388, -0.552934,
		33.465767, 36.077465, 24.594454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709229, 35.873604, 24.662813>,  <33.265156, 35.529793, 24.981508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709229, 35.873604, 24.662813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994671, 36.030636, 24.430731>,  <33.165936, 36.124855, 24.291481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994671, 36.030636, 24.430731>,  <32.709229, 35.873604, 24.662813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994671, 36.030636, 24.430731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570813, -0.154291, -0.806453,
		-0.406119, 0.906683, 0.113987,
		0.713610, 0.392582, -0.580207,
		33.208755, 36.148411, 24.256668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425602, 36.416958, 24.304205>,  <32.709229, 35.873604, 24.662813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425602, 36.416958, 24.304205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742107, 36.297226, 24.090927>,  <32.932011, 36.225388, 23.962961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742107, 36.297226, 24.090927>,  <32.425602, 36.416958, 24.304205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742107, 36.297226, 24.090927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571348, -0.051268, -0.819105,
		0.217847, 0.952771, -0.211589,
		0.791268, -0.299331, -0.533195,
		32.979488, 36.207428, 23.930969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298634, 36.584534, 23.706438>,  <32.425602, 36.416958, 24.304205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298634, 36.584534, 23.706438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.609570, 36.358295, 23.596275>,  <32.796131, 36.222553, 23.530178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.609570, 36.358295, 23.596275>,  <32.298634, 36.584534, 23.706438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609570, 36.358295, 23.596275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459287, -0.211086, -0.862843,
		0.429884, 0.797212, -0.423855,
		0.777339, -0.565593, -0.275406,
		32.842770, 36.188618, 23.513653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125572, 36.585663, 22.997543>,  <32.298634, 36.584534, 23.706438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125572, 36.585663, 22.997543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.414249, 36.309361, 23.015511>,  <32.587456, 36.143581, 23.026291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.414249, 36.309361, 23.015511>,  <32.125572, 36.585663, 22.997543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414249, 36.309361, 23.015511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293462, -0.364088, -0.883923,
		0.626928, 0.624739, -0.465470,
		0.721693, -0.690754, 0.044920,
		32.630756, 36.102135, 23.028986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489262, 36.640186, 22.297129>,  <32.125572, 36.585663, 22.997543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489262, 36.640186, 22.297129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544788, 36.283974, 22.470417>,  <32.578106, 36.070248, 22.574390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544788, 36.283974, 22.470417>,  <32.489262, 36.640186, 22.297129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544788, 36.283974, 22.470417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395350, -0.450921, -0.800230,
		0.907980, -0.060186, -0.414669,
		0.138820, -0.890533, 0.433221,
		32.586433, 36.016815, 22.600384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872135, 36.228500, 21.861654>,  <32.489262, 36.640186, 22.297129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872135, 36.228500, 21.861654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.691101, 35.968456, 22.105793>,  <32.582481, 35.812428, 22.252275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.691101, 35.968456, 22.105793>,  <32.872135, 36.228500, 21.861654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691101, 35.968456, 22.105793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142521, -0.622922, -0.769192,
		0.880259, -0.435110, 0.189269,
		-0.452583, -0.650113, 0.610345,
		32.555325, 35.773422, 22.288897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210800, 35.571514, 21.692814>,  <32.872135, 36.228500, 21.861654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210800, 35.571514, 21.692814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.851433, 35.490173, 21.848505>,  <32.635815, 35.441368, 21.941919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.851433, 35.490173, 21.848505>,  <33.210800, 35.571514, 21.692814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851433, 35.490173, 21.848505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142667, -0.703095, -0.696638,
		0.415325, -0.681400, 0.602660,
		-0.898416, -0.203351, 0.389226,
		32.581909, 35.429169, 21.965273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099480, 34.776989, 21.654846>,  <33.210800, 35.571514, 21.692814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099480, 34.776989, 21.654846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.731548, 34.928120, 21.697121>,  <32.510792, 35.018799, 21.722486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.731548, 34.928120, 21.697121>,  <33.099480, 34.776989, 21.654846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731548, 34.928120, 21.697121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354444, -0.684787, -0.636738,
		-0.168204, -0.623148, 0.763802,
		-0.919824, 0.377827, 0.105688,
		32.455601, 35.041470, 21.728827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692829, 34.242413, 21.894987>,  <33.099480, 34.776989, 21.654846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692829, 34.242413, 21.894987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.446106, 34.486946, 21.696665>,  <32.298073, 34.633667, 21.577671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.446106, 34.486946, 21.696665>,  <32.692829, 34.242413, 21.894987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446106, 34.486946, 21.696665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261324, -0.753221, -0.603629,
		-0.742454, -0.242771, 0.624359,
		-0.616824, 0.611327, -0.495790,
		32.261063, 34.670345, 21.547924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925110, 33.878483, 21.647934>,  <32.692829, 34.242413, 21.894987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925110, 33.878483, 21.647934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.986458, 34.205540, 21.425966>,  <32.023266, 34.401775, 21.292786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.986458, 34.205540, 21.425966>,  <31.925110, 33.878483, 21.647934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986458, 34.205540, 21.425966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039925, -0.555978, -0.830237,
		-0.987362, 0.149489, -0.052626,
		0.153370, 0.817644, -0.554920,
		32.032471, 34.450832, 21.259491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452932, 33.762524, 21.057627>,  <31.925110, 33.878483, 21.647934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452932, 33.762524, 21.057627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.743664, 34.019611, 20.960773>,  <31.918102, 34.173866, 20.902662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.743664, 34.019611, 20.960773>,  <31.452932, 33.762524, 21.057627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743664, 34.019611, 20.960773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179304, -0.517880, -0.836451,
		-0.663002, 0.564541, -0.491653,
		0.726828, 0.642724, -0.242131,
		31.961712, 34.212429, 20.888134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220898, 33.982529, 20.472187>,  <31.452932, 33.762524, 21.057627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220898, 33.982529, 20.472187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.607811, 34.083363, 20.460783>,  <31.839960, 34.143864, 20.453939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.607811, 34.083363, 20.460783>,  <31.220898, 33.982529, 20.472187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607811, 34.083363, 20.460783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091227, -0.450493, -0.888107,
		-0.236723, 0.856451, -0.458752,
		0.967285, 0.252086, -0.028511,
		31.897997, 34.158989, 20.452230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239042, 34.235039, 19.927160>,  <31.220898, 33.982529, 20.472187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239042, 34.235039, 19.927160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.625284, 34.156647, 19.995510>,  <31.857029, 34.109612, 20.036520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.625284, 34.156647, 19.995510>,  <31.239042, 34.235039, 19.927160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625284, 34.156647, 19.995510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084760, -0.384026, -0.919424,
		0.245808, 0.902284, -0.354206,
		0.965606, -0.195979, 0.170875,
		31.914967, 34.097855, 20.046772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566763, 34.520702, 19.477335>,  <31.239042, 34.235039, 19.927160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566763, 34.520702, 19.477335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.827414, 34.242096, 19.597502>,  <31.983803, 34.074932, 19.669601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.827414, 34.242096, 19.597502>,  <31.566763, 34.520702, 19.477335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827414, 34.242096, 19.597502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130339, -0.287341, -0.948919,
		0.747259, 0.657496, -0.096455,
		0.651626, -0.696516, 0.300415,
		32.022900, 34.033142, 19.687626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225739, 34.668171, 19.214207>,  <31.566763, 34.520702, 19.477335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225739, 34.668171, 19.214207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.238331, 34.283318, 19.322504>,  <32.245884, 34.052406, 19.387484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.238331, 34.283318, 19.322504>,  <32.225739, 34.668171, 19.214207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238331, 34.283318, 19.322504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223431, -0.257251, -0.940160,
		0.974211, 0.090088, 0.206874,
		0.031478, -0.962136, 0.270746,
		32.247776, 33.994678, 19.403728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.995522, 34.246502, 18.881557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720070, 33.973904, 18.980635>,  <32.554798, 33.810345, 19.040081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720070, 33.973904, 18.980635>,  <32.995522, 34.246502, 18.881557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720070, 33.973904, 18.980635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260048, -0.550981, -0.792966,
		0.676876, -0.481649, 0.556644,
		-0.688631, -0.681494, 0.247695,
		32.513481, 33.769455, 19.054943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294727, 33.560261, 18.639894>,  <32.995522, 34.246502, 18.881557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294727, 33.560261, 18.639894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.905495, 33.487877, 18.696985>,  <32.671955, 33.444447, 18.731239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.905495, 33.487877, 18.696985>,  <33.294727, 33.560261, 18.639894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905495, 33.487877, 18.696985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024165, -0.695984, -0.717650,
		0.229200, -0.694882, 0.681621,
		-0.973079, -0.180956, 0.142728,
		32.613571, 33.433590, 18.739803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184364, 32.824879, 18.702686>,  <33.294727, 33.560261, 18.639894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184364, 32.824879, 18.702686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836052, 32.970165, 18.570129>,  <32.627064, 33.057339, 18.490595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836052, 32.970165, 18.570129>,  <33.184364, 32.824879, 18.702686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836052, 32.970165, 18.570129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145648, -0.834305, -0.531717,
		-0.469608, -0.414741, 0.779396,
		-0.870778, 0.363216, -0.331390,
		32.574818, 33.079128, 18.470713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694981, 32.219952, 18.675398>,  <33.184364, 32.824879, 18.702686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694981, 32.219952, 18.675398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524612, 32.505833, 18.453484>,  <32.422394, 32.677361, 18.320335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524612, 32.505833, 18.453484>,  <32.694981, 32.219952, 18.675398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524612, 32.505833, 18.453484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328167, -0.693462, -0.641417,
		-0.843149, -0.091128, 0.529901,
		-0.425917, 0.714707, -0.554787,
		32.396835, 32.720245, 18.287048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017658, 31.969938, 18.433928>,  <32.694981, 32.219952, 18.675398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017658, 31.969938, 18.433928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104332, 32.262466, 18.175247>,  <32.156338, 32.437984, 18.020039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104332, 32.262466, 18.175247>,  <32.017658, 31.969938, 18.433928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104332, 32.262466, 18.175247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419530, -0.528394, -0.738102,
		-0.881500, 0.431245, 0.192316,
		0.216685, 0.731319, -0.646700,
		32.169338, 32.481861, 17.981237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459072, 32.041187, 17.998610>,  <32.017658, 31.969938, 18.433928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459072, 32.041187, 17.998610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761780, 32.208050, 17.797300>,  <31.943403, 32.308167, 17.676516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761780, 32.208050, 17.797300>,  <31.459072, 32.041187, 17.998610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761780, 32.208050, 17.797300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314743, -0.442251, -0.839852,
		-0.572922, 0.793974, -0.203385,
		0.756768, 0.417156, -0.503273,
		31.988810, 32.333195, 17.646318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153042, 32.166271, 17.287317>,  <31.459072, 32.041187, 17.998610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153042, 32.166271, 17.287317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547396, 32.213917, 17.240261>,  <31.784008, 32.242504, 17.212027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547396, 32.213917, 17.240261>,  <31.153042, 32.166271, 17.287317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547396, 32.213917, 17.240261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063068, -0.386679, -0.920055,
		-0.155084, 0.914489, -0.373709,
		0.985886, 0.119117, -0.117643,
		31.843161, 32.249653, 17.204967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169506, 32.587124, 16.662710>,  <31.153042, 32.166271, 17.287317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169506, 32.587124, 16.662710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.509911, 32.385960, 16.723190>,  <31.714153, 32.265263, 16.759478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.509911, 32.385960, 16.723190>,  <31.169506, 32.587124, 16.662710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509911, 32.385960, 16.723190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007614, -0.276071, -0.961107,
		0.525089, 0.819066, -0.231111,
		0.851013, -0.502907, 0.151199,
		31.765215, 32.235088, 16.768551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432198, 32.785812, 16.077658>,  <31.169506, 32.587124, 16.662710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432198, 32.785812, 16.077658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636587, 32.463085, 16.196280>,  <31.759220, 32.269447, 16.267452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636587, 32.463085, 16.196280>,  <31.432198, 32.785812, 16.077658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636587, 32.463085, 16.196280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081793, -0.389065, -0.917572,
		0.855696, 0.444599, -0.264794,
		0.510974, -0.806821, 0.296557,
		31.789879, 32.221039, 16.285246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013653, 32.511963, 15.606314>,  <31.432198, 32.785812, 16.077658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013653, 32.511963, 15.606314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796581, 32.261616, 15.830379>,  <31.666338, 32.111408, 15.964817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796581, 32.261616, 15.830379>,  <32.013653, 32.511963, 15.606314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796581, 32.261616, 15.830379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400162, -0.393706, -0.827566,
		0.738489, -0.673261, -0.036793,
		-0.542682, -0.625872, 0.560161,
		31.633776, 32.073853, 15.998426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037220, 31.857958, 15.243487>,  <32.013653, 32.511963, 15.606314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037220, 31.857958, 15.243487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709055, 31.831047, 15.470605>,  <31.512156, 31.814901, 15.606875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709055, 31.831047, 15.470605>,  <32.037220, 31.857958, 15.243487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709055, 31.831047, 15.470605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461711, -0.507791, -0.727304,
		0.337251, -0.858850, 0.385537,
		-0.820417, -0.067277, 0.567793,
		31.462931, 31.810863, 15.640943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846087, 31.173176, 15.270477>,  <32.037220, 31.857958, 15.243487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846087, 31.173176, 15.270477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524288, 31.404179, 15.326008>,  <31.331209, 31.542780, 15.359326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524288, 31.404179, 15.326008>,  <31.846087, 31.173176, 15.270477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524288, 31.404179, 15.326008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515070, -0.561923, -0.647260,
		-0.295787, -0.592224, 0.749521,
		-0.804496, 0.577506, 0.138827,
		31.282940, 31.577431, 15.367656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392300, 30.787632, 14.958178>,  <31.846087, 31.173176, 15.270477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392300, 30.787632, 14.958178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167486, 31.108490, 15.038858>,  <31.032598, 31.301004, 15.087267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167486, 31.108490, 15.038858>,  <31.392300, 30.787632, 14.958178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167486, 31.108490, 15.038858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635212, -0.262419, -0.726390,
		-0.529738, -0.536380, 0.657019,
		-0.562035, 0.802143, 0.201702,
		30.998877, 31.349133, 15.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738785, 30.501354, 15.216358>,  <31.392300, 30.787632, 14.958178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738785, 30.501354, 15.216358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695656, 30.868809, 15.064317>,  <30.669779, 31.089281, 14.973091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695656, 30.868809, 15.064317>,  <30.738785, 30.501354, 15.216358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695656, 30.868809, 15.064317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836280, -0.290554, -0.464989,
		-0.537597, 0.267738, 0.799566,
		-0.107822, 0.918638, -0.380105,
		30.663309, 31.144400, 14.950285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045494, 30.640095, 15.381036>,  <30.738785, 30.501354, 15.216358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045494, 30.640095, 15.381036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.156757, 30.908400, 15.106021>,  <30.223516, 31.069382, 14.941012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.156757, 30.908400, 15.106021>,  <30.045494, 30.640095, 15.381036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156757, 30.908400, 15.106021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898946, -0.070394, -0.432367,
		-0.338413, 0.738326, 0.583396,
		0.278160, 0.670760, -0.687537,
		30.240206, 31.109627, 14.899759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541758, 31.170038, 15.351247>,  <30.045494, 30.640095, 15.381036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541758, 31.170038, 15.351247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.723490, 31.200792, 14.996243>,  <29.832529, 31.219246, 14.783241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.723490, 31.200792, 14.996243>,  <29.541758, 31.170038, 15.351247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723490, 31.200792, 14.996243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886920, -0.054228, -0.458729,
		-0.083398, 0.995564, 0.043555,
		0.454333, 0.076887, -0.887508,
		29.859789, 31.223858, 14.729991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056572, 31.414843, 14.917546>,  <29.541758, 31.170038, 15.351247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056572, 31.414843, 14.917546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305237, 31.296831, 14.627307>,  <29.454435, 31.226025, 14.453163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305237, 31.296831, 14.627307>,  <29.056572, 31.414843, 14.917546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305237, 31.296831, 14.627307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779405, -0.140921, -0.610466,
		0.077852, 0.945040, -0.317551,
		0.621664, -0.295027, -0.725598,
		29.491735, 31.208323, 14.409628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726713, 31.624020, 14.385652>,  <29.056572, 31.414843, 14.917546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726713, 31.624020, 14.385652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989719, 31.387005, 14.199503>,  <29.147524, 31.244795, 14.087813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989719, 31.387005, 14.199503>,  <28.726713, 31.624020, 14.385652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989719, 31.387005, 14.199503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614016, -0.063454, -0.786739,
		0.436644, 0.803039, -0.405550,
		0.657516, -0.592539, -0.465372,
		29.186974, 31.209244, 14.059892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806570, 31.881605, 13.516806>,  <28.726713, 31.624020, 14.385652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806570, 31.881605, 13.516806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.922068, 31.500124, 13.550456>,  <28.991365, 31.271235, 13.570646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.922068, 31.500124, 13.550456>,  <28.806570, 31.881605, 13.516806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922068, 31.500124, 13.550456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571768, -0.242249, -0.783834,
		0.767925, 0.178225, -0.615245,
		0.288742, -0.953704, 0.084126,
		29.008690, 31.214012, 13.575694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967163, 31.582382, 12.771460>,  <28.806570, 31.881605, 13.516806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967163, 31.582382, 12.771460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.907969, 31.261835, 13.003290>,  <28.872452, 31.069506, 13.142388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.907969, 31.261835, 13.003290>,  <28.967163, 31.582382, 12.771460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907969, 31.261835, 13.003290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554688, -0.417924, -0.719486,
		0.818792, -0.427958, -0.382663,
		-0.147986, -0.801369, 0.579576,
		28.863573, 31.021425, 13.177163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017372, 30.998037, 12.331964>,  <28.967163, 31.582382, 12.771460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017372, 30.998037, 12.331964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796541, 30.870638, 12.640190>,  <28.664043, 30.794199, 12.825126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796541, 30.870638, 12.640190>,  <29.017372, 30.998037, 12.331964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796541, 30.870638, 12.640190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624099, -0.454993, -0.635202,
		0.552913, -0.831589, 0.052415,
		-0.552076, -0.318499, 0.770565,
		28.630919, 30.775087, 12.871360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889540, 30.291607, 12.128348>,  <29.017372, 30.998037, 12.331964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889540, 30.291607, 12.128348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.620459, 30.364899, 12.415095>,  <28.459009, 30.408875, 12.587143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.620459, 30.364899, 12.415095>,  <28.889540, 30.291607, 12.128348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620459, 30.364899, 12.415095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677225, -0.542753, -0.496776,
		0.298058, -0.819662, 0.489199,
		-0.672703, 0.183230, 0.716867,
		28.418648, 30.419868, 12.630156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625120, 29.680557, 12.224889>,  <28.889540, 30.291607, 12.128348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625120, 29.680557, 12.224889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.361063, 29.958809, 12.338249>,  <28.202629, 30.125759, 12.406265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.361063, 29.958809, 12.338249>,  <28.625120, 29.680557, 12.224889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361063, 29.958809, 12.338249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678475, -0.390314, -0.622356,
		-0.322313, -0.603123, 0.729628,
		-0.660141, 0.695627, 0.283401,
		28.163021, 30.167498, 12.423269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467344, 28.958105, 12.499758>,  <28.625120, 29.680557, 12.224889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467344, 28.958105, 12.499758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503632, 28.569696, 12.588202>,  <28.525404, 28.336651, 12.641270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503632, 28.569696, 12.588202>,  <28.467344, 28.958105, 12.499758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503632, 28.569696, 12.588202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732085, 0.215545, 0.646213,
		-0.675145, 0.103250, 0.730423,
		0.090718, -0.971020, 0.221112,
		28.530848, 28.278391, 12.654536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487272, 28.891552, 13.186903>,  <28.467344, 28.958105, 12.499758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487272, 28.891552, 13.186903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686705, 28.569403, 13.058656>,  <28.806364, 28.376114, 12.981708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686705, 28.569403, 13.058656>,  <28.487272, 28.891552, 13.186903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686705, 28.569403, 13.058656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728726, 0.189111, 0.658176,
		-0.469443, -0.561796, 0.681182,
		0.498580, -0.805371, -0.320618,
		28.836279, 28.327791, 12.962470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830982, 28.662237, 13.824452>,  <28.487272, 28.891552, 13.186903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830982, 28.662237, 13.824452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.017841, 28.474239, 13.524885>,  <29.129957, 28.361441, 13.345145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.017841, 28.474239, 13.524885>,  <28.830982, 28.662237, 13.824452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017841, 28.474239, 13.524885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866744, 0.076047, 0.492922,
		-0.174717, -0.879388, 0.442890,
		0.467150, -0.469994, -0.748917,
		29.157986, 28.333241, 13.300210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208580, 28.031693, 14.031739>,  <28.830982, 28.662237, 13.824452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208580, 28.031693, 14.031739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393293, 28.180662, 13.709732>,  <29.504122, 28.270044, 13.516527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393293, 28.180662, 13.709732>,  <29.208580, 28.031693, 14.031739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393293, 28.180662, 13.709732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875888, -0.048303, 0.480090,
		0.139913, -0.926805, -0.348508,
		0.461784, 0.372425, -0.805019,
		29.531828, 28.292389, 13.468226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801430, 27.793282, 14.102683>,  <29.208580, 28.031693, 14.031739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801430, 27.793282, 14.102683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.884472, 28.082888, 13.839561>,  <29.934298, 28.256651, 13.681688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.884472, 28.082888, 13.839561>,  <29.801430, 27.793282, 14.102683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884472, 28.082888, 13.839561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900953, 0.120412, 0.416875,
		0.381031, -0.679194, -0.627304,
		0.207604, 0.724014, -0.657803,
		29.946753, 28.300091, 13.642220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434017, 27.559101, 13.820349>,  <29.801430, 27.793282, 14.102683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434017, 27.559101, 13.820349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.396494, 27.950039, 13.744456>,  <30.373980, 28.184601, 13.698920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.396494, 27.950039, 13.744456>,  <30.434017, 27.559101, 13.820349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396494, 27.950039, 13.744456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927500, 0.155058, 0.340150,
		0.361863, -0.144067, -0.921032,
		-0.093809, 0.977344, -0.189732,
		30.368351, 28.243242, 13.687537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064198, 27.751488, 13.564187>,  <30.434017, 27.559101, 13.820349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064198, 27.751488, 13.564187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907686, 28.088387, 13.712521>,  <30.813780, 28.290525, 13.801520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907686, 28.088387, 13.712521>,  <31.064198, 27.751488, 13.564187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907686, 28.088387, 13.712521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862757, 0.195502, 0.466294,
		0.320237, 0.502390, -0.803152,
		-0.391279, 0.842249, 0.370833,
		30.790302, 28.341061, 13.823771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595749, 28.293196, 13.545786>,  <31.064198, 27.751488, 13.564187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595749, 28.293196, 13.545786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333050, 28.442095, 13.808118>,  <31.175430, 28.531435, 13.965517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333050, 28.442095, 13.808118>,  <31.595749, 28.293196, 13.545786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333050, 28.442095, 13.808118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752376, 0.382388, 0.536386,
		-0.051113, 0.845701, -0.531203,
		-0.656748, 0.372248, 0.655831,
		31.136024, 28.553770, 14.004867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700844, 29.044867, 13.535137>,  <31.595749, 28.293196, 13.545786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700844, 29.044867, 13.535137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500616, 28.946615, 13.867185>,  <31.380480, 28.887665, 14.066413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500616, 28.946615, 13.867185>,  <31.700844, 29.044867, 13.535137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500616, 28.946615, 13.867185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626022, 0.559606, 0.543081,
		-0.597937, 0.791522, -0.126351,
		-0.500567, -0.245629, 0.830120,
		31.350447, 28.872927, 14.116220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713764, 29.647408, 13.919194>,  <31.700844, 29.044867, 13.535137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713764, 29.647408, 13.919194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.633471, 29.354313, 14.179288>,  <31.585295, 29.178455, 14.335344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.633471, 29.354313, 14.179288>,  <31.713764, 29.647408, 13.919194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633471, 29.354313, 14.179288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583975, 0.443421, 0.679964,
		-0.786561, 0.516213, 0.338889,
		-0.200736, -0.732736, 0.650233,
		31.573250, 29.134493, 14.374358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673534, 30.036144, 14.545740>,  <31.713764, 29.647408, 13.919194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673534, 30.036144, 14.545740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711132, 29.658716, 14.672760>,  <31.733690, 29.432259, 14.748972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711132, 29.658716, 14.672760>,  <31.673534, 30.036144, 14.545740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711132, 29.658716, 14.672760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562847, 0.313459, 0.764818,
		-0.821199, 0.106846, 0.560549,
		0.093992, -0.943572, 0.317551,
		31.739330, 29.375645, 14.768025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482117, 30.029016, 15.262391>,  <31.673534, 30.036144, 14.545740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482117, 30.029016, 15.262391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.693577, 29.694464, 15.204427>,  <31.820452, 29.493732, 15.169648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.693577, 29.694464, 15.204427>,  <31.482117, 30.029016, 15.262391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693577, 29.694464, 15.204427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664329, 0.301395, 0.683980,
		-0.528393, -0.457852, 0.714963,
		0.528648, -0.836381, -0.144910,
		31.852171, 29.443550, 15.160954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666103, 29.859125, 15.993423>,  <31.482117, 30.029016, 15.262391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666103, 29.859125, 15.993423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.925419, 29.662617, 15.760743>,  <32.081009, 29.544712, 15.621135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.925419, 29.662617, 15.760743>,  <31.666103, 29.859125, 15.993423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925419, 29.662617, 15.760743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755385, 0.319180, 0.572292,
		-0.095484, -0.810417, 0.578020,
		0.648287, -0.491272, -0.581701,
		32.119904, 29.515236, 15.586233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078064, 29.528954, 16.423981>,  <31.666103, 29.859125, 15.993423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078064, 29.528954, 16.423981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284210, 29.531164, 16.081198>,  <32.407898, 29.532490, 15.875528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284210, 29.531164, 16.081198>,  <32.078064, 29.528954, 16.423981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284210, 29.531164, 16.081198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780600, 0.409634, 0.472084,
		0.353646, -0.912233, 0.206796,
		0.515361, 0.005525, -0.856955,
		32.438820, 29.532822, 15.824111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790112, 29.220737, 16.558296>,  <32.078064, 29.528954, 16.423981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790112, 29.220737, 16.558296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784687, 29.466946, 16.243095>,  <32.781433, 29.614672, 16.053974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784687, 29.466946, 16.243095>,  <32.790112, 29.220737, 16.558296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784687, 29.466946, 16.243095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696527, 0.571234, 0.434215,
		0.717403, -0.542977, -0.436473,
		-0.013559, 0.615522, -0.788003,
		32.780621, 29.651602, 16.006695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442780, 29.302801, 16.453451>,  <32.790112, 29.220737, 16.558296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442780, 29.302801, 16.453451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290421, 29.610020, 16.247528>,  <33.199005, 29.794350, 16.123974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290421, 29.610020, 16.247528>,  <33.442780, 29.302801, 16.453451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290421, 29.610020, 16.247528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700984, 0.602943, 0.380894,
		0.602943, -0.215790, -0.768045,
		-0.380894, 0.768045, -0.514806,
		33.176151, 29.840433, 16.093086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016506, 29.745871, 16.130394>,  <33.442780, 29.302801, 16.453451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016506, 29.745871, 16.130394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691326, 29.977219, 16.157516>,  <33.496220, 30.116028, 16.173790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691326, 29.977219, 16.157516>,  <34.016506, 29.745871, 16.130394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691326, 29.977219, 16.157516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575373, 0.779820, 0.246630,
		0.089767, 0.239512, -0.966735,
		-0.812950, 0.578372, 0.067807,
		33.447441, 30.150730, 16.177858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235451, 30.454506, 15.835915>,  <34.016506, 29.745871, 16.130394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235451, 30.454506, 15.835915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908157, 30.539461, 16.049599>,  <33.711781, 30.590435, 16.177809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908157, 30.539461, 16.049599>,  <34.235451, 30.454506, 15.835915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908157, 30.539461, 16.049599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528888, 0.642317, 0.554713,
		-0.225317, 0.736424, -0.637897,
		-0.818236, 0.212390, 0.534210,
		33.662685, 30.603178, 16.209862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186913, 31.117870, 15.815757>,  <34.235451, 30.454506, 15.835915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186913, 31.117870, 15.815757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988979, 31.016598, 16.148273>,  <33.870220, 30.955835, 16.347784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988979, 31.016598, 16.148273>,  <34.186913, 31.117870, 15.815757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988979, 31.016598, 16.148273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540146, 0.659755, 0.522461,
		-0.680724, 0.707547, -0.189712,
		-0.494829, -0.253180, 0.831291,
		33.840530, 30.940643, 16.397661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794659, 31.784410, 16.012775>,  <34.186913, 31.117870, 15.815757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794659, 31.784410, 16.012775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806637, 31.550570, 16.337082>,  <33.813824, 31.410265, 16.531666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806637, 31.550570, 16.337082>,  <33.794659, 31.784410, 16.012775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806637, 31.550570, 16.337082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444669, 0.734236, 0.512999,
		-0.895195, 0.345162, 0.281940,
		0.029943, -0.584604, 0.810766,
		33.815620, 31.375189, 16.580311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822277, 32.248825, 16.557941>,  <33.794659, 31.784410, 16.012775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822277, 32.248825, 16.557941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915131, 31.921040, 16.767548>,  <33.970840, 31.724367, 16.893311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915131, 31.921040, 16.767548>,  <33.822277, 32.248825, 16.557941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915131, 31.921040, 16.767548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401429, 0.571422, 0.715774,
		-0.885986, 0.044202, 0.461601,
		0.232130, -0.819466, 0.524015,
		33.984768, 31.675200, 16.924751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.399374, 35.557220, 21.179134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.656080, 35.276211, 21.302156>,  <31.810104, 35.107605, 21.375969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.656080, 35.276211, 21.302156>,  <31.399374, 35.557220, 21.179134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656080, 35.276211, 21.302156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082962, 0.462281, 0.882844,
		-0.762399, -0.541064, 0.354960,
		0.641767, -0.702528, 0.307555,
		31.848610, 35.065453, 21.394423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208408, 35.275486, 21.816191>,  <31.399374, 35.557220, 21.179134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208408, 35.275486, 21.816191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.604128, 35.220303, 21.797178>,  <31.841558, 35.187191, 21.785770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.604128, 35.220303, 21.797178>,  <31.208408, 35.275486, 21.816191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604128, 35.220303, 21.797178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110473, 0.495333, 0.861650,
		-0.095328, -0.857678, 0.505273,
		0.989297, -0.137959, -0.047531,
		31.900917, 35.178917, 21.782919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412033, 35.209328, 22.488234>,  <31.208408, 35.275486, 21.816191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412033, 35.209328, 22.488234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.774157, 35.246773, 22.322510>,  <31.991430, 35.269241, 22.223076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.774157, 35.246773, 22.322510>,  <31.412033, 35.209328, 22.488234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774157, 35.246773, 22.322510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353026, 0.376572, 0.856484,
		0.236196, -0.921645, 0.307867,
		0.905309, 0.093613, -0.414310,
		32.045750, 35.274857, 22.198217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884445, 34.941433, 23.018877>,  <31.412033, 35.209328, 22.488234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884445, 34.941433, 23.018877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082851, 35.192917, 22.779314>,  <32.201897, 35.343807, 22.635576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082851, 35.192917, 22.779314>,  <31.884445, 34.941433, 23.018877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082851, 35.192917, 22.779314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489576, 0.367152, 0.790895,
		0.717134, -0.685508, -0.125688,
		0.496018, 0.628712, -0.598906,
		32.231655, 35.381531, 22.599642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531891, 34.910469, 23.237072>,  <31.884445, 34.941433, 23.018877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531891, 34.910469, 23.237072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.576416, 35.237644, 23.011295>,  <32.603130, 35.433949, 22.875830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.576416, 35.237644, 23.011295>,  <32.531891, 34.910469, 23.237072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576416, 35.237644, 23.011295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642086, 0.374315, 0.669040,
		0.758510, -0.436891, -0.483518,
		0.111309, 0.817933, -0.564443,
		32.609810, 35.483025, 22.841963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263836, 34.961929, 23.290949>,  <32.531891, 34.910469, 23.237072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263836, 34.961929, 23.290949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075424, 35.308968, 23.227177>,  <32.962379, 35.517189, 23.188913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075424, 35.308968, 23.227177>,  <33.263836, 34.961929, 23.290949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075424, 35.308968, 23.227177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645068, 0.462055, 0.608599,
		0.601682, 0.183821, -0.777296,
		-0.471027, 0.867592, -0.159433,
		32.934116, 35.569244, 23.179346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788879, 35.426044, 23.177736>,  <33.263836, 34.961929, 23.290949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788879, 35.426044, 23.177736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.484032, 35.660046, 23.288698>,  <33.301125, 35.800446, 23.355274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.484032, 35.660046, 23.288698>,  <33.788879, 35.426044, 23.177736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484032, 35.660046, 23.288698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590331, 0.451930, 0.668782,
		0.265870, 0.673450, -0.689767,
		-0.762117, 0.585000, 0.277404,
		33.255398, 35.835545, 23.371920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138706, 36.080109, 23.280792>,  <33.788879, 35.426044, 23.177736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138706, 36.080109, 23.280792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.780163, 36.142021, 23.446968>,  <33.565037, 36.179169, 23.546673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.780163, 36.142021, 23.446968>,  <34.138706, 36.080109, 23.280792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780163, 36.142021, 23.446968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438919, 0.441782, 0.782419,
		-0.062429, 0.883669, -0.463931,
		-0.896355, 0.154782, 0.415439,
		33.511257, 36.188457, 23.571600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126858, 36.727394, 23.497082>,  <34.138706, 36.080109, 23.280792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126858, 36.727394, 23.497082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.849377, 36.556274, 23.728863>,  <33.682888, 36.453602, 23.867931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.849377, 36.556274, 23.728863>,  <34.126858, 36.727394, 23.497082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849377, 36.556274, 23.728863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376738, 0.470167, 0.798130,
		-0.613877, 0.771967, -0.164989,
		-0.693702, -0.427796, 0.579454,
		33.641266, 36.427937, 23.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955677, 37.227802, 24.065119>,  <34.126858, 36.727394, 23.497082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955677, 37.227802, 24.065119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.814632, 36.883614, 24.212221>,  <33.730003, 36.677101, 24.300484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.814632, 36.883614, 24.212221>,  <33.955677, 37.227802, 24.065119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814632, 36.883614, 24.212221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305661, 0.265533, 0.914365,
		-0.884440, 0.434827, 0.169383,
		-0.352614, -0.860475, 0.367758,
		33.708847, 36.625469, 24.322548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526775, 37.373386, 24.685051>,  <33.955677, 37.227802, 24.065119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526775, 37.373386, 24.685051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.666275, 36.999714, 24.715178>,  <33.749973, 36.775509, 24.733253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.666275, 36.999714, 24.715178>,  <33.526775, 37.373386, 24.685051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666275, 36.999714, 24.715178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354900, 0.206010, 0.911924,
		-0.867422, -0.291303, 0.403388,
		0.348749, -0.934185, 0.075314,
		33.770901, 36.719460, 24.737772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399834, 37.316353, 25.424742>,  <33.526775, 37.373386, 24.685051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399834, 37.316353, 25.424742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.656136, 37.028904, 25.316656>,  <33.809917, 36.856434, 25.251804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.656136, 37.028904, 25.316656>,  <33.399834, 37.316353, 25.424742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656136, 37.028904, 25.316656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482321, 0.102946, 0.869924,
		-0.597332, -0.687736, 0.412571,
		0.640751, -0.718625, -0.270216,
		33.848362, 36.813316, 25.235592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657696, 37.127079, 26.213087>,  <33.399834, 37.316353, 25.424742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657696, 37.127079, 26.213087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.659832, 36.823799, 26.473886>,  <33.661114, 36.641830, 26.630365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.659832, 36.823799, 26.473886>,  <33.657696, 37.127079, 26.213087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659832, 36.823799, 26.473886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625944, -0.511009, -0.589121,
		0.779850, -0.404969, -0.477320,
		0.005339, -0.758201, 0.651999,
		33.661434, 36.596340, 26.669487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729450, 36.535076, 25.835732>,  <33.657696, 37.127079, 26.213087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729450, 36.535076, 25.835732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582874, 36.357891, 26.163025>,  <33.494930, 36.251579, 26.359402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582874, 36.357891, 26.163025>,  <33.729450, 36.535076, 25.835732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582874, 36.357891, 26.163025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384382, -0.728784, -0.566678,
		0.847334, -0.522167, 0.096787,
		-0.366437, -0.442962, 0.818235,
		33.472942, 36.225002, 26.408495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689121, 35.811947, 25.649387>,  <33.729450, 36.535076, 25.835732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689121, 35.811947, 25.649387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.474461, 35.838863, 25.985834>,  <33.345665, 35.855011, 26.187702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.474461, 35.838863, 25.985834>,  <33.689121, 35.811947, 25.649387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474461, 35.838863, 25.985834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636012, -0.687334, -0.350801,
		0.554524, -0.723218, 0.411653,
		-0.536649, 0.067288, 0.841119,
		33.313465, 35.859051, 26.238171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631927, 35.160645, 25.967539>,  <33.689121, 35.811947, 25.649387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631927, 35.160645, 25.967539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.317783, 35.371674, 26.097076>,  <33.129295, 35.498291, 26.174799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.317783, 35.371674, 26.097076>,  <33.631927, 35.160645, 25.967539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317783, 35.371674, 26.097076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618054, -0.697689, -0.362270,
		0.034820, -0.484667, 0.874006,
		-0.785364, 0.527569, 0.323844,
		33.082172, 35.529945, 26.194229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300415, 34.805836, 26.573545>,  <33.631927, 35.160645, 25.967539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300415, 34.805836, 26.573545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.037495, 35.030914, 26.373016>,  <32.879742, 35.165962, 26.252699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.037495, 35.030914, 26.373016>,  <33.300415, 34.805836, 26.573545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037495, 35.030914, 26.373016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565440, -0.808002, -0.165562,
		-0.498233, 0.174646, 0.849272,
		-0.657298, 0.562700, -0.501325,
		32.840305, 35.199726, 26.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711159, 34.523617, 26.715424>,  <33.300415, 34.805836, 26.573545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711159, 34.523617, 26.715424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.610897, 34.735664, 26.391411>,  <32.550739, 34.862892, 26.197004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.610897, 34.735664, 26.391411>,  <32.711159, 34.523617, 26.715424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610897, 34.735664, 26.391411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613235, -0.734398, -0.290863,
		-0.749078, 0.423837, 0.509161,
		-0.250648, 0.530115, -0.810034,
		32.535702, 34.894699, 26.148401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188103, 34.174786, 26.647549>,  <32.711159, 34.523617, 26.715424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188103, 34.174786, 26.647549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.244274, 34.381023, 26.309450>,  <32.277977, 34.504768, 26.106592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.244274, 34.381023, 26.309450>,  <32.188103, 34.174786, 26.647549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244274, 34.381023, 26.309450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638892, -0.604990, -0.475189,
		-0.756370, 0.606752, 0.244451,
		0.140431, 0.515597, -0.845245,
		32.286404, 34.535702, 26.055876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514091, 34.177776, 26.305992>,  <32.188103, 34.174786, 26.647549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514091, 34.177776, 26.305992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.745018, 34.270233, 25.992744>,  <31.883574, 34.325706, 25.804796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.745018, 34.270233, 25.992744>,  <31.514091, 34.177776, 26.305992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745018, 34.270233, 25.992744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620475, -0.499258, -0.604775,
		-0.530770, 0.835053, -0.144809,
		0.577316, 0.231146, -0.783121,
		31.918213, 34.339577, 25.757809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056061, 34.285683, 25.726852>,  <31.514091, 34.177776, 26.305992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056061, 34.285683, 25.726852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.402651, 34.205933, 25.543779>,  <31.610605, 34.158085, 25.433935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.402651, 34.205933, 25.543779>,  <31.056061, 34.285683, 25.726852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402651, 34.205933, 25.543779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496991, -0.431037, -0.753132,
		-0.047123, 0.880033, -0.472569,
		0.866475, -0.199373, -0.457680,
		31.662594, 34.146122, 25.406475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004494, 34.469879, 24.984804>,  <31.056061, 34.285683, 25.726852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004494, 34.469879, 24.984804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.312635, 34.215435, 25.002287>,  <31.497520, 34.062767, 25.012777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.312635, 34.215435, 25.002287>,  <31.004494, 34.469879, 24.984804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312635, 34.215435, 25.002287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424203, -0.562488, -0.709689,
		0.476028, 0.528173, -0.703158,
		0.770356, -0.636114, 0.043707,
		31.543743, 34.024601, 25.015400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176876, 34.295319, 24.289806>,  <31.004494, 34.469879, 24.984804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176876, 34.295319, 24.289806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.347031, 33.997627, 24.495787>,  <31.449123, 33.819012, 24.619375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.347031, 33.997627, 24.495787>,  <31.176876, 34.295319, 24.289806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347031, 33.997627, 24.495787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360260, -0.661222, -0.658026,
		0.830217, 0.094398, -0.549389,
		0.425384, -0.744228, 0.514950,
		31.474646, 33.774361, 24.650272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371477, 33.882145, 23.730648>,  <31.176876, 34.295319, 24.289806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371477, 33.882145, 23.730648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.337875, 33.679173, 24.073685>,  <31.317715, 33.557388, 24.279507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.337875, 33.679173, 24.073685>,  <31.371477, 33.882145, 23.730648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337875, 33.679173, 24.073685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582876, -0.673015, -0.455310,
		0.808207, -0.538117, -0.239231,
		-0.084004, -0.507427, 0.857591,
		31.312674, 33.526943, 24.330961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410967, 33.313011, 23.484699>,  <31.371477, 33.882145, 23.730648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410967, 33.313011, 23.484699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.279238, 33.202396, 23.845825>,  <31.200201, 33.136028, 24.062500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.279238, 33.202396, 23.845825>,  <31.410967, 33.313011, 23.484699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279238, 33.202396, 23.845825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610611, -0.666938, -0.427021,
		0.720208, -0.691897, 0.050782,
		-0.329323, -0.276536, 0.902814,
		31.180441, 33.119434, 24.116669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572847, 32.637043, 23.571568>,  <31.410967, 33.313011, 23.484699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572847, 32.637043, 23.571568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.259100, 32.715034, 23.807110>,  <31.070852, 32.761829, 23.948435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.259100, 32.715034, 23.807110>,  <31.572847, 32.637043, 23.571568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259100, 32.715034, 23.807110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576254, -0.580375, -0.575410,
		0.229564, -0.790663, 0.567584,
		-0.784367, 0.194980, 0.588856,
		31.023790, 32.773529, 23.983767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261129, 31.957457, 23.738798>,  <31.572847, 32.637043, 23.571568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261129, 31.957457, 23.738798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.959606, 32.208138, 23.817812>,  <30.778692, 32.358547, 23.865221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.959606, 32.208138, 23.817812>,  <31.261129, 31.957457, 23.738798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959606, 32.208138, 23.817812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611050, -0.558009, -0.561466,
		-0.241645, -0.543941, 0.803577,
		-0.753808, 0.626701, 0.197535,
		30.733463, 32.396149, 23.877073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593405, 31.503311, 23.825575>,  <31.261129, 31.957457, 23.738798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593405, 31.503311, 23.825575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.487572, 31.882587, 23.755230>,  <30.424072, 32.110153, 23.713024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.487572, 31.882587, 23.755230>,  <30.593405, 31.503311, 23.825575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487572, 31.882587, 23.755230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620238, -0.306955, -0.721861,
		-0.738445, -0.081916, 0.669320,
		-0.264583, 0.948192, -0.175861,
		30.408197, 32.167046, 23.702471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213881, 30.991833, 24.219067>,  <30.593405, 31.503311, 23.825575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213881, 30.991833, 24.219067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.364693, 30.650536, 24.074940>,  <30.455179, 30.445757, 23.988464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.364693, 30.650536, 24.074940>,  <30.213881, 30.991833, 24.219067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364693, 30.650536, 24.074940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582968, -0.083684, 0.808174,
		-0.719720, -0.514760, 0.465861,
		0.377031, -0.853241, -0.360317,
		30.477802, 30.394564, 23.966845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389975, 30.613506, 24.761990>,  <30.213881, 30.991833, 24.219067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389975, 30.613506, 24.761990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.595732, 30.416037, 24.481508>,  <30.719187, 30.297556, 24.313219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.595732, 30.416037, 24.481508>,  <30.389975, 30.613506, 24.761990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595732, 30.416037, 24.481508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836570, 0.109096, 0.536888,
		-0.188549, -0.862777, 0.469111,
		0.514393, -0.493674, -0.701204,
		30.750050, 30.267935, 24.271147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652071, 30.017015, 24.998373>,  <30.389975, 30.613506, 24.761990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652071, 30.017015, 24.998373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.906401, 30.126158, 24.709576>,  <31.058998, 30.191643, 24.536297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.906401, 30.126158, 24.709576>,  <30.652071, 30.017015, 24.998373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906401, 30.126158, 24.709576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722349, 0.119187, 0.681180,
		0.271918, -0.954643, -0.121316,
		0.635825, 0.272858, -0.721994,
		31.097149, 30.208015, 24.492977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241295, 29.597775, 25.075554>,  <30.652071, 30.017015, 24.998373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241295, 29.597775, 25.075554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.379143, 29.908842, 24.865232>,  <31.461851, 30.095482, 24.739040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.379143, 29.908842, 24.865232>,  <31.241295, 29.597775, 25.075554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379143, 29.908842, 24.865232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791507, 0.060443, 0.608164,
		0.504730, -0.625764, -0.594699,
		0.344622, 0.777667, -0.525803,
		31.482529, 30.142143, 24.707491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938223, 29.438049, 24.927359>,  <31.241295, 29.597775, 25.075554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938223, 29.438049, 24.927359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.905436, 29.833847, 24.879725>,  <31.885763, 30.071325, 24.851145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.905436, 29.833847, 24.879725>,  <31.938223, 29.438049, 24.927359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905436, 29.833847, 24.879725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795625, 0.136928, 0.590112,
		0.600219, -0.046375, -0.798490,
		-0.081969, 0.989495, -0.119084,
		31.880844, 30.130695, 24.844000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718220, 29.673294, 24.801147>,  <31.938223, 29.438049, 24.927359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718220, 29.673294, 24.801147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.495243, 29.981077, 24.925852>,  <32.361458, 30.165747, 25.000675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.495243, 29.981077, 24.925852>,  <32.718220, 29.673294, 24.801147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495243, 29.981077, 24.925852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714536, 0.253448, 0.652075,
		0.422729, 0.586257, -0.691088,
		-0.557438, 0.769459, 0.311762,
		32.328011, 30.211914, 25.019381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094471, 30.166424, 24.906433>,  <32.718220, 29.673294, 24.801147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094471, 30.166424, 24.906433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.807571, 30.324352, 25.136103>,  <32.635433, 30.419109, 25.273905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.807571, 30.324352, 25.136103>,  <33.094471, 30.166424, 24.906433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807571, 30.324352, 25.136103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696793, 0.413605, 0.586012,
		-0.006111, 0.820394, -0.571766,
		-0.717246, 0.394822, 0.574173,
		32.592396, 30.442799, 25.308355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307907, 30.806002, 25.043207>,  <33.094471, 30.166424, 24.906433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307907, 30.806002, 25.043207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.049404, 30.754015, 25.343996>,  <32.894302, 30.722824, 25.524469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.049404, 30.754015, 25.343996>,  <33.307907, 30.806002, 25.043207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049404, 30.754015, 25.343996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644043, 0.435684, 0.628799,
		-0.409344, 0.890668, -0.197860,
		-0.646255, -0.129965, 0.751973,
		32.855526, 30.715025, 25.569588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466072, 31.351934, 25.365288>,  <33.307907, 30.806002, 25.043207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466072, 31.351934, 25.365288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245804, 31.157661, 25.636839>,  <33.113644, 31.041098, 25.799768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245804, 31.157661, 25.636839>,  <33.466072, 31.351934, 25.365288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245804, 31.157661, 25.636839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501372, 0.457791, 0.734202,
		-0.667373, 0.744674, -0.008585,
		-0.550672, -0.485683, 0.678876,
		33.080601, 31.011957, 25.840502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041492, 31.843874, 25.760910>,  <33.466072, 31.351934, 25.365288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041492, 31.843874, 25.760910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.045227, 31.512207, 25.984480>,  <33.047466, 31.313208, 26.118622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.045227, 31.512207, 25.984480>,  <33.041492, 31.843874, 25.760910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045227, 31.512207, 25.984480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592368, 0.454904, 0.664953,
		-0.805613, 0.324881, 0.495419,
		0.009337, -0.829165, 0.558926,
		33.048027, 31.263458, 26.152157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859241, 32.051983, 26.469145>,  <33.041492, 31.843874, 25.760910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859241, 32.051983, 26.469145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.038975, 31.698801, 26.523529>,  <33.146816, 31.486891, 26.556160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.038975, 31.698801, 26.523529>,  <32.859241, 32.051983, 26.469145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038975, 31.698801, 26.523529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525636, 0.384356, 0.758932,
		-0.722362, -0.269547, 0.636818,
		0.449333, -0.882958, 0.135960,
		33.173775, 31.433914, 26.564318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808395, 31.844702, 27.180077>,  <32.859241, 32.051983, 26.469145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808395, 31.844702, 27.180077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.133434, 31.699116, 26.997992>,  <33.328457, 31.611765, 26.888741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.133434, 31.699116, 26.997992>,  <32.808395, 31.844702, 27.180077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133434, 31.699116, 26.997992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566335, 0.308587, 0.764224,
		-0.137678, -0.878808, 0.456882,
		0.812594, -0.363965, -0.455215,
		33.377213, 31.589926, 26.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.890747, 29.118061, 21.380629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252476, 29.043062, 21.227242>,  <28.469513, 28.998062, 21.135210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252476, 29.043062, 21.227242>,  <27.890747, 29.118061, 21.380629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252476, 29.043062, 21.227242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402706, 0.076889, 0.912094,
		-0.141531, -0.979251, 0.145040,
		0.904321, -0.187498, -0.383468,
		28.523771, 28.986813, 21.112202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242727, 28.631634, 21.802843>,  <27.890747, 29.118061, 21.380629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242727, 28.631634, 21.802843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536650, 28.816727, 21.604473>,  <28.713003, 28.927782, 21.485451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536650, 28.816727, 21.604473>,  <28.242727, 28.631634, 21.802843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536650, 28.816727, 21.604473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454063, 0.207564, 0.866454,
		0.503872, -0.861857, -0.057590,
		0.734806, 0.462731, -0.495923,
		28.757092, 28.955545, 21.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758936, 28.614208, 22.330437>,  <28.242727, 28.631634, 21.802843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758936, 28.614208, 22.330437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870045, 28.895733, 22.068907>,  <28.936710, 29.064648, 21.911989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870045, 28.895733, 22.068907>,  <28.758936, 28.614208, 22.330437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870045, 28.895733, 22.068907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501961, 0.473969, 0.723457,
		0.819072, -0.529150, -0.221633,
		0.277770, 0.703814, -0.653827,
		28.953375, 29.106876, 21.872759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382257, 28.605692, 22.473518>,  <28.758936, 28.614208, 22.330437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382257, 28.605692, 22.473518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350721, 28.948286, 22.269472>,  <29.331800, 29.153843, 22.147045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350721, 28.948286, 22.269472>,  <29.382257, 28.605692, 22.473518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350721, 28.948286, 22.269472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633941, 0.437986, 0.637407,
		0.769353, -0.273130, -0.577491,
		-0.078838, 0.856486, -0.510114,
		29.327070, 29.205233, 22.116438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049849, 28.866367, 22.350191>,  <29.382257, 28.605692, 22.473518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049849, 28.866367, 22.350191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808651, 29.185116, 22.335239>,  <29.663933, 29.376364, 22.326269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808651, 29.185116, 22.335239>,  <30.049849, 28.866367, 22.350191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808651, 29.185116, 22.335239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557043, 0.454132, 0.695319,
		0.571054, 0.398451, -0.717729,
		-0.602994, 0.796870, -0.037379,
		29.627752, 29.424177, 22.324026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506933, 29.449282, 22.245735>,  <30.049849, 28.866367, 22.350191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506933, 29.449282, 22.245735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169844, 29.566673, 22.426260>,  <29.967590, 29.637108, 22.534575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169844, 29.566673, 22.426260>,  <30.506933, 29.449282, 22.245735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169844, 29.566673, 22.426260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538329, 0.465706, 0.702368,
		-0.004049, 0.834858, -0.550450,
		-0.842725, 0.293479, 0.451314,
		29.917027, 29.654716, 22.561653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698639, 30.042875, 22.412878>,  <30.506933, 29.449282, 22.245735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698639, 30.042875, 22.412878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362572, 29.993349, 22.624079>,  <30.160931, 29.963633, 22.750799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362572, 29.993349, 22.624079>,  <30.698639, 30.042875, 22.412878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362572, 29.993349, 22.624079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465567, 0.334667, 0.819296,
		-0.278147, 0.934167, -0.223532,
		-0.840168, -0.123816, 0.528004,
		30.110521, 29.956203, 22.782480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566463, 30.715506, 22.782787>,  <30.698639, 30.042875, 22.412878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566463, 30.715506, 22.782787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393295, 30.421515, 22.991549>,  <30.289394, 30.245119, 23.116806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393295, 30.421515, 22.991549>,  <30.566463, 30.715506, 22.782787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393295, 30.421515, 22.991549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475953, 0.305319, 0.824772,
		-0.765538, 0.605463, 0.217637,
		-0.432920, -0.734980, 0.521905,
		30.263420, 30.201021, 23.148121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223183, 31.014202, 23.464552>,  <30.566463, 30.715506, 22.782787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223183, 31.014202, 23.464552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290098, 30.624102, 23.522373>,  <30.330248, 30.390041, 23.557066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290098, 30.624102, 23.522373>,  <30.223183, 31.014202, 23.464552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290098, 30.624102, 23.522373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549323, 0.213954, 0.807755,
		-0.818693, -0.055721, 0.571521,
		0.167288, -0.975253, 0.144554,
		30.340284, 30.331526, 23.565739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838564, 31.604059, 23.854776>,  <30.223183, 31.014202, 23.464552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838564, 31.604059, 23.854776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971563, 31.911957, 23.636808>,  <30.051363, 32.096695, 23.506027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971563, 31.911957, 23.636808>,  <29.838564, 31.604059, 23.854776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971563, 31.911957, 23.636808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551969, -0.309668, -0.774233,
		-0.764705, 0.558211, 0.321911,
		0.332500, 0.769745, -0.544919,
		30.071314, 32.142879, 23.473333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270525, 31.771011, 23.515003>,  <29.838564, 31.604059, 23.854776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270525, 31.771011, 23.515003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553873, 31.959173, 23.304504>,  <29.723881, 32.072071, 23.178205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553873, 31.959173, 23.304504>,  <29.270525, 31.771011, 23.515003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553873, 31.959173, 23.304504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561862, -0.075480, -0.823780,
		-0.427231, 0.879217, 0.210834,
		0.708368, 0.470404, -0.526246,
		29.766384, 32.100296, 23.146631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063557, 32.377731, 23.186386>,  <29.270525, 31.771011, 23.515003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063557, 32.377731, 23.186386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361559, 32.283485, 22.936762>,  <29.540359, 32.226936, 22.786987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361559, 32.283485, 22.936762>,  <29.063557, 32.377731, 23.186386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361559, 32.283485, 22.936762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558601, 0.290984, -0.776719,
		0.364599, 0.927262, 0.085170,
		0.745005, -0.235615, -0.624062,
		29.585060, 32.212803, 22.749544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985855, 32.886204, 22.517042>,  <29.063557, 32.377731, 23.186386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985855, 32.886204, 22.517042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220179, 32.595177, 22.374229>,  <29.360773, 32.420559, 22.288542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220179, 32.595177, 22.374229>,  <28.985855, 32.886204, 22.517042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220179, 32.595177, 22.374229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293270, 0.220377, -0.930283,
		0.755525, 0.649677, -0.084274,
		0.585811, -0.727567, -0.357031,
		29.395922, 32.376907, 22.267120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267870, 33.103516, 21.900015>,  <28.985855, 32.886204, 22.517042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267870, 33.103516, 21.900015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356665, 32.715546, 21.860073>,  <29.409941, 32.482765, 21.836107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356665, 32.715546, 21.860073>,  <29.267870, 33.103516, 21.900015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356665, 32.715546, 21.860073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206915, 0.053219, -0.976910,
		0.952842, 0.237522, -0.188878,
		0.221985, -0.969923, -0.099856,
		29.423260, 32.424568, 21.830116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716427, 33.058064, 21.376282>,  <29.267870, 33.103516, 21.900015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716427, 33.058064, 21.376282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564058, 32.688805, 21.397060>,  <29.472637, 32.467251, 21.409527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564058, 32.688805, 21.397060>,  <29.716427, 33.058064, 21.376282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564058, 32.688805, 21.397060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353666, 0.093565, -0.930680,
		0.854295, -0.372885, -0.362127,
		-0.380920, -0.923148, 0.051945,
		29.449781, 32.411861, 21.412643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922577, 32.819920, 20.774479>,  <29.716427, 33.058064, 21.376282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922577, 32.819920, 20.774479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645988, 32.558300, 20.897177>,  <29.480036, 32.401329, 20.970797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645988, 32.558300, 20.897177>,  <29.922577, 32.819920, 20.774479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645988, 32.558300, 20.897177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336963, -0.083583, -0.937800,
		0.639004, -0.751823, -0.162594,
		-0.691469, -0.654046, 0.306746,
		29.438547, 32.362087, 20.989201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897861, 32.292187, 20.318895>,  <29.922577, 32.819920, 20.774479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897861, 32.292187, 20.318895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546129, 32.224911, 20.497103>,  <29.335089, 32.184544, 20.604027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546129, 32.224911, 20.497103>,  <29.897861, 32.292187, 20.318895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546129, 32.224911, 20.497103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394592, -0.266404, -0.879390,
		0.266596, -0.949073, 0.167890,
		-0.879331, -0.168194, 0.445519,
		29.282330, 32.174454, 20.630758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615791, 31.599739, 20.220062>,  <29.897861, 32.292187, 20.318895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615791, 31.599739, 20.220062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306835, 31.851641, 20.253107>,  <29.121462, 32.002781, 20.272934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306835, 31.851641, 20.253107>,  <29.615791, 31.599739, 20.220062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306835, 31.851641, 20.253107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378228, -0.351556, -0.856360,
		-0.510251, -0.692691, 0.509729,
		-0.772391, 0.629752, 0.082613,
		29.075117, 32.040565, 20.277891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090679, 31.227678, 19.950993>,  <29.615791, 31.599739, 20.220062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090679, 31.227678, 19.950993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930222, 31.592506, 19.984961>,  <28.833946, 31.811403, 20.005342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930222, 31.592506, 19.984961>,  <29.090679, 31.227678, 19.950993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930222, 31.592506, 19.984961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628471, -0.206592, -0.749896,
		-0.666413, -0.354188, 0.656083,
		-0.401146, 0.912069, 0.084921,
		28.809877, 31.866127, 20.010437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359093, 31.047958, 20.034996>,  <29.090679, 31.227678, 19.950993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359093, 31.047958, 20.034996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396263, 31.421560, 19.897013>,  <28.418566, 31.645721, 19.814222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396263, 31.421560, 19.897013>,  <28.359093, 31.047958, 20.034996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396263, 31.421560, 19.897013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641348, -0.208861, -0.738275,
		-0.761602, 0.289844, 0.579614,
		0.092926, 0.934006, -0.344960,
		28.424141, 31.701761, 19.793526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724754, 31.419031, 20.036736>,  <28.359093, 31.047958, 20.034996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724754, 31.419031, 20.036736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927717, 31.620146, 19.756809>,  <28.049496, 31.740814, 19.588854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927717, 31.620146, 19.756809>,  <27.724754, 31.419031, 20.036736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927717, 31.620146, 19.756809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756908, -0.128107, -0.640843,
		-0.411860, 0.854864, 0.315562,
		0.507407, 0.502789, -0.699815,
		28.079939, 31.770983, 19.546865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177057, 31.828497, 19.600483>,  <27.724754, 31.419031, 20.036736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177057, 31.828497, 19.600483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513134, 31.847393, 19.384392>,  <27.714781, 31.858730, 19.254738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513134, 31.847393, 19.384392>,  <27.177057, 31.828497, 19.600483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513134, 31.847393, 19.384392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540691, -0.003409, -0.841214,
		-0.041582, 0.998878, 0.022679,
		0.840193, 0.047242, -0.540226,
		27.765192, 31.861567, 19.222324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100401, 32.376965, 19.179752>,  <27.177057, 31.828497, 19.600483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100401, 32.376965, 19.179752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367790, 32.124702, 19.022058>,  <27.528223, 31.973347, 18.927443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367790, 32.124702, 19.022058>,  <27.100401, 32.376965, 19.179752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367790, 32.124702, 19.022058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558950, -0.076318, -0.825682,
		0.490631, 0.772304, -0.403520,
		0.668473, -0.630652, -0.394236,
		27.568333, 31.935507, 18.903788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.353039, 27.863068, 17.021555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.997078, 27.938782, 17.187569>,  <33.783501, 27.984211, 17.287176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.997078, 27.938782, 17.187569>,  <34.353039, 27.863068, 17.021555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997078, 27.938782, 17.187569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446149, 0.550717, 0.705451,
		-0.095035, 0.812946, -0.574532,
		-0.889899, 0.189284, 0.415032,
		33.730110, 27.995567, 17.312078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308407, 28.611706, 17.120962>,  <34.353039, 27.863068, 17.021555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308407, 28.611706, 17.120962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.043022, 28.463137, 17.380766>,  <33.883789, 28.373995, 17.536648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.043022, 28.463137, 17.380766>,  <34.308407, 28.611706, 17.120962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043022, 28.463137, 17.380766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373178, 0.588135, 0.717520,
		-0.648502, 0.718431, -0.251600,
		-0.663463, -0.371421, 0.649509,
		33.843983, 28.351709, 17.575619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855953, 29.154417, 17.329082>,  <34.308407, 28.611706, 17.120962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855953, 29.154417, 17.329082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.849167, 28.896811, 17.635012>,  <33.845093, 28.742247, 17.818569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.849167, 28.896811, 17.635012>,  <33.855953, 29.154417, 17.329082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849167, 28.896811, 17.635012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293869, 0.727935, 0.619477,
		-0.955695, 0.235270, 0.176904,
		-0.016970, -0.644018, 0.764823,
		33.844074, 28.703606, 17.864458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459778, 29.482239, 17.853775>,  <33.855953, 29.154417, 17.329082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459778, 29.482239, 17.853775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682934, 29.203190, 18.033592>,  <33.816826, 29.035761, 18.141481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682934, 29.203190, 18.033592>,  <33.459778, 29.482239, 17.853775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682934, 29.203190, 18.033592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134684, 0.610594, 0.780407,
		-0.818915, -0.374833, 0.434601,
		0.557887, -0.697621, 0.449541,
		33.850300, 28.993904, 18.168455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099487, 29.379927, 18.579847>,  <33.459778, 29.482239, 17.853775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099487, 29.379927, 18.579847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480152, 29.257309, 18.572205>,  <33.708553, 29.183739, 18.567619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480152, 29.257309, 18.572205>,  <33.099487, 29.379927, 18.579847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480152, 29.257309, 18.572205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202814, 0.580476, 0.788615,
		-0.230654, -0.754372, 0.614590,
		0.951664, -0.306545, -0.019108,
		33.765652, 29.165346, 18.566473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287994, 29.553381, 19.269560>,  <33.099487, 29.379927, 18.579847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287994, 29.553381, 19.269560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.644154, 29.431675, 19.134136>,  <33.857849, 29.358652, 19.052881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.644154, 29.431675, 19.134136>,  <33.287994, 29.553381, 19.269560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644154, 29.431675, 19.134136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432760, 0.335239, 0.836859,
		-0.141128, -0.891649, 0.430168,
		0.890394, -0.304264, -0.338559,
		33.911270, 29.340395, 19.032568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625992, 29.041403, 19.773787>,  <33.287994, 29.553381, 19.269560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625992, 29.041403, 19.773787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919106, 29.184631, 19.542334>,  <34.094975, 29.270569, 19.403461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919106, 29.184631, 19.542334>,  <33.625992, 29.041403, 19.773787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919106, 29.184631, 19.542334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598680, 0.064925, 0.798353,
		0.323434, -0.931435, -0.166793,
		0.732785, 0.358070, -0.578630,
		34.138943, 29.292051, 19.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277756, 28.807739, 20.194313>,  <33.625992, 29.041403, 19.773787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277756, 28.807739, 20.194313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390350, 29.079437, 19.923199>,  <34.457905, 29.242456, 19.760530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390350, 29.079437, 19.923199>,  <34.277756, 28.807739, 20.194313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390350, 29.079437, 19.923199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601872, 0.425147, 0.676018,
		0.747341, -0.598227, -0.289148,
		0.281482, 0.679246, -0.677786,
		34.474796, 29.283211, 19.719864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064610, 28.819105, 20.153473>,  <34.277756, 28.807739, 20.194313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064610, 28.819105, 20.153473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946430, 29.180958, 20.030605>,  <34.875523, 29.398069, 19.956884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946430, 29.180958, 20.030605>,  <35.064610, 28.819105, 20.153473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946430, 29.180958, 20.030605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619746, 0.426170, 0.659010,
		0.727068, 0.004335, -0.686552,
		-0.295445, 0.904633, -0.307168,
		34.857796, 29.452347, 19.938456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709126, 29.174891, 20.121662>,  <35.064610, 28.819105, 20.153473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709126, 29.174891, 20.121662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.413368, 29.442614, 20.150860>,  <35.235916, 29.603249, 20.168379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.413368, 29.442614, 20.150860>,  <35.709126, 29.174891, 20.121662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413368, 29.442614, 20.150860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522611, 0.502194, 0.688969,
		0.424476, 0.547564, -0.721106,
		-0.739390, 0.669309, 0.072994,
		35.191551, 29.643406, 20.172758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085045, 29.818178, 20.113424>,  <35.709126, 29.174891, 20.121662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085045, 29.818178, 20.113424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730736, 29.901197, 20.279472>,  <35.518150, 29.951010, 20.379101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730736, 29.901197, 20.279472>,  <36.085045, 29.818178, 20.113424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730736, 29.901197, 20.279472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442068, 0.649678, 0.618461,
		-0.141333, 0.731329, -0.667220,
		-0.885777, 0.207548, 0.415118,
		35.465004, 29.963461, 20.404007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200409, 30.405499, 20.187880>,  <36.085045, 29.818178, 20.113424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200409, 30.405499, 20.187880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879234, 30.358120, 20.421553>,  <35.686531, 30.329693, 20.561756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879234, 30.358120, 20.421553>,  <36.200409, 30.405499, 20.187880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879234, 30.358120, 20.421553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379880, 0.653557, 0.654641,
		-0.459335, 0.747552, -0.479768,
		-0.802934, -0.118445, 0.584182,
		35.638355, 30.322586, 20.596807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976860, 31.128550, 20.406567>,  <36.200409, 30.405499, 20.187880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976860, 31.128550, 20.406567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829609, 30.857338, 20.661049>,  <35.741257, 30.694611, 20.813738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829609, 30.857338, 20.661049>,  <35.976860, 31.128550, 20.406567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829609, 30.857338, 20.661049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317990, 0.551181, 0.771416,
		-0.873706, 0.486289, 0.012699,
		-0.368132, -0.678028, 0.636205,
		35.719170, 30.653929, 20.851910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511600, 31.507498, 20.803703>,  <35.976860, 31.128550, 20.406567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511600, 31.507498, 20.803703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630531, 31.173433, 20.988789>,  <35.701889, 30.972996, 21.099840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630531, 31.173433, 20.988789>,  <35.511600, 31.507498, 20.803703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630531, 31.173433, 20.988789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256073, 0.536629, 0.804025,
		-0.919794, -0.120574, 0.373419,
		0.297332, -0.835160, 0.462712,
		35.719730, 30.922886, 21.127602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241264, 32.167011, 21.108530>,  <35.511600, 31.507498, 20.803703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241264, 32.167011, 21.108530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296787, 32.528446, 20.946411>,  <35.330101, 32.745308, 20.849140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296787, 32.528446, 20.946411>,  <35.241264, 32.167011, 21.108530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296787, 32.528446, 20.946411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219467, -0.371014, -0.902321,
		-0.965695, 0.214197, 0.146808,
		0.138806, 0.903586, -0.405295,
		35.338428, 32.799522, 20.824823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710785, 32.149513, 20.593504>,  <35.241264, 32.167011, 21.108530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710785, 32.149513, 20.593504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919197, 32.466450, 20.466553>,  <35.044243, 32.656612, 20.390383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919197, 32.466450, 20.466553>,  <34.710785, 32.149513, 20.593504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919197, 32.466450, 20.466553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232481, -0.226040, -0.945969,
		-0.821267, 0.566663, 0.066430,
		0.521030, 0.792338, -0.317377,
		35.075504, 32.704151, 20.371340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269360, 32.548496, 20.160498>,  <34.710785, 32.149513, 20.593504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269360, 32.548496, 20.160498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641048, 32.646286, 20.049658>,  <34.864059, 32.704960, 19.983154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641048, 32.646286, 20.049658>,  <34.269360, 32.548496, 20.160498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641048, 32.646286, 20.049658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268091, -0.070090, -0.960840,
		-0.254321, 0.967120, 0.000412,
		0.929219, 0.244472, -0.277102,
		34.919815, 32.719627, 19.966528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225330, 32.988583, 19.513315>,  <34.269360, 32.548496, 20.160498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225330, 32.988583, 19.513315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.581093, 32.805756, 19.515865>,  <34.794552, 32.696060, 19.517395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.581093, 32.805756, 19.515865>,  <34.225330, 32.988583, 19.513315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581093, 32.805756, 19.515865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123644, -0.253981, -0.959274,
		0.440074, 0.852397, -0.282407,
		0.889408, -0.457069, 0.006376,
		34.847916, 32.668636, 19.517778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616673, 33.349827, 18.930639>,  <34.225330, 32.988583, 19.513315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616673, 33.349827, 18.930639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795223, 32.995789, 18.983318>,  <34.902355, 32.783363, 19.014925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795223, 32.995789, 18.983318>,  <34.616673, 33.349827, 18.930639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795223, 32.995789, 18.983318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021241, -0.157613, -0.987273,
		0.894591, 0.437901, -0.089156,
		0.446380, -0.885099, 0.131698,
		34.929138, 32.730259, 19.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976284, 33.278973, 18.268997>,  <34.616673, 33.349827, 18.930639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976284, 33.278973, 18.268997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.997181, 32.912346, 18.427580>,  <35.009720, 32.692371, 18.522730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.997181, 32.912346, 18.427580>,  <34.976284, 33.278973, 18.268997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997181, 32.912346, 18.427580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183997, -0.399038, -0.898284,
		0.981538, -0.026022, -0.189490,
		0.052239, -0.916565, 0.396458,
		35.012852, 32.637375, 18.546516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452080, 32.869835, 17.872660>,  <34.976284, 33.278973, 18.268997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452080, 32.869835, 17.872660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.200119, 32.610161, 18.043209>,  <35.048943, 32.454357, 18.145538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.200119, 32.610161, 18.043209>,  <35.452080, 32.869835, 17.872660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200119, 32.610161, 18.043209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067623, -0.501043, -0.862776,
		0.773728, -0.572294, 0.271707,
		-0.629898, -0.649181, 0.426371,
		35.011150, 32.415405, 18.171120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512299, 32.278610, 17.388208>,  <35.452080, 32.869835, 17.872660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512299, 32.278610, 17.388208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195709, 32.208706, 17.622480>,  <35.005756, 32.166763, 17.763044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195709, 32.208706, 17.622480>,  <35.512299, 32.278610, 17.388208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195709, 32.208706, 17.622480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414667, -0.550440, -0.724615,
		0.449016, -0.816379, 0.363194,
		-0.791477, -0.174759, 0.585682,
		34.958267, 32.156277, 17.798185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436951, 31.472301, 17.356937>,  <35.512299, 32.278610, 17.388208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436951, 31.472301, 17.356937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081913, 31.634382, 17.444563>,  <34.868889, 31.731630, 17.497137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081913, 31.634382, 17.444563>,  <35.436951, 31.472301, 17.356937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081913, 31.634382, 17.444563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441394, -0.612205, -0.656031,
		-0.131714, -0.678982, 0.722243,
		-0.887594, 0.405202, 0.219063,
		34.815636, 31.755943, 17.510281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969582, 30.923872, 17.425619>,  <35.436951, 31.472301, 17.356937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969582, 30.923872, 17.425619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697906, 31.214937, 17.387218>,  <34.534901, 31.389576, 17.364178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697906, 31.214937, 17.387218>,  <34.969582, 30.923872, 17.425619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697906, 31.214937, 17.387218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545626, -0.588048, -0.597069,
		-0.490918, -0.353140, 0.796424,
		-0.679185, 0.727661, -0.096001,
		34.494152, 31.433235, 17.358418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384186, 30.534885, 17.463785>,  <34.969582, 30.923872, 17.425619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384186, 30.534885, 17.463785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.262497, 30.887493, 17.319357>,  <34.189484, 31.099058, 17.232700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.262497, 30.887493, 17.319357>,  <34.384186, 30.534885, 17.463785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262497, 30.887493, 17.319357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635715, -0.470160, -0.612223,
		-0.709447, 0.043283, 0.703429,
		-0.304225, 0.881519, -0.361069,
		34.171230, 31.151949, 17.211037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702042, 30.620001, 17.651484>,  <34.384186, 30.534885, 17.463785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702042, 30.620001, 17.651484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759441, 30.837933, 17.321012>,  <33.793880, 30.968691, 17.122730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759441, 30.837933, 17.321012>,  <33.702042, 30.620001, 17.651484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759441, 30.837933, 17.321012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755782, -0.478617, -0.446900,
		-0.638906, 0.688541, 0.343089,
		0.143501, 0.544828, -0.826178,
		33.802490, 31.001381, 17.073158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089035, 30.588930, 17.394852>,  <33.702042, 30.620001, 17.651484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089035, 30.588930, 17.394852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306396, 30.714350, 17.083364>,  <33.436813, 30.789600, 16.896471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306396, 30.714350, 17.083364>,  <33.089035, 30.588930, 17.394852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306396, 30.714350, 17.083364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604142, -0.498003, -0.622097,
		-0.582862, 0.808505, -0.081188,
		0.543400, 0.313548, -0.778719,
		33.469418, 30.808414, 16.849749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658203, 30.873461, 16.995638>,  <33.089035, 30.588930, 17.394852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658203, 30.873461, 16.995638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.959644, 30.809568, 16.740587>,  <33.140511, 30.771233, 16.587557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.959644, 30.809568, 16.740587>,  <32.658203, 30.873461, 16.995638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959644, 30.809568, 16.740587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625350, -0.473082, -0.620588,
		-0.202522, 0.866418, -0.456405,
		0.753606, -0.159730, -0.637624,
		33.185726, 30.761650, 16.549299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850430, 31.606981, 16.984797>,  <32.658203, 30.873461, 16.995638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850430, 31.606981, 16.984797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.522339, 31.819824, 16.900808>,  <32.325485, 31.947531, 16.850414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.522339, 31.819824, 16.900808>,  <32.850430, 31.606981, 16.984797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522339, 31.819824, 16.900808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160202, 0.566044, 0.808659,
		0.549148, 0.629646, -0.549529,
		-0.820226, 0.532109, -0.209972,
		32.276272, 31.979458, 16.837816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149162, 32.272877, 17.083878>,  <32.850430, 31.606981, 16.984797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149162, 32.272877, 17.083878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.750145, 32.266117, 17.111063>,  <32.510735, 32.262062, 17.127375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.750145, 32.266117, 17.111063>,  <33.149162, 32.272877, 17.083878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750145, 32.266117, 17.111063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044126, 0.601960, 0.797306,
		-0.054383, 0.798347, -0.599737,
		-0.997545, -0.016896, 0.067964,
		32.450882, 32.261047, 17.131453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967865, 32.927944, 17.041595>,  <33.149162, 32.272877, 17.083878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967865, 32.927944, 17.041595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.659893, 32.748863, 17.223480>,  <32.475109, 32.641415, 17.332611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.659893, 32.748863, 17.223480>,  <32.967865, 32.927944, 17.041595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659893, 32.748863, 17.223480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054443, 0.663892, 0.745844,
		-0.635796, 0.599007, -0.486779,
		-0.769935, -0.447703, 0.454712,
		32.428913, 32.614552, 17.359894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606232, 33.473831, 17.377073>,  <32.967865, 32.927944, 17.041595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606232, 33.473831, 17.377073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422264, 33.159679, 17.542795>,  <32.311886, 32.971188, 17.642229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422264, 33.159679, 17.542795>,  <32.606232, 33.473831, 17.377073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422264, 33.159679, 17.542795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077691, 0.500382, 0.862312,
		-0.884557, 0.364403, -0.291151,
		-0.459916, -0.785384, 0.414306,
		32.284290, 32.924065, 17.667088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907003, 33.663399, 17.601984>,  <32.606232, 33.473831, 17.377073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907003, 33.663399, 17.601984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.047737, 33.366482, 17.830093>,  <32.132179, 33.188332, 17.966959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.047737, 33.366482, 17.830093>,  <31.907003, 33.663399, 17.601984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047737, 33.366482, 17.830093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063335, 0.588952, 0.805682,
		-0.933917, -0.319586, 0.160201,
		0.351835, -0.742294, 0.570273,
		32.153286, 33.143795, 18.001175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471241, 33.623627, 18.089005>,  <31.907003, 33.663399, 17.601984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471241, 33.623627, 18.089005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.808918, 33.450714, 18.215796>,  <32.011524, 33.346966, 18.291870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.808918, 33.450714, 18.215796>,  <31.471241, 33.623627, 18.089005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808918, 33.450714, 18.215796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016514, 0.612025, 0.790666,
		-0.535785, -0.662240, 0.523806,
		0.844193, -0.432277, 0.316978,
		32.062176, 33.321030, 18.310888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383310, 33.151405, 18.710138>,  <31.471241, 33.623627, 18.089005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383310, 33.151405, 18.710138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.773277, 33.236057, 18.737709>,  <32.007256, 33.286846, 18.754251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.773277, 33.236057, 18.737709>,  <31.383310, 33.151405, 18.710138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773277, 33.236057, 18.737709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123241, 0.255421, 0.958943,
		0.185330, -0.943385, 0.275095,
		0.974918, 0.211624, 0.068926,
		32.065754, 33.299545, 18.758387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564352, 32.948154, 19.346813>,  <31.383310, 33.151405, 18.710138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564352, 32.948154, 19.346813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857847, 33.201485, 19.248405>,  <32.033943, 33.353481, 19.189362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857847, 33.201485, 19.248405>,  <31.564352, 32.948154, 19.346813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857847, 33.201485, 19.248405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131212, 0.223196, 0.965902,
		0.666642, -0.741000, 0.080667,
		0.733738, 0.633327, -0.246020,
		32.077969, 33.391483, 19.174599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054527, 32.806164, 19.889647>,  <31.564352, 32.948154, 19.346813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054527, 32.806164, 19.889647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.130962, 33.163769, 19.727549>,  <32.176823, 33.378334, 19.630291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.130962, 33.163769, 19.727549>,  <32.054527, 32.806164, 19.889647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130962, 33.163769, 19.727549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180064, 0.373918, 0.909814,
		0.964916, -0.246823, -0.089529,
		0.191086, 0.894015, -0.405244,
		32.188290, 33.431973, 19.605976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674656, 33.072853, 20.248892>,  <32.054527, 32.806164, 19.889647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674656, 33.072853, 20.248892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496078, 33.381447, 20.067568>,  <32.388931, 33.566605, 19.958773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496078, 33.381447, 20.067568>,  <32.674656, 33.072853, 20.248892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496078, 33.381447, 20.067568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189044, 0.576487, 0.794937,
		0.874612, 0.269202, -0.403217,
		-0.446448, 0.771488, -0.453311,
		32.362144, 33.612892, 19.931574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107197, 33.723480, 20.375677>,  <32.674656, 33.072853, 20.248892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107197, 33.723480, 20.375677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.736160, 33.835236, 20.276470>,  <32.513538, 33.902290, 20.216946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.736160, 33.835236, 20.276470>,  <33.107197, 33.723480, 20.375677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736160, 33.835236, 20.276470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008365, 0.648169, 0.761451,
		0.373497, 0.708392, -0.598900,
		-0.927594, 0.279390, -0.248015,
		32.457882, 33.919052, 20.202066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183262, 34.400185, 20.467924>,  <33.107197, 33.723480, 20.375677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183262, 34.400185, 20.467924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.792545, 34.314602, 20.463947>,  <32.558113, 34.263252, 20.461561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.792545, 34.314602, 20.463947>,  <33.183262, 34.400185, 20.467924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792545, 34.314602, 20.463947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142846, 0.616163, 0.774557,
		-0.159594, 0.758002, -0.632427,
		-0.976793, -0.213954, -0.009942,
		32.499508, 34.250416, 20.460964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849625, 35.004498, 20.349663>,  <33.183262, 34.400185, 20.467924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849625, 35.004498, 20.349663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.561985, 34.784306, 20.519306>,  <32.389400, 34.652191, 20.621092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.561985, 34.784306, 20.519306>,  <32.849625, 35.004498, 20.349663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561985, 34.784306, 20.519306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270070, 0.783721, 0.559324,
		-0.640281, 0.287669, -0.712241,
		-0.719099, -0.550479, 0.424111,
		32.346256, 34.619164, 20.646540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275276, 35.513344, 20.545290>,  <32.849625, 35.004498, 20.349663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275276, 35.513344, 20.545290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174553, 35.192337, 20.761642>,  <32.114117, 34.999733, 20.891455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174553, 35.192337, 20.761642>,  <32.275276, 35.513344, 20.545290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174553, 35.192337, 20.761642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446942, 0.592156, 0.670518,
		-0.858390, -0.072899, -0.507792,
		-0.251812, -0.802519, 0.540882,
		32.099010, 34.951580, 20.923906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.095259, 32.572266, 18.407314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.287676, 32.221649, 18.413919>,  <27.403126, 32.011280, 18.417883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.287676, 32.221649, 18.413919>,  <27.095259, 32.572266, 18.407314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287676, 32.221649, 18.413919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461922, -0.269419, -0.845010,
		0.745134, 0.398859, -0.534496,
		0.481043, -0.876541, 0.016512,
		27.431990, 31.958687, 18.418873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501198, 32.608818, 17.790928>,  <27.095259, 32.572266, 18.407314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501198, 32.608818, 17.790928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.418636, 32.233234, 17.901018>,  <27.369101, 32.007885, 17.967073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.418636, 32.233234, 17.901018>,  <27.501198, 32.608818, 17.790928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418636, 32.233234, 17.901018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267079, -0.216538, -0.939031,
		0.941311, -0.267325, -0.206083,
		-0.206401, -0.938962, 0.275227,
		27.356716, 31.951546, 17.983585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874805, 32.220383, 17.342361>,  <27.501198, 32.608818, 17.790928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874805, 32.220383, 17.342361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.587885, 31.962425, 17.447880>,  <27.415731, 31.807652, 17.511190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.587885, 31.962425, 17.447880>,  <27.874805, 32.220383, 17.342361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587885, 31.962425, 17.447880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145574, -0.231540, -0.961872,
		0.681385, -0.728355, 0.072205,
		-0.717302, -0.644894, 0.263797,
		27.372694, 31.768957, 17.527020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927219, 31.522251, 16.950954>,  <27.874805, 32.220383, 17.342361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927219, 31.522251, 16.950954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.553108, 31.516685, 17.092407>,  <27.328640, 31.513346, 17.177279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.553108, 31.516685, 17.092407>,  <27.927219, 31.522251, 16.950954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553108, 31.516685, 17.092407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333760, -0.297659, -0.894429,
		0.117708, -0.954571, 0.273751,
		-0.935280, -0.013914, 0.353635,
		27.272524, 31.512512, 17.198498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660669, 30.826992, 16.822035>,  <27.927219, 31.522251, 16.950954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660669, 30.826992, 16.822035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.352526, 31.074812, 16.882309>,  <27.167639, 31.223503, 16.918474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.352526, 31.074812, 16.882309>,  <27.660669, 30.826992, 16.822035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352526, 31.074812, 16.882309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286244, -0.124867, -0.949986,
		-0.569748, -0.774962, 0.273535,
		-0.770358, 0.619550, 0.150686,
		27.121418, 31.260677, 16.927515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234770, 30.554144, 16.316021>,  <27.660669, 30.826992, 16.822035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234770, 30.554144, 16.316021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.021994, 30.871288, 16.434958>,  <26.894329, 31.061575, 16.506319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.021994, 30.871288, 16.434958>,  <27.234770, 30.554144, 16.316021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021994, 30.871288, 16.434958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512197, -0.021648, -0.858595,
		-0.674311, -0.609017, 0.417616,
		-0.531939, 0.792862, 0.297339,
		26.862411, 31.109146, 16.524158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512848, 30.421700, 16.124607>,  <27.234770, 30.554144, 16.316021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512848, 30.421700, 16.124607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.580986, 30.813782, 16.164963>,  <26.621868, 31.049030, 16.189177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.580986, 30.813782, 16.164963>,  <26.512848, 30.421700, 16.124607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580986, 30.813782, 16.164963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191734, 0.133401, -0.972339,
		-0.966551, 0.146289, 0.210663,
		0.170345, 0.980206, 0.100890,
		26.632090, 31.107843, 16.195230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951553, 30.728537, 15.830483>,  <26.512848, 30.421700, 16.124607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951553, 30.728537, 15.830483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.247278, 30.997597, 15.842834>,  <26.424713, 31.159033, 15.850244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.247278, 30.997597, 15.842834>,  <25.951553, 30.728537, 15.830483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247278, 30.997597, 15.842834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091887, 0.146206, -0.984977,
		-0.667061, 0.725371, 0.169900,
		0.739314, 0.672652, 0.030876,
		26.469072, 31.199392, 15.852097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761528, 31.165771, 15.363852>,  <25.951553, 30.728537, 15.830483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761528, 31.165771, 15.363852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.155464, 31.225784, 15.398670>,  <26.391827, 31.261793, 15.419561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.155464, 31.225784, 15.398670>,  <25.761528, 31.165771, 15.363852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155464, 31.225784, 15.398670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077170, 0.070448, -0.994526,
		-0.155345, 0.986168, 0.057802,
		0.984842, 0.150034, 0.087046,
		26.450916, 31.270794, 15.424784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905819, 31.684753, 14.915987>,  <25.761528, 31.165771, 15.363852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905819, 31.684753, 14.915987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.265062, 31.512856, 14.953347>,  <26.480608, 31.409718, 14.975763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.265062, 31.512856, 14.953347>,  <25.905819, 31.684753, 14.915987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265062, 31.512856, 14.953347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109646, 0.013135, -0.993884,
		0.425888, 0.902856, 0.058917,
		0.898108, -0.429743, 0.093401,
		26.534494, 31.383932, 14.981367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208784, 31.987185, 14.333721>,  <25.905819, 31.684753, 14.915987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208784, 31.987185, 14.333721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.407654, 31.659113, 14.446946>,  <26.526976, 31.462269, 14.514881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.407654, 31.659113, 14.446946>,  <26.208784, 31.987185, 14.333721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407654, 31.659113, 14.446946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293809, -0.147821, -0.944365,
		0.816392, 0.552678, 0.167484,
		0.497172, -0.820180, 0.283062,
		26.556805, 31.413059, 14.531865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818184, 32.015442, 13.981652>,  <26.208784, 31.987185, 14.333721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818184, 32.015442, 13.981652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.754412, 31.628237, 14.059140>,  <26.716148, 31.395912, 14.105633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.754412, 31.628237, 14.059140>,  <26.818184, 32.015442, 13.981652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754412, 31.628237, 14.059140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005772, -0.197140, -0.980358,
		0.987193, -0.155179, 0.037017,
		-0.159429, -0.968016, 0.193719,
		26.706583, 31.337831, 14.117256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357397, 31.568752, 13.592679>,  <26.818184, 32.015442, 13.981652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357397, 31.568752, 13.592679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.023685, 31.365128, 13.677375>,  <26.823458, 31.242952, 13.728192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.023685, 31.365128, 13.677375>,  <27.357397, 31.568752, 13.592679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023685, 31.365128, 13.677375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040391, -0.326580, -0.944306,
		0.549861, -0.796367, 0.251897,
		-0.834279, -0.509063, 0.211740,
		26.773401, 31.212408, 13.740897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374252, 31.077913, 12.980336>,  <27.357397, 31.568752, 13.592679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374252, 31.077913, 12.980336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.543514, 30.715502, 12.977377>,  <27.645071, 30.498055, 12.975601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.543514, 30.715502, 12.977377>,  <27.374252, 31.077913, 12.980336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543514, 30.715502, 12.977377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858547, 0.398342, 0.322833,
		-0.289549, -0.142959, 0.946427,
		0.423153, -0.906028, -0.007398,
		27.670460, 30.443693, 12.975158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501913, 30.759485, 13.588947>,  <27.374252, 31.077913, 12.980336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501913, 30.759485, 13.588947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.766264, 30.645046, 13.311419>,  <27.924875, 30.576384, 13.144901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.766264, 30.645046, 13.311419>,  <27.501913, 30.759485, 13.588947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766264, 30.645046, 13.311419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737183, 0.420803, 0.528664,
		0.140712, -0.860855, 0.489007,
		0.660879, -0.286098, -0.693820,
		27.964527, 30.559217, 13.103272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984453, 30.231457, 13.800277>,  <27.501913, 30.759485, 13.588947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984453, 30.231457, 13.800277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.172438, 30.420616, 13.502148>,  <28.285229, 30.534111, 13.323270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.172438, 30.420616, 13.502148>,  <27.984453, 30.231457, 13.800277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172438, 30.420616, 13.502148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747018, 0.236728, 0.621228,
		0.470216, -0.848721, -0.242010,
		0.469959, 0.472897, -0.745323,
		28.313425, 30.562485, 13.278550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671169, 29.988146, 13.890197>,  <27.984453, 30.231457, 13.800277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671169, 29.988146, 13.890197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739265, 30.317051, 13.672976>,  <28.780123, 30.514393, 13.542643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739265, 30.317051, 13.672976>,  <28.671169, 29.988146, 13.890197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739265, 30.317051, 13.672976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807367, 0.199569, 0.555276,
		0.564958, -0.532973, -0.629891,
		0.170240, 0.822260, -0.543052,
		28.790339, 30.563728, 13.510060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289015, 29.977980, 13.651410>,  <28.671169, 29.988146, 13.890197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289015, 29.977980, 13.651410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.209515, 30.369654, 13.634964>,  <29.161814, 30.604658, 13.625096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.209515, 30.369654, 13.634964>,  <29.289015, 29.977980, 13.651410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209515, 30.369654, 13.634964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693005, 0.170082, 0.700583,
		0.692995, 0.110749, -0.712385,
		-0.198753, 0.979187, -0.041116,
		29.149889, 30.663410, 13.622629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962078, 30.300138, 13.607491>,  <29.289015, 29.977980, 13.651410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962078, 30.300138, 13.607491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.725969, 30.597044, 13.734375>,  <29.584305, 30.775187, 13.810506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.725969, 30.597044, 13.734375>,  <29.962078, 30.300138, 13.607491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725969, 30.597044, 13.734375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767193, 0.393690, 0.506382,
		0.250985, 0.542266, -0.801844,
		-0.590272, 0.742263, 0.317212,
		29.548887, 30.819723, 13.829538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234133, 30.976187, 13.376645>,  <29.962078, 30.300138, 13.607491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234133, 30.976187, 13.376645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.018620, 31.054226, 13.704462>,  <29.889311, 31.101049, 13.901152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.018620, 31.054226, 13.704462>,  <30.234133, 30.976187, 13.376645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018620, 31.054226, 13.704462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803347, 0.411902, 0.430082,
		-0.253664, 0.890098, -0.378656,
		-0.538784, 0.195096, 0.819542,
		29.856985, 31.112755, 13.950325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634560, 31.333012, 13.686668>,  <30.234133, 30.976187, 13.376645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634560, 31.333012, 13.686668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.383112, 31.293022, 13.995172>,  <30.232243, 31.269028, 14.180274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.383112, 31.293022, 13.995172>,  <30.634560, 31.333012, 13.686668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383112, 31.293022, 13.995172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683502, 0.402096, 0.609216,
		-0.371027, 0.910123, -0.184433,
		-0.628621, -0.099975, 0.771259,
		30.194525, 31.263029, 14.226549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387539, 31.922586, 13.948221>,  <30.634560, 31.333012, 13.686668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387539, 31.922586, 13.948221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.344301, 31.674368, 14.258894>,  <30.318359, 31.525436, 14.445298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.344301, 31.674368, 14.258894>,  <30.387539, 31.922586, 13.948221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344301, 31.674368, 14.258894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551456, 0.612617, 0.566213,
		-0.827171, 0.489511, 0.275984,
		-0.108095, -0.620548, 0.776683,
		30.311872, 31.488203, 14.491899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356777, 32.306900, 14.532998>,  <30.387539, 31.922586, 13.948221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356777, 32.306900, 14.532998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.461527, 31.946804, 14.672132>,  <30.524378, 31.730747, 14.755613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.461527, 31.946804, 14.672132>,  <30.356777, 32.306900, 14.532998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461527, 31.946804, 14.672132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523310, 0.435284, 0.732581,
		-0.810906, -0.009819, 0.585095,
		0.261876, -0.900239, 0.347836,
		30.540091, 31.676733, 14.776484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188658, 32.349518, 15.255564>,  <30.356777, 32.306900, 14.532998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188658, 32.349518, 15.255564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.451214, 32.053391, 15.197489>,  <30.608747, 31.875713, 15.162643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.451214, 32.053391, 15.197489>,  <30.188658, 32.349518, 15.255564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451214, 32.053391, 15.197489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513390, 0.297313, 0.805007,
		-0.552797, -0.602935, 0.575226,
		0.656389, -0.740320, -0.145187,
		30.648130, 31.831295, 15.153933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332796, 32.120438, 15.946080>,  <30.188658, 32.349518, 15.255564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332796, 32.120438, 15.946080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.615946, 31.921816, 15.745143>,  <30.785835, 31.802643, 15.624580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.615946, 31.921816, 15.745143>,  <30.332796, 32.120438, 15.946080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615946, 31.921816, 15.745143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599749, 0.046858, 0.798815,
		-0.373114, -0.866741, 0.330976,
		0.707875, -0.496552, -0.502344,
		30.828308, 31.772850, 15.594440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445862, 31.533131, 16.354376>,  <30.332796, 32.120438, 15.946080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445862, 31.533131, 16.354376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775246, 31.613319, 16.142065>,  <30.972876, 31.661432, 16.014679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775246, 31.613319, 16.142065>,  <30.445862, 31.533131, 16.354376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775246, 31.613319, 16.142065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531334, 0.055623, 0.845334,
		0.198992, -0.978118, -0.060716,
		0.823460, 0.200475, -0.530776,
		31.022284, 31.673462, 15.982832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002056, 31.190136, 16.689428>,  <30.445862, 31.533131, 16.354376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002056, 31.190136, 16.689428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182499, 31.468103, 16.465431>,  <31.290764, 31.634884, 16.331032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182499, 31.468103, 16.465431>,  <31.002056, 31.190136, 16.689428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182499, 31.468103, 16.465431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541739, 0.285429, 0.790601,
		0.709240, -0.660016, -0.247705,
		0.451107, 0.694917, -0.559994,
		31.317831, 31.676579, 16.297434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811274, 31.137665, 16.806311>,  <31.002056, 31.190136, 16.689428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811274, 31.137665, 16.806311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663450, 31.499069, 16.719503>,  <31.574757, 31.715912, 16.667419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663450, 31.499069, 16.719503>,  <31.811274, 31.137665, 16.806311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663450, 31.499069, 16.719503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459860, 0.380781, 0.802206,
		0.807438, 0.196664, -0.556208,
		-0.369559, 0.903509, -0.217019,
		31.552582, 31.770123, 16.654398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353230, 30.905161, 16.322119>,  <31.811274, 31.137665, 16.806311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353230, 30.905161, 16.322119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688461, 30.695261, 16.262432>,  <32.889599, 30.569321, 16.226620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688461, 30.695261, 16.262432>,  <32.353230, 30.905161, 16.322119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688461, 30.695261, 16.262432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474792, -0.566852, -0.673240,
		0.268697, 0.635074, -0.724212,
		0.838078, -0.524748, -0.149216,
		32.939884, 30.537836, 16.217667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505257, 30.866854, 15.623914>,  <32.353230, 30.905161, 16.322119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505257, 30.866854, 15.623914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722607, 30.553139, 15.743672>,  <32.853016, 30.364910, 15.815528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722607, 30.553139, 15.743672>,  <32.505257, 30.866854, 15.623914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722607, 30.553139, 15.743672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372909, -0.545024, -0.750924,
		0.752117, 0.296387, -0.588621,
		0.543376, -0.784285, 0.299397,
		32.885620, 30.317854, 15.833491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798023, 30.378561, 14.950188>,  <32.505257, 30.866854, 15.623914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798023, 30.378561, 14.950188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790798, 30.157658, 15.283578>,  <32.786461, 30.025116, 15.483612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790798, 30.157658, 15.283578>,  <32.798023, 30.378561, 14.950188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790798, 30.157658, 15.283578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504812, -0.714521, -0.484381,
		0.863040, -0.429500, -0.265879,
		-0.018066, -0.552259, 0.833477,
		32.785378, 29.991980, 15.533621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000347, 29.766832, 14.671104>,  <32.798023, 30.378561, 14.950188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000347, 29.766832, 14.671104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832169, 29.678013, 15.022996>,  <32.731262, 29.624722, 15.234131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832169, 29.678013, 15.022996>,  <33.000347, 29.766832, 14.671104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832169, 29.678013, 15.022996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699947, -0.537569, -0.470207,
		0.577323, -0.813458, 0.070594,
		-0.420443, -0.222049, 0.879728,
		32.706036, 29.611399, 15.286915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915436, 29.051701, 14.732831>,  <33.000347, 29.766832, 14.671104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915436, 29.051701, 14.732831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662960, 29.200613, 15.005011>,  <32.511475, 29.289961, 15.168319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662960, 29.200613, 15.005011>,  <32.915436, 29.051701, 14.732831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662960, 29.200613, 15.005011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749416, -0.518864, -0.411286,
		0.199947, -0.769538, 0.606492,
		-0.631187, 0.372279, 0.680449,
		32.473602, 29.312298, 15.209146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575687, 28.369118, 15.022997>,  <32.915436, 29.051701, 14.732831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575687, 28.369118, 15.022997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344074, 28.687515, 15.093551>,  <32.205105, 28.878553, 15.135883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344074, 28.687515, 15.093551>,  <32.575687, 28.369118, 15.022997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344074, 28.687515, 15.093551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753374, -0.439673, -0.488994,
		-0.311685, -0.416027, 0.854268,
		-0.579033, 0.795996, 0.176385,
		32.170364, 28.926313, 15.146466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843849, 28.104664, 15.125498>,  <32.575687, 28.369118, 15.022997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843849, 28.104664, 15.125498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811749, 28.486534, 15.010847>,  <31.792488, 28.715656, 14.942057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811749, 28.486534, 15.010847>,  <31.843849, 28.104664, 15.125498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811749, 28.486534, 15.010847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827615, -0.224079, -0.514629,
		-0.555531, 0.195918, 0.808085,
		-0.080250, 0.954675, -0.286627,
		31.787674, 28.772936, 14.924859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358206, 27.640825, 15.493099>,  <31.843849, 28.104664, 15.125498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358206, 27.640825, 15.493099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534365, 27.282272, 15.472894>,  <31.640060, 27.067141, 15.460771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534365, 27.282272, 15.472894>,  <31.358206, 27.640825, 15.493099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534365, 27.282272, 15.472894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629668, 0.268272, 0.729073,
		-0.639976, -0.352889, 0.682569,
		0.440396, -0.896381, -0.050515,
		31.666483, 27.013357, 15.457739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395161, 27.454554, 16.219080>,  <31.358206, 27.640825, 15.493099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395161, 27.454554, 16.219080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.656614, 27.214201, 16.035034>,  <31.813486, 27.069990, 15.924606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.656614, 27.214201, 16.035034>,  <31.395161, 27.454554, 16.219080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656614, 27.214201, 16.035034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587281, 0.019243, 0.809154,
		-0.477353, -0.799106, 0.365464,
		0.653633, -0.600882, -0.460114,
		31.852705, 27.033936, 15.897000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601326, 26.836138, 16.684614>,  <31.395161, 27.454554, 16.219080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601326, 26.836138, 16.684614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901232, 26.900515, 16.427881>,  <32.081177, 26.939140, 16.273842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901232, 26.900515, 16.427881>,  <31.601326, 26.836138, 16.684614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901232, 26.900515, 16.427881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583984, 0.295169, 0.756200,
		0.311166, -0.941790, 0.127309,
		0.749758, 0.160957, -0.641837,
		32.126160, 26.948797, 16.235331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080574, 26.515728, 16.963661>,  <31.601326, 26.836138, 16.684614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080574, 26.515728, 16.963661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270279, 26.772724, 16.722900>,  <32.384102, 26.926922, 16.578444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270279, 26.772724, 16.722900>,  <32.080574, 26.515728, 16.963661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270279, 26.772724, 16.722900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584799, 0.281154, 0.760896,
		0.658094, -0.712854, -0.242387,
		0.474259, 0.642489, -0.601902,
		32.412556, 26.965471, 16.542330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763069, 26.486296, 17.155960>,  <32.080574, 26.515728, 16.963661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763069, 26.486296, 17.155960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752129, 26.833397, 16.957464>,  <32.745564, 27.041658, 16.838366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752129, 26.833397, 16.957464>,  <32.763069, 26.486296, 17.155960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752129, 26.833397, 16.957464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670791, 0.383992, 0.634500,
		0.741142, -0.315521, -0.592583,
		-0.027349, 0.867754, -0.496241,
		32.743923, 27.093723, 16.808592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394760, 26.731897, 17.226557>,  <32.763069, 26.486296, 17.155960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394760, 26.731897, 17.226557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229069, 27.078096, 17.113899>,  <33.129654, 27.285816, 17.046305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229069, 27.078096, 17.113899>,  <33.394760, 26.731897, 17.226557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229069, 27.078096, 17.113899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583100, 0.489953, 0.648028,
		0.698860, 0.104206, -0.707627,
		-0.414232, 0.865498, -0.281646,
		33.104797, 27.337746, 17.029406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968769, 27.226889, 17.081799>,  <33.394760, 26.731897, 17.226557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968769, 27.226889, 17.081799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642681, 27.450792, 17.141245>,  <33.447029, 27.585135, 17.176912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642681, 27.450792, 17.141245>,  <33.968769, 27.226889, 17.081799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642681, 27.450792, 17.141245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479880, 0.509200, 0.714444,
		0.324242, 0.653746, -0.683727,
		-0.815220, 0.559759, 0.148616,
		33.398117, 27.618721, 17.185829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.477016, 27.792181, 14.237672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447607, 28.167753, 14.372134>,  <27.429962, 28.393097, 14.452812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447607, 28.167753, 14.372134>,  <27.477016, 27.792181, 14.237672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447607, 28.167753, 14.372134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376321, -0.286031, 0.881231,
		0.923567, 0.191294, -0.332310,
		-0.073524, 0.938932, 0.336157,
		27.425550, 28.449432, 14.472981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087688, 27.889044, 14.593491>,  <27.477016, 27.792181, 14.237672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087688, 27.889044, 14.593491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.786701, 28.118294, 14.723301>,  <27.606108, 28.255844, 14.801187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.786701, 28.118294, 14.723301>,  <28.087688, 27.889044, 14.593491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786701, 28.118294, 14.723301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199188, -0.271630, 0.941563,
		0.627784, 0.773140, 0.090234,
		-0.752470, 0.573125, 0.324525,
		27.560961, 28.290232, 14.820659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409861, 28.330446, 15.114215>,  <28.087688, 27.889044, 14.593491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409861, 28.330446, 15.114215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015652, 28.325703, 15.181871>,  <27.779127, 28.322857, 15.222466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015652, 28.325703, 15.181871>,  <28.409861, 28.330446, 15.114215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015652, 28.325703, 15.181871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169452, -0.104139, 0.980021,
		0.005991, 0.994492, 0.104640,
		-0.985520, -0.011860, 0.169142,
		27.719995, 28.322145, 15.232615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231382, 28.884708, 15.598203>,  <28.409861, 28.330446, 15.114215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231382, 28.884708, 15.598203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921093, 28.636330, 15.643242>,  <27.734919, 28.487303, 15.670265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921093, 28.636330, 15.643242>,  <28.231382, 28.884708, 15.598203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921093, 28.636330, 15.643242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108973, 0.043943, 0.993073,
		-0.621593, 0.782620, 0.033578,
		-0.775724, -0.620946, 0.112599,
		27.688375, 28.450047, 15.677022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879013, 29.162611, 16.055590>,  <28.231382, 28.884708, 15.598203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879013, 29.162611, 16.055590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732523, 28.791533, 16.084614>,  <27.644629, 28.568886, 16.102028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732523, 28.791533, 16.084614>,  <27.879013, 29.162611, 16.055590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732523, 28.791533, 16.084614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038612, 0.093058, 0.994912,
		-0.929726, 0.361558, -0.069900,
		-0.366223, -0.927694, 0.072558,
		27.622656, 28.513224, 16.106380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427094, 29.236378, 16.518623>,  <27.879013, 29.162611, 16.055590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427094, 29.236378, 16.518623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.500292, 28.843164, 16.513601>,  <27.544210, 28.607237, 16.510588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.500292, 28.843164, 16.513601>,  <27.427094, 29.236378, 16.518623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500292, 28.843164, 16.513601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016848, -0.009634, 0.999812,
		-0.982969, -0.183173, 0.014800,
		0.182996, -0.983034, -0.012556,
		27.555191, 28.548254, 16.509834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058500, 28.916380, 17.031183>,  <27.427094, 29.236378, 16.518623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058500, 28.916380, 17.031183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353861, 28.651993, 16.977690>,  <27.531078, 28.493361, 16.945595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353861, 28.651993, 16.977690>,  <27.058500, 28.916380, 17.031183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353861, 28.651993, 16.977690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084716, -0.105820, 0.990770,
		-0.669018, -0.742916, -0.022143,
		0.738402, -0.660968, -0.133732,
		27.575382, 28.453703, 16.937571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890614, 28.348764, 17.427916>,  <27.058500, 28.916380, 17.031183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890614, 28.348764, 17.427916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283329, 28.307844, 17.363878>,  <27.518957, 28.283293, 17.325457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283329, 28.307844, 17.363878>,  <26.890614, 28.348764, 17.427916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283329, 28.307844, 17.363878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136912, -0.203261, 0.969505,
		-0.131721, -0.973766, -0.185552,
		0.981786, -0.102299, -0.160094,
		27.577866, 28.277155, 17.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057238, 27.800673, 17.798841>,  <26.890614, 28.348764, 17.427916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057238, 27.800673, 17.798841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395227, 28.008989, 17.750189>,  <27.598022, 28.133980, 17.720997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395227, 28.008989, 17.750189>,  <27.057238, 27.800673, 17.798841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395227, 28.008989, 17.750189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165342, -0.038100, 0.985500,
		0.508604, -0.852834, -0.118302,
		0.844975, 0.520790, -0.121632,
		27.648720, 28.165226, 17.713699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490959, 27.504124, 18.304472>,  <27.057238, 27.800673, 17.798841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490959, 27.504124, 18.304472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677959, 27.845787, 18.213387>,  <27.790159, 28.050785, 18.158735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677959, 27.845787, 18.213387>,  <27.490959, 27.504124, 18.304472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677959, 27.845787, 18.213387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447489, -0.006512, 0.894266,
		0.762363, -0.519969, -0.385271,
		0.467500, 0.854160, -0.227716,
		27.818209, 28.102036, 18.145071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225063, 27.379391, 18.453657>,  <27.490959, 27.504124, 18.304472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225063, 27.379391, 18.453657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.140621, 27.769518, 18.427771>,  <28.089956, 28.003593, 18.412239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.140621, 27.769518, 18.427771>,  <28.225063, 27.379391, 18.453657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140621, 27.769518, 18.427771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477227, 0.160624, 0.863976,
		0.853046, 0.151508, -0.499357,
		-0.211108, 0.975318, -0.064716,
		28.077290, 28.062113, 18.408356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901937, 27.750837, 18.546278>,  <28.225063, 27.379391, 18.453657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901937, 27.750837, 18.546278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611473, 28.014200, 18.625463>,  <28.437195, 28.172218, 18.672976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611473, 28.014200, 18.625463>,  <28.901937, 27.750837, 18.546278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611473, 28.014200, 18.625463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505905, 0.316723, 0.802338,
		0.465567, 0.682777, -0.563084,
		-0.726160, 0.658409, 0.197965,
		28.393625, 28.211723, 18.684853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608923, 27.751133, 18.406860>,  <28.901937, 27.750837, 18.546278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608923, 27.751133, 18.406860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883659, 27.467058, 18.468676>,  <30.048502, 27.296614, 18.505764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883659, 27.467058, 18.468676>,  <29.608923, 27.751133, 18.406860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883659, 27.467058, 18.468676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378710, -0.531185, -0.757906,
		0.620342, 0.462037, -0.633796,
		0.686843, -0.710186, 0.154538,
		30.089712, 27.254002, 18.515038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902054, 27.630445, 17.834538>,  <29.608923, 27.751133, 18.406860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902054, 27.630445, 17.834538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968534, 27.297123, 18.045433>,  <30.008423, 27.097130, 18.171970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968534, 27.297123, 18.045433>,  <29.902054, 27.630445, 17.834538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968534, 27.297123, 18.045433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362711, -0.548852, -0.753128,
		0.916961, -0.066064, -0.393469,
		0.166202, -0.833305, 0.527238,
		30.018394, 27.047131, 18.203604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106174, 27.203680, 17.336861>,  <29.902054, 27.630445, 17.834538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106174, 27.203680, 17.336861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009384, 26.976091, 17.651241>,  <29.951309, 26.839539, 17.839869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009384, 26.976091, 17.651241>,  <30.106174, 27.203680, 17.336861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009384, 26.976091, 17.651241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408121, -0.675197, -0.614448,
		0.880275, -0.469444, -0.068829,
		-0.241976, -0.568974, 0.785949,
		29.936790, 26.805399, 17.887026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400763, 26.582010, 17.089251>,  <30.106174, 27.203680, 17.336861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400763, 26.582010, 17.089251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129698, 26.504608, 17.373034>,  <29.967058, 26.458166, 17.543303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129698, 26.504608, 17.373034>,  <30.400763, 26.582010, 17.089251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129698, 26.504608, 17.373034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429399, -0.679077, -0.595375,
		0.596983, -0.708103, 0.377095,
		-0.677664, -0.193505, 0.709456,
		29.926399, 26.446556, 17.585871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391644, 25.806305, 17.281298>,  <30.400763, 26.582010, 17.089251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391644, 25.806305, 17.281298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042234, 25.982628, 17.363903>,  <29.832588, 26.088421, 17.413467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042234, 25.982628, 17.363903>,  <30.391644, 25.806305, 17.281298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042234, 25.982628, 17.363903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471539, -0.660904, -0.583829,
		-0.120869, -0.607367, 0.785172,
		-0.873522, 0.440806, 0.206514,
		29.780178, 26.114870, 17.425858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956068, 25.276899, 17.527840>,  <30.391644, 25.806305, 17.281298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956068, 25.276899, 17.527840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.724825, 25.569950, 17.384146>,  <29.586079, 25.745781, 17.297930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.724825, 25.569950, 17.384146>,  <29.956068, 25.276899, 17.527840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724825, 25.569950, 17.384146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519613, -0.669998, -0.530194,
		-0.629118, -0.119849, 0.768015,
		-0.578112, 0.732625, -0.359232,
		29.551392, 25.789738, 17.276375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327623, 24.998058, 17.313816>,  <29.956068, 25.276899, 17.527840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327623, 24.998058, 17.313816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288691, 25.354469, 17.136459>,  <29.265331, 25.568316, 17.030046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288691, 25.354469, 17.136459>,  <29.327623, 24.998058, 17.313816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288691, 25.354469, 17.136459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509440, -0.427322, -0.746905,
		-0.854984, 0.153182, 0.495518,
		-0.097334, 0.891028, -0.443391,
		29.259491, 25.621778, 17.003443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714550, 24.876152, 16.985548>,  <29.327623, 24.998058, 17.313816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714550, 24.876152, 16.985548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841873, 25.214708, 16.814760>,  <28.918266, 25.417841, 16.712288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841873, 25.214708, 16.814760>,  <28.714550, 24.876152, 16.985548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841873, 25.214708, 16.814760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382739, -0.297318, -0.874708,
		-0.867290, 0.441845, 0.229308,
		0.318308, 0.846390, -0.426971,
		28.937365, 25.468626, 16.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127964, 25.287766, 16.547052>,  <28.714550, 24.876152, 16.985548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127964, 25.287766, 16.547052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473503, 25.417650, 16.393000>,  <28.680826, 25.495581, 16.300568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473503, 25.417650, 16.393000>,  <28.127964, 25.287766, 16.547052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473503, 25.417650, 16.393000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392680, -0.044841, -0.918582,
		-0.315543, 0.944750, 0.088771,
		0.863849, 0.324711, -0.385133,
		28.732658, 25.515064, 16.277460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911156, 25.693392, 15.970308>,  <28.127964, 25.287766, 16.547052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911156, 25.693392, 15.970308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295813, 25.605310, 15.904887>,  <28.526608, 25.552462, 15.865634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295813, 25.605310, 15.904887>,  <27.911156, 25.693392, 15.970308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295813, 25.605310, 15.904887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217226, -0.247289, -0.944278,
		0.167489, 0.943588, -0.285639,
		0.961645, -0.220204, -0.163554,
		28.584307, 25.539249, 15.855821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123367, 26.028652, 15.362040>,  <27.911156, 25.693392, 15.970308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123367, 26.028652, 15.362040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376757, 25.721418, 15.399485>,  <28.528790, 25.537079, 15.421951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376757, 25.721418, 15.399485>,  <28.123367, 26.028652, 15.362040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376757, 25.721418, 15.399485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179345, -0.263437, -0.947859,
		0.752695, 0.583652, -0.304632,
		0.633471, -0.768083, 0.093612,
		28.566797, 25.490993, 15.427568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370287, 26.007832, 14.717723>,  <28.123367, 26.028652, 15.362040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370287, 26.007832, 14.717723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.483480, 25.659210, 14.877881>,  <28.551397, 25.450037, 14.973976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.483480, 25.659210, 14.877881>,  <28.370287, 26.007832, 14.717723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483480, 25.659210, 14.877881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067136, -0.398436, -0.914736,
		0.956772, 0.285736, -0.054238,
		0.282983, -0.871552, 0.400396,
		28.568375, 25.397745, 14.998000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970093, 25.802195, 14.243592>,  <28.370287, 26.007832, 14.717723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970093, 25.802195, 14.243592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829027, 25.472382, 14.420577>,  <28.744387, 25.274494, 14.526768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829027, 25.472382, 14.420577>,  <28.970093, 25.802195, 14.243592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829027, 25.472382, 14.420577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123749, -0.427595, -0.895460,
		0.927531, -0.370553, 0.048763,
		-0.352666, -0.824532, 0.442463,
		28.723227, 25.225021, 14.553316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305262, 25.179235, 13.983845>,  <28.970093, 25.802195, 14.243592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305262, 25.179235, 13.983845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.948160, 25.053345, 14.112803>,  <28.733900, 24.977810, 14.190179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.948160, 25.053345, 14.112803>,  <29.305262, 25.179235, 13.983845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948160, 25.053345, 14.112803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097747, -0.563227, -0.820500,
		0.439814, -0.764018, 0.472060,
		-0.892754, -0.314725, 0.322396,
		28.680334, 24.958927, 14.209522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077896, 25.004740, 13.717860>,  <29.305262, 25.179235, 13.983845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077896, 25.004740, 13.717860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200365, 25.297976, 13.474931>,  <30.273846, 25.473917, 13.329173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200365, 25.297976, 13.474931>,  <30.077896, 25.004740, 13.717860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200365, 25.297976, 13.474931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560006, 0.377209, 0.737636,
		0.769840, -0.565947, -0.295043,
		0.306170, 0.733088, -0.607324,
		30.292215, 25.517902, 13.292733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755430, 25.058378, 13.861591>,  <30.077896, 25.004740, 13.717860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755430, 25.058378, 13.861591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705873, 25.413185, 13.683669>,  <30.676140, 25.626070, 13.576916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705873, 25.413185, 13.683669>,  <30.755430, 25.058378, 13.861591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705873, 25.413185, 13.683669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725975, 0.386614, 0.568762,
		0.676469, -0.252451, -0.691851,
		-0.123894, 0.887017, -0.444805,
		30.668705, 25.679291, 13.550227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448681, 25.345377, 13.685773>,  <30.755430, 25.058378, 13.861591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448681, 25.345377, 13.685773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.201372, 25.658884, 13.709270>,  <31.052986, 25.846989, 13.723368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.201372, 25.658884, 13.709270>,  <31.448681, 25.345377, 13.685773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201372, 25.658884, 13.709270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609067, 0.430538, 0.666089,
		0.496768, 0.447601, -0.743556,
		-0.618271, 0.783767, 0.058742,
		31.015890, 25.894014, 13.726892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835632, 25.927038, 13.720957>,  <31.448681, 25.345377, 13.685773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835632, 25.927038, 13.720957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493095, 26.053253, 13.884478>,  <31.287573, 26.128983, 13.982590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493095, 26.053253, 13.884478>,  <31.835632, 25.927038, 13.720957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493095, 26.053253, 13.884478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511748, 0.412371, 0.753700,
		0.069242, 0.854627, -0.514604,
		-0.856341, 0.315535, 0.408801,
		31.236193, 26.147913, 14.007118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964090, 26.684965, 13.957633>,  <31.835632, 25.927038, 13.720957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964090, 26.684965, 13.957633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.648943, 26.523582, 14.143746>,  <31.459854, 26.426754, 14.255414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.648943, 26.523582, 14.143746>,  <31.964090, 26.684965, 13.957633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648943, 26.523582, 14.143746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293481, 0.418240, 0.859619,
		-0.541418, 0.813818, -0.211111,
		-0.787868, -0.403456, 0.465283,
		31.412582, 26.402546, 14.283331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895414, 27.169092, 14.398141>,  <31.964090, 26.684965, 13.957633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895414, 27.169092, 14.398141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.675806, 26.868267, 14.544004>,  <31.544041, 26.687773, 14.631523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.675806, 26.868267, 14.544004>,  <31.895414, 27.169092, 14.398141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675806, 26.868267, 14.544004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060374, 0.399472, 0.914755,
		-0.833624, 0.524237, -0.173914,
		-0.549022, -0.752063, 0.364660,
		31.511099, 26.642649, 14.653402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366158, 27.521111, 14.784496>,  <31.895414, 27.169092, 14.398141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366158, 27.521111, 14.784496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475655, 27.156715, 14.907892>,  <31.541353, 26.938078, 14.981930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475655, 27.156715, 14.907892>,  <31.366158, 27.521111, 14.784496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475655, 27.156715, 14.907892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237604, 0.374853, 0.896119,
		-0.931992, -0.172009, 0.319068,
		0.273744, -0.910987, 0.308490,
		31.557777, 26.883419, 15.000440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131308, 28.241804, 15.159002>,  <31.366158, 27.521111, 14.784496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131308, 28.241804, 15.159002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263559, 28.544933, 14.934008>,  <31.342911, 28.726810, 14.799010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263559, 28.544933, 14.934008>,  <31.131308, 28.241804, 15.159002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263559, 28.544933, 14.934008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836621, -0.040470, -0.546285,
		-0.436750, 0.651205, 0.620629,
		0.330627, 0.757822, -0.562487,
		31.362747, 28.772280, 14.765262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637165, 28.758396, 15.143538>,  <31.131308, 28.241804, 15.159002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637165, 28.758396, 15.143538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873848, 28.749527, 14.821198>,  <31.015858, 28.744205, 14.627794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873848, 28.749527, 14.821198>,  <30.637165, 28.758396, 15.143538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873848, 28.749527, 14.821198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805839, -0.044239, -0.590480,
		-0.022558, 0.998775, -0.044044,
		0.591705, -0.022172, -0.805850,
		31.051359, 28.742876, 14.579444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169157, 29.074884, 14.675263>,  <30.637165, 28.758396, 15.143538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169157, 29.074884, 14.675263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471813, 28.899748, 14.481031>,  <30.653408, 28.794666, 14.364492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471813, 28.899748, 14.481031>,  <30.169157, 29.074884, 14.675263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471813, 28.899748, 14.481031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508449, 0.072889, -0.858002,
		0.411061, 0.896093, -0.167469,
		0.756643, -0.437840, -0.485580,
		30.698807, 28.768396, 14.335358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278145, 29.482786, 14.129955>,  <30.169157, 29.074884, 14.675263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278145, 29.482786, 14.129955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446476, 29.136513, 14.021516>,  <30.547474, 28.928749, 13.956452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446476, 29.136513, 14.021516>,  <30.278145, 29.482786, 14.129955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446476, 29.136513, 14.021516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644872, -0.075304, -0.760572,
		0.638000, 0.494893, -0.589946,
		0.420827, -0.865685, -0.271099,
		30.572723, 28.876808, 13.940187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404718, 29.476862, 13.347113>,  <30.278145, 29.482786, 14.129955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404718, 29.476862, 13.347113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381655, 29.089039, 13.442305>,  <30.367817, 28.856344, 13.499420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381655, 29.089039, 13.442305>,  <30.404718, 29.476862, 13.347113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381655, 29.089039, 13.442305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678070, -0.136924, -0.722130,
		0.732732, -0.203004, -0.649533,
		-0.057659, -0.969557, 0.237980,
		30.364357, 28.798172, 13.513699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384876, 29.056215, 12.708981>,  <30.404718, 29.476862, 13.347113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384876, 29.056215, 12.708981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.246214, 28.811861, 12.993698>,  <30.163017, 28.665249, 13.164529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.246214, 28.811861, 12.993698>,  <30.384876, 29.056215, 12.708981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246214, 28.811861, 12.993698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718539, -0.314838, -0.620144,
		0.602937, -0.726427, -0.329804,
		-0.346654, -0.610885, 0.711794,
		30.142218, 28.628595, 13.207236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192650, 28.443760, 12.401037>,  <30.384876, 29.056215, 12.708981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192650, 28.443760, 12.401037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965313, 28.400568, 12.727308>,  <29.828911, 28.374653, 12.923071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965313, 28.400568, 12.727308>,  <30.192650, 28.443760, 12.401037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965313, 28.400568, 12.727308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734409, -0.380413, -0.562075,
		0.370987, -0.918491, 0.136904,
		-0.568341, -0.107979, 0.815677,
		29.794811, 28.368174, 12.972012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709135, 27.867064, 12.249010>,  <30.192650, 28.443760, 12.401037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709135, 27.867064, 12.249010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553516, 28.008940, 12.589089>,  <29.460146, 28.094065, 12.793138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553516, 28.008940, 12.589089>,  <29.709135, 27.867064, 12.249010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553516, 28.008940, 12.589089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884525, -0.401703, -0.237170,
		0.257406, -0.844293, 0.470012,
		-0.389046, 0.354688, 0.850200,
		29.436802, 28.115347, 12.844150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495928, 27.330402, 12.576156>,  <29.709135, 27.867064, 12.249010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495928, 27.330402, 12.576156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275164, 27.638325, 12.704402>,  <29.142706, 27.823078, 12.781350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275164, 27.638325, 12.704402>,  <29.495928, 27.330402, 12.576156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275164, 27.638325, 12.704402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833143, -0.525433, -0.172605,
		0.035590, -0.362382, 0.931350,
		-0.551911, 0.769805, 0.320616,
		29.109591, 27.869267, 12.800587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.111439, 35.328098, 25.009375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761055, 35.412277, 24.835752>,  <35.550823, 35.462784, 24.731579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761055, 35.412277, 24.835752>,  <36.111439, 35.328098, 25.009375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761055, 35.412277, 24.835752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216522, -0.632538, -0.743649,
		-0.431057, -0.745390, 0.508512,
		-0.875961, 0.210451, -0.434053,
		35.498268, 35.475414, 24.705536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946125, 34.694855, 24.643740>,  <36.111439, 35.328098, 25.009375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946125, 34.694855, 24.643740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725609, 34.990818, 24.489534>,  <35.593300, 35.168396, 24.397011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725609, 34.990818, 24.489534>,  <35.946125, 34.694855, 24.643740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725609, 34.990818, 24.489534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007801, -0.466624, -0.884422,
		-0.834279, -0.484563, 0.263016,
		-0.551287, 0.739906, -0.385514,
		35.560223, 35.212791, 24.373880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417416, 34.374187, 24.252831>,  <35.946125, 34.694855, 24.643740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417416, 34.374187, 24.252831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439545, 34.747696, 24.111406>,  <35.452824, 34.971802, 24.026552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439545, 34.747696, 24.111406>,  <35.417416, 34.374187, 24.252831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439545, 34.747696, 24.111406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097901, -0.357469, -0.928779,
		-0.993657, 0.016773, -0.111195,
		0.055327, 0.933774, -0.353560,
		35.456142, 35.027828, 24.005339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852005, 34.562717, 23.809599>,  <35.417416, 34.374187, 24.252831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852005, 34.562717, 23.809599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159378, 34.793915, 23.699734>,  <35.343800, 34.932632, 23.633814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159378, 34.793915, 23.699734>,  <34.852005, 34.562717, 23.809599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159378, 34.793915, 23.699734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062470, -0.359405, -0.931089,
		-0.636878, 0.732634, -0.240070,
		0.768430, 0.577992, -0.274665,
		35.389908, 34.967312, 23.617334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739212, 34.872471, 23.182804>,  <34.852005, 34.562717, 23.809599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739212, 34.872471, 23.182804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138885, 34.888603, 23.181622>,  <35.378689, 34.898281, 23.180912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138885, 34.888603, 23.181622>,  <34.739212, 34.872471, 23.182804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138885, 34.888603, 23.181622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015633, -0.452678, -0.891537,
		-0.037292, 0.890762, -0.452938,
		0.999182, 0.040328, -0.002956,
		35.438641, 34.900700, 23.180735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890308, 35.342491, 22.558266>,  <34.739212, 34.872471, 23.182804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890308, 35.342491, 22.558266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209156, 35.125740, 22.664831>,  <35.400463, 34.995689, 22.728769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209156, 35.125740, 22.664831>,  <34.890308, 35.342491, 22.558266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209156, 35.125740, 22.664831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039670, -0.487248, -0.872362,
		0.602523, 0.684804, -0.409890,
		0.797115, -0.541878, 0.266412,
		35.448292, 34.963177, 22.744755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085606, 35.161594, 21.927689>,  <34.890308, 35.342491, 22.558266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085606, 35.161594, 21.927689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305679, 34.912514, 22.150232>,  <35.437725, 34.763065, 22.283758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305679, 34.912514, 22.150232>,  <35.085606, 35.161594, 21.927689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305679, 34.912514, 22.150232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066181, -0.631653, -0.772421,
		0.832414, 0.461797, -0.306317,
		0.550188, -0.622702, 0.556359,
		35.470737, 34.725704, 22.317141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675678, 34.911217, 21.464315>,  <35.085606, 35.161594, 21.927689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675678, 34.911217, 21.464315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632786, 34.645512, 21.760221>,  <35.607052, 34.486088, 21.937765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632786, 34.645512, 21.760221>,  <35.675678, 34.911217, 21.464315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632786, 34.645512, 21.760221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002631, -0.744241, -0.667906,
		0.994231, -0.069673, 0.081553,
		-0.107231, -0.664268, 0.739764,
		35.600616, 34.446232, 21.982151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220833, 34.342751, 21.406370>,  <35.675678, 34.911217, 21.464315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220833, 34.342751, 21.406370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950954, 34.177715, 21.651175>,  <35.789028, 34.078693, 21.798058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950954, 34.177715, 21.651175>,  <36.220833, 34.342751, 21.406370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950954, 34.177715, 21.651175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000410, -0.828967, -0.559297,
		0.738097, -0.377606, 0.559131,
		-0.674695, -0.412586, 0.612013,
		35.748547, 34.053940, 21.834778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404709, 33.635284, 21.551163>,  <36.220833, 34.342751, 21.406370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404709, 33.635284, 21.551163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013161, 33.636898, 21.632942>,  <35.778233, 33.637867, 21.682011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013161, 33.636898, 21.632942>,  <36.404709, 33.635284, 21.551163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013161, 33.636898, 21.632942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156714, -0.657097, -0.737336,
		0.131368, -0.753795, 0.643844,
		-0.978868, 0.004037, 0.204451,
		35.719501, 33.638111, 21.694277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188705, 32.923244, 21.758327>,  <36.404709, 33.635284, 21.551163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188705, 32.923244, 21.758327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877228, 33.139381, 21.630789>,  <35.690342, 33.269066, 21.554266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877228, 33.139381, 21.630789>,  <36.188705, 32.923244, 21.758327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877228, 33.139381, 21.630789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135349, -0.640910, -0.755589,
		-0.612630, -0.545218, 0.572208,
		-0.778695, 0.540344, -0.318846,
		35.643620, 33.301483, 21.535135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852566, 32.396706, 21.412924>,  <36.188705, 32.923244, 21.758327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852566, 32.396706, 21.412924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653595, 32.717041, 21.279520>,  <35.534210, 32.909241, 21.199478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653595, 32.717041, 21.279520>,  <35.852566, 32.396706, 21.412924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653595, 32.717041, 21.279520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330602, -0.530434, -0.780604,
		-0.802038, -0.278037, 0.528611,
		-0.497430, 0.800834, -0.333508,
		35.504364, 32.957291, 21.179468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712677, 31.677174, 21.603815>,  <35.852566, 32.396706, 21.412924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712677, 31.677174, 21.603815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878197, 31.317303, 21.548180>,  <35.977509, 31.101379, 21.514799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878197, 31.317303, 21.548180>,  <35.712677, 31.677174, 21.603815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878197, 31.317303, 21.548180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723073, 0.231984, 0.650654,
		-0.553114, -0.369811, 0.746529,
		0.413801, -0.899680, -0.139086,
		36.002338, 31.047400, 21.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543968, 31.345821, 22.178072>,  <35.712677, 31.677174, 21.603815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543968, 31.345821, 22.178072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874416, 31.166098, 22.042048>,  <36.072685, 31.058264, 21.960434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874416, 31.166098, 22.042048>,  <35.543968, 31.345821, 22.178072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874416, 31.166098, 22.042048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480028, 0.245095, 0.842319,
		-0.295115, -0.859098, 0.418160,
		0.826123, -0.449309, -0.340060,
		36.122253, 31.031305, 21.940029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755234, 30.865135, 22.711723>,  <35.543968, 31.345821, 22.178072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755234, 30.865135, 22.711723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074135, 30.920424, 22.476679>,  <36.265476, 30.953596, 22.335651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074135, 30.920424, 22.476679>,  <35.755234, 30.865135, 22.711723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074135, 30.920424, 22.476679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579976, 0.094548, 0.809129,
		0.167396, -0.985878, -0.004787,
		0.797250, 0.138222, -0.587612,
		36.313309, 30.961889, 22.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229664, 30.371944, 22.971863>,  <35.755234, 30.865135, 22.711723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229664, 30.371944, 22.971863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396515, 30.679827, 22.778551>,  <36.496624, 30.864555, 22.662563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396515, 30.679827, 22.778551>,  <36.229664, 30.371944, 22.971863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396515, 30.679827, 22.778551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579742, 0.184172, 0.793713,
		0.699931, -0.611256, -0.369407,
		0.417128, 0.769705, -0.483279,
		36.521652, 30.910738, 22.633568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982723, 30.207968, 22.940542>,  <36.229664, 30.371944, 22.971863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982723, 30.207968, 22.940542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920681, 30.602234, 22.914000>,  <36.883457, 30.838795, 22.898075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920681, 30.602234, 22.914000>,  <36.982723, 30.207968, 22.940542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920681, 30.602234, 22.914000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545803, 0.141486, 0.825882,
		0.823433, 0.091880, -0.559925,
		-0.155103, 0.985667, -0.066356,
		36.874149, 30.897934, 22.894093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728428, 30.527918, 23.126219>,  <36.982723, 30.207968, 22.940542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728428, 30.527918, 23.126219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464985, 30.826818, 23.161682>,  <37.306919, 31.006159, 23.182961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464985, 30.826818, 23.161682>,  <37.728428, 30.527918, 23.126219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464985, 30.826818, 23.161682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283140, 0.136926, 0.949254,
		0.697190, 0.650284, -0.301756,
		-0.658603, 0.747249, 0.088658,
		37.267403, 31.050993, 23.188280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110229, 31.010706, 23.398340>,  <37.728428, 30.527918, 23.126219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110229, 31.010706, 23.398340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.744644, 31.154097, 23.474413>,  <37.525295, 31.240131, 23.520056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.744644, 31.154097, 23.474413>,  <38.110229, 31.010706, 23.398340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744644, 31.154097, 23.474413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304694, 0.296678, 0.905065,
		0.268024, 0.885141, -0.380379,
		-0.913961, 0.358478, 0.190180,
		37.470455, 31.261641, 23.531467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182861, 31.710484, 23.641441>,  <38.110229, 31.010706, 23.398340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182861, 31.710484, 23.641441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815517, 31.613165, 23.766289>,  <37.595112, 31.554773, 23.841198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815517, 31.613165, 23.766289>,  <38.182861, 31.710484, 23.641441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815517, 31.613165, 23.766289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272656, 0.182640, 0.944617,
		-0.286829, 0.952601, -0.101393,
		-0.918362, -0.243298, 0.312118,
		37.540009, 31.540176, 23.859924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824108, 32.340458, 24.030155>,  <38.182861, 31.710484, 23.641441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824108, 32.340458, 24.030155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630592, 32.019199, 24.169237>,  <37.514481, 31.826445, 24.252686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630592, 32.019199, 24.169237>,  <37.824108, 32.340458, 24.030155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630592, 32.019199, 24.169237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009688, 0.392355, 0.919763,
		-0.875128, 0.448344, -0.182038,
		-0.483794, -0.803147, 0.347704,
		37.485455, 31.778255, 24.273548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414585, 32.556465, 24.668081>,  <37.824108, 32.340458, 24.030155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414585, 32.556465, 24.668081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393963, 32.158710, 24.705051>,  <37.381588, 31.920059, 24.727234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393963, 32.158710, 24.705051>,  <37.414585, 32.556465, 24.668081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393963, 32.158710, 24.705051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202098, 0.080243, 0.976072,
		-0.978007, 0.069002, 0.196826,
		-0.051557, -0.994384, 0.092423,
		37.378494, 31.860395, 24.732779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837811, 32.332382, 25.097670>,  <37.414585, 32.556465, 24.668081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837811, 32.332382, 25.097670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112076, 32.041218, 25.095779>,  <37.276634, 31.866520, 25.094646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112076, 32.041218, 25.095779>,  <36.837811, 32.332382, 25.097670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112076, 32.041218, 25.095779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024970, -0.030006, 0.999238,
		-0.727493, -0.685020, -0.038749,
		0.685660, -0.727906, -0.004724,
		37.317776, 31.822845, 25.094362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654362, 31.921207, 25.590910>,  <36.837811, 32.332382, 25.097670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654362, 31.921207, 25.590910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030109, 31.793917, 25.539810>,  <37.255558, 31.717543, 25.509151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030109, 31.793917, 25.539810>,  <36.654362, 31.921207, 25.590910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030109, 31.793917, 25.539810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153414, 0.056830, 0.986527,
		-0.306681, -0.946309, 0.102205,
		0.939368, -0.318228, -0.127748,
		37.311920, 31.698448, 25.501486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787586, 31.328390, 26.111444>,  <36.654362, 31.921207, 25.590910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787586, 31.328390, 26.111444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162064, 31.432249, 26.016684>,  <37.386749, 31.494564, 25.959827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162064, 31.432249, 26.016684>,  <36.787586, 31.328390, 26.111444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162064, 31.432249, 26.016684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229082, 0.060446, 0.971529,
		0.266575, -0.963810, -0.002891,
		0.936194, 0.259647, -0.236905,
		37.442921, 31.510143, 25.945612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246582, 30.797258, 26.404799>,  <36.787586, 31.328390, 26.111444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246582, 30.797258, 26.404799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482674, 31.108835, 26.320066>,  <37.624329, 31.295782, 26.269226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482674, 31.108835, 26.320066>,  <37.246582, 30.797258, 26.404799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482674, 31.108835, 26.320066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236166, 0.084307, 0.968048,
		0.771913, -0.621402, -0.134199,
		0.590233, 0.778943, -0.211832,
		37.659744, 31.342518, 26.256517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030312, 30.309719, 25.921890>,  <37.246582, 30.797258, 26.404799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030312, 30.309719, 25.921890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916973, 29.931931, 25.855328>,  <36.848972, 29.705257, 25.815390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916973, 29.931931, 25.855328>,  <37.030312, 30.309719, 25.921890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916973, 29.931931, 25.855328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655695, 0.064161, 0.752295,
		-0.699844, 0.322271, -0.637464,
		-0.283343, -0.944471, -0.166408,
		36.831970, 29.648590, 25.805405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193935, 30.228649, 25.793287>,  <37.030312, 30.309719, 25.921890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193935, 30.228649, 25.793287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410908, 29.957680, 25.992031>,  <36.541092, 29.795099, 26.111277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410908, 29.957680, 25.992031>,  <36.193935, 30.228649, 25.793287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410908, 29.957680, 25.992031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530815, 0.182046, 0.827704,
		-0.651156, -0.712713, -0.260838,
		0.542431, -0.677421, 0.496859,
		36.573639, 29.754454, 26.141088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087986, 29.471237, 25.750151>,  <36.193935, 30.228649, 25.793287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087986, 29.471237, 25.750151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781582, 29.616203, 25.962519>,  <35.597740, 29.703182, 26.089939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781582, 29.616203, 25.962519>,  <36.087986, 29.471237, 25.750151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781582, 29.616203, 25.962519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543168, 0.076795, -0.836105,
		-0.343790, -0.928847, 0.138027,
		-0.766014, 0.362416, 0.530922,
		35.551777, 29.724928, 26.121796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466621, 29.077959, 25.766811>,  <36.087986, 29.471237, 25.750151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466621, 29.077959, 25.766811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367374, 29.463444, 25.806202>,  <35.307827, 29.694735, 25.829836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367374, 29.463444, 25.806202>,  <35.466621, 29.077959, 25.766811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367374, 29.463444, 25.806202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339822, 0.008609, -0.940451,
		-0.907170, -0.266810, 0.325354,
		-0.248120, 0.963711, 0.098478,
		35.292938, 29.752558, 25.835745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721813, 29.183969, 25.707468>,  <35.466621, 29.077959, 25.766811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721813, 29.183969, 25.707468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932674, 29.502600, 25.589090>,  <35.059189, 29.693777, 25.518064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932674, 29.502600, 25.589090>,  <34.721813, 29.183969, 25.707468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932674, 29.502600, 25.589090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543236, 0.048089, -0.838202,
		-0.653459, 0.602624, 0.458078,
		0.527149, 0.796575, -0.295942,
		35.090820, 29.741571, 25.500307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319466, 29.466780, 25.251516>,  <34.721813, 29.183969, 25.707468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319466, 29.466780, 25.251516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636326, 29.704130, 25.194389>,  <34.826443, 29.846540, 25.160112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636326, 29.704130, 25.194389>,  <34.319466, 29.466780, 25.251516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636326, 29.704130, 25.194389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370177, 0.281074, -0.885419,
		-0.485246, 0.754254, 0.442309,
		0.792152, 0.593378, -0.142818,
		34.873970, 29.882143, 25.151545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101143, 30.176846, 25.138340>,  <34.319466, 29.466780, 25.251516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101143, 30.176846, 25.138340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447208, 30.122377, 24.945280>,  <34.654846, 30.089697, 24.829443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447208, 30.122377, 24.945280>,  <34.101143, 30.176846, 25.138340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447208, 30.122377, 24.945280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417195, 0.338641, -0.843369,
		0.278287, 0.931010, 0.236170,
		0.865162, -0.136170, -0.482652,
		34.706757, 30.081526, 24.800484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048790, 30.688725, 24.772821>,  <34.101143, 30.176846, 25.138340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048790, 30.688725, 24.772821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342369, 30.464888, 24.618851>,  <34.518517, 30.330585, 24.526468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342369, 30.464888, 24.618851>,  <34.048790, 30.688725, 24.772821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342369, 30.464888, 24.618851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335625, 0.193896, -0.921824,
		0.590483, 0.805767, -0.045503,
		0.733952, -0.559593, -0.384928,
		34.562553, 30.297010, 24.503372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296825, 31.046223, 24.071400>,  <34.048790, 30.688725, 24.772821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296825, 31.046223, 24.071400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381680, 30.655493, 24.059986>,  <34.432590, 30.421055, 24.053139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381680, 30.655493, 24.059986>,  <34.296825, 31.046223, 24.071400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381680, 30.655493, 24.059986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257064, -0.027609, -0.966000,
		0.942823, 0.212258, -0.256963,
		0.212136, -0.976824, -0.028533,
		34.445320, 30.362446, 24.051426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702290, 30.973530, 23.472694>,  <34.296825, 31.046223, 24.071400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702290, 30.973530, 23.472694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553070, 30.616480, 23.573927>,  <34.463539, 30.402250, 23.634666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553070, 30.616480, 23.573927>,  <34.702290, 30.973530, 23.472694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553070, 30.616480, 23.573927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370168, -0.106933, -0.922790,
		0.850768, -0.437933, -0.290530,
		-0.373053, -0.892625, 0.253084,
		34.441154, 30.348692, 23.649853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716148, 30.668924, 22.871035>,  <34.702290, 30.973530, 23.472694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716148, 30.668924, 22.871035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467033, 30.459160, 23.103285>,  <34.317562, 30.333302, 23.242634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467033, 30.459160, 23.103285>,  <34.716148, 30.668924, 22.871035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467033, 30.459160, 23.103285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594783, -0.164789, -0.786815,
		0.508295, -0.835367, -0.209282,
		-0.622791, -0.524411, 0.580624,
		34.280197, 30.301836, 23.277472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635906, 30.005159, 22.602785>,  <34.716148, 30.668924, 22.871035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635906, 30.005159, 22.602785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317997, 30.064293, 22.838234>,  <34.127251, 30.099773, 22.979504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317997, 30.064293, 22.838234>,  <34.635906, 30.005159, 22.602785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317997, 30.064293, 22.838234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604598, -0.277317, -0.746698,
		0.052848, -0.949337, 0.309784,
		-0.794776, 0.147833, 0.588622,
		34.079563, 30.108643, 23.014820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163261, 29.355446, 22.679735>,  <34.635906, 30.005159, 22.602785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163261, 29.355446, 22.679735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908470, 29.653801, 22.757618>,  <33.755596, 29.832815, 22.804348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908470, 29.653801, 22.757618>,  <34.163261, 29.355446, 22.679735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908470, 29.653801, 22.757618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631872, -0.360502, -0.686131,
		-0.441588, -0.560075, 0.700939,
		-0.636975, 0.745891, 0.194702,
		33.717377, 29.877567, 22.816029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512928, 29.068705, 22.664225>,  <34.163261, 29.355446, 22.679735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512928, 29.068705, 22.664225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398788, 29.450661, 22.631346>,  <33.330303, 29.679834, 22.611618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398788, 29.450661, 22.631346>,  <33.512928, 29.068705, 22.664225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398788, 29.450661, 22.631346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693595, -0.264933, -0.669878,
		-0.661438, -0.134138, 0.737907,
		-0.285352, 0.954891, -0.082199,
		33.313183, 29.737127, 22.606686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696407, 29.113350, 22.779926>,  <33.512928, 29.068705, 22.664225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696407, 29.113350, 22.779926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770954, 29.453554, 22.583195>,  <32.815681, 29.657677, 22.465155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770954, 29.453554, 22.583195>,  <32.696407, 29.113350, 22.779926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770954, 29.453554, 22.583195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756582, -0.195121, -0.624109,
		-0.626778, 0.488425, 0.607117,
		0.186369, 0.850512, -0.491831,
		32.826866, 29.708708, 22.435646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076946, 29.367588, 22.488605>,  <32.696407, 29.113350, 22.779926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076946, 29.367588, 22.488605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358231, 29.547880, 22.268667>,  <32.527000, 29.656055, 22.136703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358231, 29.547880, 22.268667>,  <32.076946, 29.367588, 22.488605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358231, 29.547880, 22.268667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478070, -0.272662, -0.834928,
		-0.526250, 0.849998, 0.023741,
		0.703214, 0.450731, -0.549847,
		32.569195, 29.683100, 22.103714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720869, 29.794180, 21.932108>,  <32.076946, 29.367588, 22.488605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720869, 29.794180, 21.932108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104088, 29.761812, 21.822124>,  <32.334019, 29.742392, 21.756134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104088, 29.761812, 21.822124>,  <31.720869, 29.794180, 21.932108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104088, 29.761812, 21.822124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286541, -0.248329, -0.925325,
		0.006596, 0.965290, -0.261097,
		0.958045, -0.080918, -0.274957,
		32.391502, 29.737537, 21.739637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659506, 30.190418, 21.393955>,  <31.720869, 29.794180, 21.932108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659506, 30.190418, 21.393955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988573, 29.966045, 21.356916>,  <32.186012, 29.831423, 21.334692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988573, 29.966045, 21.356916>,  <31.659506, 30.190418, 21.393955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988573, 29.966045, 21.356916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348059, -0.368143, -0.862163,
		0.449524, 0.741504, -0.498097,
		0.822668, -0.560930, -0.092598,
		32.235374, 29.797766, 21.329138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686989, 30.104469, 20.706331>,  <31.659506, 30.190418, 21.393955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686989, 30.104469, 20.706331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955873, 29.830074, 20.817726>,  <32.117203, 29.665438, 20.884563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955873, 29.830074, 20.817726>,  <31.686989, 30.104469, 20.706331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955873, 29.830074, 20.817726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275378, -0.580827, -0.766033,
		0.687241, 0.438247, -0.579344,
		0.672210, -0.685988, 0.278485,
		32.157536, 29.624277, 20.901272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085892, 29.917465, 20.127136>,  <31.686989, 30.104469, 20.706331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085892, 29.917465, 20.127136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127640, 29.598801, 20.365276>,  <32.152687, 29.407602, 20.508160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127640, 29.598801, 20.365276>,  <32.085892, 29.917465, 20.127136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127640, 29.598801, 20.365276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261705, -0.599521, -0.756363,
		0.959488, -0.076863, -0.271062,
		0.104371, -0.796660, 0.595348,
		32.158951, 29.359802, 20.543880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410324, 29.397467, 19.692972>,  <32.085892, 29.917465, 20.127136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410324, 29.397467, 19.692972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241032, 29.186687, 19.987782>,  <32.139458, 29.060221, 20.164667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241032, 29.186687, 19.987782>,  <32.410324, 29.397467, 19.692972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241032, 29.186687, 19.987782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438206, -0.592944, -0.675568,
		0.793003, -0.608888, 0.020040,
		-0.423228, -0.526946, 0.737025,
		32.114063, 29.028605, 20.208889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487572, 28.663147, 19.542843>,  <32.410324, 29.397467, 19.692972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487572, 28.663147, 19.542843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192535, 28.671217, 19.812820>,  <32.015514, 28.676060, 19.974808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192535, 28.671217, 19.812820>,  <32.487572, 28.663147, 19.542843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192535, 28.671217, 19.812820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480409, -0.718096, -0.503533,
		0.474516, -0.695651, 0.539355,
		-0.737592, 0.020176, 0.674945,
		31.971258, 28.677269, 20.015305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259190, 28.012465, 19.506832>,  <32.487572, 28.663147, 19.542843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259190, 28.012465, 19.506832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968245, 28.190050, 19.716150>,  <31.793676, 28.296602, 19.841742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968245, 28.190050, 19.716150>,  <32.259190, 28.012465, 19.506832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968245, 28.190050, 19.716150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678648, -0.578547, -0.452459,
		0.101873, -0.684235, 0.722111,
		-0.727364, 0.443966, 0.523293,
		31.750036, 28.323240, 19.873138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859087, 27.497923, 19.866634>,  <32.259190, 28.012465, 19.506832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859087, 27.497923, 19.866634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.635376, 27.826525, 19.822197>,  <31.501150, 28.023685, 19.795534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.635376, 27.826525, 19.822197>,  <31.859087, 27.497923, 19.866634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635376, 27.826525, 19.822197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731021, -0.551933, -0.401222,
		-0.390921, -0.143183, 0.909219,
		-0.559276, 0.821504, -0.111093,
		31.467594, 28.072975, 19.788870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249285, 27.289295, 20.083359>,  <31.859087, 27.497923, 19.866634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249285, 27.289295, 20.083359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.180952, 27.609297, 19.853294>,  <31.139954, 27.801298, 19.715256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.180952, 27.609297, 19.853294>,  <31.249285, 27.289295, 20.083359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180952, 27.609297, 19.853294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773451, -0.470515, -0.424724,
		-0.610402, 0.372303, 0.699142,
		-0.170831, 0.800004, -0.575161,
		31.129704, 27.849298, 19.680746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473963, 27.385777, 20.092007>,  <31.249285, 27.289295, 20.083359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473963, 27.385777, 20.092007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614361, 27.569756, 19.765755>,  <30.698599, 27.680143, 19.570004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614361, 27.569756, 19.765755>,  <30.473963, 27.385777, 20.092007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614361, 27.569756, 19.765755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704236, -0.444414, -0.553667,
		-0.617135, 0.768730, 0.167924,
		0.350993, 0.459945, -0.815631,
		30.719658, 27.707739, 19.521065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884741, 27.619995, 19.715597>,  <30.473963, 27.385777, 20.092007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884741, 27.619995, 19.715597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190777, 27.582249, 19.460808>,  <30.374397, 27.559601, 19.307934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190777, 27.582249, 19.460808>,  <29.884741, 27.619995, 19.715597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190777, 27.582249, 19.460808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612235, -0.413105, -0.674175,
		-0.199517, 0.905781, -0.373836,
		0.765089, -0.094366, -0.636973,
		30.420303, 27.553938, 19.269716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572823, 27.814898, 19.165339>,  <29.884741, 27.619995, 19.715597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572823, 27.814898, 19.165339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897261, 27.615629, 19.042732>,  <30.091925, 27.496069, 18.969170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897261, 27.615629, 19.042732>,  <29.572823, 27.814898, 19.165339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897261, 27.615629, 19.042732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531027, -0.407469, -0.742953,
		0.245221, 0.765373, -0.595038,
		0.811096, -0.498169, -0.306514,
		30.140589, 27.466179, 18.950779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267872, 28.402939, 18.786415>,  <29.572823, 27.814898, 19.165339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267872, 28.402939, 18.786415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.890512, 28.447115, 18.911510>,  <28.664097, 28.473619, 18.986568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.890512, 28.447115, 18.911510>,  <29.267872, 28.402939, 18.786415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890512, 28.447115, 18.911510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331595, 0.333698, 0.882435,
		-0.006905, 0.936189, -0.351430,
		-0.943397, 0.110439, 0.312740,
		28.607494, 28.480247, 19.005333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185097, 29.108456, 19.166712>,  <29.267872, 28.402939, 18.786415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185097, 29.108456, 19.166712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.854765, 28.912405, 19.278267>,  <28.656565, 28.794775, 19.345200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.854765, 28.912405, 19.278267>,  <29.185097, 29.108456, 19.166712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854765, 28.912405, 19.278267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114102, 0.339090, 0.933809,
		-0.552253, 0.802990, -0.224107,
		-0.825832, -0.490127, 0.278887,
		28.607016, 28.765368, 19.361933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704773, 29.603790, 19.526861>,  <29.185097, 29.108456, 19.166712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704773, 29.603790, 19.526861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.599483, 29.242266, 19.661821>,  <28.536310, 29.025351, 19.742798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.599483, 29.242266, 19.661821>,  <28.704773, 29.603790, 19.526861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599483, 29.242266, 19.661821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146057, 0.308370, 0.939987,
		-0.953614, 0.296707, 0.050837,
		-0.263224, -0.903810, 0.337402,
		28.520515, 28.971123, 19.763042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167068, 29.660261, 20.093967>,  <28.704773, 29.603790, 19.526861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167068, 29.660261, 20.093967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.320482, 29.295416, 20.151865>,  <28.412531, 29.076509, 20.186604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.320482, 29.295416, 20.151865>,  <28.167068, 29.660261, 20.093967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320482, 29.295416, 20.151865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000219, 0.156822, 0.987627,
		-0.923526, -0.378757, 0.060347,
		0.383535, -0.912113, 0.144746,
		28.435543, 29.021782, 20.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884014, 29.526794, 20.723969>,  <28.167068, 29.660261, 20.093967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884014, 29.526794, 20.723969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.177713, 29.260130, 20.672668>,  <28.353933, 29.100132, 20.641888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.177713, 29.260130, 20.672668>,  <27.884014, 29.526794, 20.723969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177713, 29.260130, 20.672668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195914, 0.027200, 0.980244,
		-0.650001, -0.744866, 0.150580,
		0.734246, -0.666660, -0.128250,
		28.397987, 29.060133, 20.634193>
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
