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
	<24.402576, 34.599957, 34.972809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232374, 34.961769, 34.983868>,  <24.130253, 35.178856, 34.990505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232374, 34.961769, 34.983868>,  <24.402576, 34.599957, 34.972809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232374, 34.961769, 34.983868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749599, 0.369408, -0.549217,
		-0.506999, -0.212968, -0.835222,
		-0.425504, 0.904534, 0.027650,
		24.104723, 35.233128, 34.992161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549112, 34.377682, 35.622101>,  <24.402576, 34.599957, 34.972809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549112, 34.377682, 35.622101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805944, 34.546871, 35.877861>,  <24.960043, 34.648384, 36.031315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805944, 34.546871, 35.877861>,  <24.549112, 34.377682, 35.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805944, 34.546871, 35.877861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239585, 0.681548, -0.691441,
		-0.728240, 0.597150, 0.336271,
		0.642080, 0.422969, 0.639399,
		24.998568, 34.673763, 36.069679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468441, 35.149261, 35.683113>,  <24.549112, 34.377682, 35.622101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468441, 35.149261, 35.683113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854883, 35.064110, 35.741516>,  <25.086748, 35.013020, 35.776558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854883, 35.064110, 35.741516>,  <24.468441, 35.149261, 35.683113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854883, 35.064110, 35.741516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246496, 0.592790, -0.766707,
		0.076666, 0.776711, 0.625174,
		0.966107, -0.212883, 0.146009,
		25.144714, 35.000244, 35.785320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963264, 35.766747, 35.702965>,  <24.468441, 35.149261, 35.683113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963264, 35.766747, 35.702965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165733, 35.451797, 35.562210>,  <25.287214, 35.262829, 35.477757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165733, 35.451797, 35.562210>,  <24.963264, 35.766747, 35.702965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165733, 35.451797, 35.562210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373918, 0.568035, -0.733159,
		0.777157, 0.239528, 0.581939,
		0.506174, -0.787377, -0.351889,
		25.317585, 35.215584, 35.456642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646622, 35.835514, 35.721920>,  <24.963264, 35.766747, 35.702965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646622, 35.835514, 35.721920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630533, 35.587547, 35.408466>,  <25.620880, 35.438766, 35.220394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630533, 35.587547, 35.408466>,  <25.646622, 35.835514, 35.721920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630533, 35.587547, 35.408466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296447, 0.741554, -0.601844,
		0.954202, -0.256513, 0.153946,
		-0.040222, -0.619918, -0.783635,
		25.618467, 35.401573, 35.173374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181274, 36.030052, 35.370537>,  <25.646622, 35.835514, 35.721920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181274, 36.030052, 35.370537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959234, 35.825409, 35.108204>,  <25.826010, 35.702625, 34.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959234, 35.825409, 35.108204>,  <26.181274, 36.030052, 35.370537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959234, 35.825409, 35.108204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105678, 0.738703, -0.665695,
		0.825042, -0.438836, -0.355990,
		-0.555101, -0.511606, -0.655837,
		25.792704, 35.671928, 34.911453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480913, 36.073250, 34.697716>,  <26.181274, 36.030052, 35.370537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480913, 36.073250, 34.697716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082481, 36.055969, 34.666836>,  <25.843422, 36.045601, 34.648308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082481, 36.055969, 34.666836>,  <26.480913, 36.073250, 34.697716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082481, 36.055969, 34.666836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018213, 0.753815, -0.656835,
		0.086568, -0.655665, -0.750072,
		-0.996080, -0.043200, -0.077198,
		25.783657, 36.043011, 34.643677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128349, 36.118275, 33.974888>,  <26.480913, 36.073250, 34.697716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128349, 36.118275, 33.974888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879635, 36.258080, 34.255238>,  <25.730406, 36.341961, 34.423447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879635, 36.258080, 34.255238>,  <26.128349, 36.118275, 33.974888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879635, 36.258080, 34.255238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108659, 0.847749, -0.519149,
		-0.775613, -0.398955, -0.489140,
		-0.621785, 0.349509, 0.700875,
		25.693100, 36.362934, 34.465500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414530, 36.315964, 33.708412>,  <26.128349, 36.118275, 33.974888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414530, 36.315964, 33.708412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552135, 36.507103, 34.031723>,  <25.634699, 36.621784, 34.225712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552135, 36.507103, 34.031723>,  <25.414530, 36.315964, 33.708412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552135, 36.507103, 34.031723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030380, 0.866035, -0.499059,
		-0.938472, 0.147128, 0.312447,
		0.344016, 0.477846, 0.808280,
		25.655340, 36.650455, 34.274208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919043, 35.944687, 33.199425>,  <25.414530, 36.315964, 33.708412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919043, 35.944687, 33.199425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933256, 35.649826, 33.469341>,  <25.941784, 35.472912, 33.631290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933256, 35.649826, 33.469341>,  <25.919043, 35.944687, 33.199425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933256, 35.649826, 33.469341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077507, -0.671156, -0.737253,
		0.996358, 0.078498, 0.033285,
		0.035533, -0.737148, 0.674796,
		25.943916, 35.428680, 33.671780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404495, 35.455479, 32.919136>,  <25.919043, 35.944687, 33.199425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404495, 35.455479, 32.919136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241470, 35.240417, 33.214386>,  <26.143656, 35.111382, 33.391537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241470, 35.240417, 33.214386>,  <26.404495, 35.455479, 32.919136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241470, 35.240417, 33.214386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184876, -0.840141, -0.509886,
		0.894267, -0.071349, 0.441809,
		-0.407562, -0.537654, 0.738120,
		26.119202, 35.079121, 33.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822756, 34.813129, 33.034180>,  <26.404495, 35.455479, 32.919136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822756, 34.813129, 33.034180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454924, 34.728489, 33.166603>,  <26.234224, 34.677704, 33.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454924, 34.728489, 33.166603>,  <26.822756, 34.813129, 33.034180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454924, 34.728489, 33.166603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030759, -0.801236, -0.597558,
		0.391700, -0.559684, 0.730291,
		-0.919579, -0.211600, 0.331059,
		26.179050, 34.665009, 33.265923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837645, 34.089718, 33.005051>,  <26.822756, 34.813129, 33.034180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837645, 34.089718, 33.005051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454063, 34.200413, 33.029781>,  <26.223915, 34.266830, 33.044621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454063, 34.200413, 33.029781>,  <26.837645, 34.089718, 33.005051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454063, 34.200413, 33.029781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246518, -0.705867, -0.664064,
		-0.140129, -0.652048, 0.745115,
		-0.958954, 0.276738, 0.061829,
		26.166378, 34.283436, 33.048328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435291, 33.457645, 32.959305>,  <26.837645, 34.089718, 33.005051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435291, 33.457645, 32.959305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151085, 33.733894, 32.905334>,  <25.980560, 33.899643, 32.872952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151085, 33.733894, 32.905334>,  <26.435291, 33.457645, 32.959305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151085, 33.733894, 32.905334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437953, -0.584086, -0.683404,
		-0.550782, -0.426480, 0.717464,
		-0.710519, 0.690622, -0.134925,
		25.937929, 33.941082, 32.864857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842159, 33.030994, 33.051056>,  <26.435291, 33.457645, 32.959305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842159, 33.030994, 33.051056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779156, 33.354893, 32.824955>,  <25.741354, 33.549232, 32.689297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779156, 33.354893, 32.824955>,  <25.842159, 33.030994, 33.051056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779156, 33.354893, 32.824955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304176, -0.584346, -0.752341,
		-0.939504, 0.053433, 0.338345,
		-0.157511, 0.809743, -0.565249,
		25.731903, 33.597816, 32.655380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167448, 32.998615, 32.903584>,  <25.842159, 33.030994, 33.051056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167448, 32.998615, 32.903584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342518, 33.219501, 32.619751>,  <25.447559, 33.352032, 32.449451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342518, 33.219501, 32.619751>,  <25.167448, 32.998615, 32.903584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342518, 33.219501, 32.619751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455960, -0.543866, -0.704493,
		-0.774945, 0.631879, 0.013749,
		0.437676, 0.552212, -0.709578,
		25.473822, 33.385166, 32.406879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692854, 33.011604, 32.359207>,  <25.167448, 32.998615, 32.903584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692854, 33.011604, 32.359207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017389, 33.132839, 32.159260>,  <25.212111, 33.205582, 32.039291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017389, 33.132839, 32.159260>,  <24.692854, 33.011604, 32.359207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017389, 33.132839, 32.159260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342288, -0.446870, -0.826526,
		-0.473885, 0.841692, -0.258821,
		0.811340, 0.303087, -0.499866,
		25.260792, 33.223766, 32.009300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436161, 33.219128, 31.649019>,  <24.692854, 33.011604, 32.359207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436161, 33.219128, 31.649019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826773, 33.144592, 31.605818>,  <25.061140, 33.099869, 31.579897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826773, 33.144592, 31.605818>,  <24.436161, 33.219128, 31.649019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826773, 33.144592, 31.605818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190073, -0.509763, -0.839055,
		0.101296, 0.839891, -0.533218,
		0.976530, -0.186343, -0.108003,
		25.119732, 33.088688, 31.573418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601250, 33.380238, 31.005272>,  <24.436161, 33.219128, 31.649019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601250, 33.380238, 31.005272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897490, 33.129189, 31.101276>,  <25.075233, 32.978561, 31.158880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897490, 33.129189, 31.101276>,  <24.601250, 33.380238, 31.005272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897490, 33.129189, 31.101276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183156, -0.532218, -0.826558,
		0.646502, 0.568189, -0.509113,
		0.740600, -0.627619, 0.240013,
		25.119669, 32.940903, 31.173281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862972, 33.134655, 30.350637>,  <24.601250, 33.380238, 31.005272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862972, 33.134655, 30.350637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000431, 32.838150, 30.581264>,  <25.082907, 32.660248, 30.719641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000431, 32.838150, 30.581264>,  <24.862972, 33.134655, 30.350637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000431, 32.838150, 30.581264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075459, -0.633769, -0.769833,
		0.936062, 0.221044, -0.273728,
		0.343647, -0.741267, 0.576568,
		25.103525, 32.615768, 30.754234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421064, 32.802860, 29.970171>,  <24.862972, 33.134655, 30.350637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421064, 32.802860, 29.970171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295784, 32.532253, 30.236774>,  <25.220615, 32.369888, 30.396736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295784, 32.532253, 30.236774>,  <25.421064, 32.802860, 29.970171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295784, 32.532253, 30.236774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098756, -0.674815, -0.731349,
		0.944538, -0.294881, 0.144543,
		-0.313201, -0.676513, 0.666510,
		25.201824, 32.329300, 30.436728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694315, 32.090889, 29.819109>,  <25.421064, 32.802860, 29.970171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694315, 32.090889, 29.819109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383711, 32.011284, 30.058249>,  <25.197348, 31.963520, 30.201733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383711, 32.011284, 30.058249>,  <25.694315, 32.090889, 29.819109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383711, 32.011284, 30.058249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257403, -0.765841, -0.589263,
		0.575131, -0.611457, 0.543456,
		-0.776510, -0.199016, 0.597850,
		25.150757, 31.951578, 30.237604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673573, 31.385115, 29.919559>,  <25.694315, 32.090889, 29.819109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673573, 31.385115, 29.919559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294779, 31.478081, 30.008287>,  <25.067503, 31.533859, 30.061523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294779, 31.478081, 30.008287>,  <25.673573, 31.385115, 29.919559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294779, 31.478081, 30.008287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319513, -0.753570, -0.574495,
		0.033636, -0.614912, 0.787878,
		-0.946985, 0.232414, 0.221820,
		25.010683, 31.547806, 30.074833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389874, 30.719522, 29.960251>,  <25.673573, 31.385115, 29.919559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.389874, 30.719522, 29.960251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080620, 30.965153, 29.896786>,  <24.895067, 31.112532, 29.858707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080620, 30.965153, 29.896786>,  <25.389874, 30.719522, 29.960251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080620, 30.965153, 29.896786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216780, -0.490947, -0.843788,
		-0.596046, -0.617966, 0.512687,
		-0.773134, 0.614076, -0.158664,
		24.848679, 31.149376, 29.849186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715244, 30.282413, 29.764923>,  <25.389874, 30.719522, 29.960251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715244, 30.282413, 29.764923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715614, 30.648502, 29.603746>,  <24.715836, 30.868156, 29.507040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715614, 30.648502, 29.603746>,  <24.715244, 30.282413, 29.764923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715614, 30.648502, 29.603746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510141, -0.346136, -0.787367,
		-0.860090, 0.206286, 0.466573,
		0.000926, 0.915225, -0.402943,
		24.715893, 30.923069, 29.482864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341658, 30.033384, 29.307306>,  <24.715244, 30.282413, 29.764923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341658, 30.033384, 29.307306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347784, 29.654015, 29.180653>,  <25.351460, 29.426394, 29.104660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347784, 29.654015, 29.180653>,  <25.341658, 30.033384, 29.307306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347784, 29.654015, 29.180653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950605, 0.084376, -0.298715,
		0.310025, 0.305571, -0.900284,
		0.015316, -0.948423, -0.316636,
		25.352379, 29.369488, 29.085661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216158, 30.100431, 28.476274>,  <25.341658, 30.033384, 29.307306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216158, 30.100431, 28.476274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063869, 29.771421, 28.645273>,  <24.972496, 29.574017, 28.746674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063869, 29.771421, 28.645273>,  <25.216158, 30.100431, 28.476274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063869, 29.771421, 28.645273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920361, 0.292913, -0.259109,
		0.089368, -0.487499, -0.868538,
		-0.380721, -0.822524, 0.422498,
		24.949654, 29.524664, 28.772022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908394, 30.332541, 28.130699>,  <25.216158, 30.100431, 28.476274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908394, 30.332541, 28.130699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890692, 30.218689, 28.513746>,  <25.880072, 30.150377, 28.743574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890692, 30.218689, 28.513746>,  <25.908394, 30.332541, 28.130699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890692, 30.218689, 28.513746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285586, -0.922158, -0.260893,
		0.957331, 0.261937, 0.122095,
		-0.044253, -0.284630, 0.957615,
		25.877417, 30.133301, 28.801031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483322, 30.222229, 27.535929>,  <25.908394, 30.332541, 28.130699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483322, 30.222229, 27.535929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539589, 30.108950, 27.156452>,  <25.573349, 30.040981, 26.928766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539589, 30.108950, 27.156452>,  <25.483322, 30.222229, 27.535929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539589, 30.108950, 27.156452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756417, 0.648982, -0.081574,
		0.638784, -0.706131, 0.305507,
		0.140666, -0.283199, -0.948689,
		25.581789, 30.023991, 26.871845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186752, 29.884079, 27.421818>,  <25.483322, 30.222229, 27.535929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186752, 29.884079, 27.421818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039642, 30.054541, 27.091209>,  <25.951376, 30.156816, 26.892845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039642, 30.054541, 27.091209>,  <26.186752, 29.884079, 27.421818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039642, 30.054541, 27.091209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764510, 0.644565, -0.007847,
		0.529402, -0.634768, -0.562853,
		-0.367776, 0.426153, -0.826520,
		25.929310, 30.182386, 26.843254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523632, 29.701048, 26.790215>,  <26.186752, 29.884079, 27.421818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523632, 29.701048, 26.790215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378098, 30.072870, 26.766388>,  <26.290777, 30.295963, 26.752092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378098, 30.072870, 26.766388>,  <26.523632, 29.701048, 26.790215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378098, 30.072870, 26.766388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929210, 0.357765, -0.092592,
		-0.064758, -0.089039, -0.993921,
		-0.363834, 0.929557, -0.059568,
		26.268948, 30.351738, 26.748518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793447, 30.085052, 26.204548>,  <26.523632, 29.701048, 26.790215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793447, 30.085052, 26.204548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722795, 30.310446, 26.527357>,  <26.680405, 30.445683, 26.721043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722795, 30.310446, 26.527357>,  <26.793447, 30.085052, 26.204548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722795, 30.310446, 26.527357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944906, 0.326650, -0.021270,
		-0.275599, 0.758805, -0.590135,
		-0.176628, 0.563484, 0.807024,
		26.669807, 30.479490, 26.769464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072136, 30.711882, 26.101759>,  <26.793447, 30.085052, 26.204548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072136, 30.711882, 26.101759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054312, 30.712664, 26.501360>,  <27.043617, 30.713133, 26.741121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054312, 30.712664, 26.501360>,  <27.072136, 30.711882, 26.101759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054312, 30.712664, 26.501360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971467, 0.233267, 0.042876,
		-0.232951, 0.972411, -0.012295,
		-0.044561, 0.001956, 0.999005,
		27.040943, 30.713251, 26.801062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397289, 31.413786, 26.368359>,  <27.072136, 30.711882, 26.101759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397289, 31.413786, 26.368359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403000, 31.105751, 26.623470>,  <27.406425, 30.920929, 26.776537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403000, 31.105751, 26.623470>,  <27.397289, 31.413786, 26.368359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403000, 31.105751, 26.623470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993043, 0.085483, 0.080988,
		-0.116887, 0.632184, 0.765951,
		0.014277, -0.770088, 0.637778,
		27.407284, 30.874725, 26.814804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711729, 31.785202, 26.161211>,  <27.397289, 31.413786, 26.368359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711729, 31.785202, 26.161211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591488, 32.075089, 25.913204>,  <26.519342, 32.249020, 25.764400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591488, 32.075089, 25.913204>,  <26.711729, 31.785202, 26.161211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591488, 32.075089, 25.913204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290268, 0.688764, 0.664340,
		0.908505, 0.019731, -0.417407,
		-0.300604, 0.724717, -0.620019,
		26.501307, 32.292503, 25.727198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196995, 32.392719, 25.980280>,  <26.711729, 31.785202, 26.161211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196995, 32.392719, 25.980280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861177, 32.605392, 25.935589>,  <26.659687, 32.732998, 25.908775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861177, 32.605392, 25.935589>,  <27.196995, 32.392719, 25.980280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861177, 32.605392, 25.935589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387307, 0.729921, 0.563213,
		0.381001, 0.429569, -0.818724,
		-0.839542, 0.531682, -0.111726,
		26.609314, 32.764896, 25.902071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370907, 33.099609, 25.573795>,  <27.196995, 32.392719, 25.980280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370907, 33.099609, 25.573795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053726, 33.144821, 25.813278>,  <26.863417, 33.171947, 25.956968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053726, 33.144821, 25.813278>,  <27.370907, 33.099609, 25.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053726, 33.144821, 25.813278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501288, 0.679563, 0.535636,
		-0.346317, 0.724858, -0.595521,
		-0.792954, 0.113027, 0.598706,
		26.815840, 33.178730, 25.992889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333273, 33.856728, 25.744793>,  <27.370907, 33.099609, 25.573795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333273, 33.856728, 25.744793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097187, 33.673809, 26.010881>,  <26.955536, 33.564056, 26.170534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097187, 33.673809, 26.010881>,  <27.333273, 33.856728, 25.744793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097187, 33.673809, 26.010881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270378, 0.664480, 0.696680,
		-0.760619, 0.591053, -0.268543,
		-0.590216, -0.457300, 0.665224,
		26.920122, 33.536617, 26.210449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982195, 34.488686, 26.106359>,  <27.333273, 33.856728, 25.744793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982195, 34.488686, 26.106359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896278, 34.179428, 26.345062>,  <26.844728, 33.993874, 26.488283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896278, 34.179428, 26.345062>,  <26.982195, 34.488686, 26.106359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896278, 34.179428, 26.345062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185567, 0.567581, 0.802132,
		-0.958869, 0.283030, 0.021557,
		-0.214792, -0.773140, 0.596757,
		26.831841, 33.947487, 26.524090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439814, 34.576889, 26.644901>,  <26.982195, 34.488686, 26.106359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439814, 34.576889, 26.644901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692114, 34.300812, 26.786764>,  <26.843494, 34.135166, 26.871881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692114, 34.300812, 26.786764>,  <26.439814, 34.576889, 26.644901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692114, 34.300812, 26.786764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155925, 0.560453, 0.813376,
		-0.760157, -0.457739, 0.461125,
		0.630752, -0.690194, 0.354659,
		26.881340, 34.093754, 26.893162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251570, 34.525589, 27.358343>,  <26.439814, 34.576889, 26.644901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251570, 34.525589, 27.358343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624651, 34.383171, 27.335384>,  <26.848499, 34.297718, 27.321609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624651, 34.383171, 27.335384>,  <26.251570, 34.525589, 27.358343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624651, 34.383171, 27.335384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210195, 0.407358, 0.888750,
		-0.293056, -0.841005, 0.454784,
		0.932704, -0.356047, -0.057396,
		26.904463, 34.276356, 27.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403778, 34.540905, 28.053772>,  <26.251570, 34.525589, 27.358343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403778, 34.540905, 28.053772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757069, 34.462437, 27.883394>,  <26.969044, 34.415356, 27.781168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757069, 34.462437, 27.883394>,  <26.403778, 34.540905, 28.053772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757069, 34.462437, 27.883394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468185, 0.317164, 0.824749,
		-0.026696, -0.927861, 0.371971,
		0.883227, -0.196168, -0.425943,
		27.022038, 34.403587, 27.755611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638803, 34.160549, 28.567467>,  <26.403778, 34.540905, 28.053772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638803, 34.160549, 28.567467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926517, 34.336071, 28.352030>,  <27.099146, 34.441383, 28.222769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926517, 34.336071, 28.352030>,  <26.638803, 34.160549, 28.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926517, 34.336071, 28.352030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380452, 0.399876, 0.833880,
		0.581282, -0.804703, 0.120679,
		0.719283, 0.438807, -0.538592,
		27.142303, 34.467712, 28.190453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285191, 33.912476, 28.905535>,  <26.638803, 34.160549, 28.567467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285191, 33.912476, 28.905535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354240, 34.246819, 28.697098>,  <27.395670, 34.447426, 28.572035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354240, 34.246819, 28.697098>,  <27.285191, 33.912476, 28.905535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354240, 34.246819, 28.697098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414051, 0.418444, 0.808372,
		0.893735, -0.355306, -0.273854,
		0.172627, 0.835860, -0.521093,
		27.406029, 34.497578, 28.540770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883448, 34.117115, 29.177479>,  <27.285191, 33.912476, 28.905535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883448, 34.117115, 29.177479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751253, 34.445419, 28.991089>,  <27.671936, 34.642403, 28.879255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751253, 34.445419, 28.991089>,  <27.883448, 34.117115, 29.177479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751253, 34.445419, 28.991089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488295, 0.571193, 0.659778,
		0.807681, -0.009486, -0.589543,
		-0.330484, 0.820761, -0.465974,
		27.652107, 34.691647, 28.851297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431822, 34.590637, 29.133484>,  <27.883448, 34.117115, 29.177479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431822, 34.590637, 29.133484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096992, 34.807064, 29.101095>,  <27.896095, 34.936920, 29.081661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096992, 34.807064, 29.101095>,  <28.431822, 34.590637, 29.133484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096992, 34.807064, 29.101095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294325, 0.570128, 0.767025,
		0.461177, 0.618223, -0.636488,
		-0.837072, 0.541068, -0.080972,
		27.845871, 34.969383, 29.076803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526335, 35.385593, 28.959898>,  <28.431822, 34.590637, 29.133484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526335, 35.385593, 28.959898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175585, 35.350201, 29.148901>,  <27.965136, 35.328964, 29.262302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175585, 35.350201, 29.148901>,  <28.526335, 35.385593, 28.959898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175585, 35.350201, 29.148901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313607, 0.639667, 0.701767,
		-0.364339, 0.763543, -0.533160,
		-0.876874, -0.088478, 0.472508,
		27.912523, 35.323658, 29.290653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638227, 35.984409, 29.437244>,  <28.526335, 35.385593, 28.959898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638227, 35.984409, 29.437244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298212, 35.802929, 29.544270>,  <28.094202, 35.694042, 29.608484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298212, 35.802929, 29.544270>,  <28.638227, 35.984409, 29.437244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298212, 35.802929, 29.544270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076518, 0.396227, 0.914959,
		-0.521131, 0.798224, -0.302093,
		-0.850040, -0.453698, 0.267564,
		28.043200, 35.666821, 29.624538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117807, 36.426369, 29.630108>,  <28.638227, 35.984409, 29.437244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117807, 36.426369, 29.630108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002254, 36.091099, 29.815155>,  <27.932922, 35.889938, 29.926184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002254, 36.091099, 29.815155>,  <28.117807, 36.426369, 29.630108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002254, 36.091099, 29.815155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052139, 0.468731, 0.881801,
		-0.955944, 0.278856, -0.091706,
		-0.288881, -0.838171, 0.462620,
		27.915590, 35.839649, 29.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672407, 36.748402, 30.125769>,  <28.117807, 36.426369, 29.630108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672407, 36.748402, 30.125769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728333, 36.376076, 30.260847>,  <27.761887, 36.152679, 30.341894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728333, 36.376076, 30.260847>,  <27.672407, 36.748402, 30.125769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728333, 36.376076, 30.260847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094645, 0.352045, 0.931186,
		-0.985645, -0.098229, 0.137317,
		0.139811, -0.930815, 0.337694,
		27.770275, 36.096832, 30.362156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168434, 36.657776, 30.698814>,  <27.672407, 36.748402, 30.125769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168434, 36.657776, 30.698814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476849, 36.411125, 30.762413>,  <27.661898, 36.263134, 30.800571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476849, 36.411125, 30.762413>,  <27.168434, 36.657776, 30.698814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476849, 36.411125, 30.762413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099958, 0.363786, 0.926104,
		-0.628898, -0.698166, 0.342129,
		0.771036, -0.616623, 0.158997,
		27.708158, 36.226139, 30.810112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097906, 36.432472, 31.373346>,  <27.168434, 36.657776, 30.698814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097906, 36.432472, 31.373346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468245, 36.292130, 31.317190>,  <27.690449, 36.207924, 31.283497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468245, 36.292130, 31.317190>,  <27.097906, 36.432472, 31.373346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468245, 36.292130, 31.317190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143118, -0.018283, 0.989537,
		-0.349748, -0.936252, 0.033286,
		0.925847, -0.350853, -0.140389,
		27.745998, 36.186874, 31.275074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077776, 36.042133, 31.890364>,  <27.097906, 36.432472, 31.373346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077776, 36.042133, 31.890364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457333, 36.117344, 31.788977>,  <27.685066, 36.162472, 31.728144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457333, 36.117344, 31.788977>,  <27.077776, 36.042133, 31.890364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457333, 36.117344, 31.788977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261984, -0.021488, 0.964833,
		0.175971, -0.981928, -0.069650,
		0.948894, 0.188029, -0.253468,
		27.742001, 36.173752, 31.712936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561111, 35.536053, 32.150230>,  <27.077776, 36.042133, 31.890364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561111, 35.536053, 32.150230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780241, 35.863255, 32.080086>,  <27.911718, 36.059578, 32.037998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780241, 35.863255, 32.080086>,  <27.561111, 35.536053, 32.150230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780241, 35.863255, 32.080086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071631, 0.162983, 0.984025,
		0.833523, -0.551632, 0.030691,
		0.547822, 0.818009, -0.175364,
		27.944588, 36.108658, 32.027477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164850, 35.461754, 32.580063>,  <27.561111, 35.536053, 32.150230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164850, 35.461754, 32.580063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130125, 35.854580, 32.513107>,  <28.109289, 36.090275, 32.472935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130125, 35.854580, 32.513107>,  <28.164850, 35.461754, 32.580063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130125, 35.854580, 32.513107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203515, 0.181962, 0.962014,
		0.975215, 0.049451, -0.215661,
		-0.086814, 0.982061, -0.167388,
		28.104080, 36.149197, 32.462891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563051, 35.701538, 33.082333>,  <28.164850, 35.461754, 32.580063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563051, 35.701538, 33.082333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358242, 36.030106, 32.981846>,  <28.235357, 36.227245, 32.921555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358242, 36.030106, 32.981846>,  <28.563051, 35.701538, 33.082333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358242, 36.030106, 32.981846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138063, 0.367364, 0.919773,
		0.847805, 0.436258, -0.301505,
		-0.512021, 0.821415, -0.251221,
		28.204636, 36.276531, 32.906479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930033, 36.294487, 33.289642>,  <28.563051, 35.701538, 33.082333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930033, 36.294487, 33.289642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546759, 36.405197, 33.260578>,  <28.316795, 36.471622, 33.243141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546759, 36.405197, 33.260578>,  <28.930033, 36.294487, 33.289642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546759, 36.405197, 33.260578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025895, 0.336735, 0.941243,
		0.284981, 0.900002, -0.329821,
		-0.958183, 0.276777, -0.072658,
		28.259304, 36.488232, 33.238781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950382, 36.835400, 33.598743>,  <28.930033, 36.294487, 33.289642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950382, 36.835400, 33.598743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553471, 36.785847, 33.596493>,  <28.315323, 36.756115, 33.595142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553471, 36.785847, 33.596493>,  <28.950382, 36.835400, 33.598743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553471, 36.785847, 33.596493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040642, 0.282023, 0.958546,
		-0.117159, 0.951376, -0.284881,
		-0.992281, -0.123880, -0.005624,
		28.255787, 36.748684, 33.594807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736399, 36.601986, 34.306431>,  <28.950382, 36.835400, 33.598743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736399, 36.601986, 34.306431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076387, 36.808964, 34.346027>,  <29.280380, 36.933151, 34.369785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076387, 36.808964, 34.346027>,  <28.736399, 36.601986, 34.306431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076387, 36.808964, 34.346027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381432, -0.734046, 0.561859,
		0.363392, -0.439807, -0.821289,
		0.849974, 0.517441, 0.098990,
		29.331379, 36.964195, 34.375725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311201, 36.048004, 34.513294>,  <28.736399, 36.601986, 34.306431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311201, 36.048004, 34.513294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422155, 36.424751, 34.589123>,  <29.488728, 36.650799, 34.634621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422155, 36.424751, 34.589123>,  <29.311201, 36.048004, 34.513294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422155, 36.424751, 34.589123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657770, -0.329993, 0.677085,
		0.700283, -0.063120, -0.711070,
		0.277386, 0.941871, 0.189570,
		29.505371, 36.707314, 34.645992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983879, 35.999603, 34.839001>,  <29.311201, 36.048004, 34.513294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983879, 35.999603, 34.839001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825209, 36.351227, 34.944759>,  <29.730007, 36.562202, 35.008213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825209, 36.351227, 34.944759>,  <29.983879, 35.999603, 34.839001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825209, 36.351227, 34.944759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559951, 0.003484, 0.828518,
		0.727394, 0.476703, -0.493611,
		-0.396677, 0.879058, 0.264396,
		29.706205, 36.614944, 35.024078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477188, 36.575748, 34.881229>,  <29.983879, 35.999603, 34.839001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477188, 36.575748, 34.881229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170362, 36.613922, 35.135002>,  <29.986267, 36.636826, 35.287266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170362, 36.613922, 35.135002>,  <30.477188, 36.575748, 34.881229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170362, 36.613922, 35.135002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638837, 0.022457, 0.769014,
		0.059140, 0.995183, -0.078191,
		-0.767066, 0.095430, 0.634431,
		29.940243, 36.642551, 35.325333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612307, 37.110012, 35.269615>,  <30.477188, 36.575748, 34.881229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612307, 37.110012, 35.269615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369503, 36.864517, 35.471554>,  <30.223822, 36.717220, 35.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369503, 36.864517, 35.471554>,  <30.612307, 37.110012, 35.269615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369503, 36.864517, 35.471554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608549, 0.049577, 0.791966,
		-0.511086, 0.787954, 0.343395,
		-0.607008, -0.613735, 0.504847,
		30.187401, 36.680397, 35.623009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398108, 37.409859, 35.909870>,  <30.612307, 37.110012, 35.269615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398108, 37.409859, 35.909870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465258, 37.017693, 35.868679>,  <30.505547, 36.782394, 35.843964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465258, 37.017693, 35.868679>,  <30.398108, 37.409859, 35.909870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465258, 37.017693, 35.868679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650416, 0.031655, 0.758918,
		-0.740795, -0.194381, 0.642992,
		0.167873, -0.980415, -0.102979,
		30.515619, 36.723568, 35.837784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457115, 37.272545, 36.592560>,  <30.398108, 37.409859, 35.909870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457115, 37.272545, 36.592560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632790, 36.964264, 36.407894>,  <30.738194, 36.779293, 36.297096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632790, 36.964264, 36.407894>,  <30.457115, 37.272545, 36.592560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632790, 36.964264, 36.407894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592757, -0.137560, 0.793546,
		-0.675097, -0.622165, 0.396427,
		0.439184, -0.770706, -0.461659,
		30.764545, 36.733051, 36.269398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388144, 36.652805, 37.036659>,  <30.457115, 37.272545, 36.592560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388144, 36.652805, 37.036659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696024, 36.551357, 36.802315>,  <30.880753, 36.490490, 36.661709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696024, 36.551357, 36.802315>,  <30.388144, 36.652805, 37.036659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696024, 36.551357, 36.802315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538147, -0.235951, 0.809151,
		-0.343450, -0.938086, -0.045128,
		0.769701, -0.253618, -0.585866,
		30.926933, 36.475273, 36.626556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740250, 36.062172, 37.418865>,  <30.388144, 36.652805, 37.036659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740250, 36.062172, 37.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027302, 36.192139, 37.172474>,  <31.199533, 36.270119, 37.024639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027302, 36.192139, 37.172474>,  <30.740250, 36.062172, 37.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027302, 36.192139, 37.172474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696254, -0.354217, 0.624308,
		-0.015340, -0.876902, -0.480425,
		0.717632, 0.324921, -0.615980,
		31.242592, 36.289616, 36.987679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160736, 35.529812, 37.375488>,  <30.740250, 36.062172, 37.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160736, 35.529812, 37.375488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360518, 35.859467, 37.268650>,  <31.480387, 36.057259, 37.204548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360518, 35.859467, 37.268650>,  <31.160736, 35.529812, 37.375488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360518, 35.859467, 37.268650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703353, -0.205741, 0.680416,
		0.505806, -0.527697, -0.682419,
		0.499455, 0.824140, -0.267092,
		31.510355, 36.106709, 37.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818521, 35.348347, 37.199421>,  <31.160736, 35.529812, 37.375488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818521, 35.348347, 37.199421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812258, 35.727779, 37.325874>,  <31.808500, 35.955441, 37.401745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812258, 35.727779, 37.325874>,  <31.818521, 35.348347, 37.199421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812258, 35.727779, 37.325874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592113, -0.245974, 0.767398,
		0.805703, 0.199202, -0.557818,
		-0.015658, 0.948586, 0.316132,
		31.807560, 36.012356, 37.420715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421932, 35.420372, 37.584427>,  <31.818521, 35.348347, 37.199421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421932, 35.420372, 37.584427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243504, 35.761330, 37.693565>,  <32.136448, 35.965904, 37.759048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243504, 35.761330, 37.693565>,  <32.421932, 35.420372, 37.584427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243504, 35.761330, 37.693565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323366, -0.130774, 0.937194,
		0.834540, 0.506284, -0.217301,
		-0.446069, 0.852394, 0.272851,
		32.109684, 36.017048, 37.775421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855774, 35.754345, 38.037361>,  <32.421932, 35.420372, 37.584427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855774, 35.754345, 38.037361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493389, 35.906513, 38.111671>,  <32.275959, 35.997814, 38.156258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493389, 35.906513, 38.111671>,  <32.855774, 35.754345, 38.037361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493389, 35.906513, 38.111671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192947, -0.019576, 0.981014,
		0.376832, 0.924608, -0.055665,
		-0.905963, 0.380418, 0.185777,
		32.221600, 36.020638, 38.167404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967274, 36.200214, 38.536442>,  <32.855774, 35.754345, 38.037361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967274, 36.200214, 38.536442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573956, 36.128296, 38.547764>,  <32.337963, 36.085144, 38.554558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573956, 36.128296, 38.547764>,  <32.967274, 36.200214, 38.536442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573956, 36.128296, 38.547764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034690, -0.032484, 0.998870,
		-0.178677, 0.983167, 0.038179,
		-0.983296, -0.179799, 0.028302,
		32.278965, 36.074356, 38.556255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768368, 36.501205, 39.125477>,  <32.967274, 36.200214, 38.536442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768368, 36.501205, 39.125477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477982, 36.235729, 39.053371>,  <32.303749, 36.076443, 39.010109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477982, 36.235729, 39.053371>,  <32.768368, 36.501205, 39.125477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477982, 36.235729, 39.053371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087609, -0.170737, 0.981414,
		-0.682130, 0.728264, 0.065804,
		-0.725964, -0.663687, -0.180268,
		32.260193, 36.036625, 38.999290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294632, 36.673965, 39.578590>,  <32.768368, 36.501205, 39.125477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294632, 36.673965, 39.578590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238033, 36.294819, 39.464375>,  <32.204075, 36.067333, 39.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238033, 36.294819, 39.464375>,  <32.294632, 36.673965, 39.578590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238033, 36.294819, 39.464375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140513, -0.266286, 0.953597,
		-0.979915, 0.175056, -0.095508,
		-0.141500, -0.947865, -0.285535,
		32.195583, 36.010460, 39.378716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839012, 36.467339, 40.062225>,  <32.294632, 36.673965, 39.578590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839012, 36.467339, 40.062225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940430, 36.114334, 39.903790>,  <32.001282, 35.902531, 39.808727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940430, 36.114334, 39.903790>,  <31.839012, 36.467339, 40.062225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940430, 36.114334, 39.903790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186152, -0.446330, 0.875292,
		-0.949243, -0.148192, -0.277446,
		0.253544, -0.882513, -0.396089,
		32.016495, 35.849579, 39.784962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367399, 36.017868, 40.212765>,  <31.839012, 36.467339, 40.062225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367399, 36.017868, 40.212765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678949, 35.777351, 40.141426>,  <31.865879, 35.633041, 40.098625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678949, 35.777351, 40.141426>,  <31.367399, 36.017868, 40.212765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678949, 35.777351, 40.141426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180123, -0.486832, 0.854722,
		-0.600759, -0.633597, -0.487487,
		0.778874, -0.601290, -0.178343,
		31.912611, 35.596966, 40.087925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093763, 35.363270, 40.278942>,  <31.367399, 36.017868, 40.212765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093763, 35.363270, 40.278942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485332, 35.331707, 40.354294>,  <31.720274, 35.312771, 40.399506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485332, 35.331707, 40.354294>,  <31.093763, 35.363270, 40.278942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485332, 35.331707, 40.354294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202501, -0.494974, 0.844982,
		0.026569, -0.865318, -0.500519,
		0.978922, -0.078905, 0.188379,
		31.779009, 35.308037, 40.410809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187992, 34.757004, 40.593967>,  <31.093763, 35.363270, 40.278942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187992, 34.757004, 40.593967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544065, 34.924789, 40.665096>,  <31.757710, 35.025463, 40.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544065, 34.924789, 40.665096>,  <31.187992, 34.757004, 40.593967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544065, 34.924789, 40.665096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032502, -0.330842, 0.943126,
		0.454443, -0.845334, -0.280876,
		0.890182, 0.419468, 0.177824,
		31.811121, 35.050629, 40.718445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455166, 34.210751, 40.824001>,  <31.187992, 34.757004, 40.593967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455166, 34.210751, 40.824001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650871, 34.542492, 40.931927>,  <31.768295, 34.741535, 40.996681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650871, 34.542492, 40.931927>,  <31.455166, 34.210751, 40.824001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650871, 34.542492, 40.931927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038163, -0.329435, 0.943406,
		0.871300, -0.451279, -0.192831,
		0.489265, 0.829349, 0.269815,
		31.797651, 34.791298, 41.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979897, 34.053600, 41.164867>,  <31.455166, 34.210751, 40.824001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979897, 34.053600, 41.164867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948215, 34.421982, 41.317482>,  <31.929207, 34.643009, 41.409050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948215, 34.421982, 41.317482>,  <31.979897, 34.053600, 41.164867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948215, 34.421982, 41.317482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129497, -0.369991, 0.919966,
		0.988412, 0.122272, -0.089956,
		-0.079203, 0.920954, 0.381538,
		31.924454, 34.698269, 41.431942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514801, 34.110878, 41.618416>,  <31.979897, 34.053600, 41.164867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514801, 34.110878, 41.618416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269688, 34.409790, 41.721230>,  <32.122620, 34.589138, 41.782917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269688, 34.409790, 41.721230>,  <32.514801, 34.110878, 41.618416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269688, 34.409790, 41.721230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025837, -0.306140, 0.951636,
		0.789830, 0.589786, 0.168289,
		-0.612781, 0.747283, 0.257037,
		32.085854, 34.633976, 41.798340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751678, 34.355438, 42.153591>,  <32.514801, 34.110878, 41.618416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751678, 34.355438, 42.153591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402241, 34.546658, 42.190025>,  <32.192577, 34.661388, 42.211887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402241, 34.546658, 42.190025>,  <32.751678, 34.355438, 42.153591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402241, 34.546658, 42.190025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014685, -0.212976, 0.976947,
		0.486429, 0.852120, 0.193076,
		-0.873597, 0.478051, 0.091084,
		32.140163, 34.690071, 42.217350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861885, 34.699718, 42.773888>,  <32.751678, 34.355438, 42.153591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861885, 34.699718, 42.773888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465054, 34.688217, 42.724968>,  <32.226955, 34.681316, 42.695614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465054, 34.688217, 42.724968>,  <32.861885, 34.699718, 42.773888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465054, 34.688217, 42.724968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103946, -0.358923, 0.927561,
		-0.070569, 0.932924, 0.353090,
		-0.992076, -0.028755, -0.122303,
		32.167431, 34.679592, 42.688278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517380, 35.144199, 43.283951>,  <32.861885, 34.699718, 42.773888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517380, 35.144199, 43.283951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287270, 34.841499, 43.159760>,  <32.149204, 34.659882, 43.085247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287270, 34.841499, 43.159760>,  <32.517380, 35.144199, 43.283951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287270, 34.841499, 43.159760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012865, -0.371156, 0.928482,
		-0.817859, 0.538126, 0.203781,
		-0.575274, -0.756745, -0.310476,
		32.114689, 34.614475, 43.066616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848665, 35.117496, 43.634541>,  <32.517380, 35.144199, 43.283951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848665, 35.117496, 43.634541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909510, 34.744022, 43.504868>,  <31.946016, 34.519939, 43.427063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909510, 34.744022, 43.504868>,  <31.848665, 35.117496, 43.634541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909510, 34.744022, 43.504868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209991, -0.351041, 0.912510,
		-0.965798, -0.070726, -0.249463,
		0.152110, -0.933685, -0.324183,
		31.955143, 34.463917, 43.407612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772608, 34.801437, 44.248150>,  <31.848665, 35.117496, 43.634541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772608, 34.801437, 44.248150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825165, 34.491650, 44.000622>,  <31.856699, 34.305779, 43.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825165, 34.491650, 44.000622>,  <31.772608, 34.801437, 44.248150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825165, 34.491650, 44.000622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096956, -0.631279, 0.769472,
		-0.986578, -0.041104, -0.158033,
		0.131391, -0.774466, -0.618820,
		31.864582, 34.259312, 43.814976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315056, 34.269657, 44.449493>,  <31.772608, 34.801437, 44.248150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315056, 34.269657, 44.449493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607265, 34.092869, 44.241264>,  <31.782591, 33.986797, 44.116325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607265, 34.092869, 44.241264>,  <31.315056, 34.269657, 44.449493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607265, 34.092869, 44.241264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102444, -0.682755, 0.723430,
		-0.675149, -0.581818, -0.453498,
		0.730533, -0.441965, -0.520565,
		31.826424, 33.960278, 44.085094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063662, 33.587120, 44.440266>,  <31.315056, 34.269657, 44.449493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063662, 33.587120, 44.440266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457541, 33.634705, 44.389320>,  <31.693867, 33.663254, 44.358753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457541, 33.634705, 44.389320>,  <31.063662, 33.587120, 44.440266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457541, 33.634705, 44.389320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173979, -0.628122, 0.758415,
		0.010220, -0.768968, -0.639206,
		0.984697, 0.118960, -0.127365,
		31.752949, 33.670391, 44.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382868, 32.852806, 44.552628>,  <31.063662, 33.587120, 44.440266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382868, 32.852806, 44.552628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681795, 33.114418, 44.599552>,  <31.861151, 33.271385, 44.627705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681795, 33.114418, 44.599552>,  <31.382868, 32.852806, 44.552628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681795, 33.114418, 44.599552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334922, -0.523244, 0.783609,
		0.573885, -0.546315, -0.610078,
		0.747317, 0.654030, 0.117308,
		31.905991, 33.310627, 44.634747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923611, 32.463562, 44.703568>,  <31.382868, 32.852806, 44.552628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923611, 32.463562, 44.703568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025707, 32.833199, 44.817337>,  <32.086967, 33.054981, 44.885601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025707, 32.833199, 44.817337>,  <31.923611, 32.463562, 44.703568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025707, 32.833199, 44.817337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282617, -0.352629, 0.892065,
		0.924651, -0.147310, -0.351171,
		0.255243, 0.924096, 0.284427,
		32.102280, 33.110428, 44.902664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576656, 32.328037, 45.218334>,  <31.923611, 32.463562, 44.703568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576656, 32.328037, 45.218334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427067, 32.693642, 45.281242>,  <32.337315, 32.913002, 45.318989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427067, 32.693642, 45.281242>,  <32.576656, 32.328037, 45.218334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427067, 32.693642, 45.281242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210531, -0.081488, 0.974185,
		0.903228, 0.397430, -0.161952,
		-0.373973, 0.914007, 0.157274,
		32.314877, 32.967842, 45.328423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019318, 32.780033, 45.570515>,  <32.576656, 32.328037, 45.218334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019318, 32.780033, 45.570515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655178, 32.913345, 45.668640>,  <32.436695, 32.993332, 45.727516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655178, 32.913345, 45.668640>,  <33.019318, 32.780033, 45.570515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655178, 32.913345, 45.668640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271051, 0.032265, 0.962024,
		0.312710, 0.942275, -0.119709,
		-0.910353, 0.333282, 0.245315,
		32.382072, 33.013329, 45.742233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135040, 33.073795, 46.162750>,  <33.019318, 32.780033, 45.570515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135040, 33.073795, 46.162750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735832, 33.048756, 46.160038>,  <32.496307, 33.033730, 46.158413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735832, 33.048756, 46.160038>,  <33.135040, 33.073795, 46.162750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735832, 33.048756, 46.160038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000462, -0.114932, 0.993373,
		-0.062966, 0.991399, 0.114733,
		-0.998016, -0.062602, -0.006778,
		32.436428, 33.029976, 46.158005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900787, 33.491783, 46.635624>,  <33.135040, 33.073795, 46.162750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900787, 33.491783, 46.635624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613625, 33.216305, 46.595016>,  <32.441326, 33.051018, 46.570652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613625, 33.216305, 46.595016>,  <32.900787, 33.491783, 46.635624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613625, 33.216305, 46.595016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154986, 0.015956, 0.987788,
		-0.678663, 0.724878, -0.118193,
		-0.717911, -0.688693, -0.101517,
		32.398251, 33.009697, 46.564560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495712, 33.693806, 47.209930>,  <32.900787, 33.491783, 46.635624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495712, 33.693806, 47.209930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376060, 33.326355, 47.106667>,  <32.304268, 33.105885, 47.044708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376060, 33.326355, 47.106667>,  <32.495712, 33.693806, 47.209930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376060, 33.326355, 47.106667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239185, -0.189722, 0.952259,
		-0.923749, 0.346595, -0.162970,
		-0.299129, -0.918628, -0.258156,
		32.286324, 33.050766, 47.029221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976151, 33.475796, 47.686466>,  <32.495712, 33.693806, 47.209930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976151, 33.475796, 47.686466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075348, 33.128128, 47.515335>,  <32.134865, 32.919525, 47.412655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075348, 33.128128, 47.515335>,  <31.976151, 33.475796, 47.686466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075348, 33.128128, 47.515335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287170, -0.487730, 0.824411,
		-0.925221, -0.081588, -0.370554,
		0.247992, -0.869174, -0.427828,
		32.149746, 32.867374, 47.386986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389746, 32.996136, 47.824661>,  <31.976151, 33.475796, 47.686466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389746, 32.996136, 47.824661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718391, 32.775803, 47.765961>,  <31.915579, 32.643604, 47.730740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718391, 32.775803, 47.765961>,  <31.389746, 32.996136, 47.824661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718391, 32.775803, 47.765961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165726, -0.477138, 0.863061,
		-0.545422, -0.684782, -0.483310,
		0.821614, -0.550830, -0.146755,
		31.964876, 32.610554, 47.721935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186754, 32.289875, 48.111790>,  <31.389746, 32.996136, 47.824661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186754, 32.289875, 48.111790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584528, 32.316128, 48.078823>,  <31.823193, 32.331879, 48.059044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584528, 32.316128, 48.078823>,  <31.186754, 32.289875, 48.111790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584528, 32.316128, 48.078823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104754, -0.532295, 0.840053,
		0.011261, -0.844011, -0.536207,
		0.994434, 0.065630, -0.082420,
		31.882858, 32.335815, 48.054096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371271, 31.691481, 48.167938>,  <31.186754, 32.289875, 48.111790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371271, 31.691481, 48.167938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683010, 31.917091, 48.277111>,  <31.870054, 32.052460, 48.342613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683010, 31.917091, 48.277111>,  <31.371271, 31.691481, 48.167938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683010, 31.917091, 48.277111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140822, -0.582097, 0.800832,
		0.610562, -0.585693, -0.533083,
		0.779348, 0.564027, 0.272928,
		31.916815, 32.086300, 48.358990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864582, 31.236609, 48.407661>,  <31.371271, 31.691481, 48.167938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864582, 31.236609, 48.407661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978235, 31.576591, 48.585129>,  <32.046429, 31.780581, 48.691608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978235, 31.576591, 48.585129>,  <31.864582, 31.236609, 48.407661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978235, 31.576591, 48.585129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016654, -0.458293, 0.888645,
		0.958640, -0.259884, -0.116061,
		0.284135, 0.849957, 0.443666,
		32.063477, 31.831579, 48.718227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428299, 31.106421, 48.798122>,  <31.864582, 31.236609, 48.407661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428299, 31.106421, 48.798122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265022, 31.441793, 48.942574>,  <32.167057, 31.643017, 49.029243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265022, 31.441793, 48.942574>,  <32.428299, 31.106421, 48.798122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265022, 31.441793, 48.942574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097682, -0.353200, 0.930434,
		0.907657, 0.415068, 0.062273,
		-0.408188, 0.838432, 0.361129,
		32.142567, 31.693323, 49.050911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435505, 31.019806, 49.467484>,  <32.428299, 31.106421, 48.798122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435505, 31.019806, 49.467484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215416, 31.353783, 49.472107>,  <32.083363, 31.554169, 49.474880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215416, 31.353783, 49.472107>,  <32.435505, 31.019806, 49.467484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215416, 31.353783, 49.472107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418448, -0.287677, 0.861477,
		0.722607, 0.469166, 0.507664,
		-0.550219, 0.834940, 0.011556,
		32.050350, 31.604265, 49.475574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558910, 31.281685, 50.149536>,  <32.435505, 31.019806, 49.467484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558910, 31.281685, 50.149536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199844, 31.375511, 50.000309>,  <31.984406, 31.431807, 49.910774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199844, 31.375511, 50.000309>,  <32.558910, 31.281685, 50.149536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199844, 31.375511, 50.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416520, -0.175158, 0.892094,
		0.143910, 0.956189, 0.254935,
		-0.897664, 0.234567, -0.373065,
		31.930546, 31.445881, 49.888390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276630, 31.764437, 50.518902>,  <32.558910, 31.281685, 50.149536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276630, 31.764437, 50.518902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939898, 31.621672, 50.356945>,  <31.737858, 31.536013, 50.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939898, 31.621672, 50.356945>,  <32.276630, 31.764437, 50.518902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939898, 31.621672, 50.356945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405595, -0.076629, 0.910835,
		-0.356113, 0.930990, -0.080253,
		-0.841829, -0.356911, -0.404894,
		31.687349, 31.514599, 50.235477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858900, 32.004513, 50.988396>,  <32.276630, 31.764437, 50.518902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858900, 32.004513, 50.988396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714918, 31.689213, 50.788757>,  <31.628529, 31.500032, 50.668976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714918, 31.689213, 50.788757>,  <31.858900, 32.004513, 50.988396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714918, 31.689213, 50.788757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341225, -0.386658, 0.856774,
		-0.868330, 0.478703, -0.129790,
		-0.359956, -0.788250, -0.499093,
		31.606932, 31.452738, 50.639030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560669, 31.629232, 51.468727>,  <31.858900, 32.004513, 50.988396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560669, 31.629232, 51.468727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441746, 31.401789, 51.161926>,  <31.370392, 31.265324, 50.977844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441746, 31.401789, 51.161926>,  <31.560669, 31.629232, 51.468727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441746, 31.401789, 51.161926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469552, -0.612393, 0.635999,
		-0.831341, 0.549236, -0.084921,
		-0.297309, -0.568607, -0.767003,
		31.352552, 31.231207, 50.931824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818104, 31.552664, 51.321060>,  <31.560669, 31.629232, 51.468727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818104, 31.552664, 51.321060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018871, 31.229698, 51.197021>,  <31.139332, 31.035919, 51.122597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018871, 31.229698, 51.197021>,  <30.818104, 31.552664, 51.321060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018871, 31.229698, 51.197021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667160, -0.589589, 0.455283,
		-0.550432, -0.021630, -0.834599,
		0.501918, -0.807414, -0.310098,
		31.169447, 30.987474, 51.103992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421549, 31.244175, 50.895287>,  <30.818104, 31.552664, 51.321060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421549, 31.244175, 50.895287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679722, 31.012856, 51.094883>,  <30.834625, 30.874063, 51.214642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679722, 31.012856, 51.094883>,  <30.421549, 31.244175, 50.895287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679722, 31.012856, 51.094883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762887, -0.455811, 0.458520,
		-0.037718, -0.676613, -0.735372,
		0.645431, -0.578300, 0.498987,
		30.873352, 30.839365, 51.244579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461744, 30.493649, 50.731892>,  <30.421549, 31.244175, 50.895287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461744, 30.493649, 50.731892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535770, 30.561760, 51.119038>,  <30.580187, 30.602627, 51.351326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535770, 30.561760, 51.119038>,  <30.461744, 30.493649, 50.731892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535770, 30.561760, 51.119038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833817, -0.494025, 0.246349,
		0.520096, -0.852610, 0.050555,
		0.185064, 0.170279, 0.967862,
		30.591290, 30.612843, 51.409397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485752, 29.868847, 51.121353>,  <30.461744, 30.493649, 50.731892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485752, 29.868847, 51.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377787, 30.165298, 51.367237>,  <30.313007, 30.343170, 51.514767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377787, 30.165298, 51.367237>,  <30.485752, 29.868847, 51.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377787, 30.165298, 51.367237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874111, -0.456342, 0.166380,
		0.403829, -0.492420, 0.771003,
		-0.269912, 0.741131, 0.614713,
		30.296812, 30.387638, 51.551651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242239, 29.569595, 51.673344>,  <30.485752, 29.868847, 51.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242239, 29.569595, 51.673344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083208, 29.936134, 51.654408>,  <29.987789, 30.156057, 51.643047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083208, 29.936134, 51.654408>,  <30.242239, 29.569595, 51.673344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083208, 29.936134, 51.654408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917236, -0.395515, 0.047403,
		0.024714, 0.062266, 0.997754,
		-0.397578, 0.916347, -0.047338,
		29.963934, 30.211039, 51.640205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774483, 28.973406, 51.802448>,  <30.242239, 29.569595, 51.673344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774483, 28.973406, 51.802448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579121, 29.121325, 52.118603>,  <29.461903, 29.210075, 52.308296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579121, 29.121325, 52.118603>,  <29.774483, 28.973406, 51.802448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579121, 29.121325, 52.118603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486205, 0.636818, -0.598388,
		-0.724613, -0.676547, -0.131230,
		-0.488407, 0.369795, 0.790387,
		29.432598, 29.232264, 52.355721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220205, 28.328310, 51.582275>,  <29.774483, 28.973406, 51.802448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220205, 28.328310, 51.582275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307013, 28.084276, 51.277462>,  <30.359097, 27.937857, 51.094574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307013, 28.084276, 51.277462>,  <30.220205, 28.328310, 51.582275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307013, 28.084276, 51.277462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669164, 0.475387, -0.571163,
		0.710720, 0.633882, -0.305076,
		0.217020, -0.610083, -0.762038,
		30.372118, 27.901251, 51.048851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542339, 28.635004, 51.116306>,  <30.220205, 28.328310, 51.582275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542339, 28.635004, 51.116306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374825, 28.363750, 50.874729>,  <30.274315, 28.200998, 50.729782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374825, 28.363750, 50.874729>,  <30.542339, 28.635004, 51.116306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374825, 28.363750, 50.874729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280755, 0.729181, -0.624077,
		0.863594, -0.091794, -0.495761,
		-0.418786, -0.678136, -0.603945,
		30.249189, 28.160309, 50.693546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927008, 28.649536, 50.462204>,  <30.542339, 28.635004, 51.116306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927008, 28.649536, 50.462204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547935, 28.538403, 50.399323>,  <30.320492, 28.471724, 50.361591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547935, 28.538403, 50.399323>,  <30.927008, 28.649536, 50.462204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547935, 28.538403, 50.399323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003386, 0.501184, -0.865334,
		0.319207, -0.819526, -0.475902,
		-0.947679, -0.277832, -0.157207,
		30.263632, 28.455053, 50.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870033, 28.347935, 49.780468>,  <30.927008, 28.649536, 50.462204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870033, 28.347935, 49.780468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544355, 28.553881, 49.887802>,  <30.348949, 28.677448, 49.952202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544355, 28.553881, 49.887802>,  <30.870033, 28.347935, 49.780468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544355, 28.553881, 49.887802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070028, 0.545885, -0.834929,
		-0.576353, -0.661004, -0.480511,
		-0.814195, 0.514863, 0.268334,
		30.300097, 28.708340, 49.968304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089825, 28.204206, 49.459160>,  <30.870033, 28.347935, 49.780468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089825, 28.204206, 49.459160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227514, 28.569817, 49.545017>,  <30.310127, 28.789183, 49.596531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227514, 28.569817, 49.545017>,  <30.089825, 28.204206, 49.459160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227514, 28.569817, 49.545017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118677, 0.269136, -0.955762,
		-0.931357, 0.303522, 0.201117,
		0.344223, 0.914024, 0.214641,
		30.330782, 28.844025, 49.609409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639366, 28.681129, 49.211746>,  <30.089825, 28.204206, 49.459160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639366, 28.681129, 49.211746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997128, 28.859404, 49.196728>,  <30.211784, 28.966368, 49.187717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997128, 28.859404, 49.196728>,  <29.639366, 28.681129, 49.211746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997128, 28.859404, 49.196728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088591, 0.094258, -0.991598,
		-0.438403, 0.890213, 0.123789,
		0.894402, 0.445686, -0.037542,
		30.265448, 28.993109, 49.185467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524794, 29.281694, 48.839760>,  <29.639366, 28.681129, 49.211746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524794, 29.281694, 48.839760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909563, 29.179211, 48.801689>,  <30.140425, 29.117720, 48.778847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909563, 29.179211, 48.801689>,  <29.524794, 29.281694, 48.839760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909563, 29.179211, 48.801689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066670, 0.117740, -0.990804,
		0.265060, 0.959424, 0.096175,
		0.961924, -0.256210, -0.095173,
		30.198141, 29.102348, 48.773136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830015, 29.724306, 48.432388>,  <29.524794, 29.281694, 48.839760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830015, 29.724306, 48.432388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117723, 29.448736, 48.396545>,  <30.290348, 29.283394, 48.375042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117723, 29.448736, 48.396545>,  <29.830015, 29.724306, 48.432388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117723, 29.448736, 48.396545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101695, 0.231998, -0.967386,
		0.687245, 0.686701, 0.236930,
		0.719272, -0.688926, -0.089605,
		30.333506, 29.242058, 48.369663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437325, 30.086573, 48.012379>,  <29.830015, 29.724306, 48.432388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437325, 30.086573, 48.012379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475666, 29.688482, 48.005058>,  <30.498671, 29.449627, 48.000668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475666, 29.688482, 48.005058>,  <30.437325, 30.086573, 48.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475666, 29.688482, 48.005058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250164, 0.041880, -0.967297,
		0.963447, 0.088144, 0.252985,
		0.095856, -0.995227, -0.018299,
		30.504423, 29.389914, 47.999569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073708, 30.002890, 47.732098>,  <30.437325, 30.086573, 48.012379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073708, 30.002890, 47.732098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868975, 29.665081, 47.669098>,  <30.746134, 29.462395, 47.631298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868975, 29.665081, 47.669098>,  <31.073708, 30.002890, 47.732098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868975, 29.665081, 47.669098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405166, -0.075636, -0.911109,
		0.757540, -0.530150, 0.380886,
		-0.511833, -0.844524, -0.157501,
		30.715425, 29.411724, 47.621849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584972, 29.560125, 47.539951>,  <31.073708, 30.002890, 47.732098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584972, 29.560125, 47.539951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251719, 29.381689, 47.409176>,  <31.051765, 29.274628, 47.330711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251719, 29.381689, 47.409176>,  <31.584972, 29.560125, 47.539951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251719, 29.381689, 47.409176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438258, -0.171900, -0.882259,
		0.337368, -0.878323, 0.338719,
		-0.833134, -0.446092, -0.326939,
		31.001778, 29.247862, 47.311092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766874, 28.901865, 47.175636>,  <31.584972, 29.560125, 47.539951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766874, 28.901865, 47.175636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405006, 28.979267, 47.023781>,  <31.187885, 29.025709, 46.932667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405006, 28.979267, 47.023781>,  <31.766874, 28.901865, 47.175636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405006, 28.979267, 47.023781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360992, -0.125326, -0.924109,
		-0.226400, -0.973062, 0.043525,
		-0.904670, 0.193506, -0.379641,
		31.133606, 29.037319, 46.909889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709457, 28.439093, 46.561951>,  <31.766874, 28.901865, 47.175636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709457, 28.439093, 46.561951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424576, 28.717283, 46.523842>,  <31.253647, 28.884197, 46.500977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424576, 28.717283, 46.523842>,  <31.709457, 28.439093, 46.561951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424576, 28.717283, 46.523842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132996, 0.000419, -0.991117,
		-0.689259, -0.718548, -0.092794,
		-0.712203, 0.695477, -0.095274,
		31.210915, 28.925926, 46.495258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310757, 28.216103, 45.927860>,  <31.709457, 28.439093, 46.561951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310757, 28.216103, 45.927860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242424, 28.605875, 45.986244>,  <31.201426, 28.839739, 46.021275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242424, 28.605875, 45.986244>,  <31.310757, 28.216103, 45.927860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242424, 28.605875, 45.986244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180289, 0.176554, -0.967639,
		-0.968666, -0.138987, -0.205839,
		-0.170831, 0.974429, 0.145964,
		31.191175, 28.898203, 46.030033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894796, 28.487011, 45.344521>,  <31.310757, 28.216103, 45.927860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894796, 28.487011, 45.344521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059898, 28.825958, 45.478146>,  <31.158958, 29.029327, 45.558323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059898, 28.825958, 45.478146>,  <30.894796, 28.487011, 45.344521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059898, 28.825958, 45.478146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165108, 0.291084, -0.942343,
		-0.895753, 0.444113, -0.019761,
		0.412754, 0.847369, 0.334066,
		31.183725, 29.080170, 45.578365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642500, 28.948751, 44.960529>,  <30.894796, 28.487011, 45.344521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642500, 28.948751, 44.960529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935589, 29.168535, 45.121136>,  <31.111443, 29.300406, 45.217499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935589, 29.168535, 45.121136>,  <30.642500, 28.948751, 44.960529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935589, 29.168535, 45.121136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158144, 0.436376, -0.885757,
		-0.661900, 0.712510, 0.232849,
		0.732720, 0.549459, 0.401516,
		31.155405, 29.333372, 45.241592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432837, 29.642660, 44.789280>,  <30.642500, 28.948751, 44.960529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432837, 29.642660, 44.789280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825577, 29.592491, 44.846188>,  <31.061220, 29.562389, 44.880333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825577, 29.592491, 44.846188>,  <30.432837, 29.642660, 44.789280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825577, 29.592491, 44.846188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172880, 0.283378, -0.943297,
		0.077997, 0.950771, 0.299918,
		0.981850, -0.125424, 0.142267,
		31.120132, 29.554865, 44.888866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653271, 30.229147, 44.477898>,  <30.432837, 29.642660, 44.789280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653271, 30.229147, 44.477898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974176, 29.992414, 44.509174>,  <31.166719, 29.850376, 44.527939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974176, 29.992414, 44.509174>,  <30.653271, 30.229147, 44.477898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974176, 29.992414, 44.509174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395938, 0.429487, -0.811649,
		0.446776, 0.682113, 0.578889,
		0.802262, -0.591829, 0.078190,
		31.214855, 29.814865, 44.532631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281124, 30.665836, 44.365490>,  <30.653271, 30.229147, 44.477898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281124, 30.665836, 44.365490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377031, 30.288904, 44.272091>,  <31.434576, 30.062744, 44.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377031, 30.288904, 44.272091>,  <31.281124, 30.665836, 44.365490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377031, 30.288904, 44.272091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221311, 0.287233, -0.931944,
		0.945268, 0.171776, 0.277418,
		0.239770, -0.942332, -0.233496,
		31.448961, 30.006205, 44.202042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873377, 30.724937, 43.925579>,  <31.281124, 30.665836, 44.365490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873377, 30.724937, 43.925579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727850, 30.360117, 43.849895>,  <31.640533, 30.141224, 43.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727850, 30.360117, 43.849895>,  <31.873377, 30.724937, 43.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727850, 30.360117, 43.849895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004390, 0.201448, -0.979490,
		0.931460, -0.357186, -0.069286,
		-0.363817, -0.912051, -0.189209,
		31.618706, 30.086502, 43.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134911, 30.652637, 43.326515>,  <31.873377, 30.724937, 43.925579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134911, 30.652637, 43.326515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856789, 30.365162, 43.324165>,  <31.689915, 30.192677, 43.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856789, 30.365162, 43.324165>,  <32.134911, 30.652637, 43.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856789, 30.365162, 43.324165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120489, 0.124615, -0.984862,
		0.708542, -0.684073, -0.173240,
		-0.695306, -0.718690, -0.005872,
		31.648197, 30.149555, 43.322403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311985, 30.155325, 42.793419>,  <32.134911, 30.652637, 43.326515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311985, 30.155325, 42.793419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919729, 30.096163, 42.844761>,  <31.684376, 30.060665, 42.875568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919729, 30.096163, 42.844761>,  <32.311985, 30.155325, 42.793419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919729, 30.096163, 42.844761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128085, -0.011401, -0.991698,
		0.148141, -0.988936, -0.007764,
		-0.980637, -0.147905, 0.128357,
		31.625538, 30.051792, 42.883266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060669, 29.646143, 42.250988>,  <32.311985, 30.155325, 42.793419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060669, 29.646143, 42.250988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752119, 29.863613, 42.383293>,  <31.566990, 29.994095, 42.462677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752119, 29.863613, 42.383293>,  <32.060669, 29.646143, 42.250988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752119, 29.863613, 42.383293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317993, 0.120920, -0.940350,
		-0.551240, -0.830540, 0.079610,
		-0.771372, 0.543674, 0.330762,
		31.520708, 30.026716, 42.482521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564484, 29.440269, 41.824982>,  <32.060669, 29.646143, 42.250988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564484, 29.440269, 41.824982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417747, 29.776304, 41.984821>,  <31.329706, 29.977926, 42.080727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417747, 29.776304, 41.984821>,  <31.564484, 29.440269, 41.824982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417747, 29.776304, 41.984821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521866, 0.169755, -0.835966,
		-0.770119, -0.515202, 0.376142,
		-0.366840, 0.840089, 0.399598,
		31.307695, 30.028332, 42.104702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028669, 29.630722, 41.475964>,  <31.564484, 29.440269, 41.824982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028669, 29.630722, 41.475964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074659, 29.978947, 41.667339>,  <31.102253, 30.187881, 41.782166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074659, 29.978947, 41.667339>,  <31.028669, 29.630722, 41.475964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074659, 29.978947, 41.667339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462779, 0.473113, -0.749666,
		-0.878986, -0.135216, 0.457275,
		0.114976, 0.870564, 0.478435,
		31.109152, 30.240116, 41.810871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460772, 29.910807, 41.503609>,  <31.028669, 29.630722, 41.475964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460772, 29.910807, 41.503609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682110, 30.242880, 41.530754>,  <30.814913, 30.442123, 41.547043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682110, 30.242880, 41.530754>,  <30.460772, 29.910807, 41.503609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682110, 30.242880, 41.530754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576364, 0.440440, -0.688344,
		-0.601342, 0.341777, 0.722202,
		0.553347, 0.830182, 0.067867,
		30.848114, 30.491934, 41.551113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973562, 30.464842, 41.385586>,  <30.460772, 29.910807, 41.503609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973562, 30.464842, 41.385586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327766, 30.638874, 41.320370>,  <30.540289, 30.743294, 41.281242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327766, 30.638874, 41.320370>,  <29.973562, 30.464842, 41.385586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327766, 30.638874, 41.320370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389007, 0.502369, -0.772205,
		-0.254065, 0.747216, 0.614100,
		0.885508, 0.435079, -0.163038,
		30.593418, 30.769398, 41.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729437, 31.131403, 41.021713>,  <29.973562, 30.464842, 41.385586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729437, 31.131403, 41.021713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125187, 31.106874, 40.968979>,  <30.362637, 31.092157, 40.937340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125187, 31.106874, 40.968979>,  <29.729437, 31.131403, 41.021713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125187, 31.106874, 40.968979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067848, 0.607235, -0.791620,
		0.128600, 0.792152, 0.596621,
		0.989373, -0.061323, -0.131837,
		30.421999, 31.088478, 40.929428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993780, 31.799400, 40.769924>,  <29.729437, 31.131403, 41.021713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993780, 31.799400, 40.769924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280781, 31.541000, 40.665710>,  <30.452980, 31.385962, 40.603180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280781, 31.541000, 40.665710>,  <29.993780, 31.799400, 40.769924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280781, 31.541000, 40.665710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196277, 0.546382, -0.814213,
		0.668332, 0.533061, 0.518824,
		0.717501, -0.645998, -0.260537,
		30.496031, 31.347200, 40.587551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583128, 32.234207, 40.546234>,  <29.993780, 31.799400, 40.769924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583128, 32.234207, 40.546234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620884, 31.866486, 40.393406>,  <30.643538, 31.645853, 40.301708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620884, 31.866486, 40.393406>,  <30.583128, 32.234207, 40.546234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620884, 31.866486, 40.393406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172220, 0.393072, -0.903236,
		0.980526, 0.019456, 0.195424,
		0.094390, -0.919302, -0.382066,
		30.649200, 31.590694, 40.278786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196791, 32.204216, 40.309418>,  <30.583128, 32.234207, 40.546234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196791, 32.204216, 40.309418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006243, 31.910986, 40.115234>,  <30.891914, 31.735048, 39.998726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006243, 31.910986, 40.115234>,  <31.196791, 32.204216, 40.309418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006243, 31.910986, 40.115234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214913, 0.438304, -0.872756,
		0.852575, -0.520087, -0.051248,
		-0.476371, -0.733076, -0.485460,
		30.863331, 31.691063, 39.969597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640394, 32.093697, 39.754330>,  <31.196791, 32.204216, 40.309418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640394, 32.093697, 39.754330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285198, 31.949080, 39.640656>,  <31.072081, 31.862310, 39.572453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285198, 31.949080, 39.640656>,  <31.640394, 32.093697, 39.754330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285198, 31.949080, 39.640656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130959, 0.393576, -0.909916,
		0.440821, -0.845213, -0.302144,
		-0.887990, -0.361542, -0.284185,
		31.018801, 31.840618, 39.555401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778675, 31.982132, 39.023750>,  <31.640394, 32.093697, 39.754330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778675, 31.982132, 39.023750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384544, 31.984106, 39.091995>,  <31.148066, 31.985291, 39.132942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384544, 31.984106, 39.091995>,  <31.778675, 31.982132, 39.023750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384544, 31.984106, 39.091995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153170, 0.415456, -0.896624,
		-0.075304, -0.909600, -0.408604,
		-0.985327, 0.004933, 0.170609,
		31.088947, 31.985586, 39.143177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586071, 31.567272, 38.513081>,  <31.778675, 31.982132, 39.023750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586071, 31.567272, 38.513081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304516, 31.818993, 38.644852>,  <31.135582, 31.970024, 38.723915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304516, 31.818993, 38.644852>,  <31.586071, 31.567272, 38.513081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304516, 31.818993, 38.644852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112710, 0.358954, -0.926525,
		-0.701311, -0.689300, -0.181735,
		-0.703888, 0.629299, 0.329430,
		31.093349, 32.007782, 38.743679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028099, 31.447720, 38.062424>,  <31.586071, 31.567272, 38.513081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028099, 31.447720, 38.062424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973446, 31.809969, 38.223011>,  <30.940655, 32.027317, 38.319363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973446, 31.809969, 38.223011>,  <31.028099, 31.447720, 38.062424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973446, 31.809969, 38.223011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073345, 0.394909, -0.915788,
		-0.987903, -0.154571, 0.012466,
		-0.136632, 0.905624, 0.401469,
		30.932457, 32.081657, 38.343452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681156, 31.865982, 37.601528>,  <31.028099, 31.447720, 38.062424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681156, 31.865982, 37.601528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826258, 32.151554, 37.841099>,  <30.913319, 32.322895, 37.984840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826258, 32.151554, 37.841099>,  <30.681156, 31.865982, 37.601528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826258, 32.151554, 37.841099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118320, 0.672792, -0.730309,
		-0.924343, 0.194058, 0.328530,
		0.362755, 0.713928, 0.598929,
		30.935083, 32.365734, 38.020779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284401, 32.497284, 37.466755>,  <30.681156, 31.865982, 37.601528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284401, 32.497284, 37.466755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598707, 32.641747, 37.667610>,  <30.787291, 32.728424, 37.788124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598707, 32.641747, 37.667610>,  <30.284401, 32.497284, 37.466755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598707, 32.641747, 37.667610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061222, 0.853252, -0.517892,
		-0.615489, 0.376199, 0.692566,
		0.785764, 0.361158, 0.502135,
		30.834436, 32.750095, 37.818253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046120, 33.140030, 37.634884>,  <30.284401, 32.497284, 37.466755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046120, 33.140030, 37.634884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445217, 33.113304, 37.632294>,  <30.684675, 33.097267, 37.630737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445217, 33.113304, 37.632294>,  <30.046120, 33.140030, 37.634884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445217, 33.113304, 37.632294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055457, 0.874745, -0.481399,
		0.037833, 0.479954, 0.876478,
		0.997744, -0.066819, -0.006477,
		30.744541, 33.093258, 37.630352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256826, 33.795162, 37.687313>,  <30.046120, 33.140030, 37.634884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256826, 33.795162, 37.687313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586569, 33.612438, 37.553593>,  <30.784414, 33.502804, 37.473358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586569, 33.612438, 37.553593>,  <30.256826, 33.795162, 37.687313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586569, 33.612438, 37.553593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123174, 0.721173, -0.681717,
		0.552505, 0.520801, 0.650772,
		0.824358, -0.456810, -0.334303,
		30.833876, 33.475395, 37.453300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711838, 34.321129, 37.676121>,  <30.256826, 33.795162, 37.687313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711838, 34.321129, 37.676121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838358, 34.055264, 37.405365>,  <30.914270, 33.895744, 37.242912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838358, 34.055264, 37.405365>,  <30.711838, 34.321129, 37.676121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838358, 34.055264, 37.405365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165690, 0.741263, -0.650442,
		0.934078, 0.093580, 0.344588,
		0.316299, -0.664659, -0.676893,
		30.933249, 33.855865, 37.202297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262054, 34.632572, 37.393959>,  <30.711838, 34.321129, 37.676121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262054, 34.632572, 37.393959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173668, 34.341854, 37.133823>,  <31.120636, 34.167423, 36.977741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173668, 34.341854, 37.133823>,  <31.262054, 34.632572, 37.393959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173668, 34.341854, 37.133823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096067, 0.647364, -0.756103,
		0.970539, -0.229549, -0.073225,
		-0.220966, -0.726792, -0.650344,
		31.107378, 34.123817, 36.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821980, 34.550854, 36.978836>,  <31.262054, 34.632572, 37.393959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821980, 34.550854, 36.978836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501583, 34.409927, 36.785221>,  <31.309345, 34.325371, 36.669052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501583, 34.409927, 36.785221>,  <31.821980, 34.550854, 36.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501583, 34.409927, 36.785221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363756, 0.355747, -0.860887,
		0.475497, -0.865632, -0.156792,
		-0.800989, -0.352315, -0.484036,
		31.261286, 34.304234, 36.640011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567074, 34.527283, 36.837975>,  <31.821980, 34.550854, 36.978836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567074, 34.527283, 36.837975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527889, 34.849537, 36.604275>,  <32.504379, 35.042889, 36.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527889, 34.849537, 36.604275>,  <32.567074, 34.527283, 36.837975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527889, 34.849537, 36.604275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721917, -0.346570, -0.598937,
		-0.685011, -0.480453, -0.547654,
		-0.097961, 0.805639, -0.584251,
		32.498501, 35.091228, 36.429001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496216, 33.812115, 36.726803>,  <32.567074, 34.527283, 36.837975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496216, 33.812115, 36.726803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808910, 33.697338, 36.505337>,  <32.996529, 33.628471, 36.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808910, 33.697338, 36.505337>,  <32.496216, 33.812115, 36.726803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808910, 33.697338, 36.505337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253850, -0.664530, 0.702823,
		-0.569598, -0.689973, -0.446650,
		0.781741, -0.286944, -0.553664,
		33.043434, 33.611256, 36.339237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586929, 32.974987, 36.763149>,  <32.496216, 33.812115, 36.726803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586929, 32.974987, 36.763149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938145, 33.125832, 36.645279>,  <33.148876, 33.216339, 36.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938145, 33.125832, 36.645279>,  <32.586929, 32.974987, 36.763149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938145, 33.125832, 36.645279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464897, -0.525877, 0.712267,
		0.113639, -0.762393, -0.637058,
		0.878041, 0.377108, -0.294674,
		33.201557, 33.238964, 36.556877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162483, 32.414803, 36.706192>,  <32.586929, 32.974987, 36.763149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162483, 32.414803, 36.706192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369900, 32.752842, 36.758232>,  <33.494350, 32.955666, 36.789455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369900, 32.752842, 36.758232>,  <33.162483, 32.414803, 36.706192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369900, 32.752842, 36.758232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563725, -0.452291, 0.691120,
		0.642909, -0.285030, -0.710934,
		0.518539, 0.845098, 0.130103,
		33.525463, 33.006371, 36.797264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897709, 32.204346, 36.768528>,  <33.162483, 32.414803, 36.706192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897709, 32.204346, 36.768528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837791, 32.554871, 36.951672>,  <33.801842, 32.765186, 37.061558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837791, 32.554871, 36.951672>,  <33.897709, 32.204346, 36.768528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837791, 32.554871, 36.951672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423463, -0.361597, 0.830618,
		0.893443, 0.318310, -0.316921,
		-0.149796, 0.876314, 0.457859,
		33.792854, 32.817764, 37.089027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365467, 32.223866, 37.292843>,  <33.897709, 32.204346, 36.768528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365467, 32.223866, 37.292843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146709, 32.531467, 37.425228>,  <34.015453, 32.716026, 37.504658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146709, 32.531467, 37.425228>,  <34.365467, 32.223866, 37.292843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146709, 32.531467, 37.425228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264216, -0.216580, 0.939831,
		0.794413, 0.601439, -0.084736,
		-0.546899, 0.769003, 0.330964,
		33.982639, 32.762169, 37.524517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766693, 32.607922, 37.845936>,  <34.365467, 32.223866, 37.292843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766693, 32.607922, 37.845936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374294, 32.670197, 37.892235>,  <34.138855, 32.707561, 37.920013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374294, 32.670197, 37.892235>,  <34.766693, 32.607922, 37.845936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374294, 32.670197, 37.892235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078442, -0.227377, 0.970642,
		0.177433, 0.961281, 0.210845,
		-0.981002, 0.155685, 0.115749,
		34.079994, 32.716904, 37.926960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737949, 33.095760, 38.415455>,  <34.766693, 32.607922, 37.845936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737949, 33.095760, 38.415455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374176, 32.930378, 38.397621>,  <34.155910, 32.831150, 38.386921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374176, 32.930378, 38.397621>,  <34.737949, 33.095760, 38.415455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374176, 32.930378, 38.397621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082600, -0.284678, 0.955058,
		-0.407562, 0.864879, 0.293047,
		-0.909434, -0.413451, -0.044585,
		34.101345, 32.806343, 38.384247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452515, 33.244339, 39.028538>,  <34.737949, 33.095760, 38.415455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452515, 33.244339, 39.028538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220184, 32.943855, 38.903107>,  <34.080788, 32.763565, 38.827847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220184, 32.943855, 38.903107>,  <34.452515, 33.244339, 39.028538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220184, 32.943855, 38.903107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079585, -0.330972, 0.940279,
		-0.810128, 0.571095, 0.132452,
		-0.580826, -0.751205, -0.313580,
		34.045937, 32.718494, 38.809032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000401, 33.202770, 39.473915>,  <34.452515, 33.244339, 39.028538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000401, 33.202770, 39.473915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965137, 32.836761, 39.316456>,  <33.943977, 32.617157, 39.221981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965137, 32.836761, 39.316456>,  <34.000401, 33.202770, 39.473915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965137, 32.836761, 39.316456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057442, -0.389862, 0.919080,
		-0.994449, 0.103638, -0.018191,
		-0.088160, -0.915023, -0.393651,
		33.938690, 32.562256, 39.198360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420727, 32.888718, 39.703503>,  <34.000401, 33.202770, 39.473915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420727, 32.888718, 39.703503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637730, 32.579823, 39.571236>,  <33.767929, 32.394485, 39.491875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637730, 32.579823, 39.571236>,  <33.420727, 32.888718, 39.703503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637730, 32.579823, 39.571236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234525, -0.517206, 0.823102,
		-0.806652, -0.368986, -0.461694,
		0.542504, -0.772236, -0.330669,
		33.800480, 32.348152, 39.472034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022449, 32.231125, 39.789349>,  <33.420727, 32.888718, 39.703503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022449, 32.231125, 39.789349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410881, 32.137482, 39.770573>,  <33.643940, 32.081295, 39.759308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410881, 32.137482, 39.770573>,  <33.022449, 32.231125, 39.789349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410881, 32.137482, 39.770573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137070, -0.707568, 0.693225,
		-0.195499, -0.666741, -0.719192,
		0.971078, -0.234104, -0.046938,
		33.702206, 32.067249, 39.756493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992279, 31.587025, 39.908047>,  <33.022449, 32.231125, 39.789349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992279, 31.587025, 39.908047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379509, 31.648968, 39.986889>,  <33.611847, 31.686134, 40.034195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379509, 31.648968, 39.986889>,  <32.992279, 31.587025, 39.908047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379509, 31.648968, 39.986889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079278, -0.556821, 0.826840,
		0.237797, -0.816069, -0.526767,
		0.968074, 0.154860, 0.197107,
		33.669930, 31.695425, 40.046021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306229, 30.909605, 39.974342>,  <32.992279, 31.587025, 39.908047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306229, 30.909605, 39.974342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532356, 31.157127, 40.192513>,  <33.668034, 31.305641, 40.323414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532356, 31.157127, 40.192513>,  <33.306229, 30.909605, 39.974342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532356, 31.157127, 40.192513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066022, -0.693049, 0.717861,
		0.822224, -0.369813, -0.432651,
		0.565322, 0.618807, 0.545425,
		33.701954, 31.342770, 40.356140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681221, 30.464411, 40.236324>,  <33.306229, 30.909605, 39.974342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681221, 30.464411, 40.236324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765133, 30.781933, 40.464664>,  <33.815479, 30.972446, 40.601669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765133, 30.781933, 40.464664>,  <33.681221, 30.464411, 40.236324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765133, 30.781933, 40.464664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267192, -0.608159, 0.747497,
		0.940532, -0.004286, -0.339679,
		0.209783, 0.793804, 0.570848,
		33.828068, 31.020073, 40.635918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376881, 30.415279, 40.564083>,  <33.681221, 30.464411, 40.236324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376881, 30.415279, 40.564083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139904, 30.646320, 40.788719>,  <33.997719, 30.784945, 40.923500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139904, 30.646320, 40.788719>,  <34.376881, 30.415279, 40.564083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139904, 30.646320, 40.788719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241566, -0.537657, 0.807819,
		0.768541, 0.614249, 0.179004,
		-0.592444, 0.577601, 0.561593,
		33.962170, 30.819601, 40.957195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791267, 30.511036, 41.149918>,  <34.376881, 30.415279, 40.564083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791267, 30.511036, 41.149918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422417, 30.624523, 41.255135>,  <34.201107, 30.692616, 41.318264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422417, 30.624523, 41.255135>,  <34.791267, 30.511036, 41.149918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422417, 30.624523, 41.255135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133471, -0.404858, 0.904586,
		0.363139, 0.869250, 0.335462,
		-0.922125, 0.283717, 0.263039,
		34.145779, 30.709639, 41.334045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857342, 30.930721, 41.824295>,  <34.791267, 30.511036, 41.149918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857342, 30.930721, 41.824295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476921, 30.811493, 41.791649>,  <34.248669, 30.739956, 41.772060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476921, 30.811493, 41.791649>,  <34.857342, 30.930721, 41.824295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476921, 30.811493, 41.791649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025698, -0.339457, 0.940271,
		-0.307970, 0.892146, 0.330500,
		-0.951049, -0.298069, -0.081616,
		34.191605, 30.722073, 41.767162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472126, 31.217213, 42.404022>,  <34.857342, 30.930721, 41.824295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472126, 31.217213, 42.404022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253574, 30.913244, 42.263172>,  <34.122444, 30.730864, 42.178661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253574, 30.913244, 42.263172>,  <34.472126, 31.217213, 42.404022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253574, 30.913244, 42.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070350, -0.377299, 0.923416,
		-0.834579, 0.529306, 0.152687,
		-0.546378, -0.759921, -0.352122,
		34.089661, 30.685268, 42.157536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046673, 31.194979, 42.841320>,  <34.472126, 31.217213, 42.404022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046673, 31.194979, 42.841320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037701, 30.841013, 42.655235>,  <34.032318, 30.628633, 42.543583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037701, 30.841013, 42.655235>,  <34.046673, 31.194979, 42.841320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037701, 30.841013, 42.655235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100604, -0.460968, 0.881696,
		-0.994674, 0.066580, -0.078686,
		-0.022432, -0.884916, -0.465211,
		34.030972, 30.575539, 42.515671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555496, 30.782377, 43.225273>,  <34.046673, 31.194979, 42.841320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555496, 30.782377, 43.225273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772160, 30.515965, 43.020134>,  <33.902157, 30.356117, 42.897049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772160, 30.515965, 43.020134>,  <33.555496, 30.782377, 43.225273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772160, 30.515965, 43.020134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098594, -0.656224, 0.748098,
		-0.834799, -0.354647, -0.421113,
		0.541655, -0.666030, -0.512849,
		33.934658, 30.316156, 42.866280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170120, 30.177076, 43.273731>,  <33.555496, 30.782377, 43.225273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170120, 30.177076, 43.273731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529484, 30.027712, 43.181282>,  <33.745102, 29.938093, 43.125813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529484, 30.027712, 43.181282>,  <33.170120, 30.177076, 43.273731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529484, 30.027712, 43.181282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103314, -0.691243, 0.715198,
		-0.426826, -0.618665, -0.659601,
		0.898413, -0.373412, -0.231124,
		33.799007, 29.915688, 43.111946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161709, 29.465681, 43.129471>,  <33.170120, 30.177076, 43.273731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161709, 29.465681, 43.129471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549465, 29.519600, 43.211555>,  <33.782120, 29.551950, 43.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549465, 29.519600, 43.211555>,  <33.161709, 29.465681, 43.129471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549465, 29.519600, 43.211555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021926, -0.784946, 0.619176,
		0.244546, -0.604723, -0.757963,
		0.969390, 0.134798, 0.205214,
		33.840282, 29.560040, 43.273121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510654, 28.729782, 43.278816>,  <33.161709, 29.465681, 43.129471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510654, 28.729782, 43.278816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714802, 29.030937, 43.445038>,  <33.837292, 29.211630, 43.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714802, 29.030937, 43.445038>,  <33.510654, 28.729782, 43.278816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714802, 29.030937, 43.445038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246147, -0.590903, 0.768274,
		0.823974, -0.289818, -0.486901,
		0.510371, 0.752887, 0.415550,
		33.867912, 29.256804, 43.569702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874645, 28.345196, 43.650154>,  <33.510654, 28.729782, 43.278816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874645, 28.345196, 43.650154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936802, 28.714762, 43.790005>,  <33.974098, 28.936501, 43.873913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936802, 28.714762, 43.790005>,  <33.874645, 28.345196, 43.650154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936802, 28.714762, 43.790005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161622, -0.372931, 0.913674,
		0.974541, -0.085475, -0.207277,
		0.155396, 0.923914, 0.349622,
		33.983421, 28.991936, 43.894890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474106, 28.387131, 44.100651>,  <33.874645, 28.345196, 43.650154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474106, 28.387131, 44.100651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262897, 28.710157, 44.205746>,  <34.136173, 28.903975, 44.268803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262897, 28.710157, 44.205746>,  <34.474106, 28.387131, 44.100651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262897, 28.710157, 44.205746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278825, -0.127373, 0.951858,
		0.802155, 0.575856, -0.157915,
		-0.528019, 0.807568, 0.262735,
		34.104492, 28.952427, 44.284565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856583, 28.727737, 44.625397>,  <34.474106, 28.387131, 44.100651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856583, 28.727737, 44.625397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490974, 28.882292, 44.674839>,  <34.271610, 28.975023, 44.704506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490974, 28.882292, 44.674839>,  <34.856583, 28.727737, 44.625397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490974, 28.882292, 44.674839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053244, -0.187795, 0.980764,
		0.402164, 0.903017, 0.151076,
		-0.914018, 0.386384, 0.123605,
		34.216770, 28.998207, 44.711922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839573, 29.201168, 45.212563>,  <34.856583, 28.727737, 44.625397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839573, 29.201168, 45.212563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452988, 29.106724, 45.172161>,  <34.221035, 29.050058, 45.147919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452988, 29.106724, 45.172161>,  <34.839573, 29.201168, 45.212563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452988, 29.106724, 45.172161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078687, -0.102120, 0.991655,
		-0.244452, 0.966346, 0.080116,
		-0.966463, -0.236108, -0.101002,
		34.163048, 29.035891, 45.141861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530285, 29.604767, 45.759544>,  <34.839573, 29.201168, 45.212563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530285, 29.604767, 45.759544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256271, 29.324898, 45.678364>,  <34.091866, 29.156977, 45.629654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256271, 29.324898, 45.678364>,  <34.530285, 29.604767, 45.759544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256271, 29.324898, 45.678364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218117, -0.068827, 0.973493,
		-0.695094, 0.711141, -0.105462,
		-0.685032, -0.699672, -0.202953,
		34.050762, 29.114996, 45.617477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824490, 29.858829, 45.991516>,  <34.530285, 29.604767, 45.759544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824490, 29.858829, 45.991516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833160, 29.459146, 45.978149>,  <33.838364, 29.219337, 45.970131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833160, 29.459146, 45.978149>,  <33.824490, 29.858829, 45.991516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833160, 29.459146, 45.978149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486026, -0.039742, 0.873040,
		-0.873675, -0.002687, -0.486502,
		0.021681, -0.999207, -0.033415,
		33.839664, 29.159384, 45.968124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195030, 29.642488, 46.273396>,  <33.824490, 29.858829, 45.991516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195030, 29.642488, 46.273396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417625, 29.312944, 46.316433>,  <33.551182, 29.115219, 46.342255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417625, 29.312944, 46.316433>,  <33.195030, 29.642488, 46.273396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417625, 29.312944, 46.316433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337074, -0.105500, 0.935548,
		-0.759408, -0.556891, -0.336411,
		0.556490, -0.823858, 0.107596,
		33.584572, 29.065786, 46.348713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777119, 29.223822, 46.608776>,  <33.195030, 29.642488, 46.273396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777119, 29.223822, 46.608776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127781, 29.041773, 46.671181>,  <33.338177, 28.932545, 46.708622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127781, 29.041773, 46.671181>,  <32.777119, 29.223822, 46.608776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127781, 29.041773, 46.671181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291075, -0.243531, 0.925185,
		-0.383078, -0.856480, -0.345967,
		0.876656, -0.455121, 0.156009,
		33.390778, 28.905237, 46.717983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628506, 28.514664, 46.762352>,  <32.777119, 29.223822, 46.608776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628506, 28.514664, 46.762352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992481, 28.587198, 46.911549>,  <33.210869, 28.630718, 47.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992481, 28.587198, 46.911549>,  <32.628506, 28.514664, 46.762352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992481, 28.587198, 46.911549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255755, -0.462646, 0.848851,
		0.326493, -0.867799, -0.374603,
		0.909940, 0.181337, 0.372994,
		33.265465, 28.641600, 47.023445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880608, 27.949018, 47.003819>,  <32.628506, 28.514664, 46.762352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880608, 27.949018, 47.003819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105721, 28.217691, 47.196537>,  <33.240788, 28.378895, 47.312168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105721, 28.217691, 47.196537>,  <32.880608, 27.949018, 47.003819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105721, 28.217691, 47.196537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069536, -0.542321, 0.837289,
		0.823678, -0.504709, -0.258500,
		0.562778, 0.671681, 0.481794,
		33.274555, 28.419195, 47.341076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326992, 27.532469, 47.455727>,  <32.880608, 27.949018, 47.003819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326992, 27.532469, 47.455727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367748, 27.895346, 47.619003>,  <33.392200, 28.113071, 47.716969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367748, 27.895346, 47.619003>,  <33.326992, 27.532469, 47.455727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367748, 27.895346, 47.619003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047635, -0.414303, 0.908892,
		0.993654, -0.073165, -0.085428,
		0.101892, 0.907193, 0.408189,
		33.398315, 28.167503, 47.741459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972630, 27.448231, 47.961170>,  <33.326992, 27.532469, 47.455727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972630, 27.448231, 47.961170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740288, 27.757849, 48.061939>,  <33.600883, 27.943619, 48.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740288, 27.757849, 48.061939>,  <33.972630, 27.448231, 47.961170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740288, 27.757849, 48.061939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031641, -0.287779, 0.957174,
		0.813393, 0.563949, 0.142666,
		-0.580854, 0.774044, 0.251922,
		33.566032, 27.990063, 48.137516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298817, 27.784201, 48.531654>,  <33.972630, 27.448231, 47.961170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298817, 27.784201, 48.531654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917576, 27.905256, 48.531349>,  <33.688831, 27.977890, 48.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917576, 27.905256, 48.531349>,  <34.298817, 27.784201, 48.531654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917576, 27.905256, 48.531349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077955, -0.243060, 0.966874,
		0.292430, 0.921591, 0.255254,
		-0.953104, 0.302641, -0.000764,
		33.631645, 27.996048, 48.531120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262070, 28.085588, 49.125099>,  <34.298817, 27.784201, 48.531654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262070, 28.085588, 49.125099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872509, 28.027637, 49.055210>,  <33.638771, 27.992867, 49.013275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872509, 28.027637, 49.055210>,  <34.262070, 28.085588, 49.125099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872509, 28.027637, 49.055210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128816, -0.281007, 0.951021,
		-0.186882, 0.948707, 0.255010,
		-0.973900, -0.144879, -0.174724,
		33.580338, 27.984173, 49.002792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904671, 28.507036, 49.651360>,  <34.262070, 28.085588, 49.125099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904671, 28.507036, 49.651360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683826, 28.198269, 49.525307>,  <33.551319, 28.013008, 49.449673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683826, 28.198269, 49.525307>,  <33.904671, 28.507036, 49.651360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683826, 28.198269, 49.525307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219687, -0.229923, 0.948089,
		-0.804306, 0.592684, -0.042637,
		-0.552114, -0.771920, -0.315134,
		33.518192, 27.966692, 49.430767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142708, 28.771893, 50.257664>,  <33.904671, 28.507036, 49.651360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142708, 28.771893, 50.257664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446407, 28.977495, 50.417332>,  <34.628628, 29.100857, 50.513134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446407, 28.977495, 50.417332>,  <34.142708, 28.771893, 50.257664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446407, 28.977495, 50.417332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156418, 0.451245, -0.878585,
		-0.631720, 0.729504, 0.262209,
		0.759251, 0.514006, 0.399169,
		34.674183, 29.131697, 50.537083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073410, 29.511053, 50.175560>,  <34.142708, 28.771893, 50.257664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073410, 29.511053, 50.175560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464214, 29.451448, 50.236553>,  <34.698696, 29.415686, 50.273148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464214, 29.451448, 50.236553>,  <34.073410, 29.511053, 50.175560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464214, 29.451448, 50.236553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209689, 0.542392, -0.813536,
		0.038521, 0.826805, 0.561168,
		0.977009, -0.149010, 0.152479,
		34.757317, 29.406746, 50.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312416, 30.208527, 50.135323>,  <34.073410, 29.511053, 50.175560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312416, 30.208527, 50.135323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604301, 29.943451, 50.067966>,  <34.779434, 29.784405, 50.027554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604301, 29.943451, 50.067966>,  <34.312416, 30.208527, 50.135323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604301, 29.943451, 50.067966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278757, 0.513214, -0.811730,
		0.624346, 0.545392, 0.559231,
		0.729717, -0.662690, -0.168391,
		34.823215, 29.744644, 50.017448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908436, 30.592474, 49.913651>,  <34.312416, 30.208527, 50.135323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908436, 30.592474, 49.913651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994053, 30.216129, 49.808605>,  <35.045422, 29.990322, 49.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994053, 30.216129, 49.808605>,  <34.908436, 30.592474, 49.913651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994053, 30.216129, 49.808605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404308, 0.330066, -0.852989,
		0.889224, 0.076400, 0.451047,
		0.214044, -0.940861, -0.262614,
		35.058266, 29.933870, 49.729820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650757, 30.577353, 49.668995>,  <34.908436, 30.592474, 49.913651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650757, 30.577353, 49.668995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476357, 30.256586, 49.505611>,  <35.371716, 30.064127, 49.407581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476357, 30.256586, 49.505611>,  <35.650757, 30.577353, 49.668995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476357, 30.256586, 49.505611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211426, 0.349895, -0.912619,
		0.874760, -0.484258, 0.016993,
		-0.435997, -0.801915, -0.408459,
		35.345558, 30.016012, 49.383076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199474, 30.294172, 49.224468>,  <35.650757, 30.577353, 49.668995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199474, 30.294172, 49.224468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845116, 30.155548, 49.101128>,  <35.632500, 30.072372, 49.027122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845116, 30.155548, 49.101128>,  <36.199474, 30.294172, 49.224468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845116, 30.155548, 49.101128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264973, 0.167544, -0.949589,
		0.380754, -0.922943, -0.056597,
		-0.885898, -0.346563, -0.308348,
		35.579346, 30.051579, 49.008625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401623, 30.233126, 48.473892>,  <36.199474, 30.294172, 49.224468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401623, 30.233126, 48.473892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003315, 30.199265, 48.488224>,  <35.764332, 30.178947, 48.496822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003315, 30.199265, 48.488224>,  <36.401623, 30.233126, 48.473892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003315, 30.199265, 48.488224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055244, 0.239616, -0.969295,
		0.073466, -0.967170, -0.243278,
		-0.995767, -0.084650, 0.035827,
		35.704586, 30.173868, 48.498970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145950, 29.935879, 47.797558>,  <36.401623, 30.233126, 48.473892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145950, 29.935879, 47.797558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831917, 30.127808, 47.954227>,  <35.643497, 30.242966, 48.048229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831917, 30.127808, 47.954227>,  <36.145950, 29.935879, 47.797558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831917, 30.127808, 47.954227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260556, 0.317848, -0.911638,
		-0.561918, -0.817767, -0.124517,
		-0.785085, 0.479822, 0.391679,
		35.596390, 30.271755, 48.071732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663345, 29.615936, 47.354527>,  <36.145950, 29.935879, 47.797558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663345, 29.615936, 47.354527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520580, 29.959244, 47.502037>,  <35.434921, 30.165228, 47.590542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520580, 29.959244, 47.502037>,  <35.663345, 29.615936, 47.354527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520580, 29.959244, 47.502037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422160, 0.203967, -0.883277,
		-0.833305, -0.470930, 0.289528,
		-0.356908, 0.858267, 0.368774,
		35.413509, 30.216724, 47.612671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072380, 29.676767, 47.001606>,  <35.663345, 29.615936, 47.354527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072380, 29.676767, 47.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104851, 30.049921, 47.141972>,  <35.124332, 30.273813, 47.226189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104851, 30.049921, 47.141972>,  <35.072380, 29.676767, 47.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104851, 30.049921, 47.141972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382630, 0.354265, -0.853282,
		-0.920328, -0.065003, 0.385707,
		0.081177, 0.932883, 0.350912,
		35.129204, 30.329786, 47.247246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514538, 30.078373, 46.754276>,  <35.072380, 29.676767, 47.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514538, 30.078373, 46.754276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778534, 30.365810, 46.841949>,  <34.936932, 30.538273, 46.894554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778534, 30.365810, 46.841949>,  <34.514538, 30.078373, 46.754276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778534, 30.365810, 46.841949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191244, 0.442837, -0.875969,
		-0.726527, 0.536211, 0.429693,
		0.659988, 0.718591, 0.219186,
		34.976532, 30.581388, 46.907703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185249, 30.685970, 46.501850>,  <34.514538, 30.078373, 46.754276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185249, 30.685970, 46.501850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572453, 30.777971, 46.541962>,  <34.804775, 30.833172, 46.566029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572453, 30.777971, 46.541962>,  <34.185249, 30.685970, 46.501850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572453, 30.777971, 46.541962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036119, 0.523221, -0.851431,
		-0.248296, 0.820573, 0.514791,
		0.968011, 0.230001, 0.100275,
		34.862854, 30.846972, 46.572044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329247, 31.480793, 46.368580>,  <34.185249, 30.685970, 46.501850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329247, 31.480793, 46.368580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674694, 31.299046, 46.281200>,  <34.881962, 31.189997, 46.228775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674694, 31.299046, 46.281200>,  <34.329247, 31.480793, 46.368580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674694, 31.299046, 46.281200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011998, 0.451691, -0.892094,
		0.504010, 0.767804, 0.395538,
		0.863614, -0.454370, -0.218445,
		34.933777, 31.162735, 46.215668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782608, 32.044662, 45.981449>,  <34.329247, 31.480793, 46.368580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782608, 32.044662, 45.981449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930115, 31.678972, 45.914272>,  <35.018620, 31.459558, 45.873966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930115, 31.678972, 45.914272>,  <34.782608, 32.044662, 45.981449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930115, 31.678972, 45.914272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323864, 0.295724, -0.898699,
		0.871275, 0.277026, 0.405138,
		0.368772, -0.914223, -0.167938,
		35.040745, 31.404705, 45.863892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578636, 32.147121, 45.938236>,  <34.782608, 32.044662, 45.981449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578636, 32.147121, 45.938236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443478, 31.830841, 45.734032>,  <35.362381, 31.641073, 45.611511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443478, 31.830841, 45.734032>,  <35.578636, 32.147121, 45.938236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443478, 31.830841, 45.734032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437395, 0.348355, -0.829057,
		0.833372, -0.503432, 0.228138,
		-0.337901, -0.790699, -0.510508,
		35.342106, 31.593632, 45.580879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235260, 32.011269, 45.478241>,  <35.578636, 32.147121, 45.938236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235260, 32.011269, 45.478241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958691, 31.757494, 45.340015>,  <35.792747, 31.605228, 45.257080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958691, 31.757494, 45.340015>,  <36.235260, 32.011269, 45.478241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958691, 31.757494, 45.340015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448804, -0.002382, -0.893627,
		0.566130, -0.772968, 0.286387,
		-0.691427, -0.634440, -0.345563,
		35.751263, 31.567162, 45.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531719, 31.648783, 45.028507>,  <36.235260, 32.011269, 45.478241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531719, 31.648783, 45.028507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165104, 31.566305, 44.891426>,  <35.945133, 31.516819, 44.809177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165104, 31.566305, 44.891426>,  <36.531719, 31.648783, 45.028507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165104, 31.566305, 44.891426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348928, 0.006531, -0.937127,
		0.195471, -0.978489, 0.065961,
		-0.916537, -0.206196, -0.342699,
		35.890144, 31.504446, 44.788616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648861, 31.111109, 44.537922>,  <36.531719, 31.648783, 45.028507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648861, 31.111109, 44.537922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298153, 31.281876, 44.449364>,  <36.087730, 31.384336, 44.396229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298153, 31.281876, 44.449364>,  <36.648861, 31.111109, 44.537922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298153, 31.281876, 44.449364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269080, 0.053924, -0.961607,
		-0.398590, -0.902681, -0.162154,
		-0.876768, 0.426919, -0.221400,
		36.035122, 31.409950, 44.382942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374367, 30.762835, 43.887268>,  <36.648861, 31.111109, 44.537922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374367, 30.762835, 43.887268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187984, 31.114716, 43.925232>,  <36.076157, 31.325844, 43.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187984, 31.114716, 43.925232>,  <36.374367, 30.762835, 43.887268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187984, 31.114716, 43.925232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170023, 0.194288, -0.966098,
		-0.868320, -0.434020, -0.240099,
		-0.465954, 0.879704, 0.094910,
		36.048199, 31.378626, 43.953705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977036, 30.810549, 43.267719>,  <36.374367, 30.762835, 43.887268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977036, 30.810549, 43.267719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973228, 31.188505, 43.398617>,  <35.970943, 31.415279, 43.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973228, 31.188505, 43.398617>,  <35.977036, 30.810549, 43.267719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973228, 31.188505, 43.398617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102421, 0.324617, -0.940284,
		-0.994696, -0.042469, 0.093686,
		-0.009521, 0.944891, 0.327245,
		35.970371, 31.471973, 43.496792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313099, 31.083614, 42.982140>,  <35.977036, 30.810549, 43.267719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313099, 31.083614, 42.982140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556454, 31.393948, 43.049011>,  <35.702465, 31.580147, 43.089134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556454, 31.393948, 43.049011>,  <35.313099, 31.083614, 42.982140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556454, 31.393948, 43.049011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339744, 0.444967, -0.828600,
		-0.717243, 0.447313, 0.534297,
		0.608388, 0.775832, 0.167177,
		35.738972, 31.626698, 43.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893990, 31.724319, 42.893826>,  <35.313099, 31.083614, 42.982140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893990, 31.724319, 42.893826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273945, 31.843811, 42.857021>,  <35.501919, 31.915506, 42.834938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273945, 31.843811, 42.857021>,  <34.893990, 31.724319, 42.893826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273945, 31.843811, 42.857021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280143, 0.683028, -0.674532,
		-0.138654, 0.666509, 0.732489,
		0.949892, 0.298728, -0.092013,
		35.558914, 31.933430, 42.829418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850204, 32.435970, 42.661945>,  <34.893990, 31.724319, 42.893826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850204, 32.435970, 42.661945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232117, 32.352451, 42.577278>,  <35.461266, 32.302341, 42.526478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232117, 32.352451, 42.577278>,  <34.850204, 32.435970, 42.661945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232117, 32.352451, 42.577278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075252, 0.519025, -0.851440,
		0.287636, 0.828865, 0.479842,
		0.954779, -0.208796, -0.211663,
		35.518551, 32.289814, 42.513779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170273, 33.076904, 42.425835>,  <34.850204, 32.435970, 42.661945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170273, 33.076904, 42.425835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444656, 32.824547, 42.280819>,  <35.609287, 32.673134, 42.193810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444656, 32.824547, 42.280819>,  <35.170273, 33.076904, 42.425835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444656, 32.824547, 42.280819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005620, 0.502821, -0.864372,
		0.727622, 0.590884, 0.348459,
		0.685956, -0.630894, -0.362543,
		35.650444, 32.635277, 42.172054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786819, 33.427166, 42.304398>,  <35.170273, 33.076904, 42.425835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786819, 33.427166, 42.304398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825359, 33.093502, 42.087181>,  <35.848484, 32.893303, 41.956852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825359, 33.093502, 42.087181>,  <35.786819, 33.427166, 42.304398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825359, 33.093502, 42.087181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299069, 0.544631, -0.783540,
		0.949355, -0.086909, 0.301948,
		0.096354, -0.834161, -0.543039,
		35.854267, 32.843254, 41.924271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439461, 33.417915, 42.042511>,  <35.786819, 33.427166, 42.304398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439461, 33.417915, 42.042511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224083, 33.185257, 41.798618>,  <36.094856, 33.045662, 41.652283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224083, 33.185257, 41.798618>,  <36.439461, 33.417915, 42.042511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224083, 33.185257, 41.798618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302254, 0.542120, -0.784059,
		0.786590, -0.606464, -0.116096,
		-0.538441, -0.581643, -0.609732,
		36.062550, 33.010765, 41.615700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893326, 33.254139, 41.545376>,  <36.439461, 33.417915, 42.042511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893326, 33.254139, 41.545376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546692, 33.158287, 41.370285>,  <36.338711, 33.100777, 41.265232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546692, 33.158287, 41.370285>,  <36.893326, 33.254139, 41.545376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546692, 33.158287, 41.370285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310424, 0.427935, -0.848828,
		0.390717, -0.871466, -0.296459,
		-0.866589, -0.239624, -0.437726,
		36.286716, 33.086399, 41.238968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052696, 32.722683, 41.082329>,  <36.893326, 33.254139, 41.545376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052696, 32.722683, 41.082329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707806, 32.890091, 40.968197>,  <36.500874, 32.990536, 40.899715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707806, 32.890091, 40.968197>,  <37.052696, 32.722683, 41.082329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707806, 32.890091, 40.968197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411103, 0.249109, -0.876892,
		-0.295915, -0.873378, -0.386841,
		-0.862223, 0.418517, -0.285333,
		36.449139, 33.015644, 40.882595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954494, 32.480480, 40.462284>,  <37.052696, 32.722683, 41.082329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954494, 32.480480, 40.462284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719402, 32.803547, 40.481262>,  <36.578346, 32.997387, 40.492649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719402, 32.803547, 40.481262>,  <36.954494, 32.480480, 40.462284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719402, 32.803547, 40.481262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325949, 0.290052, -0.899792,
		-0.740493, -0.513370, -0.433730,
		-0.587731, 0.807664, 0.047449,
		36.543083, 33.045845, 40.495499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530872, 32.472237, 39.858646>,  <36.954494, 32.480480, 40.462284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530872, 32.472237, 39.858646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531887, 32.850468, 39.988800>,  <36.532494, 33.077408, 40.066895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531887, 32.850468, 39.988800>,  <36.530872, 32.472237, 39.858646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531887, 32.850468, 39.988800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213773, 0.317355, -0.923898,
		-0.976880, 0.071899, -0.201336,
		0.002533, 0.945577, 0.325388,
		36.532646, 33.134140, 40.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194813, 32.804596, 39.343243>,  <36.530872, 32.472237, 39.858646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194813, 32.804596, 39.343243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388374, 33.098351, 39.533615>,  <36.504509, 33.274605, 39.647839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388374, 33.098351, 39.533615>,  <36.194813, 32.804596, 39.343243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388374, 33.098351, 39.533615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372080, 0.319588, -0.871447,
		-0.792083, 0.598781, -0.118601,
		0.483902, 0.734388, 0.475935,
		36.533546, 33.318668, 39.676395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972729, 33.407063, 38.999756>,  <36.194813, 32.804596, 39.343243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972729, 33.407063, 38.999756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299389, 33.509754, 39.206512>,  <36.495384, 33.571369, 39.330566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299389, 33.509754, 39.206512>,  <35.972729, 33.407063, 38.999756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299389, 33.509754, 39.206512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372575, 0.449486, -0.811880,
		-0.440769, 0.855601, 0.271421,
		0.816646, 0.256726, 0.516895,
		36.544384, 33.586773, 39.361580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973206, 34.099949, 38.892105>,  <35.972729, 33.407063, 38.999756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973206, 34.099949, 38.892105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331089, 33.937729, 38.966976>,  <36.545818, 33.840397, 39.011898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331089, 33.937729, 38.966976>,  <35.973206, 34.099949, 38.892105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331089, 33.937729, 38.966976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321832, 0.294746, -0.899749,
		0.309722, 0.865249, 0.394229,
		0.894704, -0.405548, 0.187175,
		36.599499, 33.816063, 39.023129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366550, 34.572716, 38.537086>,  <35.973206, 34.099949, 38.892105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366550, 34.572716, 38.537086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601105, 34.258865, 38.617599>,  <36.741837, 34.070553, 38.665905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601105, 34.258865, 38.617599>,  <36.366550, 34.572716, 38.537086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601105, 34.258865, 38.617599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600439, 0.254235, -0.758180,
		0.543718, 0.565439, 0.620201,
		0.586382, -0.784629, 0.201279,
		36.777020, 34.023476, 38.677982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076843, 34.818672, 38.735950>,  <36.366550, 34.572716, 38.537086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076843, 34.818672, 38.735950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078255, 34.464111, 38.550789>,  <37.079102, 34.251373, 38.439693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078255, 34.464111, 38.550789>,  <37.076843, 34.818672, 38.735950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078255, 34.464111, 38.550789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524160, 0.395857, -0.754025,
		0.851612, -0.239976, 0.466013,
		0.003527, -0.886402, -0.462903,
		37.079311, 34.198189, 38.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488194, 34.932774, 38.168312>,  <37.076843, 34.818672, 38.735950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488194, 34.932774, 38.168312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391678, 34.554333, 38.081898>,  <37.333767, 34.327271, 38.030048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391678, 34.554333, 38.081898>,  <37.488194, 34.932774, 38.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391678, 34.554333, 38.081898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566859, 0.043281, -0.822677,
		0.787686, -0.320969, 0.525862,
		-0.241294, -0.946100, -0.216036,
		37.319290, 34.270504, 38.017086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112637, 34.572029, 37.924843>,  <37.488194, 34.932774, 38.168312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112637, 34.572029, 37.924843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791378, 34.370781, 37.797203>,  <37.598621, 34.250031, 37.720619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791378, 34.370781, 37.797203>,  <38.112637, 34.572029, 37.924843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791378, 34.370781, 37.797203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502748, -0.284929, -0.816125,
		0.319687, -0.815896, 0.481782,
		-0.803147, -0.503120, -0.319102,
		37.550434, 34.219845, 37.701473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272976, 33.845364, 37.861195>,  <38.112637, 34.572029, 37.924843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272976, 33.845364, 37.861195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976063, 33.933136, 37.607937>,  <37.797916, 33.985798, 37.455982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976063, 33.933136, 37.607937>,  <38.272976, 33.845364, 37.861195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976063, 33.933136, 37.607937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587883, -0.240199, -0.772462,
		-0.321580, -0.945598, 0.049298,
		-0.742280, 0.219427, -0.633144,
		37.753380, 33.998962, 37.417995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356247, 33.371975, 37.291977>,  <38.272976, 33.845364, 37.861195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356247, 33.371975, 37.291977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106598, 33.642761, 37.135929>,  <37.956806, 33.805233, 37.042301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106598, 33.642761, 37.135929>,  <38.356247, 33.371975, 37.291977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106598, 33.642761, 37.135929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392531, -0.160043, -0.905707,
		-0.675564, -0.718408, -0.165841,
		-0.624126, 0.676961, -0.390117,
		37.919361, 33.845848, 37.018894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185993, 33.125694, 36.704594>,  <38.356247, 33.371975, 37.291977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185993, 33.125694, 36.704594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097290, 33.512585, 36.655113>,  <38.044067, 33.744717, 36.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097290, 33.512585, 36.655113>,  <38.185993, 33.125694, 36.704594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097290, 33.512585, 36.655113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533563, 0.014176, -0.845641,
		-0.816171, -0.253527, -0.519219,
		-0.221754, 0.967224, -0.123703,
		38.030766, 33.802753, 36.618004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988853, 33.120922, 36.049622>,  <38.185993, 33.125694, 36.704594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988853, 33.120922, 36.049622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112488, 33.487614, 36.150871>,  <38.186668, 33.707630, 36.211620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112488, 33.487614, 36.150871>,  <37.988853, 33.120922, 36.049622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112488, 33.487614, 36.150871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630526, 0.001727, -0.776166,
		-0.711971, 0.399507, -0.577487,
		0.309086, 0.916729, 0.253129,
		38.205215, 33.762630, 36.226810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954975, 33.737797, 35.504715>,  <37.988853, 33.120922, 36.049622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954975, 33.737797, 35.504715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263466, 33.780396, 35.755753>,  <38.448559, 33.805954, 35.906376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263466, 33.780396, 35.755753>,  <37.954975, 33.737797, 35.504715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263466, 33.780396, 35.755753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635144, -0.062979, -0.769822,
		-0.042455, 0.992317, -0.116209,
		0.771226, 0.106492, 0.627591,
		38.494835, 33.812344, 35.944031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383888, 34.182236, 35.250965>,  <37.954975, 33.737797, 35.504715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383888, 34.182236, 35.250965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638954, 33.951134, 35.454762>,  <38.791992, 33.812473, 35.577042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638954, 33.951134, 35.454762>,  <38.383888, 34.182236, 35.250965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638954, 33.951134, 35.454762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691349, 0.137526, -0.709311,
		0.339740, 0.804541, 0.487126,
		0.637662, -0.577755, 0.509496,
		38.830254, 33.777805, 35.607609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018314, 34.564983, 35.277294>,  <38.383888, 34.182236, 35.250965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018314, 34.564983, 35.277294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078152, 34.174133, 35.337765>,  <39.114052, 33.939625, 35.374046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078152, 34.174133, 35.337765>,  <39.018314, 34.564983, 35.277294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078152, 34.174133, 35.337765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677155, -0.010167, -0.735770,
		0.720475, 0.212432, 0.660143,
		0.149589, -0.977123, 0.151175,
		39.123028, 33.880997, 35.383118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347607, 34.986885, 34.817772>,  <39.018314, 34.564983, 35.277294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347607, 34.986885, 34.817772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668213, 34.765682, 34.908768>,  <39.860577, 34.632961, 34.963364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668213, 34.765682, 34.908768>,  <39.347607, 34.986885, 34.817772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668213, 34.765682, 34.908768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085433, -0.270624, -0.958887,
		0.591837, 0.787999, -0.169665,
		0.801517, -0.553010, 0.227486,
		39.908669, 34.599781, 34.977013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766163, 35.213608, 34.240879>,  <39.347607, 34.986885, 34.817772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766163, 35.213608, 34.240879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816376, 34.847488, 34.393963>,  <39.846504, 34.627815, 34.485813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816376, 34.847488, 34.393963>,  <39.766163, 35.213608, 34.240879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816376, 34.847488, 34.393963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077938, -0.375466, -0.923554,
		0.989023, 0.145767, 0.024202,
		0.125536, -0.915302, 0.382705,
		39.854038, 34.572899, 34.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263287, 34.812603, 33.855824>,  <39.766163, 35.213608, 34.240879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263287, 34.812603, 33.855824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038525, 34.536240, 34.037769>,  <39.903667, 34.370422, 34.146938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038525, 34.536240, 34.037769>,  <40.263287, 34.812603, 33.855824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038525, 34.536240, 34.037769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133885, -0.618601, -0.774214,
		0.816293, -0.374137, 0.440099,
		-0.561908, -0.690908, 0.454868,
		39.869953, 34.328968, 34.174229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804981, 34.637772, 34.305325>,  <40.263287, 34.812603, 33.855824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804981, 34.637772, 34.305325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200840, 34.612762, 34.356991>,  <41.438354, 34.597755, 34.387993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200840, 34.612762, 34.356991>,  <40.804981, 34.637772, 34.305325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200840, 34.612762, 34.356991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127654, 0.794779, -0.593322,
		-0.065562, 0.603670, 0.794534,
		0.989649, -0.062526, 0.129169,
		41.497734, 34.594006, 34.395741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128403, 35.413261, 34.474552>,  <40.804981, 34.637772, 34.305325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128403, 35.413261, 34.474552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427151, 35.181725, 34.343636>,  <41.606400, 35.042801, 34.265083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427151, 35.181725, 34.343636>,  <41.128403, 35.413261, 34.474552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427151, 35.181725, 34.343636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165566, 0.638572, -0.751541,
		0.644024, 0.507118, 0.572769,
		0.746874, -0.578841, -0.327294,
		41.651215, 35.008072, 34.245449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673229, 35.782490, 34.482681>,  <41.128403, 35.413261, 34.474552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673229, 35.782490, 34.482681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766350, 35.500263, 34.214958>,  <41.822224, 35.330925, 34.054325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766350, 35.500263, 34.214958>,  <41.673229, 35.782490, 34.482681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766350, 35.500263, 34.214958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415105, 0.694470, -0.587706,
		0.879483, -0.141014, 0.454560,
		0.232804, -0.705568, -0.669310,
		41.836189, 35.288593, 34.014164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397110, 35.862267, 34.240730>,  <41.673229, 35.782490, 34.482681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397110, 35.862267, 34.240730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204514, 35.666100, 33.950172>,  <42.088955, 35.548401, 33.775837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204514, 35.666100, 33.950172>,  <42.397110, 35.862267, 34.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204514, 35.666100, 33.950172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212686, 0.738643, -0.639664,
		0.850253, -0.462488, -0.251346,
		-0.481492, -0.490419, -0.726399,
		42.060066, 35.518974, 33.732254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828690, 36.010002, 33.674622>,  <42.397110, 35.862267, 34.240730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828690, 36.010002, 33.674622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481812, 35.893040, 33.513390>,  <42.273685, 35.822865, 33.416649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481812, 35.893040, 33.513390>,  <42.828690, 36.010002, 33.674622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481812, 35.893040, 33.513390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133616, 0.643136, -0.754004,
		0.479709, -0.707727, -0.518655,
		-0.867194, -0.292402, -0.403082,
		42.221653, 35.805317, 33.392464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903648, 35.826294, 32.955807>,  <42.828690, 36.010002, 33.674622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903648, 35.826294, 32.955807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508835, 35.885559, 32.980495>,  <42.271946, 35.921120, 32.995308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508835, 35.885559, 32.980495>,  <42.903648, 35.826294, 32.955807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508835, 35.885559, 32.980495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028161, 0.538449, -0.842187,
		-0.158018, -0.829530, -0.535641,
		-0.987034, 0.148165, 0.061724,
		42.212723, 35.930008, 32.999012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711002, 35.887581, 32.274078>,  <42.903648, 35.826294, 32.955807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711002, 35.887581, 32.274078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427387, 36.062859, 32.495079>,  <42.257217, 36.168026, 32.627682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427387, 36.062859, 32.495079>,  <42.711002, 35.887581, 32.274078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427387, 36.062859, 32.495079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103670, 0.710213, -0.696311,
		-0.697513, -0.550986, -0.458138,
		-0.709033, 0.438191, 0.552504,
		42.214676, 36.194317, 32.660831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238106, 36.024185, 31.819170>,  <42.711002, 35.887581, 32.274078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238106, 36.024185, 31.819170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165943, 36.276653, 32.120918>,  <42.122646, 36.428135, 32.301968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165943, 36.276653, 32.120918>,  <42.238106, 36.024185, 31.819170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165943, 36.276653, 32.120918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026519, 0.763555, -0.645199,
		-0.983235, -0.136401, -0.121010,
		-0.180403, 0.631173, 0.754371,
		42.111824, 36.466003, 32.347229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750961, 36.434875, 31.524706>,  <42.238106, 36.024185, 31.819170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750961, 36.434875, 31.524706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861835, 36.651093, 31.842443>,  <41.928360, 36.780823, 32.033085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861835, 36.651093, 31.842443>,  <41.750961, 36.434875, 31.524706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861835, 36.651093, 31.842443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048115, 0.833510, -0.550405,
		-0.959611, 0.114345, 0.257046,
		0.277187, 0.540542, 0.794344,
		41.944992, 36.813255, 32.080746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567322, 37.105782, 31.362007>,  <41.750961, 36.434875, 31.524706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567322, 37.105782, 31.362007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843365, 37.185188, 31.640387>,  <42.008991, 37.232830, 31.807415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843365, 37.185188, 31.640387>,  <41.567322, 37.105782, 31.362007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843365, 37.185188, 31.640387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334619, 0.765154, -0.550064,
		-0.641702, 0.612481, 0.461612,
		0.690107, 0.198513, 0.695948,
		42.050396, 37.244743, 31.849171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538063, 37.778488, 31.447809>,  <41.567322, 37.105782, 31.362007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538063, 37.778488, 31.447809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899746, 37.670261, 31.579992>,  <42.116756, 37.605328, 31.659302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899746, 37.670261, 31.579992>,  <41.538063, 37.778488, 31.447809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899746, 37.670261, 31.579992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402120, 0.800020, -0.445272,
		-0.143897, 0.535503, 0.832184,
		0.904208, -0.270565, 0.330457,
		42.171009, 37.589092, 31.679129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938290, 38.356647, 31.769571>,  <41.538063, 37.778488, 31.447809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938290, 38.356647, 31.769571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217979, 38.104248, 31.635155>,  <42.385792, 37.952808, 31.554504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217979, 38.104248, 31.635155>,  <41.938290, 38.356647, 31.769571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217979, 38.104248, 31.635155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469258, 0.759717, -0.450142,
		0.539337, 0.157060, 0.827314,
		0.699223, -0.631001, -0.336042,
		42.427746, 37.914948, 31.534342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498562, 38.751820, 31.756218>,  <41.938290, 38.356647, 31.769571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498562, 38.751820, 31.756218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650528, 38.457375, 31.532145>,  <42.741707, 38.280708, 31.397701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650528, 38.457375, 31.532145>,  <42.498562, 38.751820, 31.756218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650528, 38.457375, 31.532145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328447, 0.673479, -0.662230,
		0.864745, 0.067603, 0.497640,
		0.379919, -0.736108, -0.560184,
		42.764503, 38.236542, 31.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299294, 38.797153, 31.741987>,  <42.498562, 38.751820, 31.756218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299294, 38.797153, 31.741987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128441, 38.613354, 31.430494>,  <43.025928, 38.503075, 31.243599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128441, 38.613354, 31.430494>,  <43.299294, 38.797153, 31.741987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128441, 38.613354, 31.430494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346848, 0.712095, -0.610424,
		0.835020, -0.530831, -0.144780,
		-0.427129, -0.459500, -0.778731,
		43.000301, 38.475506, 31.196875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798752, 38.812214, 31.281137>,  <43.299294, 38.797153, 31.741987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798752, 38.812214, 31.281137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509487, 38.697098, 31.029991>,  <43.335930, 38.628029, 30.879303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509487, 38.697098, 31.029991>,  <43.798752, 38.812214, 31.281137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509487, 38.697098, 31.029991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419073, 0.539766, -0.730089,
		0.549012, -0.791094, -0.269733,
		-0.723162, -0.287790, -0.627864,
		43.292538, 38.610760, 30.841631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166252, 38.637997, 30.613989>,  <43.798752, 38.812214, 31.281137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166252, 38.637997, 30.613989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783123, 38.718472, 30.531916>,  <43.553246, 38.766754, 30.482672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783123, 38.718472, 30.531916>,  <44.166252, 38.637997, 30.613989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783123, 38.718472, 30.531916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286732, 0.622016, -0.728616,
		-0.018960, -0.756717, -0.653467,
		-0.957823, 0.201185, -0.205182,
		43.495777, 38.778828, 30.470362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038944, 38.530540, 29.996975>,  <44.166252, 38.637997, 30.613989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038944, 38.530540, 29.996975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742363, 38.781986, 30.090858>,  <43.564415, 38.932854, 30.147188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742363, 38.781986, 30.090858>,  <44.038944, 38.530540, 29.996975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742363, 38.781986, 30.090858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235777, 0.571557, -0.785959,
		-0.628213, -0.527417, -0.571997,
		-0.741457, 0.628613, 0.234706,
		43.519924, 38.970570, 30.161270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883091, 38.839649, 29.342083>,  <44.038944, 38.530540, 29.996975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883091, 38.839649, 29.342083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733990, 39.092186, 29.614103>,  <43.644531, 39.243706, 29.777315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733990, 39.092186, 29.614103>,  <43.883091, 38.839649, 29.342083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733990, 39.092186, 29.614103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107809, 0.757368, -0.644028,
		-0.921647, -0.166747, -0.350374,
		-0.372751, 0.631340, 0.680049,
		43.622166, 39.281590, 29.818117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360683, 39.342178, 29.062880>,  <43.883091, 38.839649, 29.342083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360683, 39.342178, 29.062880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518692, 39.536865, 29.374537>,  <43.613495, 39.653679, 29.561531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518692, 39.536865, 29.374537>,  <43.360683, 39.342178, 29.062880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518692, 39.536865, 29.374537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279311, 0.744338, -0.606586,
		-0.875184, 0.457235, 0.158079,
		0.395017, 0.486721, 0.779143,
		43.637196, 39.682880, 29.608280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195065, 40.055542, 28.922018>,  <43.360683, 39.342178, 29.062880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195065, 40.055542, 28.922018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464676, 40.070164, 29.217138>,  <43.626442, 40.078938, 29.394211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464676, 40.070164, 29.217138>,  <43.195065, 40.055542, 28.922018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464676, 40.070164, 29.217138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519411, 0.686730, -0.508541,
		-0.525257, 0.725993, 0.443891,
		0.674030, 0.036553, 0.737799,
		43.666885, 40.081131, 29.438478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270668, 40.722675, 29.151810>,  <43.195065, 40.055542, 28.922018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270668, 40.722675, 29.151810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617531, 40.583195, 29.294048>,  <43.825649, 40.499508, 29.379393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617531, 40.583195, 29.294048>,  <43.270668, 40.722675, 29.151810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617531, 40.583195, 29.294048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468326, 0.813843, -0.343991,
		-0.169451, 0.464830, 0.869034,
		0.867155, -0.348701, 0.355599,
		43.877678, 40.478584, 29.400728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203037, 40.839432, 29.928623>,  <43.270668, 40.722675, 29.151810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203037, 40.839432, 29.928623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284847, 41.044205, 30.262352>,  <43.333931, 41.167068, 30.462589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284847, 41.044205, 30.262352>,  <43.203037, 40.839432, 29.928623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284847, 41.044205, 30.262352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960080, -0.271076, -0.069019,
		0.190832, 0.815133, -0.546938,
		0.204522, 0.511934, 0.834323,
		43.346203, 41.197784, 30.512650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621197, 41.437683, 29.718477>,  <43.203037, 40.839432, 29.928623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621197, 41.437683, 29.718477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688660, 41.270245, 30.075428>,  <43.729137, 41.169781, 30.289598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688660, 41.270245, 30.075428>,  <43.621197, 41.437683, 29.718477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688660, 41.270245, 30.075428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929231, -0.234445, -0.285597,
		0.328762, 0.877391, 0.349428,
		0.168659, -0.418592, 0.892376,
		43.739258, 41.144669, 30.343142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262585, 41.813416, 29.911907>,  <43.621197, 41.437683, 29.718477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262585, 41.813416, 29.911907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189144, 41.451080, 30.064613>,  <44.145081, 41.233677, 30.156237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189144, 41.451080, 30.064613>,  <44.262585, 41.813416, 29.911907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189144, 41.451080, 30.064613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915364, -0.299116, -0.269515,
		0.358330, 0.299972, 0.884090,
		-0.183598, -0.905840, 0.381766,
		44.134064, 41.179329, 30.179144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712749, 41.431198, 30.410357>,  <44.262585, 41.813416, 29.911907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712749, 41.431198, 30.410357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545662, 41.127640, 30.210524>,  <44.445412, 40.945503, 30.090624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545662, 41.127640, 30.210524>,  <44.712749, 41.431198, 30.410357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545662, 41.127640, 30.210524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906054, -0.388891, -0.166825,
		-0.067680, -0.522334, 0.850051,
		-0.417716, -0.758901, -0.499583,
		44.420349, 40.899971, 30.060648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276089, 41.867207, 30.405142>,  <44.712749, 41.431198, 30.410357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276089, 41.867207, 30.405142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553329, 41.793690, 30.126333>,  <45.719673, 41.749580, 29.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553329, 41.793690, 30.126333>,  <45.276089, 41.867207, 30.405142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553329, 41.793690, 30.126333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108398, 0.929379, -0.352851,
		0.712647, 0.320116, 0.624228,
		0.693098, -0.183793, -0.697019,
		45.761257, 41.738552, 29.917227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644379, 42.594547, 30.188112>,  <45.276089, 41.867207, 30.405142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644379, 42.594547, 30.188112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754284, 42.398098, 29.857464>,  <45.820229, 42.280228, 29.659075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754284, 42.398098, 29.857464>,  <45.644379, 42.594547, 30.188112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754284, 42.398098, 29.857464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086105, 0.868826, -0.487573,
		0.957648, 0.062791, 0.281011,
		0.274765, -0.491120, -0.826623,
		45.836712, 42.250763, 29.609476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329731, 42.782303, 30.095354>,  <45.644379, 42.594547, 30.188112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329731, 42.782303, 30.095354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150227, 42.685749, 29.751181>,  <46.042522, 42.627815, 29.544676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150227, 42.685749, 29.751181>,  <46.329731, 42.782303, 30.095354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150227, 42.685749, 29.751181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322790, 0.854041, -0.407945,
		0.833319, -0.460810, -0.305343,
		-0.448761, -0.241387, -0.860434,
		46.015598, 42.613335, 29.493050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655865, 42.261765, 30.532784>,  <46.329731, 42.782303, 30.095354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655865, 42.261765, 30.532784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896370, 42.202026, 30.846771>,  <47.040672, 42.166183, 31.035164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896370, 42.202026, 30.846771>,  <46.655865, 42.261765, 30.532784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896370, 42.202026, 30.846771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338966, -0.841931, -0.419826,
		0.723590, 0.518504, -0.455599,
		0.601265, -0.149349, 0.784968,
		47.076748, 42.157223, 31.082262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258518, 41.770397, 30.671051>,  <46.655865, 42.261765, 30.532784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258518, 41.770397, 30.671051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029362, 41.994160, 30.910671>,  <46.891869, 42.128418, 31.054443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029362, 41.994160, 30.910671>,  <47.258518, 41.770397, 30.671051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029362, 41.994160, 30.910671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020277, -0.720981, 0.692658,
		0.819382, 0.408963, 0.401700,
		-0.572890, 0.559406, 0.599051,
		46.857494, 42.161980, 31.090387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648273, 41.688034, 31.269939>,  <47.258518, 41.770397, 30.671051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648273, 41.688034, 31.269939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260193, 41.780754, 31.241720>,  <47.027344, 41.836384, 31.224789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260193, 41.780754, 31.241720>,  <47.648273, 41.688034, 31.269939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260193, 41.780754, 31.241720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234013, -0.820952, 0.520841,
		0.062813, 0.521830, 0.850734,
		-0.970202, 0.231798, -0.070549,
		46.969131, 41.850292, 31.220556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391087, 41.719170, 31.910585>,  <47.648273, 41.688034, 31.269939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391087, 41.719170, 31.910585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.106953, 41.633652, 31.642342>,  <46.936474, 41.582340, 31.481396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.106953, 41.633652, 31.642342>,  <47.391087, 41.719170, 31.910585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.106953, 41.633652, 31.642342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246534, -0.816829, 0.521546,
		-0.659278, 0.535801, 0.527513,
		-0.710333, -0.213794, -0.670611,
		46.893852, 41.569515, 31.441158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704269, 41.689625, 32.330441>,  <47.391087, 41.719170, 31.910585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704269, 41.689625, 32.330441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671844, 41.498878, 31.980349>,  <46.652390, 41.384430, 31.770294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671844, 41.498878, 31.980349>,  <46.704269, 41.689625, 32.330441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671844, 41.498878, 31.980349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449899, -0.766067, 0.459056,
		-0.889393, 0.430977, -0.152444,
		-0.081061, -0.476866, -0.875230,
		46.647526, 41.355820, 31.717779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003719, 41.336277, 32.307461>,  <46.704269, 41.689625, 32.330441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003719, 41.336277, 32.307461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141697, 41.158375, 31.976835>,  <46.224483, 41.051636, 31.778460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141697, 41.158375, 31.976835>,  <46.003719, 41.336277, 32.307461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141697, 41.158375, 31.976835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545187, -0.811773, 0.209274,
		-0.764057, 0.378443, -0.522491,
		0.344946, -0.444753, -0.826563,
		46.245182, 41.024948, 31.728867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493114, 41.093506, 31.922510>,  <46.003719, 41.336277, 32.307461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493114, 41.093506, 31.922510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804432, 40.856430, 31.839582>,  <45.991222, 40.714184, 31.789825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804432, 40.856430, 31.839582>,  <45.493114, 41.093506, 31.922510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804432, 40.856430, 31.839582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572957, -0.805428, 0.151677,
		-0.256878, 0.000736, -0.966443,
		0.778289, -0.592693, -0.207319,
		46.037918, 40.678623, 31.777388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181957, 40.620003, 31.439926>,  <45.493114, 41.093506, 31.922510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181957, 40.620003, 31.439926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523056, 40.462345, 31.577028>,  <45.727715, 40.367752, 31.659288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523056, 40.462345, 31.577028>,  <45.181957, 40.620003, 31.439926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523056, 40.462345, 31.577028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478822, -0.852063, 0.211467,
		0.208699, -0.344445, -0.915315,
		0.852745, -0.394140, 0.342753,
		45.778881, 40.344105, 31.679853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212952, 39.966599, 31.058123>,  <45.181957, 40.620003, 31.439926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212952, 39.966599, 31.058123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464775, 39.957500, 31.368771>,  <45.615871, 39.952042, 31.555159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464775, 39.957500, 31.368771>,  <45.212952, 39.966599, 31.058123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464775, 39.957500, 31.368771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284958, -0.936674, 0.203568,
		0.722808, -0.349462, -0.596175,
		0.629561, -0.022744, 0.776618,
		45.653645, 39.950676, 31.601755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440269, 39.273788, 30.989605>,  <45.212952, 39.966599, 31.058123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440269, 39.273788, 30.989605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571434, 39.365932, 31.356081>,  <45.650131, 39.421219, 31.575968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571434, 39.365932, 31.356081>,  <45.440269, 39.273788, 30.989605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571434, 39.365932, 31.356081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306394, -0.891458, 0.333804,
		0.893643, -0.390174, -0.221737,
		0.327911, 0.230363, 0.916192,
		45.669807, 39.435040, 31.630939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878822, 38.685074, 31.256802>,  <45.440269, 39.273788, 30.989605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878822, 38.685074, 31.256802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719501, 38.894226, 31.558252>,  <45.623909, 39.019718, 31.739122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719501, 38.894226, 31.558252>,  <45.878822, 38.685074, 31.256802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719501, 38.894226, 31.558252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191502, -0.850906, 0.489169,
		0.897042, 0.050515, 0.439048,
		-0.398299, 0.522884, 0.753625,
		45.600014, 39.051090, 31.784340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174679, 38.410202, 31.785496>,  <45.878822, 38.685074, 31.256802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174679, 38.410202, 31.785496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845203, 38.582466, 31.933046>,  <45.647518, 38.685825, 32.021576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845203, 38.582466, 31.933046>,  <46.174679, 38.410202, 31.785496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845203, 38.582466, 31.933046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236642, -0.852243, 0.466564,
		0.515299, 0.297014, 0.803896,
		-0.823691, 0.430656, 0.368874,
		45.598095, 38.711662, 32.043709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164597, 38.254612, 32.464790>,  <46.174679, 38.410202, 31.785496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164597, 38.254612, 32.464790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782604, 38.332222, 32.375015>,  <45.553410, 38.378788, 32.321148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782604, 38.332222, 32.375015>,  <46.164597, 38.254612, 32.464790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782604, 38.332222, 32.375015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255507, -0.922347, 0.289815,
		-0.150781, 0.334112, 0.930395,
		-0.954977, 0.194024, -0.224440,
		45.496113, 38.390430, 32.307682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797100, 38.090145, 33.050030>,  <46.164597, 38.254612, 32.464790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797100, 38.090145, 33.050030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513653, 38.101028, 32.768002>,  <45.343586, 38.107559, 32.598785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513653, 38.101028, 32.768002>,  <45.797100, 38.090145, 33.050030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513653, 38.101028, 32.768002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486993, -0.741950, 0.460813,
		-0.510587, 0.669903, 0.539009,
		-0.708618, 0.027208, -0.705068,
		45.301067, 38.109192, 32.556480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286179, 37.935837, 33.416908>,  <45.797100, 38.090145, 33.050030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286179, 37.935837, 33.416908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.146286, 37.874302, 33.047256>,  <45.062351, 37.837379, 32.825466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.146286, 37.874302, 33.047256>,  <45.286179, 37.935837, 33.416908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146286, 37.874302, 33.047256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548232, -0.766283, 0.335040,
		-0.759688, 0.623814, 0.183656,
		-0.349735, -0.153840, -0.924131,
		45.041367, 37.828148, 32.770016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542973, 37.815022, 33.537273>,  <45.286179, 37.935837, 33.416908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542973, 37.815022, 33.537273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665043, 37.679710, 33.181198>,  <44.738285, 37.598522, 32.967552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665043, 37.679710, 33.181198>,  <44.542973, 37.815022, 33.537273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665043, 37.679710, 33.181198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517526, -0.843607, 0.143157,
		-0.799396, 0.417007, -0.432517,
		0.305177, -0.338277, -0.890188,
		44.756596, 37.578228, 32.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976269, 37.542168, 33.172031>,  <44.542973, 37.815022, 33.537273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976269, 37.542168, 33.172031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288578, 37.344795, 33.018715>,  <44.475964, 37.226372, 32.926727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288578, 37.344795, 33.018715>,  <43.976269, 37.542168, 33.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288578, 37.344795, 33.018715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390924, -0.864336, 0.316390,
		-0.487407, -0.097194, -0.867749,
		0.780777, -0.493434, -0.383287,
		44.522812, 37.196766, 32.903728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710152, 36.965931, 32.873608>,  <43.976269, 37.542168, 33.172031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710152, 36.965931, 32.873608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094669, 36.886089, 32.949577>,  <44.325378, 36.838184, 32.995159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094669, 36.886089, 32.949577>,  <43.710152, 36.965931, 32.873608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094669, 36.886089, 32.949577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270037, -0.819444, 0.505560,
		0.054724, -0.537280, -0.841627,
		0.961294, -0.199604, 0.189928,
		44.383057, 36.826210, 33.006557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826424, 36.224808, 32.775677>,  <43.710152, 36.965931, 32.873608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826424, 36.224808, 32.775677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159527, 36.302799, 32.982941>,  <44.359390, 36.349594, 33.107300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159527, 36.302799, 32.982941>,  <43.826424, 36.224808, 32.775677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159527, 36.302799, 32.982941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028172, -0.919794, 0.391390,
		0.552917, -0.340532, -0.760474,
		0.832760, 0.194982, 0.518163,
		44.409355, 36.361294, 33.138390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085232, 35.612965, 32.903206>,  <43.826424, 36.224808, 32.775677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085232, 35.612965, 32.903206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283020, 35.821461, 33.181431>,  <44.401691, 35.946560, 33.348366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283020, 35.821461, 33.181431>,  <44.085232, 35.612965, 32.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283020, 35.821461, 33.181431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083548, -0.825035, 0.558871,
		0.865172, -0.218230, -0.451501,
		0.494467, 0.521241, 0.695565,
		44.431358, 35.977833, 33.390099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510624, 35.245571, 33.126431>,  <44.085232, 35.612965, 32.903206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510624, 35.245571, 33.126431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476013, 35.515717, 33.419388>,  <44.455246, 35.677803, 33.595161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476013, 35.515717, 33.419388>,  <44.510624, 35.245571, 33.126431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476013, 35.515717, 33.419388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157782, -0.735164, 0.659271,
		0.983675, -0.058513, 0.170173,
		-0.086529, 0.675359, 0.732396,
		44.450054, 35.718323, 33.639107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939411, 34.964451, 33.628376>,  <44.510624, 35.245571, 33.126431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939411, 34.964451, 33.628376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680000, 35.212261, 33.805283>,  <44.524353, 35.360947, 33.911427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680000, 35.212261, 33.805283>,  <44.939411, 34.964451, 33.628376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680000, 35.212261, 33.805283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168226, -0.683300, 0.710493,
		0.742370, 0.386373, 0.547359,
		-0.648526, 0.619529, 0.442264,
		44.485443, 35.398121, 33.937962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124725, 34.981445, 34.342278>,  <44.939411, 34.964451, 33.628376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124725, 34.981445, 34.342278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740566, 35.091866, 34.327137>,  <44.510071, 35.158119, 34.318050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740566, 35.091866, 34.327137>,  <45.124725, 34.981445, 34.342278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740566, 35.091866, 34.327137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200566, -0.590592, 0.781649,
		0.193418, 0.758286, 0.622569,
		-0.960397, 0.276051, -0.037855,
		44.452446, 35.174683, 34.315781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789742, 35.051716, 33.961262>,  <45.124725, 34.981445, 34.342278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789742, 35.051716, 33.961262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119350, 35.185547, 33.778378>,  <46.317116, 35.265846, 33.668648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119350, 35.185547, 33.778378>,  <45.789742, 35.051716, 33.961262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119350, 35.185547, 33.778378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490773, -0.018321, 0.871095,
		0.283075, -0.942189, -0.179300,
		0.824021, 0.334581, -0.457215,
		46.366558, 35.285919, 33.641212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279900, 34.658386, 34.262203>,  <45.789742, 35.051716, 33.961262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279900, 34.658386, 34.262203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457867, 34.992718, 34.133556>,  <46.564648, 35.193317, 34.056370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457867, 34.992718, 34.133556>,  <46.279900, 34.658386, 34.262203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457867, 34.992718, 34.133556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714114, -0.114386, 0.690621,
		0.540452, -0.536941, -0.647770,
		0.444919, 0.835829, -0.321617,
		46.591343, 35.243465, 34.037071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007179, 34.595367, 34.174187>,  <46.279900, 34.658386, 34.262203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007179, 34.595367, 34.174187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936649, 34.970474, 34.293850>,  <46.894333, 35.195538, 34.365650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936649, 34.970474, 34.293850>,  <47.007179, 34.595367, 34.174187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936649, 34.970474, 34.293850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741524, -0.073326, 0.666907,
		0.647342, 0.339429, -0.682449,
		-0.176326, 0.937769, 0.299162,
		46.883751, 35.251804, 34.383598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652294, 34.945019, 34.342434>,  <47.007179, 34.595367, 34.174187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652294, 34.945019, 34.342434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343941, 35.094177, 34.549000>,  <47.158928, 35.183670, 34.672939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343941, 35.094177, 34.549000>,  <47.652294, 34.945019, 34.342434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343941, 35.094177, 34.549000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533805, -0.064158, 0.843170,
		0.347546, 0.925653, -0.149594,
		-0.770885, 0.372894, 0.516416,
		47.112675, 35.206047, 34.703926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.050083, 34.479904, 34.810760>,  <47.652294, 34.945019, 34.342434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.050083, 34.479904, 34.810760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.885090, 34.781406, 35.015388>,  <47.786095, 34.962307, 35.138165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.885090, 34.781406, 35.015388>,  <48.050083, 34.479904, 34.810760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.885090, 34.781406, 35.015388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172651, -0.616077, 0.768532,
		0.894452, 0.228687, 0.384261,
		-0.412488, 0.753758, 0.511568,
		47.761345, 35.007534, 35.168858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.571537, 35.873405, 44.567223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207691, 35.715843, 44.620052>,  <34.989384, 35.621304, 44.651749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207691, 35.715843, 44.620052>,  <35.571537, 35.873405, 44.567223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207691, 35.715843, 44.620052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164486, 0.049533, -0.985135,
		0.381511, -0.917814, -0.109848,
		-0.909612, -0.393908, 0.132070,
		34.934807, 35.597672, 44.659672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480049, 35.311344, 44.183197>,  <35.571537, 35.873405, 44.567223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480049, 35.311344, 44.183197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097637, 35.404213, 44.254864>,  <34.868191, 35.459934, 44.297863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097637, 35.404213, 44.254864>,  <35.480049, 35.311344, 44.183197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097637, 35.404213, 44.254864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188206, -0.017180, -0.981979,
		-0.224914, -0.972522, 0.060122,
		-0.956029, 0.232177, 0.179170,
		34.810829, 35.473866, 44.308617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974957, 34.787224, 43.764160>,  <35.480049, 35.311344, 44.183197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974957, 34.787224, 43.764160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776428, 35.123177, 43.852036>,  <34.657310, 35.324749, 43.904762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776428, 35.123177, 43.852036>,  <34.974957, 34.787224, 43.764160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776428, 35.123177, 43.852036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318071, 0.059542, -0.946195,
		-0.807775, -0.539491, 0.237591,
		-0.496317, 0.839884, 0.219693,
		34.627533, 35.375141, 43.917942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258114, 34.791786, 43.410061>,  <34.974957, 34.787224, 43.764160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258114, 34.791786, 43.410061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292095, 35.181454, 43.493748>,  <34.312485, 35.415257, 43.543961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292095, 35.181454, 43.493748>,  <34.258114, 34.791786, 43.410061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292095, 35.181454, 43.493748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286135, 0.224984, -0.931402,
		-0.954416, 0.019264, 0.297858,
		0.084956, 0.974172, 0.209216,
		34.317581, 35.473705, 43.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567116, 35.203121, 43.319771>,  <34.258114, 34.791786, 43.410061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567116, 35.203121, 43.319771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878845, 35.451435, 43.285637>,  <34.065884, 35.600422, 43.265156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878845, 35.451435, 43.285637>,  <33.567116, 35.203121, 43.319771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878845, 35.451435, 43.285637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276381, 0.218312, -0.935924,
		-0.562375, 0.752974, 0.341708,
		0.779325, 0.620782, -0.085335,
		34.112644, 35.637669, 43.260036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267200, 35.687992, 42.953438>,  <33.567116, 35.203121, 43.319771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267200, 35.687992, 42.953438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.660912, 35.741879, 42.907730>,  <33.897137, 35.774212, 42.880306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.660912, 35.741879, 42.907730>,  <33.267200, 35.687992, 42.953438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660912, 35.741879, 42.907730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143902, 0.236301, -0.960965,
		-0.102458, 0.962296, 0.251971,
		0.984274, 0.134718, -0.114266,
		33.956192, 35.782295, 42.873451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401154, 36.303776, 42.598053>,  <33.267200, 35.687992, 42.953438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401154, 36.303776, 42.598053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.758003, 36.136517, 42.529621>,  <33.972115, 36.036160, 42.488564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.758003, 36.136517, 42.529621>,  <33.401154, 36.303776, 42.598053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758003, 36.136517, 42.529621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062702, 0.260410, -0.963460,
		0.447421, 0.870251, 0.206099,
		0.892123, -0.418150, -0.171079,
		34.025639, 36.011070, 42.478298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806751, 36.852524, 42.284592>,  <33.401154, 36.303776, 42.598053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806751, 36.852524, 42.284592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945709, 36.497028, 42.164951>,  <34.029083, 36.283733, 42.093166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945709, 36.497028, 42.164951>,  <33.806751, 36.852524, 42.284592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945709, 36.497028, 42.164951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050736, 0.300689, -0.952372,
		0.936344, 0.346028, 0.059368,
		0.347398, -0.888736, -0.299104,
		34.049931, 36.230408, 42.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176594, 37.009270, 41.653931>,  <33.806751, 36.852524, 42.284592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176594, 37.009270, 41.653931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193756, 36.610424, 41.628902>,  <34.204052, 36.371117, 41.613888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193756, 36.610424, 41.628902>,  <34.176594, 37.009270, 41.653931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193756, 36.610424, 41.628902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286023, 0.072263, -0.955494,
		0.957262, 0.023098, 0.288299,
		0.042903, -0.997118, -0.062568,
		34.206627, 36.311287, 41.610130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769341, 36.878143, 41.392673>,  <34.176594, 37.009270, 41.653931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769341, 36.878143, 41.392673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551838, 36.567516, 41.265381>,  <34.421337, 36.381138, 41.189007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551838, 36.567516, 41.265381>,  <34.769341, 36.878143, 41.392673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551838, 36.567516, 41.265381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330262, 0.150592, -0.931799,
		0.771530, -0.611769, 0.174587,
		-0.543754, -0.776570, -0.318230,
		34.388710, 36.334545, 41.169910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302738, 36.446148, 41.010307>,  <34.769341, 36.878143, 41.392673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302738, 36.446148, 41.010307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939835, 36.343071, 40.877357>,  <34.722092, 36.281227, 40.797588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939835, 36.343071, 40.877357>,  <35.302738, 36.446148, 41.010307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939835, 36.343071, 40.877357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311484, 0.119313, -0.942731,
		0.282591, -0.958832, -0.027981,
		-0.907260, -0.257691, -0.332378,
		34.667656, 36.265762, 40.777645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449802, 36.451782, 40.332142>,  <35.302738, 36.446148, 41.010307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449802, 36.451782, 40.332142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062943, 36.370113, 40.271564>,  <34.830826, 36.321114, 40.235218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062943, 36.370113, 40.271564>,  <35.449802, 36.451782, 40.332142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062943, 36.370113, 40.271564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110913, 0.197137, -0.974082,
		0.228738, -0.958879, -0.168015,
		-0.967149, -0.204175, -0.151445,
		34.772797, 36.308865, 40.226131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376637, 35.922577, 39.781456>,  <35.449802, 36.451782, 40.332142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376637, 35.922577, 39.781456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042282, 36.140205, 39.810532>,  <34.841671, 36.270782, 39.827976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042282, 36.140205, 39.810532>,  <35.376637, 35.922577, 39.781456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042282, 36.140205, 39.810532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054942, 0.214697, -0.975134,
		-0.546149, -0.811106, -0.209355,
		-0.835885, 0.544070, 0.072693,
		34.791515, 36.303425, 39.832340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817955, 35.799225, 39.209251>,  <35.376637, 35.922577, 39.781456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817955, 35.799225, 39.209251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759827, 36.176880, 39.327572>,  <34.724949, 36.403473, 39.398563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759827, 36.176880, 39.327572>,  <34.817955, 35.799225, 39.209251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759827, 36.176880, 39.327572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101558, 0.311626, -0.944762,
		-0.984159, -0.107249, -0.141168,
		-0.145316, 0.944133, 0.295797,
		34.716232, 36.460121, 39.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634792, 36.063442, 38.615528>,  <34.817955, 35.799225, 39.209251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634792, 36.063442, 38.615528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732037, 36.367435, 38.856632>,  <34.790382, 36.549831, 39.001297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732037, 36.367435, 38.856632>,  <34.634792, 36.063442, 38.615528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732037, 36.367435, 38.856632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299750, 0.532132, -0.791824,
		-0.922523, 0.373178, -0.098438,
		0.243109, 0.759983, 0.602764,
		34.804970, 36.595428, 39.037460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532288, 36.691730, 38.199467>,  <34.634792, 36.063442, 38.615528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532288, 36.691730, 38.199467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746368, 36.819241, 38.512375>,  <34.874817, 36.895748, 38.700119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746368, 36.819241, 38.512375>,  <34.532288, 36.691730, 38.199467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746368, 36.819241, 38.512375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543793, 0.578633, -0.607842,
		-0.646411, 0.750709, 0.136337,
		0.535202, 0.318777, 0.782266,
		34.906929, 36.914875, 38.747055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615765, 37.292225, 37.985020>,  <34.532288, 36.691730, 38.199467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615765, 37.292225, 37.985020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.889740, 37.243179, 38.272305>,  <35.054127, 37.213753, 38.444675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.889740, 37.243179, 38.272305>,  <34.615765, 37.292225, 37.985020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889740, 37.243179, 38.272305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642140, 0.567341, -0.515539,
		-0.344260, 0.814304, 0.467327,
		0.684939, -0.122610, 0.718210,
		35.095222, 37.206398, 38.487766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914665, 37.928406, 38.133900>,  <34.615765, 37.292225, 37.985020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914665, 37.928406, 38.133900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187775, 37.663277, 38.256859>,  <35.351639, 37.504200, 38.330635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187775, 37.663277, 38.256859>,  <34.914665, 37.928406, 38.133900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187775, 37.663277, 38.256859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726526, 0.571396, -0.381662,
		0.077329, 0.483918, 0.871690,
		0.682774, -0.662819, 0.307394,
		35.392605, 37.464432, 38.349075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548069, 38.392403, 38.323769>,  <34.914665, 37.928406, 38.133900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548069, 38.392403, 38.323769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671204, 38.013832, 38.284767>,  <35.745083, 37.786690, 38.261368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671204, 38.013832, 38.284767>,  <35.548069, 38.392403, 38.323769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671204, 38.013832, 38.284767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821161, 0.316044, -0.475196,
		0.480555, 0.066217, 0.874461,
		0.307834, -0.946431, -0.097502,
		35.763554, 37.729904, 38.255516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253635, 38.359734, 38.653931>,  <35.548069, 38.392403, 38.323769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253635, 38.359734, 38.653931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191692, 38.082607, 38.372215>,  <36.154526, 37.916332, 38.203186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191692, 38.082607, 38.372215>,  <36.253635, 38.359734, 38.653931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191692, 38.082607, 38.372215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867206, 0.246175, -0.432842,
		0.473259, -0.677791, 0.562695,
		-0.154855, -0.692819, -0.704288,
		36.145237, 37.874763, 38.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816677, 38.035915, 38.623466>,  <36.253635, 38.359734, 38.653931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816677, 38.035915, 38.623466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632713, 38.011162, 38.269146>,  <36.522335, 37.996311, 38.056553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632713, 38.011162, 38.269146>,  <36.816677, 38.035915, 38.623466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632713, 38.011162, 38.269146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880925, 0.093556, -0.463917,
		0.111582, -0.993688, 0.011490,
		-0.459914, -0.061886, -0.885804,
		36.494740, 37.992596, 38.003403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244568, 37.785751, 37.997192>,  <36.816677, 38.035915, 38.623466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244568, 37.785751, 37.997192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944683, 37.998619, 37.839851>,  <36.764751, 38.126339, 37.745445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944683, 37.998619, 37.839851>,  <37.244568, 37.785751, 37.997192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944683, 37.998619, 37.839851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541116, 0.150802, -0.827317,
		-0.380951, -0.833102, -0.401022,
		-0.749714, 0.532166, -0.393356,
		36.719769, 38.158268, 37.721844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278389, 37.394875, 37.305050>,  <37.244568, 37.785751, 37.997192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278389, 37.394875, 37.305050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566566, 37.159012, 37.159027>,  <37.739471, 37.017494, 37.071411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566566, 37.159012, 37.159027>,  <37.278389, 37.394875, 37.305050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566566, 37.159012, 37.159027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111908, -0.420648, 0.900295,
		-0.684427, -0.689464, -0.237065,
		0.720442, -0.589657, -0.365059,
		37.782700, 36.982117, 37.049511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045513, 36.689140, 37.495094>,  <37.278389, 37.394875, 37.305050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045513, 36.689140, 37.495094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440899, 36.713017, 37.439419>,  <37.678131, 36.727341, 37.406013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440899, 36.713017, 37.439419>,  <37.045513, 36.689140, 37.495094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440899, 36.713017, 37.439419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151447, -0.389137, 0.908645,
		0.000076, -0.919244, -0.393689,
		0.988465, 0.059692, -0.139187,
		37.737438, 36.730923, 37.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259823, 36.035332, 37.840694>,  <37.045513, 36.689140, 37.495094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259823, 36.035332, 37.840694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605705, 36.234650, 37.815441>,  <37.813236, 36.354240, 37.800289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605705, 36.234650, 37.815441>,  <37.259823, 36.035332, 37.840694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605705, 36.234650, 37.815441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253098, -0.323708, 0.911677,
		0.433849, -0.804310, -0.406030,
		0.864706, 0.498295, -0.063129,
		37.865116, 36.384140, 37.796501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849743, 35.530922, 37.949825>,  <37.259823, 36.035332, 37.840694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849743, 35.530922, 37.949825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007362, 35.891129, 38.023361>,  <38.101933, 36.107254, 38.067482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007362, 35.891129, 38.023361>,  <37.849743, 35.530922, 37.949825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007362, 35.891129, 38.023361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302242, -0.315859, 0.899379,
		0.867973, -0.298835, -0.396637,
		0.394047, 0.900517, 0.183836,
		38.125576, 36.161285, 38.078510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418171, 35.380505, 38.355095>,  <37.849743, 35.530922, 37.949825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418171, 35.380505, 38.355095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320160, 35.763149, 38.418167>,  <38.261353, 35.992737, 38.456013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320160, 35.763149, 38.418167>,  <38.418171, 35.380505, 38.355095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320160, 35.763149, 38.418167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071860, -0.180114, 0.981017,
		0.966849, 0.229045, 0.112875,
		-0.245028, 0.956607, 0.157684,
		38.246651, 36.050133, 38.465473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859726, 35.607548, 38.938820>,  <38.418171, 35.380505, 38.355095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859726, 35.607548, 38.938820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542252, 35.850605, 38.927296>,  <38.351765, 35.996437, 38.920380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542252, 35.850605, 38.927296>,  <38.859726, 35.607548, 38.938820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542252, 35.850605, 38.927296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145191, -0.143225, 0.978982,
		0.590743, 0.781191, 0.201900,
		-0.793689, 0.607641, -0.028813,
		38.304146, 36.032898, 38.918652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985165, 36.098713, 39.470329>,  <38.859726, 35.607548, 38.938820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985165, 36.098713, 39.470329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592960, 36.095451, 39.391819>,  <38.357635, 36.093494, 39.344711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592960, 36.095451, 39.391819>,  <38.985165, 36.098713, 39.470329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592960, 36.095451, 39.391819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196312, 0.004000, 0.980533,
		-0.007207, 0.999959, -0.005522,
		-0.980515, -0.008151, -0.196275,
		38.298805, 36.093006, 39.332935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660404, 36.341179, 40.005371>,  <38.985165, 36.098713, 39.470329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660404, 36.341179, 40.005371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308666, 36.205093, 39.872101>,  <38.097622, 36.123440, 39.792137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308666, 36.205093, 39.872101>,  <38.660404, 36.341179, 40.005371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308666, 36.205093, 39.872101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326975, -0.077267, 0.941869,
		-0.346183, 0.937168, -0.043298,
		-0.879343, -0.340216, -0.333179,
		38.044865, 36.103027, 39.772148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179691, 36.787937, 40.319466>,  <38.660404, 36.341179, 40.005371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179691, 36.787937, 40.319466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976780, 36.459751, 40.214005>,  <37.855034, 36.262840, 40.150730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976780, 36.459751, 40.214005>,  <38.179691, 36.787937, 40.319466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976780, 36.459751, 40.214005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312393, -0.110058, 0.943556,
		-0.803170, 0.561005, -0.200477,
		-0.507275, -0.820464, -0.263649,
		37.824596, 36.213612, 40.134911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449287, 36.857437, 40.485851>,  <38.179691, 36.787937, 40.319466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449287, 36.857437, 40.485851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538055, 36.467819, 40.467976>,  <37.591316, 36.234051, 40.457253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538055, 36.467819, 40.467976>,  <37.449287, 36.857437, 40.485851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538055, 36.467819, 40.467976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347366, -0.121798, 0.929786,
		-0.911092, -0.190814, -0.365378,
		0.221918, -0.974041, -0.044687,
		37.604630, 36.175606, 40.454571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873226, 36.505344, 40.876938>,  <37.449287, 36.857437, 40.485851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873226, 36.505344, 40.876938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161213, 36.228321, 40.858997>,  <37.334003, 36.062107, 40.848232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161213, 36.228321, 40.858997>,  <36.873226, 36.505344, 40.876938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161213, 36.228321, 40.858997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194920, -0.263806, 0.944676,
		-0.666078, -0.671390, -0.324925,
		0.719963, -0.692562, -0.044848,
		37.377201, 36.020554, 40.845543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628914, 35.835274, 41.226749>,  <36.873226, 36.505344, 40.876938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628914, 35.835274, 41.226749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025692, 35.785843, 41.215603>,  <37.263760, 35.756184, 41.208916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025692, 35.785843, 41.215603>,  <36.628914, 35.835274, 41.226749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025692, 35.785843, 41.215603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015482, -0.336587, 0.941525,
		-0.125730, -0.933508, -0.335788,
		0.991944, -0.123577, -0.027866,
		37.323277, 35.748768, 41.207241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686131, 35.131844, 41.484074>,  <36.628914, 35.835274, 41.226749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686131, 35.131844, 41.484074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.035923, 35.314304, 41.550041>,  <37.245800, 35.423782, 41.589622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.035923, 35.314304, 41.550041>,  <36.686131, 35.131844, 41.484074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035923, 35.314304, 41.550041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014022, -0.316085, 0.948627,
		0.484850, -0.831873, -0.270015,
		0.874485, 0.456156, 0.164918,
		37.298267, 35.451153, 41.599518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057514, 34.603214, 41.927689>,  <36.686131, 35.131844, 41.484074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057514, 34.603214, 41.927689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181236, 34.981060, 41.971554>,  <37.255470, 35.207767, 41.997871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181236, 34.981060, 41.971554>,  <37.057514, 34.603214, 41.927689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181236, 34.981060, 41.971554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026464, -0.123821, 0.991951,
		0.950593, -0.303917, -0.063297,
		0.309309, 0.944618, 0.109661,
		37.274029, 35.264446, 42.004452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708214, 34.578094, 42.153187>,  <37.057514, 34.603214, 41.927689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708214, 34.578094, 42.153187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606827, 34.947659, 42.267826>,  <37.545994, 35.169399, 42.336609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606827, 34.947659, 42.267826>,  <37.708214, 34.578094, 42.153187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606827, 34.947659, 42.267826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312958, -0.202020, 0.928033,
		0.915322, 0.324916, -0.237941,
		-0.253463, 0.923914, 0.286599,
		37.530788, 35.224834, 42.353806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252529, 34.740883, 42.527634>,  <37.708214, 34.578094, 42.153187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252529, 34.740883, 42.527634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.975529, 35.006809, 42.639679>,  <37.809330, 35.166367, 42.706905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.975529, 35.006809, 42.639679>,  <38.252529, 34.740883, 42.527634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975529, 35.006809, 42.639679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101018, -0.295092, 0.950114,
		0.714313, 0.686247, 0.137192,
		-0.692497, 0.664820, 0.280112,
		37.767780, 35.206257, 42.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487576, 35.322327, 42.938122>,  <38.252529, 34.740883, 42.527634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487576, 35.322327, 42.938122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.099457, 35.311012, 43.034225>,  <37.866585, 35.304222, 43.091888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.099457, 35.311012, 43.034225>,  <38.487576, 35.322327, 42.938122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099457, 35.311012, 43.034225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238870, -0.269122, 0.933014,
		0.038265, 0.962690, 0.267886,
		-0.970297, -0.028288, 0.240255,
		37.808369, 35.302525, 43.106300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485317, 35.540115, 43.620651>,  <38.487576, 35.322327, 42.938122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485317, 35.540115, 43.620651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138554, 35.346626, 43.572529>,  <37.930496, 35.230534, 43.543655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138554, 35.346626, 43.572529>,  <38.485317, 35.540115, 43.620651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138554, 35.346626, 43.572529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017477, -0.270701, 0.962505,
		-0.498153, 0.832305, 0.243128,
		-0.866913, -0.483724, -0.120304,
		37.878479, 35.201508, 43.536438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.886429, 35.609661, 44.478828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718342, 35.329906, 44.247562>,  <37.617489, 35.162052, 44.108803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718342, 35.329906, 44.247562>,  <37.886429, 35.609661, 44.478828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718342, 35.329906, 44.247562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340165, -0.469276, 0.814904,
		-0.841253, 0.539107, -0.040710,
		-0.420216, -0.699388, -0.578165,
		37.592278, 35.120090, 44.074112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167400, 35.556141, 44.661602>,  <37.886429, 35.609661, 44.478828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167400, 35.556141, 44.661602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307053, 35.210285, 44.517097>,  <37.390846, 35.002773, 44.430397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307053, 35.210285, 44.517097>,  <37.167400, 35.556141, 44.661602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307053, 35.210285, 44.517097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335616, -0.475319, 0.813286,
		-0.874911, -0.162701, -0.456136,
		0.349133, -0.864639, -0.361257,
		37.411793, 34.950893, 44.408722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633579, 35.049019, 44.818615>,  <37.167400, 35.556141, 44.661602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633579, 35.049019, 44.818615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956989, 34.822025, 44.756313>,  <37.151035, 34.685829, 44.718933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956989, 34.822025, 44.756313>,  <36.633579, 35.049019, 44.818615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956989, 34.822025, 44.756313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229817, -0.548161, 0.804178,
		-0.541714, -0.614414, -0.573621,
		0.808536, -0.567463, -0.155743,
		37.199547, 34.651783, 44.709587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328842, 34.394531, 44.912548>,  <36.633579, 35.049019, 44.818615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328842, 34.394531, 44.912548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723873, 34.354797, 44.961246>,  <36.960892, 34.330956, 44.990463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723873, 34.354797, 44.961246>,  <36.328842, 34.394531, 44.912548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723873, 34.354797, 44.961246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155357, -0.501316, 0.851203,
		-0.023524, -0.859543, -0.510522,
		0.987578, -0.099336, 0.121743,
		37.020145, 34.324997, 44.997768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413269, 33.708961, 45.151920>,  <36.328842, 34.394531, 44.912548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413269, 33.708961, 45.151920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749775, 33.889988, 45.270206>,  <36.951679, 33.998604, 45.341179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749775, 33.889988, 45.270206>,  <36.413269, 33.708961, 45.151920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749775, 33.889988, 45.270206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056999, -0.469698, 0.880985,
		0.537605, -0.758000, -0.369346,
		0.841268, 0.452570, 0.295717,
		37.002155, 34.025761, 45.358921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757198, 33.203888, 45.417221>,  <36.413269, 33.708961, 45.151920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757198, 33.203888, 45.417221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922333, 33.528534, 45.582554>,  <37.021412, 33.723324, 45.681755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922333, 33.528534, 45.582554>,  <36.757198, 33.203888, 45.417221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922333, 33.528534, 45.582554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016970, -0.446880, 0.894433,
		0.910649, -0.376266, -0.170713,
		0.412833, 0.811617, 0.413336,
		37.046185, 33.772018, 45.706554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287930, 32.982010, 45.894463>,  <36.757198, 33.203888, 45.417221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287930, 32.982010, 45.894463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.222889, 33.351292, 46.033752>,  <37.183865, 33.572861, 46.117325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.222889, 33.351292, 46.033752>,  <37.287930, 32.982010, 45.894463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222889, 33.351292, 46.033752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030615, -0.348026, 0.936985,
		0.986217, 0.163012, 0.028324,
		-0.162598, 0.923203, 0.348220,
		37.174110, 33.628254, 46.138218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625984, 32.991898, 46.581104>,  <37.287930, 32.982010, 45.894463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625984, 32.991898, 46.581104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354191, 33.285084, 46.594112>,  <37.191113, 33.460995, 46.601917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354191, 33.285084, 46.594112>,  <37.625984, 32.991898, 46.581104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354191, 33.285084, 46.594112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063137, -0.102577, 0.992719,
		0.730965, 0.672487, 0.115977,
		-0.679488, 0.732966, 0.032522,
		37.150345, 33.504974, 46.603870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848537, 33.416866, 47.110439>,  <37.625984, 32.991898, 46.581104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848537, 33.416866, 47.110439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463894, 33.520374, 47.073887>,  <37.233109, 33.582478, 47.051956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463894, 33.520374, 47.073887>,  <37.848537, 33.416866, 47.110439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463894, 33.520374, 47.073887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072781, 0.080601, 0.994086,
		0.264602, 0.962571, -0.058673,
		-0.961607, 0.258766, -0.091384,
		37.175411, 33.598003, 47.046471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761669, 33.991364, 47.442276>,  <37.848537, 33.416866, 47.110439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761669, 33.991364, 47.442276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384144, 33.865162, 47.402924>,  <37.157631, 33.789440, 47.379314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384144, 33.865162, 47.402924>,  <37.761669, 33.991364, 47.442276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384144, 33.865162, 47.402924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161777, 0.181489, 0.969995,
		-0.288184, 0.931406, -0.222332,
		-0.943810, -0.315506, -0.098378,
		37.101002, 33.770512, 47.373409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303295, 34.537590, 47.802326>,  <37.761669, 33.991364, 47.442276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303295, 34.537590, 47.802326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148392, 34.169704, 47.776535>,  <37.055450, 33.948975, 47.761059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148392, 34.169704, 47.776535>,  <37.303295, 34.537590, 47.802326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148392, 34.169704, 47.776535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209516, 0.019680, 0.977607,
		-0.897851, 0.392093, -0.200316,
		-0.387256, -0.919715, -0.064480,
		37.032215, 33.893791, 47.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739971, 34.631744, 48.241142>,  <37.303295, 34.537590, 47.802326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739971, 34.631744, 48.241142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.759010, 34.234821, 48.195435>,  <36.770435, 33.996666, 48.168011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.759010, 34.234821, 48.195435>,  <36.739971, 34.631744, 48.241142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759010, 34.234821, 48.195435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306039, -0.123385, 0.943990,
		-0.950828, -0.009959, -0.309557,
		0.047596, -0.992309, -0.114270,
		36.773289, 33.937130, 48.161152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150471, 34.339478, 48.592529>,  <36.739971, 34.631744, 48.241142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150471, 34.339478, 48.592529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394211, 34.024113, 48.558823>,  <36.540455, 33.834892, 48.538597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394211, 34.024113, 48.558823>,  <36.150471, 34.339478, 48.592529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394211, 34.024113, 48.558823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338682, -0.354894, 0.871404,
		-0.716933, -0.502447, -0.483275,
		0.609346, -0.788414, -0.084266,
		36.577015, 33.787590, 48.533543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809078, 33.740074, 48.783241>,  <36.150471, 34.339478, 48.592529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809078, 33.740074, 48.783241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187626, 33.615997, 48.819397>,  <36.414753, 33.541550, 48.841091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187626, 33.615997, 48.819397>,  <35.809078, 33.740074, 48.783241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187626, 33.615997, 48.819397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239846, -0.487015, 0.839815,
		-0.216483, -0.816453, -0.535293,
		0.946366, -0.310194, 0.090393,
		36.471535, 33.522938, 48.846516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844013, 33.001785, 48.982540>,  <35.809078, 33.740074, 48.783241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844013, 33.001785, 48.982540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202435, 33.130745, 49.104626>,  <36.417488, 33.208118, 49.177876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202435, 33.130745, 49.104626>,  <35.844013, 33.001785, 48.982540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202435, 33.130745, 49.104626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054140, -0.603008, 0.795896,
		0.440639, -0.729687, -0.522871,
		0.896050, 0.322395, 0.305214,
		36.471249, 33.227463, 49.196190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216888, 32.385952, 49.127472>,  <35.844013, 33.001785, 48.982540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216888, 32.385952, 49.127472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411514, 32.681686, 49.313644>,  <36.528290, 32.859127, 49.425350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411514, 32.681686, 49.313644>,  <36.216888, 32.385952, 49.127472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411514, 32.681686, 49.313644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029655, -0.546420, 0.836986,
		0.873140, -0.393447, -0.287795,
		0.486566, 0.739340, 0.465434,
		36.557484, 32.903488, 49.453274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848873, 32.058231, 49.450237>,  <36.216888, 32.385952, 49.127472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848873, 32.058231, 49.450237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761166, 32.403648, 49.631882>,  <36.708542, 32.610897, 49.740868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761166, 32.403648, 49.631882>,  <36.848873, 32.058231, 49.450237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761166, 32.403648, 49.631882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071443, -0.449982, 0.890175,
		0.973046, 0.227627, 0.036971,
		-0.219265, 0.863540, 0.454116,
		36.695385, 32.662712, 49.768116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356201, 32.113071, 49.952900>,  <36.848873, 32.058231, 49.450237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356201, 32.113071, 49.952900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047806, 32.342922, 50.062717>,  <36.862766, 32.480831, 50.128609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047806, 32.342922, 50.062717>,  <37.356201, 32.113071, 49.952900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047806, 32.342922, 50.062717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026930, -0.460134, 0.887441,
		0.636276, 0.676815, 0.370234,
		-0.770991, 0.574628, 0.274546,
		36.816509, 32.515312, 50.145081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331989, 32.105537, 50.746639>,  <37.356201, 32.113071, 49.952900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331989, 32.105537, 50.746639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976917, 32.275047, 50.674599>,  <36.763874, 32.376755, 50.631374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976917, 32.275047, 50.674599>,  <37.331989, 32.105537, 50.746639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976917, 32.275047, 50.674599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369661, -0.422648, 0.827478,
		0.274544, 0.801113, 0.531830,
		-0.887680, 0.423776, -0.180105,
		36.710613, 32.402180, 50.620567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027584, 32.352322, 51.382572>,  <37.331989, 32.105537, 50.746639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027584, 32.352322, 51.382572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.700111, 32.350861, 51.152878>,  <36.503628, 32.349983, 51.015060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.700111, 32.350861, 51.152878>,  <37.027584, 32.352322, 51.382572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700111, 32.350861, 51.152878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494029, -0.505279, 0.707551,
		-0.292736, 0.862948, 0.411856,
		-0.818682, -0.003657, -0.574235,
		36.454506, 32.349762, 50.980606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605278, 32.494530, 51.837379>,  <37.027584, 32.352322, 51.382572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605278, 32.494530, 51.837379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329906, 32.346306, 51.587978>,  <36.164684, 32.257370, 51.438339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329906, 32.346306, 51.587978>,  <36.605278, 32.494530, 51.837379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329906, 32.346306, 51.587978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463189, -0.436903, 0.771085,
		-0.558141, 0.819635, 0.129138,
		-0.688429, -0.370558, -0.623500,
		36.123379, 32.235138, 51.400928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993694, 32.670578, 52.124924>,  <36.605278, 32.494530, 51.837379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993694, 32.670578, 52.124924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908394, 32.360348, 51.887268>,  <35.857212, 32.174210, 51.744675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908394, 32.360348, 51.887268>,  <35.993694, 32.670578, 52.124924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908394, 32.360348, 51.887268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761341, -0.249190, 0.598552,
		-0.612276, 0.579990, -0.537335,
		-0.213255, -0.775574, -0.594143,
		35.844418, 32.127674, 51.709026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319359, 32.757565, 52.090176>,  <35.993694, 32.670578, 52.124924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319359, 32.757565, 52.090176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435631, 32.392597, 51.974937>,  <35.505394, 32.173618, 51.905796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435631, 32.392597, 51.974937>,  <35.319359, 32.757565, 52.090176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435631, 32.392597, 51.974937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670624, -0.409045, 0.618825,
		-0.682471, 0.013323, -0.730791,
		0.290682, -0.912417, -0.288097,
		35.522835, 32.118874, 51.888508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626549, 32.564636, 52.504639>,  <35.319359, 32.757565, 52.090176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626549, 32.564636, 52.504639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.300541, 32.380421, 52.363987>,  <34.104935, 32.269894, 52.279594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.300541, 32.380421, 52.363987>,  <34.626549, 32.564636, 52.504639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300541, 32.380421, 52.363987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057975, 0.668626, -0.741336,
		0.576519, -0.583821, -0.571646,
		-0.815025, -0.460536, -0.351628,
		34.056034, 32.242260, 52.258499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795677, 32.245132, 51.740940>,  <34.626549, 32.564636, 52.504639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795677, 32.245132, 51.740940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402916, 32.308857, 51.781902>,  <34.167259, 32.347092, 51.806480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402916, 32.308857, 51.781902>,  <34.795677, 32.245132, 51.740940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402916, 32.308857, 51.781902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014616, 0.475355, -0.879673,
		-0.188823, -0.865249, -0.464423,
		-0.981902, 0.159315, 0.102405,
		34.108345, 32.356651, 51.812622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441528, 31.836222, 51.111698>,  <34.795677, 32.245132, 51.740940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441528, 31.836222, 51.111698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185844, 32.117451, 51.236343>,  <34.032436, 32.286186, 51.311131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185844, 32.117451, 51.236343>,  <34.441528, 31.836222, 51.111698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185844, 32.117451, 51.236343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053177, 0.363827, -0.929947,
		-0.767195, -0.610999, -0.195173,
		-0.639206, 0.703072, 0.311617,
		33.994083, 32.328373, 51.329830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922653, 31.816315, 50.692013>,  <34.441528, 31.836222, 51.111698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922653, 31.816315, 50.692013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.863415, 32.176716, 50.855114>,  <33.827873, 32.392956, 50.952976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.863415, 32.176716, 50.855114>,  <33.922653, 31.816315, 50.692013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863415, 32.176716, 50.855114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040772, 0.406388, -0.912790,
		-0.988132, -0.151805, -0.023448,
		-0.148095, 0.901002, 0.407754,
		33.818985, 32.447018, 50.977440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300224, 32.108459, 50.362488>,  <33.922653, 31.816315, 50.692013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300224, 32.108459, 50.362488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500622, 32.424316, 50.504173>,  <33.620861, 32.613831, 50.589184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500622, 32.424316, 50.504173>,  <33.300224, 32.108459, 50.362488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500622, 32.424316, 50.504173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157601, 0.485681, -0.859811,
		-0.850980, 0.374936, 0.367772,
		0.500994, 0.789643, 0.354215,
		33.650921, 32.661209, 50.610439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791794, 32.690434, 50.372478>,  <33.300224, 32.108459, 50.362488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791794, 32.690434, 50.372478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162788, 32.839325, 50.386379>,  <33.385387, 32.928661, 50.394718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162788, 32.839325, 50.386379>,  <32.791794, 32.690434, 50.372478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162788, 32.839325, 50.386379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184364, 0.536273, -0.823663,
		-0.325229, 0.757532, 0.566014,
		0.927489, 0.372232, 0.034750,
		33.441036, 32.950996, 50.396805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713753, 33.440399, 49.898632>,  <32.791794, 32.690434, 50.372478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713753, 33.440399, 49.898632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104099, 33.372593, 49.953697>,  <33.338306, 33.331909, 49.986736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104099, 33.372593, 49.953697>,  <32.713753, 33.440399, 49.898632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104099, 33.372593, 49.953697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198396, 0.424809, -0.883276,
		0.091247, 0.889271, 0.448187,
		0.975865, -0.169515, 0.137666,
		33.396858, 33.321739, 49.994995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981087, 33.961525, 49.559662>,  <32.713753, 33.440399, 49.898632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981087, 33.961525, 49.559662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280899, 33.699856, 49.600197>,  <33.460785, 33.542854, 49.624516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280899, 33.699856, 49.600197>,  <32.981087, 33.961525, 49.559662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280899, 33.699856, 49.600197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381062, 0.301206, -0.874109,
		0.541293, 0.693784, 0.475042,
		0.749529, -0.654170, 0.101334,
		33.505756, 33.503605, 49.630596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684490, 34.385689, 49.504990>,  <32.981087, 33.961525, 49.559662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684490, 34.385689, 49.504990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730331, 33.998543, 49.415455>,  <33.757835, 33.766254, 49.361736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730331, 33.998543, 49.415455>,  <33.684490, 34.385689, 49.504990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730331, 33.998543, 49.415455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406894, 0.251286, -0.878233,
		0.906257, 0.009574, 0.422618,
		0.114606, -0.967866, -0.223834,
		33.764713, 33.708183, 49.348305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172215, 34.462215, 49.164131>,  <33.684490, 34.385689, 49.504990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172215, 34.462215, 49.164131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038021, 34.098019, 49.067417>,  <33.957504, 33.879501, 49.009388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038021, 34.098019, 49.067417>,  <34.172215, 34.462215, 49.164131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038021, 34.098019, 49.067417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127321, 0.210483, -0.969271,
		0.933402, -0.355960, 0.045311,
		-0.335484, -0.910489, -0.241787,
		33.937374, 33.824871, 48.994881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734245, 34.230328, 48.820496>,  <34.172215, 34.462215, 49.164131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734245, 34.230328, 48.820496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433212, 33.996967, 48.698334>,  <34.252594, 33.856953, 48.625038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433212, 33.996967, 48.698334>,  <34.734245, 34.230328, 48.820496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433212, 33.996967, 48.698334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201906, 0.237008, -0.950295,
		0.626784, -0.776835, -0.060576,
		-0.752579, -0.583399, -0.305401,
		34.207439, 33.821949, 48.606712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076820, 33.813519, 48.440102>,  <34.734245, 34.230328, 48.820496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076820, 33.813519, 48.440102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702309, 33.776653, 48.304520>,  <34.477600, 33.754532, 48.223171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702309, 33.776653, 48.304520>,  <35.076820, 33.813519, 48.440102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702309, 33.776653, 48.304520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311673, 0.227045, -0.922665,
		0.161996, -0.969513, -0.183852,
		-0.936278, -0.092166, -0.338951,
		34.421425, 33.749004, 48.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143261, 33.375458, 47.804756>,  <35.076820, 33.813519, 48.440102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143261, 33.375458, 47.804756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796761, 33.575085, 47.795551>,  <34.588860, 33.694862, 47.790028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796761, 33.575085, 47.795551>,  <35.143261, 33.375458, 47.804756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796761, 33.575085, 47.795551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150226, 0.216270, -0.964707,
		-0.476480, -0.839140, -0.262319,
		-0.866256, 0.499071, -0.023013,
		34.536884, 33.724808, 47.788647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643177, 33.215981, 47.239010>,  <35.143261, 33.375458, 47.804756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643177, 33.215981, 47.239010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578094, 33.598656, 47.335567>,  <34.539043, 33.828262, 47.393501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578094, 33.598656, 47.335567>,  <34.643177, 33.215981, 47.239010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578094, 33.598656, 47.335567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101839, 0.259630, -0.960324,
		-0.981405, -0.131667, -0.139671,
		-0.162705, 0.956690, 0.241393,
		34.529282, 33.885662, 47.407986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550568, 33.520199, 46.528580>,  <34.643177, 33.215981, 47.239010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550568, 33.520199, 46.528580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507576, 33.834290, 46.772503>,  <34.481781, 34.022743, 46.918858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507576, 33.834290, 46.772503>,  <34.550568, 33.520199, 46.528580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507576, 33.834290, 46.772503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101035, 0.601557, -0.792415,
		-0.989060, -0.146781, 0.014680,
		-0.107480, 0.785229, 0.609806,
		34.475330, 34.069859, 46.955444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946045, 33.970402, 46.328571>,  <34.550568, 33.520199, 46.528580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946045, 33.970402, 46.328571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245781, 34.157314, 46.516247>,  <34.425621, 34.269463, 46.628853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245781, 34.157314, 46.516247>,  <33.946045, 33.970402, 46.328571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245781, 34.157314, 46.516247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033452, 0.680926, -0.731587,
		-0.661339, 0.563904, 0.494615,
		0.749341, 0.467281, 0.469187,
		34.470585, 34.297497, 46.657001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743771, 34.683441, 46.516945>,  <33.946045, 33.970402, 46.328571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743771, 34.683441, 46.516945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.143154, 34.704376, 46.524311>,  <34.382786, 34.716938, 46.528728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.143154, 34.704376, 46.524311>,  <33.743771, 34.683441, 46.516945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143154, 34.704376, 46.524311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021566, 0.671833, -0.740389,
		-0.051122, 0.738851, 0.671927,
		0.998460, 0.052341, 0.018411,
		34.442692, 34.720078, 46.529835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872028, 35.308243, 46.434566>,  <33.743771, 34.683441, 46.516945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872028, 35.308243, 46.434566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236652, 35.159496, 46.364407>,  <34.455429, 35.070248, 46.322311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236652, 35.159496, 46.364407>,  <33.872028, 35.308243, 46.434566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236652, 35.159496, 46.364407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059784, 0.541949, -0.838282,
		0.406792, 0.753660, 0.516252,
		0.911562, -0.371870, -0.175404,
		34.510120, 35.047935, 46.311787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278645, 35.854729, 46.330902>,  <33.872028, 35.308243, 46.434566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278645, 35.854729, 46.330902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478203, 35.551662, 46.162594>,  <34.597939, 35.369823, 46.061611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478203, 35.551662, 46.162594>,  <34.278645, 35.854729, 46.330902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478203, 35.551662, 46.162594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039138, 0.504701, -0.862406,
		0.865780, 0.413780, 0.281445,
		0.498892, -0.757669, -0.420766,
		34.627869, 35.324360, 46.036366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760181, 36.170864, 45.847462>,  <34.278645, 35.854729, 46.330902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760181, 36.170864, 45.847462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720264, 35.795998, 45.713741>,  <34.696312, 35.571079, 45.633507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720264, 35.795998, 45.713741>,  <34.760181, 36.170864, 45.847462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720264, 35.795998, 45.713741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007134, 0.335298, -0.942085,
		0.994982, -0.096401, -0.026775,
		-0.099795, -0.937167, -0.334303,
		34.690327, 35.514847, 45.613449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311611, 36.061398, 45.403355>,  <34.760181, 36.170864, 45.847462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311611, 36.061398, 45.403355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043705, 35.780346, 45.307243>,  <34.882961, 35.611717, 45.249577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043705, 35.780346, 45.307243>,  <35.311611, 36.061398, 45.403355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043705, 35.780346, 45.307243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174608, 0.165482, -0.970633,
		0.721753, -0.692049, 0.011851,
		-0.669765, -0.702626, -0.240274,
		34.842777, 35.569557, 45.235161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.933372, 39.874058, 29.712282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602631, 40.081646, 29.625576>,  <44.404186, 40.206200, 29.573553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602631, 40.081646, 29.625576>,  <44.933372, 39.874058, 29.712282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602631, 40.081646, 29.625576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532466, -0.598233, 0.598829,
		0.181098, 0.610563, 0.770984,
		-0.826851, 0.518970, -0.216766,
		44.354576, 40.237335, 29.560547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536438, 40.034927, 30.439638>,  <44.933372, 39.874058, 29.712282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536438, 40.034927, 30.439638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275322, 40.075779, 30.139387>,  <44.118652, 40.100288, 29.959236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275322, 40.075779, 30.139387>,  <44.536438, 40.034927, 30.439638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275322, 40.075779, 30.139387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653679, -0.576709, 0.490010,
		-0.382851, 0.810541, 0.443225,
		-0.652785, 0.102125, -0.750628,
		44.079487, 40.106415, 29.914198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940552, 40.186016, 30.720699>,  <44.536438, 40.034927, 30.439638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940552, 40.186016, 30.720699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856361, 40.038425, 30.358582>,  <43.805847, 39.949871, 30.141312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856361, 40.038425, 30.358582>,  <43.940552, 40.186016, 30.720699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856361, 40.038425, 30.358582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742214, -0.542382, 0.393625,
		-0.636254, 0.754768, -0.159705,
		-0.210475, -0.368980, -0.905292,
		43.793221, 39.927731, 30.086994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198822, 40.183289, 30.721081>,  <43.940552, 40.186016, 30.720699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198822, 40.183289, 30.721081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321747, 39.937580, 30.430363>,  <43.395500, 39.790157, 30.255932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321747, 39.937580, 30.430363>,  <43.198822, 40.183289, 30.721081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321747, 39.937580, 30.430363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629417, -0.704034, 0.328892,
		-0.713719, 0.356388, -0.602987,
		0.307310, -0.614266, -0.726800,
		43.413940, 39.753300, 30.212324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586586, 39.773582, 30.388603>,  <43.198822, 40.183289, 30.721081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586586, 39.773582, 30.388603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891533, 39.527523, 30.308216>,  <43.074501, 39.379887, 30.259983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891533, 39.527523, 30.308216>,  <42.586586, 39.773582, 30.388603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891533, 39.527523, 30.308216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513481, -0.764001, 0.390690,
		-0.393875, -0.194654, -0.898316,
		0.762364, -0.615152, -0.200970,
		43.120243, 39.342976, 30.247925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365784, 39.059799, 30.073412>,  <42.586586, 39.773582, 30.388603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365784, 39.059799, 30.073412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727131, 39.012207, 30.238222>,  <42.943939, 38.983650, 30.337109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727131, 39.012207, 30.238222>,  <42.365784, 39.059799, 30.073412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727131, 39.012207, 30.238222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273506, -0.899847, 0.339809,
		0.330329, -0.419665, -0.845437,
		0.903370, -0.118984, 0.412026,
		42.998142, 38.976513, 30.361830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386070, 38.312145, 30.027252>,  <42.365784, 39.059799, 30.073412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386070, 38.312145, 30.027252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674263, 38.424431, 30.280901>,  <42.847179, 38.491802, 30.433090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674263, 38.424431, 30.280901>,  <42.386070, 38.312145, 30.027252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674263, 38.424431, 30.280901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064965, -0.883065, 0.464731,
		0.690429, -0.376024, -0.617992,
		0.720477, 0.280715, 0.634122,
		42.890408, 38.508644, 30.471138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804577, 37.701057, 30.145016>,  <42.386070, 38.312145, 30.027252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804577, 37.701057, 30.145016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854321, 37.945652, 30.457584>,  <42.884167, 38.092407, 30.645126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854321, 37.945652, 30.457584>,  <42.804577, 37.701057, 30.145016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854321, 37.945652, 30.457584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276841, -0.734881, 0.619120,
		0.952835, -0.293321, 0.077897,
		0.124355, 0.611485, 0.781423,
		42.891628, 38.129097, 30.692011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156101, 37.290730, 30.622465>,  <42.804577, 37.701057, 30.145016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156101, 37.290730, 30.622465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017006, 37.587173, 30.852190>,  <42.933548, 37.765041, 30.990025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017006, 37.587173, 30.852190>,  <43.156101, 37.290730, 30.622465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017006, 37.587173, 30.852190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318835, -0.669505, 0.670900,
		0.881717, 0.050185, 0.469102,
		-0.347735, 0.741110, 0.574314,
		42.912685, 37.809505, 31.024485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349743, 37.032429, 31.273699>,  <43.156101, 37.290730, 30.622465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349743, 37.032429, 31.273699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083805, 37.319462, 31.356709>,  <42.924244, 37.491680, 31.406513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083805, 37.319462, 31.356709>,  <43.349743, 37.032429, 31.273699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083805, 37.319462, 31.356709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376532, -0.561869, 0.736564,
		0.645145, 0.411559, 0.643745,
		-0.664840, 0.717581, 0.207522,
		42.884354, 37.534737, 31.418964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347298, 37.179192, 32.037678>,  <43.349743, 37.032429, 31.273699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347298, 37.179192, 32.037678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.990967, 37.322491, 31.925901>,  <42.777168, 37.408470, 31.858835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.990967, 37.322491, 31.925901>,  <43.347298, 37.179192, 32.037678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990967, 37.322491, 31.925901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451004, -0.622723, 0.639384,
		0.055044, 0.695609, 0.716309,
		-0.890823, 0.358252, -0.279446,
		42.723721, 37.429966, 31.842068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986652, 37.237976, 32.696899>,  <43.347298, 37.179192, 32.037678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986652, 37.237976, 32.696899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682793, 37.258217, 32.437553>,  <42.500477, 37.270359, 32.281948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682793, 37.258217, 32.437553>,  <42.986652, 37.237976, 32.696899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682793, 37.258217, 32.437553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564897, -0.545306, 0.619301,
		-0.322221, 0.836709, 0.442823,
		-0.759648, 0.050597, -0.648363,
		42.454899, 37.273396, 32.243046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451748, 37.470284, 33.069256>,  <42.986652, 37.237976, 32.696899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451748, 37.470284, 33.069256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306778, 37.260418, 32.761131>,  <42.219795, 37.134499, 32.576256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306778, 37.260418, 32.761131>,  <42.451748, 37.470284, 33.069256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306778, 37.260418, 32.761131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431313, -0.638258, 0.637649,
		-0.826206, 0.563346, 0.005028,
		-0.362426, -0.524661, -0.770311,
		42.198051, 37.103020, 32.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744335, 37.280895, 33.254963>,  <42.451748, 37.470284, 33.069256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744335, 37.280895, 33.254963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.843399, 37.015804, 32.972275>,  <41.902840, 36.856750, 32.802662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.843399, 37.015804, 32.972275>,  <41.744335, 37.280895, 33.254963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843399, 37.015804, 32.972275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325793, -0.743933, 0.583457,
		-0.912426, 0.085744, -0.400158,
		0.247663, -0.662730, -0.706719,
		41.917698, 36.816986, 32.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180950, 36.817577, 33.213112>,  <41.744335, 37.280895, 33.254963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180950, 36.817577, 33.213112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475925, 36.608665, 33.041809>,  <41.652912, 36.483318, 32.939030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475925, 36.608665, 33.041809>,  <41.180950, 36.817577, 33.213112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475925, 36.608665, 33.041809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293732, -0.818961, 0.492975,
		-0.608194, -0.237749, -0.757348,
		0.737443, -0.522281, -0.428253,
		41.697159, 36.451981, 32.913334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963856, 36.103199, 33.204628>,  <41.180950, 36.817577, 33.213112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963856, 36.103199, 33.204628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349762, 36.052181, 33.112583>,  <41.581306, 36.021572, 33.057358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349762, 36.052181, 33.112583>,  <40.963856, 36.103199, 33.204628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349762, 36.052181, 33.112583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026390, -0.823315, 0.566971,
		-0.261767, -0.553069, -0.790944,
		0.964770, -0.127541, -0.230112,
		41.639194, 36.013920, 33.043549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122177, 35.346943, 32.915810>,  <40.963856, 36.103199, 33.204628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122177, 35.346943, 32.915810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466236, 35.496311, 33.054783>,  <41.672672, 35.585934, 33.138168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466236, 35.496311, 33.054783>,  <41.122177, 35.346943, 32.915810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466236, 35.496311, 33.054783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144023, -0.831268, 0.536890,
		0.489297, -0.411764, -0.768790,
		0.860143, 0.373422, 0.347433,
		41.724277, 35.608337, 33.159012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596848, 34.713440, 32.887276>,  <41.122177, 35.346943, 32.915810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596848, 34.713440, 32.887276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754112, 34.993683, 33.125462>,  <41.848473, 35.161827, 33.268372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754112, 34.993683, 33.125462>,  <41.596848, 34.713440, 32.887276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754112, 34.993683, 33.125462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338501, -0.712420, 0.614716,
		0.854892, -0.040118, -0.517252,
		0.393162, 0.700606, 0.595462,
		41.872063, 35.203865, 33.304100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291630, 34.472324, 33.169159>,  <41.596848, 34.713440, 32.887276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291630, 34.472324, 33.169159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.140224, 34.736626, 33.428429>,  <42.049381, 34.895206, 33.583992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.140224, 34.736626, 33.428429>,  <42.291630, 34.472324, 33.169159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140224, 34.736626, 33.428429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242793, -0.604883, 0.758398,
		0.893185, 0.444437, 0.068530,
		-0.378513, 0.660751, 0.648179,
		42.026672, 34.934853, 33.622883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705757, 34.334133, 33.803013>,  <42.291630, 34.472324, 33.169159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705757, 34.334133, 33.803013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.395908, 34.536694, 33.954548>,  <42.209999, 34.658230, 34.045471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.395908, 34.536694, 33.954548>,  <42.705757, 34.334133, 33.803013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395908, 34.536694, 33.954548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080934, -0.673477, 0.734764,
		0.627228, 0.538501, 0.562674,
		-0.774619, 0.506404, 0.378841,
		42.163521, 34.688614, 34.068199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747677, 34.577557, 34.535358>,  <42.705757, 34.334133, 33.803013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747677, 34.577557, 34.535358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356216, 34.535339, 34.464817>,  <42.121342, 34.510010, 34.422493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356216, 34.535339, 34.464817>,  <42.747677, 34.577557, 34.535358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356216, 34.535339, 34.464817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062663, -0.663981, 0.745119,
		-0.195739, 0.740263, 0.643192,
		-0.978652, -0.105544, -0.176354,
		42.062622, 34.503677, 34.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280277, 35.105103, 34.132862>,  <42.747677, 34.577557, 34.535358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280277, 35.105103, 34.132862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605206, 35.055386, 34.360786>,  <43.800163, 35.025555, 34.497540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605206, 35.055386, 34.360786>,  <43.280277, 35.105103, 34.132862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605206, 35.055386, 34.360786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398980, 0.831057, -0.387504,
		-0.425379, 0.542121, 0.724678,
		0.812322, -0.124295, 0.569809,
		43.848904, 35.018097, 34.531731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340664, 35.818443, 34.363358>,  <43.280277, 35.105103, 34.132862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340664, 35.818443, 34.363358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685600, 35.616119, 34.354198>,  <43.892563, 35.494724, 34.348701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685600, 35.616119, 34.354198>,  <43.340664, 35.818443, 34.363358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685600, 35.616119, 34.354198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416723, 0.734699, -0.535312,
		0.287587, 0.452081, 0.844344,
		0.862343, -0.505806, -0.022897,
		43.944302, 35.464378, 34.347328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804371, 36.338387, 34.620171>,  <43.340664, 35.818443, 34.363358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804371, 36.338387, 34.620171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985546, 36.051434, 34.408432>,  <44.094250, 35.879261, 34.281387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985546, 36.051434, 34.408432>,  <43.804371, 36.338387, 34.620171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985546, 36.051434, 34.408432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438630, 0.696221, -0.568226,
		0.776178, 0.025184, 0.630011,
		0.452936, -0.717386, -0.529345,
		44.121426, 35.836216, 34.249630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481579, 36.591991, 34.554935>,  <43.804371, 36.338387, 34.620171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481579, 36.591991, 34.554935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425911, 36.307186, 34.279644>,  <44.392509, 36.136303, 34.114468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425911, 36.307186, 34.279644>,  <44.481579, 36.591991, 34.554935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425911, 36.307186, 34.279644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412646, 0.590083, -0.693920,
		0.900197, -0.380571, 0.211688,
		-0.139172, -0.712017, -0.688231,
		44.384159, 36.093582, 34.073174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110405, 36.738773, 34.280304>,  <44.481579, 36.591991, 34.554935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110405, 36.738773, 34.280304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886120, 36.527592, 34.025158>,  <44.751549, 36.400883, 33.872070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.886120, 36.527592, 34.025158>,  <45.110405, 36.738773, 34.280304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886120, 36.527592, 34.025158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207778, 0.655994, -0.725603,
		0.801520, -0.539386, -0.258125,
		-0.560709, -0.527953, -0.637864,
		44.717907, 36.369205, 33.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498459, 36.612129, 33.762833>,  <45.110405, 36.738773, 34.280304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498459, 36.612129, 33.762833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145882, 36.555546, 33.582584>,  <44.934338, 36.521595, 33.474438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145882, 36.555546, 33.582584>,  <45.498459, 36.612129, 33.762833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145882, 36.555546, 33.582584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239256, 0.688877, -0.684255,
		0.407211, -0.710942, -0.573359,
		-0.881440, -0.141456, -0.450615,
		44.881451, 36.513107, 33.447399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650627, 36.621906, 33.088100>,  <45.498459, 36.612129, 33.762833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650627, 36.621906, 33.088100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254852, 36.679672, 33.083130>,  <45.017387, 36.714333, 33.080147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254852, 36.679672, 33.083130>,  <45.650627, 36.621906, 33.088100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254852, 36.679672, 33.083130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097176, 0.597237, -0.796157,
		-0.107556, -0.788956, -0.604963,
		-0.989438, 0.144419, -0.012431,
		44.958019, 36.723000, 33.079399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479183, 36.557281, 32.348129>,  <45.650627, 36.621906, 33.088100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479183, 36.557281, 32.348129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183044, 36.750935, 32.534679>,  <45.005363, 36.867126, 32.646610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183044, 36.750935, 32.534679>,  <45.479183, 36.557281, 32.348129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183044, 36.750935, 32.534679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015142, 0.681591, -0.731577,
		-0.672058, -0.548680, -0.497281,
		-0.740344, 0.484132, 0.466376,
		44.960941, 36.896175, 32.674591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991447, 36.850594, 31.825470>,  <45.479183, 36.557281, 32.348129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991447, 36.850594, 31.825470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952526, 37.070877, 32.157074>,  <44.929173, 37.203045, 32.356037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952526, 37.070877, 32.157074>,  <44.991447, 36.850594, 31.825470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952526, 37.070877, 32.157074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019979, 0.831713, -0.554846,
		-0.995054, -0.070550, -0.069925,
		-0.097302, 0.550705, 0.829009,
		44.923336, 37.236088, 32.405777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718346, 37.454723, 31.555992>,  <44.991447, 36.850594, 31.825470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718346, 37.454723, 31.555992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815140, 37.581276, 31.922892>,  <44.873215, 37.657207, 32.143032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815140, 37.581276, 31.922892>,  <44.718346, 37.454723, 31.555992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815140, 37.581276, 31.922892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076831, 0.936130, -0.343159,
		-0.967233, 0.153513, 0.202221,
		0.241985, 0.316378, 0.917250,
		44.887733, 37.676189, 32.198067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403790, 38.099773, 31.488550>,  <44.718346, 37.454723, 31.555992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403790, 38.099773, 31.488550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667957, 38.097324, 31.788900>,  <44.826458, 38.095856, 31.969110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667957, 38.097324, 31.788900>,  <44.403790, 38.099773, 31.488550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667957, 38.097324, 31.788900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164124, 0.976965, -0.136390,
		-0.732745, 0.213311, 0.646207,
		0.660415, -0.006119, 0.750876,
		44.866081, 38.095490, 32.014164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203098, 38.685905, 31.850737>,  <44.403790, 38.099773, 31.488550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203098, 38.685905, 31.850737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572258, 38.605469, 31.982086>,  <44.793755, 38.557209, 32.060894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572258, 38.605469, 31.982086>,  <44.203098, 38.685905, 31.850737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572258, 38.605469, 31.982086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181038, 0.979269, 0.090874,
		-0.339840, -0.024419, 0.940166,
		0.922894, -0.201088, 0.328373,
		44.849125, 38.545143, 32.080597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487164, 39.320179, 32.361332>,  <44.203098, 38.685905, 31.850737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487164, 39.320179, 32.361332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837215, 39.142391, 32.284813>,  <45.047245, 39.035717, 32.238899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837215, 39.142391, 32.284813>,  <44.487164, 39.320179, 32.361332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837215, 39.142391, 32.284813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411491, 0.891579, -0.189109,
		0.254615, 0.086775, 0.963141,
		0.875127, -0.444474, -0.191302,
		45.099754, 39.009048, 32.227421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063648, 39.704124, 32.735561>,  <44.487164, 39.320179, 32.361332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063648, 39.704124, 32.735561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250023, 39.496128, 32.449200>,  <45.361847, 39.371330, 32.277382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250023, 39.496128, 32.449200>,  <45.063648, 39.704124, 32.735561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250023, 39.496128, 32.449200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555723, 0.801582, -0.220538,
		0.688530, -0.295085, 0.662458,
		0.465937, -0.519990, -0.715900,
		45.389805, 39.340130, 32.234428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815346, 39.891956, 32.875027>,  <45.063648, 39.704124, 32.735561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815346, 39.891956, 32.875027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793259, 39.742817, 32.504528>,  <45.780006, 39.653332, 32.282230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793259, 39.742817, 32.504528>,  <45.815346, 39.891956, 32.875027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793259, 39.742817, 32.504528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512201, 0.785727, -0.346818,
		0.857089, -0.493575, 0.147590,
		-0.055215, -0.372850, -0.926247,
		45.776695, 39.630962, 32.226654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465782, 39.843815, 32.679577>,  <45.815346, 39.891956, 32.875027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465782, 39.843815, 32.679577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.224442, 39.873890, 32.362007>,  <46.079639, 39.891933, 32.171463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.224442, 39.873890, 32.362007>,  <46.465782, 39.843815, 32.679577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224442, 39.873890, 32.362007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551320, 0.758648, -0.347131,
		0.576211, -0.647148, -0.499180,
		-0.603347, 0.075187, -0.793926,
		46.043438, 39.896446, 32.123829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906067, 39.728531, 32.065926>,  <46.465782, 39.843815, 32.679577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906067, 39.728531, 32.065926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583511, 39.928230, 31.939123>,  <46.389977, 40.048050, 31.863041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583511, 39.928230, 31.939123>,  <46.906067, 39.728531, 32.065926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583511, 39.928230, 31.939123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580108, 0.771953, -0.259929,
		0.114946, -0.393502, -0.912109,
		-0.806388, 0.499244, -0.317007,
		46.341595, 40.078003, 31.844021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051662, 39.979279, 31.385384>,  <46.906067, 39.728531, 32.065926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051662, 39.979279, 31.385384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.747879, 40.202015, 31.519932>,  <46.565609, 40.335659, 31.600660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.747879, 40.202015, 31.519932>,  <47.051662, 39.979279, 31.385384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747879, 40.202015, 31.519932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413565, 0.812380, -0.411099,
		-0.502180, -0.173101, -0.847261,
		-0.759459, 0.556844, 0.336372,
		46.520042, 40.369068, 31.620844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783199, 40.304333, 30.814241>,  <47.051662, 39.979279, 31.385384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783199, 40.304333, 30.814241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.654705, 40.524216, 31.122690>,  <46.577606, 40.656147, 31.307760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.654705, 40.524216, 31.122690>,  <46.783199, 40.304333, 30.814241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654705, 40.524216, 31.122690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135398, 0.832575, -0.537109,
		-0.937269, -0.068132, -0.341884,
		-0.321239, 0.549706, 0.771122,
		46.558334, 40.689129, 31.354027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.400116, 40.832104, 30.520088>,  <46.783199, 40.304333, 30.814241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.400116, 40.832104, 30.520088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.481758, 40.974945, 30.884684>,  <46.530743, 41.060650, 31.103441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.481758, 40.974945, 30.884684>,  <46.400116, 40.832104, 30.520088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481758, 40.974945, 30.884684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048711, 0.926233, -0.373791,
		-0.977736, 0.120692, 0.171653,
		0.204105, 0.357107, 0.911491,
		46.542988, 41.082077, 31.158131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983421, 41.466961, 30.519905>,  <46.400116, 40.832104, 30.520088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983421, 41.466961, 30.519905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276844, 41.474571, 30.791651>,  <46.452896, 41.479137, 30.954699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276844, 41.474571, 30.791651>,  <45.983421, 41.466961, 30.519905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276844, 41.474571, 30.791651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251834, 0.920843, -0.297705,
		-0.631250, 0.389470, 0.670698,
		0.733555, 0.019022, 0.679364,
		46.496910, 41.480278, 30.995461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.556030, 35.559685, 41.349995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166328, 35.625549, 41.288391>,  <37.932507, 35.665066, 41.251427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166328, 35.625549, 41.288391>,  <38.556030, 35.559685, 41.349995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166328, 35.625549, 41.288391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162015, 0.036260, -0.986122,
		-0.156788, -0.985684, -0.062003,
		-0.974253, 0.164658, -0.154011,
		37.874054, 35.674946, 41.242188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252373, 35.023159, 40.792835>,  <38.556030, 35.559685, 41.349995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252373, 35.023159, 40.792835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988491, 35.322212, 40.823376>,  <37.830162, 35.501644, 40.841702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988491, 35.322212, 40.823376>,  <38.252373, 35.023159, 40.792835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988491, 35.322212, 40.823376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236448, -0.110047, -0.965392,
		-0.713361, -0.654926, 0.249375,
		-0.659704, 0.747637, 0.076352,
		37.790581, 35.546505, 40.846283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602451, 34.890717, 40.302246>,  <38.252373, 35.023159, 40.792835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602451, 34.890717, 40.302246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616154, 35.288490, 40.342091>,  <37.624374, 35.527157, 40.365997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616154, 35.288490, 40.342091>,  <37.602451, 34.890717, 40.302246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616154, 35.288490, 40.342091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058014, 0.097518, -0.993541,
		-0.997728, 0.039817, -0.054350,
		0.034259, 0.994437, 0.099607,
		37.626431, 35.586823, 40.371971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139874, 35.227364, 39.767292>,  <37.602451, 34.890717, 40.302246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139874, 35.227364, 39.767292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369209, 35.535866, 39.877892>,  <37.506809, 35.720966, 39.944252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369209, 35.535866, 39.877892>,  <37.139874, 35.227364, 39.767292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369209, 35.535866, 39.877892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130315, 0.247335, -0.960127,
		-0.808888, 0.586510, 0.041301,
		0.573340, 0.771253, 0.276498,
		37.541210, 35.767242, 39.960842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766998, 35.892559, 39.495888>,  <37.139874, 35.227364, 39.767292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766998, 35.892559, 39.495888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159447, 35.939510, 39.557377>,  <37.394917, 35.967682, 39.594269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159447, 35.939510, 39.557377>,  <36.766998, 35.892559, 39.495888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159447, 35.939510, 39.557377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122969, 0.234903, -0.964209,
		-0.149285, 0.964906, 0.216034,
		0.981118, 0.117376, 0.153721,
		37.453781, 35.974724, 39.603493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049335, 36.352100, 38.958954>,  <36.766998, 35.892559, 39.495888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049335, 36.352100, 38.958954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410072, 36.322491, 39.129227>,  <37.626514, 36.304726, 39.231392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410072, 36.322491, 39.129227>,  <37.049335, 36.352100, 38.958954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410072, 36.322491, 39.129227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410538, 0.453947, -0.790817,
		-0.134701, 0.887949, 0.439775,
		0.901839, -0.074020, 0.425684,
		37.680626, 36.300285, 39.256931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426731, 37.023777, 38.938362>,  <37.049335, 36.352100, 38.958954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426731, 37.023777, 38.938362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702332, 36.734074, 38.927563>,  <37.867691, 36.560253, 38.921085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702332, 36.734074, 38.927563>,  <37.426731, 37.023777, 38.938362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702332, 36.734074, 38.927563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266368, 0.287692, -0.919936,
		0.674035, 0.626648, 0.391139,
		0.689003, -0.724255, -0.026995,
		37.909031, 36.516796, 38.919464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021252, 37.315422, 38.737984>,  <37.426731, 37.023777, 38.938362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021252, 37.315422, 38.737984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077087, 36.928825, 38.651814>,  <38.110588, 36.696869, 38.600113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077087, 36.928825, 38.651814>,  <38.021252, 37.315422, 38.737984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077087, 36.928825, 38.651814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296746, 0.248383, -0.922089,
		0.944699, 0.064788, 0.321475,
		0.139589, -0.966493, -0.215422,
		38.118965, 36.638878, 38.587189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556015, 37.359756, 38.277615>,  <38.021252, 37.315422, 38.737984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556015, 37.359756, 38.277615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394886, 36.998169, 38.220253>,  <38.298206, 36.781216, 38.185837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394886, 36.998169, 38.220253>,  <38.556015, 37.359756, 38.277615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394886, 36.998169, 38.220253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071649, 0.125055, -0.989559,
		0.912468, -0.408894, 0.014393,
		-0.402825, -0.903973, -0.143405,
		38.274040, 36.726978, 38.177231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964642, 37.009026, 37.819397>,  <38.556015, 37.359756, 38.277615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964642, 37.009026, 37.819397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607380, 36.830139, 37.800339>,  <38.393021, 36.722809, 37.788902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607380, 36.830139, 37.800339>,  <38.964642, 37.009026, 37.819397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607380, 36.830139, 37.800339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052613, 0.001321, -0.998614,
		0.446656, -0.894427, 0.022349,
		-0.893158, -0.447213, -0.047648,
		38.339432, 36.695976, 37.786045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014503, 36.554268, 37.301533>,  <38.964642, 37.009026, 37.819397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014503, 36.554268, 37.301533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618446, 36.605518, 37.324154>,  <38.380810, 36.636269, 37.337727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618446, 36.605518, 37.324154>,  <39.014503, 36.554268, 37.301533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618446, 36.605518, 37.324154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032589, 0.181942, -0.982769,
		-0.136204, -0.974926, -0.175973,
		-0.990145, 0.128123, 0.056553,
		38.321404, 36.643955, 37.341118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807354, 36.216110, 36.722366>,  <39.014503, 36.554268, 37.301533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807354, 36.216110, 36.722366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474205, 36.424522, 36.797039>,  <38.274315, 36.549568, 36.841843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474205, 36.424522, 36.797039>,  <38.807354, 36.216110, 36.722366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474205, 36.424522, 36.797039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092992, 0.200762, -0.975216,
		-0.545596, -0.829591, -0.118758,
		-0.832873, 0.521031, 0.186681,
		38.224342, 36.580833, 36.853043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217968, 36.006504, 36.341366>,  <38.807354, 36.216110, 36.722366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217968, 36.006504, 36.341366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153130, 36.390007, 36.434757>,  <38.114227, 36.620110, 36.490791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153130, 36.390007, 36.434757>,  <38.217968, 36.006504, 36.341366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153130, 36.390007, 36.434757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095394, 0.220279, -0.970761,
		-0.982153, -0.179632, 0.055752,
		-0.162098, 0.958754, 0.233483,
		38.104500, 36.677635, 36.504803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285519, 35.229687, 36.305008>,  <38.217968, 36.006504, 36.341366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285519, 35.229687, 36.305008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128967, 34.868740, 36.232834>,  <38.035038, 34.652172, 36.189529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128967, 34.868740, 36.232834>,  <38.285519, 35.229687, 36.305008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128967, 34.868740, 36.232834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317229, -0.051760, 0.946935,
		-0.863823, 0.427849, -0.265999,
		-0.391377, -0.902367, -0.180438,
		38.011555, 34.598030, 36.178703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642601, 35.075047, 36.414600>,  <38.285519, 35.229687, 36.305008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642601, 35.075047, 36.414600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746723, 34.693008, 36.471218>,  <37.809196, 34.463787, 36.505188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746723, 34.693008, 36.471218>,  <37.642601, 35.075047, 36.414600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746723, 34.693008, 36.471218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506174, -0.010153, 0.862371,
		-0.822209, -0.296126, -0.486088,
		0.260306, -0.955095, 0.141543,
		37.824814, 34.406479, 36.513680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080559, 34.757778, 36.631016>,  <37.642601, 35.075047, 36.414600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080559, 34.757778, 36.631016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344673, 34.476658, 36.736916>,  <37.503143, 34.307987, 36.800457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344673, 34.476658, 36.736916>,  <37.080559, 34.757778, 36.631016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344673, 34.476658, 36.736916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584846, -0.260033, 0.768334,
		-0.471141, -0.662160, -0.582726,
		0.660289, -0.702799, 0.264750,
		37.542759, 34.265820, 36.816341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765137, 34.064644, 36.698093>,  <37.080559, 34.757778, 36.631016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765137, 34.064644, 36.698093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089493, 34.081474, 36.931568>,  <37.284107, 34.091572, 37.071651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089493, 34.081474, 36.931568>,  <36.765137, 34.064644, 36.698093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089493, 34.081474, 36.931568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555710, -0.257257, 0.790573,
		0.183421, -0.965427, -0.185225,
		0.810890, 0.042076, 0.583683,
		37.332760, 34.094097, 37.106674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569317, 33.577389, 37.236443>,  <36.765137, 34.064644, 36.698093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569317, 33.577389, 37.236443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894775, 33.767025, 37.371033>,  <37.090050, 33.880806, 37.451786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894775, 33.767025, 37.371033>,  <36.569317, 33.577389, 37.236443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894775, 33.767025, 37.371033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352040, -0.058801, 0.934136,
		0.462649, -0.878511, 0.119055,
		0.813648, 0.474090, 0.336475,
		37.138870, 33.909252, 37.471973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930157, 33.080212, 37.664566>,  <36.569317, 33.577389, 37.236443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930157, 33.080212, 37.664566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050583, 33.444736, 37.776897>,  <37.122841, 33.663452, 37.844296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050583, 33.444736, 37.776897>,  <36.930157, 33.080212, 37.664566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050583, 33.444736, 37.776897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143806, -0.247739, 0.958095,
		0.942697, -0.328838, 0.056466,
		0.301069, 0.911313, 0.280831,
		37.140903, 33.718132, 37.861145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407780, 32.962982, 38.144665>,  <36.930157, 33.080212, 37.664566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407780, 32.962982, 38.144665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296356, 33.337265, 38.231251>,  <37.229504, 33.561836, 38.283203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296356, 33.337265, 38.231251>,  <37.407780, 32.962982, 38.144665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296356, 33.337265, 38.231251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228652, -0.283514, 0.931310,
		0.932805, 0.209927, 0.292926,
		-0.278556, 0.935709, 0.216463,
		37.212791, 33.617977, 38.296188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669113, 33.047661, 38.796127>,  <37.407780, 32.962982, 38.144665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669113, 33.047661, 38.796127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408390, 33.350269, 38.774906>,  <37.251957, 33.531834, 38.762173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408390, 33.350269, 38.774906>,  <37.669113, 33.047661, 38.796127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408390, 33.350269, 38.774906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207179, -0.110333, 0.972061,
		0.729535, 0.644591, 0.228652,
		-0.651810, 0.756524, -0.053054,
		37.212849, 33.577225, 38.758991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787670, 33.455132, 39.412598>,  <37.669113, 33.047661, 38.796127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787670, 33.455132, 39.412598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417557, 33.538704, 39.285984>,  <37.195488, 33.588848, 39.210014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417557, 33.538704, 39.285984>,  <37.787670, 33.455132, 39.412598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417557, 33.538704, 39.285984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344439, -0.113542, 0.931917,
		0.158769, 0.971316, 0.177024,
		-0.925286, 0.208934, -0.316533,
		37.139973, 33.601383, 39.191025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644463, 34.060730, 39.870094>,  <37.787670, 33.455132, 39.412598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644463, 34.060730, 39.870094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308804, 33.915234, 39.708336>,  <37.107410, 33.827938, 39.611282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308804, 33.915234, 39.708336>,  <37.644463, 34.060730, 39.870094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308804, 33.915234, 39.708336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370183, -0.162791, 0.914584,
		-0.398501, 0.917166, 0.001955,
		-0.839144, -0.363738, -0.404391,
		37.057060, 33.806110, 39.587017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104664, 34.339382, 40.233318>,  <37.644463, 34.060730, 39.870094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104664, 34.339382, 40.233318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932964, 34.017082, 40.070095>,  <36.829945, 33.823704, 39.972160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932964, 34.017082, 40.070095>,  <37.104664, 34.339382, 40.233318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932964, 34.017082, 40.070095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401799, -0.234272, 0.885253,
		-0.808888, 0.543955, -0.223187,
		-0.429252, -0.805748, -0.408061,
		36.804188, 33.775356, 39.947678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469528, 34.355732, 40.569786>,  <37.104664, 34.339382, 40.233318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469528, 34.355732, 40.569786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478531, 33.992996, 40.401440>,  <36.483932, 33.775352, 40.300430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478531, 33.992996, 40.401440>,  <36.469528, 34.355732, 40.569786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478531, 33.992996, 40.401440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631079, -0.339391, 0.697534,
		-0.775392, 0.249902, -0.579928,
		0.022507, -0.906842, -0.420869,
		36.485283, 33.720943, 40.275181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774948, 34.118969, 40.526196>,  <36.469528, 34.355732, 40.569786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774948, 34.118969, 40.526196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011627, 33.796616, 40.517788>,  <36.153633, 33.603203, 40.512741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011627, 33.796616, 40.517788>,  <35.774948, 34.118969, 40.526196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011627, 33.796616, 40.517788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493655, -0.382823, 0.780866,
		-0.637336, -0.451659, -0.624345,
		0.591699, -0.805885, -0.021023,
		36.189137, 33.554852, 40.511482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273586, 33.501347, 40.517467>,  <35.774948, 34.118969, 40.526196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273586, 33.501347, 40.517467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625164, 33.337513, 40.615200>,  <35.836109, 33.239212, 40.673840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625164, 33.337513, 40.615200>,  <35.273586, 33.501347, 40.517467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625164, 33.337513, 40.615200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458861, -0.586580, 0.667360,
		-0.130020, -0.698687, -0.703514,
		0.878943, -0.409586, 0.244333,
		35.888847, 33.214638, 40.688499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207699, 32.710819, 40.571774>,  <35.273586, 33.501347, 40.517467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207699, 32.710819, 40.571774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519821, 32.838913, 40.786648>,  <35.707096, 32.915768, 40.915573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519821, 32.838913, 40.786648>,  <35.207699, 32.710819, 40.571774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519821, 32.838913, 40.786648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213741, -0.670680, 0.710284,
		0.587737, -0.669059, -0.454891,
		0.780308, 0.320231, 0.537188,
		35.753914, 32.934982, 40.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859787, 32.101261, 40.220737>,  <35.207699, 32.710819, 40.571774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859787, 32.101261, 40.220737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484478, 31.967621, 40.184898>,  <34.259293, 31.887436, 40.163395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484478, 31.967621, 40.184898>,  <34.859787, 32.101261, 40.220737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484478, 31.967621, 40.184898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016230, 0.301252, -0.953407,
		0.345532, -0.893095, -0.288077,
		-0.938267, -0.334108, -0.089597,
		34.202999, 31.867390, 40.158020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850830, 31.521763, 39.707298>,  <34.859787, 32.101261, 40.220737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850830, 31.521763, 39.707298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510143, 31.729534, 39.734917>,  <34.305729, 31.854197, 39.751488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510143, 31.729534, 39.734917>,  <34.850830, 31.521763, 39.707298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510143, 31.729534, 39.734917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103009, 0.295165, -0.949877,
		-0.513774, -0.801917, -0.304904,
		-0.851719, 0.519430, 0.069044,
		34.254627, 31.885363, 39.755630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506214, 31.439072, 39.019299>,  <34.850830, 31.521763, 39.707298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506214, 31.439072, 39.019299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267223, 31.716623, 39.180073>,  <34.123829, 31.883154, 39.276539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267223, 31.716623, 39.180073>,  <34.506214, 31.439072, 39.019299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267223, 31.716623, 39.180073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334118, 0.240236, -0.911401,
		-0.728962, -0.678835, 0.088301,
		-0.597478, 0.693880, 0.401934,
		34.087978, 31.924788, 39.300652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846245, 31.370007, 38.684151>,  <34.506214, 31.439072, 39.019299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846245, 31.370007, 38.684151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855988, 31.734949, 38.847618>,  <33.861835, 31.953915, 38.945698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855988, 31.734949, 38.847618>,  <33.846245, 31.370007, 38.684151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855988, 31.734949, 38.847618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191222, 0.405498, -0.893871,
		-0.981245, -0.056374, 0.184340,
		0.024358, 0.912356, 0.408673,
		33.863297, 32.008656, 38.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320892, 31.674776, 38.388340>,  <33.846245, 31.370007, 38.684151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320892, 31.674776, 38.388340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528992, 31.994312, 38.509132>,  <33.653851, 32.186035, 38.581608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528992, 31.994312, 38.509132>,  <33.320892, 31.674776, 38.388340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528992, 31.994312, 38.509132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342303, 0.519006, -0.783238,
		-0.782412, 0.304112, 0.543459,
		0.520250, 0.798843, 0.301978,
		33.685066, 32.233967, 38.599724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905182, 32.269077, 38.239891>,  <33.320892, 31.674776, 38.388340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905182, 32.269077, 38.239891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266853, 32.429398, 38.298969>,  <33.483856, 32.525589, 38.334415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266853, 32.429398, 38.298969>,  <32.905182, 32.269077, 38.239891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266853, 32.429398, 38.298969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128920, 0.585710, -0.800202,
		-0.407226, 0.704488, 0.581260,
		0.904183, 0.400799, 0.147694,
		33.538109, 32.549637, 38.343277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810040, 32.950451, 38.203888>,  <32.905182, 32.269077, 38.239891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810040, 32.950451, 38.203888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192337, 32.886101, 38.105370>,  <33.421715, 32.847488, 38.046257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192337, 32.886101, 38.105370>,  <32.810040, 32.950451, 38.203888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192337, 32.886101, 38.105370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077893, 0.668952, -0.739213,
		0.283686, 0.725686, 0.626818,
		0.955748, -0.160880, -0.246298,
		33.479061, 32.837837, 38.031479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150776, 33.582291, 38.003792>,  <32.810040, 32.950451, 38.203888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150776, 33.582291, 38.003792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413177, 33.330231, 37.837624>,  <33.570618, 33.178997, 37.737923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413177, 33.330231, 37.837624>,  <33.150776, 33.582291, 38.003792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413177, 33.330231, 37.837624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023754, 0.567367, -0.823122,
		0.754384, 0.530103, 0.387164,
		0.656004, -0.630147, -0.415421,
		33.609978, 33.141186, 37.712997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793957, 33.995361, 37.653866>,  <33.150776, 33.582291, 38.003792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793957, 33.995361, 37.653866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784958, 33.633919, 37.482758>,  <33.779560, 33.417053, 37.380093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784958, 33.633919, 37.482758>,  <33.793957, 33.995361, 37.653866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784958, 33.633919, 37.482758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024572, 0.427246, -0.903802,
		0.999445, -0.030842, 0.012593,
		-0.022494, -0.903609, -0.427767,
		33.778210, 33.362835, 37.354427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179577, 34.122715, 36.954987>,  <33.793957, 33.995361, 37.653866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179577, 34.122715, 36.954987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963524, 33.786438, 36.939507>,  <33.833893, 33.584671, 36.930218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963524, 33.786438, 36.939507>,  <34.179577, 34.122715, 36.954987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963524, 33.786438, 36.939507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233881, 0.194120, -0.952689,
		0.808430, -0.505525, -0.301472,
		-0.540130, -0.840691, -0.038700,
		33.801483, 33.534229, 36.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376770, 33.846973, 36.338306>,  <34.179577, 34.122715, 36.954987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376770, 33.846973, 36.338306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016315, 33.696728, 36.424904>,  <33.800041, 33.606579, 36.476864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016315, 33.696728, 36.424904>,  <34.376770, 33.846973, 36.338306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016315, 33.696728, 36.424904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311155, 0.212608, -0.926272,
		0.301895, -0.902058, -0.308463,
		-0.901133, -0.375618, 0.216495,
		33.745975, 33.584045, 36.489853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255539, 33.331219, 35.868412>,  <34.376770, 33.846973, 36.338306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255539, 33.331219, 35.868412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900993, 33.468834, 35.992344>,  <33.688267, 33.551403, 36.066704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900993, 33.468834, 35.992344>,  <34.255539, 33.331219, 35.868412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900993, 33.468834, 35.992344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270426, 0.158471, -0.949609,
		-0.375803, -0.925485, -0.047425,
		-0.886364, 0.344041, 0.309830,
		33.635082, 33.572044, 36.085293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.979939, 29.529968, 42.832336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613632, 29.665480, 42.918682>,  <34.393848, 29.746786, 42.970490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613632, 29.665480, 42.918682>,  <34.979939, 29.529968, 42.832336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613632, 29.665480, 42.918682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086443, 0.358587, -0.929485,
		-0.392295, -0.869854, -0.299098,
		-0.915769, 0.338777, 0.215865,
		34.338902, 29.767113, 42.983440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615513, 29.468929, 42.138752>,  <34.979939, 29.529968, 42.832336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615513, 29.468929, 42.138752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377365, 29.708780, 42.352661>,  <34.234474, 29.852692, 42.481007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377365, 29.708780, 42.352661>,  <34.615513, 29.468929, 42.138752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377365, 29.708780, 42.352661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277013, 0.471582, -0.837182,
		-0.754186, -0.646573, -0.114661,
		-0.595372, 0.599628, 0.534770,
		34.198753, 29.888668, 42.513092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957348, 29.521675, 41.834816>,  <34.615513, 29.468929, 42.138752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957348, 29.521675, 41.834816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.961807, 29.844791, 42.070560>,  <33.964485, 30.038662, 42.212009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.961807, 29.844791, 42.070560>,  <33.957348, 29.521675, 41.834816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961807, 29.844791, 42.070560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337542, 0.557847, -0.758204,
		-0.941244, -0.190479, 0.278885,
		0.011153, 0.807790, 0.589365,
		33.965153, 30.087128, 42.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252022, 29.783360, 41.794376>,  <33.957348, 29.521675, 41.834816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252022, 29.783360, 41.794376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519051, 30.058748, 41.907761>,  <33.679268, 30.223982, 41.975792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519051, 30.058748, 41.907761>,  <33.252022, 29.783360, 41.794376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519051, 30.058748, 41.907761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185277, 0.522359, -0.832354,
		-0.721122, 0.503138, 0.476272,
		0.667574, 0.688471, 0.283465,
		33.719322, 30.265289, 41.992802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915573, 30.417753, 41.743698>,  <33.252022, 29.783360, 41.794376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915573, 30.417753, 41.743698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307873, 30.495443, 41.735680>,  <33.543255, 30.542057, 41.730869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307873, 30.495443, 41.735680>,  <32.915573, 30.417753, 41.743698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307873, 30.495443, 41.735680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149574, 0.681323, -0.716538,
		-0.125513, 0.705744, 0.697260,
		0.980752, 0.194227, -0.020046,
		33.602097, 30.553711, 41.729668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017605, 31.114878, 41.824051>,  <32.915573, 30.417753, 41.743698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017605, 31.114878, 41.824051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.358349, 30.985399, 41.659344>,  <33.562794, 30.907711, 41.560520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.358349, 30.985399, 41.659344>,  <33.017605, 31.114878, 41.824051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358349, 30.985399, 41.659344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049704, 0.732657, -0.678781,
		0.521404, 0.598693, 0.608033,
		0.851861, -0.323697, -0.411768,
		33.613907, 30.888290, 41.535812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524853, 31.709572, 41.772026>,  <33.017605, 31.114878, 41.824051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524853, 31.709572, 41.772026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.625713, 31.437119, 41.497078>,  <33.686230, 31.273647, 41.332108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.625713, 31.437119, 41.497078>,  <33.524853, 31.709572, 41.772026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625713, 31.437119, 41.497078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104730, 0.725358, -0.680359,
		0.962005, 0.099563, 0.254232,
		0.252148, -0.681134, -0.687370,
		33.701359, 31.232779, 41.290867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013428, 32.041111, 41.430912>,  <33.524853, 31.709572, 41.772026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013428, 32.041111, 41.430912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.947308, 31.744682, 41.170609>,  <33.907635, 31.566826, 41.014427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.947308, 31.744682, 41.170609>,  <34.013428, 32.041111, 41.430912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947308, 31.744682, 41.170609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209715, 0.618336, -0.757417,
		0.963688, -0.261675, 0.053202,
		-0.165300, -0.741071, -0.650760,
		33.897717, 31.522362, 40.975380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561813, 32.201694, 40.944328>,  <34.013428, 32.041111, 41.430912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561813, 32.201694, 40.944328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.319595, 31.944736, 40.756439>,  <34.174263, 31.790562, 40.643707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.319595, 31.944736, 40.756439>,  <34.561813, 32.201694, 40.944328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319595, 31.944736, 40.756439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124429, 0.506556, -0.853181,
		0.786023, -0.575087, -0.226810,
		-0.605545, -0.642398, -0.469722,
		34.137932, 31.752018, 40.615524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288074, 32.135124, 41.025856>,  <34.561813, 32.201694, 40.944328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288074, 32.135124, 41.025856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.530025, 32.396923, 41.207298>,  <35.675198, 32.554001, 41.316166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.530025, 32.396923, 41.207298>,  <35.288074, 32.135124, 41.025856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530025, 32.396923, 41.207298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045438, -0.540336, 0.840222,
		0.795021, -0.528842, -0.297098,
		0.604878, 0.654494, 0.453608,
		35.711491, 32.593273, 41.343380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876984, 31.733091, 41.197220>,  <35.288074, 32.135124, 41.025856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876984, 31.733091, 41.197220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877911, 32.069721, 41.413273>,  <35.878468, 32.271698, 41.542904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877911, 32.069721, 41.413273>,  <35.876984, 31.733091, 41.197220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877911, 32.069721, 41.413273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132104, -0.535146, 0.834366,
		0.991233, -0.073290, 0.109934,
		0.002320, 0.841574, 0.540137,
		35.878605, 32.322193, 41.575314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402424, 31.682590, 41.725647>,  <35.876984, 31.733091, 41.197220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402424, 31.682590, 41.725647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.148529, 31.962994, 41.855694>,  <35.996193, 32.131237, 41.933720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.148529, 31.962994, 41.855694>,  <36.402424, 31.682590, 41.725647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148529, 31.962994, 41.855694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037918, -0.448484, 0.892986,
		0.771798, 0.554483, 0.311250,
		-0.634736, 0.701007, 0.325114,
		35.958107, 32.173294, 41.953228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763363, 32.008305, 42.237846>,  <36.402424, 31.682590, 41.725647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763363, 32.008305, 42.237846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385345, 32.112099, 42.317406>,  <36.158535, 32.174374, 42.365139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385345, 32.112099, 42.317406>,  <36.763363, 32.008305, 42.237846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385345, 32.112099, 42.317406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132637, -0.251747, 0.958661,
		0.298825, 0.932359, 0.203495,
		-0.945045, 0.259481, 0.198894,
		36.101833, 32.189941, 42.377075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797459, 32.447380, 42.751205>,  <36.763363, 32.008305, 42.237846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797459, 32.447380, 42.751205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434502, 32.280285, 42.769646>,  <36.216728, 32.180027, 42.780708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434502, 32.280285, 42.769646>,  <36.797459, 32.447380, 42.751205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434502, 32.280285, 42.769646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137774, -0.192041, 0.971668,
		-0.397052, 0.888039, 0.231810,
		-0.907396, -0.417741, 0.046098,
		36.162281, 32.154964, 42.783474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525707, 32.723316, 43.310223>,  <36.797459, 32.447380, 42.751205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525707, 32.723316, 43.310223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308075, 32.395706, 43.237377>,  <36.177494, 32.199139, 43.193672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308075, 32.395706, 43.237377>,  <36.525707, 32.723316, 43.310223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308075, 32.395706, 43.237377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060117, -0.178437, 0.982113,
		-0.836873, 0.545301, 0.047847,
		-0.544085, -0.819028, -0.182111,
		36.144848, 32.149998, 43.182743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068890, 32.717636, 43.825356>,  <36.525707, 32.723316, 43.310223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068890, 32.717636, 43.825356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015400, 32.336472, 43.716492>,  <35.983307, 32.107773, 43.651173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015400, 32.336472, 43.716492>,  <36.068890, 32.717636, 43.825356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015400, 32.336472, 43.716492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304118, -0.221914, 0.926427,
		-0.943202, 0.206654, -0.260123,
		-0.133725, -0.952916, -0.272157,
		35.975281, 32.050598, 43.634846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486691, 32.535278, 44.156788>,  <36.068890, 32.717636, 43.825356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486691, 32.535278, 44.156788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.624016, 32.171127, 44.064400>,  <35.706409, 31.952637, 44.008968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.624016, 32.171127, 44.064400>,  <35.486691, 32.535278, 44.156788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624016, 32.171127, 44.064400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383896, -0.360448, 0.850118,
		-0.857183, -0.203185, -0.473236,
		0.343309, -0.910381, -0.230968,
		35.727009, 31.898012, 43.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888649, 32.039719, 44.170563>,  <35.486691, 32.535278, 44.156788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888649, 32.039719, 44.170563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206833, 31.804794, 44.230305>,  <35.397743, 31.663839, 44.266151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206833, 31.804794, 44.230305>,  <34.888649, 32.039719, 44.170563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206833, 31.804794, 44.230305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318127, -0.194933, 0.927791,
		-0.515786, -0.785537, -0.341901,
		0.795463, -0.587309, 0.149357,
		35.445473, 31.628601, 44.275112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683685, 31.368069, 44.456554>,  <34.888649, 32.039719, 44.170563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683685, 31.368069, 44.456554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071800, 31.392759, 44.550129>,  <35.304668, 31.407574, 44.606274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071800, 31.392759, 44.550129>,  <34.683685, 31.368069, 44.456554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071800, 31.392759, 44.550129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204192, -0.309701, 0.928650,
		0.129770, -0.948828, -0.287897,
		0.970291, 0.061725, 0.233933,
		35.362888, 31.411276, 44.620308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815979, 30.792315, 44.841518>,  <34.683685, 31.368069, 44.456554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815979, 30.792315, 44.841518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122833, 31.032314, 44.932297>,  <35.306946, 31.176315, 44.986763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122833, 31.032314, 44.932297>,  <34.815979, 30.792315, 44.841518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122833, 31.032314, 44.932297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105441, -0.231030, 0.967216,
		0.632762, -0.765913, -0.113966,
		0.767134, 0.600001, 0.226946,
		35.352974, 31.212315, 45.000381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295967, 30.316977, 45.048458>,  <34.815979, 30.792315, 44.841518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295967, 30.316977, 45.048458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.282940, 30.684666, 45.205414>,  <35.275124, 30.905279, 45.299587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.282940, 30.684666, 45.205414>,  <35.295967, 30.316977, 45.048458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282940, 30.684666, 45.205414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080006, -0.388943, 0.917781,
		0.996262, 0.061285, -0.060875,
		-0.032569, 0.919221, 0.392393,
		35.273170, 30.960432, 45.323132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763672, 30.355522, 45.503284>,  <35.295967, 30.316977, 45.048458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763672, 30.355522, 45.503284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522644, 30.655420, 45.612679>,  <35.378029, 30.835360, 45.678314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522644, 30.655420, 45.612679>,  <35.763672, 30.355522, 45.503284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522644, 30.655420, 45.612679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000249, -0.342502, 0.939517,
		0.798067, 0.566191, 0.206194,
		-0.602568, 0.749746, 0.273481,
		35.341873, 30.880344, 45.694721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081196, 30.504440, 46.012489>,  <35.763672, 30.355522, 45.503284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081196, 30.504440, 46.012489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741211, 30.709942, 46.059177>,  <35.537220, 30.833242, 46.087193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741211, 30.709942, 46.059177>,  <36.081196, 30.504440, 46.012489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741211, 30.709942, 46.059177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018019, -0.249770, 0.968138,
		0.526537, 0.820776, 0.221552,
		-0.849961, 0.513752, 0.116723,
		35.486221, 30.864067, 46.094193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.965897, 34.195160, 45.538910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078072, 33.814949, 45.485470>,  <32.145378, 33.586823, 45.453407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078072, 33.814949, 45.485470>,  <31.965897, 34.195160, 45.538910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078072, 33.814949, 45.485470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341769, 0.228943, -0.911471,
		0.896967, 0.209949, 0.389066,
		0.280436, -0.950530, -0.133600,
		32.162201, 33.529789, 45.445389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668274, 34.185390, 45.323544>,  <31.965897, 34.195160, 45.538910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668274, 34.185390, 45.323544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467667, 33.864998, 45.192757>,  <32.347301, 33.672764, 45.114285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467667, 33.864998, 45.192757>,  <32.668274, 34.185390, 45.323544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467667, 33.864998, 45.192757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122327, 0.308484, -0.943331,
		0.856454, -0.513097, -0.056729,
		-0.501520, -0.800981, -0.326968,
		32.317211, 33.624702, 45.094666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953434, 34.135067, 44.721951>,  <32.668274, 34.185390, 45.323544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953434, 34.135067, 44.721951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.644463, 33.884018, 44.683083>,  <32.459080, 33.733387, 44.659760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.644463, 33.884018, 44.683083>,  <32.953434, 34.135067, 44.721951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644463, 33.884018, 44.683083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038445, 0.198929, -0.979260,
		0.633936, -0.752673, -0.177787,
		-0.772429, -0.627623, -0.097172,
		32.412735, 33.695732, 44.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064106, 33.477493, 44.270893>,  <32.953434, 34.135067, 44.721951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064106, 33.477493, 44.270893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.668079, 33.533695, 44.268764>,  <32.430462, 33.567417, 44.267487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.668079, 33.533695, 44.268764>,  <33.064106, 33.477493, 44.270893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668079, 33.533695, 44.268764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042682, 0.264246, -0.963510,
		-0.133973, -0.954166, -0.267618,
		-0.990065, 0.140507, -0.005324,
		32.371059, 33.575848, 44.267166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745415, 33.228912, 43.571953>,  <33.064106, 33.477493, 44.270893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745415, 33.228912, 43.571953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448055, 33.456989, 43.711803>,  <32.269642, 33.593838, 43.795715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448055, 33.456989, 43.711803>,  <32.745415, 33.228912, 43.571953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448055, 33.456989, 43.711803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229024, 0.274127, -0.934025,
		-0.628420, -0.774423, -0.073196,
		-0.743396, 0.570196, 0.349628,
		32.225037, 33.628048, 43.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282433, 33.233234, 43.098484>,  <32.745415, 33.228912, 43.571953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282433, 33.233234, 43.098484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145355, 33.544853, 43.308491>,  <32.063110, 33.731827, 43.434494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145355, 33.544853, 43.308491>,  <32.282433, 33.233234, 43.098484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145355, 33.544853, 43.308491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282463, 0.447554, -0.848475,
		-0.895978, -0.439063, 0.066680,
		-0.342691, 0.779050, 0.525018,
		32.042549, 33.778568, 43.465996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684252, 33.456047, 42.743729>,  <32.282433, 33.233234, 43.098484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684252, 33.456047, 42.743729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777254, 33.767204, 42.977245>,  <31.833055, 33.953899, 43.117355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777254, 33.767204, 42.977245>,  <31.684252, 33.456047, 42.743729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777254, 33.767204, 42.977245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193706, 0.625256, -0.755998,
		-0.953110, 0.062688, 0.296058,
		0.232504, 0.777898, 0.583795,
		31.847006, 34.000572, 43.152386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155851, 33.845825, 42.784901>,  <31.684252, 33.456047, 42.743729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155851, 33.845825, 42.784901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437075, 34.112251, 42.884556>,  <31.605808, 34.272106, 42.944347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437075, 34.112251, 42.884556>,  <31.155851, 33.845825, 42.784901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437075, 34.112251, 42.884556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322907, 0.611147, -0.722655,
		-0.633593, 0.427620, 0.644749,
		0.703058, 0.666063, 0.249137,
		31.647991, 34.312069, 42.959297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940189, 34.412842, 42.475727>,  <31.155851, 33.845825, 42.784901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940189, 34.412842, 42.475727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316952, 34.529194, 42.542904>,  <31.543009, 34.599007, 42.583210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316952, 34.529194, 42.542904>,  <30.940189, 34.412842, 42.475727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316952, 34.529194, 42.542904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066325, 0.651222, -0.755983,
		-0.329267, 0.700926, 0.632682,
		0.941905, 0.290883, 0.167937,
		31.599524, 34.616459, 42.593285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915102, 35.127560, 42.354092>,  <30.940189, 34.412842, 42.475727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915102, 35.127560, 42.354092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296885, 35.013687, 42.318371>,  <31.525953, 34.945366, 42.296940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296885, 35.013687, 42.318371>,  <30.915102, 35.127560, 42.354092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296885, 35.013687, 42.318371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067568, 0.497785, -0.864664,
		0.290605, 0.819249, 0.494349,
		0.954454, -0.284678, -0.089304,
		31.583221, 34.928284, 42.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315760, 35.660137, 42.072895>,  <30.915102, 35.127560, 42.354092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315760, 35.660137, 42.072895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.526453, 35.330666, 41.988888>,  <31.652868, 35.132984, 41.938484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.526453, 35.330666, 41.988888>,  <31.315760, 35.660137, 42.072895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526453, 35.330666, 41.988888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199630, 0.360024, -0.911334,
		0.826256, 0.438106, 0.354068,
		0.526734, -0.823678, -0.210014,
		31.684473, 35.083561, 41.925884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932194, 35.900864, 41.853966>,  <31.315760, 35.660137, 42.072895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932194, 35.900864, 41.853966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.930048, 35.524822, 41.717628>,  <31.928761, 35.299198, 41.635826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.930048, 35.524822, 41.717628>,  <31.932194, 35.900864, 41.853966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930048, 35.524822, 41.717628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415850, 0.307881, -0.855732,
		0.909417, -0.146333, 0.389290,
		-0.005367, -0.940104, -0.340844,
		31.928438, 35.242790, 41.615376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579918, 35.730129, 41.563450>,  <31.932194, 35.900864, 41.853966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579918, 35.730129, 41.563450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300236, 35.492554, 41.404278>,  <32.132427, 35.350010, 41.308773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300236, 35.492554, 41.404278>,  <32.579918, 35.730129, 41.563450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300236, 35.492554, 41.404278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327875, 0.228214, -0.916742,
		0.635298, -0.771466, 0.035167,
		-0.699209, -0.593935, -0.397929,
		32.090473, 35.314373, 41.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941429, 35.619419, 40.990131>,  <32.579918, 35.730129, 41.563450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941429, 35.619419, 40.990131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597363, 35.435230, 40.902420>,  <32.390923, 35.324718, 40.849792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597363, 35.435230, 40.902420>,  <32.941429, 35.619419, 40.990131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597363, 35.435230, 40.902420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095317, 0.277225, -0.956065,
		0.501030, -0.843274, -0.194569,
		-0.860165, -0.460472, -0.219276,
		32.339314, 35.297089, 40.836636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677132, 35.352108, 40.902218>,  <32.941429, 35.619419, 40.990131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677132, 35.352108, 40.902218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.931412, 35.649109, 40.986671>,  <34.083981, 35.827309, 41.037342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.931412, 35.649109, 40.986671>,  <33.677132, 35.352108, 40.902218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931412, 35.649109, 40.986671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151264, -0.148392, 0.977292,
		0.756968, -0.653204, 0.017980,
		0.635703, 0.742499, 0.211134,
		34.122124, 35.871857, 41.050011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060646, 35.074799, 41.518494>,  <33.677132, 35.352108, 40.902218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060646, 35.074799, 41.518494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108837, 35.471348, 41.539162>,  <34.137753, 35.709278, 41.551563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108837, 35.471348, 41.539162>,  <34.060646, 35.074799, 41.518494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108837, 35.471348, 41.539162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165699, -0.071400, 0.983588,
		0.978790, -0.109939, -0.172871,
		0.120478, 0.991370, 0.051669,
		34.144981, 35.768761, 41.554661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786823, 35.156181, 41.918976>,  <34.060646, 35.074799, 41.518494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786823, 35.156181, 41.918976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570957, 35.491753, 41.947151>,  <34.441437, 35.693096, 41.964058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570957, 35.491753, 41.947151>,  <34.786823, 35.156181, 41.918976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570957, 35.491753, 41.947151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283326, 0.102193, 0.953563,
		0.792771, 0.534564, -0.292840,
		-0.539667, 0.838927, 0.070440,
		34.409058, 35.743431, 41.968285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193447, 35.548923, 42.317093>,  <34.786823, 35.156181, 41.918976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193447, 35.548923, 42.317093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827785, 35.705242, 42.360168>,  <34.608387, 35.799034, 42.386013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827785, 35.705242, 42.360168>,  <35.193447, 35.548923, 42.317093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827785, 35.705242, 42.360168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079972, -0.086577, 0.993030,
		0.397401, 0.916395, 0.047891,
		-0.914154, 0.390801, 0.107692,
		34.553539, 35.822483, 42.392475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216400, 36.108952, 42.775810>,  <35.193447, 35.548923, 42.317093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216400, 36.108952, 42.775810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832832, 35.998665, 42.802494>,  <34.602692, 35.932491, 42.818504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832832, 35.998665, 42.802494>,  <35.216400, 36.108952, 42.775810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832832, 35.998665, 42.802494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028962, 0.138790, 0.989898,
		-0.282193, 0.951165, -0.125103,
		-0.958920, -0.275720, 0.066713,
		34.545155, 35.915951, 42.822510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022911, 36.524414, 43.289356>,  <35.216400, 36.108952, 42.775810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022911, 36.524414, 43.289356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754635, 36.228844, 43.263546>,  <34.593670, 36.051502, 43.248058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754635, 36.228844, 43.263546>,  <35.022911, 36.524414, 43.289356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754635, 36.228844, 43.263546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026159, -0.063380, 0.997647,
		-0.741276, 0.670800, 0.023179,
		-0.670691, -0.738925, -0.064530,
		34.553429, 36.007168, 43.244186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494873, 36.703842, 43.774551>,  <35.022911, 36.524414, 43.289356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494873, 36.703842, 43.774551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.456364, 36.310524, 43.712761>,  <34.433258, 36.074532, 43.675686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.456364, 36.310524, 43.712761>,  <34.494873, 36.703842, 43.774551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456364, 36.310524, 43.712761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038423, -0.158749, 0.986571,
		-0.994614, 0.089041, 0.053063,
		-0.096269, -0.983296, -0.154472,
		34.427483, 36.015533, 43.666420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030048, 36.509266, 44.333885>,  <34.494873, 36.703842, 43.774551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030048, 36.509266, 44.333885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188984, 36.166008, 44.203835>,  <34.284344, 35.960052, 44.125805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188984, 36.166008, 44.203835>,  <34.030048, 36.509266, 44.333885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188984, 36.166008, 44.203835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123275, -0.301166, 0.945570,
		-0.909356, -0.415789, -0.013876,
		0.397336, -0.858149, -0.325123,
		34.308186, 35.908562, 44.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607571, 35.930206, 44.619797>,  <34.030048, 36.509266, 44.333885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607571, 35.930206, 44.619797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956882, 35.773098, 44.504475>,  <34.166470, 35.678833, 44.435284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956882, 35.773098, 44.504475>,  <33.607571, 35.930206, 44.619797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956882, 35.773098, 44.504475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058165, -0.503450, 0.862064,
		-0.483742, -0.769589, -0.416805,
		0.873276, -0.392773, -0.288303,
		34.218864, 35.655266, 44.417984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642601, 35.243050, 44.715031>,  <33.607571, 35.930206, 44.619797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642601, 35.243050, 44.715031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035065, 35.320183, 44.710358>,  <34.270542, 35.366463, 44.707554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035065, 35.320183, 44.710358>,  <33.642601, 35.243050, 44.715031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035065, 35.320183, 44.710358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114565, -0.532105, 0.838892,
		0.155550, -0.824427, -0.544173,
		0.981162, 0.192833, -0.011681,
		34.329414, 35.378033, 44.706852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997910, 34.605080, 44.922539>,  <33.642601, 35.243050, 44.715031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997910, 34.605080, 44.922539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245720, 34.903275, 45.020874>,  <34.394405, 35.082191, 45.079876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245720, 34.903275, 45.020874>,  <33.997910, 34.605080, 44.922539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245720, 34.903275, 45.020874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188789, -0.445492, 0.875155,
		0.761936, -0.495769, -0.416733,
		0.619526, 0.745486, 0.245841,
		34.431580, 35.126919, 45.094627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729214, 34.340096, 45.138012>,  <33.997910, 34.605080, 44.922539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729214, 34.340096, 45.138012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728451, 34.709538, 45.291348>,  <34.727993, 34.931202, 45.383350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728451, 34.709538, 45.291348>,  <34.729214, 34.340096, 45.138012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728451, 34.709538, 45.291348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269311, -0.368702, 0.889680,
		0.963051, 0.104936, -0.248033,
		-0.001909, 0.923605, 0.383340,
		34.727879, 34.986618, 45.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305191, 34.323402, 45.574593>,  <34.729214, 34.340096, 45.138012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305191, 34.323402, 45.574593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082447, 34.632496, 45.696438>,  <34.948799, 34.817951, 45.769547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082447, 34.632496, 45.696438>,  <35.305191, 34.323402, 45.574593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082447, 34.632496, 45.696438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061779, -0.327191, 0.942937,
		0.828304, 0.543904, 0.134462,
		-0.556862, 0.772732, 0.304615,
		34.915390, 34.864315, 45.787823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709053, 34.603767, 46.063881>,  <35.305191, 34.323402, 45.574593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709053, 34.603767, 46.063881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.329376, 34.699558, 46.145542>,  <35.101570, 34.757034, 46.194538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.329376, 34.699558, 46.145542>,  <35.709053, 34.603767, 46.063881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329376, 34.699558, 46.145542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055599, -0.510924, 0.857826,
		0.309737, 0.825595, 0.471652,
		-0.949195, 0.239477, 0.204154,
		35.044617, 34.771400, 46.206787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284805, 34.446136, 46.582336>,  <35.709053, 34.603767, 46.063881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284805, 34.446136, 46.582336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.574493, 34.171532, 46.608276>,  <36.748306, 34.006767, 46.623840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.574493, 34.171532, 46.608276>,  <36.284805, 34.446136, 46.582336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574493, 34.171532, 46.608276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411997, 0.355367, -0.839031,
		0.552959, 0.634362, 0.540205,
		0.724220, -0.686513, 0.064852,
		36.791759, 33.965576, 46.627731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890530, 34.838352, 46.495121>,  <36.284805, 34.446136, 46.582336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890530, 34.838352, 46.495121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.984619, 34.460636, 46.403042>,  <37.041073, 34.234009, 46.347794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.984619, 34.460636, 46.403042>,  <36.890530, 34.838352, 46.495121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984619, 34.460636, 46.403042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384691, 0.307955, -0.870159,
		0.892571, 0.116124, 0.435697,
		0.235222, -0.944288, -0.230200,
		37.055187, 34.177349, 46.333981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577938, 34.963978, 46.145340>,  <36.890530, 34.838352, 46.495121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577938, 34.963978, 46.145340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.450596, 34.600258, 46.038139>,  <37.374191, 34.382027, 45.973820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.450596, 34.600258, 46.038139>,  <37.577938, 34.963978, 46.145340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450596, 34.600258, 46.038139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332169, 0.157780, -0.929930,
		0.887869, -0.385073, 0.251810,
		-0.318360, -0.909299, -0.267998,
		37.355087, 34.327469, 45.957741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085789, 34.608807, 45.740726>,  <37.577938, 34.963978, 46.145340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085789, 34.608807, 45.740726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.759094, 34.412773, 45.618904>,  <37.563076, 34.295151, 45.545811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.759094, 34.412773, 45.618904>,  <38.085789, 34.608807, 45.740726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759094, 34.412773, 45.618904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175761, 0.291429, -0.940307,
		0.549591, -0.821512, -0.151882,
		-0.816737, -0.490089, -0.304557,
		37.514072, 34.265747, 45.527538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305264, 34.134491, 45.203949>,  <38.085789, 34.608807, 45.740726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305264, 34.134491, 45.203949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912968, 34.163937, 45.131588>,  <37.677589, 34.181602, 45.088169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912968, 34.163937, 45.131588>,  <38.305264, 34.134491, 45.203949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912968, 34.163937, 45.131588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193547, 0.242103, -0.950750,
		-0.026190, -0.967454, -0.251688,
		-0.980742, 0.073613, -0.180907,
		37.618744, 34.186020, 45.077316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197994, 33.851044, 44.583855>,  <38.305264, 34.134491, 45.203949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197994, 33.851044, 44.583855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884396, 34.094536, 44.632515>,  <37.696236, 34.240631, 44.661709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884396, 34.094536, 44.632515>,  <38.197994, 33.851044, 44.583855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884396, 34.094536, 44.632515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116477, 0.336734, -0.934368,
		-0.609744, -0.718369, -0.334900,
		-0.783994, 0.608733, 0.121648,
		37.649197, 34.277157, 44.669010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808495, 33.823586, 43.941647>,  <38.197994, 33.851044, 44.583855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808495, 33.823586, 43.941647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673306, 34.171478, 44.085506>,  <37.592194, 34.380215, 44.171822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673306, 34.171478, 44.085506>,  <37.808495, 33.823586, 43.941647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673306, 34.171478, 44.085506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134566, 0.422863, -0.896147,
		-0.931486, -0.254477, -0.259952,
		-0.337973, 0.869729, 0.359647,
		37.571915, 34.432396, 44.193401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255768, 34.064705, 43.428455>,  <37.808495, 33.823586, 43.941647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255768, 34.064705, 43.428455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363247, 34.393970, 43.628536>,  <37.427734, 34.591530, 43.748585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363247, 34.393970, 43.628536>,  <37.255768, 34.064705, 43.428455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363247, 34.393970, 43.628536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016201, 0.523087, -0.852125,
		-0.963089, 0.220857, 0.153887,
		0.268694, 0.823166, 0.500201,
		37.443855, 34.640919, 43.778595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697552, 34.640175, 43.425472>,  <37.255768, 34.064705, 43.428455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697552, 34.640175, 43.425472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058975, 34.807056, 43.464485>,  <37.275829, 34.907185, 43.487892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058975, 34.807056, 43.464485>,  <36.697552, 34.640175, 43.425472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058975, 34.807056, 43.464485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220122, 0.647328, -0.729735,
		-0.367586, 0.637892, 0.676738,
		0.903563, 0.417206, 0.097534,
		37.330044, 34.932217, 43.493744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526306, 35.341991, 43.239384>,  <36.697552, 34.640175, 43.425472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526306, 35.341991, 43.239384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925755, 35.351437, 43.220669>,  <37.165424, 35.357101, 43.209438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925755, 35.351437, 43.220669>,  <36.526306, 35.341991, 43.239384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925755, 35.351437, 43.220669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052409, 0.442300, -0.895334,
		-0.000443, 0.896556, 0.442930,
		0.998626, 0.023611, -0.046791,
		37.225342, 35.358521, 43.206631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781364, 36.006699, 43.092720>,  <36.526306, 35.341991, 43.239384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781364, 36.006699, 43.092720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076733, 35.765297, 42.972382>,  <37.253956, 35.620457, 42.900177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076733, 35.765297, 42.972382>,  <36.781364, 36.006699, 43.092720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076733, 35.765297, 42.972382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011872, 0.434433, -0.900626,
		0.674231, 0.668616, 0.313631,
		0.738425, -0.603507, -0.300846,
		37.298260, 35.584244, 42.882130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043827, 36.407600, 42.557888>,  <36.781364, 36.006699, 43.092720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043827, 36.407600, 42.557888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.194683, 36.038902, 42.521782>,  <37.285194, 35.817684, 42.500118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.194683, 36.038902, 42.521782>,  <37.043827, 36.407600, 42.557888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194683, 36.038902, 42.521782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038367, 0.112927, -0.992862,
		0.925363, 0.370981, 0.077954,
		0.377137, -0.921748, -0.090265,
		37.307823, 35.762379, 42.494701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698532, 36.485813, 42.240025>,  <37.043827, 36.407600, 42.557888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698532, 36.485813, 42.240025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.566280, 36.115509, 42.166653>,  <37.486931, 35.893326, 42.122631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.566280, 36.115509, 42.166653>,  <37.698532, 36.485813, 42.240025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566280, 36.115509, 42.166653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126538, 0.149118, -0.980690,
		0.935239, -0.347455, 0.067841,
		-0.330629, -0.925764, -0.183427,
		37.467091, 35.837780, 42.111626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305782, 36.141495, 41.908581>,  <37.698532, 36.485813, 42.240025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305782, 36.141495, 41.908581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973145, 35.945862, 41.803322>,  <37.773560, 35.828484, 41.740166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973145, 35.945862, 41.803322>,  <38.305782, 36.141495, 41.908581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973145, 35.945862, 41.803322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186787, 0.199916, -0.961844,
		0.523027, -0.849019, -0.074896,
		-0.831597, -0.489081, -0.263147,
		37.723667, 35.799137, 41.724377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.256962, 31.662720, 29.054298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.240683, 31.340403, 29.290617>,  <24.230915, 31.147013, 29.432407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.240683, 31.340403, 29.290617>,  <24.256962, 31.662720, 29.054298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240683, 31.340403, 29.290617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554497, 0.473663, 0.684234,
		-0.831190, 0.355442, 0.427533,
		-0.040699, -0.805794, 0.590795,
		24.228474, 31.098665, 29.467855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846371, 31.953768, 29.645866>,  <24.256962, 31.662720, 29.054298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846371, 31.953768, 29.645866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.136890, 31.686497, 29.710396>,  <24.311203, 31.526134, 29.749113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.136890, 31.686497, 29.710396>,  <23.846371, 31.953768, 29.645866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136890, 31.686497, 29.710396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347702, 0.559585, 0.752309,
		-0.592950, -0.490310, 0.638754,
		0.726301, -0.668178, 0.161324,
		24.354780, 31.486044, 29.758793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.849403, 31.842829, 30.394306>,  <23.846371, 31.953768, 29.645866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.849403, 31.842829, 30.394306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.214128, 31.724989, 30.279896>,  <24.432962, 31.654285, 30.211250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.214128, 31.724989, 30.279896>,  <23.849403, 31.842829, 30.394306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214128, 31.724989, 30.279896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376380, 0.321219, 0.868998,
		-0.164131, -0.900016, 0.403773,
		0.911811, -0.294601, -0.286026,
		24.487671, 31.636608, 30.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.225971, 31.422031, 30.957184>,  <23.849403, 31.842829, 30.394306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.225971, 31.422031, 30.957184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.490700, 31.621014, 30.732849>,  <24.649536, 31.740402, 30.598249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.490700, 31.621014, 30.732849>,  <24.225971, 31.422031, 30.957184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490700, 31.621014, 30.732849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407043, 0.389781, 0.826067,
		0.629533, -0.774991, 0.055479,
		0.661819, 0.497454, -0.560835,
		24.689245, 31.770250, 30.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666363, 31.629963, 31.425346>,  <24.225971, 31.422031, 30.957184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666363, 31.629963, 31.425346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.847357, 31.832222, 31.131523>,  <24.955954, 31.953577, 30.955229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.847357, 31.832222, 31.131523>,  <24.666363, 31.629963, 31.425346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847357, 31.832222, 31.131523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534373, 0.505704, 0.677281,
		0.713936, -0.698987, -0.041382,
		0.452483, 0.505648, -0.734560,
		24.983101, 31.983917, 30.911156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371164, 31.674412, 31.622944>,  <24.666363, 31.629963, 31.425346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371164, 31.674412, 31.622944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.292330, 31.963842, 31.358339>,  <25.245029, 32.137501, 31.199577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.292330, 31.963842, 31.358339>,  <25.371164, 31.674412, 31.622944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292330, 31.963842, 31.358339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492468, 0.656508, 0.571378,
		0.847721, -0.213162, -0.485727,
		-0.197087, 0.723574, -0.661511,
		25.233204, 32.180916, 31.159885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054708, 32.112274, 31.579578>,  <25.371164, 31.674412, 31.622944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054708, 32.112274, 31.579578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.750366, 32.339310, 31.453756>,  <25.567760, 32.475529, 31.378263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.750366, 32.339310, 31.453756>,  <26.054708, 32.112274, 31.579578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750366, 32.339310, 31.453756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335153, 0.758791, 0.558487,
		0.555669, 0.319506, -0.767560,
		-0.760858, 0.567584, -0.314553,
		25.522108, 32.509586, 31.359390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411814, 32.780476, 31.506538>,  <26.054708, 32.112274, 31.579578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411814, 32.780476, 31.506538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024385, 32.879612, 31.514988>,  <25.791929, 32.939095, 31.520058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024385, 32.879612, 31.514988>,  <26.411814, 32.780476, 31.506538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024385, 32.879612, 31.514988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205868, 0.751061, 0.627317,
		0.139609, 0.611949, -0.778477,
		-0.968570, 0.247843, 0.021126,
		25.733814, 32.953964, 31.521326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219711, 33.524521, 31.256355>,  <26.411814, 32.780476, 31.506538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219711, 33.524521, 31.256355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949408, 33.420345, 31.532188>,  <25.787226, 33.357841, 31.697687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949408, 33.420345, 31.532188>,  <26.219711, 33.524521, 31.256355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949408, 33.420345, 31.532188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170203, 0.855096, 0.489736,
		-0.717203, 0.448313, -0.533513,
		-0.675760, -0.260434, 0.689582,
		25.746679, 33.342216, 31.739063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979441, 34.155884, 31.476389>,  <26.219711, 33.524521, 31.256355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979441, 34.155884, 31.476389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813259, 33.935612, 31.765980>,  <25.713551, 33.803448, 31.939735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813259, 33.935612, 31.765980>,  <25.979441, 34.155884, 31.476389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813259, 33.935612, 31.765980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203042, 0.719693, 0.663939,
		-0.886663, 0.422835, -0.187188,
		-0.415455, -0.550683, 0.723979,
		25.688623, 33.770409, 31.983173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548401, 34.648228, 31.761093>,  <25.979441, 34.155884, 31.476389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548401, 34.648228, 31.761093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.622009, 34.348709, 32.015789>,  <25.666174, 34.168999, 32.168606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.622009, 34.348709, 32.015789>,  <25.548401, 34.648228, 31.761093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622009, 34.348709, 32.015789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231253, 0.662599, 0.712380,
		-0.955332, 0.016154, 0.295095,
		0.184022, -0.748800, 0.636737,
		25.677216, 34.124069, 32.206810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176607, 34.875050, 32.413342>,  <25.548401, 34.648228, 31.761093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176607, 34.875050, 32.413342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432320, 34.595406, 32.541447>,  <25.585747, 34.427620, 32.618309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432320, 34.595406, 32.541447>,  <25.176607, 34.875050, 32.413342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432320, 34.595406, 32.541447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093779, 0.484250, 0.869890,
		-0.763234, -0.526070, 0.375133,
		0.639281, -0.699109, 0.320262,
		25.624104, 34.385674, 32.637524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860268, 34.588127, 33.105808>,  <25.176607, 34.875050, 32.413342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860268, 34.588127, 33.105808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244678, 34.481556, 33.076294>,  <25.475325, 34.417614, 33.058586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244678, 34.481556, 33.076294>,  <24.860268, 34.588127, 33.105808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244678, 34.481556, 33.076294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204326, 0.504742, 0.838741,
		-0.186220, -0.821129, 0.539508,
		0.961027, -0.266426, -0.073785,
		25.532988, 34.401627, 33.054157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019009, 34.364159, 33.785629>,  <24.860268, 34.588127, 33.105808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019009, 34.364159, 33.785629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.370235, 34.461174, 33.620625>,  <25.580973, 34.519382, 33.521622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.370235, 34.461174, 33.620625>,  <25.019009, 34.364159, 33.785629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370235, 34.461174, 33.620625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224917, 0.551710, 0.803136,
		0.422384, -0.797991, 0.429887,
		0.878068, 0.242543, -0.412515,
		25.633656, 34.533936, 33.496868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518301, 34.273701, 34.252525>,  <25.019009, 34.364159, 33.785629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518301, 34.273701, 34.252525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.702492, 34.530415, 34.007225>,  <25.813005, 34.684444, 33.860046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.702492, 34.530415, 34.007225>,  <25.518301, 34.273701, 34.252525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702492, 34.530415, 34.007225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251930, 0.567956, 0.783554,
		0.851172, -0.515303, 0.099844,
		0.460475, 0.641786, -0.613248,
		25.840633, 34.722950, 33.823250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249008, 34.382633, 34.453819>,  <25.518301, 34.273701, 34.252525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249008, 34.382633, 34.453819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117994, 34.706562, 34.259125>,  <26.039385, 34.900917, 34.142307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117994, 34.706562, 34.259125>,  <26.249008, 34.382633, 34.453819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117994, 34.706562, 34.259125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273981, 0.574427, 0.771341,
		0.904242, 0.119284, -0.410021,
		-0.327536, 0.809817, -0.486740,
		26.019733, 34.949509, 34.113102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830219, 34.841450, 34.418213>,  <26.249008, 34.382633, 34.453819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830219, 34.841450, 34.418213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469372, 35.013966, 34.412987>,  <26.252863, 35.117474, 34.409851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469372, 35.013966, 34.412987>,  <26.830219, 34.841450, 34.418213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469372, 35.013966, 34.412987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292237, 0.632989, 0.716884,
		0.317455, 0.642896, -0.697070,
		-0.902120, 0.431288, -0.013067,
		26.198736, 35.143353, 34.409065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933868, 35.586281, 34.359333>,  <26.830219, 34.841450, 34.418213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933868, 35.586281, 34.359333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595066, 35.499840, 34.553604>,  <26.391785, 35.447975, 34.670166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595066, 35.499840, 34.553604>,  <26.933868, 35.586281, 34.359333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595066, 35.499840, 34.553604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269051, 0.613700, 0.742283,
		-0.458468, 0.759389, -0.461666,
		-0.847006, -0.216101, 0.485676,
		26.340963, 35.435009, 34.699306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572792, 35.932800, 34.145519>,  <26.933868, 35.586281, 34.359333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572792, 35.932800, 34.145519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685127, 36.311516, 34.082623>,  <27.752527, 36.538746, 34.044884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685127, 36.311516, 34.082623>,  <27.572792, 35.932800, 34.145519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685127, 36.311516, 34.082623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011243, -0.167068, -0.985881,
		-0.959690, 0.275104, -0.057564,
		0.280837, 0.946787, -0.157241,
		27.769379, 36.595551, 34.035450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016483, 36.295082, 33.701191>,  <27.572792, 35.932800, 34.145519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016483, 36.295082, 33.701191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387157, 36.441151, 33.665627>,  <27.609562, 36.528790, 33.644287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387157, 36.441151, 33.665627>,  <27.016483, 36.295082, 33.701191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387157, 36.441151, 33.665627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053649, -0.105625, -0.992958,
		-0.371990, 0.924929, -0.078290,
		0.926685, 0.365170, -0.088913,
		27.665163, 36.550701, 33.638954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031456, 36.857681, 33.127712>,  <27.016483, 36.295082, 33.701191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031456, 36.857681, 33.127712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416056, 36.751884, 33.157539>,  <27.646816, 36.688404, 33.175434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416056, 36.751884, 33.157539>,  <27.031456, 36.857681, 33.127712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416056, 36.751884, 33.157539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076731, -0.002159, -0.997050,
		0.263874, 0.964385, 0.018219,
		0.961500, -0.264494, 0.074568,
		27.704506, 36.672535, 33.179909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453085, 37.323925, 32.702225>,  <27.031456, 36.857681, 33.127712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453085, 37.323925, 32.702225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682985, 37.001438, 32.758335>,  <27.820925, 36.807945, 32.792000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682985, 37.001438, 32.758335>,  <27.453085, 37.323925, 32.702225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682985, 37.001438, 32.758335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147137, -0.066814, -0.986857,
		0.804993, 0.587836, 0.080223,
		0.574750, -0.806217, 0.140277,
		27.855410, 36.759575, 32.800419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016209, 37.380337, 32.215488>,  <27.453085, 37.323925, 32.702225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016209, 37.380337, 32.215488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010189, 36.990040, 32.302853>,  <28.006577, 36.755863, 32.355270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010189, 36.990040, 32.302853>,  <28.016209, 37.380337, 32.215488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010189, 36.990040, 32.302853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185585, -0.217365, -0.958286,
		0.982513, 0.026113, 0.184354,
		-0.015048, -0.975741, 0.218410,
		28.005674, 36.697319, 32.368374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580198, 37.181789, 31.802467>,  <28.016209, 37.380337, 32.215488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580198, 37.181789, 31.802467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394590, 36.835243, 31.876322>,  <28.283226, 36.627316, 31.920633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394590, 36.835243, 31.876322>,  <28.580198, 37.181789, 31.802467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394590, 36.835243, 31.876322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038605, -0.228013, -0.972892,
		0.884983, -0.444314, 0.139249,
		-0.464021, -0.866369, 0.184635,
		28.255384, 36.575333, 31.931713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965164, 36.594402, 31.395063>,  <28.580198, 37.181789, 31.802467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965164, 36.594402, 31.395063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603678, 36.464680, 31.506863>,  <28.386786, 36.386845, 31.573942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603678, 36.464680, 31.506863>,  <28.965164, 36.594402, 31.395063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603678, 36.464680, 31.506863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158150, -0.353784, -0.921860,
		0.397851, -0.877302, 0.268431,
		-0.903716, -0.324310, 0.279498,
		28.332563, 36.367386, 31.590712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951258, 36.006641, 30.918488>,  <28.965164, 36.594402, 31.395063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951258, 36.006641, 30.918488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584898, 36.033783, 31.076738>,  <28.365082, 36.050068, 31.171688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584898, 36.033783, 31.076738>,  <28.951258, 36.006641, 30.918488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584898, 36.033783, 31.076738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375429, -0.493593, -0.784487,
		0.142049, -0.867042, 0.477556,
		-0.915901, 0.067853, 0.395627,
		28.310127, 36.054138, 31.195427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700979, 35.385479, 30.906502>,  <28.951258, 36.006641, 30.918488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700979, 35.385479, 30.906502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390680, 35.637333, 30.889637>,  <28.204500, 35.788445, 30.879519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390680, 35.637333, 30.889637>,  <28.700979, 35.385479, 30.906502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390680, 35.637333, 30.889637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326109, -0.457197, -0.827420,
		-0.540249, -0.628119, 0.559998,
		-0.775747, 0.629634, -0.042165,
		28.157955, 35.826221, 30.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141010, 34.949585, 30.808836>,  <28.700979, 35.385479, 30.906502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141010, 34.949585, 30.808836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024307, 35.307125, 30.672659>,  <27.954285, 35.521648, 30.590952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024307, 35.307125, 30.672659>,  <28.141010, 34.949585, 30.808836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024307, 35.307125, 30.672659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534034, -0.447516, -0.717312,
		-0.793526, -0.027473, 0.607916,
		-0.291759, 0.893854, -0.340445,
		27.936779, 35.575283, 30.570526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474464, 34.885246, 30.666861>,  <28.141010, 34.949585, 30.808836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474464, 34.885246, 30.666861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644144, 35.162857, 30.434177>,  <27.745953, 35.329422, 30.294567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644144, 35.162857, 30.434177>,  <27.474464, 34.885246, 30.666861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644144, 35.162857, 30.434177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382994, -0.444592, -0.809724,
		-0.820591, 0.566276, 0.077211,
		0.424200, 0.694024, -0.581708,
		27.771404, 35.371063, 30.259665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074999, 34.943176, 30.025436>,  <27.474464, 34.885246, 30.666861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074999, 34.943176, 30.025436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381800, 35.167141, 29.900085>,  <27.565880, 35.301521, 29.824875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381800, 35.167141, 29.900085>,  <27.074999, 34.943176, 30.025436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381800, 35.167141, 29.900085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223959, -0.224072, -0.948490,
		-0.601292, 0.797677, -0.046465,
		0.767001, 0.559913, -0.313380,
		27.611900, 35.335114, 29.806072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713894, 35.333031, 29.581997>,  <27.074999, 34.943176, 30.025436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713894, 35.333031, 29.581997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104342, 35.315044, 29.496988>,  <27.338610, 35.304253, 29.445982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104342, 35.315044, 29.496988>,  <26.713894, 35.333031, 29.581997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104342, 35.315044, 29.496988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217159, -0.177478, -0.959866,
		0.005440, 0.983097, -0.183004,
		0.976121, -0.044963, -0.212523,
		27.397179, 35.301556, 29.433231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810911, 35.618069, 28.923031>,  <26.713894, 35.333031, 29.581997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810911, 35.618069, 28.923031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153042, 35.413513, 28.956247>,  <27.358320, 35.290779, 28.976177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153042, 35.413513, 28.956247>,  <26.810911, 35.618069, 28.923031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153042, 35.413513, 28.956247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092270, -0.308083, -0.946874,
		0.509804, 0.802226, -0.310698,
		0.855328, -0.511388, 0.083040,
		27.409639, 35.260098, 28.981159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260870, 35.795586, 28.316055>,  <26.810911, 35.618069, 28.923031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260870, 35.795586, 28.316055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393303, 35.453621, 28.475807>,  <27.472763, 35.248440, 28.571657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393303, 35.453621, 28.475807>,  <27.260870, 35.795586, 28.316055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393303, 35.453621, 28.475807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049937, -0.406781, -0.912160,
		0.942279, 0.321945, -0.091987,
		0.331084, -0.854915, 0.399379,
		27.492628, 35.197147, 28.595621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707306, 35.523369, 27.813658>,  <27.260870, 35.795586, 28.316055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707306, 35.523369, 27.813658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612530, 35.202179, 28.032415>,  <27.555664, 35.009464, 28.163670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612530, 35.202179, 28.032415>,  <27.707306, 35.523369, 27.813658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612530, 35.202179, 28.032415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031139, -0.568913, -0.821808,
		0.971025, -0.177689, 0.159802,
		-0.236940, -0.802972, 0.546895,
		27.541447, 34.961288, 28.196484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056269, 35.044151, 27.487673>,  <27.707306, 35.523369, 27.813658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056269, 35.044151, 27.487673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793478, 34.851501, 27.719681>,  <27.635803, 34.735912, 27.858885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793478, 34.851501, 27.719681>,  <28.056269, 35.044151, 27.487673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793478, 34.851501, 27.719681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155781, -0.666019, -0.729487,
		0.737642, -0.569611, 0.362530,
		-0.656976, -0.481625, 0.580018,
		27.596386, 34.707016, 27.893686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191971, 34.358383, 27.288622>,  <28.056269, 35.044151, 27.487673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191971, 34.358383, 27.288622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819271, 34.379234, 27.432358>,  <27.595652, 34.391747, 27.518599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819271, 34.379234, 27.432358>,  <28.191971, 34.358383, 27.288622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819271, 34.379234, 27.432358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317040, -0.599212, -0.735140,
		0.176995, -0.798891, 0.574844,
		-0.931750, 0.052132, 0.359337,
		27.539745, 34.394875, 27.540159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044113, 33.647518, 27.387774>,  <28.191971, 34.358383, 27.288622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044113, 33.647518, 27.387774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702894, 33.853348, 27.353079>,  <27.498163, 33.976845, 27.332262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702894, 33.853348, 27.353079>,  <28.044113, 33.647518, 27.387774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702894, 33.853348, 27.353079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329683, -0.660275, -0.674793,
		-0.404504, -0.547033, 0.732892,
		-0.853045, 0.514578, -0.086737,
		27.446981, 34.007721, 27.327057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496304, 33.144375, 27.439411>,  <28.044113, 33.647518, 27.387774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496304, 33.144375, 27.439411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325623, 33.459141, 27.261110>,  <27.223215, 33.647999, 27.154129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325623, 33.459141, 27.261110>,  <27.496304, 33.144375, 27.439411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325623, 33.459141, 27.261110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480961, -0.614844, -0.625015,
		-0.765901, -0.052303, 0.640828,
		-0.426699, 0.786912, -0.445753,
		27.197613, 33.695213, 27.127384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870825, 32.900875, 27.263512>,  <27.496304, 33.144375, 27.439411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870825, 32.900875, 27.263512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867065, 33.220726, 27.023342>,  <26.864809, 33.412636, 26.879240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867065, 33.220726, 27.023342>,  <26.870825, 32.900875, 27.263512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867065, 33.220726, 27.023342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486561, -0.528233, -0.695865,
		-0.873596, 0.285604, 0.394031,
		-0.009398, 0.799625, -0.600426,
		26.864246, 33.460613, 26.843214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098793, 32.992329, 27.085258>,  <26.870825, 32.900875, 27.263512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098793, 32.992329, 27.085258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.372988, 33.137547, 26.832813>,  <26.537504, 33.224678, 26.681347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.372988, 33.137547, 26.832813>,  <26.098793, 32.992329, 27.085258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372988, 33.137547, 26.832813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461583, -0.453663, -0.762320,
		-0.563071, 0.813871, -0.143404,
		0.685487, 0.363047, -0.631114,
		26.578634, 33.246460, 26.643478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608660, 33.375477, 26.562656>,  <26.098793, 32.992329, 27.085258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608660, 33.375477, 26.562656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978628, 33.278179, 26.445793>,  <26.200609, 33.219803, 26.375675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978628, 33.278179, 26.445793>,  <25.608660, 33.375477, 26.562656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978628, 33.278179, 26.445793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375934, -0.470911, -0.798071,
		0.056542, 0.847984, -0.526997,
		0.924920, -0.243241, -0.292160,
		26.256104, 33.205208, 26.358145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671135, 33.714924, 25.924227>,  <25.608660, 33.375477, 26.562656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671135, 33.714924, 25.924227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871784, 33.369129, 25.937052>,  <25.992174, 33.161652, 25.944746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871784, 33.369129, 25.937052>,  <25.671135, 33.714924, 25.924227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871784, 33.369129, 25.937052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490125, -0.314546, -0.812920,
		0.712846, 0.392067, -0.581492,
		0.501625, -0.864491, 0.032061,
		26.022272, 33.109783, 25.946671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.180279, 30.972467, 46.530659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781219, 30.954723, 46.551544>,  <35.541782, 30.944077, 46.564075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781219, 30.954723, 46.551544>,  <36.180279, 30.972467, 46.530659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781219, 30.954723, 46.551544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055621, -0.079335, 0.995295,
		-0.040010, 0.995860, 0.081616,
		-0.997650, -0.044362, 0.052217,
		35.481926, 30.941414, 46.567207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862766, 31.452358, 47.073898>,  <36.180279, 30.972467, 46.530659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862766, 31.452358, 47.073898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590603, 31.162500, 47.030201>,  <35.427303, 30.988586, 47.003983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590603, 31.162500, 47.030201>,  <35.862766, 31.452358, 47.073898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590603, 31.162500, 47.030201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132181, -0.267985, 0.954312,
		-0.720815, 0.634881, 0.278124,
		-0.680407, -0.724645, -0.109248,
		35.386482, 30.945107, 46.997425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344112, 31.567469, 47.643963>,  <35.862766, 31.452358, 47.073898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344112, 31.567469, 47.643963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293468, 31.191492, 47.517170>,  <35.263084, 30.965906, 47.441093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293468, 31.191492, 47.517170>,  <35.344112, 31.567469, 47.643963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293468, 31.191492, 47.517170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115704, -0.303380, 0.945819,
		-0.985182, 0.156424, -0.070345,
		-0.126608, -0.939943, -0.316983,
		35.255486, 30.909510, 47.422073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844837, 31.288788, 48.123661>,  <35.344112, 31.567469, 47.643963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844837, 31.288788, 48.123661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027588, 30.964027, 47.978291>,  <35.137238, 30.769171, 47.891068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027588, 30.964027, 47.978291>,  <34.844837, 31.288788, 48.123661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027588, 30.964027, 47.978291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127761, -0.344426, 0.930079,
		-0.880306, -0.471364, -0.053631,
		0.456878, -0.811903, -0.363422,
		35.164650, 30.720457, 47.869263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520844, 30.814026, 48.443432>,  <34.844837, 31.288788, 48.123661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520844, 30.814026, 48.443432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846630, 30.616648, 48.321350>,  <35.042103, 30.498220, 48.248100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846630, 30.616648, 48.321350>,  <34.520844, 30.814026, 48.443432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846630, 30.616648, 48.321350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063595, -0.446934, 0.892304,
		-0.576709, -0.746165, -0.332634,
		0.814471, -0.493446, -0.305203,
		35.090973, 30.468615, 48.229790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369827, 30.082855, 48.492420>,  <34.520844, 30.814026, 48.443432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369827, 30.082855, 48.492420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766533, 30.128849, 48.515011>,  <35.004555, 30.156445, 48.528564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766533, 30.128849, 48.515011>,  <34.369827, 30.082855, 48.492420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766533, 30.128849, 48.515011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002866, -0.420803, 0.907147,
		0.128072, -0.899835, -0.417006,
		0.991761, 0.114985, 0.056472,
		35.064060, 30.163343, 48.531952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546547, 29.433275, 48.438053>,  <34.369827, 30.082855, 48.492420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546547, 29.433275, 48.438053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827320, 29.654766, 48.617241>,  <34.995785, 29.787661, 48.724754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827320, 29.654766, 48.617241>,  <34.546547, 29.433275, 48.438053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827320, 29.654766, 48.617241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083414, -0.560717, 0.823795,
		0.707342, -0.615616, -0.347397,
		0.701932, 0.553727, 0.447970,
		35.037899, 29.820885, 48.751633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846428, 28.940712, 48.876076>,  <34.546547, 29.433275, 48.438053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846428, 28.940712, 48.876076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997036, 29.274673, 49.036659>,  <35.087399, 29.475050, 49.133011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997036, 29.274673, 49.036659>,  <34.846428, 28.940712, 48.876076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997036, 29.274673, 49.036659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069412, -0.406709, 0.910917,
		0.923805, -0.370843, -0.095181,
		0.376518, 0.834903, 0.401461,
		35.109993, 29.525145, 49.157097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394680, 28.766947, 49.277077>,  <34.846428, 28.940712, 48.876076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394680, 28.766947, 49.277077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309853, 29.126579, 49.430275>,  <35.258957, 29.342358, 49.522194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309853, 29.126579, 49.430275>,  <35.394680, 28.766947, 49.277077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309853, 29.126579, 49.430275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047601, -0.381938, 0.922961,
		0.976095, 0.213962, 0.038200,
		-0.212069, 0.899079, 0.382993,
		35.246231, 29.396303, 49.545174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868614, 28.972816, 49.872761>,  <35.394680, 28.766947, 49.277077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868614, 28.972816, 49.872761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535736, 29.191238, 49.911297>,  <35.336010, 29.322292, 49.934418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535736, 29.191238, 49.911297>,  <35.868614, 28.972816, 49.872761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535736, 29.191238, 49.911297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088684, -0.302577, 0.948990,
		0.547351, 0.781198, 0.300228,
		-0.832191, 0.546056, 0.096336,
		35.286079, 29.355055, 49.940197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065159, 29.315399, 50.461575>,  <35.868614, 28.972816, 49.872761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065159, 29.315399, 50.461575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668041, 29.333834, 50.417328>,  <35.429771, 29.344894, 50.390781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668041, 29.333834, 50.417328>,  <36.065159, 29.315399, 50.461575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668041, 29.333834, 50.417328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119580, -0.321007, 0.939497,
		0.007791, 0.945955, 0.324205,
		-0.992794, 0.046088, -0.110616,
		35.370201, 29.347660, 50.384144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842869, 29.679108, 51.034847>,  <36.065159, 29.315399, 50.461575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842869, 29.679108, 51.034847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524502, 29.480230, 50.896683>,  <35.333481, 29.360905, 50.813782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524502, 29.480230, 50.896683>,  <35.842869, 29.679108, 51.034847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524502, 29.480230, 50.896683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120221, -0.429386, 0.895083,
		-0.593346, 0.753940, 0.281983,
		-0.795919, -0.497194, -0.345414,
		35.285725, 29.331072, 50.793060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674839, 30.381437, 50.904919>,  <35.842869, 29.679108, 51.034847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674839, 30.381437, 50.904919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025539, 30.485661, 50.743214>,  <36.235958, 30.548195, 50.646191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025539, 30.485661, 50.743214>,  <35.674839, 30.381437, 50.904919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025539, 30.485661, 50.743214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407454, 0.848977, -0.336480,
		0.255533, 0.459724, 0.850504,
		0.876746, 0.260559, -0.404258,
		36.288563, 30.563828, 50.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671791, 30.883963, 51.527008>,  <35.674839, 30.381437, 50.904919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671791, 30.883963, 51.527008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540169, 31.254616, 51.599751>,  <35.461193, 31.477007, 51.643398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540169, 31.254616, 51.599751>,  <35.671791, 30.883963, 51.527008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540169, 31.254616, 51.599751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433456, 0.319315, -0.842706,
		-0.838950, -0.198471, -0.506728,
		-0.329059, 0.926632, 0.181860,
		35.441452, 31.532606, 51.654308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425461, 31.228769, 50.939556>,  <35.671791, 30.883963, 51.527008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425461, 31.228769, 50.939556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509281, 31.538448, 51.178455>,  <35.559574, 31.724255, 51.321796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509281, 31.538448, 51.178455>,  <35.425461, 31.228769, 50.939556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509281, 31.538448, 51.178455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429694, 0.475762, -0.767473,
		-0.878324, 0.417458, -0.232972,
		0.209548, 0.774196, 0.597252,
		35.572147, 31.770708, 51.357632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168133, 31.794458, 50.599239>,  <35.425461, 31.228769, 50.939556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168133, 31.794458, 50.599239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461182, 31.935951, 50.831841>,  <35.637009, 32.020847, 50.971401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461182, 31.935951, 50.831841>,  <35.168133, 31.794458, 50.599239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461182, 31.935951, 50.831841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258841, 0.645359, -0.718689,
		-0.629499, 0.677042, 0.381242,
		0.732620, 0.353733, 0.581499,
		35.680969, 32.042072, 51.006290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437210, 32.326130, 50.214058>,  <35.168133, 31.794458, 50.599239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437210, 32.326130, 50.214058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748543, 32.337875, 50.464924>,  <35.935341, 32.344921, 50.615444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748543, 32.337875, 50.464924>,  <35.437210, 32.326130, 50.214058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748543, 32.337875, 50.464924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413723, 0.727380, -0.547497,
		-0.472262, 0.685607, 0.553996,
		0.778333, 0.029361, 0.627165,
		35.982044, 32.346684, 50.653072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635414, 32.991402, 50.279030>,  <35.437210, 32.326130, 50.214058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635414, 32.991402, 50.279030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973621, 32.813911, 50.397820>,  <36.176548, 32.707417, 50.469093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973621, 32.813911, 50.397820>,  <35.635414, 32.991402, 50.279030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973621, 32.813911, 50.397820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533297, 0.674536, -0.510485,
		0.026194, 0.590005, 0.806975,
		0.845522, -0.443729, 0.296979,
		36.227280, 32.680794, 50.486912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016209, 33.459667, 50.541733>,  <35.635414, 32.991402, 50.279030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016209, 33.459667, 50.541733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247589, 33.164871, 50.401882>,  <36.386417, 32.987995, 50.317970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247589, 33.164871, 50.401882>,  <36.016209, 33.459667, 50.541733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247589, 33.164871, 50.401882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417062, 0.635565, -0.649706,
		0.701037, 0.230007, 0.675014,
		0.578452, -0.736990, -0.349627,
		36.421124, 32.943775, 50.296993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580536, 33.793369, 50.302181>,  <36.016209, 33.459667, 50.541733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580536, 33.793369, 50.302181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605576, 33.433285, 50.129810>,  <36.620602, 33.217232, 50.026390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605576, 33.433285, 50.129810>,  <36.580536, 33.793369, 50.302181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605576, 33.433285, 50.129810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441326, 0.412234, -0.797054,
		0.895161, -0.140281, 0.423094,
		0.062602, -0.900214, -0.430925,
		36.624355, 33.163219, 50.000534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218960, 33.934830, 50.008282>,  <36.580536, 33.793369, 50.302181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218960, 33.934830, 50.008282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009144, 33.625019, 49.866875>,  <36.883255, 33.439133, 49.782028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009144, 33.625019, 49.866875>,  <37.218960, 33.934830, 50.008282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009144, 33.625019, 49.866875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218867, 0.278603, -0.935135,
		0.822775, -0.567885, 0.023380,
		-0.524536, -0.774523, -0.353519,
		36.851784, 33.392662, 49.760818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614117, 33.508892, 49.638279>,  <37.218960, 33.934830, 50.008282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614117, 33.508892, 49.638279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242649, 33.447533, 49.503197>,  <37.019768, 33.410717, 49.422150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242649, 33.447533, 49.503197>,  <37.614117, 33.508892, 49.638279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242649, 33.447533, 49.503197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317464, 0.142103, -0.937562,
		0.191812, -0.977893, -0.083267,
		-0.928668, -0.153401, -0.337703,
		36.964050, 33.401512, 49.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681675, 33.181221, 49.027622>,  <37.614117, 33.508892, 49.638279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681675, 33.181221, 49.027622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288746, 33.237778, 48.978550>,  <37.052990, 33.271713, 48.949104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288746, 33.237778, 48.978550>,  <37.681675, 33.181221, 49.027622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288746, 33.237778, 48.978550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124189, 0.001845, -0.992257,
		-0.140072, -0.989952, -0.019372,
		-0.982322, 0.141393, -0.122683,
		36.994049, 33.280193, 48.941746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416897, 32.795124, 48.483871>,  <37.681675, 33.181221, 49.027622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416897, 32.795124, 48.483871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142056, 33.085739, 48.481625>,  <36.977150, 33.260109, 48.480274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142056, 33.085739, 48.481625>,  <37.416897, 32.795124, 48.483871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142056, 33.085739, 48.481625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053763, -0.058557, -0.996835,
		-0.724564, -0.684631, 0.079296,
		-0.687108, 0.726534, -0.005620,
		36.935925, 33.303699, 48.479939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943661, 32.605015, 48.107151>,  <37.416897, 32.795124, 48.483871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943661, 32.605015, 48.107151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876564, 32.999165, 48.119091>,  <36.836308, 33.235657, 48.126255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876564, 32.999165, 48.119091>,  <36.943661, 32.605015, 48.107151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876564, 32.999165, 48.119091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062292, 0.019626, -0.997865,
		-0.983861, -0.169243, 0.058089,
		-0.167741, 0.985379, 0.029852,
		36.826241, 33.294777, 48.128048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437717, 32.739822, 47.606087>,  <36.943661, 32.605015, 48.107151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437717, 32.739822, 47.606087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611916, 33.095295, 47.663494>,  <36.716434, 33.308578, 47.697941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611916, 33.095295, 47.663494>,  <36.437717, 32.739822, 47.606087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611916, 33.095295, 47.663494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127172, 0.218573, -0.967498,
		-0.891164, 0.403087, 0.208202,
		0.435493, 0.888677, 0.143523,
		36.742565, 33.361897, 47.706551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925053, 33.167049, 47.322861>,  <36.437717, 32.739822, 47.606087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925053, 33.167049, 47.322861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269360, 33.370628, 47.325615>,  <36.475945, 33.492775, 47.327267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269360, 33.370628, 47.325615>,  <35.925053, 33.167049, 47.322861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269360, 33.370628, 47.325615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076203, 0.142230, -0.986896,
		-0.503259, 0.848965, 0.161211,
		0.860769, 0.508949, 0.006885,
		36.527592, 33.523312, 47.327679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906708, 33.861393, 46.948349>,  <35.925053, 33.167049, 47.322861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906708, 33.861393, 46.948349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292904, 33.757530, 46.956478>,  <36.524620, 33.695213, 46.961357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292904, 33.757530, 46.956478>,  <35.906708, 33.861393, 46.948349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292904, 33.757530, 46.956478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072569, 0.193250, -0.978462,
		0.250140, 0.946167, 0.205423,
		0.965486, -0.259659, 0.020323,
		36.582550, 33.679634, 46.962574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661594, 34.586792, 46.915203>,  <35.906708, 33.861393, 46.948349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661594, 34.586792, 46.915203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289135, 34.672184, 46.796951>,  <35.065659, 34.723419, 46.726002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289135, 34.672184, 46.796951>,  <35.661594, 34.586792, 46.915203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289135, 34.672184, 46.796951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361874, -0.441162, 0.821233,
		0.044897, 0.871667, 0.488038,
		-0.931145, 0.213479, -0.295627,
		35.009792, 34.736229, 46.708263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210037, 34.978668, 47.389011>,  <35.661594, 34.586792, 46.915203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210037, 34.978668, 47.389011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945755, 34.781685, 47.162399>,  <34.787186, 34.663494, 47.026432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945755, 34.781685, 47.162399>,  <35.210037, 34.978668, 47.389011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945755, 34.781685, 47.162399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483164, -0.298604, 0.823036,
		-0.574478, 0.817510, -0.040649,
		-0.660702, -0.492456, -0.566533,
		34.747543, 34.633949, 46.992439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628414, 35.077099, 47.762039>,  <35.210037, 34.978668, 47.389011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628414, 35.077099, 47.762039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543575, 34.785919, 47.501240>,  <34.492672, 34.611214, 47.344761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543575, 34.785919, 47.501240>,  <34.628414, 35.077099, 47.762039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543575, 34.785919, 47.501240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433115, -0.528056, 0.730457,
		-0.876028, 0.437321, -0.203285,
		-0.212099, -0.727947, -0.652003,
		34.479946, 34.567535, 47.305637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899349, 34.891071, 47.818214>,  <34.628414, 35.077099, 47.762039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899349, 34.891071, 47.818214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.074337, 34.568867, 47.658329>,  <34.179329, 34.375546, 47.562397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.074337, 34.568867, 47.658329>,  <33.899349, 34.891071, 47.818214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074337, 34.568867, 47.658329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428989, -0.577612, 0.694502,
		-0.790310, -0.132349, -0.598243,
		0.437468, -0.805511, -0.399716,
		34.205578, 34.327213, 47.538414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386761, 34.479729, 47.809399>,  <33.899349, 34.891071, 47.818214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386761, 34.479729, 47.809399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715687, 34.252605, 47.794476>,  <33.913040, 34.116329, 47.785522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715687, 34.252605, 47.794476>,  <33.386761, 34.479729, 47.809399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715687, 34.252605, 47.794476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372570, -0.586799, 0.718929,
		-0.430107, -0.577285, -0.694082,
		0.822314, -0.567810, -0.037307,
		33.962379, 34.082264, 47.783283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138653, 33.757942, 47.824417>,  <33.386761, 34.479729, 47.809399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138653, 33.757942, 47.824417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520706, 33.750004, 47.942623>,  <33.749939, 33.745239, 48.013546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520706, 33.750004, 47.942623>,  <33.138653, 33.757942, 47.824417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520706, 33.750004, 47.942623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249169, -0.593220, 0.765510,
		0.160110, -0.804796, -0.571549,
		0.955133, -0.019846, 0.295511,
		33.807247, 33.744049, 48.031277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211308, 33.178505, 48.124557>,  <33.138653, 33.757942, 47.824417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211308, 33.178505, 48.124557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517624, 33.379589, 48.284985>,  <33.701412, 33.500240, 48.381241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517624, 33.379589, 48.284985>,  <33.211308, 33.178505, 48.124557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517624, 33.379589, 48.284985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130381, -0.489338, 0.862293,
		0.629738, -0.712625, -0.309186,
		0.765788, 0.502706, 0.401068,
		33.747360, 33.530399, 48.405304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191093, 32.376610, 47.969616>,  <33.211308, 33.178505, 48.124557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191093, 32.376610, 47.969616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791855, 32.369286, 47.993202>,  <32.552311, 32.364891, 48.007355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791855, 32.369286, 47.993202>,  <33.191093, 32.376610, 47.969616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791855, 32.369286, 47.993202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061259, 0.174738, -0.982708,
		0.007685, -0.984445, -0.175526,
		-0.998092, -0.018304, 0.058963,
		32.492428, 32.363792, 48.010891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083233, 31.953936, 47.461220>,  <33.191093, 32.376610, 47.969616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083233, 31.953936, 47.461220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.745907, 32.159283, 47.524803>,  <32.543510, 32.282490, 47.562954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.745907, 32.159283, 47.524803>,  <33.083233, 31.953936, 47.461220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745907, 32.159283, 47.524803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017251, 0.269767, -0.962771,
		-0.537138, -0.814664, -0.218643,
		-0.843318, 0.513369, 0.158956,
		32.492912, 32.313293, 47.572491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577202, 31.764389, 46.896511>,  <33.083233, 31.953936, 47.461220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577202, 31.764389, 46.896511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.445698, 32.114307, 47.038860>,  <32.366795, 32.324261, 47.124268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.445698, 32.114307, 47.038860>,  <32.577202, 31.764389, 46.896511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445698, 32.114307, 47.038860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212263, 0.298731, -0.930432,
		-0.920250, -0.381429, 0.087475,
		-0.328762, 0.874798, 0.355870,
		32.347069, 32.376747, 47.145622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933853, 31.883039, 46.651066>,  <32.577202, 31.764389, 46.896511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933853, 31.883039, 46.651066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045307, 32.250187, 46.764118>,  <32.112179, 32.470474, 46.831951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045307, 32.250187, 46.764118>,  <31.933853, 31.883039, 46.651066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045307, 32.250187, 46.764118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245965, 0.352672, -0.902842,
		-0.928366, 0.182047, 0.324030,
		0.278636, 0.917868, 0.282631,
		32.128899, 32.525547, 46.848907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370134, 32.361633, 46.306694>,  <31.933853, 31.883039, 46.651066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370134, 32.361633, 46.306694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688622, 32.585110, 46.399567>,  <31.879713, 32.719196, 46.455288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688622, 32.585110, 46.399567>,  <31.370134, 32.361633, 46.306694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688622, 32.585110, 46.399567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004118, 0.378745, -0.925492,
		-0.604999, 0.737847, 0.299262,
		0.796216, 0.558689, 0.232179,
		31.927486, 32.752716, 46.469219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152874, 33.028950, 46.165745>,  <31.370134, 32.361633, 46.306694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152874, 33.028950, 46.165745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552849, 33.032536, 46.163010>,  <31.792833, 33.034687, 46.161369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552849, 33.032536, 46.163010>,  <31.152874, 33.028950, 46.165745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552849, 33.032536, 46.163010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010553, 0.530727, -0.847477,
		-0.003963, 0.847496, 0.530788,
		0.999937, 0.008960, -0.006840,
		31.852829, 33.035225, 46.160957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335175, 33.662647, 46.040337>,  <31.152874, 33.028950, 46.165745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335175, 33.662647, 46.040337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673695, 33.479942, 45.930687>,  <31.876806, 33.370319, 45.864899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673695, 33.479942, 45.930687>,  <31.335175, 33.662647, 46.040337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673695, 33.479942, 45.930687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055155, 0.436685, -0.897922,
		0.529843, 0.775031, 0.344374,
		0.846300, -0.456764, -0.274122,
		31.927586, 33.342915, 45.848450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.620823, 27.149776, 48.932537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.865234, 27.419441, 49.098499>,  <33.011883, 27.581240, 49.198078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.865234, 27.419441, 49.098499>,  <32.620823, 27.149776, 48.932537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865234, 27.419441, 49.098499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137574, 0.425718, -0.894336,
		-0.779561, 0.603547, 0.167379,
		0.611030, 0.674163, 0.414906,
		33.048542, 27.621691, 49.222973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341648, 27.804426, 48.859322>,  <32.620823, 27.149776, 48.932537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341648, 27.804426, 48.859322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.738533, 27.847012, 48.885162>,  <32.976665, 27.872562, 48.900665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.738533, 27.847012, 48.885162>,  <32.341648, 27.804426, 48.859322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738533, 27.847012, 48.885162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007905, 0.463849, -0.885879,
		-0.124276, 0.879494, 0.459397,
		0.992216, 0.106462, 0.064597,
		33.036198, 27.878950, 48.904541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423996, 28.543674, 48.604702>,  <32.341648, 27.804426, 48.859322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423996, 28.543674, 48.604702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.789951, 28.382320, 48.598286>,  <33.009525, 28.285507, 48.594437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.789951, 28.382320, 48.598286>,  <32.423996, 28.543674, 48.604702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789951, 28.382320, 48.598286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172583, 0.426725, -0.887762,
		0.364955, 0.809436, 0.460024,
		0.914889, -0.403386, -0.016040,
		33.064419, 28.261305, 48.593475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953354, 29.065800, 48.614101>,  <32.423996, 28.543674, 48.604702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953354, 29.065800, 48.614101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108875, 28.733063, 48.455677>,  <33.202187, 28.533421, 48.360622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108875, 28.733063, 48.455677>,  <32.953354, 29.065800, 48.614101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108875, 28.733063, 48.455677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229578, 0.503802, -0.832753,
		0.892259, 0.232848, 0.386853,
		0.388802, -0.831844, -0.396066,
		33.225517, 28.483509, 48.336857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432552, 29.385349, 48.217373>,  <32.953354, 29.065800, 48.614101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432552, 29.385349, 48.217373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411911, 29.012217, 48.074730>,  <33.399525, 28.788338, 47.989143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411911, 29.012217, 48.074730>,  <33.432552, 29.385349, 48.217373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411911, 29.012217, 48.074730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372090, 0.313409, -0.873684,
		0.926761, -0.177776, 0.330923,
		-0.051605, -0.932829, -0.356604,
		33.396431, 28.732368, 47.967751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067646, 29.192045, 47.969070>,  <33.432552, 29.385349, 48.217373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067646, 29.192045, 47.969070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.828556, 28.942533, 47.767628>,  <33.685101, 28.792826, 47.646763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.828556, 28.942533, 47.767628>,  <34.067646, 29.192045, 47.969070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828556, 28.942533, 47.767628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413144, 0.298675, -0.860294,
		0.687049, -0.722283, 0.079185,
		-0.597725, -0.623779, -0.503611,
		33.649239, 28.755400, 47.616543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530735, 28.946770, 47.419395>,  <34.067646, 29.192045, 47.969070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530735, 28.946770, 47.419395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157070, 28.862621, 47.304092>,  <33.932873, 28.812132, 47.234909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157070, 28.862621, 47.304092>,  <34.530735, 28.946770, 47.419395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157070, 28.862621, 47.304092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276920, 0.082163, -0.957374,
		0.225087, -0.974163, -0.018497,
		-0.934158, -0.210371, -0.288259,
		33.876823, 28.799511, 47.217613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581596, 28.448671, 46.909637>,  <34.530735, 28.946770, 47.419395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581596, 28.448671, 46.909637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220863, 28.607183, 46.840748>,  <34.004425, 28.702291, 46.799412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220863, 28.607183, 46.840748>,  <34.581596, 28.448671, 46.909637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220863, 28.607183, 46.840748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224949, 0.090277, -0.970179,
		-0.368916, -0.913680, -0.170558,
		-0.901831, 0.396281, -0.172226,
		33.950314, 28.726068, 46.789082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291092, 27.962902, 46.435654>,  <34.581596, 28.448671, 46.909637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291092, 27.962902, 46.435654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106098, 28.316727, 46.411457>,  <33.995102, 28.529022, 46.396938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106098, 28.316727, 46.411457>,  <34.291092, 27.962902, 46.435654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106098, 28.316727, 46.411457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040495, -0.047086, -0.998070,
		-0.885704, -0.464039, -0.014044,
		-0.462482, 0.884563, -0.060496,
		33.967354, 28.582096, 46.393307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870785, 27.881525, 45.752754>,  <34.291092, 27.962902, 46.435654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870785, 27.881525, 45.752754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.809589, 28.269836, 45.826714>,  <33.772873, 28.502823, 45.871090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.809589, 28.269836, 45.826714>,  <33.870785, 27.881525, 45.752754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809589, 28.269836, 45.826714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006609, 0.188098, -0.982128,
		-0.988207, -0.149028, -0.035192,
		-0.152984, 0.970778, 0.184895,
		33.763695, 28.561069, 45.882183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325851, 28.088224, 45.385715>,  <33.870785, 27.881525, 45.752754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325851, 28.088224, 45.385715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548767, 28.413425, 45.453190>,  <33.682514, 28.608547, 45.493675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548767, 28.413425, 45.453190>,  <33.325851, 28.088224, 45.385715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548767, 28.413425, 45.453190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035267, 0.226154, -0.973453,
		-0.829571, 0.536542, 0.154705,
		0.557286, 0.813005, 0.168688,
		33.715954, 28.657328, 45.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903004, 28.720358, 45.285240>,  <33.325851, 28.088224, 45.385715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903004, 28.720358, 45.285240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285152, 28.813650, 45.212719>,  <33.514442, 28.869625, 45.169205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285152, 28.813650, 45.212719>,  <32.903004, 28.720358, 45.285240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285152, 28.813650, 45.212719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254672, 0.339255, -0.905565,
		-0.149699, 0.911322, 0.383512,
		0.955370, 0.233232, -0.181302,
		33.571762, 28.883619, 45.158329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423477, 29.336836, 45.240517>,  <32.903004, 28.720358, 45.285240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423477, 29.336836, 45.240517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060776, 29.464344, 45.130119>,  <31.843153, 29.540850, 45.063881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060776, 29.464344, 45.130119>,  <32.423477, 29.336836, 45.240517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060776, 29.464344, 45.130119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282036, 0.028049, 0.958994,
		0.313441, 0.947417, 0.064471,
		-0.906758, 0.318771, -0.275997,
		31.788748, 29.559975, 45.047321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234810, 29.907366, 45.684135>,  <32.423477, 29.336836, 45.240517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234810, 29.907366, 45.684135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.894958, 29.748030, 45.545887>,  <31.691048, 29.652428, 45.462936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.894958, 29.748030, 45.545887>,  <32.234810, 29.907366, 45.684135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894958, 29.748030, 45.545887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347494, -0.070126, 0.935056,
		-0.396707, 0.914554, -0.078839,
		-0.849630, -0.398339, -0.345622,
		31.640070, 29.628529, 45.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631638, 30.196880, 46.092808>,  <32.234810, 29.907366, 45.684135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631638, 30.196880, 46.092808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.510902, 29.847281, 45.940483>,  <31.438461, 29.637522, 45.849087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.510902, 29.847281, 45.940483>,  <31.631638, 30.196880, 46.092808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510902, 29.847281, 45.940483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427072, -0.233168, 0.873637,
		-0.852352, 0.426333, -0.302881,
		-0.301838, -0.873998, -0.380816,
		31.420351, 29.585081, 45.826237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023001, 30.217644, 46.275139>,  <31.631638, 30.196880, 46.092808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023001, 30.217644, 46.275139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.084774, 29.829176, 46.202492>,  <31.121838, 29.596096, 46.158905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.084774, 29.829176, 46.202492>,  <31.023001, 30.217644, 46.275139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084774, 29.829176, 46.202492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452585, -0.232940, 0.860759,
		-0.878247, -0.050730, -0.475509,
		0.154431, -0.971167, -0.181619,
		31.131104, 29.537827, 46.148006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335424, 29.881523, 46.350792>,  <31.023001, 30.217644, 46.275139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335424, 29.881523, 46.350792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.589685, 29.574081, 46.379616>,  <30.742243, 29.389616, 46.396912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.589685, 29.574081, 46.379616>,  <30.335424, 29.881523, 46.350792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589685, 29.574081, 46.379616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497415, -0.336404, 0.799631,
		-0.590357, -0.544134, -0.596151,
		0.635654, -0.768603, 0.072062,
		30.780382, 29.343500, 46.401234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929708, 29.408831, 46.491165>,  <30.335424, 29.881523, 46.350792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929708, 29.408831, 46.491165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.298149, 29.306387, 46.608456>,  <30.519213, 29.244921, 46.678829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.298149, 29.306387, 46.608456>,  <29.929708, 29.408831, 46.491165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298149, 29.306387, 46.608456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359836, -0.272486, 0.892339,
		-0.148635, -0.927448, -0.343144,
		0.921100, -0.256109, 0.293228,
		30.574478, 29.229553, 46.696423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900047, 28.774965, 46.833675>,  <29.929708, 29.408831, 46.491165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900047, 28.774965, 46.833675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240139, 28.931755, 46.974224>,  <30.444195, 29.025829, 47.058556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240139, 28.931755, 46.974224>,  <29.900047, 28.774965, 46.833675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240139, 28.931755, 46.974224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241407, -0.302832, 0.921963,
		0.467795, -0.868704, -0.162851,
		0.850229, 0.391977, 0.351375,
		30.495209, 29.049349, 47.079636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183977, 28.243380, 47.273720>,  <29.900047, 28.774965, 46.833675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183977, 28.243380, 47.273720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.339640, 28.596102, 47.380283>,  <30.433037, 28.807735, 47.444221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.339640, 28.596102, 47.380283>,  <30.183977, 28.243380, 47.273720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339640, 28.596102, 47.380283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160269, -0.349611, 0.923085,
		0.907122, -0.316529, -0.277380,
		0.389158, 0.881806, 0.266410,
		30.456387, 28.860643, 47.460205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661407, 28.088799, 47.767498>,  <30.183977, 28.243380, 47.273720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661407, 28.088799, 47.767498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588465, 28.474169, 47.846039>,  <30.544699, 28.705391, 47.893166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588465, 28.474169, 47.846039>,  <30.661407, 28.088799, 47.767498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588465, 28.474169, 47.846039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028318, -0.194474, 0.980499,
		0.982825, 0.184359, 0.008181,
		-0.182355, 0.963427, 0.196354,
		30.533758, 28.763197, 47.904945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131012, 28.279095, 48.252388>,  <30.661407, 28.088799, 47.767498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131012, 28.279095, 48.252388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.884041, 28.591343, 48.291199>,  <30.735857, 28.778692, 48.314484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.884041, 28.591343, 48.291199>,  <31.131012, 28.279095, 48.252388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884041, 28.591343, 48.291199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169550, 0.011624, 0.985453,
		0.768137, 0.624897, -0.139531,
		-0.617429, 0.780620, 0.097022,
		30.698812, 28.825529, 48.320305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409290, 28.644543, 48.783531>,  <31.131012, 28.279095, 48.252388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409290, 28.644543, 48.783531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044676, 28.809011, 48.781075>,  <30.825907, 28.907692, 48.779598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044676, 28.809011, 48.781075>,  <31.409290, 28.644543, 48.783531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044676, 28.809011, 48.781075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073482, 0.177572, 0.981361,
		0.404599, 0.894095, -0.192077,
		-0.911537, 0.411172, -0.006146,
		30.771215, 28.932364, 48.779232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489399, 29.387766, 49.187328>,  <31.409290, 28.644543, 48.783531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489399, 29.387766, 49.187328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108521, 29.265717, 49.181427>,  <30.879993, 29.192486, 49.177887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108521, 29.265717, 49.181427>,  <31.489399, 29.387766, 49.187328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108521, 29.265717, 49.181427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105793, 0.284079, 0.952947,
		-0.286577, 0.908955, -0.302779,
		-0.952198, -0.305125, -0.014751,
		30.822861, 29.174179, 49.177002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065567, 29.947912, 49.443794>,  <31.489399, 29.387766, 49.187328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065567, 29.947912, 49.443794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.901005, 29.589172, 49.508797>,  <30.802267, 29.373928, 49.547798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.901005, 29.589172, 49.508797>,  <31.065567, 29.947912, 49.443794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901005, 29.589172, 49.508797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199061, 0.262399, 0.944204,
		-0.889449, 0.356104, -0.286480,
		-0.411407, -0.896848, 0.162504,
		30.777582, 29.320118, 49.557549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390699, 30.097462, 49.802929>,  <31.065567, 29.947912, 49.443794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390699, 30.097462, 49.802929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.510662, 29.720284, 49.860771>,  <30.582640, 29.493977, 49.895477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.510662, 29.720284, 49.860771>,  <30.390699, 30.097462, 49.802929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510662, 29.720284, 49.860771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327147, 0.040734, 0.944095,
		-0.896121, -0.330446, -0.296265,
		0.299905, -0.942945, 0.144607,
		30.600634, 29.437401, 49.904152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889105, 30.537159, 50.061768>,  <30.390699, 30.097462, 49.802929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889105, 30.537159, 50.061768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002573, 30.881083, 50.231598>,  <31.070654, 31.087437, 50.333496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002573, 30.881083, 50.231598>,  <30.889105, 30.537159, 50.061768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002573, 30.881083, 50.231598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309048, 0.337161, -0.889276,
		-0.907756, 0.383473, -0.170080,
		0.283669, 0.859808, 0.424572,
		31.087673, 31.139025, 50.358971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625896, 31.138489, 49.668385>,  <30.889105, 30.537159, 50.061768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625896, 31.138489, 49.668385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.959259, 31.250799, 49.858795>,  <31.159277, 31.318186, 49.973042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.959259, 31.250799, 49.858795>,  <30.625896, 31.138489, 49.668385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959259, 31.250799, 49.858795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378614, 0.337390, -0.861870,
		-0.402600, 0.898516, 0.174876,
		0.833406, 0.280778, 0.476024,
		31.209280, 31.335033, 50.001602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870535, 31.768467, 49.289124>,  <30.625896, 31.138489, 49.668385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870535, 31.768467, 49.289124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.207216, 31.691629, 49.490971>,  <31.409225, 31.645527, 49.612080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.207216, 31.691629, 49.490971>,  <30.870535, 31.768467, 49.289124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207216, 31.691629, 49.490971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532809, 0.446918, -0.718595,
		-0.087484, 0.873707, 0.478521,
		0.841701, -0.192095, 0.504618,
		31.459726, 31.634001, 49.642357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080269, 32.420090, 49.424019>,  <30.870535, 31.768467, 49.289124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080269, 32.420090, 49.424019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385149, 32.162052, 49.445587>,  <31.568077, 32.007229, 49.458530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385149, 32.162052, 49.445587>,  <31.080269, 32.420090, 49.424019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385149, 32.162052, 49.445587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487750, 0.517528, -0.703040,
		0.425616, 0.562160, 0.709103,
		0.762202, -0.645090, 0.053925,
		31.613810, 31.968525, 49.461765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645061, 32.849445, 49.393803>,  <31.080269, 32.420090, 49.424019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645061, 32.849445, 49.393803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.772804, 32.483166, 49.296227>,  <31.849451, 32.263397, 49.237679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.772804, 32.483166, 49.296227>,  <31.645061, 32.849445, 49.393803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772804, 32.483166, 49.296227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478242, 0.377977, -0.792729,
		0.818105, 0.136500, 0.558635,
		0.319358, -0.915697, -0.243944,
		31.868612, 32.208458, 49.223042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330784, 32.959396, 49.160721>,  <31.645061, 32.849445, 49.393803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330784, 32.959396, 49.160721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.257481, 32.583088, 49.046619>,  <32.213497, 32.357304, 48.978157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.257481, 32.583088, 49.046619>,  <32.330784, 32.959396, 49.160721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257481, 32.583088, 49.046619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654101, 0.099923, -0.749778,
		0.733871, -0.323990, 0.597046,
		-0.183262, -0.940769, -0.285252,
		32.202503, 32.300858, 48.961044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928429, 32.823044, 48.721638>,  <32.330784, 32.959396, 49.160721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928429, 32.823044, 48.721638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.641731, 32.569672, 48.604992>,  <32.469711, 32.417648, 48.535004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.641731, 32.569672, 48.604992>,  <32.928429, 32.823044, 48.721638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641731, 32.569672, 48.604992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130767, 0.288677, -0.948454,
		0.684966, -0.717932, -0.124076,
		-0.716743, -0.633434, -0.291616,
		32.426708, 32.379642, 48.517506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627754, 32.669632, 48.488396>,  <32.928429, 32.823044, 48.721638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627754, 32.669632, 48.488396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.742641, 33.012474, 48.659451>,  <33.811573, 33.218182, 48.762081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.742641, 33.012474, 48.659451>,  <33.627754, 32.669632, 48.488396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742641, 33.012474, 48.659451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103681, -0.416004, 0.903433,
		0.952238, -0.303817, -0.030617,
		0.287216, 0.857109, 0.427635,
		33.828808, 33.269608, 48.787743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990376, 32.461288, 49.004147>,  <33.627754, 32.669632, 48.488396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990376, 32.461288, 49.004147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938057, 32.839954, 49.121933>,  <33.906666, 33.067154, 49.192604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938057, 32.839954, 49.121933>,  <33.990376, 32.461288, 49.004147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938057, 32.839954, 49.121933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043293, -0.302189, 0.952264,
		0.990464, 0.111803, 0.080509,
		-0.130795, 0.946669, 0.294467,
		33.898819, 33.123955, 49.210274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350243, 32.602211, 49.536030>,  <33.990376, 32.461288, 49.004147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350243, 32.602211, 49.536030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.085930, 32.898735, 49.583057>,  <33.927341, 33.076649, 49.611275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.085930, 32.898735, 49.583057>,  <34.350243, 32.602211, 49.536030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085930, 32.898735, 49.583057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043959, -0.118147, 0.992022,
		0.749288, 0.660680, 0.045483,
		-0.660784, 0.741311, 0.117569,
		33.887695, 33.121128, 49.618328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629803, 33.026421, 50.005207>,  <34.350243, 32.602211, 49.536030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629803, 33.026421, 50.005207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242348, 33.121029, 50.035686>,  <34.009876, 33.177792, 50.053974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242348, 33.121029, 50.035686>,  <34.629803, 33.026421, 50.005207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242348, 33.121029, 50.035686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033422, -0.179848, 0.983126,
		0.246232, 0.954837, 0.166302,
		-0.968634, 0.236519, 0.076196,
		33.951756, 33.191986, 50.058544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635208, 33.436119, 50.557915>,  <34.629803, 33.026421, 50.005207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635208, 33.436119, 50.557915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262527, 33.296757, 50.516834>,  <34.038918, 33.213139, 50.492188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262527, 33.296757, 50.516834>,  <34.635208, 33.436119, 50.557915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262527, 33.296757, 50.516834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026252, -0.346592, 0.937648,
		-0.362279, 0.870911, 0.332066,
		-0.931700, -0.348407, -0.102700,
		33.983017, 33.192234, 50.486023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339752, 33.546043, 51.232300>,  <34.635208, 33.436119, 50.557915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339752, 33.546043, 51.232300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122692, 33.275024, 51.033718>,  <33.992455, 33.112415, 50.914570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122692, 33.275024, 51.033718>,  <34.339752, 33.546043, 51.232300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122692, 33.275024, 51.033718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273670, -0.416173, 0.867124,
		-0.794123, 0.606412, 0.040415,
		-0.542654, -0.677543, -0.496450,
		33.959896, 33.071762, 50.884785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683411, 33.509087, 51.641476>,  <34.339752, 33.546043, 51.232300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683411, 33.509087, 51.641476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.706944, 33.181698, 51.412865>,  <33.721062, 32.985264, 51.275696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.706944, 33.181698, 51.412865>,  <33.683411, 33.509087, 51.641476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706944, 33.181698, 51.412865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150628, -0.573244, 0.805421,
		-0.986839, 0.038706, -0.157008,
		0.058829, -0.818470, -0.571530,
		33.724594, 32.936157, 51.241405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079739, 33.134602, 51.813442>,  <33.683411, 33.509087, 51.641476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079739, 33.134602, 51.813442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354404, 32.879589, 51.673706>,  <33.519203, 32.726582, 51.589863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354404, 32.879589, 51.673706>,  <33.079739, 33.134602, 51.813442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354404, 32.879589, 51.673706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161593, -0.602374, 0.781687,
		-0.708785, -0.480308, -0.516651,
		0.686667, -0.637534, -0.349339,
		33.560406, 32.688328, 51.568905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839279, 32.477795, 51.915447>,  <33.079739, 33.134602, 51.813442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839279, 32.477795, 51.915447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.235992, 32.430927, 51.894924>,  <33.474022, 32.402805, 51.882610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.235992, 32.430927, 51.894924>,  <32.839279, 32.477795, 51.915447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235992, 32.430927, 51.894924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026248, -0.579041, 0.814876,
		-0.125187, -0.806836, -0.577360,
		0.991786, -0.117167, -0.051311,
		33.533527, 32.395779, 51.879532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.697472, 37.790592, 36.202232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901733, 37.447945, 36.231728>,  <36.024292, 37.242355, 36.249424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901733, 37.447945, 36.231728>,  <35.697472, 37.790592, 36.202232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901733, 37.447945, 36.231728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126895, 0.159916, 0.978941,
		-0.850371, -0.490542, 0.190362,
		0.510653, -0.856619, 0.073741,
		36.054928, 37.190960, 36.253849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833393, 37.557171, 36.970184>,  <35.697472, 37.790592, 36.202232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833393, 37.557171, 36.970184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084381, 37.655731, 37.265636>,  <36.234974, 37.714867, 37.442905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084381, 37.655731, 37.265636>,  <35.833393, 37.557171, 36.970184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084381, 37.655731, 37.265636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473753, -0.632010, 0.613288,
		0.617934, -0.734746, -0.279834,
		0.627468, 0.246399, 0.738628,
		36.272621, 37.729652, 37.487225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117355, 36.898659, 37.287830>,  <35.833393, 37.557171, 36.970184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117355, 36.898659, 37.287830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 37.190498, 37.561378>,  <36.119011, 37.365604, 37.725506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 37.190498, 37.561378>,  <36.117355, 36.898659, 37.287830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118389, 37.190498, 37.561378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508167, -0.588028, 0.629277,
		0.861255, -0.349145, 0.369239,
		0.002586, 0.729603, 0.683866,
		36.119164, 37.409378, 37.766537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329689, 36.598118, 38.006271>,  <36.117355, 36.898659, 37.287830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329689, 36.598118, 38.006271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160107, 36.947598, 38.101688>,  <36.058357, 37.157288, 38.158939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160107, 36.947598, 38.101688>,  <36.329689, 36.598118, 38.006271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160107, 36.947598, 38.101688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705928, -0.483790, 0.517313,
		0.567383, 0.050925, 0.821878,
		-0.423960, 0.873701, 0.238545,
		36.032917, 37.209709, 38.173252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262775, 36.568356, 38.743515>,  <36.329689, 36.598118, 38.006271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262775, 36.568356, 38.743515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997993, 36.839233, 38.615002>,  <35.839127, 37.001762, 38.537895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997993, 36.839233, 38.615002>,  <36.262775, 36.568356, 38.743515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997993, 36.839233, 38.615002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693672, -0.391089, 0.604870,
		0.283967, 0.623260, 0.728636,
		-0.661953, 0.677197, -0.321282,
		35.799408, 37.042393, 38.518616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059059, 36.854786, 39.314198>,  <36.262775, 36.568356, 38.743515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059059, 36.854786, 39.314198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766029, 36.962688, 39.064217>,  <35.590210, 37.027431, 38.914230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766029, 36.962688, 39.064217>,  <36.059059, 36.854786, 39.314198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766029, 36.962688, 39.064217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678806, -0.357677, 0.641318,
		-0.050527, 0.894034, 0.445141,
		-0.732577, 0.269760, -0.624948,
		35.546257, 37.043617, 38.876732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770428, 37.371738, 39.579639>,  <36.059059, 36.854786, 39.314198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770428, 37.371738, 39.579639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490501, 37.215698, 39.340282>,  <35.322544, 37.122074, 39.196667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490501, 37.215698, 39.340282>,  <35.770428, 37.371738, 39.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490501, 37.215698, 39.340282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629060, -0.060329, 0.775012,
		-0.338437, 0.918792, -0.203180,
		-0.699817, -0.390105, -0.598393,
		35.280556, 37.098667, 39.160763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154026, 37.653179, 39.800438>,  <35.770428, 37.371738, 39.579639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154026, 37.653179, 39.800438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052418, 37.341599, 39.571106>,  <34.991455, 37.154652, 39.433506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052418, 37.341599, 39.571106>,  <35.154026, 37.653179, 39.800438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052418, 37.341599, 39.571106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747819, -0.217754, 0.627176,
		-0.613385, 0.588062, -0.527202,
		-0.254018, -0.778952, -0.573331,
		34.976212, 37.107914, 39.399105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424328, 37.618492, 39.839886>,  <35.154026, 37.653179, 39.800438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424328, 37.618492, 39.839886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513424, 37.250713, 39.710270>,  <34.566883, 37.030045, 39.632500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513424, 37.250713, 39.710270>,  <34.424328, 37.618492, 39.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513424, 37.250713, 39.710270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617285, -0.390284, 0.683109,
		-0.754550, 0.047868, -0.654494,
		0.222740, -0.919449, -0.324037,
		34.580246, 36.974880, 39.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798668, 37.167053, 40.011990>,  <34.424328, 37.618492, 39.839886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798668, 37.167053, 40.011990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103733, 36.914986, 39.953686>,  <34.286770, 36.763744, 39.918705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103733, 36.914986, 39.953686>,  <33.798668, 37.167053, 40.011990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103733, 36.914986, 39.953686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292094, -0.536617, 0.791658,
		-0.577094, -0.561188, -0.593323,
		0.762656, -0.630167, -0.145759,
		34.332531, 36.725937, 39.909958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455421, 36.515152, 40.126453>,  <33.798668, 37.167053, 40.011990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455421, 36.515152, 40.126453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846684, 36.446171, 40.172874>,  <34.081440, 36.404781, 40.200729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846684, 36.446171, 40.172874>,  <33.455421, 36.515152, 40.126453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846684, 36.446171, 40.172874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206563, -0.743879, 0.635590,
		-0.023279, -0.645680, -0.763254,
		0.978157, -0.172456, 0.116057,
		34.140129, 36.394436, 40.207691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450813, 35.869987, 40.442688>,  <33.455421, 36.515152, 40.126453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450813, 35.869987, 40.442688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824371, 35.969315, 40.545582>,  <34.048508, 36.028912, 40.607319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824371, 35.969315, 40.545582>,  <33.450813, 35.869987, 40.442688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824371, 35.969315, 40.545582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136925, -0.416224, 0.898893,
		0.330280, -0.874697, -0.354710,
		0.933899, 0.248318, 0.257238,
		34.104542, 36.043808, 40.622753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087898, 35.234688, 40.408195>,  <33.450813, 35.869987, 40.442688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087898, 35.234688, 40.408195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688217, 35.226665, 40.422024>,  <32.448410, 35.221851, 40.430321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688217, 35.226665, 40.422024>,  <33.087898, 35.234688, 40.408195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688217, 35.226665, 40.422024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038654, 0.265337, -0.963381,
		0.010149, -0.963947, -0.265900,
		-0.999201, -0.020056, 0.034568,
		32.388458, 35.220650, 40.432396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904518, 34.866169, 39.848110>,  <33.087898, 35.234688, 40.408195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904518, 34.866169, 39.848110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591892, 35.099483, 39.936592>,  <32.404316, 35.239471, 39.989681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591892, 35.099483, 39.936592>,  <32.904518, 34.866169, 39.848110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591892, 35.099483, 39.936592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161285, 0.153595, -0.974882,
		-0.602615, -0.797610, -0.025968,
		-0.781564, 0.583290, 0.221201,
		32.357422, 35.274471, 40.002953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443092, 34.755852, 39.217480>,  <32.904518, 34.866169, 39.848110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443092, 34.755852, 39.217480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303505, 35.077526, 39.409939>,  <32.219753, 35.270531, 39.525414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303505, 35.077526, 39.409939>,  <32.443092, 34.755852, 39.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303505, 35.077526, 39.409939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216906, 0.430171, -0.876302,
		-0.911686, -0.410166, 0.024316,
		-0.348969, 0.804187, 0.481149,
		32.198814, 35.318783, 39.554283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731743, 34.805599, 39.022804>,  <32.443092, 34.755852, 39.217480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731743, 34.805599, 39.022804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881386, 35.162483, 39.124004>,  <31.971170, 35.376614, 39.184723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881386, 35.162483, 39.124004>,  <31.731743, 34.805599, 39.022804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881386, 35.162483, 39.124004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182506, 0.338301, -0.923171,
		-0.909250, 0.299191, 0.289394,
		0.374106, 0.892209, 0.252996,
		31.993618, 35.430145, 39.199902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281204, 35.217300, 38.691883>,  <31.731743, 34.805599, 39.022804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281204, 35.217300, 38.691883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568373, 35.478821, 38.787491>,  <31.740673, 35.635735, 38.844856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568373, 35.478821, 38.787491>,  <31.281204, 35.217300, 38.691883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568373, 35.478821, 38.787491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184168, 0.509507, -0.840527,
		-0.671321, 0.559412, 0.486195,
		0.717921, 0.653805, 0.239017,
		31.783749, 35.674961, 38.859196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948929, 35.883858, 38.611412>,  <31.281204, 35.217300, 38.691883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948929, 35.883858, 38.611412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346611, 35.926552, 38.606361>,  <31.585220, 35.952168, 38.603333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346611, 35.926552, 38.606361>,  <30.948929, 35.883858, 38.611412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346611, 35.926552, 38.606361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056275, 0.416906, -0.907206,
		-0.091564, 0.902662, 0.420497,
		0.994208, 0.106731, -0.012624,
		31.644873, 35.958572, 38.602573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012722, 36.508373, 38.290195>,  <30.948929, 35.883858, 38.611412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012722, 36.508373, 38.290195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385519, 36.364483, 38.272343>,  <31.609198, 36.278149, 38.261631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385519, 36.364483, 38.272343>,  <31.012722, 36.508373, 38.290195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385519, 36.364483, 38.272343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107950, 0.392982, -0.913188,
		0.346035, 0.846264, 0.405088,
		0.931991, -0.359724, -0.044632,
		31.665115, 36.256565, 38.258953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478870, 37.081226, 38.102646>,  <31.012722, 36.508373, 38.290195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478870, 37.081226, 38.102646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690828, 36.759655, 37.994640>,  <31.818005, 36.566711, 37.929836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690828, 36.759655, 37.994640>,  <31.478870, 37.081226, 38.102646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690828, 36.759655, 37.994640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022485, 0.331591, -0.943156,
		0.847764, 0.493704, 0.193785,
		0.529897, -0.803930, -0.270010,
		31.849798, 36.518475, 37.913639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947515, 37.325146, 37.587654>,  <31.478870, 37.081226, 38.102646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947515, 37.325146, 37.587654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896627, 36.930313, 37.548706>,  <31.866095, 36.693413, 37.525337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896627, 36.930313, 37.548706>,  <31.947515, 37.325146, 37.587654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896627, 36.930313, 37.548706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180945, 0.119620, -0.976192,
		0.975230, -0.106572, -0.193826,
		-0.127220, -0.987083, -0.097374,
		31.858461, 36.634190, 37.519493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167603, 37.193497, 36.906609>,  <31.947515, 37.325146, 37.587654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167603, 37.193497, 36.906609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948996, 36.873684, 37.006264>,  <31.817831, 36.681797, 37.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948996, 36.873684, 37.006264>,  <32.167603, 37.193497, 36.906609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948996, 36.873684, 37.006264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239126, -0.136117, -0.961400,
		0.802579, -0.585001, -0.116797,
		-0.546522, -0.799529, 0.249134,
		31.785040, 36.633827, 37.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227959, 36.736938, 36.312828>,  <32.167603, 37.193497, 36.906609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227959, 36.736938, 36.312828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906498, 36.617065, 36.518482>,  <31.713621, 36.545143, 36.641872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906498, 36.617065, 36.518482>,  <32.227959, 36.736938, 36.312828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906498, 36.617065, 36.518482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476441, -0.193649, -0.857615,
		0.356573, -0.934179, 0.012847,
		-0.803654, -0.299681, 0.514131,
		31.665401, 36.527161, 36.672722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921152, 36.192963, 35.878857>,  <32.227959, 36.736938, 36.312828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921152, 36.192963, 35.878857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603863, 36.304283, 36.095501>,  <31.413488, 36.371075, 36.225487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603863, 36.304283, 36.095501>,  <31.921152, 36.192963, 35.878857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603863, 36.304283, 36.095501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593637, -0.155346, -0.789597,
		-0.135618, -0.947845, 0.288440,
		-0.793224, 0.278312, 0.541608,
		31.365894, 36.387772, 36.257984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396513, 35.729073, 35.632950>,  <31.921152, 36.192963, 35.878857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396513, 35.729073, 35.632950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206947, 36.016010, 35.837234>,  <31.093208, 36.188171, 35.959805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206947, 36.016010, 35.837234>,  <31.396513, 35.729073, 35.632950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206947, 36.016010, 35.837234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718372, 0.020464, -0.695358,
		-0.509260, -0.696421, 0.505620,
		-0.473915, 0.717342, 0.510711,
		31.064774, 36.231213, 35.990448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601484, 35.442455, 35.565384>,  <31.396513, 35.729073, 35.632950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601484, 35.442455, 35.565384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574221, 35.830658, 35.657883>,  <30.557863, 36.063580, 35.713383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574221, 35.830658, 35.657883>,  <30.601484, 35.442455, 35.565384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574221, 35.830658, 35.657883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869195, 0.056020, -0.491286,
		-0.489749, -0.234488, 0.839739,
		-0.068159, 0.970504, 0.231251,
		30.553774, 36.121811, 35.727257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984648, 35.576534, 35.944786>,  <30.601484, 35.442455, 35.565384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984648, 35.576534, 35.944786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119558, 35.903233, 35.757526>,  <30.200504, 36.099251, 35.645172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119558, 35.903233, 35.757526>,  <29.984648, 35.576534, 35.944786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119558, 35.903233, 35.757526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858390, 0.062628, -0.509161,
		-0.386538, 0.573584, 0.722212,
		0.337277, 0.816749, -0.468150,
		30.220741, 36.148258, 35.617081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595413, 35.069416, 36.248035>,  <29.984648, 35.576534, 35.944786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595413, 35.069416, 36.248035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861919, 34.862045, 36.033627>,  <31.021824, 34.737621, 35.904980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861919, 34.862045, 36.033627>,  <30.595413, 35.069416, 36.248035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861919, 34.862045, 36.033627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059478, -0.753464, 0.654794,
		-0.743331, -0.404390, -0.532848,
		0.666274, -0.518421, -0.536021,
		31.061798, 34.706516, 35.872818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322527, 34.442947, 36.092983>,  <30.595413, 35.069416, 36.248035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322527, 34.442947, 36.092983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717993, 34.398994, 36.133915>,  <30.955273, 34.372623, 36.158474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717993, 34.398994, 36.133915>,  <30.322527, 34.442947, 36.092983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717993, 34.398994, 36.133915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150127, -0.711663, 0.686292,
		-0.002590, -0.693874, -0.720092,
		0.988664, -0.109883, 0.102326,
		31.014591, 34.366028, 36.164612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425163, 33.827915, 35.855194>,  <30.322527, 34.442947, 36.092983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425163, 33.827915, 35.855194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713972, 33.941498, 36.107559>,  <30.887259, 34.009647, 36.258980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713972, 33.941498, 36.107559>,  <30.425163, 33.827915, 35.855194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713972, 33.941498, 36.107559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066551, -0.879163, 0.471852,
		0.688660, -0.382676, -0.615879,
		0.722024, 0.283958, 0.630912,
		30.930580, 34.026684, 36.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830439, 33.139866, 36.067253>,  <30.425163, 33.827915, 35.855194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830439, 33.139866, 36.067253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932007, 33.439625, 36.311852>,  <30.992949, 33.619480, 36.458611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932007, 33.439625, 36.311852>,  <30.830439, 33.139866, 36.067253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932007, 33.439625, 36.311852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034664, -0.638862, 0.768540,
		0.966603, -0.173953, -0.188198,
		0.253923, 0.749396, 0.611497,
		31.008184, 33.664444, 36.495300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482191, 32.932568, 36.393215>,  <30.830439, 33.139866, 36.067253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482191, 32.932568, 36.393215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339495, 33.209274, 36.644352>,  <31.253876, 33.375298, 36.795036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339495, 33.209274, 36.644352>,  <31.482191, 32.932568, 36.393215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339495, 33.209274, 36.644352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161157, -0.616418, 0.770751,
		0.920197, 0.376142, 0.108419,
		-0.356743, 0.691770, 0.627844,
		31.232471, 33.416805, 36.832706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856073, 32.907822, 36.971565>,  <31.482191, 32.932568, 36.393215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856073, 32.907822, 36.971565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540741, 33.097389, 37.128502>,  <31.351542, 33.211128, 37.222664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540741, 33.097389, 37.128502>,  <31.856073, 32.907822, 36.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540741, 33.097389, 37.128502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166908, -0.449049, 0.877779,
		0.592178, 0.757467, 0.274899,
		-0.788332, 0.473919, 0.392344,
		31.304241, 33.239563, 37.246204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024796, 33.235905, 37.603115>,  <31.856073, 32.907822, 36.971565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024796, 33.235905, 37.603115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633146, 33.154716, 37.607506>,  <31.398157, 33.106003, 37.610142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633146, 33.154716, 37.607506>,  <32.024796, 33.235905, 37.603115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633146, 33.154716, 37.607506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113089, -0.499049, 0.859163,
		-0.168906, 0.842468, 0.511584,
		-0.979123, -0.202972, 0.010982,
		31.339409, 33.093826, 37.610802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897253, 33.273373, 38.403656>,  <32.024796, 33.235905, 37.603115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897253, 33.273373, 38.403656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573492, 33.114147, 38.230957>,  <31.379234, 33.018612, 38.127338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573492, 33.114147, 38.230957>,  <31.897253, 33.273373, 38.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573492, 33.114147, 38.230957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282874, -0.380011, 0.880667,
		-0.514632, 0.834947, 0.194981,
		-0.809405, -0.398064, -0.431751,
		31.330671, 32.994728, 38.101433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281069, 33.368282, 38.828491>,  <31.897253, 33.273373, 38.403656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281069, 33.368282, 38.828491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157534, 33.079685, 38.580601>,  <31.083412, 32.906528, 38.431866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157534, 33.079685, 38.580601>,  <31.281069, 33.368282, 38.828491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157534, 33.079685, 38.580601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253998, -0.565355, 0.784767,
		-0.916572, 0.399775, -0.008656,
		-0.308837, -0.721494, -0.619731,
		31.064882, 32.863235, 38.394680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562832, 33.204643, 38.891529>,  <31.281069, 33.368282, 38.828491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562832, 33.204643, 38.891529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702225, 32.867481, 38.727539>,  <30.785860, 32.665184, 38.629147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702225, 32.867481, 38.727539>,  <30.562832, 33.204643, 38.891529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702225, 32.867481, 38.727539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303020, -0.515212, 0.801708,
		-0.886983, -0.155152, -0.434959,
		0.348482, -0.842902, -0.409971,
		30.806770, 32.614609, 38.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089054, 32.754963, 39.130054>,  <30.562832, 33.204643, 38.891529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089054, 32.754963, 39.130054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380503, 32.522430, 38.985191>,  <30.555372, 32.382912, 38.898273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380503, 32.522430, 38.985191>,  <30.089054, 32.754963, 39.130054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380503, 32.522430, 38.985191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105793, -0.617945, 0.779071,
		-0.676697, -0.529334, -0.511748,
		0.728621, -0.581335, -0.362162,
		30.599089, 32.348030, 38.876545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812901, 32.078789, 39.223194>,  <30.089054, 32.754963, 39.130054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812901, 32.078789, 39.223194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210100, 32.034519, 39.206673>,  <30.448420, 32.007957, 39.196758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210100, 32.034519, 39.206673>,  <29.812901, 32.078789, 39.223194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210100, 32.034519, 39.206673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051650, -0.721222, 0.690776,
		-0.106238, -0.683806, -0.721888,
		0.992998, -0.110672, -0.041303,
		30.507999, 32.001316, 39.194283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916430, 31.383480, 39.048248>,  <29.812901, 32.078789, 39.223194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916430, 31.383480, 39.048248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247385, 31.532562, 39.216309>,  <30.445957, 31.622011, 39.317142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247385, 31.532562, 39.216309>,  <29.916430, 31.383480, 39.048248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247385, 31.532562, 39.216309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017991, -0.730109, 0.683094,
		0.561345, -0.572742, -0.597377,
		0.827387, 0.372704, 0.420146,
		30.495602, 31.644373, 39.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271040, 30.752146, 39.335865>,  <29.916430, 31.383480, 39.048248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271040, 30.752146, 39.335865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446119, 31.051985, 39.534470>,  <30.551167, 31.231888, 39.653633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446119, 31.051985, 39.534470>,  <30.271040, 30.752146, 39.335865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446119, 31.051985, 39.534470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103117, -0.590423, 0.800479,
		0.893190, -0.299168, -0.335723,
		0.437697, 0.749599, 0.496511,
		30.577429, 31.276865, 39.683422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827707, 30.499184, 39.617783>,  <30.271040, 30.752146, 39.335865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827707, 30.499184, 39.617783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761049, 30.825447, 39.839390>,  <30.721054, 31.021204, 39.972355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761049, 30.825447, 39.839390>,  <30.827707, 30.499184, 39.617783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761049, 30.825447, 39.839390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266349, -0.503745, 0.821766,
		0.949361, 0.284506, -0.133302,
		-0.166647, 0.815657, 0.554014,
		30.711056, 31.070145, 40.005592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243631, 30.387875, 40.142750>,  <30.827707, 30.499184, 39.617783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243631, 30.387875, 40.142750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044746, 30.702785, 40.288612>,  <30.925415, 30.891731, 40.376129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044746, 30.702785, 40.288612>,  <31.243631, 30.387875, 40.142750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044746, 30.702785, 40.288612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180695, -0.317117, 0.931013,
		0.848605, 0.528803, 0.015418,
		-0.497212, 0.787276, 0.364659,
		30.895582, 30.938969, 40.398010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689310, 30.828247, 40.634766>,  <31.243631, 30.387875, 40.142750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689310, 30.828247, 40.634766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312166, 30.906090, 40.742943>,  <31.085880, 30.952795, 40.807850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312166, 30.906090, 40.742943>,  <31.689310, 30.828247, 40.634766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312166, 30.906090, 40.742943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193486, -0.340999, 0.919936,
		0.271248, 0.919700, 0.283861,
		-0.942862, 0.194607, 0.270444,
		31.029308, 30.964472, 40.824078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763542, 31.255329, 41.215839>,  <31.689310, 30.828247, 40.634766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763542, 31.255329, 41.215839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391304, 31.110580, 41.237885>,  <31.167961, 31.023731, 41.251110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391304, 31.110580, 41.237885>,  <31.763542, 31.255329, 41.215839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391304, 31.110580, 41.237885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171540, -0.298134, 0.938983,
		-0.323361, 0.883269, 0.339518,
		-0.930597, -0.361872, 0.055111,
		31.112125, 31.002018, 41.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721531, 31.251268, 41.875435>,  <31.763542, 31.255329, 41.215839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721531, 31.251268, 41.875435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393139, 31.049704, 41.768059>,  <31.196104, 30.928764, 41.703632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393139, 31.049704, 41.768059>,  <31.721531, 31.251268, 41.875435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393139, 31.049704, 41.768059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026036, -0.436633, 0.899263,
		-0.570361, 0.745267, 0.345348,
		-0.820981, -0.503913, -0.268443,
		31.146845, 30.898529, 41.687527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312235, 31.402752, 42.403160>,  <31.721531, 31.251268, 41.875435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312235, 31.402752, 42.403160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236189, 31.057758, 42.215553>,  <31.190561, 30.850761, 42.102989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236189, 31.057758, 42.215553>,  <31.312235, 31.402752, 42.403160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236189, 31.057758, 42.215553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027226, -0.482177, 0.875650,
		-0.981384, 0.153705, 0.115151,
		-0.190115, -0.862485, -0.469017,
		31.179155, 30.799013, 42.074848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683485, 31.044968, 42.614483>,  <31.312235, 31.402752, 42.403160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683485, 31.044968, 42.614483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895021, 30.738918, 42.467560>,  <31.021942, 30.555288, 42.379406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895021, 30.738918, 42.467560>,  <30.683485, 31.044968, 42.614483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895021, 30.738918, 42.467560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175991, -0.522227, 0.834450,
		-0.830275, -0.376648, -0.410829,
		0.528840, -0.765124, -0.367306,
		31.053673, 30.509380, 42.357368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403681, 30.533125, 42.943825>,  <30.683485, 31.044968, 42.614483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403681, 30.533125, 42.943825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743292, 30.375685, 42.802837>,  <30.947058, 30.281221, 42.718246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743292, 30.375685, 42.802837>,  <30.403681, 30.533125, 42.943825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743292, 30.375685, 42.802837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090507, -0.548905, 0.830970,
		-0.520538, -0.737418, -0.430412,
		0.849028, -0.393596, -0.352468,
		30.997999, 30.257605, 42.697098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412184, 29.797171, 43.192642>,  <30.403681, 30.533125, 42.943825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412184, 29.797171, 43.192642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792879, 29.875483, 43.098095>,  <31.021296, 29.922470, 43.041367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792879, 29.875483, 43.098095>,  <30.412184, 29.797171, 43.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792879, 29.875483, 43.098095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306720, -0.579033, 0.755410,
		0.011028, -0.791449, -0.611135,
		0.951736, 0.195778, -0.236367,
		31.078400, 29.934216, 43.027184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713484, 29.194315, 43.199169>,  <30.412184, 29.797171, 43.192642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713484, 29.194315, 43.199169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013294, 29.453703, 43.252384>,  <31.193180, 29.609335, 43.284313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013294, 29.453703, 43.252384>,  <30.713484, 29.194315, 43.199169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013294, 29.453703, 43.252384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241332, -0.454813, 0.857265,
		0.616415, -0.610438, -0.497391,
		0.749527, 0.648468, 0.133035,
		31.238152, 29.648243, 43.292294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260569, 28.845121, 43.567196>,  <30.713484, 29.194315, 43.199169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260569, 28.845121, 43.567196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363972, 29.225742, 43.633801>,  <31.426014, 29.454115, 43.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363972, 29.225742, 43.633801>,  <31.260569, 28.845121, 43.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363972, 29.225742, 43.633801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217528, -0.225282, 0.949700,
		0.941199, -0.209285, -0.265226,
		0.258508, 0.951550, 0.166510,
		31.441525, 29.511208, 43.683754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779652, 28.770166, 43.967773>,  <31.260569, 28.845121, 43.567196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779652, 28.770166, 43.967773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679964, 29.150316, 44.042259>,  <31.620152, 29.378407, 44.086948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679964, 29.150316, 44.042259>,  <31.779652, 28.770166, 43.967773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679964, 29.150316, 44.042259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271753, -0.115924, 0.955360,
		0.929538, 0.288697, -0.229378,
		-0.249219, 0.950377, 0.186210,
		31.605198, 29.435429, 44.098122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284996, 29.104662, 44.373642>,  <31.779652, 28.770166, 43.967773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284996, 29.104662, 44.373642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969841, 29.337288, 44.454651>,  <31.780748, 29.476864, 44.503258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969841, 29.337288, 44.454651>,  <32.284996, 29.104662, 44.373642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969841, 29.337288, 44.454651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125911, -0.169788, 0.977404,
		0.602812, 0.795583, 0.060548,
		-0.787886, 0.581567, 0.202523,
		31.733475, 29.511759, 44.515408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968189, 29.318968, 44.789368>,  <32.284996, 29.104662, 44.373642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968189, 29.318968, 44.789368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359409, 29.235632, 44.791046>,  <33.594139, 29.185631, 44.792053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359409, 29.235632, 44.791046>,  <32.968189, 29.318968, 44.789368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359409, 29.235632, 44.791046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097703, 0.440692, -0.892325,
		0.184057, 0.873147, 0.451373,
		0.978048, -0.208339, 0.004196,
		33.652824, 29.173130, 44.792305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397896, 29.923763, 44.644806>,  <32.968189, 29.318968, 44.789368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397896, 29.923763, 44.644806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647156, 29.628992, 44.540024>,  <33.796711, 29.452129, 44.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647156, 29.628992, 44.540024>,  <33.397896, 29.923763, 44.644806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647156, 29.628992, 44.540024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159744, 0.447803, -0.879747,
		0.765613, 0.506370, 0.396769,
		0.623152, -0.736927, -0.261954,
		33.834103, 29.407913, 44.461437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083294, 30.168390, 44.427197>,  <33.397896, 29.923763, 44.644806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083294, 30.168390, 44.427197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025764, 29.805735, 44.268543>,  <33.991245, 29.588140, 44.173351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025764, 29.805735, 44.268543>,  <34.083294, 30.168390, 44.427197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025764, 29.805735, 44.268543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186016, 0.368886, -0.910671,
		0.971963, -0.204760, 0.115593,
		-0.143828, -0.906640, -0.396632,
		33.982616, 29.533743, 44.149555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676159, 30.179640, 44.018036>,  <34.083294, 30.168390, 44.427197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676159, 30.179640, 44.018036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434319, 29.891611, 43.881832>,  <34.289215, 29.718794, 43.800110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434319, 29.891611, 43.881832>,  <34.676159, 30.179640, 44.018036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434319, 29.891611, 43.881832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145418, 0.320527, -0.936010,
		0.783139, -0.615434, -0.089081,
		-0.604605, -0.720072, -0.340512,
		34.252937, 29.675589, 43.779678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012215, 30.124212, 43.408997>,  <34.676159, 30.179640, 44.018036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012215, 30.124212, 43.408997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666412, 29.923906, 43.391697>,  <34.458931, 29.803722, 43.381317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666412, 29.923906, 43.391697>,  <35.012215, 30.124212, 43.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666412, 29.923906, 43.391697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139155, 0.321134, -0.936754,
		0.482981, -0.803809, -0.347305,
		-0.864503, -0.500763, -0.043248,
		34.407063, 29.773678, 43.378723>
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
