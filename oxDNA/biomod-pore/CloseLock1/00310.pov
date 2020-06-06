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
	<24.581545, 35.400009, 34.895096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389488, 35.052418, 34.943001>,  <24.274254, 34.843864, 34.971745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389488, 35.052418, 34.943001>,  <24.581545, 35.400009, 34.895096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389488, 35.052418, 34.943001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642810, -0.441454, -0.626030,
		0.596873, -0.223602, 0.770548,
		-0.480143, -0.868977, 0.119758,
		24.245445, 34.791725, 34.978928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080294, 34.843498, 35.202175>,  <24.581545, 35.400009, 34.895096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080294, 34.843498, 35.202175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793001, 34.676846, 34.979263>,  <24.620626, 34.576855, 34.845516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793001, 34.676846, 34.979263>,  <25.080294, 34.843498, 35.202175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793001, 34.676846, 34.979263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691510, -0.516257, -0.505266,
		-0.077187, -0.748261, 0.658899,
		-0.718231, -0.416635, -0.557278,
		24.577532, 34.551853, 34.812080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199842, 34.010239, 35.080616>,  <25.080294, 34.843498, 35.202175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199842, 34.010239, 35.080616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997807, 34.146389, 34.763371>,  <24.876585, 34.228081, 34.573025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997807, 34.146389, 34.763371>,  <25.199842, 34.010239, 35.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997807, 34.146389, 34.763371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686438, -0.398594, -0.608215,
		-0.523153, -0.851626, -0.032322,
		-0.505088, 0.340376, -0.793114,
		24.846279, 34.248501, 34.525436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729532, 33.531853, 35.555058>,  <25.199842, 34.010239, 35.080616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729532, 33.531853, 35.555058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935610, 33.737988, 35.828991>,  <26.059258, 33.861668, 35.993351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935610, 33.737988, 35.828991>,  <25.729532, 33.531853, 35.555058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935610, 33.737988, 35.828991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639032, 0.301508, -0.707623,
		-0.571148, 0.802197, -0.173982,
		0.515196, 0.515338, 0.684836,
		26.090168, 33.892590, 36.034443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936560, 34.048218, 35.221954>,  <25.729532, 33.531853, 35.555058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936560, 34.048218, 35.221954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189026, 34.023865, 35.531258>,  <26.340506, 34.009254, 35.716839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189026, 34.023865, 35.531258>,  <25.936560, 34.048218, 35.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189026, 34.023865, 35.531258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757356, 0.263606, -0.597431,
		-0.167463, 0.962707, 0.212488,
		0.631164, -0.060881, 0.773256,
		26.378376, 34.005600, 35.763233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802507, 34.257809, 34.638023>,  <25.936560, 34.048218, 35.221954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802507, 34.257809, 34.638023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177773, 34.361992, 34.729248>,  <26.402931, 34.424503, 34.783981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177773, 34.361992, 34.729248>,  <25.802507, 34.257809, 34.638023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177773, 34.361992, 34.729248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321294, -0.409749, -0.853743,
		-0.128919, 0.874223, -0.468095,
		0.938163, 0.260460, 0.228058,
		26.459221, 34.440128, 34.797665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056547, 34.547264, 34.079208>,  <25.802507, 34.257809, 34.638023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056547, 34.547264, 34.079208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385044, 34.452290, 34.286739>,  <26.582142, 34.395306, 34.411259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385044, 34.452290, 34.286739>,  <26.056547, 34.547264, 34.079208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385044, 34.452290, 34.286739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364301, -0.481637, -0.797064,
		0.439140, 0.843593, -0.309042,
		0.821244, -0.237438, 0.518828,
		26.631416, 34.381058, 34.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585390, 34.732758, 33.674770>,  <26.056547, 34.547264, 34.079208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585390, 34.732758, 33.674770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704746, 34.446800, 33.927719>,  <26.776360, 34.275227, 34.079487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704746, 34.446800, 33.927719>,  <26.585390, 34.732758, 33.674770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704746, 34.446800, 33.927719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297497, -0.559881, -0.773323,
		0.906895, 0.418879, 0.045617,
		0.298389, -0.714894, 0.632369,
		26.794264, 34.232330, 34.117432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231730, 34.557518, 33.447205>,  <26.585390, 34.732758, 33.674770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231730, 34.557518, 33.447205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102322, 34.232197, 33.640644>,  <27.024677, 34.037003, 33.756710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102322, 34.232197, 33.640644>,  <27.231730, 34.557518, 33.447205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102322, 34.232197, 33.640644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147513, -0.548188, -0.823244,
		0.934653, -0.194997, 0.297322,
		-0.323518, -0.813306, 0.483601,
		27.005266, 33.988205, 33.785725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668468, 34.104366, 33.212364>,  <27.231730, 34.557518, 33.447205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668468, 34.104366, 33.212364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419027, 33.838764, 33.377396>,  <27.269363, 33.679405, 33.476414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419027, 33.838764, 33.377396>,  <27.668468, 34.104366, 33.212364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419027, 33.838764, 33.377396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237498, -0.663746, -0.709250,
		0.744792, -0.344302, 0.571612,
		-0.623602, -0.664001, 0.412582,
		27.231947, 33.639565, 33.501171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042295, 33.503658, 33.321884>,  <27.668468, 34.104366, 33.212364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042295, 33.503658, 33.321884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656136, 33.404327, 33.290031>,  <27.424440, 33.344730, 33.270920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656136, 33.404327, 33.290031>,  <28.042295, 33.503658, 33.321884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656136, 33.404327, 33.290031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250385, -0.797268, -0.549246,
		0.072906, -0.550179, 0.831858,
		-0.965397, -0.248328, -0.079631,
		27.366516, 33.329830, 33.266144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109829, 32.775551, 33.473526>,  <28.042295, 33.503658, 33.321884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109829, 32.775551, 33.473526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757631, 32.838902, 33.294800>,  <27.546312, 32.876911, 33.187565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757631, 32.838902, 33.294800>,  <28.109829, 32.775551, 33.473526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757631, 32.838902, 33.294800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166746, -0.778845, -0.604645,
		-0.443761, -0.606893, 0.659362,
		-0.880496, 0.158372, -0.446818,
		27.493483, 32.886414, 33.160755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676907, 32.128494, 33.377232>,  <28.109829, 32.775551, 33.473526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676907, 32.128494, 33.377232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527388, 32.395107, 33.119236>,  <27.437675, 32.555073, 32.964439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527388, 32.395107, 33.119236>,  <27.676907, 32.128494, 33.377232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527388, 32.395107, 33.119236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110185, -0.658564, -0.744414,
		-0.920942, -0.349329, 0.172728,
		-0.373798, 0.666530, -0.644990,
		27.415249, 32.595066, 32.925739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460667, 31.722000, 32.874516>,  <27.676907, 32.128494, 33.377232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460667, 31.722000, 32.874516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405167, 32.061928, 32.671124>,  <27.371866, 32.265884, 32.549088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405167, 32.061928, 32.671124>,  <27.460667, 31.722000, 32.874516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405167, 32.061928, 32.671124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038637, -0.517703, -0.854687,
		-0.989573, -0.098942, 0.104666,
		-0.138750, 0.849820, -0.508483,
		27.363541, 32.316875, 32.518578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861261, 31.585634, 32.497929>,  <27.460667, 31.722000, 32.874516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861261, 31.585634, 32.497929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059851, 31.875095, 32.306164>,  <27.179005, 32.048771, 32.191105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059851, 31.875095, 32.306164>,  <26.861261, 31.585634, 32.497929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059851, 31.875095, 32.306164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239514, -0.416650, -0.876947,
		-0.834355, 0.550206, -0.033529,
		0.496472, 0.723654, -0.479416,
		27.208792, 32.092194, 32.162338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376678, 31.870325, 31.890409>,  <26.861261, 31.585634, 32.497929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376678, 31.870325, 31.890409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769325, 31.923107, 31.835253>,  <27.004913, 31.954777, 31.802158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769325, 31.923107, 31.835253>,  <26.376678, 31.870325, 31.890409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769325, 31.923107, 31.835253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093665, -0.296441, -0.950447,
		-0.166294, 0.945891, -0.278632,
		0.981618, 0.131956, -0.137893,
		27.063810, 31.962694, 31.793884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439880, 32.044483, 31.205795>,  <26.376678, 31.870325, 31.890409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439880, 32.044483, 31.205795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820784, 31.975073, 31.306271>,  <27.049326, 31.933426, 31.366556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820784, 31.975073, 31.306271>,  <26.439880, 32.044483, 31.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820784, 31.975073, 31.306271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172821, -0.371870, -0.912056,
		0.251676, 0.911922, -0.324126,
		0.952256, -0.173527, 0.251190,
		27.106461, 31.923016, 31.381628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846148, 32.281296, 30.678637>,  <26.439880, 32.044483, 31.205795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846148, 32.281296, 30.678637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098248, 32.029896, 30.860966>,  <27.249508, 31.879057, 30.970364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098248, 32.029896, 30.860966>,  <26.846148, 32.281296, 30.678637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098248, 32.029896, 30.860966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305128, -0.339351, -0.889797,
		0.713919, 0.699880, -0.022104,
		0.630252, -0.628498, 0.455821,
		27.287323, 31.841347, 30.997711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474672, 32.385910, 30.363743>,  <26.846148, 32.281296, 30.678637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474672, 32.385910, 30.363743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530756, 32.036655, 30.550491>,  <27.564405, 31.827101, 30.662540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530756, 32.036655, 30.550491>,  <27.474672, 32.385910, 30.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530756, 32.036655, 30.550491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338912, -0.400722, -0.851211,
		0.930312, 0.277574, 0.239734,
		0.140207, -0.873141, 0.466870,
		27.572819, 31.774714, 30.690552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138981, 32.240833, 30.281994>,  <27.474672, 32.385910, 30.363743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138981, 32.240833, 30.281994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959749, 31.891666, 30.359194>,  <27.852211, 31.682167, 30.405514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959749, 31.891666, 30.359194>,  <28.138981, 32.240833, 30.281994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959749, 31.891666, 30.359194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475846, -0.415637, -0.775124,
		0.756834, -0.255477, 0.601609,
		-0.448078, -0.872913, 0.193001,
		27.825325, 31.629793, 30.417093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504490, 31.758770, 29.913797>,  <28.138981, 32.240833, 30.281994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504490, 31.758770, 29.913797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169830, 31.558741, 30.003195>,  <27.969034, 31.438723, 30.056833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169830, 31.558741, 30.003195>,  <28.504490, 31.758770, 29.913797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169830, 31.558741, 30.003195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116344, -0.560959, -0.819628,
		0.535244, -0.659737, 0.527505,
		-0.836647, -0.500072, 0.223494,
		27.918837, 31.408718, 30.070242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781374, 31.153440, 29.884344>,  <28.504490, 31.758770, 29.913797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781374, 31.153440, 29.884344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391621, 31.109207, 29.806015>,  <28.157768, 31.082666, 29.759018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391621, 31.109207, 29.806015>,  <28.781374, 31.153440, 29.884344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391621, 31.109207, 29.806015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224755, -0.509008, -0.830901,
		-0.007792, -0.853629, 0.520824,
		-0.974384, -0.110583, -0.195824,
		28.099306, 31.076033, 29.747269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727442, 30.449446, 29.589682>,  <28.781374, 31.153440, 29.884344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727442, 30.449446, 29.589682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403416, 30.657076, 29.480610>,  <28.209000, 30.781654, 29.415167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403416, 30.657076, 29.480610>,  <28.727442, 30.449446, 29.589682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403416, 30.657076, 29.480610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068514, -0.378067, -0.923239,
		-0.582321, -0.766567, 0.270695,
		-0.810066, 0.519076, -0.272678,
		28.160397, 30.812798, 29.398808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324865, 29.951876, 29.294207>,  <28.727442, 30.449446, 29.589682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324865, 29.951876, 29.294207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185829, 30.306120, 29.171001>,  <28.102407, 30.518667, 29.097078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185829, 30.306120, 29.171001>,  <28.324865, 29.951876, 29.294207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185829, 30.306120, 29.171001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027690, -0.338046, -0.940722,
		-0.937238, -0.318457, 0.142024,
		-0.347590, 0.885613, -0.308012,
		28.081553, 30.571804, 29.078598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902609, 29.717808, 28.840578>,  <28.324865, 29.951876, 29.294207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902609, 29.717808, 28.840578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980276, 30.101814, 28.759916>,  <28.026876, 30.332218, 28.711519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980276, 30.101814, 28.759916>,  <27.902609, 29.717808, 28.840578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980276, 30.101814, 28.759916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091089, -0.222323, -0.970709,
		-0.976730, 0.170110, -0.130615,
		0.194166, 0.960018, -0.201654,
		28.038527, 30.389820, 28.699419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394459, 30.027481, 28.451366>,  <27.902609, 29.717808, 28.840578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394459, 30.027481, 28.451366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739782, 30.199282, 28.345366>,  <27.946978, 30.302362, 28.281765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739782, 30.199282, 28.345366>,  <27.394459, 30.027481, 28.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739782, 30.199282, 28.345366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123515, -0.329307, -0.936110,
		-0.489326, 0.840885, -0.231244,
		0.863310, 0.429500, -0.265000,
		27.998775, 30.328133, 28.265865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209211, 30.642065, 28.186541>,  <27.394459, 30.027481, 28.451366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209211, 30.642065, 28.186541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527159, 30.436518, 28.057470>,  <27.717928, 30.313189, 27.980028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527159, 30.436518, 28.057470>,  <27.209211, 30.642065, 28.186541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527159, 30.436518, 28.057470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476878, -0.200227, -0.855860,
		0.375191, 0.834175, -0.404208,
		0.794870, -0.513869, -0.322676,
		27.765619, 30.282356, 27.960667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797886, 30.423464, 27.638199>,  <27.209211, 30.642065, 28.186541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797886, 30.423464, 27.638199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183475, 30.328924, 27.687010>,  <27.414829, 30.272200, 27.716297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183475, 30.328924, 27.687010>,  <26.797886, 30.423464, 27.638199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183475, 30.328924, 27.687010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081402, 0.174628, 0.981264,
		-0.253232, -0.955847, 0.149098,
		0.963975, -0.236350, 0.122030,
		27.472668, 30.258018, 27.723619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465937, 30.582624, 26.951218>,  <26.797886, 30.423464, 27.638199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465937, 30.582624, 26.951218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618265, 30.915892, 26.790815>,  <26.709661, 31.115852, 26.694574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618265, 30.915892, 26.790815>,  <26.465937, 30.582624, 26.951218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618265, 30.915892, 26.790815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720798, -0.539135, -0.435643,
		-0.579159, -0.123141, -0.805860,
		0.380822, 0.833169, -0.401004,
		26.732512, 31.165842, 26.670513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584595, 30.554615, 26.193108>,  <26.465937, 30.582624, 26.951218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584595, 30.554615, 26.193108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825785, 30.801289, 26.395542>,  <26.970499, 30.949293, 26.517004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825785, 30.801289, 26.395542>,  <26.584595, 30.554615, 26.193108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825785, 30.801289, 26.395542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796444, -0.501771, -0.337495,
		0.045813, 0.606572, -0.793707,
		0.602974, 0.616682, 0.506088,
		27.006678, 30.986294, 26.547369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191872, 30.891958, 25.794907>,  <26.584595, 30.554615, 26.193108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191872, 30.891958, 25.794907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284723, 30.816505, 26.176594>,  <27.340435, 30.771235, 26.405607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284723, 30.816505, 26.176594>,  <27.191872, 30.891958, 25.794907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284723, 30.816505, 26.176594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817656, -0.493504, -0.296466,
		0.526834, 0.849042, 0.039677,
		0.232131, -0.188631, 0.954219,
		27.354362, 30.759916, 26.462860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952009, 31.099457, 26.017168>,  <27.191872, 30.891958, 25.794907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952009, 31.099457, 26.017168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870974, 30.811050, 26.282225>,  <27.822353, 30.638006, 26.441259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870974, 30.811050, 26.282225>,  <27.952009, 31.099457, 26.017168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870974, 30.811050, 26.282225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831058, -0.484511, -0.273114,
		0.517977, 0.495366, 0.697361,
		-0.202588, -0.721015, 0.662643,
		27.810198, 30.594746, 26.481018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411568, 31.561918, 26.236919>,  <27.952009, 31.099457, 26.017168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411568, 31.561918, 26.236919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332582, 31.953730, 26.252560>,  <27.285191, 32.188816, 26.261944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332582, 31.953730, 26.252560>,  <27.411568, 31.561918, 26.236919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332582, 31.953730, 26.252560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087161, -0.057269, 0.994547,
		0.976427, 0.192980, 0.096686,
		-0.197465, 0.979530, 0.039098,
		27.273342, 32.247589, 26.264290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914244, 31.779291, 26.711662>,  <27.411568, 31.561918, 26.236919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914244, 31.779291, 26.711662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577280, 31.993568, 26.688416>,  <27.375101, 32.122135, 26.674467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577280, 31.993568, 26.688416>,  <27.914244, 31.779291, 26.711662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577280, 31.993568, 26.688416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221371, -0.245735, 0.943721,
		0.491263, 0.807866, 0.325596,
		-0.842411, 0.535692, -0.058118,
		27.324556, 32.154278, 26.670980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381777, 32.265636, 26.955908>,  <27.914244, 31.779291, 26.711662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381777, 32.265636, 26.955908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339975, 32.656895, 26.884003>,  <28.314894, 32.891647, 26.840858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339975, 32.656895, 26.884003>,  <28.381777, 32.265636, 26.955908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339975, 32.656895, 26.884003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006493, 0.181422, 0.983384,
		0.994503, 0.101602, -0.025311,
		-0.104506, 0.978143, -0.179764,
		28.308624, 32.950336, 26.830072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900257, 32.639042, 27.301517>,  <28.381777, 32.265636, 26.955908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900257, 32.639042, 27.301517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577097, 32.870361, 27.256147>,  <28.383202, 33.009151, 27.228926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577097, 32.870361, 27.256147>,  <28.900257, 32.639042, 27.301517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577097, 32.870361, 27.256147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158026, -0.027166, 0.987061,
		0.567736, 0.815372, 0.113334,
		-0.807901, 0.578300, -0.113427,
		28.334726, 33.043850, 27.222120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039934, 33.306858, 27.567863>,  <28.900257, 32.639042, 27.301517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039934, 33.306858, 27.567863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641621, 33.274765, 27.550097>,  <28.402632, 33.255508, 27.539436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641621, 33.274765, 27.550097>,  <29.039934, 33.306858, 27.567863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641621, 33.274765, 27.550097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069701, 0.347370, 0.935134,
		-0.059603, 0.934289, -0.351498,
		-0.995786, -0.080237, -0.044416,
		28.342884, 33.250694, 27.536772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766987, 34.032761, 27.721012>,  <29.039934, 33.306858, 27.567863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766987, 34.032761, 27.721012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493267, 33.751549, 27.798458>,  <28.329035, 33.582821, 27.844925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493267, 33.751549, 27.798458>,  <28.766987, 34.032761, 27.721012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493267, 33.751549, 27.798458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155574, 0.400157, 0.903145,
		-0.712414, 0.587899, -0.383200,
		-0.684298, -0.703029, 0.193615,
		28.287977, 33.540642, 27.856543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296867, 34.409996, 28.084297>,  <28.766987, 34.032761, 27.721012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296867, 34.409996, 28.084297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212093, 34.028233, 28.168385>,  <28.161228, 33.799175, 28.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212093, 34.028233, 28.168385>,  <28.296867, 34.409996, 28.084297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212093, 34.028233, 28.168385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299596, 0.268199, 0.915594,
		-0.930228, 0.131067, -0.342778,
		-0.211937, -0.954406, 0.210219,
		28.148512, 33.741909, 28.231451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613874, 34.346149, 28.521482>,  <28.296867, 34.409996, 28.084297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613874, 34.346149, 28.521482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790337, 33.994278, 28.592531>,  <27.896214, 33.783157, 28.635160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790337, 33.994278, 28.592531>,  <27.613874, 34.346149, 28.521482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790337, 33.994278, 28.592531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260425, 0.063919, 0.963376,
		-0.858813, -0.471257, -0.200891,
		0.441157, -0.879677, 0.177622,
		27.922684, 33.730373, 28.645817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098526, 34.028381, 28.953762>,  <27.613874, 34.346149, 28.521482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098526, 34.028381, 28.953762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453341, 33.856590, 29.021547>,  <27.666229, 33.753517, 29.062220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453341, 33.856590, 29.021547>,  <27.098526, 34.028381, 28.953762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453341, 33.856590, 29.021547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146512, 0.086239, 0.985443,
		-0.437837, -0.898952, 0.013574,
		0.887036, -0.429475, 0.169466,
		27.719452, 33.727749, 29.072388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897566, 33.746861, 29.452564>,  <27.098526, 34.028381, 28.953762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897566, 33.746861, 29.452564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295416, 33.748917, 29.493927>,  <27.534126, 33.750149, 29.518745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295416, 33.748917, 29.493927>,  <26.897566, 33.746861, 29.452564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295416, 33.748917, 29.493927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103118, 0.138691, 0.984953,
		-0.009282, -0.990322, 0.138475,
		0.994626, 0.005137, 0.103407,
		27.593803, 33.750458, 29.524950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972582, 33.402313, 30.043108>,  <26.897566, 33.746861, 29.452564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972582, 33.402313, 30.043108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319830, 33.594425, 29.992987>,  <27.528179, 33.709694, 29.962914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319830, 33.594425, 29.992987>,  <26.972582, 33.402313, 30.043108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319830, 33.594425, 29.992987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131411, 0.021051, 0.991104,
		0.478647, -0.876862, -0.044840,
		0.868118, 0.480281, -0.125305,
		27.580265, 33.738510, 29.955395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462049, 33.130222, 30.486740>,  <26.972582, 33.402313, 30.043108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462049, 33.130222, 30.486740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619268, 33.484562, 30.388128>,  <27.713600, 33.697166, 30.328960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619268, 33.484562, 30.388128>,  <27.462049, 33.130222, 30.486740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619268, 33.484562, 30.388128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264620, 0.147795, 0.952960,
		0.880619, -0.439796, -0.176324,
		0.393049, 0.885853, -0.246529,
		27.737183, 33.750317, 30.314169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089796, 33.090424, 30.796963>,  <27.462049, 33.130222, 30.486740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089796, 33.090424, 30.796963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995657, 33.473572, 30.731131>,  <27.939173, 33.703461, 30.691631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995657, 33.473572, 30.731131>,  <28.089796, 33.090424, 30.796963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995657, 33.473572, 30.731131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061846, 0.183753, 0.981025,
		0.969941, 0.220705, -0.102487,
		-0.235349, 0.957875, -0.164580,
		27.925053, 33.760933, 30.681757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634689, 33.423290, 31.127409>,  <28.089796, 33.090424, 30.796963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634689, 33.423290, 31.127409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329119, 33.678242, 31.087074>,  <28.145777, 33.831211, 31.062874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329119, 33.678242, 31.087074>,  <28.634689, 33.423290, 31.127409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329119, 33.678242, 31.087074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201631, 0.384198, 0.900964,
		0.612995, 0.667938, -0.422014,
		-0.763925, 0.637378, -0.100835,
		28.099941, 33.869453, 31.056824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880432, 34.054939, 31.409191>,  <28.634689, 33.423290, 31.127409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880432, 34.054939, 31.409191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485186, 34.113686, 31.391056>,  <28.248037, 34.148933, 31.380175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485186, 34.113686, 31.391056>,  <28.880432, 34.054939, 31.409191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485186, 34.113686, 31.391056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036648, 0.511582, 0.858453,
		0.149271, 0.846590, -0.510885,
		-0.988117, 0.146865, -0.045339,
		28.188751, 34.157745, 31.377455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824537, 34.787361, 31.478970>,  <28.880432, 34.054939, 31.409191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824537, 34.787361, 31.478970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501293, 34.589973, 31.607622>,  <28.307346, 34.471539, 31.684814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501293, 34.589973, 31.607622>,  <28.824537, 34.787361, 31.478970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501293, 34.589973, 31.607622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203070, 0.279159, 0.938527,
		-0.552923, 0.823745, -0.125381,
		-0.808108, -0.493472, 0.321631,
		28.258862, 34.441933, 31.704111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309372, 35.254036, 31.913761>,  <28.824537, 34.787361, 31.478970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309372, 35.254036, 31.913761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224483, 34.885414, 32.043808>,  <28.173550, 34.664242, 32.121838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224483, 34.885414, 32.043808>,  <28.309372, 35.254036, 31.913761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224483, 34.885414, 32.043808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190915, 0.287185, 0.938657,
		-0.958391, 0.261274, 0.114992,
		-0.212223, -0.921554, 0.325116,
		28.160816, 34.608948, 32.141342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229078, 35.370548, 32.631447>,  <28.309372, 35.254036, 31.913761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229078, 35.370548, 32.631447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236473, 34.971783, 32.600925>,  <28.240910, 34.732525, 32.582615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236473, 34.971783, 32.600925>,  <28.229078, 35.370548, 32.631447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236473, 34.971783, 32.600925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247930, -0.069361, 0.966292,
		-0.968602, -0.036780, 0.245882,
		0.018486, -0.996913, -0.076302,
		28.242020, 34.672710, 32.578033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939907, 35.254482, 33.189571>,  <28.229078, 35.370548, 32.631447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939907, 35.254482, 33.189571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115334, 34.903324, 33.112679>,  <28.220589, 34.692627, 33.066544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115334, 34.903324, 33.112679>,  <27.939907, 35.254482, 33.189571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115334, 34.903324, 33.112679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391155, -0.006110, 0.920305,
		-0.809110, -0.478805, 0.340715,
		0.438565, -0.877900, -0.192230,
		28.246902, 34.639954, 33.055008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828924, 34.844746, 33.787037>,  <27.939907, 35.254482, 33.189571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828924, 34.844746, 33.787037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143482, 34.676632, 33.605953>,  <28.332218, 34.575764, 33.497303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143482, 34.676632, 33.605953>,  <27.828924, 34.844746, 33.787037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143482, 34.676632, 33.605953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302580, -0.376843, 0.875463,
		-0.538542, -0.825440, -0.169179,
		0.786396, -0.420283, -0.452708,
		28.379400, 34.550549, 33.470142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943682, 34.239338, 34.223503>,  <27.828924, 34.844746, 33.787037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943682, 34.239338, 34.223503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280584, 34.292019, 34.014404>,  <28.482725, 34.323627, 33.888947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280584, 34.292019, 34.014404>,  <27.943682, 34.239338, 34.223503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280584, 34.292019, 34.014404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538865, -0.232966, 0.809537,
		-0.015166, -0.963526, -0.267186,
		0.842255, 0.131700, -0.522744,
		28.533260, 34.331528, 33.857582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373167, 33.732506, 34.488419>,  <27.943682, 34.239338, 34.223503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373167, 33.732506, 34.488419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611731, 34.003006, 34.315453>,  <28.754869, 34.165306, 34.211674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611731, 34.003006, 34.315453>,  <28.373167, 33.732506, 34.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611731, 34.003006, 34.315453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600044, -0.017801, 0.799769,
		0.533143, -0.736461, -0.416394,
		0.596411, 0.676246, -0.432419,
		28.790653, 34.205879, 34.185726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065958, 33.533348, 34.532612>,  <28.373167, 33.732506, 34.488419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065958, 33.533348, 34.532612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093739, 33.929981, 34.488903>,  <29.110407, 34.167961, 34.462677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093739, 33.929981, 34.488903>,  <29.065958, 33.533348, 34.532612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093739, 33.929981, 34.488903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552017, 0.053035, 0.832145,
		0.830936, -0.118113, -0.543687,
		0.069452, 0.991583, -0.109269,
		29.114574, 34.227455, 34.456123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719698, 33.702946, 34.758701>,  <29.065958, 33.533348, 34.532612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719698, 33.702946, 34.758701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509741, 34.039215, 34.812000>,  <29.383766, 34.240978, 34.843979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509741, 34.039215, 34.812000>,  <29.719698, 33.702946, 34.758701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509741, 34.039215, 34.812000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449809, 0.141062, 0.881915,
		0.722605, 0.522849, -0.452184,
		-0.524894, 0.840673, 0.133250,
		29.352272, 34.291416, 34.851974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204649, 34.029926, 35.160477>,  <29.719698, 33.702946, 34.758701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204649, 34.029926, 35.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855049, 34.217899, 35.209938>,  <29.645290, 34.330685, 35.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855049, 34.217899, 35.209938>,  <30.204649, 34.029926, 35.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855049, 34.217899, 35.209938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158096, 0.034372, 0.986825,
		0.459492, 0.882033, -0.104335,
		-0.873998, 0.469933, 0.123652,
		29.592850, 34.358879, 35.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284796, 34.796856, 35.402229>,  <30.204649, 34.029926, 35.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284796, 34.796856, 35.402229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968870, 34.613270, 35.564976>,  <29.779316, 34.503117, 35.662624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968870, 34.613270, 35.564976>,  <30.284796, 34.796856, 35.402229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968870, 34.613270, 35.564976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442875, 0.032179, 0.896006,
		-0.424332, 0.887869, 0.177851,
		-0.789813, -0.458970, 0.406869,
		29.731926, 34.475578, 35.687038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992386, 34.634483, 35.393143>,  <30.284796, 34.796856, 35.402229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992386, 34.634483, 35.393143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048534, 34.963776, 35.173115>,  <31.082224, 35.161350, 35.041096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048534, 34.963776, 35.173115>,  <30.992386, 34.634483, 35.393143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048534, 34.963776, 35.173115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398886, 0.461470, 0.792424,
		0.906193, -0.330651, -0.263599,
		0.140373, 0.823234, -0.550073,
		31.090647, 35.210747, 35.008091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782728, 34.748619, 35.458225>,  <30.992386, 34.634483, 35.393143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782728, 34.748619, 35.458225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508436, 35.035358, 35.407772>,  <31.343861, 35.207401, 35.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508436, 35.035358, 35.407772>,  <31.782728, 34.748619, 35.458225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508436, 35.035358, 35.407772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329200, 0.460012, 0.824631,
		0.649156, 0.523950, -0.551429,
		-0.685729, 0.716844, -0.126136,
		31.302717, 35.250412, 35.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030869, 35.357285, 35.788548>,  <31.782728, 34.748619, 35.458225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030869, 35.357285, 35.788548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634947, 35.406994, 35.760715>,  <31.397394, 35.436821, 35.744019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634947, 35.406994, 35.760715>,  <32.030869, 35.357285, 35.788548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634947, 35.406994, 35.760715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017944, 0.593424, 0.804690,
		0.141295, 0.795237, -0.589604,
		-0.989805, 0.124278, -0.069578,
		31.338005, 35.444279, 35.739841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988018, 36.035603, 35.876045>,  <32.030869, 35.357285, 35.788548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988018, 36.035603, 35.876045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664968, 35.862286, 36.036041>,  <31.471138, 35.758293, 36.132038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664968, 35.862286, 36.036041>,  <31.988018, 36.035603, 35.876045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664968, 35.862286, 36.036041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080961, 0.753356, 0.652611,
		-0.584112, 0.494681, -0.643509,
		-0.807626, -0.433297, 0.399994,
		31.422680, 35.732296, 36.156040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459764, 36.452690, 35.866833>,  <31.988018, 36.035603, 35.876045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459764, 36.452690, 35.866833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358273, 36.198040, 36.158127>,  <31.297377, 36.045250, 36.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358273, 36.198040, 36.158127>,  <31.459764, 36.452690, 35.866833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358273, 36.198040, 36.158127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053818, 0.761002, 0.646513,
		-0.965777, 0.124847, -0.227351,
		-0.253729, -0.636623, 0.728239,
		31.282154, 36.007053, 36.376598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828758, 36.785454, 36.078423>,  <31.459764, 36.452690, 35.866833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828758, 36.785454, 36.078423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033117, 36.590244, 36.361496>,  <31.155733, 36.473118, 36.531342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033117, 36.590244, 36.361496>,  <30.828758, 36.785454, 36.078423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033117, 36.590244, 36.361496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093943, 0.786603, 0.610271,
		-0.854493, -0.378268, 0.356026,
		0.510897, -0.488026, 0.707682,
		31.186386, 36.443836, 36.573799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678734, 37.124409, 36.639614>,  <30.828758, 36.785454, 36.078423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678734, 37.124409, 36.639614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953135, 36.895870, 36.819817>,  <31.117775, 36.758747, 36.927940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953135, 36.895870, 36.819817>,  <30.678734, 37.124409, 36.639614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953135, 36.895870, 36.819817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083663, 0.553125, 0.828887,
		-0.722773, -0.606310, 0.331645,
		0.686003, -0.571350, 0.450509,
		31.158936, 36.724464, 36.954967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403688, 37.001740, 37.386723>,  <30.678734, 37.124409, 36.639614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403688, 37.001740, 37.386723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801159, 36.971394, 37.353607>,  <31.039640, 36.953186, 37.333740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801159, 36.971394, 37.353607>,  <30.403688, 37.001740, 37.386723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801159, 36.971394, 37.353607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111079, 0.556140, 0.823632,
		-0.016447, -0.827619, 0.561050,
		0.993676, -0.075867, -0.082785,
		31.099262, 36.948635, 37.328773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572456, 36.853359, 38.022461>,  <30.403688, 37.001740, 37.386723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572456, 36.853359, 38.022461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914528, 36.969658, 37.850819>,  <31.119770, 37.039436, 37.747833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914528, 36.969658, 37.850819>,  <30.572456, 36.853359, 38.022461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914528, 36.969658, 37.850819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227408, 0.533475, 0.814672,
		0.465783, -0.794273, 0.390098,
		0.855179, 0.290749, -0.429108,
		31.171082, 37.056885, 37.722088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078428, 36.676907, 38.500534>,  <30.572456, 36.853359, 38.022461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078428, 36.676907, 38.500534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239073, 36.945667, 38.251614>,  <31.335461, 37.106922, 38.102261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239073, 36.945667, 38.251614>,  <31.078428, 36.676907, 38.500534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239073, 36.945667, 38.251614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335550, 0.524293, 0.782638,
		0.852123, -0.523130, -0.014893,
		0.401613, 0.671901, -0.622298,
		31.359556, 37.147236, 38.064922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762531, 36.712440, 38.613968>,  <31.078428, 36.676907, 38.500534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762531, 36.712440, 38.613968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670633, 37.068771, 38.457176>,  <31.615496, 37.282570, 38.363102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670633, 37.068771, 38.457176>,  <31.762531, 36.712440, 38.613968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670633, 37.068771, 38.457176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419924, 0.454069, 0.785802,
		0.877999, 0.015929, -0.478398,
		-0.229743, 0.890824, -0.391983,
		31.601711, 37.336018, 38.339581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326485, 37.091007, 38.711067>,  <31.762531, 36.712440, 38.613968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326485, 37.091007, 38.711067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033318, 37.362152, 38.687965>,  <31.857418, 37.524837, 38.674107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033318, 37.362152, 38.687965>,  <32.326485, 37.091007, 38.711067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033318, 37.362152, 38.687965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401856, 0.499862, 0.767235,
		0.548948, 0.539112, -0.638760,
		-0.732917, 0.677862, -0.057753,
		31.813442, 37.565510, 38.670639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630009, 37.389439, 39.248768>,  <32.326485, 37.091007, 38.711067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630009, 37.389439, 39.248768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297039, 37.584797, 39.144051>,  <32.097256, 37.702011, 39.081219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297039, 37.584797, 39.144051>,  <32.630009, 37.389439, 39.248768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297039, 37.584797, 39.144051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134261, 0.280605, 0.950387,
		0.537627, 0.826275, -0.168010,
		-0.832425, 0.488396, -0.261798,
		32.047310, 37.731316, 39.065510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833443, 38.046604, 39.346962>,  <32.630009, 37.389439, 39.248768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833443, 38.046604, 39.346962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434456, 38.028629, 39.369015>,  <32.195065, 38.017845, 39.382248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434456, 38.028629, 39.369015>,  <32.833443, 38.046604, 39.346962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434456, 38.028629, 39.369015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032527, 0.401128, 0.915444,
		-0.063253, 0.914919, -0.398651,
		-0.997467, -0.044937, 0.055132,
		32.135216, 38.015148, 39.385555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589062, 38.766754, 39.572433>,  <32.833443, 38.046604, 39.346962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589062, 38.766754, 39.572433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315941, 38.492020, 39.672070>,  <32.152069, 38.327179, 39.731850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315941, 38.492020, 39.672070>,  <32.589062, 38.766754, 39.572433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315941, 38.492020, 39.672070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127832, 0.447986, 0.884855,
		-0.719336, 0.572336, -0.393684,
		-0.682799, -0.686833, 0.249089,
		32.111099, 38.285969, 39.746796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033234, 39.119202, 39.972374>,  <32.589062, 38.766754, 39.572433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033234, 39.119202, 39.972374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960989, 38.736794, 40.064816>,  <31.917643, 38.507347, 40.120281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960989, 38.736794, 40.064816>,  <32.033234, 39.119202, 39.972374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960989, 38.736794, 40.064816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189992, 0.264453, 0.945499,
		-0.965030, 0.126858, -0.229398,
		-0.180609, -0.956019, 0.231103,
		31.906807, 38.449989, 40.134148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628870, 39.201550, 40.598969>,  <32.033234, 39.119202, 39.972374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628870, 39.201550, 40.598969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715841, 38.811340, 40.585831>,  <31.768024, 38.577213, 40.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715841, 38.811340, 40.585831>,  <31.628870, 39.201550, 40.598969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715841, 38.811340, 40.585831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050306, -0.044806, 0.997728,
		-0.974779, -0.215280, -0.058816,
		0.217427, -0.975524, -0.032846,
		31.781069, 38.518684, 40.575977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106573, 38.848495, 40.877892>,  <31.628870, 39.201550, 40.598969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106573, 38.848495, 40.877892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444307, 38.636707, 40.910767>,  <31.646948, 38.509632, 40.930492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444307, 38.636707, 40.910767>,  <31.106573, 38.848495, 40.877892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444307, 38.636707, 40.910767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073084, 0.038157, 0.996596,
		-0.530807, -0.847468, -0.006478,
		0.844335, -0.529473, 0.082190,
		31.697609, 38.477867, 40.935425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935303, 38.347542, 41.326843>,  <31.106573, 38.848495, 40.877892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935303, 38.347542, 41.326843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335220, 38.354206, 41.331535>,  <31.575171, 38.358204, 41.334351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335220, 38.354206, 41.331535>,  <30.935303, 38.347542, 41.326843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335220, 38.354206, 41.331535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010801, -0.054900, 0.998434,
		0.017281, -0.998353, -0.054708,
		0.999792, 0.016663, 0.011732,
		31.635159, 38.359203, 41.335056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151403, 37.832684, 41.706623>,  <30.935303, 38.347542, 41.326843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151403, 37.832684, 41.706623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489016, 38.047203, 41.706089>,  <31.691582, 38.175915, 41.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489016, 38.047203, 41.706089>,  <31.151403, 37.832684, 41.706623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489016, 38.047203, 41.706089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004565, -0.004704, 0.999979,
		0.536279, -0.844017, -0.006419,
		0.844029, 0.536297, -0.001330,
		31.742224, 38.208092, 41.705688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646301, 37.417629, 42.063232>,  <31.151403, 37.832684, 41.706623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646301, 37.417629, 42.063232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760231, 37.800724, 42.079281>,  <31.828588, 38.030582, 42.088909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760231, 37.800724, 42.079281>,  <31.646301, 37.417629, 42.063232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760231, 37.800724, 42.079281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109864, -0.074191, 0.991174,
		0.952262, -0.277905, -0.126353,
		0.284826, 0.957739, 0.040118,
		31.845678, 38.088047, 42.091316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242737, 37.454220, 42.476162>,  <31.646301, 37.417629, 42.063232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242737, 37.454220, 42.476162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083191, 37.820480, 42.496101>,  <31.987463, 38.040237, 42.508064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083191, 37.820480, 42.496101>,  <32.242737, 37.454220, 42.476162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083191, 37.820480, 42.496101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100776, -0.010262, 0.994856,
		0.911454, 0.401840, -0.088182,
		-0.398868, 0.915652, 0.049849,
		31.963530, 38.095177, 42.511055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532646, 37.705307, 43.068195>,  <32.242737, 37.454220, 42.476162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532646, 37.705307, 43.068195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288689, 38.005241, 42.965607>,  <32.142315, 38.185204, 42.904053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288689, 38.005241, 42.965607>,  <32.532646, 37.705307, 43.068195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288689, 38.005241, 42.965607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068481, 0.372288, 0.925587,
		0.789521, 0.546944, -0.278405,
		-0.609892, 0.749836, -0.256474,
		32.105721, 38.230190, 42.888664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809761, 38.384388, 43.269039>,  <32.532646, 37.705307, 43.068195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809761, 38.384388, 43.269039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410404, 38.387638, 43.246620>,  <32.170788, 38.389587, 43.233170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410404, 38.387638, 43.246620>,  <32.809761, 38.384388, 43.269039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410404, 38.387638, 43.246620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050823, 0.308074, 0.950004,
		0.024983, 0.951328, -0.307166,
		-0.998395, 0.008123, -0.056046,
		32.110886, 38.390076, 43.229805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636463, 38.994091, 43.611046>,  <32.809761, 38.384388, 43.269039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636463, 38.994091, 43.611046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308308, 38.769962, 43.656666>,  <32.111416, 38.635487, 43.684036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308308, 38.769962, 43.656666>,  <32.636463, 38.994091, 43.611046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308308, 38.769962, 43.656666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130283, 0.377369, 0.916852,
		-0.556770, 0.737314, -0.382589,
		-0.820386, -0.560321, 0.114049,
		32.062191, 38.601868, 43.690880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224339, 39.472721, 43.944702>,  <32.636463, 38.994091, 43.611046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224339, 39.472721, 43.944702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057240, 39.112419, 43.992233>,  <31.956980, 38.896236, 44.020752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057240, 39.112419, 43.992233>,  <32.224339, 39.472721, 43.944702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057240, 39.112419, 43.992233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006118, 0.127994, 0.991756,
		-0.908541, 0.415034, -0.047959,
		-0.417751, -0.900758, 0.118827,
		31.931915, 38.842194, 44.027882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587563, 39.603722, 44.265469>,  <32.224339, 39.472721, 43.944702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587563, 39.603722, 44.265469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677185, 39.223118, 44.349789>,  <31.730959, 38.994755, 44.400379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677185, 39.223118, 44.349789>,  <31.587563, 39.603722, 44.265469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677185, 39.223118, 44.349789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173291, 0.173954, 0.969386,
		-0.959046, -0.253726, -0.125912,
		0.224056, -0.951505, 0.210799,
		31.744402, 38.937668, 44.413029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017178, 39.367512, 44.613594>,  <31.587563, 39.603722, 44.265469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017178, 39.367512, 44.613594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298719, 39.109642, 44.732914>,  <31.467646, 38.954922, 44.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298719, 39.109642, 44.732914>,  <31.017178, 39.367512, 44.613594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298719, 39.109642, 44.732914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234527, 0.185489, 0.954249,
		-0.670510, -0.741614, -0.020636,
		0.703856, -0.644672, 0.298300,
		31.509876, 38.916241, 44.822403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785107, 38.951588, 45.213165>,  <31.017178, 39.367512, 44.613594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785107, 38.951588, 45.213165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183319, 38.922722, 45.237534>,  <31.422247, 38.905403, 45.252155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183319, 38.922722, 45.237534>,  <30.785107, 38.951588, 45.213165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183319, 38.922722, 45.237534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050493, 0.138441, 0.989083,
		-0.079811, -0.987738, 0.134179,
		0.995530, -0.072164, 0.060923,
		31.481977, 38.901073, 45.255810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892773, 38.570377, 45.791515>,  <30.785107, 38.951588, 45.213165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892773, 38.570377, 45.791515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250929, 38.741188, 45.741043>,  <31.465822, 38.843674, 45.710758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250929, 38.741188, 45.741043>,  <30.892773, 38.570377, 45.791515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250929, 38.741188, 45.741043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123950, 0.033154, 0.991734,
		0.427686, -0.903629, -0.023245,
		0.895389, 0.427032, -0.126184,
		31.519547, 38.869297, 45.703186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244181, 38.262489, 46.295757>,  <30.892773, 38.570377, 45.791515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244181, 38.262489, 46.295757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479311, 38.575905, 46.215225>,  <31.620390, 38.763954, 46.166904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479311, 38.575905, 46.215225>,  <31.244181, 38.262489, 46.295757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479311, 38.575905, 46.215225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002284, 0.247258, 0.968947,
		0.808985, -0.570031, 0.143554,
		0.587825, 0.783536, -0.201330,
		31.655659, 38.810966, 46.154827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764290, 38.244629, 46.780155>,  <31.244181, 38.262489, 46.295757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764290, 38.244629, 46.780155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748219, 38.624950, 46.657280>,  <31.738575, 38.853142, 46.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748219, 38.624950, 46.657280>,  <31.764290, 38.244629, 46.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748219, 38.624950, 46.657280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049031, 0.305192, 0.951028,
		0.997989, 0.053274, 0.034356,
		-0.040180, 0.950800, -0.307190,
		31.736164, 38.910191, 46.565125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189106, 38.588192, 47.377819>,  <31.764290, 38.244629, 46.780155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189106, 38.588192, 47.377819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969412, 38.852844, 47.173626>,  <31.837595, 39.011635, 47.051109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969412, 38.852844, 47.173626>,  <32.189106, 38.588192, 47.377819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969412, 38.852844, 47.173626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239284, 0.460772, 0.854653,
		0.800677, 0.591555, -0.094756,
		-0.549235, 0.661628, -0.510480,
		31.804642, 39.051334, 47.020481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319035, 39.153648, 47.790356>,  <32.189106, 38.588192, 47.377819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319035, 39.153648, 47.790356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006905, 39.264793, 47.566250>,  <31.819628, 39.331478, 47.431786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006905, 39.264793, 47.566250>,  <32.319035, 39.153648, 47.790356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006905, 39.264793, 47.566250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325435, 0.584604, 0.743189,
		0.534033, 0.762255, -0.365754,
		-0.780321, 0.277858, -0.560262,
		31.772808, 39.348152, 47.398170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311703, 39.898010, 47.708786>,  <32.319035, 39.153648, 47.790356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311703, 39.898010, 47.708786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929802, 39.785175, 47.671112>,  <31.700661, 39.717472, 47.648506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929802, 39.785175, 47.671112>,  <32.311703, 39.898010, 47.708786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929802, 39.785175, 47.671112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265949, 0.668097, 0.694922,
		-0.133106, 0.688528, -0.712890,
		-0.954753, -0.282091, -0.094186,
		31.643375, 39.700546, 47.642857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891691, 40.441219, 47.586414>,  <32.311703, 39.898010, 47.708786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891691, 40.441219, 47.586414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664030, 40.156475, 47.751007>,  <31.527433, 39.985630, 47.849762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664030, 40.156475, 47.751007>,  <31.891691, 40.441219, 47.586414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664030, 40.156475, 47.751007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284829, 0.640158, 0.713492,
		-0.771321, 0.288884, -0.567107,
		-0.569154, -0.711860, 0.411485,
		31.493284, 39.942917, 47.874451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317408, 40.836933, 47.857357>,  <31.891691, 40.441219, 47.586414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317408, 40.836933, 47.857357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294668, 40.485756, 48.047508>,  <31.281025, 40.275051, 48.161598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294668, 40.485756, 48.047508>,  <31.317408, 40.836933, 47.857357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294668, 40.485756, 48.047508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268116, 0.472083, 0.839793,
		-0.961708, -0.079715, -0.262228,
		-0.056850, -0.877943, 0.475378,
		31.277613, 40.222374, 48.190121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825077, 41.057194, 48.244328>,  <31.317408, 40.836933, 47.857357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825077, 41.057194, 48.244328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948977, 40.711952, 48.403881>,  <31.023315, 40.504807, 48.499615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948977, 40.711952, 48.403881>,  <30.825077, 41.057194, 48.244328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948977, 40.711952, 48.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335559, 0.293296, 0.895197,
		-0.889638, -0.411137, -0.198774,
		0.309749, -0.863102, 0.398888,
		31.041901, 40.453022, 48.523548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220215, 40.642422, 48.548706>,  <30.825077, 41.057194, 48.244328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220215, 40.642422, 48.548706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551172, 40.505871, 48.727093>,  <30.749746, 40.423939, 48.834126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551172, 40.505871, 48.727093>,  <30.220215, 40.642422, 48.548706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551172, 40.505871, 48.727093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359563, 0.288011, 0.887561,
		-0.431435, -0.894713, 0.115552,
		0.827392, -0.341377, 0.445964,
		30.799391, 40.403458, 48.860882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007248, 40.227467, 49.058956>,  <30.220215, 40.642422, 48.548706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007248, 40.227467, 49.058956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381266, 40.320122, 49.166317>,  <30.605677, 40.375717, 49.230732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381266, 40.320122, 49.166317>,  <30.007248, 40.227467, 49.058956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381266, 40.320122, 49.166317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321856, 0.237135, 0.916611,
		0.148677, -0.943456, 0.296286,
		0.935042, 0.231640, 0.268401,
		30.661777, 40.389614, 49.246838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184353, 39.797829, 49.670547>,  <30.007248, 40.227467, 49.058956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184353, 39.797829, 49.670547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428448, 40.114338, 49.686047>,  <30.574905, 40.304241, 49.695347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428448, 40.114338, 49.686047>,  <30.184353, 39.797829, 49.670547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428448, 40.114338, 49.686047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287515, 0.175628, 0.941536,
		0.738203, -0.585702, 0.334677,
		0.610239, 0.791270, 0.038748,
		30.611519, 40.351719, 49.697670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610304, 39.731468, 50.333885>,  <30.184353, 39.797829, 49.670547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610304, 39.731468, 50.333885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571255, 40.104599, 50.195141>,  <30.547825, 40.328476, 50.111893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571255, 40.104599, 50.195141>,  <30.610304, 39.731468, 50.333885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571255, 40.104599, 50.195141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058461, 0.342549, 0.937679,
		0.993505, 0.111815, 0.021094,
		-0.097621, 0.932823, -0.346861,
		30.541969, 40.384445, 50.091084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923651, 40.083691, 50.847633>,  <30.610304, 39.731468, 50.333885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923651, 40.083691, 50.847633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737452, 40.362137, 50.629005>,  <30.625732, 40.529205, 50.497829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737452, 40.362137, 50.629005>,  <30.923651, 40.083691, 50.847633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737452, 40.362137, 50.629005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206954, 0.514822, 0.831942,
		0.860513, 0.500381, -0.095584,
		-0.465497, 0.696116, -0.546567,
		30.597803, 40.570972, 50.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126637, 40.774582, 51.112453>,  <30.923651, 40.083691, 50.847633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126637, 40.774582, 51.112453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777008, 40.820175, 50.923561>,  <30.567230, 40.847530, 50.810226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777008, 40.820175, 50.923561>,  <31.126637, 40.774582, 51.112453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777008, 40.820175, 50.923561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303995, 0.629899, 0.714713,
		0.378924, 0.768268, -0.515927,
		-0.874073, 0.113982, -0.472234,
		30.514786, 40.854370, 50.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048569, 41.484680, 51.234009>,  <31.126637, 40.774582, 51.112453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048569, 41.484680, 51.234009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692585, 41.330353, 51.136753>,  <30.478994, 41.237755, 51.078400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692585, 41.330353, 51.136753>,  <31.048569, 41.484680, 51.234009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692585, 41.330353, 51.136753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449328, 0.650686, 0.612137,
		-0.077971, 0.654024, -0.752444,
		-0.889958, -0.385823, -0.243137,
		30.425598, 41.214607, 51.063812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555048, 42.004360, 51.191959>,  <31.048569, 41.484680, 51.234009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555048, 42.004360, 51.191959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333326, 41.677094, 51.253086>,  <30.200293, 41.480736, 51.289764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333326, 41.677094, 51.253086>,  <30.555048, 42.004360, 51.191959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333326, 41.677094, 51.253086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463398, 0.455887, 0.759888,
		-0.691381, 0.350394, -0.631836,
		-0.554306, -0.818163, 0.152820,
		30.167034, 41.431644, 51.298931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951485, 42.291573, 51.247223>,  <30.555048, 42.004360, 51.191959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951485, 42.291573, 51.247223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902475, 41.952545, 51.453766>,  <29.873070, 41.749130, 51.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902475, 41.952545, 51.453766>,  <29.951485, 42.291573, 51.247223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902475, 41.952545, 51.453766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542904, 0.492765, 0.680028,
		-0.830809, -0.197012, -0.520521,
		-0.122521, -0.847566, 0.516353,
		29.865719, 41.698277, 51.608673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266537, 42.260323, 51.238861>,  <29.951485, 42.291573, 51.247223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266537, 42.260323, 51.238861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448391, 42.090767, 51.552197>,  <29.557503, 41.989033, 51.740200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448391, 42.090767, 51.552197>,  <29.266537, 42.260323, 51.238861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448391, 42.090767, 51.552197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590323, 0.515169, 0.621385,
		-0.666952, -0.744928, -0.016018,
		0.454636, -0.423890, 0.783341,
		29.584782, 41.963600, 51.787197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849989, 41.817104, 51.730736>,  <29.266537, 42.260323, 51.238861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849989, 41.817104, 51.730736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139088, 42.000561, 51.937534>,  <29.312546, 42.110634, 52.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139088, 42.000561, 51.937534>,  <28.849989, 41.817104, 51.730736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139088, 42.000561, 51.937534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690579, 0.449803, 0.566373,
		0.027212, -0.766373, 0.641819,
		0.722745, 0.458639, 0.517001,
		29.355911, 42.138153, 52.092636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758614, 41.789749, 52.386074>,  <28.849989, 41.817104, 51.730736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758614, 41.789749, 52.386074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965221, 42.123638, 52.309711>,  <29.089186, 42.323971, 52.263893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965221, 42.123638, 52.309711>,  <28.758614, 41.789749, 52.386074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965221, 42.123638, 52.309711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578481, 0.504540, 0.640936,
		0.631324, -0.220621, 0.743476,
		0.516517, 0.834725, -0.190903,
		29.120176, 42.374054, 52.252441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183031, 41.321091, 52.190052>,  <28.758614, 41.789749, 52.386074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183031, 41.321091, 52.190052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527384, 41.163910, 52.319340>,  <28.733995, 41.069603, 52.396912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527384, 41.163910, 52.319340>,  <28.183031, 41.321091, 52.190052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527384, 41.163910, 52.319340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508682, -0.678718, 0.529702,
		0.011227, -0.620427, -0.784184,
		0.860882, -0.392953, 0.323220,
		28.785648, 41.046024, 52.416306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231159, 40.534397, 52.150234>,  <28.183031, 41.321091, 52.190052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231159, 40.534397, 52.150234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454077, 40.681084, 52.448212>,  <28.587828, 40.769096, 52.626999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454077, 40.681084, 52.448212>,  <28.231159, 40.534397, 52.150234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454077, 40.681084, 52.448212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494435, -0.574204, 0.652552,
		0.667052, -0.731990, -0.138682,
		0.557293, 0.366716, 0.744945,
		28.621265, 40.791100, 52.671696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630737, 39.966736, 52.477196>,  <28.231159, 40.534397, 52.150234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630737, 39.966736, 52.477196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578175, 40.276093, 52.725258>,  <28.546637, 40.461708, 52.874096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578175, 40.276093, 52.725258>,  <28.630737, 39.966736, 52.477196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578175, 40.276093, 52.725258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426477, -0.608836, 0.668906,
		0.894902, -0.176586, 0.409838,
		-0.131405, 0.773392, 0.620159,
		28.538754, 40.508110, 52.911304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089127, 39.992493, 53.188511>,  <28.630737, 39.966736, 52.477196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089127, 39.992493, 53.188511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724653, 40.156235, 53.207180>,  <28.505970, 40.254478, 53.218380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724653, 40.156235, 53.207180>,  <29.089127, 39.992493, 53.188511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724653, 40.156235, 53.207180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231016, -0.601419, 0.764805,
		0.341145, 0.686094, 0.642569,
		-0.911182, 0.409353, 0.046672,
		28.451298, 40.279041, 53.221180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498499, 40.316891, 53.687702>,  <29.089127, 39.992493, 53.188511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498499, 40.316891, 53.687702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293146, 40.000214, 53.820160>,  <29.169933, 39.810207, 53.899635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293146, 40.000214, 53.820160>,  <29.498499, 40.316891, 53.687702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293146, 40.000214, 53.820160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323820, -0.536066, -0.779598,
		0.794719, -0.293002, 0.531574,
		-0.513383, -0.791696, 0.331142,
		29.139132, 39.762703, 53.919502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970886, 39.781086, 53.871487>,  <29.498499, 40.316891, 53.687702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970886, 39.781086, 53.871487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620525, 39.648621, 53.731129>,  <29.410309, 39.569141, 53.646915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620525, 39.648621, 53.731129>,  <29.970886, 39.781086, 53.871487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620525, 39.648621, 53.731129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480903, -0.540273, -0.690534,
		0.039104, -0.773585, 0.632485,
		-0.875901, -0.331167, -0.350892,
		29.357756, 39.549271, 53.625862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998892, 39.086540, 53.975674>,  <29.970886, 39.781086, 53.871487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998892, 39.086540, 53.975674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752026, 39.194668, 53.680096>,  <29.603907, 39.259544, 53.502750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752026, 39.194668, 53.680096>,  <29.998892, 39.086540, 53.975674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752026, 39.194668, 53.680096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446733, -0.652710, -0.611882,
		-0.647703, -0.707748, 0.282087,
		-0.617180, 0.270300, -0.738936,
		29.566875, 39.275764, 53.458412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679487, 38.549347, 53.684750>,  <29.998892, 39.086540, 53.975674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679487, 38.549347, 53.684750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717674, 38.821239, 53.393860>,  <29.740585, 38.984375, 53.219326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717674, 38.821239, 53.393860>,  <29.679487, 38.549347, 53.684750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717674, 38.821239, 53.393860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533726, -0.651624, -0.539002,
		-0.840252, -0.336682, -0.424997,
		0.095466, 0.679729, -0.727224,
		29.746313, 39.025158, 53.175694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786964, 38.099072, 53.240715>,  <29.679487, 38.549347, 53.684750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786964, 38.099072, 53.240715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848682, 38.451668, 53.062202>,  <29.885714, 38.663227, 52.955093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848682, 38.451668, 53.062202>,  <29.786964, 38.099072, 53.240715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848682, 38.451668, 53.062202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436492, -0.466036, -0.769601,
		-0.886379, -0.076053, -0.456670,
		0.154294, 0.881491, -0.446281,
		29.894970, 38.716114, 52.928318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448156, 38.184086, 52.632492>,  <29.786964, 38.099072, 53.240715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448156, 38.184086, 52.632492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739265, 38.451077, 52.569473>,  <29.913931, 38.611271, 52.531662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739265, 38.451077, 52.569473>,  <29.448156, 38.184086, 52.632492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739265, 38.451077, 52.569473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131691, -0.361452, -0.923044,
		-0.673055, 0.651020, -0.350956,
		0.727774, 0.667477, -0.157544,
		29.957598, 38.651321, 52.522209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430895, 38.415367, 51.950787>,  <29.448156, 38.184086, 52.632492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430895, 38.415367, 51.950787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810585, 38.491177, 52.051231>,  <30.038399, 38.536663, 52.111496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810585, 38.491177, 52.051231>,  <29.430895, 38.415367, 51.950787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810585, 38.491177, 52.051231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306796, -0.380940, -0.872216,
		-0.069645, 0.904968, -0.419741,
		0.949224, 0.189521, 0.251110,
		30.095352, 38.548035, 52.126564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724230, 38.792320, 51.343483>,  <29.430895, 38.415367, 51.950787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724230, 38.792320, 51.343483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017300, 38.619564, 51.553875>,  <30.193142, 38.515911, 51.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017300, 38.619564, 51.553875>,  <29.724230, 38.792320, 51.343483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017300, 38.619564, 51.553875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318868, -0.464932, -0.825931,
		0.601257, 0.772859, -0.202929,
		0.732676, -0.431889, 0.525984,
		30.237103, 38.489998, 51.711670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187490, 38.847878, 50.839211>,  <29.724230, 38.792320, 51.343483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187490, 38.847878, 50.839211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340513, 38.575317, 51.088799>,  <30.432327, 38.411781, 51.238552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340513, 38.575317, 51.088799>,  <30.187490, 38.847878, 50.839211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340513, 38.575317, 51.088799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483834, -0.427595, -0.763588,
		0.787118, 0.594015, 0.166106,
		0.382557, -0.681402, 0.623972,
		30.455280, 38.370895, 51.275990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958923, 38.735481, 50.566566>,  <30.187490, 38.847878, 50.839211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958923, 38.735481, 50.566566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883165, 38.410942, 50.787781>,  <30.837709, 38.216221, 50.920509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883165, 38.410942, 50.787781>,  <30.958923, 38.735481, 50.566566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883165, 38.410942, 50.787781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357686, -0.581538, -0.730667,
		0.914434, 0.059427, 0.400349,
		-0.189397, -0.811346, 0.553034,
		30.826345, 38.167538, 50.953690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570503, 38.372601, 50.492897>,  <30.958923, 38.735481, 50.566566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570503, 38.372601, 50.492897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285997, 38.106491, 50.583683>,  <31.115294, 37.946823, 50.638153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285997, 38.106491, 50.583683>,  <31.570503, 38.372601, 50.492897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285997, 38.106491, 50.583683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400218, -0.648714, -0.647299,
		0.577867, -0.369565, 0.727662,
		-0.711263, -0.665276, 0.226964,
		31.072618, 37.906910, 50.651772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032471, 37.723862, 50.473747>,  <31.570503, 38.372601, 50.492897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032471, 37.723862, 50.473747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641212, 37.640884, 50.467983>,  <31.406458, 37.591099, 50.464527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641212, 37.640884, 50.467983>,  <32.032471, 37.723862, 50.473747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641212, 37.640884, 50.467983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131887, -0.565338, -0.814247,
		0.160762, -0.798350, 0.580339,
		-0.978142, -0.207439, -0.014407,
		31.347771, 37.578651, 50.463661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987675, 36.972977, 50.433659>,  <32.032471, 37.723862, 50.473747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987675, 36.972977, 50.433659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653742, 37.138618, 50.288567>,  <31.453382, 37.238003, 50.201511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653742, 37.138618, 50.288567>,  <31.987675, 36.972977, 50.433659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653742, 37.138618, 50.288567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081333, -0.558889, -0.825244,
		-0.544452, -0.718448, 0.432903,
		-0.834839, 0.414096, -0.362721,
		31.403292, 37.262852, 50.179749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792379, 36.473270, 50.005386>,  <31.987675, 36.972977, 50.433659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792379, 36.473270, 50.005386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570852, 36.788727, 49.898560>,  <31.437935, 36.978001, 49.834465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570852, 36.788727, 49.898560>,  <31.792379, 36.473270, 50.005386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570852, 36.788727, 49.898560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122598, -0.240011, -0.962998,
		-0.823562, -0.566068, 0.036237,
		-0.553819, 0.788645, -0.267063,
		31.404707, 37.025322, 49.818439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189484, 36.252613, 49.685905>,  <31.792379, 36.473270, 50.005386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189484, 36.252613, 49.685905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233749, 36.623856, 49.543709>,  <31.260309, 36.846600, 49.458389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233749, 36.623856, 49.543709>,  <31.189484, 36.252613, 49.685905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233749, 36.623856, 49.543709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130643, -0.368170, -0.920534,
		-0.985234, 0.055426, -0.161993,
		0.110663, 0.928105, -0.355493,
		31.266949, 36.902287, 49.437061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888399, 36.197124, 49.095154>,  <31.189484, 36.252613, 49.685905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888399, 36.197124, 49.095154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075985, 36.546940, 49.045757>,  <31.188536, 36.756828, 49.016117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075985, 36.546940, 49.045757>,  <30.888399, 36.197124, 49.095154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075985, 36.546940, 49.045757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160481, -0.221871, -0.961779,
		-0.868515, 0.431221, -0.244397,
		0.468964, 0.874541, -0.123495,
		31.216675, 36.809303, 49.008709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582672, 36.518135, 48.547928>,  <30.888399, 36.197124, 49.095154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582672, 36.518135, 48.547928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937366, 36.698948, 48.586655>,  <31.150183, 36.807434, 48.609890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937366, 36.698948, 48.586655>,  <30.582672, 36.518135, 48.547928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937366, 36.698948, 48.586655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205440, -0.197706, -0.958492,
		-0.414123, 0.869818, -0.268177,
		0.886734, 0.452028, 0.096820,
		31.203386, 36.834557, 48.615700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660538, 36.998375, 47.914909>,  <30.582672, 36.518135, 48.547928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660538, 36.998375, 47.914909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017262, 36.892685, 48.061806>,  <31.231295, 36.829269, 48.149944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017262, 36.892685, 48.061806>,  <30.660538, 36.998375, 47.914909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017262, 36.892685, 48.061806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350831, -0.108620, -0.930118,
		0.285648, 0.958325, -0.004170,
		0.891808, -0.264224, 0.367238,
		31.284803, 36.813419, 48.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069942, 37.056858, 47.368855>,  <30.660538, 36.998375, 47.914909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069942, 37.056858, 47.368855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316017, 36.838940, 47.596802>,  <31.463663, 36.708191, 47.733570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316017, 36.838940, 47.596802>,  <31.069942, 37.056858, 47.368855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316017, 36.838940, 47.596802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333825, -0.474825, -0.814311,
		0.714216, 0.691189, -0.110242,
		0.615188, -0.544792, 0.569864,
		31.500574, 36.675503, 47.767761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795656, 37.127514, 47.138412>,  <31.069942, 37.056858, 47.368855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795656, 37.127514, 47.138412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754036, 36.775520, 47.323795>,  <31.729063, 36.564323, 47.435024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754036, 36.775520, 47.323795>,  <31.795656, 37.127514, 47.138412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754036, 36.775520, 47.323795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278075, -0.473144, -0.835948,
		0.954907, 0.041896, 0.293933,
		-0.104050, -0.879988, 0.463458,
		31.722820, 36.511524, 47.462833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351780, 36.828136, 46.879887>,  <31.795656, 37.127514, 47.138412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351780, 36.828136, 46.879887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128853, 36.527176, 47.020336>,  <31.995096, 36.346600, 47.104607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128853, 36.527176, 47.020336>,  <32.351780, 36.828136, 46.879887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128853, 36.527176, 47.020336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054351, -0.455035, -0.888813,
		0.828520, -0.476266, 0.294492,
		-0.557316, -0.752405, 0.351120,
		31.961658, 36.301453, 47.125671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728443, 36.186405, 46.841507>,  <32.351780, 36.828136, 46.879887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728443, 36.186405, 46.841507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344406, 36.074574, 46.838348>,  <32.113983, 36.007473, 46.836452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344406, 36.074574, 46.838348>,  <32.728443, 36.186405, 46.841507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344406, 36.074574, 46.838348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151674, -0.496714, -0.854558,
		0.234994, -0.821651, 0.519296,
		-0.960090, -0.279580, -0.007898,
		32.056377, 35.990700, 46.835979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712009, 35.439487, 46.526577>,  <32.728443, 36.186405, 46.841507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712009, 35.439487, 46.526577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340458, 35.587631, 46.524624>,  <32.117527, 35.676517, 46.523453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340458, 35.587631, 46.524624>,  <32.712009, 35.439487, 46.526577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340458, 35.587631, 46.524624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141860, -0.367907, -0.918978,
		-0.342137, -0.852928, 0.394280,
		-0.928880, 0.370349, -0.004878,
		32.061794, 35.698738, 46.523159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314106, 34.876022, 46.341766>,  <32.712009, 35.439487, 46.526577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314106, 34.876022, 46.341766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075123, 35.186897, 46.262756>,  <31.931732, 35.373425, 46.215351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075123, 35.186897, 46.262756>,  <32.314106, 34.876022, 46.341766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075123, 35.186897, 46.262756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182713, -0.371783, -0.910161,
		-0.780808, -0.507691, 0.364127,
		-0.597457, 0.777192, -0.197530,
		31.895885, 35.420055, 46.203499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711870, 34.608955, 46.032116>,  <32.314106, 34.876022, 46.341766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711870, 34.608955, 46.032116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707508, 34.991772, 45.916218>,  <31.704891, 35.221462, 45.846680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707508, 34.991772, 45.916218>,  <31.711870, 34.608955, 46.032116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707508, 34.991772, 45.916218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106234, -0.289231, -0.951346,
		-0.994281, 0.020408, 0.104825,
		-0.010904, 0.957042, -0.289745,
		31.704237, 35.278885, 45.829296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262861, 34.569889, 45.537868>,  <31.711870, 34.608955, 46.032116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262861, 34.569889, 45.537868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438881, 34.924538, 45.480934>,  <31.544493, 35.137325, 45.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438881, 34.924538, 45.480934>,  <31.262861, 34.569889, 45.537868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438881, 34.924538, 45.480934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131300, -0.093271, -0.986945,
		-0.888322, 0.452994, 0.075370,
		0.440050, 0.886621, -0.142333,
		31.570896, 35.190525, 45.438232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989950, 34.820049, 44.892643>,  <31.262861, 34.569889, 45.537868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989950, 34.820049, 44.892643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301241, 35.068909, 44.926819>,  <31.488016, 35.218224, 44.947323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301241, 35.068909, 44.926819>,  <30.989950, 34.820049, 44.892643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301241, 35.068909, 44.926819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035574, 0.092156, -0.995109,
		-0.626974, 0.777460, 0.049586,
		0.778227, 0.622144, 0.085437,
		31.534710, 35.255550, 44.952450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818075, 35.475582, 44.642605>,  <30.989950, 34.820049, 44.892643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818075, 35.475582, 44.642605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217098, 35.455818, 44.622871>,  <31.456512, 35.443958, 44.611031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217098, 35.455818, 44.622871>,  <30.818075, 35.475582, 44.642605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217098, 35.455818, 44.622871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048790, 0.012062, -0.998736,
		0.049941, 0.998706, 0.009622,
		0.997560, -0.049409, -0.049330,
		31.516367, 35.440994, 44.608074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975101, 36.011780, 44.198845>,  <30.818075, 35.475582, 44.642605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975101, 36.011780, 44.198845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312759, 35.797340, 44.197044>,  <31.515354, 35.668678, 44.195965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312759, 35.797340, 44.197044>,  <30.975101, 36.011780, 44.198845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312759, 35.797340, 44.197044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027859, 0.052244, -0.998246,
		0.535390, 0.842539, 0.059037,
		0.844145, -0.536095, -0.004499,
		31.566004, 35.636513, 44.195694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395555, 36.329739, 43.840805>,  <30.975101, 36.011780, 44.198845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395555, 36.329739, 43.840805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512787, 35.948689, 43.808300>,  <31.583126, 35.720058, 43.788799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512787, 35.948689, 43.808300>,  <31.395555, 36.329739, 43.840805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512787, 35.948689, 43.808300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119051, 0.047970, -0.991729,
		0.948647, 0.300328, -0.099353,
		0.293078, -0.952629, -0.081261,
		31.600710, 35.662899, 43.783920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859301, 36.385094, 43.311516>,  <31.395555, 36.329739, 43.840805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859301, 36.385094, 43.311516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783340, 35.993134, 43.335949>,  <31.737764, 35.757957, 43.350609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783340, 35.993134, 43.335949>,  <31.859301, 36.385094, 43.311516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783340, 35.993134, 43.335949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257970, -0.109828, -0.959890,
		0.947307, -0.166524, 0.273642,
		-0.189898, -0.979902, 0.061082,
		31.726372, 35.699162, 43.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432953, 36.062412, 43.014328>,  <31.859301, 36.385094, 43.311516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432953, 36.062412, 43.014328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158939, 35.771473, 42.997913>,  <31.994530, 35.596909, 42.988064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158939, 35.771473, 42.997913>,  <32.432953, 36.062412, 43.014328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158939, 35.771473, 42.997913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304925, -0.235118, -0.922898,
		0.661623, -0.644732, 0.382853,
		-0.685037, -0.727352, -0.041035,
		31.953428, 35.553268, 42.985603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783016, 35.492352, 42.739906>,  <32.432953, 36.062412, 43.014328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783016, 35.492352, 42.739906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397228, 35.411961, 42.671310>,  <32.165756, 35.363728, 42.630154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397228, 35.411961, 42.671310>,  <32.783016, 35.492352, 42.739906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397228, 35.411961, 42.671310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213418, -0.210077, -0.954107,
		0.155726, -0.956806, 0.245504,
		-0.964470, -0.200974, -0.171485,
		32.107887, 35.351669, 42.619865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734028, 34.927216, 42.290192>,  <32.783016, 35.492352, 42.739906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734028, 34.927216, 42.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374405, 35.094254, 42.237568>,  <32.158630, 35.194477, 42.205994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374405, 35.094254, 42.237568>,  <32.734028, 34.927216, 42.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374405, 35.094254, 42.237568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063107, -0.173755, -0.982765,
		-0.433258, -0.891865, 0.129863,
		-0.899058, 0.417596, -0.131563,
		32.104687, 35.219532, 42.198097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469418, 34.542770, 41.754417>,  <32.734028, 34.927216, 42.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469418, 34.542770, 41.754417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241844, 34.871296, 41.771183>,  <32.105301, 35.068413, 41.781242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241844, 34.871296, 41.771183>,  <32.469418, 34.542770, 41.754417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241844, 34.871296, 41.771183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057721, 0.010956, -0.998272,
		-0.820357, -0.570368, 0.041174,
		-0.568931, 0.821316, 0.041910,
		32.071163, 35.117691, 41.783756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925978, 34.403126, 41.262043>,  <32.469418, 34.542770, 41.754417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925978, 34.403126, 41.262043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934383, 34.800583, 41.306286>,  <31.939426, 35.039059, 41.332832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934383, 34.800583, 41.306286>,  <31.925978, 34.403126, 41.262043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934383, 34.800583, 41.306286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104459, 0.107844, -0.988665,
		-0.994307, 0.032329, -0.101528,
		0.021014, 0.993642, 0.110607,
		31.940687, 35.098675, 41.339466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518488, 34.606377, 40.686073>,  <31.925978, 34.403126, 41.262043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518488, 34.606377, 40.686073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737413, 34.917469, 40.809742>,  <31.868769, 35.104122, 40.883942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737413, 34.917469, 40.809742>,  <31.518488, 34.606377, 40.686073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737413, 34.917469, 40.809742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208763, 0.230873, -0.950324,
		-0.810472, 0.584671, -0.036000,
		0.547315, 0.777726, 0.309173,
		31.901608, 35.150787, 40.902493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427868, 35.180943, 40.231293>,  <31.518488, 34.606377, 40.686073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427868, 35.180943, 40.231293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791597, 35.279110, 40.365692>,  <32.009834, 35.338013, 40.446331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791597, 35.279110, 40.365692>,  <31.427868, 35.180943, 40.231293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791597, 35.279110, 40.365692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265171, 0.280484, -0.922503,
		-0.320645, 0.927953, 0.189972,
		0.909324, 0.245421, 0.336002,
		32.064396, 35.352737, 40.466492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697809, 35.865772, 39.790691>,  <31.427868, 35.180943, 40.231293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697809, 35.865772, 39.790691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035255, 35.746948, 39.969608>,  <32.237724, 35.675655, 40.076958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035255, 35.746948, 39.969608>,  <31.697809, 35.865772, 39.790691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035255, 35.746948, 39.969608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514737, 0.210290, -0.831158,
		0.152842, 0.931415, 0.330311,
		0.843614, -0.297059, 0.447293,
		32.288342, 35.657829, 40.103798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199799, 36.406540, 39.664581>,  <31.697809, 35.865772, 39.790691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199799, 36.406540, 39.664581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395966, 36.063744, 39.727901>,  <32.513664, 35.858067, 39.765892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395966, 36.063744, 39.727901>,  <32.199799, 36.406540, 39.664581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395966, 36.063744, 39.727901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609637, 0.207555, -0.765025,
		0.622766, 0.471682, 0.624243,
		0.490413, -0.856993, 0.158297,
		32.543091, 35.806644, 39.775391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917038, 36.651951, 39.624748>,  <32.199799, 36.406540, 39.664581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917038, 36.651951, 39.624748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968189, 36.255680, 39.605942>,  <32.998878, 36.017918, 39.594658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968189, 36.255680, 39.605942>,  <32.917038, 36.651951, 39.624748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968189, 36.255680, 39.605942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752201, 0.127774, -0.646426,
		0.646406, 0.047300, 0.761527,
		0.127879, -0.990675, -0.047015,
		33.006554, 35.958477, 39.591839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686943, 36.569725, 39.600193>,  <32.917038, 36.651951, 39.624748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686943, 36.569725, 39.600193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525181, 36.234665, 39.453339>,  <33.428123, 36.033627, 39.365227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525181, 36.234665, 39.453339>,  <33.686943, 36.569725, 39.600193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525181, 36.234665, 39.453339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725244, -0.049147, -0.686735,
		0.557203, -0.543984, 0.627380,
		-0.404407, -0.837655, -0.367136,
		33.403858, 35.983368, 39.343197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186592, 36.141415, 39.588131>,  <33.686943, 36.569725, 39.600193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186592, 36.141415, 39.588131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936096, 35.990730, 39.315102>,  <33.785797, 35.900322, 39.151283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936096, 35.990730, 39.315102>,  <34.186592, 36.141415, 39.588131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936096, 35.990730, 39.315102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736995, -0.000495, -0.675899,
		0.254278, -0.926332, 0.277941,
		-0.626244, -0.376707, -0.682576,
		33.748222, 35.877720, 39.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055424, 36.157841, 38.845207>,  <34.186592, 36.141415, 39.588131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055424, 36.157841, 38.845207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385403, 35.932098, 38.832813>,  <34.583389, 35.796654, 38.825375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385403, 35.932098, 38.832813>,  <34.055424, 36.157841, 38.845207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385403, 35.932098, 38.832813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149072, -0.270140, 0.951211,
		-0.545191, -0.780083, -0.306982,
		0.824951, -0.564354, -0.030989,
		34.632889, 35.762791, 38.823517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963818, 35.353260, 39.020592>,  <34.055424, 36.157841, 38.845207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963818, 35.353260, 39.020592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321278, 35.505219, 39.116150>,  <34.535751, 35.596394, 39.173485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321278, 35.505219, 39.116150>,  <33.963818, 35.353260, 39.020592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321278, 35.505219, 39.116150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049855, -0.445000, 0.894142,
		0.445994, -0.810957, -0.378733,
		0.893646, 0.379900, 0.238898,
		34.589371, 35.619190, 39.187820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288666, 34.804733, 39.394390>,  <33.963818, 35.353260, 39.020592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288666, 34.804733, 39.394390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500950, 35.124741, 39.506332>,  <34.628323, 35.316746, 39.573498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500950, 35.124741, 39.506332>,  <34.288666, 34.804733, 39.394390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500950, 35.124741, 39.506332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082795, -0.279681, 0.956516,
		0.843498, -0.530806, -0.082193,
		0.530712, 0.800015, 0.279858,
		34.660164, 35.364746, 39.590290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762623, 34.615204, 39.937923>,  <34.288666, 34.804733, 39.394390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762623, 34.615204, 39.937923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723000, 35.000736, 40.036888>,  <34.699226, 35.232056, 40.096268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723000, 35.000736, 40.036888>,  <34.762623, 34.615204, 39.937923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723000, 35.000736, 40.036888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182809, -0.226777, 0.956636,
		0.978145, 0.139995, -0.153732,
		-0.099061, 0.963833, 0.247413,
		34.693283, 35.289886, 40.111111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307365, 34.733551, 40.348473>,  <34.762623, 34.615204, 39.937923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307365, 34.733551, 40.348473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092422, 35.062103, 40.424980>,  <34.963459, 35.259235, 40.470886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092422, 35.062103, 40.424980>,  <35.307365, 34.733551, 40.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092422, 35.062103, 40.424980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283842, -0.037427, 0.958140,
		0.794155, 0.569153, -0.213030,
		-0.537355, 0.821379, 0.191273,
		34.931217, 35.308517, 40.482361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750572, 35.077263, 40.817356>,  <35.307365, 34.733551, 40.348473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750572, 35.077263, 40.817356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399452, 35.264877, 40.856289>,  <35.188782, 35.377445, 40.879650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399452, 35.264877, 40.856289>,  <35.750572, 35.077263, 40.817356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399452, 35.264877, 40.856289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175705, 0.126227, 0.976317,
		0.445644, 0.874111, -0.193214,
		-0.877798, 0.469038, 0.097334,
		35.136112, 35.405590, 40.885490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859306, 35.618767, 41.333176>,  <35.750572, 35.077263, 40.817356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859306, 35.618767, 41.333176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461281, 35.579803, 41.325535>,  <35.222466, 35.556427, 41.320950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461281, 35.579803, 41.325535>,  <35.859306, 35.618767, 41.333176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461281, 35.579803, 41.325535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035793, 0.172647, 0.984333,
		-0.092583, 0.980156, -0.175280,
		-0.995061, -0.097406, -0.019098,
		35.162762, 35.550583, 41.319805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458271, 36.272797, 41.616825>,  <35.859306, 35.618767, 41.333176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458271, 36.272797, 41.616825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199215, 35.971565, 41.663181>,  <35.043781, 35.790825, 41.690994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199215, 35.971565, 41.663181>,  <35.458271, 36.272797, 41.616825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199215, 35.971565, 41.663181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206232, 0.319674, 0.924812,
		-0.733505, 0.575046, -0.362344,
		-0.647641, -0.753081, 0.115889,
		35.004921, 35.745640, 41.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938835, 36.572598, 42.053661>,  <35.458271, 36.272797, 41.616825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938835, 36.572598, 42.053661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924843, 36.174175, 42.086277>,  <34.916447, 35.935123, 42.105846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924843, 36.174175, 42.086277>,  <34.938835, 36.572598, 42.053661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924843, 36.174175, 42.086277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328822, 0.088518, 0.940234,
		-0.943744, 0.006081, -0.330622,
		-0.034984, -0.996056, 0.081539,
		34.914349, 35.875359, 42.110737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277149, 36.481544, 42.275455>,  <34.938835, 36.572598, 42.053661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277149, 36.481544, 42.275455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499947, 36.170544, 42.392246>,  <34.633625, 35.983944, 42.462322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499947, 36.170544, 42.392246>,  <34.277149, 36.481544, 42.275455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499947, 36.170544, 42.392246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104158, 0.283390, 0.953332,
		-0.823957, -0.561415, 0.076865,
		0.556998, -0.777498, 0.291977,
		34.667046, 35.937294, 42.479839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920002, 36.194416, 42.919464>,  <34.277149, 36.481544, 42.275455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920002, 36.194416, 42.919464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284828, 36.030514, 42.925503>,  <34.503723, 35.932171, 42.929127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284828, 36.030514, 42.925503>,  <33.920002, 36.194416, 42.919464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284828, 36.030514, 42.925503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053419, 0.155256, 0.986429,
		-0.406541, -0.898885, 0.163494,
		0.912070, -0.409758, 0.015100,
		34.558449, 35.907585, 42.930035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919235, 35.709557, 43.365131>,  <33.920002, 36.194416, 42.919464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919235, 35.709557, 43.365131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313629, 35.770412, 43.337727>,  <34.550266, 35.806927, 43.321281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313629, 35.770412, 43.337727>,  <33.919235, 35.709557, 43.365131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313629, 35.770412, 43.337727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057645, 0.074748, 0.995535,
		0.156585, -0.985528, 0.064930,
		0.985981, 0.152142, -0.068516,
		34.609425, 35.816055, 43.317173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310066, 35.189880, 43.754593>,  <33.919235, 35.709557, 43.365131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310066, 35.189880, 43.754593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593243, 35.472099, 43.741806>,  <34.763149, 35.641430, 43.734135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593243, 35.472099, 43.741806>,  <34.310066, 35.189880, 43.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593243, 35.472099, 43.741806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184221, -0.140773, 0.972752,
		0.681824, -0.694539, -0.229636,
		0.707940, 0.705549, -0.031966,
		34.805626, 35.683765, 43.732216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845310, 34.953266, 44.205692>,  <34.310066, 35.189880, 43.754593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845310, 34.953266, 44.205692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908546, 35.345772, 44.161629>,  <34.946487, 35.581276, 44.135189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908546, 35.345772, 44.161629>,  <34.845310, 34.953266, 44.205692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908546, 35.345772, 44.161629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280078, 0.062417, 0.957946,
		0.946871, -0.182292, -0.264962,
		0.158088, 0.981261, -0.110157,
		34.955975, 35.640152, 44.128582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391121, 35.058826, 44.581799>,  <34.845310, 34.953266, 44.205692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391121, 35.058826, 44.581799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222713, 35.419548, 44.542828>,  <35.121670, 35.635983, 44.519447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222713, 35.419548, 44.542828>,  <35.391121, 35.058826, 44.581799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222713, 35.419548, 44.542828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001615, 0.108153, 0.994133,
		0.907053, 0.418387, -0.046991,
		-0.421014, 0.901807, -0.097425,
		35.096409, 35.690090, 44.513599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753418, 35.499168, 45.019859>,  <35.391121, 35.058826, 44.581799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753418, 35.499168, 45.019859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403404, 35.683338, 44.960087>,  <35.193398, 35.793839, 44.924221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403404, 35.683338, 44.960087>,  <35.753418, 35.499168, 45.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403404, 35.683338, 44.960087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092998, 0.143058, 0.985335,
		0.475047, 0.876098, -0.082362,
		-0.875033, 0.460421, -0.149435,
		35.140896, 35.821465, 44.915257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870186, 36.193199, 45.340565>,  <35.753418, 35.499168, 45.019859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870186, 36.193199, 45.340565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474804, 36.135437, 45.322193>,  <35.237576, 36.100780, 45.311169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474804, 36.135437, 45.322193>,  <35.870186, 36.193199, 45.340565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474804, 36.135437, 45.322193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088773, 0.306205, 0.947817,
		-0.122803, 0.940950, -0.315488,
		-0.988453, -0.144401, -0.045928,
		35.178268, 36.092117, 45.308414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615681, 36.635044, 45.794731>,  <35.870186, 36.193199, 45.340565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615681, 36.635044, 45.794731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313828, 36.375153, 45.758106>,  <35.132717, 36.219215, 45.736130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313828, 36.375153, 45.758106>,  <35.615681, 36.635044, 45.794731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313828, 36.375153, 45.758106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265133, 0.174290, 0.948329,
		-0.600200, 0.739913, -0.303789,
		-0.754629, -0.649731, -0.091566,
		35.087440, 36.180233, 45.730637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026619, 37.037682, 46.060707>,  <35.615681, 36.635044, 45.794731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026619, 37.037682, 46.060707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963638, 36.644257, 46.096073>,  <34.925850, 36.408203, 46.117294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963638, 36.644257, 46.096073>,  <35.026619, 37.037682, 46.060707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963638, 36.644257, 46.096073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242824, 0.125344, 0.961938,
		-0.957207, 0.129988, -0.258568,
		-0.157450, -0.983561, 0.088416,
		34.916405, 36.349190, 46.122597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374825, 37.020447, 46.276253>,  <35.026619, 37.037682, 46.060707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374825, 37.020447, 46.276253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487820, 36.648945, 46.372269>,  <34.555618, 36.426044, 46.429878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487820, 36.648945, 46.372269>,  <34.374825, 37.020447, 46.276253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487820, 36.648945, 46.372269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671260, -0.012627, 0.741115,
		-0.685281, -0.370486, -0.627001,
		0.282490, -0.928752, 0.240039,
		34.572567, 36.370319, 46.444279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795288, 36.613998, 46.429615>,  <34.374825, 37.020447, 46.276253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795288, 36.613998, 46.429615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057827, 36.380798, 46.621162>,  <34.215351, 36.240879, 46.736092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057827, 36.380798, 46.621162>,  <33.795288, 36.613998, 46.429615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057827, 36.380798, 46.621162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604692, -0.026948, 0.796003,
		-0.451165, -0.812025, -0.370224,
		0.656351, -0.583000, 0.478867,
		34.254734, 36.205898, 46.764824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496475, 36.007175, 46.866226>,  <33.795288, 36.613998, 46.429615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496475, 36.007175, 46.866226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844040, 36.127193, 47.023689>,  <34.052578, 36.199203, 47.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844040, 36.127193, 47.023689>,  <33.496475, 36.007175, 46.866226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844040, 36.127193, 47.023689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434360, 0.080878, 0.897101,
		0.237331, -0.950490, 0.200603,
		0.868911, 0.300044, 0.393660,
		34.104713, 36.217205, 47.141788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605289, 35.604218, 47.532021>,  <33.496475, 36.007175, 46.866226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605289, 35.604218, 47.532021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837936, 35.927517, 47.568798>,  <33.977524, 36.121498, 47.590862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837936, 35.927517, 47.568798>,  <33.605289, 35.604218, 47.532021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837936, 35.927517, 47.568798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363114, 0.156820, 0.918453,
		0.727921, -0.567574, 0.384696,
		0.581618, 0.808249, 0.091941,
		34.012421, 36.169991, 47.596382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938549, 35.465416, 48.165710>,  <33.605289, 35.604218, 47.532021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938549, 35.465416, 48.165710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992104, 35.856880, 48.103352>,  <34.024239, 36.091759, 48.065937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992104, 35.856880, 48.103352>,  <33.938549, 35.465416, 48.165710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992104, 35.856880, 48.103352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199693, 0.180727, 0.963048,
		0.970668, -0.097813, 0.219629,
		0.133891, 0.978658, -0.155893,
		34.032272, 36.150478, 48.056583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170956, 35.647991, 48.870117>,  <33.938549, 35.465416, 48.165710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170956, 35.647991, 48.870117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075188, 35.983013, 48.673676>,  <34.017727, 36.184025, 48.555813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075188, 35.983013, 48.673676>,  <34.170956, 35.647991, 48.870117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075188, 35.983013, 48.673676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134073, 0.472445, 0.871103,
		0.961614, 0.274404, -0.000820,
		-0.239422, 0.837555, -0.491100,
		34.003361, 36.234280, 48.526344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651234, 36.180908, 49.047375>,  <34.170956, 35.647991, 48.870117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651234, 36.180908, 49.047375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281815, 36.299843, 48.950500>,  <34.060162, 36.371204, 48.892376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281815, 36.299843, 48.950500>,  <34.651234, 36.180908, 49.047375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281815, 36.299843, 48.950500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032051, 0.569471, 0.821386,
		0.382143, 0.766351, -0.516403,
		-0.923547, 0.297336, -0.242182,
		34.004749, 36.389042, 48.877846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866692, 36.856781, 49.004635>,  <34.651234, 36.180908, 49.047375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866692, 36.856781, 49.004635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473206, 36.822758, 49.067966>,  <34.237114, 36.802341, 49.105965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473206, 36.822758, 49.067966>,  <34.866692, 36.856781, 49.004635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473206, 36.822758, 49.067966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038907, 0.759259, 0.649625,
		-0.175473, 0.645206, -0.743585,
		-0.983715, -0.085061, 0.158332,
		34.178089, 36.797241, 49.115467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625404, 37.553364, 48.925266>,  <34.866692, 36.856781, 49.004635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625404, 37.553364, 48.925266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336159, 37.343769, 49.105289>,  <34.162613, 37.218014, 49.213303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336159, 37.343769, 49.105289>,  <34.625404, 37.553364, 48.925266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336159, 37.343769, 49.105289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220415, 0.792542, 0.568590,
		-0.654621, 0.311954, -0.688589,
		-0.723110, -0.523987, 0.450056,
		34.119225, 37.186573, 49.240307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161987, 38.086903, 49.077774>,  <34.625404, 37.553364, 48.925266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161987, 38.086903, 49.077774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037823, 37.788040, 49.312855>,  <33.963326, 37.608723, 49.453903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037823, 37.788040, 49.312855>,  <34.161987, 38.086903, 49.077774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037823, 37.788040, 49.312855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153536, 0.649533, 0.744670,
		-0.938122, 0.140918, -0.316336,
		-0.310408, -0.747161, 0.587705,
		33.944702, 37.563892, 49.489166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580017, 38.297852, 49.455780>,  <34.161987, 38.086903, 49.077774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580017, 38.297852, 49.455780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688942, 37.983009, 49.677162>,  <33.754295, 37.794102, 49.809990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688942, 37.983009, 49.677162>,  <33.580017, 38.297852, 49.455780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688942, 37.983009, 49.677162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085616, 0.553087, 0.828712,
		-0.958393, -0.273050, 0.083221,
		0.272308, -0.787108, 0.553453,
		33.770634, 37.746876, 49.843197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956829, 38.079803, 49.940437>,  <33.580017, 38.297852, 49.455780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956829, 38.079803, 49.940437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309010, 37.957039, 50.085003>,  <33.520317, 37.883381, 50.171741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309010, 37.957039, 50.085003>,  <32.956829, 38.079803, 49.940437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309010, 37.957039, 50.085003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144482, 0.552321, 0.821016,
		-0.451594, -0.775079, 0.441946,
		0.880448, -0.306912, 0.361409,
		33.573143, 37.864964, 50.193424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826626, 38.178108, 50.752213>,  <32.956829, 38.079803, 49.940437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826626, 38.178108, 50.752213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218117, 38.112530, 50.702877>,  <33.453011, 38.073185, 50.673275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218117, 38.112530, 50.702877>,  <32.826626, 38.178108, 50.752213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218117, 38.112530, 50.702877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190033, 0.497921, 0.846145,
		-0.077309, -0.851585, 0.518485,
		0.978729, -0.163944, -0.123336,
		33.511734, 38.063347, 50.665874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054169, 37.874207, 51.326893>,  <32.826626, 38.178108, 50.752213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054169, 37.874207, 51.326893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378536, 38.065529, 51.192051>,  <33.573154, 38.180321, 51.111145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378536, 38.065529, 51.192051>,  <33.054169, 37.874207, 51.326893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378536, 38.065529, 51.192051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063251, 0.501068, 0.863093,
		0.581738, -0.721216, 0.376069,
		0.810913, 0.478307, -0.337108,
		33.621811, 38.209023, 51.090919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422455, 37.851330, 51.863487>,  <33.054169, 37.874207, 51.326893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422455, 37.851330, 51.863487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556000, 38.156261, 51.641716>,  <33.636127, 38.339222, 51.508652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556000, 38.156261, 51.641716>,  <33.422455, 37.851330, 51.863487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556000, 38.156261, 51.641716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009461, 0.585438, 0.810662,
		0.942574, -0.275896, 0.188243,
		0.333863, 0.762328, -0.554429,
		33.656158, 38.384960, 51.475388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985062, 38.140873, 52.316402>,  <33.422455, 37.851330, 51.863487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985062, 38.140873, 52.316402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919380, 38.425255, 52.042881>,  <33.879971, 38.595882, 51.878769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919380, 38.425255, 52.042881>,  <33.985062, 38.140873, 52.316402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919380, 38.425255, 52.042881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064197, 0.699443, 0.711799,
		0.984336, 0.072980, -0.160490,
		-0.164201, 0.710952, -0.683802,
		33.870121, 38.638542, 51.837742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436623, 38.721130, 52.420311>,  <33.985062, 38.140873, 52.316402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436623, 38.721130, 52.420311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114738, 38.867634, 52.233421>,  <33.921608, 38.955536, 52.121288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114738, 38.867634, 52.233421>,  <34.436623, 38.721130, 52.420311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114738, 38.867634, 52.233421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007500, 0.780676, 0.624891,
		0.593619, 0.506361, -0.625472,
		-0.804712, 0.366256, -0.467221,
		33.873325, 38.977512, 52.093254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579033, 39.276035, 51.949360>,  <34.436623, 38.721130, 52.420311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579033, 39.276035, 51.949360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222290, 39.283012, 52.130150>,  <34.008244, 39.287197, 52.238625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222290, 39.283012, 52.130150>,  <34.579033, 39.276035, 51.949360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222290, 39.283012, 52.130150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302795, 0.765336, 0.567958,
		-0.336005, 0.643395, -0.687854,
		-0.891861, 0.017442, 0.451974,
		33.954731, 39.288246, 52.265743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466404, 40.022381, 51.989662>,  <34.579033, 39.276035, 51.949360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466404, 40.022381, 51.989662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286289, 39.793575, 52.263901>,  <34.178223, 39.656292, 52.428444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286289, 39.793575, 52.263901>,  <34.466404, 40.022381, 51.989662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286289, 39.793575, 52.263901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400249, 0.557062, 0.727655,
		-0.798151, 0.602060, -0.021886,
		-0.450284, -0.572019, 0.685594,
		34.151203, 39.621971, 52.469578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451801, 40.605534, 51.868900>,  <34.466404, 40.022381, 51.989662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451801, 40.605534, 51.868900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792023, 40.802242, 51.943428>,  <34.996155, 40.920269, 51.988144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792023, 40.802242, 51.943428>,  <34.451801, 40.605534, 51.868900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792023, 40.802242, 51.943428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232981, -0.034748, -0.971860,
		-0.471458, 0.870031, -0.144128,
		0.850557, 0.491770, 0.186319,
		35.047192, 40.949772, 51.999325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550976, 41.057575, 51.248989>,  <34.451801, 40.605534, 51.868900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550976, 41.057575, 51.248989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907333, 41.024006, 51.427547>,  <35.121147, 41.003864, 51.534683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907333, 41.024006, 51.427547>,  <34.550976, 41.057575, 51.248989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907333, 41.024006, 51.427547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420485, -0.219255, -0.880409,
		0.171759, 0.972052, -0.160045,
		0.890894, -0.083921, 0.446392,
		35.174603, 40.998829, 51.561466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961498, 41.198479, 50.629292>,  <34.550976, 41.057575, 51.248989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961498, 41.198479, 50.629292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212940, 41.043442, 50.898994>,  <35.363804, 40.950420, 51.060818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212940, 41.043442, 50.898994>,  <34.961498, 41.198479, 50.629292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212940, 41.043442, 50.898994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594577, -0.319354, -0.737896,
		0.501331, 0.864745, 0.029706,
		0.628606, -0.387593, 0.674260,
		35.401524, 40.927162, 51.101273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707405, 41.477573, 50.484940>,  <34.961498, 41.198479, 50.629292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707405, 41.477573, 50.484940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736244, 41.133987, 50.687714>,  <35.753548, 40.927837, 50.809380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736244, 41.133987, 50.687714>,  <35.707405, 41.477573, 50.484940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736244, 41.133987, 50.687714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426196, -0.432990, -0.794277,
		0.901753, 0.273324, 0.334867,
		0.072101, -0.858961, 0.506940,
		35.757874, 40.876301, 50.839794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325703, 41.220551, 50.267578>,  <35.707405, 41.477573, 50.484940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325703, 41.220551, 50.267578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101662, 40.922596, 50.412594>,  <35.967239, 40.743824, 50.499603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101662, 40.922596, 50.412594>,  <36.325703, 41.220551, 50.267578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101662, 40.922596, 50.412594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307891, -0.593452, -0.743652,
		0.769085, -0.304897, 0.561735,
		-0.560100, -0.744884, 0.362540,
		35.933632, 40.699131, 50.521355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699730, 40.609940, 50.303837>,  <36.325703, 41.220551, 50.267578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699730, 40.609940, 50.303837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320919, 40.490360, 50.256893>,  <36.093632, 40.418613, 50.228725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320919, 40.490360, 50.256893>,  <36.699730, 40.609940, 50.303837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320919, 40.490360, 50.256893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280176, -0.590426, -0.756901,
		0.156981, -0.749686, 0.642906,
		-0.947026, -0.298946, -0.117358,
		36.036812, 40.400677, 50.221687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821522, 39.955208, 49.990334>,  <36.699730, 40.609940, 50.303837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821522, 39.955208, 49.990334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429260, 40.005142, 49.930031>,  <36.193901, 40.035103, 49.893848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429260, 40.005142, 49.930031>,  <36.821522, 39.955208, 49.990334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429260, 40.005142, 49.930031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041335, -0.620752, -0.782917,
		-0.191323, -0.774004, 0.603584,
		-0.980656, 0.124840, -0.150758,
		36.135063, 40.042595, 49.884804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621254, 39.353424, 49.712273>,  <36.821522, 39.955208, 49.990334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621254, 39.353424, 49.712273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333565, 39.610756, 49.607319>,  <36.160954, 39.765156, 49.544346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333565, 39.610756, 49.607319>,  <36.621254, 39.353424, 49.712273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333565, 39.610756, 49.607319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115047, -0.482712, -0.868190,
		-0.685191, -0.594233, 0.421189,
		-0.719220, 0.643332, -0.262385,
		36.117798, 39.803757, 49.528603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900215, 39.000477, 49.393486>,  <36.621254, 39.353424, 49.712273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900215, 39.000477, 49.393486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959160, 39.377289, 49.272907>,  <35.994526, 39.603374, 49.200562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959160, 39.377289, 49.272907>,  <35.900215, 39.000477, 49.393486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959160, 39.377289, 49.272907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084017, -0.291748, -0.952798,
		-0.985508, 0.165730, 0.036155,
		0.147360, 0.942028, -0.301444,
		36.003368, 39.659897, 49.182472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524723, 38.953487, 48.802700>,  <35.900215, 39.000477, 49.393486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524723, 38.953487, 48.802700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715294, 39.302902, 48.762814>,  <35.829636, 39.512550, 48.738880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715294, 39.302902, 48.762814>,  <35.524723, 38.953487, 48.802700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715294, 39.302902, 48.762814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052764, -0.084804, -0.995000,
		-0.877629, 0.479308, 0.005689,
		0.476428, 0.873540, -0.099716,
		35.858223, 39.564964, 48.732899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128933, 39.300533, 48.257420>,  <35.524723, 38.953487, 48.802700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128933, 39.300533, 48.257420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495075, 39.459789, 48.281464>,  <35.714760, 39.555344, 48.295891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495075, 39.459789, 48.281464>,  <35.128933, 39.300533, 48.257420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495075, 39.459789, 48.281464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135600, -0.164245, -0.977055,
		-0.379137, 0.902499, -0.204330,
		0.915351, 0.398144, 0.060108,
		35.769680, 39.579231, 48.299496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265907, 39.624889, 47.577999>,  <35.128933, 39.300533, 48.257420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265907, 39.624889, 47.577999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623833, 39.566677, 47.746819>,  <35.838589, 39.531750, 47.848110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623833, 39.566677, 47.746819>,  <35.265907, 39.624889, 47.577999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623833, 39.566677, 47.746819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359361, -0.326101, -0.874367,
		0.264878, 0.934065, -0.239502,
		0.894818, -0.145533, 0.422044,
		35.892277, 39.523018, 47.873432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716393, 39.961117, 47.099281>,  <35.265907, 39.624889, 47.577999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716393, 39.961117, 47.099281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929966, 39.704994, 47.320160>,  <36.058109, 39.551319, 47.452686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929966, 39.704994, 47.320160>,  <35.716393, 39.961117, 47.099281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929966, 39.704994, 47.320160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323033, -0.449064, -0.833061,
		0.781386, 0.623178, -0.032930,
		0.533934, -0.640305, 0.552200,
		36.090145, 39.512901, 47.485821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412838, 40.012440, 46.827053>,  <35.716393, 39.961117, 47.099281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412838, 40.012440, 46.827053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355885, 39.656769, 47.000988>,  <36.321712, 39.443367, 47.105350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355885, 39.656769, 47.000988>,  <36.412838, 40.012440, 46.827053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355885, 39.656769, 47.000988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434135, -0.450909, -0.779877,
		0.889524, 0.077735, 0.450227,
		-0.142387, -0.889179, 0.434842,
		36.313168, 39.390015, 47.131439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980309, 39.583389, 46.664913>,  <36.412838, 40.012440, 46.827053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980309, 39.583389, 46.664913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708141, 39.324184, 46.801792>,  <36.544842, 39.168659, 46.883919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708141, 39.324184, 46.801792>,  <36.980309, 39.583389, 46.664913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708141, 39.324184, 46.801792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361630, -0.703060, -0.612315,
		0.637377, -0.292883, 0.712720,
		-0.680422, -0.648016, 0.342199,
		36.504013, 39.129780, 46.904453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369045, 39.081013, 46.697765>,  <36.980309, 39.583389, 46.664913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369045, 39.081013, 46.697765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991161, 38.954102, 46.664627>,  <36.764431, 38.877953, 46.644745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991161, 38.954102, 46.664627>,  <37.369045, 39.081013, 46.697765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991161, 38.954102, 46.664627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292519, -0.701201, -0.650192,
		0.148202, -0.638475, 0.755239,
		-0.944706, -0.317281, -0.082847,
		36.707748, 38.858917, 46.639774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511341, 38.412971, 46.726089>,  <37.369045, 39.081013, 46.697765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511341, 38.412971, 46.726089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163578, 38.474640, 46.538319>,  <36.954922, 38.511642, 46.425655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163578, 38.474640, 46.538319>,  <37.511341, 38.412971, 46.726089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163578, 38.474640, 46.538319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281991, -0.625321, -0.727636,
		-0.405726, -0.764986, 0.500182,
		-0.869406, 0.154174, -0.469428,
		36.902756, 38.520893, 46.397491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347298, 37.783478, 46.434509>,  <37.511341, 38.412971, 46.726089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347298, 37.783478, 46.434509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121948, 38.041180, 46.227608>,  <36.986740, 38.195801, 46.103466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121948, 38.041180, 46.227608>,  <37.347298, 37.783478, 46.434509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121948, 38.041180, 46.227608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221961, -0.485021, -0.845865,
		-0.795828, -0.591348, 0.130250,
		-0.563375, 0.644253, -0.517249,
		36.952934, 38.234455, 46.072433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925728, 37.398182, 45.941013>,  <37.347298, 37.783478, 46.434509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925728, 37.398182, 45.941013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859764, 37.760040, 45.783829>,  <36.820187, 37.977158, 45.689518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859764, 37.760040, 45.783829>,  <36.925728, 37.398182, 45.941013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859764, 37.760040, 45.783829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013993, -0.396226, -0.918046,
		-0.986209, -0.156893, 0.052683,
		-0.164909, 0.904648, -0.392958,
		36.810291, 38.031433, 45.665943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284996, 37.364464, 45.558762>,  <36.925728, 37.398182, 45.941013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284996, 37.364464, 45.558762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488712, 37.687653, 45.440231>,  <36.610943, 37.881565, 45.369114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488712, 37.687653, 45.440231>,  <36.284996, 37.364464, 45.558762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488712, 37.687653, 45.440231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009785, -0.338868, -0.940783,
		-0.860540, 0.482031, -0.164676,
		0.509290, 0.807970, -0.296326,
		36.641499, 37.930042, 45.351334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929150, 37.658192, 44.965427>,  <36.284996, 37.364464, 45.558762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929150, 37.658192, 44.965427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316856, 37.753849, 44.942345>,  <36.549480, 37.811245, 44.928493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316856, 37.753849, 44.942345>,  <35.929150, 37.658192, 44.965427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316856, 37.753849, 44.942345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025766, -0.331962, -0.942941,
		-0.244656, 0.912475, -0.327922,
		0.969267, 0.239145, -0.057706,
		36.607635, 37.825592, 44.925034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170788, 38.107285, 44.338100>,  <35.929150, 37.658192, 44.965427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170788, 38.107285, 44.338100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527172, 37.960297, 44.444801>,  <36.741001, 37.872105, 44.508823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527172, 37.960297, 44.444801>,  <36.170788, 38.107285, 44.338100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527172, 37.960297, 44.444801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105195, -0.404438, -0.908495,
		0.441725, 0.837496, -0.321684,
		0.890962, -0.367466, 0.266751,
		36.794460, 37.850056, 44.524826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748451, 38.411282, 43.861015>,  <36.170788, 38.107285, 44.338100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748451, 38.411282, 43.861015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847431, 38.062115, 44.029198>,  <36.906818, 37.852615, 44.130108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847431, 38.062115, 44.029198>,  <36.748451, 38.411282, 43.861015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847431, 38.062115, 44.029198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245297, -0.363369, -0.898773,
		0.937335, 0.325539, 0.124208,
		0.247453, -0.872919, 0.420452,
		36.921665, 37.800240, 44.155334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268955, 38.238052, 43.357540>,  <36.748451, 38.411282, 43.861015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268955, 38.238052, 43.357540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182522, 37.919853, 43.583984>,  <37.130661, 37.728931, 43.719852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182522, 37.919853, 43.583984>,  <37.268955, 38.238052, 43.357540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182522, 37.919853, 43.583984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151850, -0.600137, -0.785352,
		0.964495, -0.083737, 0.250477,
		-0.216084, -0.795502, 0.566114,
		37.117695, 37.681202, 43.753819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696770, 37.722740, 43.170525>,  <37.268955, 38.238052, 43.357540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696770, 37.722740, 43.170525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458561, 37.487591, 43.389526>,  <37.315636, 37.346500, 43.520927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458561, 37.487591, 43.389526>,  <37.696770, 37.722740, 43.170525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458561, 37.487591, 43.389526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266517, -0.787513, -0.555690,
		0.757840, -0.185008, 0.625660,
		-0.595523, -0.587874, 0.547501,
		37.279903, 37.311230, 43.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191765, 37.219341, 43.560684>,  <37.696770, 37.722740, 43.170525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191765, 37.219341, 43.560684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828346, 37.061485, 43.505833>,  <37.610294, 36.966774, 43.472923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828346, 37.061485, 43.505833>,  <38.191765, 37.219341, 43.560684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828346, 37.061485, 43.505833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395666, -0.707404, -0.585686,
		0.134127, -0.586381, 0.798853,
		-0.908547, -0.394636, -0.137129,
		37.555782, 36.943096, 43.464695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328140, 36.526131, 43.594933>,  <38.191765, 37.219341, 43.560684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328140, 36.526131, 43.594933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978680, 36.550156, 43.401798>,  <37.769005, 36.564571, 43.285919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978680, 36.550156, 43.401798>,  <38.328140, 36.526131, 43.594933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978680, 36.550156, 43.401798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284717, -0.741598, -0.607428,
		-0.394556, -0.668150, 0.630794,
		-0.873649, 0.060066, -0.482836,
		37.716583, 36.568176, 43.256947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203636, 35.910545, 43.355122>,  <38.328140, 36.526131, 43.594933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203636, 35.910545, 43.355122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943604, 36.125717, 43.140450>,  <37.787586, 36.254822, 43.011646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943604, 36.125717, 43.140450>,  <38.203636, 35.910545, 43.355122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943604, 36.125717, 43.140450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230850, -0.533089, -0.813956,
		-0.723953, -0.653027, 0.222367,
		-0.650077, 0.537933, -0.536683,
		37.748581, 36.287098, 42.979446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040043, 35.389603, 42.849255>,  <38.203636, 35.910545, 43.355122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040043, 35.389603, 42.849255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922424, 35.736019, 42.687511>,  <37.851852, 35.943871, 42.590466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922424, 35.736019, 42.687511>,  <38.040043, 35.389603, 42.849255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922424, 35.736019, 42.687511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406243, -0.269701, -0.873057,
		-0.865160, -0.420991, -0.272518,
		-0.294051, 0.866042, -0.404359,
		37.834209, 35.995831, 42.566204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755478, 35.186485, 42.273113>,  <38.040043, 35.389603, 42.849255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755478, 35.186485, 42.273113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844238, 35.570034, 42.202316>,  <37.897495, 35.800163, 42.159836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844238, 35.570034, 42.202316>,  <37.755478, 35.186485, 42.273113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844238, 35.570034, 42.202316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373681, -0.251288, -0.892870,
		-0.900624, 0.131988, -0.414073,
		0.221899, 0.958871, -0.176994,
		37.910809, 35.857697, 42.149220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493404, 35.192688, 41.615101>,  <37.755478, 35.186485, 42.273113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493404, 35.192688, 41.615101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746330, 35.496906, 41.674084>,  <37.898087, 35.679440, 41.709473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746330, 35.496906, 41.674084>,  <37.493404, 35.192688, 41.615101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746330, 35.496906, 41.674084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383995, -0.142377, -0.912292,
		-0.672848, 0.633479, -0.382074,
		0.632316, 0.760548, 0.147455,
		37.936024, 35.725071, 41.718319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555859, 35.408344, 41.040688>,  <37.493404, 35.192688, 41.615101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555859, 35.408344, 41.040688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870022, 35.608795, 41.186020>,  <38.058517, 35.729065, 41.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870022, 35.608795, 41.186020>,  <37.555859, 35.408344, 41.040688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870022, 35.608795, 41.186020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417169, 0.005091, -0.908814,
		-0.457285, 0.865356, -0.205058,
		0.785404, 0.501131, 0.363328,
		38.105644, 35.759136, 41.295017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570614, 36.081902, 40.817814>,  <37.555859, 35.408344, 41.040688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570614, 36.081902, 40.817814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943745, 35.985218, 40.924709>,  <38.167622, 35.927208, 40.988846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943745, 35.985218, 40.924709>,  <37.570614, 36.081902, 40.817814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943745, 35.985218, 40.924709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305217, 0.135840, -0.942545,
		0.191519, 0.960794, 0.200488,
		0.932825, -0.241708, 0.267234,
		38.223591, 35.912704, 41.004879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991405, 36.541531, 40.406261>,  <37.570614, 36.081902, 40.817814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991405, 36.541531, 40.406261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233994, 36.245258, 40.521908>,  <38.379547, 36.067497, 40.591297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233994, 36.245258, 40.521908>,  <37.991405, 36.541531, 40.406261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233994, 36.245258, 40.521908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298537, -0.124894, -0.946191,
		0.736931, 0.660150, 0.145374,
		0.606472, -0.740677, 0.289117,
		38.415936, 36.023056, 40.608643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647423, 36.724743, 40.257099>,  <37.991405, 36.541531, 40.406261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647423, 36.724743, 40.257099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664009, 36.326477, 40.290409>,  <38.673962, 36.087517, 40.310394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664009, 36.326477, 40.290409>,  <38.647423, 36.724743, 40.257099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664009, 36.326477, 40.290409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492637, -0.052138, -0.868672,
		0.869247, 0.077041, 0.488339,
		0.041462, -0.995664, 0.083274,
		38.676449, 36.027779, 40.315392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329887, 36.558422, 40.097649>,  <38.647423, 36.724743, 40.257099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329887, 36.558422, 40.097649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147720, 36.207256, 40.038509>,  <39.038418, 35.996555, 40.003025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147720, 36.207256, 40.038509>,  <39.329887, 36.558422, 40.097649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147720, 36.207256, 40.038509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557599, -0.151816, -0.816110,
		0.694028, -0.454114, 0.558664,
		-0.455421, -0.877913, -0.147849,
		39.011093, 35.943882, 39.994156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835648, 36.139633, 39.883183>,  <39.329887, 36.558422, 40.097649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835648, 36.139633, 39.883183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505871, 35.951363, 39.757477>,  <39.308006, 35.838402, 39.682053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505871, 35.951363, 39.757477>,  <39.835648, 36.139633, 39.883183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505871, 35.951363, 39.757477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437084, -0.176778, -0.881877,
		0.359524, -0.864415, 0.351468,
		-0.824439, -0.470677, -0.314266,
		39.258537, 35.810158, 39.663197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120808, 35.556988, 39.631500>,  <39.835648, 36.139633, 39.883183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120808, 35.556988, 39.631500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746258, 35.555847, 39.491100>,  <39.521530, 35.555164, 39.406860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746258, 35.555847, 39.491100>,  <40.120808, 35.556988, 39.631500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746258, 35.555847, 39.491100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331448, -0.336370, -0.881474,
		-0.115554, -0.941726, 0.315912,
		-0.936370, -0.002850, -0.351002,
		39.465347, 35.554993, 39.385799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933285, 34.864376, 39.623219>,  <40.120808, 35.556988, 39.631500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933285, 34.864376, 39.623219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741543, 35.107479, 39.369968>,  <39.626499, 35.253342, 39.218018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741543, 35.107479, 39.369968>,  <39.933285, 34.864376, 39.623219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741543, 35.107479, 39.369968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575040, -0.327471, -0.749727,
		-0.662985, -0.723457, -0.192511,
		-0.479354, 0.607759, -0.633125,
		39.597736, 35.289806, 39.180031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634506, 34.471809, 39.134159>,  <39.933285, 34.864376, 39.623219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634506, 34.471809, 39.134159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681049, 34.816322, 38.936314>,  <39.708977, 35.023029, 38.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681049, 34.816322, 38.936314>,  <39.634506, 34.471809, 39.134159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681049, 34.816322, 38.936314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482627, -0.484284, -0.729754,
		-0.868062, -0.153800, -0.472032,
		0.116361, 0.861287, -0.494616,
		39.715958, 35.074707, 38.787930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364250, 34.438622, 38.452419>,  <39.634506, 34.471809, 39.134159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364250, 34.438622, 38.452419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679283, 34.685101, 38.451180>,  <39.868305, 34.832989, 38.450436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679283, 34.685101, 38.451180>,  <39.364250, 34.438622, 38.452419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679283, 34.685101, 38.451180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417025, -0.536707, -0.733510,
		-0.453653, 0.576407, -0.679672,
		0.787584, 0.616199, -0.003102,
		39.915558, 34.869961, 38.450249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584095, 34.838612, 37.810917>,  <39.364250, 34.438622, 38.452419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584095, 34.838612, 37.810917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875164, 34.710835, 38.053715>,  <40.049805, 34.634171, 38.199394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875164, 34.710835, 38.053715>,  <39.584095, 34.838612, 37.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875164, 34.710835, 38.053715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291819, -0.656680, -0.695423,
		0.620749, 0.683176, -0.384631,
		0.727676, -0.319441, 0.606997,
		40.093468, 34.615002, 38.235813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228596, 34.896976, 37.390026>,  <39.584095, 34.838612, 37.810917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228596, 34.896976, 37.390026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206982, 34.626751, 37.684155>,  <40.194012, 34.464615, 37.860634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206982, 34.626751, 37.684155>,  <40.228596, 34.896976, 37.390026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206982, 34.626751, 37.684155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276485, -0.717730, -0.639077,
		0.959498, 0.168771, 0.225567,
		-0.054038, -0.675559, 0.735323,
		40.190769, 34.424084, 37.904751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912273, 34.673389, 37.590748>,  <40.228596, 34.896976, 37.390026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912273, 34.673389, 37.590748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594738, 34.430420, 37.602512>,  <40.404217, 34.284637, 37.609573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594738, 34.430420, 37.602512>,  <40.912273, 34.673389, 37.590748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594738, 34.430420, 37.602512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448053, -0.616889, -0.647067,
		0.411188, -0.500486, 0.761865,
		-0.793834, -0.607422, 0.029413,
		40.356586, 34.248192, 37.611336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323170, 35.192410, 37.233719>,  <40.912273, 34.673389, 37.590748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323170, 35.192410, 37.233719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444714, 35.352989, 36.888115>,  <41.517639, 35.449337, 36.680752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444714, 35.352989, 36.888115>,  <41.323170, 35.192410, 37.233719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444714, 35.352989, 36.888115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747939, -0.662263, -0.044671,
		-0.590134, -0.632651, -0.501493,
		0.303859, 0.401448, -0.864007,
		41.535870, 35.473423, 36.628914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384720, 34.638161, 36.725311>,  <41.323170, 35.192410, 37.233719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384720, 34.638161, 36.725311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627029, 34.946907, 36.648094>,  <41.772415, 35.132153, 36.601765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627029, 34.946907, 36.648094>,  <41.384720, 34.638161, 36.725311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627029, 34.946907, 36.648094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758269, -0.633556, -0.153736,
		-0.240966, -0.053247, -0.969072,
		0.605775, 0.771862, -0.193041,
		41.808762, 35.178467, 36.590183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537807, 34.864780, 36.062263>,  <41.384720, 34.638161, 36.725311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537807, 34.864780, 36.062263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783958, 34.600807, 36.234680>,  <41.931648, 34.442421, 36.338131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783958, 34.600807, 36.234680>,  <41.537807, 34.864780, 36.062263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783958, 34.600807, 36.234680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286696, -0.696785, -0.657493,
		0.734247, 0.281026, -0.617985,
		0.615375, -0.659936, 0.431043,
		41.968571, 34.402828, 36.363995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827209, 34.879955, 35.320969>,  <41.537807, 34.864780, 36.062263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827209, 34.879955, 35.320969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166279, 34.830658, 35.114567>,  <42.369720, 34.801079, 34.990726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166279, 34.830658, 35.114567>,  <41.827209, 34.879955, 35.320969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166279, 34.830658, 35.114567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506186, -0.479086, -0.717113,
		-0.158836, 0.869073, -0.468490,
		0.847671, -0.123240, -0.516009,
		42.420582, 34.793686, 34.959763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701710, 35.154503, 34.594723>,  <41.827209, 34.879955, 35.320969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701710, 35.154503, 34.594723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003597, 34.892147, 34.589024>,  <42.184731, 34.734734, 34.585606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003597, 34.892147, 34.589024>,  <41.701710, 35.154503, 34.594723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003597, 34.892147, 34.589024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385619, -0.425947, -0.818454,
		0.530750, 0.623197, -0.574395,
		0.754720, -0.655892, -0.014245,
		42.230015, 34.695381, 34.584751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131325, 35.350391, 33.947712>,  <41.701710, 35.154503, 34.594723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131325, 35.350391, 33.947712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158920, 34.968922, 34.064842>,  <42.175476, 34.740040, 34.135120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158920, 34.968922, 34.064842>,  <42.131325, 35.350391, 33.947712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158920, 34.968922, 34.064842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319406, -0.299192, -0.899147,
		0.945104, -0.031504, -0.325248,
		0.068985, -0.953673, 0.292830,
		42.179615, 34.682819, 34.152691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314732, 35.085907, 33.359776>,  <42.131325, 35.350391, 33.947712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314732, 35.085907, 33.359776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218952, 34.766724, 33.581017>,  <42.161484, 34.575214, 33.713760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218952, 34.766724, 33.581017>,  <42.314732, 35.085907, 33.359776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218952, 34.766724, 33.581017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298994, -0.481383, -0.823938,
		0.923724, -0.362665, -0.123319,
		-0.239450, -0.797963, 0.553100,
		42.147118, 34.527336, 33.746948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674171, 34.542835, 33.071022>,  <42.314732, 35.085907, 33.359776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674171, 34.542835, 33.071022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397453, 34.354443, 33.289963>,  <42.231422, 34.241405, 33.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397453, 34.354443, 33.289963>,  <42.674171, 34.542835, 33.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397453, 34.354443, 33.289963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281061, -0.522598, -0.804920,
		0.665146, -0.710681, 0.229158,
		-0.691799, -0.470982, 0.547349,
		42.189915, 34.213146, 33.454166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782562, 33.788383, 32.965126>,  <42.674171, 34.542835, 33.071022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782562, 33.788383, 32.965126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402760, 33.829765, 33.083611>,  <42.174877, 33.854595, 33.154701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402760, 33.829765, 33.083611>,  <42.782562, 33.788383, 32.965126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402760, 33.829765, 33.083611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307786, -0.490479, -0.815291,
		0.060941, -0.865291, 0.497552,
		-0.949502, 0.103455, 0.296214,
		42.117908, 33.860802, 33.172474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533897, 33.089329, 33.109589>,  <42.782562, 33.788383, 32.965126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533897, 33.089329, 33.109589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212795, 33.307518, 33.013226>,  <42.020134, 33.438431, 32.955410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212795, 33.307518, 33.013226>,  <42.533897, 33.089329, 33.109589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212795, 33.307518, 33.013226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140848, -0.566015, -0.812274,
		-0.579435, -0.618126, 0.531202,
		-0.802756, 0.545479, -0.240908,
		41.971966, 33.471161, 32.940952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041935, 32.641777, 32.798378>,  <42.533897, 33.089329, 33.109589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041935, 32.641777, 32.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882710, 32.998375, 32.711861>,  <41.787174, 33.212334, 32.659950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882710, 32.998375, 32.711861>,  <42.041935, 32.641777, 32.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882710, 32.998375, 32.711861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376183, -0.373679, -0.847850,
		-0.836678, -0.256134, 0.484113,
		-0.398066, 0.891493, -0.216295,
		41.763290, 33.265823, 32.646973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221607, 32.526592, 32.515102>,  <42.041935, 32.641777, 32.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221607, 32.526592, 32.515102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368561, 32.864891, 32.360317>,  <41.456734, 33.067871, 32.267445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368561, 32.864891, 32.360317>,  <41.221607, 32.526592, 32.515102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368561, 32.864891, 32.360317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106757, -0.374964, -0.920872,
		-0.923923, 0.379622, -0.047465,
		0.367381, 0.845748, -0.386965,
		41.478775, 33.118614, 32.244228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850613, 32.586746, 31.998596>,  <41.221607, 32.526592, 32.515102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850613, 32.586746, 31.998596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159451, 32.829014, 31.921621>,  <41.344753, 32.974373, 31.875437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159451, 32.829014, 31.921621>,  <40.850613, 32.586746, 31.998596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159451, 32.829014, 31.921621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052105, -0.362121, -0.930674,
		-0.633363, 0.708545, -0.311151,
		0.772098, 0.605667, -0.192435,
		41.391079, 33.010715, 31.863892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688305, 32.801407, 31.390884>,  <40.850613, 32.586746, 31.998596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688305, 32.801407, 31.390884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075260, 32.902012, 31.402872>,  <41.307434, 32.962376, 31.410065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075260, 32.902012, 31.402872>,  <40.688305, 32.801407, 31.390884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075260, 32.902012, 31.402872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085650, -0.213470, -0.973188,
		-0.238376, 0.944018, -0.228050,
		0.967389, 0.251517, 0.029969,
		41.365479, 32.977467, 31.411863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856045, 33.305763, 30.834942>,  <40.688305, 32.801407, 31.390884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856045, 33.305763, 30.834942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215649, 33.143536, 30.901018>,  <41.431412, 33.046200, 30.940664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215649, 33.143536, 30.901018>,  <40.856045, 33.305763, 30.834942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215649, 33.143536, 30.901018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102085, -0.172736, -0.979664,
		0.425857, 0.897594, -0.113889,
		0.899013, -0.405570, 0.165191,
		41.485352, 33.021866, 30.950575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234829, 33.523319, 30.246111>,  <40.856045, 33.305763, 30.834942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234829, 33.523319, 30.246111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456692, 33.220268, 30.383722>,  <41.589809, 33.038437, 30.466290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456692, 33.220268, 30.383722>,  <41.234829, 33.523319, 30.246111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456692, 33.220268, 30.383722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178261, -0.295664, -0.938513,
		0.812760, 0.581880, -0.028937,
		0.554657, -0.757627, 0.344030,
		41.623089, 32.992981, 30.486931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683167, 33.410896, 29.673021>,  <41.234829, 33.523319, 30.246111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683167, 33.410896, 29.673021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731770, 33.078259, 29.889791>,  <41.760933, 32.878677, 30.019854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731770, 33.078259, 29.889791>,  <41.683167, 33.410896, 29.673021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731770, 33.078259, 29.889791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190099, -0.516368, -0.835001,
		0.974216, 0.204481, 0.095341,
		0.121511, -0.831596, 0.541926,
		41.768223, 32.828781, 30.052370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255604, 33.159267, 29.430347>,  <41.683167, 33.410896, 29.673021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255604, 33.159267, 29.430347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036995, 32.869251, 29.597977>,  <41.905830, 32.695240, 29.698555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036995, 32.869251, 29.597977>,  <42.255604, 33.159267, 29.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036995, 32.869251, 29.597977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004067, -0.498117, -0.867101,
		0.837434, -0.475595, 0.269283,
		-0.546523, -0.725044, 0.419074,
		41.873039, 32.651737, 29.723700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567394, 32.616226, 29.139942>,  <42.255604, 33.159267, 29.430347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567394, 32.616226, 29.139942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224079, 32.464409, 29.278093>,  <42.018089, 32.373318, 29.360983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224079, 32.464409, 29.278093>,  <42.567394, 32.616226, 29.139942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224079, 32.464409, 29.278093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095519, -0.543111, -0.834210,
		0.504194, -0.748985, 0.429894,
		-0.858292, -0.379541, 0.345376,
		41.966591, 32.350548, 29.381706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592991, 31.931126, 28.950291>,  <42.567394, 32.616226, 29.139942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592991, 31.931126, 28.950291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210033, 32.005493, 29.038677>,  <41.980259, 32.050114, 29.091709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210033, 32.005493, 29.038677>,  <42.592991, 31.931126, 28.950291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210033, 32.005493, 29.038677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275140, -0.354919, -0.893493,
		-0.087690, -0.916225, 0.390951,
		-0.957397, 0.185917, 0.220967,
		41.922813, 32.061268, 29.104967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178173, 31.315756, 28.851839>,  <42.592991, 31.931126, 28.950291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178173, 31.315756, 28.851839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920517, 31.619175, 28.812477>,  <41.765923, 31.801226, 28.788860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920517, 31.619175, 28.812477>,  <42.178173, 31.315756, 28.851839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920517, 31.619175, 28.812477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052011, -0.171790, -0.983760,
		-0.763135, -0.628564, 0.150110,
		-0.644143, 0.758549, -0.098406,
		41.727276, 31.846739, 28.782955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568893, 31.139242, 28.575878>,  <42.178173, 31.315756, 28.851839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568893, 31.139242, 28.575878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597706, 31.527567, 28.484365>,  <41.614994, 31.760561, 28.429459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597706, 31.527567, 28.484365>,  <41.568893, 31.139242, 28.575878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597706, 31.527567, 28.484365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009088, -0.228728, -0.973448,
		-0.997361, 0.072198, -0.007653,
		0.072031, 0.970809, -0.228780,
		41.619316, 31.818810, 28.415731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149460, 31.164164, 27.940990>,  <41.568893, 31.139242, 28.575878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149460, 31.164164, 27.940990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326145, 31.523005, 27.937120>,  <41.432156, 31.738310, 27.934797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326145, 31.523005, 27.937120>,  <41.149460, 31.164164, 27.940990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326145, 31.523005, 27.937120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077459, 0.027389, -0.996619,
		-0.893806, 0.440970, 0.081586,
		0.441714, 0.897104, -0.009677,
		41.458660, 31.792135, 27.934217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794865, 31.505030, 27.478889>,  <41.149460, 31.164164, 27.940990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794865, 31.505030, 27.478889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145290, 31.696402, 27.502960>,  <41.355545, 31.811226, 27.517403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145290, 31.696402, 27.502960>,  <40.794865, 31.505030, 27.478889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145290, 31.696402, 27.502960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079329, -0.019903, -0.996650,
		-0.475630, 0.877900, -0.055390,
		0.876061, 0.478431, 0.060177,
		41.408108, 31.839931, 27.521013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838837, 32.193951, 27.137608>,  <40.794865, 31.505030, 27.478889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838837, 32.193951, 27.137608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216293, 32.063057, 27.157423>,  <41.442768, 31.984522, 27.169312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216293, 32.063057, 27.157423>,  <40.838837, 32.193951, 27.137608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216293, 32.063057, 27.157423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072032, 0.056979, -0.995773,
		0.323028, 0.943224, 0.077339,
		0.943644, -0.327233, 0.049536,
		41.499386, 31.964888, 27.172283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384811, 32.559757, 26.678015>,  <40.838837, 32.193951, 27.137608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384811, 32.559757, 26.678015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498158, 32.179523, 26.728748>,  <41.566166, 31.951382, 26.759188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498158, 32.179523, 26.728748>,  <41.384811, 32.559757, 26.678015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498158, 32.179523, 26.728748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155250, -0.085041, -0.984208,
		0.946363, 0.298580, 0.123482,
		0.283363, -0.950588, 0.126834,
		41.583168, 31.894346, 26.766798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003849, 32.382809, 26.204609>,  <41.384811, 32.559757, 26.678015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003849, 32.382809, 26.204609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801060, 32.049713, 26.293633>,  <41.679386, 31.849857, 26.347046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801060, 32.049713, 26.293633>,  <42.003849, 32.382809, 26.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801060, 32.049713, 26.293633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097315, -0.311845, -0.945136,
		0.856452, -0.457499, 0.239135,
		-0.506972, -0.832735, 0.222559,
		41.648968, 31.799892, 26.360399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398464, 31.861506, 25.744431>,  <42.003849, 32.382809, 26.204609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398464, 31.861506, 25.744431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012714, 31.815210, 25.839586>,  <41.781265, 31.787434, 25.896679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012714, 31.815210, 25.839586>,  <42.398464, 31.861506, 25.744431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012714, 31.815210, 25.839586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181845, -0.363101, -0.913833,
		0.192144, -0.924534, 0.329118,
		-0.964372, -0.115739, 0.237890,
		41.723404, 31.780489, 25.910954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837200, 31.581120, 25.265778>,  <42.398464, 31.861506, 25.744431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837200, 31.581120, 25.265778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211990, 31.441534, 25.258936>,  <43.436867, 31.357782, 25.254831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211990, 31.441534, 25.258936>,  <42.837200, 31.581120, 25.265778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211990, 31.441534, 25.258936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230107, 0.579522, 0.781796,
		-0.262907, -0.736462, 0.623300,
		0.936979, -0.348966, -0.017105,
		43.493084, 31.336843, 25.253805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971004, 31.218462, 25.959219>,  <42.837200, 31.581120, 25.265778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971004, 31.218462, 25.959219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303642, 31.367785, 25.794733>,  <43.503223, 31.457378, 25.696041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303642, 31.367785, 25.794733>,  <42.971004, 31.218462, 25.959219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303642, 31.367785, 25.794733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257859, 0.396256, 0.881187,
		0.491902, -0.838822, 0.233261,
		0.831590, 0.373309, -0.411217,
		43.553120, 31.479776, 25.671368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582611, 30.992496, 26.209352>,  <42.971004, 31.218462, 25.959219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582611, 30.992496, 26.209352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661926, 31.357029, 26.065041>,  <43.709515, 31.575748, 25.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661926, 31.357029, 26.065041>,  <43.582611, 30.992496, 26.209352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661926, 31.357029, 26.065041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357203, 0.275583, 0.892446,
		0.912737, -0.305831, -0.270885,
		0.198287, 0.911329, -0.360779,
		43.721413, 31.630428, 25.956806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383930, 31.057295, 26.287819>,  <43.582611, 30.992496, 26.209352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383930, 31.057295, 26.287819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186756, 31.404608, 26.265545>,  <44.068451, 31.612995, 26.252180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186756, 31.404608, 26.265545>,  <44.383930, 31.057295, 26.287819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186756, 31.404608, 26.265545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457300, 0.312997, 0.832412,
		0.740197, 0.384861, -0.551352,
		-0.492935, 0.868282, -0.055683,
		44.038876, 31.665092, 26.248840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865482, 31.558687, 26.417881>,  <44.383930, 31.057295, 26.287819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865482, 31.558687, 26.417881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494762, 31.687061, 26.495907>,  <44.272331, 31.764086, 26.542723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494762, 31.687061, 26.495907>,  <44.865482, 31.558687, 26.417881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494762, 31.687061, 26.495907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306081, 0.344487, 0.887493,
		0.217629, 0.882230, -0.417501,
		-0.926797, 0.320934, 0.195063,
		44.216724, 31.783340, 26.554426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877590, 32.296486, 26.696732>,  <44.865482, 31.558687, 26.417881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877590, 32.296486, 26.696732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578239, 32.082294, 26.853291>,  <44.398628, 31.953779, 26.947226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578239, 32.082294, 26.853291>,  <44.877590, 32.296486, 26.696732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578239, 32.082294, 26.853291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086717, 0.506044, 0.858137,
		-0.657578, 0.676152, -0.332278,
		-0.748379, -0.535478, 0.391398,
		44.353725, 31.921652, 26.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305374, 32.702454, 27.004158>,  <44.877590, 32.296486, 26.696732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305374, 32.702454, 27.004158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279945, 32.350243, 27.192043>,  <44.264687, 32.138916, 27.304775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279945, 32.350243, 27.192043>,  <44.305374, 32.702454, 27.004158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279945, 32.350243, 27.192043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112311, 0.473988, 0.873339,
		-0.991637, 0.002766, -0.129025,
		-0.063572, -0.880527, 0.469714,
		44.260872, 32.086086, 27.332958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783493, 32.762318, 27.433619>,  <44.305374, 32.702454, 27.004158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783493, 32.762318, 27.433619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001171, 32.463860, 27.587042>,  <44.131779, 32.284782, 27.679096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001171, 32.463860, 27.587042>,  <43.783493, 32.762318, 27.433619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001171, 32.463860, 27.587042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032764, 0.437932, 0.898411,
		-0.838319, -0.501477, 0.213873,
		0.544194, -0.746148, 0.383558,
		44.164429, 32.240017, 27.702108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376312, 32.443764, 28.053640>,  <43.783493, 32.762318, 27.433619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376312, 32.443764, 28.053640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765167, 32.354973, 28.083748>,  <43.998482, 32.301697, 28.101812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765167, 32.354973, 28.083748>,  <43.376312, 32.443764, 28.053640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765167, 32.354973, 28.083748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014468, 0.377331, 0.925966,
		-0.233947, -0.899081, 0.370030,
		0.972142, -0.221980, 0.075267,
		44.056808, 32.288380, 28.106329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420105, 32.145683, 28.658241>,  <43.376312, 32.443764, 28.053640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420105, 32.145683, 28.658241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809685, 32.198650, 28.584604>,  <44.043430, 32.230431, 28.540422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809685, 32.198650, 28.584604>,  <43.420105, 32.145683, 28.658241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809685, 32.198650, 28.584604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159100, 0.179473, 0.970812,
		0.161583, -0.974812, 0.153731,
		0.973950, 0.132408, -0.184092,
		44.101868, 32.238377, 28.529375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738712, 31.730360, 29.189459>,  <43.420105, 32.145683, 28.658241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738712, 31.730360, 29.189459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971943, 32.018528, 29.039248>,  <44.111881, 32.191429, 28.949121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971943, 32.018528, 29.039248>,  <43.738712, 31.730360, 29.189459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971943, 32.018528, 29.039248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177148, 0.338372, 0.924188,
		0.792872, -0.605393, 0.069674,
		0.583072, 0.720420, -0.375529,
		44.146866, 32.234653, 28.926588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361610, 31.804583, 29.662090>,  <43.738712, 31.730360, 29.189459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361610, 31.804583, 29.662090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312660, 32.153431, 29.472593>,  <44.283291, 32.362740, 29.358894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312660, 32.153431, 29.472593>,  <44.361610, 31.804583, 29.662090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312660, 32.153431, 29.472593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051495, 0.482267, 0.874509,
		0.991147, 0.082625, -0.103929,
		-0.122378, 0.872119, -0.473743,
		44.275948, 32.415066, 29.330471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886806, 32.309277, 30.028912>,  <44.361610, 31.804583, 29.662090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886806, 32.309277, 30.028912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666187, 32.582092, 29.836823>,  <44.533813, 32.745781, 29.721569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666187, 32.582092, 29.836823>,  <44.886806, 32.309277, 30.028912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666187, 32.582092, 29.836823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146952, 0.646153, 0.748927,
		0.821095, 0.342502, -0.456613,
		-0.551550, 0.682041, -0.480222,
		44.500721, 32.786705, 29.692757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382584, 32.911484, 29.972893>,  <44.886806, 32.309277, 30.028912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382584, 32.911484, 29.972893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009502, 33.041397, 29.910172>,  <44.785656, 33.119347, 29.872540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009502, 33.041397, 29.910172>,  <45.382584, 32.911484, 29.972893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009502, 33.041397, 29.910172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061699, 0.572056, 0.817891,
		0.355338, 0.753171, -0.553595,
		-0.932699, 0.324784, -0.156803,
		44.729694, 33.138832, 29.863131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401642, 33.625546, 29.942907>,  <45.382584, 32.911484, 29.972893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401642, 33.625546, 29.942907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014351, 33.548531, 30.006731>,  <44.781975, 33.502323, 30.045025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014351, 33.548531, 30.006731>,  <45.401642, 33.625546, 29.942907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014351, 33.548531, 30.006731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011143, 0.604237, 0.796727,
		-0.249811, 0.773193, -0.582895,
		-0.968230, -0.192536, 0.159561,
		44.723881, 33.490768, 30.054600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034470, 34.196655, 29.957293>,  <45.401642, 33.625546, 29.942907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034470, 34.196655, 29.957293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818089, 33.947906, 30.183792>,  <44.688259, 33.798656, 30.319693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818089, 33.947906, 30.183792>,  <45.034470, 34.196655, 29.957293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818089, 33.947906, 30.183792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060096, 0.700124, 0.711488,
		-0.838903, 0.350852, -0.416107,
		-0.540953, -0.621876, 0.566251,
		44.655804, 33.761345, 30.353668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405163, 34.629871, 30.198351>,  <45.034470, 34.196655, 29.957293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405163, 34.629871, 30.198351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448929, 34.318451, 30.445539>,  <44.475189, 34.131599, 30.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448929, 34.318451, 30.445539>,  <44.405163, 34.629871, 30.198351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448929, 34.318451, 30.445539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120657, 0.606706, 0.785716,
		-0.986646, -0.160530, -0.027556,
		0.109413, -0.778549, 0.617973,
		44.481754, 34.084885, 30.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750755, 34.634190, 30.630320>,  <44.405163, 34.629871, 30.198351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750755, 34.634190, 30.630320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006039, 34.418686, 30.850294>,  <44.159206, 34.289383, 30.982279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006039, 34.418686, 30.850294>,  <43.750755, 34.634190, 30.630320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006039, 34.418686, 30.850294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231380, 0.547071, 0.804473,
		-0.734272, -0.640664, 0.224486,
		0.638206, -0.538761, 0.549936,
		44.197502, 34.257057, 31.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355026, 34.611050, 31.351446>,  <43.750755, 34.634190, 30.630320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355026, 34.611050, 31.351446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723831, 34.471207, 31.417973>,  <43.945114, 34.387302, 31.457890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723831, 34.471207, 31.417973>,  <43.355026, 34.611050, 31.351446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723831, 34.471207, 31.417973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038658, 0.510584, 0.858958,
		-0.385216, -0.785544, 0.484282,
		0.922016, -0.349606, 0.166317,
		44.000435, 34.366325, 31.467867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333389, 34.471703, 32.103802>,  <43.355026, 34.611050, 31.351446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333389, 34.471703, 32.103802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720688, 34.492016, 32.005882>,  <43.953068, 34.504204, 31.947132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720688, 34.492016, 32.005882>,  <43.333389, 34.471703, 32.103802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720688, 34.492016, 32.005882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171569, 0.577214, 0.798366,
		0.181846, -0.815012, 0.550171,
		0.968244, 0.050787, -0.244795,
		44.011162, 34.507252, 31.932444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740662, 34.336674, 32.722069>,  <43.333389, 34.471703, 32.103802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740662, 34.336674, 32.722069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980301, 34.536461, 32.471752>,  <44.124084, 34.656334, 32.321560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980301, 34.536461, 32.471752>,  <43.740662, 34.336674, 32.722069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980301, 34.536461, 32.471752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378884, 0.511692, 0.771115,
		0.705361, -0.699074, 0.117311,
		0.599094, 0.499467, -0.625796,
		44.160030, 34.686302, 32.284012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432526, 34.383476, 33.037754>,  <43.740662, 34.336674, 32.722069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432526, 34.383476, 33.037754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417023, 34.682484, 32.772511>,  <44.407722, 34.861889, 32.613365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417023, 34.682484, 32.772511>,  <44.432526, 34.383476, 33.037754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417023, 34.682484, 32.772511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371132, 0.626904, 0.685020,
		0.927771, -0.219550, -0.301726,
		-0.038758, 0.747522, -0.663106,
		44.405396, 34.906738, 32.573578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026768, 34.577049, 33.153027>,  <44.432526, 34.383476, 33.037754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026768, 34.577049, 33.153027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816288, 34.873432, 32.986130>,  <44.689999, 35.051262, 32.885990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816288, 34.873432, 32.986130>,  <45.026768, 34.577049, 33.153027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816288, 34.873432, 32.986130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430097, 0.655180, 0.621092,
		0.733573, 0.147365, -0.663441,
		-0.526201, 0.740960, -0.417241,
		44.658428, 35.095722, 32.860958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484409, 35.063667, 33.033268>,  <45.026768, 34.577049, 33.153027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484409, 35.063667, 33.033268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131062, 35.249783, 33.010792>,  <44.919052, 35.361454, 32.997307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131062, 35.249783, 33.010792>,  <45.484409, 35.063667, 33.033268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131062, 35.249783, 33.010792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303499, 0.659282, 0.687921,
		0.357131, 0.590636, -0.723607,
		-0.883372, 0.465292, -0.056192,
		44.866051, 35.389370, 32.993935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645966, 35.806561, 33.027122>,  <45.484409, 35.063667, 33.033268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645966, 35.806561, 33.027122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274147, 35.741199, 33.159332>,  <45.051056, 35.701981, 33.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274147, 35.741199, 33.159332>,  <45.645966, 35.806561, 33.027122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274147, 35.741199, 33.159332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184077, 0.571065, 0.800000,
		-0.319479, 0.804477, -0.500750,
		-0.929542, -0.163407, 0.330529,
		44.995285, 35.692177, 33.258492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477669, 36.423302, 33.404854>,  <45.645966, 35.806561, 33.027122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477669, 36.423302, 33.404854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247917, 36.128666, 33.547699>,  <45.110065, 35.951885, 33.633404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247917, 36.128666, 33.547699>,  <45.477669, 36.423302, 33.404854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247917, 36.128666, 33.547699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017304, 0.425226, 0.904922,
		-0.818405, 0.525950, -0.231496,
		-0.574382, -0.736586, 0.357108,
		45.075603, 35.907688, 33.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577461, 36.558258, 34.026905>,  <45.477669, 36.423302, 33.404854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577461, 36.558258, 34.026905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329273, 36.245018, 34.043697>,  <45.180359, 36.057072, 34.053772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329273, 36.245018, 34.043697>,  <45.577461, 36.558258, 34.026905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329273, 36.245018, 34.043697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006723, 0.048222, 0.998814,
		-0.784198, 0.620020, -0.024656,
		-0.620474, -0.783102, 0.041985,
		45.143131, 36.010086, 34.056293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281517, 36.191647, 33.972500>,  <45.577461, 36.558258, 34.026905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281517, 36.191647, 33.972500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294662, 36.034710, 34.340191>,  <46.302551, 35.940548, 34.560806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294662, 36.034710, 34.340191>,  <46.281517, 36.191647, 33.972500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294662, 36.034710, 34.340191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706592, -0.641347, -0.299002,
		0.706857, 0.659349, 0.256147,
		0.032868, -0.392343, 0.919231,
		46.304523, 35.917007, 34.615959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053913, 36.201626, 34.291660>,  <46.281517, 36.191647, 33.972500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053913, 36.201626, 34.291660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828423, 35.903728, 34.434532>,  <46.693127, 35.724991, 34.520256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828423, 35.903728, 34.434532>,  <47.053913, 36.201626, 34.291660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828423, 35.903728, 34.434532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640479, -0.667201, -0.380301,
		0.521535, 0.014380, 0.853109,
		-0.563726, -0.744739, 0.357179,
		46.659306, 35.680305, 34.541687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538677, 35.746784, 34.398392>,  <47.053913, 36.201626, 34.291660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538677, 35.746784, 34.398392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224831, 35.502403, 34.440563>,  <47.036522, 35.355774, 34.465866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224831, 35.502403, 34.440563>,  <47.538677, 35.746784, 34.398392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224831, 35.502403, 34.440563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516895, -0.738526, -0.432896,
		0.342339, -0.285163, 0.895258,
		-0.784617, -0.610952, 0.105427,
		46.989445, 35.319118, 34.472191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536411, 34.961147, 34.767776>,  <47.538677, 35.746784, 34.398392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536411, 34.961147, 34.767776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813290, 35.212116, 34.910442>,  <47.979416, 35.362698, 34.996040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813290, 35.212116, 34.910442>,  <47.536411, 34.961147, 34.767776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813290, 35.212116, 34.910442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721683, 0.605969, 0.334628,
		-0.006173, -0.489024, 0.872249,
		0.692197, 0.627421, 0.356660,
		48.020950, 35.400341, 35.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.706539, 41.838680, 44.405720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.376190, 41.614475, 44.430237>,  <33.177979, 41.479954, 44.444946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.376190, 41.614475, 44.430237>,  <33.706539, 41.838680, 44.405720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376190, 41.614475, 44.430237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180483, -0.365773, -0.913037,
		0.534185, -0.742993, 0.403246,
		-0.825877, -0.560510, 0.061293,
		33.128426, 41.446323, 44.448624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927319, 41.144379, 44.249809>,  <33.706539, 41.838680, 44.405720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927319, 41.144379, 44.249809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.533409, 41.150585, 44.180557>,  <33.297062, 41.154308, 44.139008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.533409, 41.150585, 44.180557>,  <33.927319, 41.144379, 44.249809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533409, 41.150585, 44.180557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128527, -0.605557, -0.785354,
		-0.117029, -0.795650, 0.594344,
		-0.984776, 0.015520, -0.173130,
		33.237976, 41.155243, 44.128616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825054, 40.531017, 43.951561>,  <33.927319, 41.144379, 44.249809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825054, 40.531017, 43.951561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515282, 40.761238, 43.846489>,  <33.329418, 40.899368, 43.783443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515282, 40.761238, 43.846489>,  <33.825054, 40.531017, 43.951561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515282, 40.761238, 43.846489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004707, -0.409950, -0.912096,
		-0.632643, -0.707590, 0.314768,
		-0.774429, 0.575550, -0.262682,
		33.282951, 40.933903, 43.767685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398376, 40.098713, 43.720787>,  <33.825054, 40.531017, 43.951561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398376, 40.098713, 43.720787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297207, 40.457848, 43.576611>,  <33.236507, 40.673328, 43.490105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297207, 40.457848, 43.576611>,  <33.398376, 40.098713, 43.720787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297207, 40.457848, 43.576611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028119, -0.379217, -0.924881,
		-0.967079, -0.223785, 0.121158,
		-0.252919, 0.897839, -0.360440,
		33.221333, 40.727200, 43.468479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704140, 40.037613, 43.375523>,  <33.398376, 40.098713, 43.720787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704140, 40.037613, 43.375523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915379, 40.349827, 43.241730>,  <33.042122, 40.537155, 43.161453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915379, 40.349827, 43.241730>,  <32.704140, 40.037613, 43.375523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915379, 40.349827, 43.241730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021165, -0.405861, -0.913689,
		-0.848923, 0.475434, -0.230853,
		0.528093, 0.780538, -0.334483,
		33.073807, 40.583988, 43.141384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291477, 40.204006, 42.834064>,  <32.704140, 40.037613, 43.375523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291477, 40.204006, 42.834064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.655888, 40.358932, 42.777466>,  <32.874535, 40.451889, 42.743507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.655888, 40.358932, 42.777466>,  <32.291477, 40.204006, 42.834064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655888, 40.358932, 42.777466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041190, -0.255950, -0.965812,
		-0.410292, 0.885706, -0.217223,
		0.911024, 0.387317, -0.141496,
		32.929195, 40.475128, 42.735016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407166, 40.294815, 42.038284>,  <32.291477, 40.204006, 42.834064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407166, 40.294815, 42.038284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.787621, 40.353115, 42.147167>,  <33.015892, 40.388096, 42.212498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.787621, 40.353115, 42.147167>,  <32.407166, 40.294815, 42.038284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787621, 40.353115, 42.147167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305100, -0.307992, -0.901141,
		-0.047503, 0.940158, -0.337410,
		0.951135, 0.145751, 0.272212,
		33.072960, 40.396839, 42.228832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899387, 40.736691, 41.521885>,  <32.407166, 40.294815, 42.038284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899387, 40.736691, 41.521885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.144341, 40.483238, 41.710987>,  <33.291313, 40.331169, 41.824448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.144341, 40.483238, 41.710987>,  <32.899387, 40.736691, 41.521885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144341, 40.483238, 41.710987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307305, -0.360186, -0.880812,
		0.728388, 0.684677, -0.025855,
		0.612384, -0.633628, 0.472759,
		33.328056, 40.293148, 41.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487404, 40.781631, 41.027439>,  <32.899387, 40.736691, 41.521885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487404, 40.781631, 41.027439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600166, 40.498684, 41.286716>,  <33.667824, 40.328915, 41.442284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600166, 40.498684, 41.286716>,  <33.487404, 40.781631, 41.027439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600166, 40.498684, 41.286716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479345, -0.481397, -0.733816,
		0.831117, 0.517579, 0.203362,
		0.281910, -0.707367, 0.648196,
		33.684738, 40.286472, 41.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225414, 40.697567, 40.923351>,  <33.487404, 40.781631, 41.027439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225414, 40.697567, 40.923351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089035, 40.353714, 41.075550>,  <34.007206, 40.147400, 41.166870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089035, 40.353714, 41.075550>,  <34.225414, 40.697567, 40.923351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089035, 40.353714, 41.075550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496979, -0.508386, -0.703246,
		0.797976, -0.050672, 0.600555,
		-0.340949, -0.859637, 0.380497,
		33.986752, 40.095821, 41.189697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819782, 40.296860, 41.039684>,  <34.225414, 40.697567, 40.923351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819782, 40.296860, 41.039684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519119, 40.033604, 41.022396>,  <34.338722, 39.875652, 41.012024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519119, 40.033604, 41.022396>,  <34.819782, 40.296860, 41.039684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519119, 40.033604, 41.022396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453882, -0.468608, -0.757890,
		0.478541, -0.589291, 0.650949,
		-0.751658, -0.658136, -0.043220,
		34.293621, 39.836163, 41.009430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143688, 39.728516, 41.033081>,  <34.819782, 40.296860, 41.039684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143688, 39.728516, 41.033081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788490, 39.613918, 40.889202>,  <34.575371, 39.545158, 40.802876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788490, 39.613918, 40.889202>,  <35.143688, 39.728516, 41.033081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788490, 39.613918, 40.889202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455277, -0.437730, -0.775316,
		0.064675, -0.852240, 0.519138,
		-0.887998, -0.286495, -0.359695,
		34.522091, 39.527969, 40.781292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185852, 38.946838, 40.831963>,  <35.143688, 39.728516, 41.033081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185852, 38.946838, 40.831963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892166, 39.120842, 40.623463>,  <34.715954, 39.225243, 40.498363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892166, 39.120842, 40.623463>,  <35.185852, 38.946838, 40.831963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892166, 39.120842, 40.623463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367932, -0.390294, -0.843977,
		-0.570576, -0.811442, 0.126506,
		-0.734213, 0.435008, -0.521248,
		34.671902, 39.251343, 40.467087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953075, 38.362415, 40.246132>,  <35.185852, 38.946838, 40.831963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953075, 38.362415, 40.246132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853985, 38.728706, 40.119591>,  <34.794529, 38.948479, 40.043667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853985, 38.728706, 40.119591>,  <34.953075, 38.362415, 40.246132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853985, 38.728706, 40.119591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447087, -0.181628, -0.875856,
		-0.859502, -0.358411, -0.364414,
		-0.247729, 0.915725, -0.316351,
		34.779667, 39.003426, 40.024685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702126, 38.221638, 39.585278>,  <34.953075, 38.362415, 40.246132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702126, 38.221638, 39.585278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836468, 38.598095, 39.600475>,  <34.917072, 38.823971, 39.609596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836468, 38.598095, 39.600475>,  <34.702126, 38.221638, 39.585278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836468, 38.598095, 39.600475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490674, -0.140382, -0.859960,
		-0.804014, 0.307468, -0.508945,
		0.335857, 0.941146, 0.037998,
		34.937225, 38.880440, 39.611874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691998, 38.477421, 38.865696>,  <34.702126, 38.221638, 39.585278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691998, 38.477421, 38.865696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928761, 38.743767, 39.047363>,  <35.070820, 38.903576, 39.156364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928761, 38.743767, 39.047363>,  <34.691998, 38.477421, 38.865696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928761, 38.743767, 39.047363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581473, 0.037430, -0.812704,
		-0.558154, 0.745130, -0.365029,
		0.591907, 0.665868, 0.454164,
		35.106331, 38.943527, 39.183613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813133, 38.950588, 38.378082>,  <34.691998, 38.477421, 38.865696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813133, 38.950588, 38.378082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119175, 39.004646, 38.629906>,  <35.302799, 39.037083, 38.781002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119175, 39.004646, 38.629906>,  <34.813133, 38.950588, 38.378082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119175, 39.004646, 38.629906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624986, 0.079390, -0.776589,
		-0.154936, 0.987640, -0.023724,
		0.765106, 0.135148, 0.629561,
		35.348705, 39.045189, 38.818775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244637, 39.383511, 37.967922>,  <34.813133, 38.950588, 38.378082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244637, 39.383511, 37.967922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475269, 39.243294, 38.263130>,  <35.613647, 39.159164, 38.440254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475269, 39.243294, 38.263130>,  <35.244637, 39.383511, 37.967922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475269, 39.243294, 38.263130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755432, -0.115387, -0.644987,
		0.311255, 0.929411, 0.198282,
		0.576579, -0.350544, 0.738022,
		35.648243, 39.138130, 38.484535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880089, 39.761585, 37.850052>,  <35.244637, 39.383511, 37.967922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880089, 39.761585, 37.850052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980408, 39.451763, 38.082317>,  <36.040600, 39.265869, 38.221676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980408, 39.451763, 38.082317>,  <35.880089, 39.761585, 37.850052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980408, 39.451763, 38.082317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834947, -0.130453, -0.534645,
		0.489860, 0.618910, 0.613993,
		0.250800, -0.774553, 0.580661,
		36.055649, 39.219398, 38.256516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561703, 39.728844, 37.853020>,  <35.880089, 39.761585, 37.850052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561703, 39.728844, 37.853020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489552, 39.360634, 37.991642>,  <36.446259, 39.139709, 38.074814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489552, 39.360634, 37.991642>,  <36.561703, 39.728844, 37.853020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489552, 39.360634, 37.991642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845182, -0.325281, -0.424099,
		0.503121, 0.216404, 0.836683,
		-0.180380, -0.920522, 0.346557,
		36.435436, 39.084476, 38.095608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213551, 39.447910, 38.214771>,  <36.561703, 39.728844, 37.853020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213551, 39.447910, 38.214771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999592, 39.138611, 38.078556>,  <36.871216, 38.953030, 37.996826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999592, 39.138611, 38.078556>,  <37.213551, 39.447910, 38.214771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999592, 39.138611, 38.078556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818726, -0.374789, -0.434996,
		0.208732, -0.511484, 0.833556,
		-0.534901, -0.773251, -0.340535,
		36.839123, 38.906635, 37.976395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631638, 38.805054, 38.293003>,  <37.213551, 39.447910, 38.214771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631638, 38.805054, 38.293003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355110, 38.686523, 38.029408>,  <37.189194, 38.615406, 37.871250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355110, 38.686523, 38.029408>,  <37.631638, 38.805054, 38.293003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355110, 38.686523, 38.029408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717233, -0.391843, -0.576225,
		-0.087471, -0.871006, 0.483422,
		-0.691321, -0.296323, -0.658990,
		37.147713, 38.597626, 37.831711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247612, 38.388386, 38.184776>,  <37.631638, 38.805054, 38.293003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247612, 38.388386, 38.184776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634541, 38.332870, 38.269653>,  <38.866699, 38.299561, 38.320580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634541, 38.332870, 38.269653>,  <38.247612, 38.388386, 38.184776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634541, 38.332870, 38.269653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162229, 0.304371, 0.938637,
		-0.194859, -0.942388, 0.271909,
		0.967322, -0.138790, 0.212192,
		38.924736, 38.291233, 38.333309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227089, 38.064899, 38.835636>,  <38.247612, 38.388386, 38.184776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227089, 38.064899, 38.835636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587151, 38.233711, 38.792534>,  <38.803188, 38.334999, 38.766674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587151, 38.233711, 38.792534>,  <38.227089, 38.064899, 38.835636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587151, 38.233711, 38.792534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084322, 0.411547, 0.907479,
		0.427329, -0.807787, 0.406043,
		0.900155, 0.422031, -0.107752,
		38.857197, 38.360321, 38.760208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582569, 37.942173, 39.452255>,  <38.227089, 38.064899, 38.835636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582569, 37.942173, 39.452255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741585, 38.255737, 39.261490>,  <38.836994, 38.443874, 39.147030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741585, 38.255737, 39.261490>,  <38.582569, 37.942173, 39.452255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741585, 38.255737, 39.261490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001312, 0.520235, 0.854022,
		0.917586, -0.338877, 0.207840,
		0.397534, 0.783911, -0.476916,
		38.860844, 38.490910, 39.118416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145081, 38.013546, 39.826302>,  <38.582569, 37.942173, 39.452255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145081, 38.013546, 39.826302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029995, 38.349224, 39.641708>,  <38.960945, 38.550632, 39.530952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029995, 38.349224, 39.641708>,  <39.145081, 38.013546, 39.826302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029995, 38.349224, 39.641708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024462, 0.475263, 0.879504,
		0.957404, 0.264334, -0.116211,
		-0.287713, 0.839198, -0.461484,
		38.943680, 38.600983, 39.503262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564861, 38.498360, 40.094650>,  <39.145081, 38.013546, 39.826302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564861, 38.498360, 40.094650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245846, 38.692169, 39.950890>,  <39.054436, 38.808453, 39.864632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245846, 38.692169, 39.950890>,  <39.564861, 38.498360, 40.094650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245846, 38.692169, 39.950890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107818, 0.471685, 0.875151,
		0.593551, 0.736719, -0.323948,
		-0.797541, 0.484519, -0.359401,
		39.006584, 38.837524, 39.843071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647022, 39.090805, 40.462292>,  <39.564861, 38.498360, 40.094650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647022, 39.090805, 40.462292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289120, 39.141804, 40.291103>,  <39.074379, 39.172401, 40.188389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289120, 39.141804, 40.291103>,  <39.647022, 39.090805, 40.462292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289120, 39.141804, 40.291103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252458, 0.646101, 0.720291,
		0.368347, 0.752528, -0.545913,
		-0.894754, 0.127497, -0.427971,
		39.020695, 39.180054, 40.162712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468693, 39.864326, 40.411091>,  <39.647022, 39.090805, 40.462292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468693, 39.864326, 40.411091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123783, 39.661865, 40.404293>,  <38.916836, 39.540386, 40.400215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123783, 39.661865, 40.404293>,  <39.468693, 39.864326, 40.411091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123783, 39.661865, 40.404293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320366, 0.519155, 0.792366,
		-0.392237, 0.688682, -0.609810,
		-0.862273, -0.506158, -0.016999,
		38.865101, 39.510017, 40.399193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964062, 40.336571, 40.491001>,  <39.468693, 39.864326, 40.411091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964062, 40.336571, 40.491001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737888, 40.010502, 40.541248>,  <38.602184, 39.814861, 40.571396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737888, 40.010502, 40.541248>,  <38.964062, 40.336571, 40.491001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737888, 40.010502, 40.541248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577324, 0.499933, 0.645572,
		-0.589052, 0.292507, -0.753298,
		-0.565433, -0.815173, 0.125615,
		38.568260, 39.765949, 40.578934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198334, 40.568920, 40.386490>,  <38.964062, 40.336571, 40.491001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198334, 40.568920, 40.386490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235733, 40.254574, 40.631008>,  <38.258175, 40.065968, 40.777718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235733, 40.254574, 40.631008>,  <38.198334, 40.568920, 40.386490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235733, 40.254574, 40.631008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676768, 0.400157, 0.617949,
		-0.730235, -0.471483, -0.494430,
		0.093502, -0.785862, 0.611292,
		38.263783, 40.018814, 40.814396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532555, 40.449150, 40.631691>,  <38.198334, 40.568920, 40.386490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532555, 40.449150, 40.631691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738064, 40.231113, 40.896694>,  <37.861370, 40.100292, 41.055695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738064, 40.231113, 40.896694>,  <37.532555, 40.449150, 40.631691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738064, 40.231113, 40.896694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651233, 0.254924, 0.714779,
		-0.558507, -0.798681, -0.224007,
		0.513776, -0.545090, 0.662504,
		37.892197, 40.067585, 41.095444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008518, 40.033150, 41.061718>,  <37.532555, 40.449150, 40.631691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008518, 40.033150, 41.061718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350471, 40.068943, 41.266132>,  <37.555645, 40.090420, 41.388783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350471, 40.068943, 41.266132>,  <37.008518, 40.033150, 41.061718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350471, 40.068943, 41.266132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512623, 0.297390, 0.805467,
		-0.079905, -0.950554, 0.300105,
		0.854887, 0.089480, 0.511039,
		37.606937, 40.095787, 41.419445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832638, 39.796074, 41.672222>,  <37.008518, 40.033150, 41.061718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832638, 39.796074, 41.672222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172028, 39.990780, 41.755310>,  <37.375664, 40.107605, 41.805164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172028, 39.990780, 41.755310>,  <36.832638, 39.796074, 41.672222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172028, 39.990780, 41.755310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384471, 0.297211, 0.873984,
		0.363692, -0.821415, 0.439325,
		0.848475, 0.486768, 0.207717,
		37.426571, 40.136810, 41.817627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908146, 39.664326, 42.401009>,  <36.832638, 39.796074, 41.672222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908146, 39.664326, 42.401009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098679, 39.999897, 42.295704>,  <37.212997, 40.201241, 42.232521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098679, 39.999897, 42.295704>,  <36.908146, 39.664326, 42.401009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098679, 39.999897, 42.295704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457569, 0.492186, 0.740529,
		0.750827, -0.232274, 0.618311,
		0.476330, 0.838929, -0.263265,
		37.241577, 40.251575, 42.216724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241344, 39.863659, 43.051064>,  <36.908146, 39.664326, 42.401009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241344, 39.863659, 43.051064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274055, 40.207809, 42.849842>,  <37.293682, 40.414299, 42.729111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274055, 40.207809, 42.849842>,  <37.241344, 39.863659, 43.051064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274055, 40.207809, 42.849842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340096, 0.498533, 0.797371,
		0.936829, 0.105881, 0.333378,
		0.081774, 0.860380, -0.503050,
		37.298588, 40.465923, 42.698929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669254, 40.267689, 43.482681>,  <37.241344, 39.863659, 43.051064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669254, 40.267689, 43.482681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441277, 40.495071, 43.245358>,  <37.304489, 40.631500, 43.102962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441277, 40.495071, 43.245358>,  <37.669254, 40.267689, 43.482681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441277, 40.495071, 43.245358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379478, 0.458349, 0.803687,
		0.728806, 0.683206, -0.045517,
		-0.569946, 0.568459, -0.593309,
		37.270294, 40.665607, 43.067364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607986, 40.862911, 43.855213>,  <37.669254, 40.267689, 43.482681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607986, 40.862911, 43.855213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306927, 40.924053, 43.599041>,  <37.126289, 40.960739, 43.445339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306927, 40.924053, 43.599041>,  <37.607986, 40.862911, 43.855213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306927, 40.924053, 43.599041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569117, 0.338089, 0.749534,
		0.331090, 0.928619, -0.167472,
		-0.752652, 0.152852, -0.640431,
		37.081131, 40.969910, 43.406910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336494, 41.524681, 43.922684>,  <37.607986, 40.862911, 43.855213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336494, 41.524681, 43.922684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003933, 41.361843, 43.771397>,  <36.804398, 41.264141, 43.680626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003933, 41.361843, 43.771397>,  <37.336494, 41.524681, 43.922684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003933, 41.361843, 43.771397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503837, 0.265214, 0.822077,
		-0.234353, 0.874035, -0.425607,
		-0.831401, -0.407093, -0.378217,
		36.754513, 41.239716, 43.657932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763294, 42.089703, 44.008118>,  <37.336494, 41.524681, 43.922684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763294, 42.089703, 44.008118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559048, 41.756447, 43.923130>,  <36.436501, 41.556492, 43.872139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559048, 41.756447, 43.923130>,  <36.763294, 42.089703, 44.008118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559048, 41.756447, 43.923130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673516, 0.233978, 0.701164,
		-0.534457, 0.501127, -0.680608,
		-0.510620, -0.833142, -0.212466,
		36.405861, 41.506504, 43.859390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.009205, 42.348145, 43.725014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001980, 41.965439, 43.841141>,  <35.997643, 41.735817, 43.910816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001980, 41.965439, 43.841141>,  <36.009205, 42.348145, 43.725014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001980, 41.965439, 43.841141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495911, 0.260703, 0.828315,
		-0.868185, -0.129005, -0.479179,
		-0.018066, -0.956761, 0.290313,
		35.996559, 41.678410, 43.928234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321846, 42.161129, 43.998859>,  <36.009205, 42.348145, 43.725014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321846, 42.161129, 43.998859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533302, 41.862720, 44.160843>,  <35.660175, 41.683678, 44.258034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533302, 41.862720, 44.160843>,  <35.321846, 42.161129, 43.998859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533302, 41.862720, 44.160843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481824, 0.129050, 0.866713,
		-0.698843, -0.653303, -0.291227,
		0.528643, -0.746017, 0.404963,
		35.691895, 41.638916, 44.282333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828503, 41.632744, 44.236324>,  <35.321846, 42.161129, 43.998859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828503, 41.632744, 44.236324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168388, 41.570042, 44.437683>,  <35.372318, 41.532421, 44.558498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168388, 41.570042, 44.437683>,  <34.828503, 41.632744, 44.236324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168388, 41.570042, 44.437683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516315, -0.054011, 0.854694,
		-0.106791, -0.986159, -0.126830,
		0.849715, -0.156758, 0.503401,
		35.423302, 41.523018, 44.588703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642727, 41.186073, 44.875507>,  <34.828503, 41.632744, 44.236324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642727, 41.186073, 44.875507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993721, 41.353077, 44.969913>,  <35.204319, 41.453281, 45.026558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993721, 41.353077, 44.969913>,  <34.642727, 41.186073, 44.875507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993721, 41.353077, 44.969913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246618, -0.029265, 0.968671,
		0.411341, -0.908199, 0.077287,
		0.877484, 0.417514, 0.236016,
		35.256966, 41.478333, 45.040718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852615, 40.822189, 45.541264>,  <34.642727, 41.186073, 44.875507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852615, 40.822189, 45.541264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.080341, 41.150246, 45.518440>,  <35.216976, 41.347080, 45.504745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.080341, 41.150246, 45.518440>,  <34.852615, 40.822189, 45.541264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080341, 41.150246, 45.518440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065167, 0.114205, 0.991318,
		0.819536, -0.560649, 0.118464,
		0.569310, 0.820141, -0.057059,
		35.251133, 41.396286, 45.501324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467201, 40.822987, 46.040497>,  <34.852615, 40.822189, 45.541264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467201, 40.822987, 46.040497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.365772, 41.203415, 45.969887>,  <35.304916, 41.431671, 45.927521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.365772, 41.203415, 45.969887>,  <35.467201, 40.822987, 46.040497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365772, 41.203415, 45.969887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124470, 0.213050, 0.969081,
		0.959275, 0.223759, -0.172403,
		-0.253571, 0.951074, -0.176522,
		35.289700, 41.488739, 45.916931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925636, 41.115051, 46.483139>,  <35.467201, 40.822987, 46.040497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925636, 41.115051, 46.483139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681213, 41.421463, 46.403324>,  <35.534561, 41.605309, 46.355434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681213, 41.421463, 46.403324>,  <35.925636, 41.115051, 46.483139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681213, 41.421463, 46.403324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018544, 0.265856, 0.963834,
		0.791369, 0.585257, -0.176658,
		-0.611057, 0.766025, -0.199537,
		35.497898, 41.651272, 46.343464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138912, 41.687973, 46.988724>,  <35.925636, 41.115051, 46.483139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138912, 41.687973, 46.988724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764282, 41.764309, 46.871140>,  <35.539505, 41.810112, 46.800591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764282, 41.764309, 46.871140>,  <36.138912, 41.687973, 46.988724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764282, 41.764309, 46.871140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216631, 0.344096, 0.913602,
		0.275503, 0.919335, -0.280929,
		-0.936573, 0.190842, -0.293956,
		35.483311, 41.821560, 46.782951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012264, 42.430618, 47.095840>,  <36.138912, 41.687973, 46.988724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012264, 42.430618, 47.095840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642288, 42.278576, 47.095547>,  <35.420303, 42.187351, 47.095371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642288, 42.278576, 47.095547>,  <36.012264, 42.430618, 47.095840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642288, 42.278576, 47.095547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153224, 0.371084, 0.915871,
		-0.347859, 0.847239, -0.401473,
		-0.924941, -0.380109, -0.000733,
		35.364807, 42.164543, 47.095325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624031, 43.017746, 47.321724>,  <36.012264, 42.430618, 47.095840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624031, 43.017746, 47.321724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413597, 42.681503, 47.373280>,  <35.287338, 42.479759, 47.404213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413597, 42.681503, 47.373280>,  <35.624031, 43.017746, 47.321724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413597, 42.681503, 47.373280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352398, 0.353412, 0.866554,
		-0.773983, 0.410461, -0.482154,
		-0.526085, -0.840608, 0.128889,
		35.255772, 42.429321, 47.411945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008915, 43.255848, 47.481216>,  <35.624031, 43.017746, 47.321724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008915, 43.255848, 47.481216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.024090, 42.887001, 47.635239>,  <35.033195, 42.665695, 47.727654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.024090, 42.887001, 47.635239>,  <35.008915, 43.255848, 47.481216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024090, 42.887001, 47.635239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261702, 0.362716, 0.894399,
		-0.964403, -0.134705, -0.227557,
		0.037941, -0.922113, 0.385057,
		35.035473, 42.610367, 47.750755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329727, 43.200031, 47.877708>,  <35.008915, 43.255848, 47.481216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329727, 43.200031, 47.877708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578804, 42.912888, 48.002247>,  <34.728249, 42.740601, 48.076969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578804, 42.912888, 48.002247>,  <34.329727, 43.200031, 47.877708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578804, 42.912888, 48.002247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200136, 0.238549, 0.950284,
		-0.756440, -0.654045, 0.004873,
		0.622690, -0.717858, 0.311346,
		34.765610, 42.697529, 48.095650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971565, 42.809834, 48.281754>,  <34.329727, 43.200031, 47.877708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971565, 42.809834, 48.281754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353638, 42.754269, 48.386314>,  <34.582882, 42.720928, 48.449051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353638, 42.754269, 48.386314>,  <33.971565, 42.809834, 48.281754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353638, 42.754269, 48.386314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249425, 0.097884, 0.963434,
		-0.159422, -0.985455, 0.058848,
		0.955181, -0.138915, 0.261401,
		34.640194, 42.712593, 48.464733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927292, 42.447617, 48.869102>,  <33.971565, 42.809834, 48.281754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927292, 42.447617, 48.869102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298710, 42.595535, 48.882034>,  <34.521561, 42.684288, 48.889793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298710, 42.595535, 48.882034>,  <33.927292, 42.447617, 48.869102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298710, 42.595535, 48.882034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093065, 0.147592, 0.984660,
		0.359356, -0.917314, 0.171461,
		0.928548, 0.369800, 0.032331,
		34.577274, 42.706474, 48.891735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275215, 42.063831, 49.372231>,  <33.927292, 42.447617, 48.869102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275215, 42.063831, 49.372231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503376, 42.391331, 49.346027>,  <34.640274, 42.587830, 49.330307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503376, 42.391331, 49.346027>,  <34.275215, 42.063831, 49.372231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503376, 42.391331, 49.346027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083476, 0.137130, 0.987029,
		0.817110, -0.557539, 0.146565,
		0.570406, 0.818747, -0.065509,
		34.674500, 42.636955, 49.326374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668983, 42.101562, 49.952213>,  <34.275215, 42.063831, 49.372231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668983, 42.101562, 49.952213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738522, 42.483772, 49.856926>,  <34.780243, 42.713097, 49.799751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738522, 42.483772, 49.856926>,  <34.668983, 42.101562, 49.952213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738522, 42.483772, 49.856926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052148, 0.250497, 0.966712,
		0.983391, -0.155635, 0.093376,
		0.173845, 0.955526, -0.238220,
		34.790676, 42.770432, 49.785461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180336, 42.372879, 50.345623>,  <34.668983, 42.101562, 49.952213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180336, 42.372879, 50.345623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991608, 42.709087, 50.239105>,  <34.878368, 42.910812, 50.175194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991608, 42.709087, 50.239105>,  <35.180336, 42.372879, 50.345623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991608, 42.709087, 50.239105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106958, 0.245233, 0.963546,
		0.875181, 0.483107, -0.025807,
		-0.471824, 0.840517, -0.266296,
		34.850060, 42.961243, 50.159218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425613, 42.837963, 50.796093>,  <35.180336, 42.372879, 50.345623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425613, 42.837963, 50.796093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.085030, 43.018726, 50.689659>,  <34.880680, 43.127182, 50.625797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.085030, 43.018726, 50.689659>,  <35.425613, 42.837963, 50.796093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085030, 43.018726, 50.689659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092242, 0.370426, 0.924270,
		0.516249, 0.811521, -0.273717,
		-0.851457, 0.451905, -0.266089,
		34.829594, 43.154297, 50.609833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521820, 43.562859, 50.988148>,  <35.425613, 42.837963, 50.796093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521820, 43.562859, 50.988148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133659, 43.466259, 50.989067>,  <34.900764, 43.408298, 50.989620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133659, 43.466259, 50.989067>,  <35.521820, 43.562859, 50.988148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133659, 43.466259, 50.989067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116630, 0.476944, 0.871161,
		-0.211484, 0.845105, -0.490992,
		-0.970398, -0.241501, 0.002301,
		34.842541, 43.393810, 50.989758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276337, 44.130226, 51.369858>,  <35.521820, 43.562859, 50.988148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276337, 44.130226, 51.369858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969742, 43.873569, 51.358547>,  <34.785786, 43.719578, 51.351761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969742, 43.873569, 51.358547>,  <35.276337, 44.130226, 51.369858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969742, 43.873569, 51.358547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266694, 0.277912, 0.922843,
		-0.584272, 0.714889, -0.384136,
		-0.766486, -0.641638, -0.028280,
		34.739796, 43.681080, 51.350063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608444, 44.443813, 51.487503>,  <35.276337, 44.130226, 51.369858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608444, 44.443813, 51.487503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567352, 44.062778, 51.602062>,  <34.542698, 43.834156, 51.670799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567352, 44.062778, 51.602062>,  <34.608444, 44.443813, 51.487503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567352, 44.062778, 51.602062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276516, 0.303924, 0.911685,
		-0.955503, 0.014464, -0.294627,
		-0.102731, -0.952586, 0.286401,
		34.536533, 43.777004, 51.687981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854355, 44.162842, 51.851009>,  <34.608444, 44.443813, 51.487503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854355, 44.162842, 51.851009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.191254, 43.975986, 51.958641>,  <34.393394, 43.863873, 52.023220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.191254, 43.975986, 51.958641>,  <33.854355, 44.162842, 51.851009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191254, 43.975986, 51.958641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232510, 0.135554, 0.963101,
		-0.486373, -0.873733, 0.005556,
		0.842247, -0.467135, 0.269082,
		34.443928, 43.835846, 52.039364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268929, 44.670666, 52.049534>,  <33.854355, 44.162842, 51.851009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268929, 44.670666, 52.049534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188099, 44.766937, 51.669800>,  <33.139599, 44.824699, 51.441959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188099, 44.766937, 51.669800>,  <33.268929, 44.670666, 52.049534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188099, 44.766937, 51.669800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415987, -0.898641, -0.139281,
		-0.886634, 0.366765, 0.281714,
		-0.202077, 0.240681, -0.949336,
		33.127476, 44.839142, 51.384998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588200, 44.556824, 51.942024>,  <33.268929, 44.670666, 52.049534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588200, 44.556824, 51.942024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747601, 44.533184, 51.575920>,  <32.843239, 44.519001, 51.356258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747601, 44.533184, 51.575920>,  <32.588200, 44.556824, 51.942024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747601, 44.533184, 51.575920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499829, -0.850707, -0.162692,
		-0.769006, 0.522308, -0.368544,
		0.398498, -0.059098, -0.915263,
		32.867149, 44.515453, 51.301342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030457, 44.045261, 51.753719>,  <32.588200, 44.556824, 51.942024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030457, 44.045261, 51.753719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634598, 43.987923, 51.750957>,  <32.397083, 43.953522, 51.749302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634598, 43.987923, 51.750957>,  <33.030457, 44.045261, 51.753719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634598, 43.987923, 51.750957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087857, -0.567134, -0.818926,
		0.113474, -0.811056, 0.573857,
		-0.989649, -0.143344, -0.006902,
		32.337704, 43.944920, 51.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944637, 43.284031, 51.530010>,  <33.030457, 44.045261, 51.753719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944637, 43.284031, 51.530010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579639, 43.445404, 51.502911>,  <32.360641, 43.542229, 51.486652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579639, 43.445404, 51.502911>,  <32.944637, 43.284031, 51.530010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579639, 43.445404, 51.502911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184741, -0.554150, -0.811658,
		-0.364997, -0.728118, 0.580191,
		-0.912495, 0.403438, -0.067750,
		32.305889, 43.566437, 51.482586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496727, 42.676846, 51.635048>,  <32.944637, 43.284031, 51.530010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496727, 42.676846, 51.635048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.310974, 42.980728, 51.452972>,  <32.199520, 43.163055, 51.343727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.310974, 42.980728, 51.452972>,  <32.496727, 42.676846, 51.635048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310974, 42.980728, 51.452972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230128, -0.599824, -0.766324,
		-0.855212, -0.251119, 0.453379,
		-0.464386, 0.759704, -0.455187,
		32.171658, 43.208641, 51.316418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897976, 42.344730, 51.310238>,  <32.496727, 42.676846, 51.635048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897976, 42.344730, 51.310238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964033, 42.693943, 51.126698>,  <32.003666, 42.903469, 51.016571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964033, 42.693943, 51.126698>,  <31.897976, 42.344730, 51.310238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964033, 42.693943, 51.126698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054812, -0.456399, -0.888085,
		-0.984746, 0.171811, -0.027519,
		0.165142, 0.873030, -0.458854,
		32.013577, 42.955853, 50.989040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475767, 42.312454, 50.810772>,  <31.897976, 42.344730, 51.310238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475767, 42.312454, 50.810772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720444, 42.594429, 50.667164>,  <31.867250, 42.763615, 50.580997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720444, 42.594429, 50.667164>,  <31.475767, 42.312454, 50.810772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720444, 42.594429, 50.667164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036702, -0.428056, -0.903007,
		-0.790243, 0.565540, -0.235967,
		0.611694, 0.704934, -0.359025,
		31.903952, 42.805908, 50.559456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103771, 42.534733, 50.309898>,  <31.475767, 42.312454, 50.810772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103771, 42.534733, 50.309898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482344, 42.638176, 50.232548>,  <31.709486, 42.700241, 50.186138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482344, 42.638176, 50.232548>,  <31.103771, 42.534733, 50.309898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482344, 42.638176, 50.232548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110463, -0.303427, -0.946430,
		-0.303427, 0.917091, -0.258606,
		0.946430, 0.258606, -0.193373,
		31.766273, 42.715759, 50.174538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082796, 42.897293, 49.656563>,  <31.103771, 42.534733, 50.309898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082796, 42.897293, 49.656563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459229, 42.770790, 49.704468>,  <31.685089, 42.694889, 49.733212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459229, 42.770790, 49.704468>,  <31.082796, 42.897293, 49.656563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459229, 42.770790, 49.704468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006958, -0.335949, -0.941855,
		0.338106, 0.887196, -0.313955,
		0.941082, -0.316262, 0.119759,
		31.741552, 42.675911, 49.740395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472816, 43.121346, 48.982121>,  <31.082796, 42.897293, 49.656563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472816, 43.121346, 48.982121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704380, 42.845238, 49.155735>,  <31.843317, 42.679573, 49.259903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704380, 42.845238, 49.155735>,  <31.472816, 43.121346, 48.982121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704380, 42.845238, 49.155735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414412, -0.209357, -0.885682,
		0.702231, 0.692598, 0.164859,
		0.578908, -0.690273, 0.434038,
		31.878052, 42.638157, 49.285946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159222, 43.263687, 48.491863>,  <31.472816, 43.121346, 48.982121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159222, 43.263687, 48.491863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141605, 42.908222, 48.674438>,  <32.131035, 42.694942, 48.783985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141605, 42.908222, 48.674438>,  <32.159222, 43.263687, 48.491863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141605, 42.908222, 48.674438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340074, -0.442929, -0.829556,
		0.939367, 0.118692, 0.321717,
		-0.044036, -0.888665, 0.456437,
		32.128395, 42.641624, 48.811371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799355, 42.964279, 48.438347>,  <32.159222, 43.263687, 48.491863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799355, 42.964279, 48.438347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561356, 42.649517, 48.503784>,  <32.418556, 42.460659, 48.543045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561356, 42.649517, 48.503784>,  <32.799355, 42.964279, 48.438347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561356, 42.649517, 48.503784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385683, -0.458122, -0.800858,
		0.705143, -0.413413, 0.576076,
		-0.594998, -0.786901, 0.163595,
		32.382854, 42.413448, 48.552864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227661, 42.458611, 48.232121>,  <32.799355, 42.964279, 48.438347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227661, 42.458611, 48.232121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871136, 42.279156, 48.258282>,  <32.657219, 42.171482, 48.273979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871136, 42.279156, 48.258282>,  <33.227661, 42.458611, 48.232121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871136, 42.279156, 48.258282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271496, -0.643684, -0.715514,
		0.363104, -0.619994, 0.695530,
		-0.891317, -0.448640, 0.065398,
		32.603741, 42.144566, 48.277901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371243, 41.787468, 48.265667>,  <33.227661, 42.458611, 48.232121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371243, 41.787468, 48.265667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985607, 41.775478, 48.160110>,  <32.754227, 41.768284, 48.096779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985607, 41.775478, 48.160110>,  <33.371243, 41.787468, 48.265667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985607, 41.775478, 48.160110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261551, -0.279682, -0.923780,
		-0.046113, -0.959625, 0.277478,
		-0.964087, -0.029976, -0.263888,
		32.696381, 41.766487, 48.080944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155396, 41.095104, 48.046940>,  <33.371243, 41.787468, 48.265667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155396, 41.095104, 48.046940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.922955, 41.372120, 47.875965>,  <32.783489, 41.538330, 47.773380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.922955, 41.372120, 47.875965>,  <33.155396, 41.095104, 48.046940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922955, 41.372120, 47.875965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363537, -0.249016, -0.897682,
		-0.728122, -0.677035, -0.107061,
		-0.581102, 0.692542, -0.427441,
		32.748623, 41.579884, 47.747734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901924, 40.804993, 47.463921>,  <33.155396, 41.095104, 48.046940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901924, 40.804993, 47.463921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818016, 41.190235, 47.396477>,  <32.767670, 41.421379, 47.356010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818016, 41.190235, 47.396477>,  <32.901924, 40.804993, 47.463921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818016, 41.190235, 47.396477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063771, -0.185552, -0.980563,
		-0.975669, -0.194942, 0.100341,
		-0.209772, 0.963103, -0.168606,
		32.755085, 41.479168, 47.345894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334648, 40.755581, 47.034710>,  <32.901924, 40.804993, 47.463921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334648, 40.755581, 47.034710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478302, 41.124657, 46.978630>,  <32.564495, 41.346104, 46.944981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.478302, 41.124657, 46.978630>,  <32.334648, 40.755581, 47.034710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478302, 41.124657, 46.978630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013202, -0.145188, -0.989316,
		-0.933192, 0.357151, -0.039961,
		0.359137, 0.922694, -0.140204,
		32.586044, 41.401466, 46.936569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980232, 41.070477, 46.423023>,  <32.334648, 40.755581, 47.034710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980232, 41.070477, 46.423023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302986, 41.304222, 46.457577>,  <32.496639, 41.444469, 46.478310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302986, 41.304222, 46.457577>,  <31.980232, 41.070477, 46.423023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302986, 41.304222, 46.457577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146521, -0.056322, -0.987603,
		-0.572251, 0.809537, -0.131067,
		0.806883, 0.584361, 0.086384,
		32.545052, 41.479530, 46.483490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790096, 41.555058, 45.954052>,  <31.980232, 41.070477, 46.423023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790096, 41.555058, 45.954052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183445, 41.574619, 46.024006>,  <32.419456, 41.586357, 46.065979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183445, 41.574619, 46.024006>,  <31.790096, 41.555058, 45.954052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183445, 41.574619, 46.024006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174440, 0.013180, -0.984580,
		-0.050458, 0.998716, 0.004430,
		0.983374, 0.048907, 0.174882,
		32.478458, 41.589291, 46.076469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982773, 41.973587, 45.463360>,  <31.790096, 41.555058, 45.954052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982773, 41.973587, 45.463360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326553, 41.799297, 45.570305>,  <32.532822, 41.694721, 45.634472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326553, 41.799297, 45.570305>,  <31.982773, 41.973587, 45.463360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326553, 41.799297, 45.570305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238858, -0.120116, -0.963597,
		0.451980, 0.892027, 0.000843,
		0.859454, -0.435728, 0.267358,
		32.584389, 41.668579, 45.650513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508553, 42.270550, 45.012539>,  <31.982773, 41.973587, 45.463360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508553, 42.270550, 45.012539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627739, 41.906738, 45.128448>,  <32.699249, 41.688450, 45.197994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627739, 41.906738, 45.128448>,  <32.508553, 42.270550, 45.012539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627739, 41.906738, 45.128448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212824, -0.232629, -0.948994,
		0.930550, 0.344437, 0.124256,
		0.297963, -0.909531, 0.289777,
		32.717129, 41.633881, 45.215382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167454, 42.225636, 44.688046>,  <32.508553, 42.270550, 45.012539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167454, 42.225636, 44.688046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037079, 41.854206, 44.759056>,  <32.958855, 41.631348, 44.801662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037079, 41.854206, 44.759056>,  <33.167454, 42.225636, 44.688046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037079, 41.854206, 44.759056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139815, -0.233061, -0.962359,
		0.934995, -0.288848, 0.205792,
		-0.325938, -0.928574, 0.177526,
		32.939297, 41.575634, 44.812313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.597118, 32.466778, 27.555923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.231472, 32.304600, 27.555706>,  <42.012085, 32.207294, 27.555576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.231472, 32.304600, 27.555706>,  <42.597118, 32.466778, 27.555923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231472, 32.304600, 27.555706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102523, 0.229856, 0.967809,
		-0.392268, 0.884749, -0.251683,
		-0.914120, -0.405444, -0.000542,
		41.957237, 32.182968, 27.555544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145500, 32.991867, 27.970219>,  <42.597118, 32.466778, 27.555923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145500, 32.991867, 27.970219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953789, 32.641171, 27.954103>,  <41.838760, 32.430752, 27.944433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953789, 32.641171, 27.954103>,  <42.145500, 32.991867, 27.970219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953789, 32.641171, 27.954103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238872, 0.086134, 0.967223,
		-0.844531, 0.473194, -0.250710,
		-0.479279, -0.876738, -0.040290,
		41.810005, 32.378151, 27.942017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425529, 33.080265, 28.233410>,  <42.145500, 32.991867, 27.970219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425529, 33.080265, 28.233410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500813, 32.689236, 28.271217>,  <41.545982, 32.454620, 28.293901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500813, 32.689236, 28.271217>,  <41.425529, 33.080265, 28.233410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500813, 32.689236, 28.271217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399765, 0.011655, 0.916544,
		-0.897088, -0.210282, -0.388605,
		0.188203, -0.977571, 0.094518,
		41.557274, 32.395966, 28.299572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977230, 32.890217, 28.750547>,  <41.425529, 33.080265, 28.233410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977230, 32.890217, 28.750547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184307, 32.548088, 28.758846>,  <41.308552, 32.342812, 28.763826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184307, 32.548088, 28.758846>,  <40.977230, 32.890217, 28.750547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184307, 32.548088, 28.758846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004117, 0.026741, 0.999634,
		-0.855559, -0.517414, 0.017365,
		0.517689, -0.855318, 0.020748,
		41.339615, 32.291492, 28.765070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692219, 32.437637, 29.215443>,  <40.977230, 32.890217, 28.750547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692219, 32.437637, 29.215443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078293, 32.335518, 29.192669>,  <41.309937, 32.274246, 29.179005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078293, 32.335518, 29.192669>,  <40.692219, 32.437637, 29.215443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078293, 32.335518, 29.192669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065748, 0.026106, 0.997495,
		-0.253172, -0.966510, 0.041982,
		0.965184, -0.255298, -0.056937,
		41.367847, 32.258930, 29.175589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826221, 31.913477, 29.667805>,  <40.692219, 32.437637, 29.215443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826221, 31.913477, 29.667805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184380, 32.080303, 29.605425>,  <41.399273, 32.180401, 29.567997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184380, 32.080303, 29.605425>,  <40.826221, 31.913477, 29.667805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184380, 32.080303, 29.605425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106823, 0.138807, 0.984541,
		0.432268, -0.898213, 0.079735,
		0.895395, 0.417068, -0.155951,
		41.452999, 32.205425, 29.558640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152775, 31.692251, 30.268459>,  <40.826221, 31.913477, 29.667805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152775, 31.692251, 30.268459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.372509, 31.975229, 30.090582>,  <41.504349, 32.145016, 29.983856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.372509, 31.975229, 30.090582>,  <41.152775, 31.692251, 30.268459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372509, 31.975229, 30.090582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243857, 0.373289, 0.895092,
		0.799226, -0.600149, 0.032546,
		0.549337, 0.707444, -0.444693,
		41.537312, 32.187462, 29.957174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749401, 31.719913, 30.695980>,  <41.152775, 31.692251, 30.268459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749401, 31.719913, 30.695980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741703, 32.068291, 30.499577>,  <41.737083, 32.277317, 30.381735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741703, 32.068291, 30.499577>,  <41.749401, 31.719913, 30.695980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741703, 32.068291, 30.499577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130612, 0.489079, 0.862405,
		0.991247, -0.047534, -0.123168,
		-0.019245, 0.870943, -0.491007,
		41.735931, 32.329575, 30.352274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247551, 31.990078, 30.894642>,  <41.749401, 31.719913, 30.695980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247551, 31.990078, 30.894642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036362, 32.306427, 30.770853>,  <41.909649, 32.496235, 30.696579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036362, 32.306427, 30.770853>,  <42.247551, 31.990078, 30.894642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036362, 32.306427, 30.770853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014962, 0.373007, 0.927708,
		0.849132, 0.485170, -0.208769,
		-0.527969, 0.790870, -0.309473,
		41.877972, 32.543690, 30.678011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625473, 32.467926, 31.139027>,  <42.247551, 31.990078, 30.894642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625473, 32.467926, 31.139027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258778, 32.618992, 31.086933>,  <42.038761, 32.709633, 31.055677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258778, 32.618992, 31.086933>,  <42.625473, 32.467926, 31.139027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258778, 32.618992, 31.086933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060366, 0.453222, 0.889352,
		0.394901, 0.807441, -0.438284,
		-0.916738, 0.377663, -0.130236,
		41.983757, 32.732292, 31.047863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616993, 33.136162, 31.456768>,  <42.625473, 32.467926, 31.139027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616993, 33.136162, 31.456768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.225384, 33.055138, 31.448004>,  <41.990417, 33.006523, 31.442745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.225384, 33.055138, 31.448004>,  <42.616993, 33.136162, 31.456768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225384, 33.055138, 31.448004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095740, 0.362445, 0.927075,
		-0.179848, 0.909727, -0.374236,
		-0.979024, -0.202562, -0.021913,
		41.931675, 32.994370, 31.441429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390270, 33.737041, 31.467377>,  <42.616993, 33.136162, 31.456768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390270, 33.737041, 31.467377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098450, 33.493904, 31.592773>,  <41.923359, 33.348022, 31.668013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098450, 33.493904, 31.592773>,  <42.390270, 33.737041, 31.467377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098450, 33.493904, 31.592773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025236, 0.481985, 0.875816,
		-0.683460, 0.631041, -0.366972,
		-0.729551, -0.607846, 0.313493,
		41.879585, 33.311550, 31.686821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885410, 34.257504, 31.746468>,  <42.390270, 33.737041, 31.467377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885410, 34.257504, 31.746468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.755199, 33.910179, 31.896166>,  <41.677074, 33.701782, 31.985985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.755199, 33.910179, 31.896166>,  <41.885410, 34.257504, 31.746468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755199, 33.910179, 31.896166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066371, 0.415813, 0.907025,
		-0.943201, 0.270422, -0.192989,
		-0.325526, -0.868316, 0.374247,
		41.657543, 33.649685, 32.008438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343437, 34.431782, 32.158707>,  <41.885410, 34.257504, 31.746468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343437, 34.431782, 32.158707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.465004, 34.083370, 32.313076>,  <41.537945, 33.874321, 32.405697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.465004, 34.083370, 32.313076>,  <41.343437, 34.431782, 32.158707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465004, 34.083370, 32.313076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110247, 0.370212, 0.922382,
		-0.946299, -0.322872, 0.016484,
		0.303914, -0.871032, 0.385927,
		41.556179, 33.822060, 32.428852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945278, 34.267776, 32.787643>,  <41.343437, 34.431782, 32.158707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945278, 34.267776, 32.787643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.267773, 34.035927, 32.834999>,  <41.461269, 33.896816, 32.863411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.267773, 34.035927, 32.834999>,  <40.945278, 34.267776, 32.787643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267773, 34.035927, 32.834999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050736, 0.267125, 0.962325,
		-0.589414, -0.769855, 0.244774,
		0.806237, -0.579627, 0.118388,
		41.509644, 33.862038, 32.870514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832241, 33.960052, 33.431900>,  <40.945278, 34.267776, 32.787643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832241, 33.960052, 33.431900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224842, 33.950539, 33.355911>,  <41.460403, 33.944828, 33.310318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224842, 33.950539, 33.355911>,  <40.832241, 33.960052, 33.431900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224842, 33.950539, 33.355911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189662, 0.256227, 0.947827,
		0.026128, -0.966324, 0.255999,
		0.981502, -0.023788, -0.189969,
		41.519291, 33.943401, 33.298920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246189, 33.584484, 34.054989>,  <40.832241, 33.960052, 33.431900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246189, 33.584484, 34.054989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519650, 33.803169, 33.861610>,  <41.683727, 33.934380, 33.745583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519650, 33.803169, 33.861610>,  <41.246189, 33.584484, 34.054989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519650, 33.803169, 33.861610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471078, 0.175374, 0.864482,
		0.557410, -0.818747, -0.137651,
		0.683652, 0.546715, -0.483449,
		41.724747, 33.967182, 33.716576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797108, 33.425110, 34.343075>,  <41.246189, 33.584484, 34.054989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797108, 33.425110, 34.343075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915653, 33.762676, 34.164204>,  <41.986782, 33.965218, 34.056881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915653, 33.762676, 34.164204>,  <41.797108, 33.425110, 34.343075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915653, 33.762676, 34.164204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564933, 0.222617, 0.794539,
		0.770076, -0.488101, -0.410781,
		0.296368, 0.843919, -0.447176,
		42.004562, 34.015850, 34.030052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545555, 33.473904, 34.400242>,  <41.797108, 33.425110, 34.343075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545555, 33.473904, 34.400242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417248, 33.847294, 34.336071>,  <42.340263, 34.071327, 34.297569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417248, 33.847294, 34.336071>,  <42.545555, 33.473904, 34.400242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417248, 33.847294, 34.336071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650170, 0.340174, 0.679383,
		0.688758, 0.113619, -0.716033,
		-0.320766, 0.933473, -0.160426,
		42.321018, 34.127335, 34.287945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188511, 33.839054, 34.475285>,  <42.545555, 33.473904, 34.400242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188511, 33.839054, 34.475285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899651, 34.112679, 34.516403>,  <42.726334, 34.276852, 34.541073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899651, 34.112679, 34.516403>,  <43.188511, 33.839054, 34.475285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899651, 34.112679, 34.516403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527113, 0.447944, 0.722148,
		0.447944, 0.575683, -0.684058,
		-0.722148, 0.684058, 0.102796,
		42.683006, 34.317894, 34.547241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513321, 34.476376, 34.338833>,  <43.188511, 33.839054, 34.475285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513321, 34.476376, 34.338833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187382, 34.553581, 34.557472>,  <42.991817, 34.599903, 34.688656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187382, 34.553581, 34.557472>,  <43.513321, 34.476376, 34.338833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187382, 34.553581, 34.557472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533158, 0.619649, 0.576002,
		-0.227523, 0.760777, -0.607826,
		-0.814847, 0.193013, 0.546598,
		42.942928, 34.611485, 34.721451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707401, 35.094330, 34.611855>,  <43.513321, 34.476376, 34.338833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707401, 35.094330, 34.611855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378548, 34.970600, 34.803024>,  <43.181236, 34.896362, 34.917728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378548, 34.970600, 34.803024>,  <43.707401, 35.094330, 34.611855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378548, 34.970600, 34.803024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260805, 0.541586, 0.799165,
		-0.506042, 0.781666, -0.364581,
		-0.822133, -0.309327, 0.477928,
		43.131908, 34.877804, 34.946404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277504, 35.219334, 34.022099>,  <43.707401, 35.094330, 34.611855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277504, 35.219334, 34.022099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419964, 35.542854, 33.834911>,  <44.505440, 35.736969, 33.722599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419964, 35.542854, 33.834911>,  <44.277504, 35.219334, 34.022099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419964, 35.542854, 33.834911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083221, -0.471358, -0.878007,
		-0.930716, 0.351645, -0.100564,
		0.356148, 0.808806, -0.467965,
		44.526810, 35.785496, 33.694523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703979, 35.477783, 33.533047>,  <44.277504, 35.219334, 34.022099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703979, 35.477783, 33.533047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087223, 35.559330, 33.452576>,  <44.317169, 35.608257, 33.404293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087223, 35.559330, 33.452576>,  <43.703979, 35.477783, 33.533047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087223, 35.559330, 33.452576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087046, -0.461901, -0.882650,
		-0.272867, 0.863183, -0.424804,
		0.958106, 0.203868, -0.201174,
		44.374657, 35.620491, 33.392223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711033, 35.812256, 32.864094>,  <43.703979, 35.477783, 33.533047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711033, 35.812256, 32.864094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096653, 35.714581, 32.906002>,  <44.328026, 35.655975, 32.931145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096653, 35.714581, 32.906002>,  <43.711033, 35.812256, 32.864094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096653, 35.714581, 32.906002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001819, -0.388206, -0.921571,
		0.265709, 0.888632, -0.373807,
		0.964051, -0.244190, 0.104766,
		44.385868, 35.641323, 32.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017487, 36.079025, 32.219387>,  <43.711033, 35.812256, 32.864094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017487, 36.079025, 32.219387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.238579, 35.796833, 32.396828>,  <44.371235, 35.627518, 32.503292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.238579, 35.796833, 32.396828>,  <44.017487, 36.079025, 32.219387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238579, 35.796833, 32.396828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176210, -0.619207, -0.765202,
		0.814519, 0.344782, -0.466567,
		0.552729, -0.705485, 0.443601,
		44.404396, 35.585186, 32.529907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488346, 35.797234, 31.671839>,  <44.017487, 36.079025, 32.219387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488346, 35.797234, 31.671839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478264, 35.521667, 31.961601>,  <44.472214, 35.356327, 32.135460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478264, 35.521667, 31.961601>,  <44.488346, 35.797234, 31.671839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478264, 35.521667, 31.961601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033437, -0.723650, -0.689357,
		0.999123, -0.041600, -0.004793,
		-0.025208, -0.688912, 0.724406,
		44.470703, 35.314995, 32.178925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055176, 35.308159, 31.528130>,  <44.488346, 35.797234, 31.671839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055176, 35.308159, 31.528130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778507, 35.126369, 31.752642>,  <44.612507, 35.017296, 31.887350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778507, 35.126369, 31.752642>,  <45.055176, 35.308159, 31.528130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778507, 35.126369, 31.752642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041375, -0.750960, -0.659050,
		0.721023, -0.479072, 0.500616,
		-0.691675, -0.454477, 0.561281,
		44.571003, 34.990025, 31.921026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299763, 34.664322, 31.728832>,  <45.055176, 35.308159, 31.528130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299763, 34.664322, 31.728832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.902721, 34.620922, 31.750626>,  <44.664497, 34.594883, 31.763702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.902721, 34.620922, 31.750626>,  <45.299763, 34.664322, 31.728832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902721, 34.620922, 31.750626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058803, -0.822226, -0.566115,
		0.106223, -0.558723, 0.822524,
		-0.992602, -0.108501, 0.054485,
		44.604942, 34.588371, 31.766972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238663, 34.055172, 31.741724>,  <45.299763, 34.664322, 31.728832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238663, 34.055172, 31.741724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858543, 34.142502, 31.652941>,  <44.630470, 34.194901, 31.599670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858543, 34.142502, 31.652941>,  <45.238663, 34.055172, 31.741724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858543, 34.142502, 31.652941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079029, -0.858717, -0.506320,
		-0.301141, -0.463614, 0.833292,
		-0.950299, 0.218328, -0.221956,
		44.573452, 34.208000, 31.586353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889156, 33.433697, 31.732241>,  <45.238663, 34.055172, 31.741724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889156, 33.433697, 31.732241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668297, 33.691360, 31.520506>,  <44.535782, 33.845959, 31.393465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668297, 33.691360, 31.520506>,  <44.889156, 33.433697, 31.732241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668297, 33.691360, 31.520506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149666, -0.701154, -0.697125,
		-0.820205, -0.305689, 0.483546,
		-0.552144, 0.644156, -0.529339,
		44.502655, 33.884605, 31.361704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379292, 33.045513, 31.390186>,  <44.889156, 33.433697, 31.732241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379292, 33.045513, 31.390186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383507, 33.378048, 31.167917>,  <44.386036, 33.577568, 31.034555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383507, 33.378048, 31.167917>,  <44.379292, 33.045513, 31.390186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383507, 33.378048, 31.167917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053690, -0.554430, -0.830496,
		-0.998502, 0.038586, 0.038792,
		0.010539, 0.831335, -0.555672,
		44.386669, 33.627449, 31.001215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737370, 33.097542, 30.942167>,  <44.379292, 33.045513, 31.390186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737370, 33.097542, 30.942167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.009277, 33.323948, 30.755604>,  <44.172424, 33.459793, 30.643665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.009277, 33.323948, 30.755604>,  <43.737370, 33.097542, 30.942167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009277, 33.323948, 30.755604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218244, -0.451019, -0.865420,
		-0.700199, 0.690079, -0.183061,
		0.679772, 0.566014, -0.466409,
		44.213207, 33.493752, 30.615681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412903, 33.357151, 30.364832>,  <43.737370, 33.097542, 30.942167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412903, 33.357151, 30.364832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800316, 33.395107, 30.272800>,  <44.032764, 33.417881, 30.217581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800316, 33.395107, 30.272800>,  <43.412903, 33.357151, 30.364832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800316, 33.395107, 30.272800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188415, -0.324432, -0.926954,
		-0.162608, 0.941137, -0.296344,
		0.968534, 0.094894, -0.230080,
		44.090878, 33.423576, 30.203777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446262, 33.402454, 29.625460>,  <43.412903, 33.357151, 30.364832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446262, 33.402454, 29.625460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822212, 33.325550, 29.738361>,  <44.047783, 33.279408, 29.806103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822212, 33.325550, 29.738361>,  <43.446262, 33.402454, 29.625460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822212, 33.325550, 29.738361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202295, -0.352452, -0.913703,
		0.275153, 0.915867, -0.292367,
		0.939876, -0.192264, 0.282254,
		44.104176, 33.267872, 29.823038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745522, 33.643810, 29.050507>,  <43.446262, 33.402454, 29.625460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745522, 33.643810, 29.050507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978027, 33.384163, 29.246780>,  <44.117531, 33.228374, 29.364546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978027, 33.384163, 29.246780>,  <43.745522, 33.643810, 29.050507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978027, 33.384163, 29.246780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162263, -0.498445, -0.851600,
		0.797371, 0.574626, -0.184401,
		0.581266, -0.649120, 0.490687,
		44.152409, 33.189426, 29.393986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224804, 33.512665, 28.693478>,  <43.745522, 33.643810, 29.050507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224804, 33.512665, 28.693478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246834, 33.170570, 28.899597>,  <44.260052, 32.965313, 29.023270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246834, 33.170570, 28.899597>,  <44.224804, 33.512665, 28.693478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246834, 33.170570, 28.899597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169979, -0.500519, -0.848875,
		0.983907, 0.134343, 0.117806,
		0.055076, -0.855239, 0.515299,
		44.263355, 32.913998, 29.054188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859577, 33.266460, 28.423344>,  <44.224804, 33.512665, 28.693478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859577, 33.266460, 28.423344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664852, 32.957794, 28.587072>,  <44.548016, 32.772594, 28.685308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664852, 32.957794, 28.587072>,  <44.859577, 33.266460, 28.423344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664852, 32.957794, 28.587072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211678, -0.558845, -0.801801,
		0.847469, -0.303684, 0.435399,
		-0.486815, -0.771666, 0.409321,
		44.518806, 32.726295, 28.709869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297207, 32.677681, 28.350323>,  <44.859577, 33.266460, 28.423344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297207, 32.677681, 28.350323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927753, 32.535759, 28.408312>,  <44.706081, 32.450603, 28.443106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927753, 32.535759, 28.408312>,  <45.297207, 32.677681, 28.350323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927753, 32.535759, 28.408312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045573, -0.477221, -0.877601,
		0.380566, -0.803972, 0.456945,
		-0.923630, -0.354809, 0.144974,
		44.650665, 32.429317, 28.451803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271416, 32.035915, 28.246054>,  <45.297207, 32.677681, 28.350323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271416, 32.035915, 28.246054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891796, 32.139950, 28.174875>,  <44.664024, 32.202370, 28.132168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.891796, 32.139950, 28.174875>,  <45.271416, 32.035915, 28.246054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891796, 32.139950, 28.174875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008332, -0.543769, -0.839194,
		-0.315023, -0.797917, 0.513895,
		-0.949047, 0.260084, -0.177948,
		44.607082, 32.217976, 28.121490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903957, 31.355886, 28.169500>,  <45.271416, 32.035915, 28.246054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903957, 31.355886, 28.169500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684387, 31.652821, 28.015816>,  <44.552647, 31.830982, 27.923605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684387, 31.652821, 28.015816>,  <44.903957, 31.355886, 28.169500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684387, 31.652821, 28.015816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254388, -0.586214, -0.769181,
		-0.796222, -0.324482, 0.510628,
		-0.548923, 0.742337, -0.384212,
		44.519711, 31.875521, 27.900553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331184, 30.923321, 27.878254>,  <44.903957, 31.355886, 28.169500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331184, 30.923321, 27.878254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307953, 31.288200, 27.716009>,  <44.294014, 31.507128, 27.618662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307953, 31.288200, 27.716009>,  <44.331184, 30.923321, 27.878254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307953, 31.288200, 27.716009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098326, -0.409550, -0.906973,
		-0.993458, -0.012795, 0.113480,
		-0.058081, 0.912198, -0.405613,
		44.290527, 31.561859, 27.594326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.430992, 40.850815, 42.057671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112633, 40.620869, 41.981686>,  <37.921619, 40.482903, 41.936096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112633, 40.620869, 41.981686>,  <38.430992, 40.850815, 42.057671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112633, 40.620869, 41.981686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547470, -0.549381, -0.631235,
		0.258511, -0.606395, 0.751969,
		-0.795895, -0.574862, -0.189962,
		37.873863, 40.448410, 41.924698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749111, 40.150513, 42.033371>,  <38.430992, 40.850815, 42.057671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749111, 40.150513, 42.033371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394634, 40.142551, 41.848217>,  <38.181950, 40.137775, 41.737125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394634, 40.142551, 41.848217>,  <38.749111, 40.150513, 42.033371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394634, 40.142551, 41.848217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329570, -0.729287, -0.599603,
		-0.325647, -0.683918, 0.652847,
		-0.886193, -0.019900, -0.462889,
		38.128777, 40.136581, 41.709351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606586, 39.524311, 42.031818>,  <38.749111, 40.150513, 42.033371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606586, 39.524311, 42.031818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381893, 39.685745, 41.742935>,  <38.247078, 39.782604, 41.569607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381893, 39.685745, 41.742935>,  <38.606586, 39.524311, 42.031818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381893, 39.685745, 41.742935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315870, -0.702194, -0.638083,
		-0.764648, -0.586553, 0.266963,
		-0.561729, 0.403584, -0.722205,
		38.213375, 39.806820, 41.526272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329666, 39.001259, 41.704800>,  <38.606586, 39.524311, 42.031818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329666, 39.001259, 41.704800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299999, 39.291889, 41.431572>,  <38.282200, 39.466267, 41.267635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299999, 39.291889, 41.431572>,  <38.329666, 39.001259, 41.704800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299999, 39.291889, 41.431572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094315, -0.676778, -0.730121,
		-0.992776, -0.118575, -0.018333,
		-0.074166, 0.726575, -0.683072,
		38.277748, 39.509861, 41.226650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993374, 38.690243, 41.008011>,  <38.329666, 39.001259, 41.704800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993374, 38.690243, 41.008011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159523, 39.033302, 40.886749>,  <38.259212, 39.239140, 40.813992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159523, 39.033302, 40.886749>,  <37.993374, 38.690243, 41.008011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159523, 39.033302, 40.886749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261517, -0.431781, -0.863234,
		-0.871248, 0.279285, -0.403641,
		0.415373, 0.857651, -0.303151,
		38.284134, 39.290596, 40.795803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672493, 38.944103, 40.360573>,  <37.993374, 38.690243, 41.008011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672493, 38.944103, 40.360573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032398, 39.118279, 40.372009>,  <38.248341, 39.222786, 40.378872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032398, 39.118279, 40.372009>,  <37.672493, 38.944103, 40.360573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032398, 39.118279, 40.372009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187598, -0.326812, -0.926283,
		-0.393996, 0.838800, -0.375741,
		0.899763, 0.435440, 0.028595,
		38.302326, 39.248909, 40.380589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840542, 39.265545, 39.678886>,  <37.672493, 38.944103, 40.360573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840542, 39.265545, 39.678886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209515, 39.233452, 39.829983>,  <38.430897, 39.214195, 39.920639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209515, 39.233452, 39.829983>,  <37.840542, 39.265545, 39.678886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209515, 39.233452, 39.829983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330936, -0.339872, -0.880323,
		0.199014, 0.937043, -0.286956,
		0.922429, -0.080233, 0.377740,
		38.486244, 39.209381, 39.943306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216057, 39.700523, 39.332264>,  <37.840542, 39.265545, 39.678886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216057, 39.700523, 39.332264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463230, 39.415131, 39.464390>,  <38.611534, 39.243896, 39.543663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463230, 39.415131, 39.464390>,  <38.216057, 39.700523, 39.332264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463230, 39.415131, 39.464390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260118, -0.210941, -0.942254,
		0.741956, 0.668169, 0.055242,
		0.617932, -0.713480, 0.330312,
		38.648609, 39.201088, 39.563484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876152, 39.749226, 38.964001>,  <38.216057, 39.700523, 39.332264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876152, 39.749226, 38.964001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893959, 39.382984, 39.123844>,  <38.904644, 39.163239, 39.219749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893959, 39.382984, 39.123844>,  <38.876152, 39.749226, 38.964001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893959, 39.382984, 39.123844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369835, -0.356480, -0.857988,
		0.928030, 0.185989, 0.322751,
		0.044522, -0.915604, 0.399609,
		38.907314, 39.108303, 39.243729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341354, 39.491440, 38.452061>,  <38.876152, 39.749226, 38.964001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341354, 39.491440, 38.452061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226391, 39.183739, 38.680325>,  <39.157413, 38.999119, 38.817284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226391, 39.183739, 38.680325>,  <39.341354, 39.491440, 38.452061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226391, 39.183739, 38.680325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274100, -0.636936, -0.720543,
		0.917750, -0.050674, 0.393913,
		-0.287410, -0.769250, 0.570658,
		39.140167, 38.952965, 38.851521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971478, 38.962471, 38.415691>,  <39.341354, 39.491440, 38.452061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971478, 38.962471, 38.415691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625473, 38.784618, 38.508690>,  <39.417870, 38.677906, 38.564487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625473, 38.784618, 38.508690>,  <39.971478, 38.962471, 38.415691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625473, 38.784618, 38.508690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163040, -0.687308, -0.707831,
		0.474523, -0.574376, 0.667023,
		-0.865012, -0.444634, 0.232497,
		39.365971, 38.651230, 38.578438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189808, 38.164639, 38.484287>,  <39.971478, 38.962471, 38.415691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189808, 38.164639, 38.484287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802715, 38.239487, 38.416786>,  <39.570457, 38.284397, 38.376286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802715, 38.239487, 38.416786>,  <40.189808, 38.164639, 38.484287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802715, 38.239487, 38.416786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003305, -0.679097, -0.734041,
		-0.251954, -0.709799, 0.657803,
		-0.967733, 0.187119, -0.168755,
		39.512394, 38.295624, 38.366161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953384, 37.544300, 38.133991>,  <40.189808, 38.164639, 38.484287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953384, 37.544300, 38.133991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584286, 37.694160, 38.097828>,  <39.362827, 37.784077, 38.076130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584286, 37.694160, 38.097828>,  <39.953384, 37.544300, 38.133991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584286, 37.694160, 38.097828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100458, -0.460286, -0.882069,
		-0.372082, -0.804845, 0.462364,
		-0.922748, 0.374650, -0.090411,
		39.307461, 37.806557, 38.070705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482632, 36.892094, 38.144703>,  <39.953384, 37.544300, 38.133991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482632, 36.892094, 38.144703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359535, 37.224400, 37.959175>,  <39.285675, 37.423782, 37.847858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359535, 37.224400, 37.959175>,  <39.482632, 36.892094, 38.144703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359535, 37.224400, 37.959175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105674, -0.514300, -0.851075,
		-0.945583, -0.212899, 0.246062,
		-0.307743, 0.830764, -0.463816,
		39.267212, 37.473629, 37.820030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736050, 36.187477, 38.192787>,  <39.482632, 36.892094, 38.144703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736050, 36.187477, 38.192787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712315, 35.834183, 38.378853>,  <39.698074, 35.622208, 38.490490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712315, 35.834183, 38.378853>,  <39.736050, 36.187477, 38.192787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712315, 35.834183, 38.378853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632566, 0.393750, 0.666949,
		-0.772230, -0.254671, -0.582067,
		-0.059336, -0.883234, 0.465162,
		39.694515, 35.569214, 38.518402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011940, 36.060490, 38.272579>,  <39.736050, 36.187477, 38.192787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011940, 36.060490, 38.272579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200115, 35.839642, 38.547928>,  <39.313023, 35.707134, 38.713135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200115, 35.839642, 38.547928>,  <39.011940, 36.060490, 38.272579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200115, 35.839642, 38.547928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687780, 0.259309, 0.678025,
		-0.552850, -0.792416, -0.257746,
		0.470442, -0.552119, 0.688367,
		39.341248, 35.674007, 38.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432552, 35.839581, 38.619698>,  <39.011940, 36.060490, 38.272579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432552, 35.839581, 38.619698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740448, 35.771282, 38.865738>,  <38.925186, 35.730301, 39.013363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740448, 35.771282, 38.865738>,  <38.432552, 35.839581, 38.619698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740448, 35.771282, 38.865738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615327, 0.058014, 0.786134,
		-0.169915, -0.983606, -0.060410,
		0.769741, -0.170748, 0.615096,
		38.971371, 35.720058, 39.050266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127075, 35.455898, 39.217697>,  <38.432552, 35.839581, 38.619698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127075, 35.455898, 39.217697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490181, 35.544922, 39.359928>,  <38.708042, 35.598335, 39.445267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490181, 35.544922, 39.359928>,  <38.127075, 35.455898, 39.217697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490181, 35.544922, 39.359928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354360, -0.046789, 0.933938,
		0.224499, -0.973795, 0.036394,
		0.907761, 0.222565, 0.355578,
		38.762508, 35.611691, 39.466602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297054, 34.939426, 39.746601>,  <38.127075, 35.455898, 39.217697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297054, 34.939426, 39.746601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539783, 35.247009, 39.827065>,  <38.685421, 35.431561, 39.875343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539783, 35.247009, 39.827065>,  <38.297054, 34.939426, 39.746601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539783, 35.247009, 39.827065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135030, -0.149668, 0.979472,
		0.783283, -0.621529, 0.013011,
		0.606823, 0.768961, 0.201158,
		38.721832, 35.477699, 39.887413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712387, 34.761955, 40.421871>,  <38.297054, 34.939426, 39.746601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712387, 34.761955, 40.421871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718430, 35.160805, 40.392162>,  <38.722054, 35.400116, 40.374336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718430, 35.160805, 40.392162>,  <38.712387, 34.761955, 40.421871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718430, 35.160805, 40.392162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163501, 0.075743, 0.983631,
		0.986427, -0.002713, 0.164175,
		0.015104, 0.997124, -0.074272,
		38.722961, 35.459942, 40.369881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198521, 35.066109, 40.979759>,  <38.712387, 34.761955, 40.421871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198521, 35.066109, 40.979759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962894, 35.367493, 40.862938>,  <38.821518, 35.548325, 40.792843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962894, 35.367493, 40.862938>,  <39.198521, 35.066109, 40.979759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962894, 35.367493, 40.862938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161357, 0.244466, 0.956138,
		0.791809, 0.610356, -0.022431,
		-0.589069, 0.753460, -0.292056,
		38.786175, 35.593529, 40.775322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400402, 35.570496, 41.417904>,  <39.198521, 35.066109, 40.979759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400402, 35.570496, 41.417904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035145, 35.668751, 41.287773>,  <38.815990, 35.727703, 41.209694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035145, 35.668751, 41.287773>,  <39.400402, 35.570496, 41.417904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035145, 35.668751, 41.287773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238846, 0.324330, 0.915294,
		0.330346, 0.913494, -0.237488,
		-0.913140, 0.245640, -0.325325,
		38.761204, 35.742443, 41.190174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183746, 36.080055, 41.912388>,  <39.400402, 35.570496, 41.417904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183746, 36.080055, 41.912388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841187, 36.053253, 41.707611>,  <38.635651, 36.037174, 41.584743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841187, 36.053253, 41.707611>,  <39.183746, 36.080055, 41.912388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841187, 36.053253, 41.707611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491285, 0.410688, 0.768098,
		0.158784, 0.909311, -0.384632,
		-0.856403, -0.067002, -0.511942,
		38.584267, 36.033154, 41.554028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781387, 36.803562, 41.874287>,  <39.183746, 36.080055, 41.912388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781387, 36.803562, 41.874287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528008, 36.498524, 41.821846>,  <38.375980, 36.315502, 41.790382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528008, 36.498524, 41.821846>,  <38.781387, 36.803562, 41.874287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528008, 36.498524, 41.821846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652991, 0.435941, 0.619321,
		-0.415137, 0.477920, -0.774115,
		-0.633454, -0.762593, -0.131102,
		38.337971, 36.269745, 41.782516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149879, 37.098328, 41.941319>,  <38.781387, 36.803562, 41.874287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149879, 37.098328, 41.941319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055584, 36.713520, 41.996384>,  <37.999008, 36.482635, 42.029423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055584, 36.713520, 41.996384>,  <38.149879, 37.098328, 41.941319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055584, 36.713520, 41.996384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508777, 0.242866, 0.825931,
		-0.827993, 0.124661, -0.546705,
		-0.235738, -0.962016, 0.137666,
		37.984863, 36.424915, 42.037685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422741, 37.129936, 42.048134>,  <38.149879, 37.098328, 41.941319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422741, 37.129936, 42.048134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582020, 36.805180, 42.218910>,  <37.677586, 36.610325, 42.321377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582020, 36.805180, 42.218910>,  <37.422741, 37.129936, 42.048134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582020, 36.805180, 42.218910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423795, 0.249955, 0.870586,
		-0.813535, -0.527598, -0.244544,
		0.398194, -0.811889, 0.426940,
		37.701477, 36.561611, 42.346992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803120, 36.841526, 42.309109>,  <37.422741, 37.129936, 42.048134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803120, 36.841526, 42.309109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119247, 36.704227, 42.512115>,  <37.308926, 36.621849, 42.633919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119247, 36.704227, 42.512115>,  <36.803120, 36.841526, 42.309109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119247, 36.704227, 42.512115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477612, 0.173689, 0.861231,
		-0.383768, -0.923044, -0.026670,
		0.790322, -0.343251, 0.507514,
		37.356342, 36.601254, 42.664368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476517, 36.416588, 42.760845>,  <36.803120, 36.841526, 42.309109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476517, 36.416588, 42.760845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843037, 36.481773, 42.907185>,  <37.062946, 36.520885, 42.994987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843037, 36.481773, 42.907185>,  <36.476517, 36.416588, 42.760845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843037, 36.481773, 42.907185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396123, 0.503489, 0.767845,
		-0.059068, -0.848494, 0.525899,
		0.916296, 0.162966, 0.365848,
		37.117924, 36.530663, 43.016937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850037, 36.084274, 43.096012>,  <36.476517, 36.416588, 42.760845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850037, 36.084274, 43.096012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467445, 35.996220, 43.172634>,  <35.237892, 35.943386, 43.218605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467445, 35.996220, 43.172634>,  <35.850037, 36.084274, 43.096012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467445, 35.996220, 43.172634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100974, -0.366194, -0.925044,
		0.273785, -0.904124, 0.328028,
		-0.956476, -0.220140, 0.191552,
		35.180504, 35.930176, 43.230099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769955, 35.325226, 42.952225>,  <35.850037, 36.084274, 43.096012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769955, 35.325226, 42.952225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408287, 35.495892, 42.943913>,  <35.191284, 35.598289, 42.938923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408287, 35.495892, 42.943913>,  <35.769955, 35.325226, 42.952225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408287, 35.495892, 42.943913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179319, -0.423270, -0.888081,
		-0.387706, -0.799252, 0.459217,
		-0.904173, 0.426661, -0.020783,
		35.137035, 35.623890, 42.937675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193043, 34.847469, 42.856548>,  <35.769955, 35.325226, 42.952225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193043, 34.847469, 42.856548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050220, 35.190109, 42.707546>,  <34.964527, 35.395691, 42.618145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050220, 35.190109, 42.707546>,  <35.193043, 34.847469, 42.856548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050220, 35.190109, 42.707546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197901, -0.459107, -0.866058,
		-0.912879, -0.235510, 0.333447,
		-0.357053, 0.856596, -0.372502,
		34.943104, 35.447086, 42.595795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732620, 34.593479, 42.254349>,  <35.193043, 34.847469, 42.856548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732620, 34.593479, 42.254349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768547, 34.989056, 42.207142>,  <34.790104, 35.226402, 42.178818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768547, 34.989056, 42.207142>,  <34.732620, 34.593479, 42.254349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768547, 34.989056, 42.207142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011081, -0.117499, -0.993011,
		-0.995897, 0.090495, 0.000406,
		0.089815, 0.988941, -0.118019,
		34.795490, 35.285736, 42.171738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253330, 34.725998, 41.750999>,  <34.732620, 34.593479, 42.254349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253330, 34.725998, 41.750999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490463, 35.048122, 41.748756>,  <34.632744, 35.241398, 41.747410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490463, 35.048122, 41.748756>,  <34.253330, 34.725998, 41.750999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490463, 35.048122, 41.748756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090178, 0.059467, -0.994149,
		-0.800264, 0.589865, 0.107875,
		0.592828, 0.805309, -0.005603,
		34.668312, 35.289715, 41.747074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912849, 35.179287, 41.422443>,  <34.253330, 34.725998, 41.750999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912849, 35.179287, 41.422443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290920, 35.302608, 41.379372>,  <34.517761, 35.376602, 41.353531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290920, 35.302608, 41.379372>,  <33.912849, 35.179287, 41.422443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290920, 35.302608, 41.379372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127297, 0.044189, -0.990880,
		-0.300736, 0.950260, 0.081013,
		0.945174, 0.308306, -0.107676,
		34.574471, 35.395100, 41.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921707, 35.794914, 41.011879>,  <33.912849, 35.179287, 41.422443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921707, 35.794914, 41.011879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303425, 35.679844, 40.979465>,  <34.532455, 35.610802, 40.960018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303425, 35.679844, 40.979465>,  <33.921707, 35.794914, 41.011879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303425, 35.679844, 40.979465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043555, 0.134386, -0.989971,
		0.295678, 0.948254, 0.115714,
		0.954294, -0.287673, -0.081036,
		34.589714, 35.593540, 40.955154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218315, 36.362682, 40.693233>,  <33.921707, 35.794914, 41.011879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218315, 36.362682, 40.693233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430378, 36.028915, 40.632992>,  <34.557617, 35.828655, 40.596848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430378, 36.028915, 40.632992>,  <34.218315, 36.362682, 40.693233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430378, 36.028915, 40.632992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166594, 0.276666, -0.946416,
		0.831371, 0.476662, 0.285686,
		0.530160, -0.834416, -0.150603,
		34.589424, 35.778591, 40.587811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828037, 36.502640, 40.469948>,  <34.218315, 36.362682, 40.693233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828037, 36.502640, 40.469948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768944, 36.134594, 40.324863>,  <34.733486, 35.913765, 40.237812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768944, 36.134594, 40.324863>,  <34.828037, 36.502640, 40.469948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768944, 36.134594, 40.324863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308351, 0.305607, -0.900846,
		0.939731, -0.244929, 0.238570,
		-0.147735, -0.920116, -0.362713,
		34.724625, 35.858559, 40.216049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299282, 36.418583, 39.938152>,  <34.828037, 36.502640, 40.469948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299282, 36.418583, 39.938152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111443, 36.083763, 39.825848>,  <34.998741, 35.882870, 39.758465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111443, 36.083763, 39.825848>,  <35.299282, 36.418583, 39.938152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111443, 36.083763, 39.825848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296301, 0.150142, -0.943220,
		0.831676, -0.526121, 0.177513,
		-0.469596, -0.837051, -0.280760,
		34.970562, 35.832649, 39.741619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711910, 36.128368, 39.491417>,  <35.299282, 36.418583, 39.938152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711910, 36.128368, 39.491417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360493, 35.962811, 39.396034>,  <35.149643, 35.863476, 39.338806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360493, 35.962811, 39.396034>,  <35.711910, 36.128368, 39.491417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360493, 35.962811, 39.396034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141413, 0.251465, -0.957480,
		0.456258, -0.874904, -0.162392,
		-0.878539, -0.413894, -0.238456,
		35.096931, 35.838642, 39.324497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767265, 35.572666, 39.014519>,  <35.711910, 36.128368, 39.491417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767265, 35.572666, 39.014519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396111, 35.706375, 38.948452>,  <35.173416, 35.786602, 38.908813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396111, 35.706375, 38.948452>,  <35.767265, 35.572666, 39.014519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396111, 35.706375, 38.948452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223639, 0.144525, -0.963897,
		-0.298334, -0.931329, -0.208860,
		-0.927891, 0.334273, -0.165164,
		35.117744, 35.806656, 38.898903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.259506, 35.504490, 47.336655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.970798, 35.714127, 47.155819>,  <34.797573, 35.839909, 47.047318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.970798, 35.714127, 47.155819>,  <35.259506, 35.504490, 47.336655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970798, 35.714127, 47.155819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390415, -0.231060, -0.891172,
		-0.571511, -0.819721, -0.037840,
		-0.721770, 0.524088, -0.452085,
		34.754269, 35.871353, 47.020195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224312, 35.238552, 46.652843>,  <35.259506, 35.504490, 47.336655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224312, 35.238552, 46.652843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973133, 35.545715, 46.602253>,  <34.822426, 35.730011, 46.571899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973133, 35.545715, 46.602253>,  <35.224312, 35.238552, 46.652843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973133, 35.545715, 46.602253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021894, -0.179885, -0.983444,
		-0.777945, -0.614785, 0.129771,
		-0.627951, 0.767906, -0.126481,
		34.784748, 35.776089, 46.564308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701557, 35.047981, 46.172878>,  <35.224312, 35.238552, 46.652843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701557, 35.047981, 46.172878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.708118, 35.447853, 46.165073>,  <34.712055, 35.687775, 46.160389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.708118, 35.447853, 46.165073>,  <34.701557, 35.047981, 46.172878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708118, 35.447853, 46.165073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061202, -0.018474, -0.997954,
		-0.997991, 0.017563, 0.060879,
		0.016403, 0.999675, -0.019511,
		34.713039, 35.747757, 46.159222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126919, 35.327419, 45.744591>,  <34.701557, 35.047981, 46.172878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126919, 35.327419, 45.744591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.416870, 35.602921, 45.739338>,  <34.590839, 35.768223, 45.736187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.416870, 35.602921, 45.739338>,  <34.126919, 35.327419, 45.744591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416870, 35.602921, 45.739338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133155, 0.121389, -0.983633,
		-0.675890, 0.714759, 0.179703,
		0.724874, 0.688756, -0.013129,
		34.634331, 35.809547, 45.735401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908112, 35.993706, 45.344761>,  <34.126919, 35.327419, 45.744591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908112, 35.993706, 45.344761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.306389, 36.010170, 45.311531>,  <34.545357, 36.020050, 45.291592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.306389, 36.010170, 45.311531>,  <33.908112, 35.993706, 45.344761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306389, 36.010170, 45.311531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087654, 0.125872, -0.988167,
		-0.030218, 0.991192, 0.128938,
		0.995692, 0.041163, -0.083079,
		34.605095, 36.022518, 45.286606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019859, 36.366821, 44.745693>,  <33.908112, 35.993706, 45.344761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019859, 36.366821, 44.745693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378819, 36.200127, 44.803669>,  <34.594193, 36.100109, 44.838455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378819, 36.200127, 44.803669>,  <34.019859, 36.366821, 44.745693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378819, 36.200127, 44.803669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280210, 0.284551, -0.916795,
		0.340819, 0.863343, 0.372129,
		0.897399, -0.416736, 0.144937,
		34.648037, 36.075108, 44.847149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367878, 36.726101, 44.207611>,  <34.019859, 36.366821, 44.745693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367878, 36.726101, 44.207611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610519, 36.424610, 44.308743>,  <34.756104, 36.243713, 44.369423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610519, 36.424610, 44.308743>,  <34.367878, 36.726101, 44.207611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610519, 36.424610, 44.308743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380300, -0.004166, -0.924854,
		0.698143, 0.657171, 0.284117,
		0.606604, -0.753730, 0.252831,
		34.792500, 36.198490, 44.384590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097553, 36.910633, 44.051201>,  <34.367878, 36.726101, 44.207611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097553, 36.910633, 44.051201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053234, 36.513142, 44.057175>,  <35.026642, 36.274647, 44.060757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053234, 36.513142, 44.057175>,  <35.097553, 36.910633, 44.051201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053234, 36.513142, 44.057175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084344, -0.024372, -0.996139,
		0.990257, -0.109112, 0.086516,
		-0.110800, -0.993731, 0.014932,
		35.019993, 36.215023, 44.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605072, 36.691433, 43.631771>,  <35.097553, 36.910633, 44.051201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605072, 36.691433, 43.631771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357941, 36.378471, 43.663074>,  <35.209660, 36.190693, 43.681858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357941, 36.378471, 43.663074>,  <35.605072, 36.691433, 43.631771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357941, 36.378471, 43.663074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050172, -0.138554, -0.989083,
		0.784709, -0.607159, 0.124858,
		-0.617831, -0.782407, 0.078263,
		35.172592, 36.143749, 43.686554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314163, 36.543385, 43.517967>,  <35.605072, 36.691433, 43.631771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314163, 36.543385, 43.517967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692978, 36.668900, 43.490646>,  <36.920265, 36.744209, 43.474255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692978, 36.668900, 43.490646>,  <36.314163, 36.543385, 43.517967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692978, 36.668900, 43.490646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171214, 0.673297, 0.719275,
		0.271686, -0.669484, 0.691360,
		0.947033, 0.313787, -0.068300,
		36.977089, 36.763035, 43.470158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454617, 36.627804, 44.254215>,  <36.314163, 36.543385, 43.517967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454617, 36.627804, 44.254215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728123, 36.828316, 44.042107>,  <36.892227, 36.948624, 43.914841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728123, 36.828316, 44.042107>,  <36.454617, 36.627804, 44.254215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728123, 36.828316, 44.042107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094928, 0.781624, 0.616484,
		0.723501, -0.371194, 0.582033,
		0.683766, 0.501278, -0.530269,
		36.933250, 36.978699, 43.883026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102215, 36.653130, 44.656311>,  <36.454617, 36.627804, 44.254215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102215, 36.653130, 44.656311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100502, 36.950218, 44.388477>,  <37.099476, 37.128471, 44.227776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100502, 36.950218, 44.388477>,  <37.102215, 36.653130, 44.656311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100502, 36.950218, 44.388477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016648, 0.669449, 0.742671,
		0.999852, 0.014329, 0.009498,
		-0.004283, 0.742720, -0.669589,
		37.099216, 37.173035, 44.187599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732391, 36.898045, 44.687256>,  <37.102215, 36.653130, 44.656311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732391, 36.898045, 44.687256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509708, 37.188675, 44.526176>,  <37.376099, 37.363052, 44.429527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509708, 37.188675, 44.526176>,  <37.732391, 36.898045, 44.687256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509708, 37.188675, 44.526176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087238, 0.430952, 0.898148,
		0.826114, 0.535138, -0.176530,
		-0.556709, 0.726573, -0.402700,
		37.342697, 37.406647, 44.405365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014305, 37.505524, 44.806175>,  <37.732391, 36.898045, 44.687256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014305, 37.505524, 44.806175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632313, 37.606159, 44.743294>,  <37.403118, 37.666538, 44.705566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632313, 37.606159, 44.743294>,  <38.014305, 37.505524, 44.806175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632313, 37.606159, 44.743294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041161, 0.412408, 0.910069,
		0.293791, 0.875571, -0.383487,
		-0.954983, 0.251586, -0.157201,
		37.345818, 37.681637, 44.696133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861465, 38.212090, 44.785641>,  <38.014305, 37.505524, 44.806175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861465, 38.212090, 44.785641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489616, 38.087036, 44.863670>,  <37.266506, 38.012005, 44.910488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489616, 38.087036, 44.863670>,  <37.861465, 38.212090, 44.785641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489616, 38.087036, 44.863670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084591, 0.696283, 0.712765,
		-0.358666, 0.646102, -0.673729,
		-0.929625, -0.312636, 0.195078,
		37.210728, 37.993244, 44.922195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509926, 38.740726, 44.817654>,  <37.861465, 38.212090, 44.785641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509926, 38.740726, 44.817654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237816, 38.502182, 44.988102>,  <37.074551, 38.359055, 45.090370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237816, 38.502182, 44.988102>,  <37.509926, 38.740726, 44.817654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237816, 38.502182, 44.988102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208557, 0.714831, 0.667473,
		-0.702656, 0.365198, -0.610659,
		-0.680278, -0.596361, 0.426116,
		37.033733, 38.323273, 45.115936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807079, 39.173485, 45.095329>,  <37.509926, 38.740726, 44.817654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807079, 39.173485, 45.095329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.811489, 38.816799, 45.276314>,  <36.814137, 38.602787, 45.384903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.811489, 38.816799, 45.276314>,  <36.807079, 39.173485, 45.095329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811489, 38.816799, 45.276314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420467, 0.406403, 0.811199,
		-0.907241, -0.199186, -0.370458,
		0.011024, -0.891718, 0.452457,
		36.814796, 38.549282, 45.412052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125805, 39.004562, 45.333832>,  <36.807079, 39.173485, 45.095329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125805, 39.004562, 45.333832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383747, 38.798214, 45.559406>,  <36.538513, 38.674404, 45.694752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383747, 38.798214, 45.559406>,  <36.125805, 39.004562, 45.333832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383747, 38.798214, 45.559406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394280, 0.407557, 0.823675,
		-0.654752, -0.753505, 0.059417,
		0.644859, -0.515876, 0.563941,
		36.577206, 38.643452, 45.728588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711327, 38.766129, 45.859402>,  <36.125805, 39.004562, 45.333832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711327, 38.766129, 45.859402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079552, 38.697552, 45.999783>,  <36.300488, 38.656406, 46.084011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079552, 38.697552, 45.999783>,  <35.711327, 38.766129, 45.859402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079552, 38.697552, 45.999783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274969, 0.353703, 0.894028,
		-0.277405, -0.919512, 0.278466,
		0.920564, -0.171438, 0.350956,
		36.355721, 38.646122, 46.105068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588120, 38.313450, 46.379375>,  <35.711327, 38.766129, 45.859402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588120, 38.313450, 46.379375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937054, 38.495331, 46.451237>,  <36.146416, 38.604462, 46.494354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937054, 38.495331, 46.451237>,  <35.588120, 38.313450, 46.379375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937054, 38.495331, 46.451237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356617, 0.340409, 0.870026,
		0.334410, -0.823043, 0.459098,
		0.872350, 0.454668, 0.179675,
		36.198753, 38.631744, 46.505135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633759, 38.191631, 47.134418>,  <35.588120, 38.313450, 46.379375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633759, 38.191631, 47.134418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907658, 38.475239, 47.066994>,  <36.071995, 38.645405, 47.026539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907658, 38.475239, 47.066994>,  <35.633759, 38.191631, 47.134418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907658, 38.475239, 47.066994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045445, 0.272384, 0.961115,
		0.727365, -0.650457, 0.218735,
		0.684744, 0.709022, -0.168562,
		36.113079, 38.687946, 47.016426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174652, 38.242996, 47.731941>,  <35.633759, 38.191631, 47.134418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174652, 38.242996, 47.731941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227264, 38.596497, 47.552307>,  <36.258831, 38.808598, 47.444527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227264, 38.596497, 47.552307>,  <36.174652, 38.242996, 47.731941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227264, 38.596497, 47.552307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031559, 0.456528, 0.889149,
		0.990810, -0.102774, 0.087936,
		0.131527, 0.883753, -0.449089,
		36.266724, 38.861622, 47.417580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757168, 38.578907, 48.107971>,  <36.174652, 38.242996, 47.731941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757168, 38.578907, 48.107971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548695, 38.867664, 47.925880>,  <36.423611, 39.040920, 47.816624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548695, 38.867664, 47.925880>,  <36.757168, 38.578907, 48.107971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548695, 38.867664, 47.925880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005045, 0.536001, 0.844202,
		0.853428, 0.437690, -0.282999,
		-0.521186, 0.721894, -0.455230,
		36.392338, 39.084232, 47.789310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.012585, 39.926674, 46.351017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252882, 39.689152, 46.565121>,  <31.397060, 39.546638, 46.693584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252882, 39.689152, 46.565121>,  <31.012585, 39.926674, 46.351017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252882, 39.689152, 46.565121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368909, -0.388087, -0.844568,
		0.709235, 0.704832, -0.014081,
		0.600743, -0.593802, 0.535263,
		31.433105, 39.511009, 46.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643217, 40.157406, 46.207687>,  <31.012585, 39.926674, 46.351017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643217, 40.157406, 46.207687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654345, 39.770325, 46.307903>,  <31.661022, 39.538074, 46.368034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654345, 39.770325, 46.307903>,  <31.643217, 40.157406, 46.207687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654345, 39.770325, 46.307903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359505, -0.224185, -0.905813,
		0.932729, 0.115271, 0.341658,
		0.027820, -0.967705, 0.250544,
		31.662691, 39.480015, 46.383068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340038, 39.894054, 45.921402>,  <31.643217, 40.157406, 46.207687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340038, 39.894054, 45.921402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.097931, 39.580532, 45.976971>,  <31.952665, 39.392418, 46.010311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.097931, 39.580532, 45.976971>,  <32.340038, 39.894054, 45.921402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097931, 39.580532, 45.976971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269268, -0.365834, -0.890876,
		0.749094, -0.501815, 0.432482,
		-0.605271, -0.783803, 0.138922,
		31.916349, 39.345390, 46.018646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675694, 39.419689, 45.524498>,  <32.340038, 39.894054, 45.921402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675694, 39.419689, 45.524498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.322220, 39.240128, 45.577549>,  <32.110134, 39.132393, 45.609379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.322220, 39.240128, 45.577549>,  <32.675694, 39.419689, 45.524498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322220, 39.240128, 45.577549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052501, -0.376602, -0.924886,
		0.465130, -0.810344, 0.356364,
		-0.883684, -0.448902, 0.132625,
		32.057114, 39.105457, 45.617336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754509, 38.772392, 45.231178>,  <32.675694, 39.419689, 45.524498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754509, 38.772392, 45.231178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356716, 38.811718, 45.245770>,  <32.118038, 38.835316, 45.254524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356716, 38.811718, 45.245770>,  <32.754509, 38.772392, 45.231178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356716, 38.811718, 45.245770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069454, -0.356927, -0.931547,
		-0.078568, -0.928944, 0.361787,
		-0.994486, 0.098318, 0.036475,
		32.058369, 38.841213, 45.256714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493118, 38.104866, 45.032841>,  <32.754509, 38.772392, 45.231178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493118, 38.104866, 45.032841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.174583, 38.338066, 44.968384>,  <31.983463, 38.477985, 44.929710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.174583, 38.338066, 44.968384>,  <32.493118, 38.104866, 45.032841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174583, 38.338066, 44.968384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096997, -0.386051, -0.917364,
		-0.597032, -0.714896, 0.363974,
		-0.796332, 0.583000, -0.161143,
		31.935684, 38.512966, 44.920040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876759, 37.661388, 44.688919>,  <32.493118, 38.104866, 45.032841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876759, 37.661388, 44.688919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843401, 38.052349, 44.611221>,  <31.823387, 38.286926, 44.564602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843401, 38.052349, 44.611221>,  <31.876759, 37.661388, 44.688919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843401, 38.052349, 44.611221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115139, -0.203069, -0.972372,
		-0.989843, -0.058724, 0.129471,
		-0.083393, 0.977402, -0.194245,
		31.818382, 38.345570, 44.552948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526260, 37.649548, 44.146217>,  <31.876759, 37.661388, 44.688919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526260, 37.649548, 44.146217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.649561, 38.027393, 44.101177>,  <31.723541, 38.254101, 44.074154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.649561, 38.027393, 44.101177>,  <31.526260, 37.649548, 44.146217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649561, 38.027393, 44.101177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226210, -0.042183, -0.973164,
		-0.924018, 0.325451, 0.200679,
		0.308252, 0.944617, -0.112599,
		31.742037, 38.310780, 44.067398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012053, 37.975925, 43.662643>,  <31.526260, 37.649548, 44.146217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012053, 37.975925, 43.662643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.313295, 38.238815, 43.650742>,  <31.494041, 38.396549, 43.643600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.313295, 38.238815, 43.650742>,  <31.012053, 37.975925, 43.662643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313295, 38.238815, 43.650742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061885, 0.025737, -0.997751,
		-0.654979, 0.753257, 0.060055,
		0.753109, 0.657223, -0.029758,
		31.539228, 38.435982, 43.641815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859331, 38.416496, 43.123478>,  <31.012053, 37.975925, 43.662643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859331, 38.416496, 43.123478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255100, 38.432121, 43.179356>,  <31.492561, 38.441498, 43.212883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255100, 38.432121, 43.179356>,  <30.859331, 38.416496, 43.123478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255100, 38.432121, 43.179356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144506, -0.181783, -0.972663,
		-0.012600, 0.982563, -0.185505,
		0.989424, 0.039062, 0.139696,
		31.551928, 38.443840, 43.221264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136082, 39.081680, 43.020042>,  <30.859331, 38.416496, 43.123478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136082, 39.081680, 43.020042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426752, 38.816666, 42.947399>,  <31.601154, 38.657658, 42.903812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426752, 38.816666, 42.947399>,  <31.136082, 39.081680, 43.020042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426752, 38.816666, 42.947399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011094, 0.275641, -0.961197,
		0.686889, 0.696466, 0.207652,
		0.726678, -0.662539, -0.181609,
		31.644756, 38.617905, 42.892918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523132, 39.354710, 42.468666>,  <31.136082, 39.081680, 43.020042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523132, 39.354710, 42.468666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.676289, 38.986237, 42.496441>,  <31.768183, 38.765152, 42.513107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.676289, 38.986237, 42.496441>,  <31.523132, 39.354710, 42.468666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676289, 38.986237, 42.496441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237217, 0.025399, -0.971125,
		0.892817, 0.388307, 0.228244,
		0.382892, -0.921180, 0.069436,
		31.791157, 38.709881, 42.517273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218269, 39.336857, 42.201061>,  <31.523132, 39.354710, 42.468666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218269, 39.336857, 42.201061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061565, 38.971424, 42.157448>,  <31.967545, 38.752163, 42.131279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061565, 38.971424, 42.157448>,  <32.218269, 39.336857, 42.201061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061565, 38.971424, 42.157448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336220, -0.031840, -0.941245,
		0.856436, -0.405398, 0.319639,
		-0.391756, -0.913586, -0.109034,
		31.944038, 38.697350, 42.124737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725395, 39.080059, 41.704464>,  <32.218269, 39.336857, 42.201061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725395, 39.080059, 41.704464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429977, 38.810848, 41.720383>,  <32.252728, 38.649323, 41.729935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429977, 38.810848, 41.720383>,  <32.725395, 39.080059, 41.704464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429977, 38.810848, 41.720383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124204, -0.193836, -0.973140,
		0.662664, -0.713766, 0.226749,
		-0.738546, -0.673028, 0.039796,
		32.208412, 38.608940, 41.732323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499180, 38.969955, 41.656883>,  <32.725395, 39.080059, 41.704464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499180, 38.969955, 41.656883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640347, 39.317505, 41.518028>,  <33.725048, 39.526035, 41.434715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640347, 39.317505, 41.518028>,  <33.499180, 38.969955, 41.656883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640347, 39.317505, 41.518028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404460, 0.476228, 0.780781,
		0.843718, -0.135149, 0.519495,
		0.352920, 0.868873, -0.347140,
		33.746223, 39.578167, 41.413887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928776, 39.261559, 42.194901>,  <33.499180, 38.969955, 41.656883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928776, 39.261559, 42.194901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846836, 39.591309, 41.983829>,  <33.797672, 39.789158, 41.857185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846836, 39.591309, 41.983829>,  <33.928776, 39.261559, 42.194901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846836, 39.591309, 41.983829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317683, 0.453931, 0.832480,
		0.925805, 0.338167, 0.168903,
		-0.204847, 0.824372, -0.527681,
		33.785381, 39.838619, 41.825523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186630, 39.763577, 42.632996>,  <33.928776, 39.261559, 42.194901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186630, 39.763577, 42.632996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.921463, 39.928413, 42.382965>,  <33.762363, 40.027317, 42.232948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.921463, 39.928413, 42.382965>,  <34.186630, 39.763577, 42.632996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921463, 39.928413, 42.382965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313704, 0.605181, 0.731673,
		0.679800, 0.681129, -0.271911,
		-0.662919, 0.412092, -0.625075,
		33.722588, 40.052040, 42.195442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245087, 40.549530, 42.673279>,  <34.186630, 39.763577, 42.632996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245087, 40.549530, 42.673279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874573, 40.495789, 42.532459>,  <33.652264, 40.463543, 42.447968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874573, 40.495789, 42.532459>,  <34.245087, 40.549530, 42.673279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874573, 40.495789, 42.532459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364722, 0.554466, 0.748027,
		0.094700, 0.821289, -0.562597,
		-0.926288, -0.134353, -0.352050,
		33.596687, 40.455482, 42.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995296, 41.211147, 42.671772>,  <34.245087, 40.549530, 42.673279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995296, 41.211147, 42.671772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684757, 40.959526, 42.687622>,  <33.498432, 40.808552, 42.697132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684757, 40.959526, 42.687622>,  <33.995296, 41.211147, 42.671772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684757, 40.959526, 42.687622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369233, 0.504838, 0.780260,
		-0.510828, 0.591126, -0.624199,
		-0.776351, -0.629054, 0.039623,
		33.451851, 40.770809, 42.699509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457760, 41.711361, 42.715767>,  <33.995296, 41.211147, 42.671772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457760, 41.711361, 42.715767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355644, 41.345139, 42.840076>,  <33.294376, 41.125404, 42.914661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355644, 41.345139, 42.840076>,  <33.457760, 41.711361, 42.715767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355644, 41.345139, 42.840076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518327, 0.400932, 0.755374,
		-0.816189, 0.031756, -0.576912,
		-0.255290, -0.915557, 0.310777,
		33.279057, 41.070473, 42.933308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789078, 41.880615, 43.039566>,  <33.457760, 41.711361, 42.715767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789078, 41.880615, 43.039566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899315, 41.517166, 43.165073>,  <32.965458, 41.299095, 43.240376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899315, 41.517166, 43.165073>,  <32.789078, 41.880615, 43.039566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899315, 41.517166, 43.165073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335065, 0.215134, 0.917305,
		-0.900988, -0.357937, -0.245158,
		0.275596, -0.908624, 0.313765,
		32.981995, 41.244579, 43.259201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233730, 41.583542, 43.387424>,  <32.789078, 41.880615, 43.039566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233730, 41.583542, 43.387424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556038, 41.387543, 43.520470>,  <32.749424, 41.269943, 43.600296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556038, 41.387543, 43.520470>,  <32.233730, 41.583542, 43.387424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556038, 41.387543, 43.520470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329720, 0.095372, 0.939249,
		-0.491954, -0.866490, -0.084715,
		0.805770, -0.490000, 0.332617,
		32.797768, 41.240543, 43.620255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999704, 41.126331, 43.877090>,  <32.233730, 41.583542, 43.387424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999704, 41.126331, 43.877090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390076, 41.170258, 43.952461>,  <32.624298, 41.196613, 43.997684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390076, 41.170258, 43.952461>,  <31.999704, 41.126331, 43.877090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390076, 41.170258, 43.952461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189456, -0.001125, 0.981889,
		0.108041, -0.993951, 0.019708,
		0.975927, 0.109818, 0.188431,
		32.682854, 41.203201, 44.008991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089718, 40.659336, 44.518314>,  <31.999704, 41.126331, 43.877090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089718, 40.659336, 44.518314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404919, 40.905323, 44.506542>,  <32.594040, 41.052917, 44.499481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404919, 40.905323, 44.506542>,  <32.089718, 40.659336, 44.518314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404919, 40.905323, 44.506542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110770, 0.188627, 0.975782,
		0.605629, -0.765656, 0.216758,
		0.788000, 0.614972, -0.029427,
		32.641319, 41.089813, 44.497715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483398, 40.412544, 45.113235>,  <32.089718, 40.659336, 44.518314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483398, 40.412544, 45.113235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.629391, 40.773899, 45.023190>,  <32.716988, 40.990711, 44.969162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.629391, 40.773899, 45.023190>,  <32.483398, 40.412544, 45.113235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629391, 40.773899, 45.023190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148960, 0.182013, 0.971948,
		0.919021, -0.388274, -0.068138,
		0.364980, 0.903391, -0.225111,
		32.738884, 41.044918, 44.955658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146889, 40.512203, 45.565971>,  <32.483398, 40.412544, 45.113235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146889, 40.512203, 45.565971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011101, 40.871754, 45.455132>,  <32.929626, 41.087482, 45.388626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011101, 40.871754, 45.455132>,  <33.146889, 40.512203, 45.565971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011101, 40.871754, 45.455132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214657, 0.360856, 0.907582,
		0.915796, 0.248614, -0.315449,
		-0.339469, 0.898874, -0.277104,
		32.909260, 41.141415, 45.372002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619793, 40.962605, 45.869656>,  <33.146889, 40.512203, 45.565971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619793, 40.962605, 45.869656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.277798, 41.160133, 45.806229>,  <33.072601, 41.278648, 45.768173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.277798, 41.160133, 45.806229>,  <33.619793, 40.962605, 45.869656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277798, 41.160133, 45.806229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016982, 0.278914, 0.960166,
		0.518375, 0.823620, -0.230081,
		-0.854985, 0.493818, -0.158569,
		33.021301, 41.308277, 45.758659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789772, 41.616222, 46.162453>,  <33.619793, 40.962605, 45.869656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789772, 41.616222, 46.162453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394398, 41.556046, 46.154743>,  <33.157173, 41.519939, 46.150116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394398, 41.556046, 46.154743>,  <33.789772, 41.616222, 46.162453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394398, 41.556046, 46.154743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039903, 0.135326, 0.989997,
		-0.146325, 0.979314, -0.139764,
		-0.988431, -0.150439, -0.019276,
		33.097870, 41.510914, 46.148960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263100, 42.044617, 46.387360>,  <33.789772, 41.616222, 46.162453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263100, 42.044617, 46.387360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.646305, 42.012569, 46.497478>,  <34.876228, 41.993340, 46.563549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.646305, 42.012569, 46.497478>,  <34.263100, 42.044617, 46.387360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646305, 42.012569, 46.497478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251291, -0.227695, -0.940749,
		0.138059, 0.970431, -0.198001,
		0.958015, -0.080123, 0.275295,
		34.933708, 41.988533, 46.580067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678772, 42.622566, 46.080418>,  <34.263100, 42.044617, 46.387360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678772, 42.622566, 46.080418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927303, 42.322498, 46.170921>,  <35.076424, 42.142456, 46.225224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927303, 42.322498, 46.170921>,  <34.678772, 42.622566, 46.080418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927303, 42.322498, 46.170921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161263, -0.160150, -0.973831,
		0.766773, 0.641560, 0.021468,
		0.621333, -0.750169, 0.226258,
		35.113705, 42.097446, 46.238800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195457, 42.758163, 45.673397>,  <34.678772, 42.622566, 46.080418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195457, 42.758163, 45.673397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242760, 42.366562, 45.739819>,  <35.271141, 42.131603, 45.779671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242760, 42.366562, 45.739819>,  <35.195457, 42.758163, 45.673397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242760, 42.366562, 45.739819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374430, -0.110919, -0.920597,
		0.919683, 0.171044, 0.353450,
		0.118258, -0.979000, 0.166054,
		35.278236, 42.072861, 45.789635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827240, 42.581570, 45.485504>,  <35.195457, 42.758163, 45.673397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827240, 42.581570, 45.485504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654198, 42.220963, 45.481213>,  <35.550373, 42.004597, 45.478638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654198, 42.220963, 45.481213>,  <35.827240, 42.581570, 45.485504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654198, 42.220963, 45.481213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421293, -0.191615, -0.886452,
		0.797099, -0.388000, 0.462698,
		-0.432603, -0.901521, -0.010725,
		35.524418, 41.950508, 45.477997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325584, 42.047058, 45.351681>,  <35.827240, 42.581570, 45.485504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325584, 42.047058, 45.351681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994740, 41.849804, 45.243828>,  <35.796230, 41.731453, 45.179115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994740, 41.849804, 45.243828>,  <36.325584, 42.047058, 45.351681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994740, 41.849804, 45.243828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442468, -0.275516, -0.853413,
		0.346558, -0.825174, 0.446079,
		-0.827115, -0.493132, -0.269631,
		35.746605, 41.701866, 45.162937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569786, 41.343555, 45.152363>,  <36.325584, 42.047058, 45.351681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569786, 41.343555, 45.152363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210354, 41.397598, 44.985371>,  <35.994694, 41.430023, 44.885174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210354, 41.397598, 44.985371>,  <36.569786, 41.343555, 45.152363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210354, 41.397598, 44.985371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395790, -0.161247, -0.904074,
		-0.189462, -0.977623, 0.091421,
		-0.898585, 0.135104, -0.417483,
		35.940777, 41.438129, 44.860126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411575, 40.699200, 44.761574>,  <36.569786, 41.343555, 45.152363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411575, 40.699200, 44.761574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175201, 40.990601, 44.622959>,  <36.033379, 41.165440, 44.539791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175201, 40.990601, 44.622959>,  <36.411575, 40.699200, 44.761574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175201, 40.990601, 44.622959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388902, -0.119092, -0.913549,
		-0.706789, -0.674615, -0.212939,
		-0.590935, 0.728499, -0.346532,
		35.997921, 41.209152, 44.519001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995758, 40.404163, 44.317913>,  <36.411575, 40.699200, 44.761574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995758, 40.404163, 44.317913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010998, 40.793182, 44.226082>,  <36.020142, 41.026592, 44.170982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010998, 40.793182, 44.226082>,  <35.995758, 40.404163, 44.317913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010998, 40.793182, 44.226082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484487, -0.218917, -0.846964,
		-0.873968, -0.078957, -0.479526,
		0.038102, 0.972544, -0.229580,
		36.022427, 41.084946, 44.157207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674374, 40.426559, 43.638298>,  <35.995758, 40.404163, 44.317913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674374, 40.426559, 43.638298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901596, 40.749451, 43.702419>,  <36.037930, 40.943184, 43.740894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901596, 40.749451, 43.702419>,  <35.674374, 40.426559, 43.638298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901596, 40.749451, 43.702419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354807, -0.064459, -0.932715,
		-0.742576, 0.586716, -0.323025,
		0.568061, 0.807223, 0.160305,
		36.072014, 40.991619, 43.750511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623245, 40.867847, 43.114639>,  <35.674374, 40.426559, 43.638298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623245, 40.867847, 43.114639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975220, 40.978092, 43.269432>,  <36.186405, 41.044239, 43.362309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975220, 40.978092, 43.269432>,  <35.623245, 40.867847, 43.114639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975220, 40.978092, 43.269432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438029, -0.155212, -0.885460,
		-0.183983, 0.948654, -0.257304,
		0.879932, 0.275616, 0.386982,
		36.239201, 41.060776, 43.385525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041527, 41.043476, 42.587444>,  <35.623245, 40.867847, 43.114639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041527, 41.043476, 42.587444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367863, 41.050106, 42.818661>,  <36.563663, 41.054085, 42.957390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367863, 41.050106, 42.818661>,  <36.041527, 41.043476, 42.587444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367863, 41.050106, 42.818661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578280, -0.020771, -0.815574,
		-0.001508, 0.999647, -0.026528,
		0.815837, 0.016571, 0.578045,
		36.612614, 41.055077, 42.992073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522137, 41.362904, 42.182213>,  <36.041527, 41.043476, 42.587444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522137, 41.362904, 42.182213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.759808, 41.161755, 42.433311>,  <36.902409, 41.041065, 42.583973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.759808, 41.161755, 42.433311>,  <36.522137, 41.362904, 42.182213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759808, 41.161755, 42.433311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656048, -0.148542, -0.739957,
		0.465353, 0.851500, 0.241650,
		0.594178, -0.502876, 0.627749,
		36.938061, 41.010891, 42.621635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158688, 41.559498, 41.975468>,  <36.522137, 41.362904, 42.182213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158688, 41.559498, 41.975468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212059, 41.234390, 42.202309>,  <37.244083, 41.039326, 42.338413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212059, 41.234390, 42.202309>,  <37.158688, 41.559498, 41.975468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212059, 41.234390, 42.202309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631856, -0.371078, -0.680484,
		0.763515, 0.449125, 0.464039,
		0.133428, -0.812766, 0.567106,
		37.252087, 40.990562, 42.372440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867462, 41.318554, 41.904503>,  <37.158688, 41.559498, 41.975468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867462, 41.318554, 41.904503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.664528, 40.991318, 42.012821>,  <37.542767, 40.794975, 42.077812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.664528, 40.991318, 42.012821>,  <37.867462, 41.318554, 41.904503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664528, 40.991318, 42.012821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435443, -0.514545, -0.738670,
		0.743640, -0.256836, 0.617280,
		-0.507335, -0.818095, 0.270799,
		37.512329, 40.745888, 42.094059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.206583, 31.690193, 28.405577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111483, 31.306719, 28.468060>,  <28.054422, 31.076635, 28.505548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111483, 31.306719, 28.468060>,  <28.206583, 31.690193, 28.405577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111483, 31.306719, 28.468060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370945, 0.238242, 0.897575,
		-0.897705, 0.155454, -0.412261,
		-0.237750, -0.958684, 0.156206,
		28.040157, 31.019114, 28.514921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483593, 31.624407, 28.660324>,  <28.206583, 31.690193, 28.405577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483593, 31.624407, 28.660324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689531, 31.308428, 28.793543>,  <27.813095, 31.118841, 28.873474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689531, 31.308428, 28.793543>,  <27.483593, 31.624407, 28.660324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689531, 31.308428, 28.793543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286646, 0.207504, 0.935295,
		-0.807941, -0.576998, -0.119603,
		0.514845, -0.789947, 0.333045,
		27.843985, 31.071444, 28.893456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967560, 31.060902, 28.983065>,  <27.483593, 31.624407, 28.660324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967560, 31.060902, 28.983065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337807, 31.026194, 29.130415>,  <27.559956, 31.005369, 29.218824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337807, 31.026194, 29.130415>,  <26.967560, 31.060902, 28.983065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337807, 31.026194, 29.130415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361002, 0.089753, 0.928236,
		-0.113609, -0.992177, 0.051752,
		0.925619, -0.086773, 0.368374,
		27.615492, 31.000162, 29.240927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856598, 30.804670, 29.640795>,  <26.967560, 31.060902, 28.983065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856598, 30.804670, 29.640795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241837, 30.909014, 29.667320>,  <27.472980, 30.971621, 29.683235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241837, 30.909014, 29.667320>,  <26.856598, 30.804670, 29.640795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241837, 30.909014, 29.667320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105153, 0.137861, 0.984854,
		0.247768, -0.955482, 0.160204,
		0.963096, 0.260861, 0.066314,
		27.530766, 30.987270, 29.687214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885742, 30.777306, 30.314648>,  <26.856598, 30.804670, 29.640795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885742, 30.777306, 30.314648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.237839, 30.944794, 30.225340>,  <27.449097, 31.045286, 30.171755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.237839, 30.944794, 30.225340>,  <26.885742, 30.777306, 30.314648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237839, 30.944794, 30.225340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127194, 0.245094, 0.961119,
		0.457163, -0.874415, 0.162483,
		0.880241, 0.418721, -0.223268,
		27.501911, 31.070410, 30.158360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375589, 30.431776, 30.755022>,  <26.885742, 30.777306, 30.314648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375589, 30.431776, 30.755022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496845, 30.799534, 30.654768>,  <27.569599, 31.020189, 30.594616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496845, 30.799534, 30.654768>,  <27.375589, 30.431776, 30.755022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496845, 30.799534, 30.654768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064222, 0.242701, 0.967973,
		0.950780, -0.309525, 0.014526,
		0.303137, 0.919397, -0.250634,
		27.587786, 31.075354, 30.579578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703096, 30.636801, 31.269709>,  <27.375589, 30.431776, 30.755022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703096, 30.636801, 31.269709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666557, 30.990976, 31.087435>,  <27.644634, 31.203482, 30.978069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666557, 30.990976, 31.087435>,  <27.703096, 30.636801, 31.269709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666557, 30.990976, 31.087435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030361, 0.459864, 0.887470,
		0.995356, 0.067235, -0.068891,
		-0.091349, 0.885440, -0.455687,
		27.639153, 31.256609, 30.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242870, 31.120642, 31.613087>,  <27.703096, 30.636801, 31.269709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242870, 31.120642, 31.613087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952703, 31.330046, 31.434334>,  <27.778603, 31.455688, 31.327082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952703, 31.330046, 31.434334>,  <28.242870, 31.120642, 31.613087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952703, 31.330046, 31.434334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093085, 0.568671, 0.817281,
		0.681984, 0.634469, -0.363795,
		-0.725419, 0.523509, -0.446884,
		27.735077, 31.487099, 31.300268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385237, 31.821512, 31.829140>,  <28.242870, 31.120642, 31.613087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385237, 31.821512, 31.829140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015356, 31.830862, 31.677151>,  <27.793428, 31.836472, 31.585957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015356, 31.830862, 31.677151>,  <28.385237, 31.821512, 31.829140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015356, 31.830862, 31.677151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274955, 0.649320, 0.709073,
		0.263300, 0.760156, -0.593999,
		-0.924701, 0.023376, -0.379975,
		27.737946, 31.837875, 31.563158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261765, 32.466015, 31.544401>,  <28.385237, 31.821512, 31.829140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261765, 32.466015, 31.544401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910332, 32.294094, 31.627697>,  <27.699472, 32.190941, 31.677675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910332, 32.294094, 31.627697>,  <28.261765, 32.466015, 31.544401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910332, 32.294094, 31.627697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249265, 0.784591, 0.567701,
		-0.407382, 0.446865, -0.796462,
		-0.878582, -0.429801, 0.208240,
		27.646757, 32.165154, 31.690168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751183, 33.005386, 31.489605>,  <28.261765, 32.466015, 31.544401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751183, 33.005386, 31.489605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.590208, 32.718601, 31.717293>,  <27.493624, 32.546532, 31.853905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.590208, 32.718601, 31.717293>,  <27.751183, 33.005386, 31.489605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590208, 32.718601, 31.717293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139293, 0.662511, 0.735987,
		-0.904788, 0.216901, -0.366487,
		-0.402438, -0.716961, 0.569220,
		27.469477, 32.503513, 31.888060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303375, 33.382828, 31.797865>,  <27.751183, 33.005386, 31.489605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303375, 33.382828, 31.797865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.306522, 33.048584, 32.017574>,  <27.308411, 32.848038, 32.149399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.306522, 33.048584, 32.017574>,  <27.303375, 33.382828, 31.797865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306522, 33.048584, 32.017574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307737, 0.520609, 0.796407,
		-0.951439, -0.175300, -0.253050,
		0.007870, -0.835605, 0.549274,
		27.308884, 32.797901, 32.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714447, 33.357269, 32.122551>,  <27.303375, 33.382828, 31.797865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714447, 33.357269, 32.122551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966570, 33.144463, 32.348709>,  <27.117844, 33.016777, 32.484406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966570, 33.144463, 32.348709>,  <26.714447, 33.357269, 32.122551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966570, 33.144463, 32.348709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250595, 0.549867, 0.796773,
		-0.734789, -0.643897, 0.213264,
		0.630307, -0.532018, 0.565394,
		27.155663, 32.984856, 32.518326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326181, 33.212204, 32.577568>,  <26.714447, 33.357269, 32.122551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326181, 33.212204, 32.577568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673565, 33.107300, 32.745853>,  <26.881994, 33.044357, 32.846825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673565, 33.107300, 32.745853>,  <26.326181, 33.212204, 32.577568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673565, 33.107300, 32.745853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320047, 0.351517, 0.879776,
		-0.378620, -0.898696, 0.221341,
		0.868456, -0.262262, 0.420717,
		26.934101, 33.028622, 32.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134649, 32.886765, 33.145782>,  <26.326181, 33.212204, 32.577568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134649, 32.886765, 33.145782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510229, 33.017494, 33.188793>,  <26.735577, 33.095932, 33.214600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510229, 33.017494, 33.188793>,  <26.134649, 32.886765, 33.145782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510229, 33.017494, 33.188793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258686, 0.464543, 0.846925,
		0.226846, -0.823034, 0.520727,
		0.938948, 0.326826, 0.107527,
		26.791914, 33.115543, 33.221050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235424, 32.878208, 33.868862>,  <26.134649, 32.886765, 33.145782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235424, 32.878208, 33.868862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549398, 33.108318, 33.776829>,  <26.737783, 33.246384, 33.721611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549398, 33.108318, 33.776829>,  <26.235424, 32.878208, 33.868862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549398, 33.108318, 33.776829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056362, 0.436108, 0.898128,
		0.617011, -0.692003, 0.374739,
		0.784934, 0.575275, -0.230081,
		26.784878, 33.280899, 33.707806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664709, 32.910370, 34.434601>,  <26.235424, 32.878208, 33.868862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664709, 32.910370, 34.434601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778597, 33.233406, 34.228016>,  <26.846930, 33.427227, 34.104065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778597, 33.233406, 34.228016>,  <26.664709, 32.910370, 34.434601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778597, 33.233406, 34.228016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037702, 0.528910, 0.847840,
		0.957869, -0.260869, 0.120144,
		0.284721, 0.807590, -0.516461,
		26.864014, 33.475681, 34.073078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213827, 33.277447, 34.940228>,  <26.664709, 32.910370, 34.434601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213827, 33.277447, 34.940228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083069, 33.566170, 34.696213>,  <27.004614, 33.739403, 34.549805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083069, 33.566170, 34.696213>,  <27.213827, 33.277447, 34.940228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083069, 33.566170, 34.696213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034640, 0.635911, 0.770985,
		0.944425, 0.273163, -0.182873,
		-0.326896, 0.721803, -0.610033,
		26.985001, 33.782711, 34.513203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608377, 33.855064, 35.109093>,  <27.213827, 33.277447, 34.940228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608377, 33.855064, 35.109093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.287882, 33.999870, 34.918533>,  <27.095585, 34.086754, 34.804195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.287882, 33.999870, 34.918533>,  <27.608377, 33.855064, 35.109093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287882, 33.999870, 34.918533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102372, 0.701520, 0.705258,
		0.589521, 0.613851, -0.525025,
		-0.801239, 0.362017, -0.476403,
		27.047510, 34.108475, 34.775612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755188, 34.573315, 35.050613>,  <27.608377, 33.855064, 35.109093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755188, 34.573315, 35.050613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.359835, 34.545792, 34.996410>,  <27.122623, 34.529278, 34.963886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.359835, 34.545792, 34.996410>,  <27.755188, 34.573315, 35.050613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359835, 34.545792, 34.996410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134834, 0.808446, 0.572917,
		0.070130, 0.584534, -0.808333,
		-0.988383, -0.068812, -0.135512,
		27.063320, 34.525146, 34.955757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402996, 34.934788, 35.372566>,  <27.755188, 34.573315, 35.050613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402996, 34.934788, 35.372566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768288, 34.773746, 35.347507>,  <28.987463, 34.677120, 35.332470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768288, 34.773746, 35.347507>,  <28.402996, 34.934788, 35.372566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768288, 34.773746, 35.347507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065091, 0.007634, -0.997850,
		0.402216, 0.915343, -0.019234,
		0.913228, -0.402604, -0.062651,
		29.042255, 34.652966, 35.328712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698702, 35.380672, 34.787155>,  <28.402996, 34.934788, 35.372566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698702, 35.380672, 34.787155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887480, 35.029892, 34.823410>,  <29.000748, 34.819424, 34.845165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887480, 35.029892, 34.823410>,  <28.698702, 35.380672, 34.787155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887480, 35.029892, 34.823410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057703, -0.133316, -0.989392,
		0.879737, 0.461709, -0.113521,
		0.471946, -0.876956, 0.090641,
		29.029064, 34.766804, 34.850601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221779, 35.527668, 34.303539>,  <28.698702, 35.380672, 34.787155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221779, 35.527668, 34.303539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197298, 35.131542, 34.353378>,  <29.182610, 34.893867, 34.383282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197298, 35.131542, 34.353378>,  <29.221779, 35.527668, 34.303539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197298, 35.131542, 34.353378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187448, -0.111203, -0.975960,
		0.980366, -0.083086, -0.178827,
		-0.061202, -0.990318, 0.124594,
		29.178938, 34.834446, 34.390755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585506, 35.232788, 33.735958>,  <29.221779, 35.527668, 34.303539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585506, 35.232788, 33.735958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363314, 34.924828, 33.861618>,  <29.229998, 34.740051, 33.937012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363314, 34.924828, 33.861618>,  <29.585506, 35.232788, 33.735958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363314, 34.924828, 33.861618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338567, -0.135653, -0.931113,
		0.759483, -0.623574, -0.185312,
		-0.555480, -0.769905, 0.314148,
		29.196671, 34.693855, 33.955864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672117, 34.636303, 33.282528>,  <29.585506, 35.232788, 33.735958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672117, 34.636303, 33.282528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.326685, 34.550907, 33.465240>,  <29.119425, 34.499672, 33.574867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.326685, 34.550907, 33.465240>,  <29.672117, 34.636303, 33.282528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326685, 34.550907, 33.465240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419558, -0.198191, -0.885828,
		0.279642, -0.956632, 0.081585,
		-0.863580, -0.213486, 0.456785,
		29.067612, 34.486862, 33.602276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484798, 34.149929, 32.899494>,  <29.672117, 34.636303, 33.282528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484798, 34.149929, 32.899494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142902, 34.277798, 33.063072>,  <28.937765, 34.354519, 33.161217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142902, 34.277798, 33.063072>,  <29.484798, 34.149929, 32.899494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142902, 34.277798, 33.063072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450889, -0.066965, -0.890064,
		-0.257143, -0.945159, 0.201374,
		-0.854738, 0.319671, 0.408942,
		28.886480, 34.373699, 33.185757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949125, 33.614357, 32.661194>,  <29.484798, 34.149929, 32.899494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949125, 33.614357, 32.661194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739401, 33.933716, 32.779621>,  <28.613565, 34.125332, 32.850677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739401, 33.933716, 32.779621>,  <28.949125, 33.614357, 32.661194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739401, 33.933716, 32.779621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558967, -0.060407, -0.826986,
		-0.642381, -0.599090, 0.477952,
		-0.524311, 0.798400, 0.296067,
		28.582108, 34.173237, 32.868443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279940, 33.400257, 32.579628>,  <28.949125, 33.614357, 32.661194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279940, 33.400257, 32.579628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282005, 33.800213, 32.574162>,  <28.283245, 34.040188, 32.570881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282005, 33.800213, 32.574162>,  <28.279940, 33.400257, 32.579628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282005, 33.800213, 32.574162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608862, -0.007701, -0.793239,
		-0.793260, 0.012420, 0.608757,
		0.005164, 0.999893, -0.013671,
		28.283554, 34.100182, 32.570061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602938, 33.527573, 32.507214>,  <28.279940, 33.400257, 32.579628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602938, 33.527573, 32.507214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782980, 33.862885, 32.384129>,  <27.891005, 34.064072, 32.310276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782980, 33.862885, 32.384129>,  <27.602938, 33.527573, 32.507214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782980, 33.862885, 32.384129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515897, -0.037157, -0.855844,
		-0.728874, 0.543967, 0.415743,
		0.450103, 0.838283, -0.307714,
		27.918011, 34.114368, 32.291813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109972, 33.944294, 32.184780>,  <27.602938, 33.527573, 32.507214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109972, 33.944294, 32.184780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445791, 34.105507, 32.039059>,  <27.647284, 34.202236, 31.951626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445791, 34.105507, 32.039059>,  <27.109972, 33.944294, 32.184780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445791, 34.105507, 32.039059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354077, -0.102668, -0.929564,
		-0.412050, 0.909407, 0.056511,
		0.839550, 0.403036, -0.364304,
		27.697657, 34.226418, 31.929768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950954, 34.346413, 31.637379>,  <27.109972, 33.944294, 32.184780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950954, 34.346413, 31.637379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333462, 34.283424, 31.538782>,  <27.562965, 34.245632, 31.479624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333462, 34.283424, 31.538782>,  <26.950954, 34.346413, 31.637379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333462, 34.283424, 31.538782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263791, -0.100224, -0.959359,
		0.126362, 0.982426, -0.137379,
		0.956267, -0.157466, -0.246490,
		27.620342, 34.236183, 31.464834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061142, 34.704147, 30.899382>,  <26.950954, 34.346413, 31.637379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061142, 34.704147, 30.899382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368998, 34.457874, 30.967016>,  <27.553711, 34.310112, 31.007597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368998, 34.457874, 30.967016>,  <27.061142, 34.704147, 30.899382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368998, 34.457874, 30.967016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156375, -0.074993, -0.984847,
		0.619033, 0.784418, 0.038560,
		0.769639, -0.615682, 0.169086,
		27.599890, 34.273170, 31.017742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676945, 35.032429, 30.566824>,  <27.061142, 34.704147, 30.899382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676945, 35.032429, 30.566824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715639, 34.635643, 30.599430>,  <27.738855, 34.397572, 30.618994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715639, 34.635643, 30.599430>,  <27.676945, 35.032429, 30.566824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715639, 34.635643, 30.599430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212875, -0.059383, -0.975273,
		0.972279, 0.111695, 0.205421,
		0.096735, -0.991967, 0.081514,
		27.744659, 34.338055, 30.623884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186399, 34.872887, 30.025007>,  <27.676945, 35.032429, 30.566824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186399, 34.872887, 30.025007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047646, 34.509003, 30.116302>,  <27.964394, 34.290672, 30.171080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047646, 34.509003, 30.116302>,  <28.186399, 34.872887, 30.025007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047646, 34.509003, 30.116302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275702, -0.331499, -0.902273,
		0.896472, -0.250057, 0.365801,
		-0.346882, -0.909714, 0.228238,
		27.943581, 34.236088, 30.184774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676739, 34.350040, 29.660231>,  <28.186399, 34.872887, 30.025007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676739, 34.350040, 29.660231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352955, 34.140526, 29.766375>,  <28.158684, 34.014816, 29.830061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352955, 34.140526, 29.766375>,  <28.676739, 34.350040, 29.660231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352955, 34.140526, 29.766375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124622, -0.594888, -0.794089,
		0.573795, -0.609715, 0.546814,
		-0.809462, -0.523790, 0.265360,
		28.110117, 33.983387, 29.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887369, 33.658878, 29.668779>,  <28.676739, 34.350040, 29.660231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887369, 33.658878, 29.668779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491730, 33.689194, 29.618280>,  <28.254345, 33.707382, 29.587982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491730, 33.689194, 29.618280>,  <28.887369, 33.658878, 29.668779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491730, 33.689194, 29.618280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078604, -0.453218, -0.887927,
		-0.124514, -0.888172, 0.442320,
		-0.989099, 0.075791, -0.126246,
		28.195000, 33.711929, 29.580406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774315, 33.048008, 29.253975>,  <28.887369, 33.658878, 29.668779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774315, 33.048008, 29.253975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436605, 33.254055, 29.194839>,  <28.233978, 33.377682, 29.159359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436605, 33.254055, 29.194839>,  <28.774315, 33.048008, 29.253975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436605, 33.254055, 29.194839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010468, -0.259958, -0.965563,
		-0.535807, -0.816749, 0.214084,
		-0.844276, 0.515114, -0.147837,
		28.183323, 33.408588, 29.150488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334620, 32.571678, 28.932058>,  <28.774315, 33.048008, 29.253975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334620, 32.571678, 28.932058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228685, 32.941769, 28.823378>,  <28.165125, 33.163822, 28.758169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228685, 32.941769, 28.823378>,  <28.334620, 32.571678, 28.932058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228685, 32.941769, 28.823378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090060, -0.304264, -0.948321,
		-0.960079, -0.226679, 0.163906,
		-0.264835, 0.925224, -0.271703,
		28.149235, 33.219337, 28.741867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636724, 32.596569, 28.578470>,  <28.334620, 32.571678, 28.932058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636724, 32.596569, 28.578470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819651, 32.926346, 28.445108>,  <27.929407, 33.124210, 28.365091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819651, 32.926346, 28.445108>,  <27.636724, 32.596569, 28.578470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819651, 32.926346, 28.445108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160661, -0.292142, -0.942784,
		-0.874671, 0.484716, -0.001146,
		0.457317, 0.824441, -0.333403,
		27.956846, 33.173679, 28.345087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180206, 32.875206, 28.102468>,  <27.636724, 32.596569, 28.578470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180206, 32.875206, 28.102468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528351, 33.047184, 28.006453>,  <27.737238, 33.150372, 27.948843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528351, 33.047184, 28.006453>,  <27.180206, 32.875206, 28.102468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528351, 33.047184, 28.006453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165073, -0.204515, -0.964844,
		-0.463918, 0.879389, -0.107031,
		0.870363, 0.429941, -0.240041,
		27.789459, 33.176167, 27.934441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052446, 33.145554, 27.475824>,  <27.180206, 32.875206, 28.102468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052446, 33.145554, 27.475824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450432, 33.178741, 27.498329>,  <27.689222, 33.198654, 27.511831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450432, 33.178741, 27.498329>,  <27.052446, 33.145554, 27.475824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450432, 33.178741, 27.498329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050247, 0.072877, -0.996074,
		-0.086741, 0.993884, 0.068342,
		0.994963, 0.082966, 0.056261,
		27.748920, 33.203632, 27.515207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196735, 33.660141, 26.965799>,  <27.052446, 33.145554, 27.475824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196735, 33.660141, 26.965799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532520, 33.454926, 27.037458>,  <27.733992, 33.331795, 27.080454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532520, 33.454926, 27.037458>,  <27.196735, 33.660141, 26.965799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532520, 33.454926, 27.037458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229788, 0.036378, -0.972561,
		0.492447, 0.857592, 0.148429,
		0.839460, -0.513042, 0.179150,
		27.784359, 33.301014, 27.091204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.129940, 39.426235, 48.226654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742390, 39.433773, 48.127922>,  <36.509861, 39.438293, 48.068684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742390, 39.433773, 48.127922>,  <37.129940, 39.426235, 48.226654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742390, 39.433773, 48.127922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177254, 0.643232, 0.744871,
		0.172803, 0.765439, -0.619872,
		-0.968876, 0.018841, -0.246830,
		36.451729, 39.439426, 48.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962029, 40.058300, 48.384781>,  <37.129940, 39.426235, 48.226654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962029, 40.058300, 48.384781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593590, 39.902664, 48.379185>,  <36.372528, 39.809284, 48.375828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593590, 39.902664, 48.379185>,  <36.962029, 40.058300, 48.384781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593590, 39.902664, 48.379185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259510, 0.586761, 0.767050,
		-0.290240, 0.710156, -0.641435,
		-0.921095, -0.389087, -0.013991,
		36.317261, 39.785938, 48.374989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649105, 40.561855, 48.591709>,  <36.962029, 40.058300, 48.384781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649105, 40.561855, 48.591709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382046, 40.268085, 48.640469>,  <36.221809, 40.091824, 48.669724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382046, 40.268085, 48.640469>,  <36.649105, 40.561855, 48.591709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382046, 40.268085, 48.640469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409007, 0.498666, 0.764229,
		-0.622056, 0.460382, -0.633321,
		-0.667652, -0.734426, 0.121899,
		36.181751, 40.047756, 48.677036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031330, 40.890057, 48.840950>,  <36.649105, 40.561855, 48.591709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031330, 40.890057, 48.840950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007351, 40.505016, 48.946632>,  <35.992962, 40.273991, 49.010040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007351, 40.505016, 48.946632>,  <36.031330, 40.890057, 48.840950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007351, 40.505016, 48.946632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400409, 0.265647, 0.876986,
		-0.914373, -0.053213, -0.401360,
		-0.059953, -0.962601, 0.264207,
		35.989365, 40.216236, 49.025894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309875, 40.776920, 49.177612>,  <36.031330, 40.890057, 48.840950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309875, 40.776920, 49.177612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555614, 40.476997, 49.275890>,  <35.703056, 40.297043, 49.334858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555614, 40.476997, 49.275890>,  <35.309875, 40.776920, 49.177612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555614, 40.476997, 49.275890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189627, 0.161961, 0.968406,
		-0.765913, -0.641525, -0.042685,
		0.614344, -0.749809, 0.245698,
		35.739918, 40.252056, 49.349602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912457, 40.299057, 49.634010>,  <35.309875, 40.776920, 49.177612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912457, 40.299057, 49.634010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302147, 40.243397, 49.705029>,  <35.535961, 40.209999, 49.747639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302147, 40.243397, 49.705029>,  <34.912457, 40.299057, 49.634010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302147, 40.243397, 49.705029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169488, 0.067878, 0.983192,
		-0.148866, -0.987942, 0.042544,
		0.974224, -0.139153, 0.177549,
		35.594414, 40.201653, 49.758293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926247, 39.767532, 50.185257>,  <34.912457, 40.299057, 49.634010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926247, 39.767532, 50.185257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265739, 39.979061, 50.185375>,  <35.469437, 40.105980, 50.185448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265739, 39.979061, 50.185375>,  <34.926247, 39.767532, 50.185257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265739, 39.979061, 50.185375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110063, 0.176089, 0.978202,
		0.517246, -0.830262, 0.207656,
		0.848730, 0.528826, 0.000300,
		35.520359, 40.137711, 50.185467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182419, 39.670929, 50.886753>,  <34.926247, 39.767532, 50.185257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182419, 39.670929, 50.886753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413437, 39.981915, 50.787167>,  <35.552048, 40.168507, 50.727413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413437, 39.981915, 50.787167>,  <35.182419, 39.670929, 50.886753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413437, 39.981915, 50.787167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024115, 0.321086, 0.946743,
		0.816001, -0.540785, 0.204192,
		0.577548, 0.777467, -0.248965,
		35.586700, 40.215153, 50.712479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804806, 39.738075, 51.435047>,  <35.182419, 39.670929, 50.886753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804806, 39.738075, 51.435047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748283, 40.092834, 51.259117>,  <35.714371, 40.305691, 51.153557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748283, 40.092834, 51.259117>,  <35.804806, 39.738075, 51.435047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748283, 40.092834, 51.259117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021872, 0.441379, 0.897054,
		0.989725, 0.136378, -0.042971,
		-0.141304, 0.886896, -0.439827,
		35.705891, 40.358902, 51.127171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080757, 40.177677, 51.946640>,  <35.804806, 39.738075, 51.435047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080757, 40.177677, 51.946640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882648, 40.422310, 51.699844>,  <35.763783, 40.569088, 51.551765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882648, 40.422310, 51.699844>,  <36.080757, 40.177677, 51.946640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882648, 40.422310, 51.699844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042511, 0.692301, 0.720355,
		0.867699, 0.382998, -0.316876,
		-0.495268, 0.611581, -0.616991,
		35.734070, 40.605785, 51.514748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369865, 40.832600, 52.124966>,  <36.080757, 40.177677, 51.946640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369865, 40.832600, 52.124966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014366, 40.909584, 51.958557>,  <35.801067, 40.955776, 51.858711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014366, 40.909584, 51.958557>,  <36.369865, 40.832600, 52.124966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014366, 40.909584, 51.958557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243162, 0.571407, 0.783815,
		0.388576, 0.797779, -0.461040,
		-0.888753, 0.192464, -0.416024,
		35.747742, 40.967323, 51.833752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210278, 41.542553, 52.205528>,  <36.369865, 40.832600, 52.124966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210278, 41.542553, 52.205528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857681, 41.366989, 52.135868>,  <35.646122, 41.261650, 52.094074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857681, 41.366989, 52.135868>,  <36.210278, 41.542553, 52.205528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857681, 41.366989, 52.135868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395025, 0.483397, 0.781206,
		-0.258694, 0.757422, -0.599491,
		-0.881495, -0.438907, -0.174148,
		35.593231, 41.235317, 52.083622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636532, 42.021385, 52.160446>,  <36.210278, 41.542553, 52.205528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636532, 42.021385, 52.160446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467491, 41.672348, 52.258415>,  <35.366066, 41.462925, 52.317196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467491, 41.672348, 52.258415>,  <35.636532, 42.021385, 52.160446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467491, 41.672348, 52.258415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403327, 0.423078, 0.811377,
		-0.811624, 0.244106, -0.530734,
		-0.422604, -0.872592, 0.244926,
		35.340710, 41.410572, 52.331894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970211, 42.244198, 52.168629>,  <35.636532, 42.021385, 52.160446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970211, 42.244198, 52.168629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070595, 41.942974, 52.411915>,  <35.130825, 41.762241, 52.557884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070595, 41.942974, 52.411915>,  <34.970211, 42.244198, 52.168629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070595, 41.942974, 52.411915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424175, 0.479231, 0.768383,
		-0.870112, -0.450820, -0.199162,
		0.250958, -0.753060, 0.608212,
		35.145882, 41.717056, 52.594379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689240, 42.906456, 52.456272>,  <34.970211, 42.244198, 52.168629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689240, 42.906456, 52.456272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418865, 43.169701, 52.323601>,  <34.256641, 43.327648, 52.243999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418865, 43.169701, 52.323601>,  <34.689240, 42.906456, 52.456272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418865, 43.169701, 52.323601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539388, 0.135112, -0.831147,
		-0.502171, -0.740701, -0.446302,
		-0.675932, 0.658108, -0.331677,
		34.216084, 43.367134, 52.224098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294994, 42.580170, 51.981457>,  <34.689240, 42.906456, 52.456272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294994, 42.580170, 51.981457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344173, 42.968212, 51.897762>,  <34.373680, 43.201038, 51.847546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344173, 42.968212, 51.897762>,  <34.294994, 42.580170, 51.981457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344173, 42.968212, 51.897762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171131, -0.228406, -0.958407,
		-0.977547, 0.082024, -0.194097,
		0.122946, 0.970105, -0.209241,
		34.381058, 43.259243, 51.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761059, 42.817348, 51.414764>,  <34.294994, 42.580170, 51.981457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761059, 42.817348, 51.414764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056767, 43.085613, 51.390461>,  <34.234192, 43.246574, 51.375877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056767, 43.085613, 51.390461>,  <33.761059, 42.817348, 51.414764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056767, 43.085613, 51.390461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019453, -0.111455, -0.993579,
		-0.673132, 0.733338, -0.095442,
		0.739266, 0.670667, -0.060758,
		34.278545, 43.286812, 51.372234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557697, 43.278522, 50.771648>,  <33.761059, 42.817348, 51.414764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557697, 43.278522, 50.771648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947136, 43.295254, 50.861416>,  <34.180798, 43.305290, 50.915276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947136, 43.295254, 50.861416>,  <33.557697, 43.278522, 50.771648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947136, 43.295254, 50.861416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227467, -0.260776, -0.938219,
		0.019283, 0.964493, -0.263404,
		0.973595, 0.041824, 0.224419,
		34.239216, 43.307800, 50.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687988, 43.497799, 50.171654>,  <33.557697, 43.278522, 50.771648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687988, 43.497799, 50.171654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039677, 43.400616, 50.335579>,  <34.250690, 43.342304, 50.433933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039677, 43.400616, 50.335579>,  <33.687988, 43.497799, 50.171654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039677, 43.400616, 50.335579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360532, -0.222990, -0.905700,
		0.311429, 0.944059, -0.108463,
		0.879220, -0.242957, 0.409809,
		34.303444, 43.327728, 50.458523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114052, 43.959518, 49.860161>,  <33.687988, 43.497799, 50.171654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114052, 43.959518, 49.860161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325394, 43.629951, 49.942142>,  <34.452198, 43.432213, 49.991333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325394, 43.629951, 49.942142>,  <34.114052, 43.959518, 49.860161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325394, 43.629951, 49.942142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236294, -0.089169, -0.967582,
		0.815482, 0.559653, 0.147574,
		0.528351, -0.823916, 0.204958,
		34.483898, 43.382778, 50.003632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744110, 44.074490, 49.598728>,  <34.114052, 43.959518, 49.860161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744110, 44.074490, 49.598728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748611, 43.676346, 49.636959>,  <34.751312, 43.437458, 49.659897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748611, 43.676346, 49.636959>,  <34.744110, 44.074490, 49.598728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748611, 43.676346, 49.636959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311123, -0.087356, -0.946346,
		0.950303, 0.040389, 0.308695,
		0.011255, -0.995358, 0.095580,
		34.751987, 43.377739, 49.665634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318165, 43.739384, 49.163811>,  <34.744110, 44.074490, 49.598728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318165, 43.739384, 49.163811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118244, 43.398804, 49.227341>,  <34.998291, 43.194454, 49.265457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118244, 43.398804, 49.227341>,  <35.318165, 43.739384, 49.163811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118244, 43.398804, 49.227341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162936, -0.272526, -0.948252,
		0.850675, -0.448061, 0.274942,
		-0.499804, -0.851452, 0.158826,
		34.968304, 43.143368, 49.274990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774052, 43.138142, 49.026104>,  <35.318165, 43.739384, 49.163811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774052, 43.138142, 49.026104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411835, 42.970390, 49.000462>,  <35.194504, 42.869740, 48.985077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411835, 42.970390, 49.000462>,  <35.774052, 43.138142, 49.026104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411835, 42.970390, 49.000462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295347, -0.514683, -0.804904,
		0.304566, -0.747811, 0.589931,
		-0.905544, -0.419381, -0.064109,
		35.140171, 42.844578, 48.981228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891830, 42.443859, 48.725861>,  <35.774052, 43.138142, 49.026104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891830, 42.443859, 48.725861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508854, 42.531437, 48.650627>,  <35.279068, 42.583984, 48.605488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508854, 42.531437, 48.650627>,  <35.891830, 42.443859, 48.725861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508854, 42.531437, 48.650627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091082, -0.389164, -0.916655,
		-0.273887, -0.894772, 0.352659,
		-0.957439, 0.218938, -0.188085,
		35.221622, 42.597118, 48.594200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460472, 41.790955, 48.577312>,  <35.891830, 42.443859, 48.725861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460472, 41.790955, 48.577312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308350, 42.121124, 48.410439>,  <35.217075, 42.319225, 48.310314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308350, 42.121124, 48.410439>,  <35.460472, 41.790955, 48.577312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308350, 42.121124, 48.410439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054799, -0.470398, -0.880751,
		-0.923235, -0.312095, 0.224128,
		-0.380308, 0.825422, -0.417186,
		35.194256, 42.368752, 48.285282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053467, 41.370228, 48.182739>,  <35.460472, 41.790955, 48.577312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053467, 41.370228, 48.182739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042645, 41.751881, 48.063480>,  <35.036152, 41.980873, 47.991924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042645, 41.751881, 48.063480>,  <35.053467, 41.370228, 48.182739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042645, 41.751881, 48.063480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216623, -0.296770, -0.930055,
		-0.975880, 0.039420, 0.214718,
		-0.027059, 0.954135, -0.298151,
		35.034527, 42.038120, 47.974033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496960, 41.349312, 47.639156>,  <35.053467, 41.370228, 48.182739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496960, 41.349312, 47.639156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708809, 41.681938, 47.572220>,  <34.835918, 41.881516, 47.532059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708809, 41.681938, 47.572220>,  <34.496960, 41.349312, 47.639156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708809, 41.681938, 47.572220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020262, -0.184821, -0.982563,
		-0.847993, 0.523776, -0.081035,
		0.529620, 0.831565, -0.167340,
		34.867695, 41.931408, 47.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167919, 41.751690, 47.049423>,  <34.496960, 41.349312, 47.639156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167919, 41.751690, 47.049423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547283, 41.878265, 47.057182>,  <34.774902, 41.954212, 47.061840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547283, 41.878265, 47.057182>,  <34.167919, 41.751690, 47.049423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547283, 41.878265, 47.057182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105327, -0.256778, -0.960714,
		-0.299028, 0.913197, -0.276862,
		0.948413, 0.316442, 0.019401,
		34.831806, 41.973198, 47.063004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605061, 42.209579, 46.697826>,  <34.167919, 41.751690, 47.049423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605061, 42.209579, 46.697826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274563, 41.994438, 46.630859>,  <33.076263, 41.865353, 46.590679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274563, 41.994438, 46.630859>,  <33.605061, 42.209579, 46.697826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274563, 41.994438, 46.630859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328414, 0.218480, 0.918918,
		-0.457667, 0.814236, -0.357157,
		-0.826248, -0.537854, -0.167415,
		33.026688, 41.833080, 46.580635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005203, 42.622246, 46.678696>,  <33.605061, 42.209579, 46.697826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005203, 42.622246, 46.678696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869205, 42.254265, 46.756767>,  <32.787605, 42.033478, 46.803612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869205, 42.254265, 46.756767>,  <33.005203, 42.622246, 46.678696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869205, 42.254265, 46.756767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334167, 0.312179, 0.889313,
		-0.879053, 0.237141, -0.413557,
		-0.339997, -0.919950, 0.195177,
		32.767208, 41.978279, 46.815319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379406, 42.670933, 47.004604>,  <33.005203, 42.622246, 46.678696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379406, 42.670933, 47.004604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473209, 42.296719, 47.110264>,  <32.529491, 42.072189, 47.173660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473209, 42.296719, 47.110264>,  <32.379406, 42.670933, 47.004604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473209, 42.296719, 47.110264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495614, 0.118698, 0.860393,
		-0.836284, -0.332690, -0.435829,
		0.234512, -0.935536, 0.264151,
		32.543564, 42.016056, 47.189510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743513, 42.252544, 47.181034>,  <32.379406, 42.670933, 47.004604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743513, 42.252544, 47.181034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045788, 42.052765, 47.350502>,  <32.227154, 41.932899, 47.452183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045788, 42.052765, 47.350502>,  <31.743513, 42.252544, 47.181034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045788, 42.052765, 47.350502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398950, 0.161984, 0.902552,
		-0.519403, -0.851067, -0.076845,
		0.755684, -0.499446, 0.423669,
		32.272491, 41.902931, 47.477604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492899, 41.754745, 47.604858>,  <31.743513, 42.252544, 47.181034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492899, 41.754745, 47.604858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862309, 41.800247, 47.751373>,  <32.083954, 41.827549, 47.839283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862309, 41.800247, 47.751373>,  <31.492899, 41.754745, 47.604858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862309, 41.800247, 47.751373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379788, 0.137925, 0.914734,
		0.053536, -0.983888, 0.170580,
		0.923523, 0.113756, 0.366285,
		32.139366, 41.834373, 47.861259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457701, 41.468651, 48.322182>,  <31.492899, 41.754745, 47.604858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457701, 41.468651, 48.322182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798872, 41.677338, 48.314938>,  <32.003574, 41.802551, 48.310593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798872, 41.677338, 48.314938>,  <31.457701, 41.468651, 48.322182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798872, 41.677338, 48.314938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134725, 0.253508, 0.957905,
		0.504347, -0.814583, 0.286512,
		0.852926, 0.521717, -0.018112,
		32.054749, 41.833851, 48.309505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773952, 41.341759, 48.881367>,  <31.457701, 41.468651, 48.322182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773952, 41.341759, 48.881367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954166, 41.685135, 48.783310>,  <32.062294, 41.891163, 48.724476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954166, 41.685135, 48.783310>,  <31.773952, 41.341759, 48.881367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954166, 41.685135, 48.783310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050670, 0.298730, 0.952992,
		0.891319, -0.416936, 0.178086,
		0.450536, 0.858443, -0.245138,
		32.089329, 41.942669, 48.709770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869844, 40.836384, 49.419205>,  <31.773952, 41.341759, 48.881367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869844, 40.836384, 49.419205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508059, 40.666580, 49.402565>,  <31.290987, 40.564697, 49.392582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508059, 40.666580, 49.402565>,  <31.869844, 40.836384, 49.419205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508059, 40.666580, 49.402565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289240, -0.538709, -0.791286,
		0.313499, -0.727724, 0.610030,
		-0.904466, -0.424512, -0.041602,
		31.236719, 40.539227, 49.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919157, 40.066906, 49.400993>,  <31.869844, 40.836384, 49.419205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919157, 40.066906, 49.400993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561693, 40.165123, 49.250748>,  <31.347216, 40.224052, 49.160603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561693, 40.165123, 49.250748>,  <31.919157, 40.066906, 49.400993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561693, 40.165123, 49.250748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186862, -0.557380, -0.808956,
		-0.407992, -0.793118, 0.452224,
		-0.893658, 0.245544, -0.375611,
		31.293596, 40.238785, 49.138065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554071, 39.375107, 49.155361>,  <31.919157, 40.066906, 49.400993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554071, 39.375107, 49.155361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384069, 39.682278, 48.963669>,  <31.282068, 39.866581, 48.848656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384069, 39.682278, 48.963669>,  <31.554071, 39.375107, 49.155361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384069, 39.682278, 48.963669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087261, -0.492198, -0.866099,
		-0.900975, -0.409915, 0.142176,
		-0.425006, 0.767927, -0.479227,
		31.256567, 39.912655, 48.819901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154446, 39.029701, 48.690483>,  <31.554071, 39.375107, 49.155361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154446, 39.029701, 48.690483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162182, 39.397926, 48.534439>,  <31.166822, 39.618862, 48.440811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162182, 39.397926, 48.534439>,  <31.154446, 39.029701, 48.690483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162182, 39.397926, 48.534439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013893, -0.389901, -0.920752,
		-0.999716, 0.023227, 0.005249,
		0.019339, 0.920564, -0.390113,
		31.167984, 39.674095, 48.417404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686777, 38.995827, 48.162964>,  <31.154446, 39.029701, 48.690483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686777, 38.995827, 48.162964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935329, 39.291840, 48.060017>,  <31.084461, 39.469448, 47.998249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935329, 39.291840, 48.060017>,  <30.686777, 38.995827, 48.162964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935329, 39.291840, 48.060017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046528, -0.362758, -0.930721,
		-0.782127, 0.566356, -0.259842,
		0.621380, 0.740032, -0.257371,
		31.121744, 39.513847, 47.982803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437893, 39.147308, 47.506432>,  <30.686777, 38.995827, 48.162964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437893, 39.147308, 47.506432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789932, 39.333340, 47.544655>,  <31.001156, 39.444958, 47.567589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789932, 39.333340, 47.544655>,  <30.437893, 39.147308, 47.506432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789932, 39.333340, 47.544655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277375, -0.340285, -0.898482,
		-0.385349, 0.817256, -0.428485,
		0.880096, 0.465080, 0.095558,
		31.053961, 39.472862, 47.573322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564455, 39.618042, 46.919731>,  <30.437893, 39.147308, 47.506432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564455, 39.618042, 46.919731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.937424, 39.542328, 47.042862>,  <31.161205, 39.496899, 47.116741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.937424, 39.542328, 47.042862>,  <30.564455, 39.618042, 46.919731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937424, 39.542328, 47.042862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234383, -0.331575, -0.913851,
		0.275049, 0.924245, -0.264802,
		0.932423, -0.189289, 0.307826,
		31.217150, 39.485542, 47.135208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.181225, 39.570263, 51.575935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.124592, 39.554394, 51.180283>,  <32.090611, 39.544872, 50.942890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.124592, 39.554394, 51.180283>,  <32.181225, 39.570263, 51.575935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124592, 39.554394, 51.180283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949876, -0.275894, 0.147029,
		-0.278728, 0.960369, 0.001380,
		-0.141583, -0.039671, -0.989131,
		32.082115, 39.542492, 50.883545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782234, 39.576447, 51.981560>,  <32.181225, 39.570263, 51.575935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782234, 39.576447, 51.981560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.162853, 39.467258, 52.038197>,  <33.391224, 39.401745, 52.072178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.162853, 39.467258, 52.038197>,  <32.782234, 39.576447, 51.981560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162853, 39.467258, 52.038197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023451, -0.394700, -0.918511,
		0.306615, 0.877324, -0.369173,
		0.951545, -0.272972, 0.141595,
		33.448318, 39.385368, 52.080673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097946, 39.626244, 51.304768>,  <32.782234, 39.576447, 51.981560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097946, 39.626244, 51.304768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.338795, 39.406620, 51.536625>,  <33.483303, 39.274845, 51.675739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.338795, 39.406620, 51.536625>,  <33.097946, 39.626244, 51.304768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338795, 39.406620, 51.536625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232003, -0.574351, -0.785045,
		0.763953, 0.607171, -0.218446,
		0.602122, -0.549058, 0.579642,
		33.519432, 39.241901, 51.710518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656391, 39.470860, 50.885361>,  <33.097946, 39.626244, 51.304768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656391, 39.470860, 50.885361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711437, 39.204948, 51.179062>,  <33.744465, 39.045403, 51.355282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711437, 39.204948, 51.179062>,  <33.656391, 39.470860, 50.885361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711437, 39.204948, 51.179062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303693, -0.677283, -0.670119,
		0.942780, 0.315203, 0.108688,
		0.137611, -0.664782, 0.734253,
		33.752720, 39.005512, 51.399338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232811, 39.285004, 50.676571>,  <33.656391, 39.470860, 50.885361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232811, 39.285004, 50.676571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.077038, 39.014908, 50.927135>,  <33.983574, 38.852852, 51.077477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.077038, 39.014908, 50.927135>,  <34.232811, 39.285004, 50.676571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077038, 39.014908, 50.927135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138411, -0.715285, -0.684990,
		0.910596, -0.180054, 0.372015,
		-0.389432, -0.675240, 0.626414,
		33.960209, 38.812336, 51.115059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728439, 38.729164, 50.675865>,  <34.232811, 39.285004, 50.676571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728439, 38.729164, 50.675865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387222, 38.569355, 50.810154>,  <34.182491, 38.473469, 50.890728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387222, 38.569355, 50.810154>,  <34.728439, 38.729164, 50.675865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387222, 38.569355, 50.810154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094413, -0.750869, -0.653668,
		0.513237, -0.525907, 0.678240,
		-0.853038, -0.399521, 0.335722,
		34.131310, 38.449497, 50.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796242, 38.082561, 50.528980>,  <34.728439, 38.729164, 50.675865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796242, 38.082561, 50.528980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401691, 38.072735, 50.594051>,  <34.164963, 38.066841, 50.633095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401691, 38.072735, 50.594051>,  <34.796242, 38.082561, 50.528980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401691, 38.072735, 50.594051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106325, -0.659361, -0.744270,
		0.125544, -0.751425, 0.647765,
		-0.986374, -0.024565, 0.162674,
		34.105778, 38.065365, 50.642853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675003, 37.378834, 50.692955>,  <34.796242, 38.082561, 50.528980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675003, 37.378834, 50.692955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337551, 37.542244, 50.553593>,  <34.135078, 37.640289, 50.469975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337551, 37.542244, 50.553593>,  <34.675003, 37.378834, 50.692955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337551, 37.542244, 50.553593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077715, -0.734975, -0.673626,
		-0.531264, -0.541218, 0.651799,
		-0.843635, 0.408528, -0.348405,
		34.084461, 37.664803, 50.449070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202850, 36.839478, 50.674965>,  <34.675003, 37.378834, 50.692955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202850, 36.839478, 50.674965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.079414, 37.119225, 50.417076>,  <34.005352, 37.287071, 50.262344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.079414, 37.119225, 50.417076>,  <34.202850, 36.839478, 50.674965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079414, 37.119225, 50.417076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015908, -0.673908, -0.738644,
		-0.951062, -0.238194, 0.196836,
		-0.308590, 0.699365, -0.644718,
		33.986835, 37.329033, 50.223660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657089, 36.480976, 50.246380>,  <34.202850, 36.839478, 50.674965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657089, 36.480976, 50.246380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731247, 36.814083, 50.037716>,  <33.775742, 37.013947, 49.912518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731247, 36.814083, 50.037716>,  <33.657089, 36.480976, 50.246380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731247, 36.814083, 50.037716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185220, -0.491730, -0.850820,
		-0.965051, 0.254357, 0.063082,
		0.185392, 0.832769, -0.521656,
		33.786865, 37.063915, 49.881218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133480, 36.593224, 49.831558>,  <33.657089, 36.480976, 50.246380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133480, 36.593224, 49.831558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429695, 36.791573, 49.650135>,  <33.607426, 36.910580, 49.541283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429695, 36.791573, 49.650135>,  <33.133480, 36.593224, 49.831558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429695, 36.791573, 49.650135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137751, -0.548580, -0.824672,
		-0.657741, 0.673182, -0.337940,
		0.740542, 0.495869, -0.453555,
		33.651859, 36.940334, 49.514069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908401, 36.900345, 49.209332>,  <33.133480, 36.593224, 49.831558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908401, 36.900345, 49.209332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305283, 36.855457, 49.187614>,  <33.543411, 36.828526, 49.174583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305283, 36.855457, 49.187614>,  <32.908401, 36.900345, 49.209332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305283, 36.855457, 49.187614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093264, -0.379198, -0.920603,
		0.082718, 0.918486, -0.386706,
		0.992199, -0.112216, -0.054296,
		33.602943, 36.821793, 49.171326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408897, 37.278606, 48.795750>,  <32.908401, 36.900345, 49.209332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408897, 37.278606, 48.795750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.033409, 37.156067, 48.732571>,  <31.808115, 37.082542, 48.694664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.033409, 37.156067, 48.732571>,  <32.408897, 37.278606, 48.795750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033409, 37.156067, 48.732571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293134, 0.468542, 0.833392,
		-0.181305, 0.828624, -0.529633,
		-0.938723, -0.306351, -0.157949,
		31.751793, 37.064163, 48.685184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963446, 37.902935, 48.875351>,  <32.408897, 37.278606, 48.795750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963446, 37.902935, 48.875351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.731367, 37.578785, 48.908028>,  <31.592121, 37.384296, 48.927635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.731367, 37.578785, 48.908028>,  <31.963446, 37.902935, 48.875351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731367, 37.578785, 48.908028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382693, 0.359778, 0.850944,
		-0.718972, 0.462450, -0.518864,
		-0.580194, -0.810371, 0.081693,
		31.557308, 37.335674, 48.932537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334005, 38.145271, 49.142990>,  <31.963446, 37.902935, 48.875351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334005, 38.145271, 49.142990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.314032, 37.753487, 49.221134>,  <31.302048, 37.518417, 49.268021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.314032, 37.753487, 49.221134>,  <31.334005, 38.145271, 49.142990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314032, 37.753487, 49.221134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365036, 0.199969, 0.909264,
		-0.929653, -0.025911, -0.367523,
		-0.049933, -0.979459, 0.195361,
		31.299051, 37.459648, 49.279743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683884, 37.992611, 49.348511>,  <31.334005, 38.145271, 49.142990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683884, 37.992611, 49.348511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.914202, 37.713943, 49.519680>,  <31.052393, 37.546745, 49.622383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.914202, 37.713943, 49.519680>,  <30.683884, 37.992611, 49.348511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914202, 37.713943, 49.519680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479975, 0.135680, 0.866727,
		-0.661878, -0.704450, -0.256258,
		0.575797, -0.696664, 0.427922,
		31.086941, 37.504944, 49.648056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183752, 37.633221, 49.783298>,  <30.683884, 37.992611, 49.348511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183752, 37.633221, 49.783298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.550793, 37.529846, 49.904110>,  <30.771017, 37.467819, 49.976597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.550793, 37.529846, 49.904110>,  <30.183752, 37.633221, 49.783298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550793, 37.529846, 49.904110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252139, 0.208977, 0.944857,
		-0.307306, -0.943153, 0.126595,
		0.917599, -0.258440, 0.302026,
		30.826073, 37.452312, 49.994717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125807, 37.225201, 50.348804>,  <30.183752, 37.633221, 49.783298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125807, 37.225201, 50.348804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495466, 37.374035, 50.383446>,  <30.717262, 37.463333, 50.404232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495466, 37.374035, 50.383446>,  <30.125807, 37.225201, 50.348804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495466, 37.374035, 50.383446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160382, 0.172128, 0.971931,
		0.346733, -0.912100, 0.218747,
		0.924150, 0.372084, 0.086602,
		30.772711, 37.485661, 50.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270844, 37.002979, 51.066746>,  <30.125807, 37.225201, 50.348804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270844, 37.002979, 51.066746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.529257, 37.290810, 50.964886>,  <30.684305, 37.463509, 50.903770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.529257, 37.290810, 50.964886>,  <30.270844, 37.002979, 51.066746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529257, 37.290810, 50.964886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008910, 0.326485, 0.945160,
		0.763259, -0.612873, 0.204508,
		0.646032, 0.719579, -0.254653,
		30.723066, 37.506683, 50.888489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648729, 37.093109, 51.665157>,  <30.270844, 37.002979, 51.066746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648729, 37.093109, 51.665157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.696253, 37.426617, 51.449482>,  <30.724766, 37.626720, 51.320076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.696253, 37.426617, 51.449482>,  <30.648729, 37.093109, 51.665157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696253, 37.426617, 51.449482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008362, 0.543853, 0.839139,
		0.992882, -0.095187, 0.071586,
		0.118808, 0.833765, -0.539186,
		30.731895, 37.676746, 51.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159458, 37.464569, 52.012768>,  <30.648729, 37.093109, 51.665157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159458, 37.464569, 52.012768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.946896, 37.737293, 51.811676>,  <30.819359, 37.900928, 51.691021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.946896, 37.737293, 51.811676>,  <31.159458, 37.464569, 52.012768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946896, 37.737293, 51.811676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032412, 0.576664, 0.816338,
		0.846498, 0.450100, -0.284344,
		-0.531405, 0.681812, -0.502734,
		30.787474, 37.941837, 51.660854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314508, 38.084892, 52.298065>,  <31.159458, 37.464569, 52.012768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314508, 38.084892, 52.298065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.979761, 38.197109, 52.110046>,  <30.778912, 38.264439, 51.997234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.979761, 38.197109, 52.110046>,  <31.314508, 38.084892, 52.298065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979761, 38.197109, 52.110046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256140, 0.558199, 0.789180,
		0.483779, 0.780839, -0.395282,
		-0.836869, 0.280541, -0.470049,
		30.728701, 38.281273, 51.969032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270210, 38.871159, 52.416603>,  <31.314508, 38.084892, 52.298065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270210, 38.871159, 52.416603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897528, 38.757000, 52.326736>,  <30.673918, 38.688503, 52.272816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.897528, 38.757000, 52.326736>,  <31.270210, 38.871159, 52.416603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897528, 38.757000, 52.326736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356558, 0.600784, 0.715489,
		-0.069227, 0.746730, -0.661515,
		-0.931705, -0.285400, -0.224662,
		30.618015, 38.671379, 52.259338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923031, 39.504875, 52.572872>,  <31.270210, 38.871159, 52.416603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923031, 39.504875, 52.572872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.629274, 39.234756, 52.545628>,  <30.453020, 39.072685, 52.529282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.629274, 39.234756, 52.545628>,  <30.923031, 39.504875, 52.572872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629274, 39.234756, 52.545628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474061, 0.438532, 0.763516,
		-0.485734, 0.593007, -0.642187,
		-0.734390, -0.675302, -0.068111,
		30.408957, 39.032166, 52.525196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315813, 39.914009, 52.658077>,  <30.923031, 39.504875, 52.572872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315813, 39.914009, 52.658077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.202127, 39.535332, 52.718739>,  <30.133917, 39.308125, 52.755135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.202127, 39.535332, 52.718739>,  <30.315813, 39.914009, 52.658077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202127, 39.535332, 52.718739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674296, 0.309816, 0.670328,
		-0.681578, 0.088259, -0.726404,
		-0.284213, -0.946692, 0.151651,
		30.116863, 39.251324, 52.764233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473745, 40.202984, 52.016338>,  <30.315813, 39.914009, 52.658077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473745, 40.202984, 52.016338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.277479, 40.483482, 52.223217>,  <30.159719, 40.651783, 52.347343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.277479, 40.483482, 52.223217>,  <30.473745, 40.202984, 52.016338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277479, 40.483482, 52.223217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863039, -0.309334, -0.399346,
		-0.120054, -0.642308, 0.756985,
		-0.490664, 0.701251, 0.517200,
		30.130280, 40.693859, 52.378376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757677, 40.435867, 51.989727>,  <30.473745, 40.202984, 52.016338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757677, 40.435867, 51.989727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.788876, 40.818268, 51.876602>,  <29.807594, 41.047707, 51.808727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.788876, 40.818268, 51.876602>,  <29.757677, 40.435867, 51.989727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788876, 40.818268, 51.876602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103458, -0.289910, -0.951445,
		-0.991571, 0.044949, -0.121517,
		0.077995, 0.955997, -0.282816,
		29.812275, 41.105068, 51.791756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388380, 40.441498, 51.377140>,  <29.757677, 40.435867, 51.989727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388380, 40.441498, 51.377140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.620750, 40.765293, 51.343067>,  <29.760174, 40.959568, 51.322624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.620750, 40.765293, 51.343067>,  <29.388380, 40.441498, 51.377140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620750, 40.765293, 51.343067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266964, -0.288353, -0.919556,
		-0.768930, 0.511454, -0.383616,
		0.580927, 0.809486, -0.085184,
		29.795029, 41.008141, 51.317513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237103, 40.718880, 50.740253>,  <29.388380, 40.441498, 51.377140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237103, 40.718880, 50.740253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.598522, 40.856174, 50.842850>,  <29.815374, 40.938549, 50.904408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.598522, 40.856174, 50.842850>,  <29.237103, 40.718880, 50.740253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598522, 40.856174, 50.842850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316336, -0.130600, -0.939614,
		-0.289009, 0.930126, -0.226581,
		0.903552, 0.343233, 0.256488,
		29.869587, 40.959145, 50.919796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421522, 41.166794, 50.201061>,  <29.237103, 40.718880, 50.740253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421522, 41.166794, 50.201061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752853, 41.040630, 50.386269>,  <29.951653, 40.964931, 50.497395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752853, 41.040630, 50.386269>,  <29.421522, 41.166794, 50.201061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752853, 41.040630, 50.386269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467166, -0.067322, -0.881603,
		0.309234, 0.946566, 0.091582,
		0.828330, -0.315406, 0.463022,
		30.001352, 40.946007, 50.525177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911877, 41.344238, 49.733578>,  <29.421522, 41.166794, 50.201061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911877, 41.344238, 49.733578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.121290, 41.105797, 49.977077>,  <30.246939, 40.962730, 50.123177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.121290, 41.105797, 49.977077>,  <29.911877, 41.344238, 49.733578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121290, 41.105797, 49.977077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622123, -0.220713, -0.751165,
		0.582130, 0.771976, 0.255299,
		0.523534, -0.596103, 0.608748,
		30.278351, 40.926968, 50.159702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547310, 41.529873, 49.547085>,  <29.911877, 41.344238, 49.733578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547310, 41.529873, 49.547085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.584501, 41.178669, 49.734898>,  <30.606815, 40.967949, 49.847584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.584501, 41.178669, 49.734898>,  <30.547310, 41.529873, 49.547085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584501, 41.178669, 49.734898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677128, -0.289973, -0.676323,
		0.729968, 0.380815, 0.567563,
		0.092976, -0.878007, 0.469531,
		30.612394, 40.915268, 49.875755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274664, 41.439068, 49.648792>,  <30.547310, 41.529873, 49.547085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274664, 41.439068, 49.648792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055609, 41.104450, 49.641933>,  <30.924175, 40.903679, 49.637817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055609, 41.104450, 49.641933>,  <31.274664, 41.439068, 49.648792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055609, 41.104450, 49.641933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486261, -0.301517, -0.820145,
		0.680915, -0.457479, 0.571899,
		-0.547636, -0.836541, -0.017147,
		30.891317, 40.853489, 49.636787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025249, 41.529068, 49.531544>,  <31.274664, 41.439068, 49.648792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025249, 41.529068, 49.531544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068836, 41.869312, 49.325794>,  <32.094990, 42.073460, 49.202343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068836, 41.869312, 49.325794>,  <32.025249, 41.529068, 49.531544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068836, 41.869312, 49.325794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077326, 0.508636, 0.857502,
		0.991033, -0.133215, -0.010350,
		0.108968, 0.850614, -0.514376,
		32.101528, 42.124496, 49.171482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619980, 41.755352, 49.869232>,  <32.025249, 41.529068, 49.531544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619980, 41.755352, 49.869232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423210, 42.033524, 49.659706>,  <32.305149, 42.200428, 49.533989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423210, 42.033524, 49.659706>,  <32.619980, 41.755352, 49.869232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423210, 42.033524, 49.659706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021564, 0.591729, 0.805848,
		0.870369, 0.407715, -0.276092,
		-0.491928, 0.695431, -0.523815,
		32.275631, 42.242153, 49.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000145, 42.382389, 49.780201>,  <32.619980, 41.755352, 49.869232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000145, 42.382389, 49.780201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610291, 42.469704, 49.760429>,  <32.376377, 42.522091, 49.748566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610291, 42.469704, 49.760429>,  <33.000145, 42.382389, 49.780201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610291, 42.469704, 49.760429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094021, 0.599749, 0.794645,
		0.203109, 0.769839, -0.605058,
		-0.974632, 0.218288, -0.049434,
		32.317902, 42.535191, 49.745598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968563, 43.118076, 49.810543>,  <33.000145, 42.382389, 49.780201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968563, 43.118076, 49.810543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.607910, 43.002636, 49.939396>,  <32.391518, 42.933372, 50.016708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.607910, 43.002636, 49.939396>,  <32.968563, 43.118076, 49.810543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607910, 43.002636, 49.939396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089580, 0.604041, 0.791902,
		-0.423120, 0.742863, -0.518772,
		-0.901635, -0.288598, 0.322128,
		32.337421, 42.916058, 50.036034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720680, 43.711056, 50.094296>,  <32.968563, 43.118076, 49.810543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720680, 43.711056, 50.094296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.468109, 43.430248, 50.226036>,  <32.316566, 43.261765, 50.305080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.468109, 43.430248, 50.226036>,  <32.720680, 43.711056, 50.094296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468109, 43.430248, 50.226036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194604, 0.554600, 0.809042,
		-0.750621, 0.446756, -0.486803,
		-0.631425, -0.702018, 0.329353,
		32.278683, 43.219643, 50.324841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126099, 44.112930, 50.481419>,  <32.720680, 43.711056, 50.094296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126099, 44.112930, 50.481419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110970, 43.740883, 50.627537>,  <32.101894, 43.517654, 50.715210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110970, 43.740883, 50.627537>,  <32.126099, 44.112930, 50.481419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110970, 43.740883, 50.627537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386595, 0.350713, 0.852962,
		-0.921474, -0.108962, -0.372845,
		-0.037821, -0.930122, 0.365297,
		32.099625, 43.461845, 50.737125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468973, 44.116161, 50.714298>,  <32.126099, 44.112930, 50.481419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468973, 44.116161, 50.714298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.711773, 43.851406, 50.890236>,  <31.857452, 43.692554, 50.995796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.711773, 43.851406, 50.890236>,  <31.468973, 44.116161, 50.714298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711773, 43.851406, 50.890236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282922, 0.337221, 0.897907,
		-0.742633, -0.669471, 0.017432,
		0.607002, -0.661884, 0.439840,
		31.893873, 43.652840, 51.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093664, 43.998810, 51.262882>,  <31.468973, 44.116161, 50.714298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093664, 43.998810, 51.262882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.465204, 43.869770, 51.335728>,  <31.688129, 43.792347, 51.379436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.465204, 43.869770, 51.335728>,  <31.093664, 43.998810, 51.262882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465204, 43.869770, 51.335728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069219, 0.331802, 0.940806,
		-0.363926, -0.886475, 0.285865,
		0.928852, -0.322596, 0.182113,
		31.743860, 43.772991, 51.390362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044357, 43.858444, 51.936291>,  <31.093664, 43.998810, 51.262882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044357, 43.858444, 51.936291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.442692, 43.867645, 51.900997>,  <31.681692, 43.873165, 51.879822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.442692, 43.867645, 51.900997>,  <31.044357, 43.858444, 51.936291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442692, 43.867645, 51.900997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074170, 0.358488, 0.930583,
		0.053033, -0.933251, 0.355289,
		0.995834, 0.022999, -0.088231,
		31.741442, 43.874546, 51.874527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.115669, 38.412926, 37.049515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443275, 38.447811, 37.276356>,  <36.639839, 38.468742, 37.412460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443275, 38.447811, 37.276356>,  <36.115669, 38.412926, 37.049515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443275, 38.447811, 37.276356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573100, 0.076771, 0.815882,
		0.027614, -0.993228, 0.112855,
		0.819020, 0.087207, 0.567098,
		36.688980, 38.473976, 37.446484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096275, 37.856285, 37.559101>,  <36.115669, 38.412926, 37.049515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096275, 37.856285, 37.559101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307320, 38.169487, 37.690880>,  <36.433949, 38.357407, 37.769947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307320, 38.169487, 37.690880>,  <36.096275, 37.856285, 37.559101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307320, 38.169487, 37.690880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551564, 0.020817, 0.833873,
		0.646064, -0.621673, 0.442859,
		0.527615, 0.783000, 0.329443,
		36.465603, 38.404388, 37.789711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088783, 37.850201, 38.350464>,  <36.096275, 37.856285, 37.559101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088783, 37.850201, 38.350464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200150, 38.224266, 38.262863>,  <36.266968, 38.448704, 38.210304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200150, 38.224266, 38.262863>,  <36.088783, 37.850201, 38.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200150, 38.224266, 38.262863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588789, 0.346326, 0.730333,
		0.758823, -0.074392, 0.647034,
		0.278416, 0.935160, -0.218999,
		36.283676, 38.504814, 38.197163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412308, 38.171604, 38.915165>,  <36.088783, 37.850201, 38.350464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412308, 38.171604, 38.915165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282246, 38.487709, 38.707413>,  <36.204208, 38.677372, 38.582764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282246, 38.487709, 38.707413>,  <36.412308, 38.171604, 38.915165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282246, 38.487709, 38.707413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443304, 0.357759, 0.821882,
		0.835317, 0.497482, 0.234000,
		-0.325156, 0.790266, -0.519378,
		36.184700, 38.724789, 38.551598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513756, 38.688076, 39.327465>,  <36.412308, 38.171604, 38.915165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513756, 38.688076, 39.327465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249161, 38.845989, 39.072411>,  <36.090405, 38.940739, 38.919376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249161, 38.845989, 39.072411>,  <36.513756, 38.688076, 39.327465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249161, 38.845989, 39.072411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514354, 0.379931, 0.768825,
		0.545777, 0.836539, -0.048263,
		-0.661489, 0.394783, -0.637635,
		36.050713, 38.964424, 38.881119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341175, 39.389336, 39.564232>,  <36.513756, 38.688076, 39.327465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341175, 39.389336, 39.564232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028969, 39.278637, 39.340015>,  <35.841644, 39.212215, 39.205486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028969, 39.278637, 39.340015>,  <36.341175, 39.389336, 39.564232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028969, 39.278637, 39.340015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624687, 0.311095, 0.716231,
		-0.023834, 0.909192, -0.415696,
		-0.780512, -0.276750, -0.560545,
		35.794815, 39.195614, 39.171852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895859, 39.883060, 39.703041>,  <36.341175, 39.389336, 39.564232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895859, 39.883060, 39.703041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687733, 39.567535, 39.572170>,  <35.562855, 39.378220, 39.493649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687733, 39.567535, 39.572170>,  <35.895859, 39.883060, 39.703041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687733, 39.567535, 39.572170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744500, 0.231329, 0.626264,
		-0.418316, 0.569443, -0.707634,
		-0.520318, -0.788810, -0.327182,
		35.531635, 39.330891, 39.474014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202553, 40.166466, 39.621769>,  <35.895859, 39.883060, 39.703041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202553, 40.166466, 39.621769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120911, 39.774929, 39.615925>,  <35.071926, 39.540009, 39.612419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120911, 39.774929, 39.615925>,  <35.202553, 40.166466, 39.621769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120911, 39.774929, 39.615925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735369, 0.143454, 0.662309,
		-0.646199, 0.145923, -0.749088,
		-0.204106, -0.978840, -0.014608,
		35.059677, 39.481277, 39.611542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415554, 40.155029, 39.614059>,  <35.202553, 40.166466, 39.621769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415554, 40.155029, 39.614059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542473, 39.798832, 39.744507>,  <34.618622, 39.585114, 39.822777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542473, 39.798832, 39.744507>,  <34.415554, 40.155029, 39.614059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542473, 39.798832, 39.744507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705549, 0.008113, 0.708615,
		-0.633659, -0.454932, -0.625710,
		0.317295, -0.890489, 0.326117,
		34.637661, 39.531685, 39.842342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785133, 39.786430, 39.728413>,  <34.415554, 40.155029, 39.614059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785133, 39.786430, 39.728413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065617, 39.619087, 39.959335>,  <34.233906, 39.518681, 40.097889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065617, 39.619087, 39.959335>,  <33.785133, 39.786430, 39.728413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065617, 39.619087, 39.959335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625627, 0.027261, 0.779646,
		-0.341912, -0.907871, -0.242624,
		0.701204, -0.418362, 0.577309,
		34.275978, 39.493580, 40.132526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447197, 39.326408, 40.173817>,  <33.785133, 39.786430, 39.728413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447197, 39.326408, 40.173817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787590, 39.372662, 40.378738>,  <33.991825, 39.400414, 40.501690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787590, 39.372662, 40.378738>,  <33.447197, 39.326408, 40.173817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787590, 39.372662, 40.378738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525030, 0.163392, 0.835252,
		0.012876, -0.979761, 0.199754,
		0.850986, 0.115631, 0.512300,
		34.042885, 39.407352, 40.532429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408794, 38.904144, 40.923889>,  <33.447197, 39.326408, 40.173817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408794, 38.904144, 40.923889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660347, 39.215019, 40.932735>,  <33.811279, 39.401546, 40.938042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660347, 39.215019, 40.932735>,  <33.408794, 38.904144, 40.923889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660347, 39.215019, 40.932735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342037, 0.250997, 0.905545,
		0.698229, -0.577042, 0.423674,
		0.628878, 0.777189, 0.022117,
		33.849010, 39.448177, 40.939369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987980, 38.410339, 41.358799>,  <33.408794, 38.904144, 40.923889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987980, 38.410339, 41.358799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589195, 38.407238, 41.327801>,  <32.349926, 38.405376, 41.309204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589195, 38.407238, 41.327801>,  <32.987980, 38.410339, 41.358799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589195, 38.407238, 41.327801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075415, -0.344349, -0.935808,
		-0.019431, -0.938809, 0.343888,
		-0.996963, -0.007751, -0.077491,
		32.290108, 38.404915, 41.304554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742130, 37.668350, 41.131149>,  <32.987980, 38.410339, 41.358799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742130, 37.668350, 41.131149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447090, 37.930305, 41.065342>,  <32.270065, 38.087479, 41.025860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447090, 37.930305, 41.065342>,  <32.742130, 37.668350, 41.131149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447090, 37.930305, 41.065342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041015, -0.286644, -0.957159,
		-0.673990, -0.699253, 0.238289,
		-0.737601, 0.654889, -0.164516,
		32.225811, 38.126774, 41.015987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294712, 37.297504, 40.663925>,  <32.742130, 37.668350, 41.131149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294712, 37.297504, 40.663925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155918, 37.670509, 40.623882>,  <32.072639, 37.894314, 40.599857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155918, 37.670509, 40.623882>,  <32.294712, 37.297504, 40.663925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155918, 37.670509, 40.623882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416856, -0.248962, -0.874214,
		-0.840137, -0.261613, 0.475110,
		-0.346989, 0.932511, -0.100107,
		32.051823, 37.950264, 40.593849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650925, 37.207127, 40.392689>,  <32.294712, 37.297504, 40.663925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650925, 37.207127, 40.392689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734007, 37.589691, 40.310574>,  <31.783855, 37.819229, 40.261303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734007, 37.589691, 40.310574>,  <31.650925, 37.207127, 40.392689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734007, 37.589691, 40.310574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375461, -0.115840, -0.919571,
		-0.903265, 0.268077, 0.335033,
		0.207705, 0.956408, -0.205287,
		31.796318, 37.876614, 40.248989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143511, 37.474953, 40.050320>,  <31.650925, 37.207127, 40.392689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143511, 37.474953, 40.050320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464125, 37.699196, 39.967125>,  <31.656494, 37.833744, 39.917210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464125, 37.699196, 39.967125>,  <31.143511, 37.474953, 40.050320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464125, 37.699196, 39.967125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151869, -0.145556, -0.977624,
		-0.578339, 0.815187, -0.031530,
		0.801536, 0.560610, -0.207982,
		31.704586, 37.867378, 39.904732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867796, 37.916515, 39.447525>,  <31.143511, 37.474953, 40.050320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867796, 37.916515, 39.447525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267185, 37.933941, 39.433941>,  <31.506819, 37.944397, 39.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267185, 37.933941, 39.433941>,  <30.867796, 37.916515, 39.447525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267185, 37.933941, 39.433941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031994, -0.045022, -0.998474,
		-0.045022, 0.998036, -0.043560,
		0.998474, 0.043560, -0.033958,
		31.566727, 37.947010, 39.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898449, 38.365253, 38.804745>,  <30.867796, 37.916515, 39.447525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898449, 38.365253, 38.804745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239922, 38.174019, 38.887363>,  <31.444805, 38.059277, 38.936935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239922, 38.174019, 38.887363>,  <30.898449, 38.365253, 38.804745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239922, 38.174019, 38.887363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048900, -0.321267, -0.945725,
		0.518496, 0.817448, -0.250881,
		0.853681, -0.478087, 0.206549,
		31.496025, 38.030594, 38.949329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114302, 38.517681, 38.210888>,  <30.898449, 38.365253, 38.804745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114302, 38.517681, 38.210888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339911, 38.217373, 38.348423>,  <31.475275, 38.037189, 38.430946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339911, 38.217373, 38.348423>,  <31.114302, 38.517681, 38.210888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339911, 38.217373, 38.348423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091255, -0.470513, -0.877662,
		0.820703, 0.463641, -0.333890,
		0.564020, -0.750769, 0.343842,
		31.509117, 37.992142, 38.451576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305065, 38.318451, 37.586941>,  <31.114302, 38.517681, 38.210888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305065, 38.318451, 37.586941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397802, 38.015423, 37.831017>,  <31.453445, 37.833607, 37.977463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397802, 38.015423, 37.831017>,  <31.305065, 38.318451, 37.586941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397802, 38.015423, 37.831017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050417, -0.635797, -0.770208,
		0.971446, 0.147803, -0.185600,
		0.231843, -0.757573, 0.610190,
		31.467356, 37.788151, 38.014072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786686, 38.043339, 37.259125>,  <31.305065, 38.318451, 37.586941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786686, 38.043339, 37.259125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659536, 37.758068, 37.509033>,  <31.583246, 37.586906, 37.658978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659536, 37.758068, 37.509033>,  <31.786686, 38.043339, 37.259125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659536, 37.758068, 37.509033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036041, -0.649380, -0.759610,
		0.947448, -0.263977, 0.180717,
		-0.317873, -0.713177, 0.624768,
		31.564175, 37.544113, 37.696465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261002, 37.494263, 37.215160>,  <31.786686, 38.043339, 37.259125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261002, 37.494263, 37.215160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919285, 37.340675, 37.355301>,  <31.714254, 37.248524, 37.439384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919285, 37.340675, 37.355301>,  <32.261002, 37.494263, 37.215160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919285, 37.340675, 37.355301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070356, -0.753244, -0.653967,
		0.515006, -0.534031, 0.670507,
		-0.854294, -0.383971, 0.350353,
		31.662996, 37.225483, 37.460407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422932, 36.792789, 37.375599>,  <32.261002, 37.494263, 37.215160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422932, 36.792789, 37.375599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026272, 36.836269, 37.347847>,  <31.788275, 36.862358, 37.331196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026272, 36.836269, 37.347847>,  <32.422932, 36.792789, 37.375599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026272, 36.836269, 37.347847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051281, -0.826070, -0.561230,
		-0.118316, -0.552986, 0.824747,
		-0.991651, 0.108696, -0.069380,
		31.728777, 36.868877, 37.327034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156715, 36.070740, 37.424355>,  <32.422932, 36.792789, 37.375599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156715, 36.070740, 37.424355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837046, 36.271324, 37.291779>,  <31.645243, 36.391674, 37.212234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837046, 36.271324, 37.291779>,  <32.156715, 36.070740, 37.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837046, 36.271324, 37.291779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293875, -0.806951, -0.512317,
		-0.524361, -0.312031, 0.792264,
		-0.799176, 0.501465, -0.331436,
		31.597292, 36.421764, 37.192348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518286, 35.718102, 37.587627>,  <32.156715, 36.070740, 37.424355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518286, 35.718102, 37.587627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448256, 35.950768, 37.269882>,  <31.406237, 36.090366, 37.079235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448256, 35.950768, 37.269882>,  <31.518286, 35.718102, 37.587627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448256, 35.950768, 37.269882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450387, -0.764775, -0.460729,
		-0.875500, 0.277111, 0.395866,
		-0.175075, 0.581661, -0.794367,
		31.395733, 36.125267, 37.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092186, 35.180588, 37.548870>,  <31.518286, 35.718102, 37.587627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092186, 35.180588, 37.548870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948322, 34.915592, 37.286037>,  <31.862005, 34.756596, 37.128338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948322, 34.915592, 37.286037>,  <32.092186, 35.180588, 37.548870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948322, 34.915592, 37.286037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918914, -0.373740, -0.126157,
		-0.161999, -0.649173, 0.743190,
		-0.359657, -0.662490, -0.657079,
		31.840425, 34.716846, 37.088913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631939, 34.831959, 37.739208>,  <32.092186, 35.180588, 37.548870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631939, 34.831959, 37.739208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458057, 34.661041, 37.422108>,  <32.353729, 34.558491, 37.231850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458057, 34.661041, 37.422108>,  <32.631939, 34.831959, 37.739208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458057, 34.661041, 37.422108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900284, -0.183832, -0.394581,
		0.022871, -0.885224, 0.464603,
		-0.434702, -0.427299, -0.792749,
		32.327648, 34.532852, 37.184284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885475, 35.400524, 38.212746>,  <32.631939, 34.831959, 37.739208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885475, 35.400524, 38.212746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145393, 35.535709, 38.485085>,  <33.301342, 35.616821, 38.648487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145393, 35.535709, 38.485085>,  <32.885475, 35.400524, 38.212746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145393, 35.535709, 38.485085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725135, 0.007034, 0.688570,
		0.227920, -0.941134, 0.249637,
		0.649793, 0.337960, 0.680847,
		33.340332, 35.637096, 38.689339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837826, 34.971298, 38.729362>,  <32.885475, 35.400524, 38.212746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837826, 34.971298, 38.729362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998100, 35.285664, 38.917740>,  <33.094265, 35.474281, 39.030766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998100, 35.285664, 38.917740>,  <32.837826, 34.971298, 38.729362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998100, 35.285664, 38.917740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513180, -0.233303, 0.825964,
		0.759010, -0.572632, 0.309834,
		0.400688, 0.785915, 0.470943,
		33.118305, 35.521439, 39.059021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941536, 34.686882, 39.481056>,  <32.837826, 34.971298, 38.729362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941536, 34.686882, 39.481056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959713, 35.086197, 39.495808>,  <32.970619, 35.325787, 39.504658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959713, 35.086197, 39.495808>,  <32.941536, 34.686882, 39.481056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959713, 35.086197, 39.495808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309809, -0.021015, 0.950567,
		0.949712, -0.054620, 0.308323,
		0.045441, 0.998286, 0.036880,
		32.973347, 35.385681, 39.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390171, 34.853302, 40.036705>,  <32.941536, 34.686882, 39.481056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390171, 34.853302, 40.036705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128708, 35.148323, 39.968880>,  <32.971832, 35.325336, 39.928185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128708, 35.148323, 39.968880>,  <33.390171, 34.853302, 40.036705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128708, 35.148323, 39.968880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390835, -0.137125, 0.910189,
		0.648060, 0.661222, 0.377893,
		-0.653656, 0.737552, -0.169564,
		32.932610, 35.369587, 39.918011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360676, 35.278862, 40.721661>,  <33.390171, 34.853302, 40.036705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360676, 35.278862, 40.721661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026985, 35.415947, 40.548866>,  <32.826771, 35.498199, 40.445190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026985, 35.415947, 40.548866>,  <33.360676, 35.278862, 40.721661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026985, 35.415947, 40.548866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424044, 0.102062, 0.899872,
		0.352490, 0.933878, 0.060184,
		-0.834229, 0.342716, -0.431981,
		32.776718, 35.518761, 40.419273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083763, 35.750793, 41.235512>,  <33.360676, 35.278862, 40.721661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083763, 35.750793, 41.235512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787689, 35.633835, 40.993313>,  <32.610046, 35.563660, 40.847992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787689, 35.633835, 40.993313>,  <33.083763, 35.750793, 41.235512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787689, 35.633835, 40.993313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619437, -0.053798, 0.783201,
		-0.261583, 0.954781, -0.141304,
		-0.740184, -0.292401, -0.605500,
		32.565636, 35.546116, 40.811665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587021, 36.224285, 41.232887>,  <33.083763, 35.750793, 41.235512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587021, 36.224285, 41.232887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390945, 35.884644, 41.154148>,  <32.273300, 35.680859, 41.106907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390945, 35.884644, 41.154148>,  <32.587021, 36.224285, 41.232887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390945, 35.884644, 41.154148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648751, 0.204598, 0.732982,
		-0.582100, 0.487000, -0.651145,
		-0.490185, -0.849100, -0.196845,
		32.243889, 35.629913, 41.095093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917194, 36.374172, 41.493717>,  <32.587021, 36.224285, 41.232887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917194, 36.374172, 41.493717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919567, 35.976124, 41.454315>,  <31.920992, 35.737297, 41.430676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919567, 35.976124, 41.454315>,  <31.917194, 36.374172, 41.493717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919567, 35.976124, 41.454315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573872, -0.084057, 0.814620,
		-0.818923, 0.051695, -0.571570,
		0.005933, -0.995119, -0.098502,
		31.921347, 35.677589, 41.424763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361683, 36.205078, 41.883392>,  <31.917194, 36.374172, 41.493717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361683, 36.205078, 41.883392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596066, 35.882107, 41.855911>,  <31.736694, 35.688324, 41.839424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596066, 35.882107, 41.855911>,  <31.361683, 36.205078, 41.883392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596066, 35.882107, 41.855911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308063, -0.300369, 0.902705,
		-0.749503, -0.507779, -0.424741,
		0.585954, -0.807427, -0.068699,
		31.771852, 35.639877, 41.835300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830477, 35.639278, 42.044273>,  <31.361683, 36.205078, 41.883392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830477, 35.639278, 42.044273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211174, 35.529804, 42.099819>,  <31.439592, 35.464119, 42.133144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211174, 35.529804, 42.099819>,  <30.830477, 35.639278, 42.044273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211174, 35.529804, 42.099819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231325, -0.342411, 0.910628,
		-0.201673, -0.898807, -0.389197,
		0.951744, -0.273681, 0.138862,
		31.496696, 35.447701, 42.141476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782103, 35.126339, 42.595028>,  <30.830477, 35.639278, 42.044273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782103, 35.126339, 42.595028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174776, 35.202457, 42.591408>,  <31.410381, 35.248127, 42.589237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174776, 35.202457, 42.591408>,  <30.782103, 35.126339, 42.595028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174776, 35.202457, 42.591408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062412, -0.276365, 0.959024,
		0.179997, -0.942024, -0.283180,
		0.981685, 0.190295, -0.009048,
		31.469282, 35.259544, 42.588692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176994, 34.561901, 42.816463>,  <30.782103, 35.126339, 42.595028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176994, 34.561901, 42.816463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405020, 34.879387, 42.901360>,  <31.541834, 35.069878, 42.952297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405020, 34.879387, 42.901360>,  <31.176994, 34.561901, 42.816463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405020, 34.879387, 42.901360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093424, -0.319275, 0.943046,
		0.816273, -0.517765, -0.256158,
		0.570061, 0.793714, 0.212244,
		31.576038, 35.117500, 42.965034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592657, 34.347103, 43.376427>,  <31.176994, 34.561901, 42.816463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592657, 34.347103, 43.376427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675863, 34.738354, 43.375706>,  <31.725788, 34.973103, 43.375275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675863, 34.738354, 43.375706>,  <31.592657, 34.347103, 43.376427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675863, 34.738354, 43.375706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047147, -0.008190, 0.998854,
		0.976988, -0.207864, -0.047820,
		0.208017, 0.978123, -0.001799,
		31.738268, 35.031792, 43.375168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952818, 34.406021, 43.880463>,  <31.592657, 34.347103, 43.376427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952818, 34.406021, 43.880463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900316, 34.797752, 43.818905>,  <31.868814, 35.032791, 43.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900316, 34.797752, 43.818905>,  <31.952818, 34.406021, 43.880463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900316, 34.797752, 43.818905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354858, 0.191368, 0.915125,
		0.925661, 0.065504, -0.372641,
		-0.131256, 0.979330, -0.153898,
		31.860939, 35.091553, 43.772736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611740, 34.804935, 44.147659>,  <31.952818, 34.406021, 43.880463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611740, 34.804935, 44.147659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299789, 35.055305, 44.146839>,  <32.112617, 35.205528, 44.146347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299789, 35.055305, 44.146839>,  <32.611740, 34.804935, 44.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299789, 35.055305, 44.146839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296343, 0.372119, 0.879607,
		0.551331, 0.685381, -0.475697,
		-0.779882, 0.625924, -0.002053,
		32.065826, 35.243084, 44.146225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877094, 35.455914, 44.462799>,  <32.611740, 34.804935, 44.147659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877094, 35.455914, 44.462799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480202, 35.440552, 44.510136>,  <32.242065, 35.431335, 44.538536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480202, 35.440552, 44.510136>,  <32.877094, 35.455914, 44.462799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480202, 35.440552, 44.510136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106276, 0.232944, 0.966666,
		-0.064688, 0.971732, -0.227052,
		-0.992230, -0.038401, 0.118340,
		32.182533, 35.429031, 44.545639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660259, 35.898605, 45.027164>,  <32.877094, 35.455914, 44.462799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660259, 35.898605, 45.027164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304272, 35.717278, 45.007324>,  <32.090679, 35.608482, 44.995419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304272, 35.717278, 45.007324>,  <32.660259, 35.898605, 45.027164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304272, 35.717278, 45.007324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059181, 0.006956, 0.998223,
		-0.452165, 0.891323, -0.033018,
		-0.889969, -0.453315, -0.049604,
		32.037281, 35.581284, 44.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157681, 36.349926, 45.321026>,  <32.660259, 35.898605, 45.027164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157681, 36.349926, 45.321026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980837, 35.993488, 45.361996>,  <31.874731, 35.779625, 45.386578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980837, 35.993488, 45.361996>,  <32.157681, 36.349926, 45.321026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980837, 35.993488, 45.361996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192703, 0.205888, 0.959414,
		-0.876018, 0.404425, -0.262741,
		-0.442107, -0.891095, 0.102428,
		31.848206, 35.726158, 45.392723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678268, 36.562092, 45.570820>,  <32.157681, 36.349926, 45.321026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678268, 36.562092, 45.570820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677189, 36.170219, 45.651028>,  <31.676542, 35.935097, 45.699154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677189, 36.170219, 45.651028>,  <31.678268, 36.562092, 45.570820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677189, 36.170219, 45.651028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067829, 0.199883, 0.977469,
		-0.997693, 0.016238, 0.065912,
		-0.002697, -0.979685, 0.200523,
		31.676380, 35.876312, 45.711185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110594, 36.443771, 46.022171>,  <31.678268, 36.562092, 45.570820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110594, 36.443771, 46.022171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371027, 36.145943, 46.081093>,  <31.527287, 35.967243, 46.116447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371027, 36.145943, 46.081093>,  <31.110594, 36.443771, 46.022171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371027, 36.145943, 46.081093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035337, 0.223606, 0.974039,
		-0.758185, -0.628973, 0.171897,
		0.651081, -0.744576, 0.147308,
		31.566351, 35.922569, 46.125286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874243, 36.136047, 46.572464>,  <31.110594, 36.443771, 46.022171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874243, 36.136047, 46.572464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255968, 36.022072, 46.536484>,  <31.485004, 35.953686, 46.514896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255968, 36.022072, 46.536484>,  <30.874243, 36.136047, 46.572464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255968, 36.022072, 46.536484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180971, 0.311621, 0.932814,
		-0.237765, -0.906477, 0.348951,
		0.954315, -0.284940, -0.089954,
		31.542263, 35.936588, 46.509499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842825, 35.591179, 47.067211>,  <30.874243, 36.136047, 46.572464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842825, 35.591179, 47.067211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205240, 35.744041, 46.994488>,  <31.422689, 35.835758, 46.950855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205240, 35.744041, 46.994488>,  <30.842825, 35.591179, 47.067211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205240, 35.744041, 46.994488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069054, 0.290337, 0.954430,
		0.417528, -0.877303, 0.236666,
		0.906036, 0.382158, -0.181805,
		31.477051, 35.858688, 46.939945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200537, 35.433353, 47.604782>,  <30.842825, 35.591179, 47.067211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200537, 35.433353, 47.604782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434856, 35.711117, 47.437622>,  <31.575449, 35.877773, 47.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434856, 35.711117, 47.437622>,  <31.200537, 35.433353, 47.604782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434856, 35.711117, 47.437622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122894, 0.433559, 0.892706,
		0.801083, -0.574304, 0.168640,
		0.585800, 0.694407, -0.417895,
		31.610596, 35.919437, 47.312252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876179, 35.410786, 48.019455>,  <31.200537, 35.433353, 47.604782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876179, 35.410786, 48.019455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786554, 35.750969, 47.829082>,  <31.732780, 35.955078, 47.714859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786554, 35.750969, 47.829082>,  <31.876179, 35.410786, 48.019455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786554, 35.750969, 47.829082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109729, 0.507259, 0.854780,
		0.968378, 0.139300, -0.206977,
		-0.224061, 0.850461, -0.475933,
		31.719336, 36.006107, 47.686302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235001, 35.819790, 48.429451>,  <31.876179, 35.410786, 48.019455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235001, 35.819790, 48.429451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978777, 36.069828, 48.251038>,  <31.825043, 36.219849, 48.143990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978777, 36.069828, 48.251038>,  <32.235001, 35.819790, 48.429451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978777, 36.069828, 48.251038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055275, 0.616865, 0.785125,
		0.765918, 0.478263, -0.429689,
		-0.640557, 0.625093, -0.446033,
		31.786610, 36.257355, 48.117229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493076, 36.497421, 48.593529>,  <32.235001, 35.819790, 48.429451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493076, 36.497421, 48.593529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116440, 36.567665, 48.478596>,  <31.890457, 36.609810, 48.409637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116440, 36.567665, 48.478596>,  <32.493076, 36.497421, 48.593529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116440, 36.567665, 48.478596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087886, 0.695538, 0.713094,
		0.325078, 0.696698, -0.639482,
		-0.941595, 0.175610, -0.287334,
		31.833961, 36.620350, 48.392395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011307, 36.932976, 48.272106>,  <32.493076, 36.497421, 48.593529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011307, 36.932976, 48.272106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318478, 36.792183, 48.486172>,  <33.502781, 36.707706, 48.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318478, 36.792183, 48.486172>,  <33.011307, 36.932976, 48.272106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318478, 36.792183, 48.486172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460328, -0.277706, -0.843195,
		0.445406, 0.893862, -0.051232,
		0.767927, -0.351980, 0.535161,
		33.548855, 36.686588, 48.646721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521343, 37.299343, 48.038303>,  <33.011307, 36.932976, 48.272106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521343, 37.299343, 48.038303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657314, 36.953224, 48.185658>,  <33.738899, 36.745552, 48.274071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657314, 36.953224, 48.185658>,  <33.521343, 37.299343, 48.038303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657314, 36.953224, 48.185658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540250, -0.140958, -0.829615,
		0.769791, 0.481030, 0.419562,
		0.339929, -0.865298, 0.368385,
		33.759293, 36.693634, 48.296173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175156, 37.409931, 47.837658>,  <33.521343, 37.299343, 48.038303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175156, 37.409931, 47.837658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131542, 37.018764, 47.908970>,  <34.105373, 36.784065, 47.951759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131542, 37.018764, 47.908970>,  <34.175156, 37.409931, 47.837658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131542, 37.018764, 47.908970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480150, -0.208854, -0.851960,
		0.870384, -0.007286, 0.492320,
		-0.109031, -0.977920, 0.178284,
		34.098831, 36.725388, 47.962456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813686, 37.170280, 47.774849>,  <34.175156, 37.409931, 47.837658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813686, 37.170280, 47.774849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571625, 36.854908, 47.730740>,  <34.426388, 36.665684, 47.704273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571625, 36.854908, 47.730740>,  <34.813686, 37.170280, 47.774849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571625, 36.854908, 47.730740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549291, -0.313249, -0.774696,
		0.576255, -0.529382, 0.622644,
		-0.605153, -0.788435, -0.110273,
		34.390079, 36.618378, 47.697659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233845, 36.561436, 47.755920>,  <34.813686, 37.170280, 47.774849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233845, 36.561436, 47.755920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900322, 36.507450, 47.541798>,  <34.700211, 36.475060, 47.413322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900322, 36.507450, 47.541798>,  <35.233845, 36.561436, 47.755920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900322, 36.507450, 47.541798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537645, -0.418678, -0.731879,
		-0.125341, -0.898049, 0.421661,
		-0.833804, -0.134969, -0.535309,
		34.650181, 36.466961, 47.381207>
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
