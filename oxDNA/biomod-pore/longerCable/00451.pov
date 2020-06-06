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
	<24.450323, 34.962551, 35.562363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244829, 34.954922, 35.219269>,  <24.121532, 34.950344, 35.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244829, 34.954922, 35.219269>,  <24.450323, 34.962551, 35.562363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244829, 34.954922, 35.219269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284608, -0.939352, 0.191353,
		-0.809368, 0.342423, 0.477147,
		-0.513733, -0.019075, -0.857738,
		24.090710, 34.949200, 34.961948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181597, 35.299774, 35.604168>,  <24.450323, 34.962551, 35.562363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181597, 35.299774, 35.604168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534870, 35.397827, 35.444221>,  <25.746834, 35.456657, 35.348251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534870, 35.397827, 35.444221>,  <25.181597, 35.299774, 35.604168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534870, 35.397827, 35.444221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444218, 0.163575, -0.880860,
		-0.150516, 0.955592, 0.253357,
		0.883185, 0.245129, -0.399870,
		25.799826, 35.471367, 35.324261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117558, 35.949749, 35.171375>,  <25.181597, 35.299774, 35.604168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117558, 35.949749, 35.171375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449444, 35.781788, 35.024269>,  <25.648575, 35.681011, 34.936005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449444, 35.781788, 35.024269>,  <25.117558, 35.949749, 35.171375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449444, 35.781788, 35.024269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290671, 0.237444, -0.926893,
		0.476532, 0.875956, 0.074956,
		0.829715, -0.419907, -0.367765,
		25.698359, 35.655815, 34.913940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459534, 36.438381, 34.739567>,  <25.117558, 35.949749, 35.171375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459534, 36.438381, 34.739567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637159, 36.097698, 34.628277>,  <25.743734, 35.893288, 34.561504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637159, 36.097698, 34.628277>,  <25.459534, 36.438381, 34.739567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637159, 36.097698, 34.628277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099323, 0.355396, -0.929424,
		0.890473, 0.385090, 0.242412,
		0.444064, -0.851704, -0.278222,
		25.770378, 35.842186, 34.544811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068817, 36.634212, 34.398369>,  <25.459534, 36.438381, 34.739567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068817, 36.634212, 34.398369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996157, 36.258007, 34.283516>,  <25.952560, 36.032284, 34.214603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996157, 36.258007, 34.283516>,  <26.068817, 36.634212, 34.398369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996157, 36.258007, 34.283516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159369, 0.259975, -0.952373,
		0.970363, -0.218759, 0.102663,
		-0.181651, -0.940509, -0.287133,
		25.941662, 35.975853, 34.197376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690149, 36.225327, 34.118019>,  <26.068817, 36.634212, 34.398369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690149, 36.225327, 34.118019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351128, 36.132271, 33.927219>,  <26.147715, 36.076435, 33.812740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351128, 36.132271, 33.927219>,  <26.690149, 36.225327, 34.118019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351128, 36.132271, 33.927219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290238, 0.549289, -0.783609,
		0.444312, -0.802595, -0.398031,
		-0.847555, -0.232643, -0.476999,
		26.096861, 36.062477, 33.784119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954885, 36.238480, 33.442257>,  <26.690149, 36.225327, 34.118019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954885, 36.238480, 33.442257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558878, 36.288380, 33.416012>,  <26.321274, 36.318317, 33.400265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558878, 36.288380, 33.416012>,  <26.954885, 36.238480, 33.442257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558878, 36.288380, 33.416012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132919, 0.671431, -0.729049,
		-0.046893, -0.730492, -0.681309,
		-0.990017, 0.124746, -0.065611,
		26.261873, 36.325802, 33.396328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837509, 36.327377, 32.736362>,  <26.954885, 36.238480, 33.442257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837509, 36.327377, 32.736362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504175, 36.460495, 32.912907>,  <26.304174, 36.540363, 33.018833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504175, 36.460495, 32.912907>,  <26.837509, 36.327377, 32.736362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504175, 36.460495, 32.912907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038004, 0.762081, -0.646366,
		-0.551460, -0.555413, -0.622422,
		-0.833335, 0.332790, 0.441365,
		26.254175, 36.560333, 33.045315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328962, 36.432907, 32.152050>,  <26.837509, 36.327377, 32.736362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328962, 36.432907, 32.152050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237608, 36.625683, 32.490417>,  <26.182795, 36.741348, 32.693436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237608, 36.625683, 32.490417>,  <26.328962, 36.432907, 32.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237608, 36.625683, 32.490417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044623, 0.873148, -0.485409,
		-0.972548, -0.073113, -0.220921,
		-0.228386, 0.481941, 0.845915,
		26.169092, 36.770264, 32.744190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947300, 36.935955, 31.869204>,  <26.328962, 36.432907, 32.152050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947300, 36.935955, 31.869204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064510, 37.047966, 32.234875>,  <26.134836, 37.115173, 32.454277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064510, 37.047966, 32.234875>,  <25.947300, 36.935955, 31.869204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064510, 37.047966, 32.234875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122102, 0.937359, -0.326265,
		-0.948275, 0.207228, 0.240480,
		0.293028, 0.280026, 0.914177,
		26.152418, 37.131973, 32.509129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589626, 37.558556, 32.061283>,  <25.947300, 36.935955, 31.869204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589626, 37.558556, 32.061283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931145, 37.544300, 32.269039>,  <26.136055, 37.535748, 32.393692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931145, 37.544300, 32.269039>,  <25.589626, 37.558556, 32.061283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931145, 37.544300, 32.269039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159458, 0.967609, -0.195722,
		-0.495586, 0.249927, 0.831824,
		0.853796, -0.035643, 0.519386,
		26.187283, 37.533607, 32.424854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.486879, 38.077610, 32.564568>,  <25.589626, 37.558556, 32.061283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.486879, 38.077610, 32.564568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858902, 38.000614, 32.439388>,  <26.082115, 37.954418, 32.364281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858902, 38.000614, 32.439388>,  <25.486879, 38.077610, 32.564568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858902, 38.000614, 32.439388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041865, 0.901747, -0.430232,
		0.365018, 0.387040, 0.846736,
		0.930059, -0.192491, -0.312950,
		26.137920, 37.942867, 32.345505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657194, 38.608795, 31.983898>,  <25.486879, 38.077610, 32.564568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657194, 38.608795, 31.983898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972761, 38.845871, 32.048798>,  <26.162102, 38.988117, 32.087738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972761, 38.845871, 32.048798>,  <25.657194, 38.608795, 31.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972761, 38.845871, 32.048798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499319, -0.772196, 0.392931,
		0.358174, -0.228976, -0.905141,
		0.788918, 0.592692, 0.162249,
		26.209436, 39.023678, 32.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200035, 38.378651, 31.697403>,  <25.657194, 38.608795, 31.983898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200035, 38.378651, 31.697403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314014, 38.587551, 32.018913>,  <26.382402, 38.712891, 32.211819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314014, 38.587551, 32.018913>,  <26.200035, 38.378651, 31.697403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314014, 38.587551, 32.018913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388586, -0.829482, 0.401199,
		0.876245, 0.198014, -0.439301,
		0.284949, 0.522254, 0.803775,
		26.399500, 38.744228, 32.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948547, 38.292648, 32.010582>,  <26.200035, 38.378651, 31.697403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948547, 38.292648, 32.010582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635448, 38.356636, 32.251152>,  <26.447588, 38.395031, 32.395493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635448, 38.356636, 32.251152>,  <26.948547, 38.292648, 32.010582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635448, 38.356636, 32.251152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078854, -0.933114, 0.350827,
		0.617321, 0.322034, 0.717780,
		-0.782749, 0.159973, 0.601425,
		26.400623, 38.404629, 32.431580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110065, 37.775784, 32.496052>,  <26.948547, 38.292648, 32.010582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110065, 37.775784, 32.496052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740175, 37.892094, 32.594303>,  <26.518240, 37.961880, 32.653252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740175, 37.892094, 32.594303>,  <27.110065, 37.775784, 32.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740175, 37.892094, 32.594303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114452, -0.827860, 0.549134,
		0.363016, 0.479686, 0.798824,
		-0.924727, 0.290772, 0.245625,
		26.462757, 37.979324, 32.667992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059788, 37.753448, 33.237488>,  <27.110065, 37.775784, 32.496052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059788, 37.753448, 33.237488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720985, 37.713860, 33.028572>,  <26.517704, 37.690105, 32.903225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720985, 37.713860, 33.028572>,  <27.059788, 37.753448, 33.237488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720985, 37.713860, 33.028572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227975, -0.819944, 0.525090,
		-0.480216, 0.563823, 0.671935,
		-0.847007, -0.098972, -0.522287,
		26.466883, 37.684170, 32.871887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617241, 37.592777, 33.639782>,  <27.059788, 37.753448, 33.237488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617241, 37.592777, 33.639782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446497, 37.468430, 33.300098>,  <26.344051, 37.393822, 33.096291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446497, 37.468430, 33.300098>,  <26.617241, 37.592777, 33.639782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446497, 37.468430, 33.300098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375927, -0.793072, 0.479287,
		-0.822478, 0.523827, 0.221665,
		-0.426860, -0.310873, -0.849204,
		26.318439, 37.375168, 33.045338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861893, 37.472076, 33.792225>,  <26.617241, 37.592777, 33.639782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861893, 37.472076, 33.792225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972290, 37.255272, 33.474720>,  <26.038528, 37.125191, 33.284218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972290, 37.255272, 33.474720>,  <25.861893, 37.472076, 33.792225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972290, 37.255272, 33.474720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373245, -0.821461, 0.431150,
		-0.885730, 0.177273, -0.429019,
		0.275991, -0.542011, -0.793759,
		26.055088, 37.092667, 33.236591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237141, 37.099873, 33.579288>,  <25.861893, 37.472076, 33.792225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237141, 37.099873, 33.579288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583691, 36.938316, 33.461803>,  <25.791620, 36.841381, 33.391312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583691, 36.938316, 33.461803>,  <25.237141, 37.099873, 33.579288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583691, 36.938316, 33.461803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275574, -0.877139, 0.393302,
		-0.416478, -0.259807, -0.871232,
		0.866374, -0.403891, -0.293713,
		25.843603, 36.817150, 33.373688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232615, 36.331264, 33.713661>,  <25.237141, 37.099873, 33.579288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232615, 36.331264, 33.713661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619911, 36.423977, 33.676163>,  <25.852289, 36.479607, 33.653664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619911, 36.423977, 33.676163>,  <25.232615, 36.331264, 33.713661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619911, 36.423977, 33.676163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238909, -0.747141, 0.620244,
		0.073720, -0.622942, -0.778787,
		0.968239, 0.231784, -0.093747,
		25.910383, 36.493511, 33.648037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037973, 36.450825, 33.060154>,  <25.232615, 36.331264, 33.713661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037973, 36.450825, 33.060154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411678, 36.409771, 33.196751>,  <25.635902, 36.385139, 33.278709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411678, 36.409771, 33.196751>,  <25.037973, 36.450825, 33.060154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411678, 36.409771, 33.196751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267292, -0.835453, 0.480180,
		0.236020, -0.539894, -0.807966,
		0.934264, -0.102631, 0.341493,
		25.691957, 36.378983, 33.299198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070543, 35.706425, 33.092926>,  <25.037973, 36.450825, 33.060154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070543, 35.706425, 33.092926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376846, 35.831627, 33.317654>,  <25.560629, 35.906750, 33.452492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376846, 35.831627, 33.317654>,  <25.070543, 35.706425, 33.092926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376846, 35.831627, 33.317654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153088, -0.759748, 0.631939,
		0.624644, -0.569920, -0.533864,
		0.765757, 0.313009, 0.561820,
		25.606573, 35.925529, 33.486198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099091, 35.191406, 33.598469>,  <25.070543, 35.706425, 33.092926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099091, 35.191406, 33.598469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407814, 35.431507, 33.682381>,  <25.593048, 35.575569, 33.732727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407814, 35.431507, 33.682381>,  <25.099091, 35.191406, 33.598469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407814, 35.431507, 33.682381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187592, -0.530190, 0.826866,
		0.607554, -0.598828, -0.521808,
		0.771808, 0.600253, 0.209784,
		25.639357, 35.611584, 33.745316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685261, 34.795528, 33.810791>,  <25.099091, 35.191406, 33.598469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685261, 34.795528, 33.810791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776100, 35.166409, 33.929943>,  <25.830603, 35.388935, 34.001434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776100, 35.166409, 33.929943>,  <25.685261, 34.795528, 33.810791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776100, 35.166409, 33.929943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306291, -0.358352, 0.881912,
		0.924452, -0.109041, -0.365373,
		0.227097, 0.927197, 0.297881,
		25.844229, 35.444569, 34.019306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370815, 34.761143, 34.170982>,  <25.685261, 34.795528, 33.810791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370815, 34.761143, 34.170982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194193, 35.098751, 34.292740>,  <26.088219, 35.301315, 34.365795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194193, 35.098751, 34.292740>,  <26.370815, 34.761143, 34.170982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194193, 35.098751, 34.292740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234235, -0.219052, 0.947180,
		0.866118, 0.489534, -0.100975,
		-0.441558, 0.844021, 0.304391,
		26.061726, 35.351959, 34.384056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817186, 35.177807, 34.453999>,  <26.370815, 34.761143, 34.170982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817186, 35.177807, 34.453999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466633, 35.301018, 34.602093>,  <26.256302, 35.374947, 34.690948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466633, 35.301018, 34.602093>,  <26.817186, 35.177807, 34.453999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466633, 35.301018, 34.602093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361166, -0.088221, 0.928319,
		0.318613, 0.947277, -0.033935,
		-0.876382, 0.308031, 0.370233,
		26.203718, 35.393429, 34.713161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939205, 35.593243, 35.196468>,  <26.817186, 35.177807, 34.453999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939205, 35.593243, 35.196468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566553, 35.455406, 35.150295>,  <26.342962, 35.372704, 35.122593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566553, 35.455406, 35.150295>,  <26.939205, 35.593243, 35.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566553, 35.455406, 35.150295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061172, -0.461802, 0.884871,
		-0.358226, 0.817310, 0.451308,
		-0.931629, -0.344592, -0.115433,
		26.287064, 35.352028, 35.115665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463099, 35.786938, 35.797646>,  <26.939205, 35.593243, 35.196468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463099, 35.786938, 35.797646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346710, 35.449417, 35.617271>,  <26.276876, 35.246906, 35.509048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346710, 35.449417, 35.617271>,  <26.463099, 35.786938, 35.797646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346710, 35.449417, 35.617271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070185, -0.451230, 0.889644,
		-0.954154, 0.290510, 0.072073,
		-0.290972, -0.843798, -0.450932,
		26.259418, 35.196278, 35.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764889, 35.706444, 36.146900>,  <26.463099, 35.786938, 35.797646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764889, 35.706444, 36.146900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956099, 35.375641, 36.028542>,  <26.070824, 35.177158, 35.957527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956099, 35.375641, 36.028542>,  <25.764889, 35.706444, 36.146900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956099, 35.375641, 36.028542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224308, -0.440645, 0.869205,
		-0.849223, -0.349129, -0.396143,
		0.478023, -0.827007, -0.295893,
		26.099506, 35.127541, 35.939774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411108, 35.189190, 36.343403>,  <25.764889, 35.706444, 36.146900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411108, 35.189190, 36.343403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786736, 35.054241, 36.317093>,  <26.012112, 34.973270, 36.301308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786736, 35.054241, 36.317093>,  <25.411108, 35.189190, 36.343403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786736, 35.054241, 36.317093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122341, -0.506892, 0.853284,
		-0.321217, -0.793246, -0.517282,
		0.939070, -0.337374, -0.065776,
		26.068457, 34.953030, 36.297359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483372, 34.496613, 36.280193>,  <25.411108, 35.189190, 36.343403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483372, 34.496613, 36.280193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737186, 34.725502, 36.488010>,  <25.889475, 34.862835, 36.612701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737186, 34.725502, 36.488010>,  <25.483372, 34.496613, 36.280193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737186, 34.725502, 36.488010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228448, -0.503314, 0.833358,
		0.738359, -0.647486, -0.188649,
		0.634537, 0.572221, 0.519544,
		25.927547, 34.897167, 36.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781961, 33.993992, 36.753651>,  <25.483372, 34.496613, 36.280193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781961, 33.993992, 36.753651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843609, 34.354568, 36.915462>,  <25.880596, 34.570915, 37.012550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843609, 34.354568, 36.915462>,  <25.781961, 33.993992, 36.753651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843609, 34.354568, 36.915462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058214, -0.400425, 0.914479,
		0.986336, -0.164485, -0.009235,
		0.154116, 0.901446, 0.404529,
		25.889843, 34.625004, 37.036819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221491, 33.836067, 37.246552>,  <25.781961, 33.993992, 36.753651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221491, 33.836067, 37.246552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072969, 34.190220, 37.358433>,  <25.983856, 34.402710, 37.425564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072969, 34.190220, 37.358433>,  <26.221491, 33.836067, 37.246552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072969, 34.190220, 37.358433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087995, -0.333439, 0.938656,
		0.924332, 0.323914, 0.201716,
		-0.371304, 0.885380, 0.279706,
		25.961578, 34.455833, 37.442345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621861, 34.095863, 37.830338>,  <26.221491, 33.836067, 37.246552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621861, 34.095863, 37.830338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244831, 34.229362, 37.835529>,  <26.018614, 34.309460, 37.838642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244831, 34.229362, 37.835529>,  <26.621861, 34.095863, 37.830338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244831, 34.229362, 37.835529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137892, -0.424241, 0.894989,
		0.304202, 0.841805, 0.445899,
		-0.942575, 0.333744, 0.012977,
		25.962059, 34.329487, 37.839424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673645, 34.704887, 38.270435>,  <26.621861, 34.095863, 37.830338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673645, 34.704887, 38.270435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472584, 35.026852, 38.144283>,  <26.351948, 35.220032, 38.068592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472584, 35.026852, 38.144283>,  <26.673645, 34.704887, 38.270435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472584, 35.026852, 38.144283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579948, -0.043425, 0.813496,
		0.641095, 0.591806, 0.488633,
		-0.502651, 0.804910, -0.315377,
		26.321789, 35.268326, 38.049671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630814, 35.281353, 38.779495>,  <26.673645, 34.704887, 38.270435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630814, 35.281353, 38.779495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311596, 35.292294, 38.538704>,  <26.120066, 35.298859, 38.394230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311596, 35.292294, 38.538704>,  <26.630814, 35.281353, 38.779495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311596, 35.292294, 38.538704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601081, -0.107036, 0.791988,
		-0.042775, 0.993879, 0.101857,
		-0.798043, 0.027347, -0.601980,
		26.072184, 35.300499, 38.358109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106779, 35.754551, 39.025745>,  <26.630814, 35.281353, 38.779495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106779, 35.754551, 39.025745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923006, 35.469913, 38.813122>,  <25.812742, 35.299129, 38.685547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923006, 35.469913, 38.813122>,  <26.106779, 35.754551, 39.025745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923006, 35.469913, 38.813122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691757, -0.088721, 0.716660,
		-0.557131, 0.696968, -0.451487,
		-0.459433, -0.711592, -0.531562,
		25.785175, 35.256435, 38.653652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394011, 35.956627, 39.043427>,  <26.106779, 35.754551, 39.025745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394011, 35.956627, 39.043427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382015, 35.575630, 38.922192>,  <25.374817, 35.347031, 38.849453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382015, 35.575630, 38.922192>,  <25.394011, 35.956627, 39.043427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382015, 35.575630, 38.922192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932442, -0.082572, 0.351758,
		-0.360073, 0.293158, -0.885667,
		-0.029989, -0.952491, -0.303085,
		25.373018, 35.289883, 38.831264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444183, 35.402256, 39.539246>,  <25.394011, 35.956627, 39.043427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444183, 35.402256, 39.539246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319798, 35.653061, 39.824947>,  <25.245167, 35.803543, 39.996368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319798, 35.653061, 39.824947>,  <25.444183, 35.402256, 39.539246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319798, 35.653061, 39.824947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624336, -0.431858, 0.650925,
		0.716594, 0.648347, -0.257174,
		-0.310963, 0.627012, 0.714253,
		25.226509, 35.841164, 40.039223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.705391, 35.147694, 39.834534>,  <25.444183, 35.402256, 39.539246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.705391, 35.147694, 39.834534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495707, 34.877396, 39.627235>,  <24.369896, 34.715218, 39.502857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495707, 34.877396, 39.627235>,  <24.705391, 35.147694, 39.834534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495707, 34.877396, 39.627235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788690, -0.155703, -0.594748,
		0.321204, -0.720506, 0.614573,
		-0.524210, -0.675743, -0.518243,
		24.338444, 34.674671, 39.471764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089865, 34.500603, 39.802311>,  <24.705391, 35.147694, 39.834534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089865, 34.500603, 39.802311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861025, 34.644718, 39.507584>,  <24.723721, 34.731186, 39.330750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861025, 34.644718, 39.507584>,  <25.089865, 34.500603, 39.802311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861025, 34.644718, 39.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804561, 0.072010, -0.589489,
		-0.159327, -0.930058, -0.331070,
		-0.572099, 0.360287, -0.736815,
		24.689396, 34.752804, 39.286541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527540, 34.405502, 39.337273>,  <25.089865, 34.500603, 39.802311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527540, 34.405502, 39.337273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236120, 34.607883, 39.152565>,  <25.061268, 34.729313, 39.041740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236120, 34.607883, 39.152565>,  <25.527540, 34.405502, 39.337273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236120, 34.607883, 39.152565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633234, 0.240385, -0.735683,
		-0.261214, -0.828391, -0.495515,
		-0.728548, 0.505948, -0.461773,
		25.017555, 34.759666, 39.014034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405697, 34.035061, 38.671574>,  <25.527540, 34.405502, 39.337273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405697, 34.035061, 38.671574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353193, 34.431381, 38.684731>,  <25.321692, 34.669174, 38.692623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353193, 34.431381, 38.684731>,  <25.405697, 34.035061, 38.671574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353193, 34.431381, 38.684731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597457, 0.105538, -0.794926,
		-0.791086, -0.084692, -0.605814,
		-0.131260, 0.990802, 0.032890,
		25.313816, 34.728622, 38.694599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194485, 34.313862, 37.944096>,  <25.405697, 34.035061, 38.671574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194485, 34.313862, 37.944096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391315, 34.585274, 38.162254>,  <25.509415, 34.748119, 38.293148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391315, 34.585274, 38.162254>,  <25.194485, 34.313862, 37.944096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391315, 34.585274, 38.162254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481331, 0.309964, -0.819904,
		-0.725382, 0.665973, -0.174071,
		0.492079, 0.678529, 0.545396,
		25.538939, 34.788834, 38.325874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062977, 35.115643, 37.812778>,  <25.194485, 34.313862, 37.944096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062977, 35.115643, 37.812778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422771, 34.973282, 37.914177>,  <25.638647, 34.887867, 37.975018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422771, 34.973282, 37.914177>,  <25.062977, 35.115643, 37.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422771, 34.973282, 37.914177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363701, 0.288289, -0.885782,
		0.242173, 0.888945, 0.388754,
		0.899485, -0.355903, 0.253495,
		25.692617, 34.866512, 37.990227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662851, 35.621758, 37.918327>,  <25.062977, 35.115643, 37.812778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662851, 35.621758, 37.918327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772562, 35.268646, 37.765759>,  <25.838388, 35.056782, 37.674217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772562, 35.268646, 37.765759>,  <25.662851, 35.621758, 37.918327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772562, 35.268646, 37.765759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532739, 0.469687, -0.703977,
		0.800601, -0.010113, 0.599113,
		0.274276, -0.882775, -0.381419,
		25.854845, 35.003815, 37.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161940, 35.855106, 37.523834>,  <25.662851, 35.621758, 37.918327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161940, 35.855106, 37.523834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108246, 35.482925, 37.387455>,  <26.076029, 35.259617, 37.305626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108246, 35.482925, 37.387455>,  <26.161940, 35.855106, 37.523834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108246, 35.482925, 37.387455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546258, 0.217585, -0.808863,
		0.826791, -0.294823, 0.479057,
		-0.134236, -0.930449, -0.340947,
		26.067976, 35.203789, 37.285172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827961, 35.632271, 37.260563>,  <26.161940, 35.855106, 37.523834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827961, 35.632271, 37.260563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556097, 35.400002, 37.081284>,  <26.392979, 35.260639, 36.973717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556097, 35.400002, 37.081284>,  <26.827961, 35.632271, 37.260563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556097, 35.400002, 37.081284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501556, 0.077977, -0.861604,
		0.535263, -0.810391, 0.238244,
		-0.679659, -0.580677, -0.448195,
		26.352200, 35.225800, 36.946827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105457, 36.236000, 37.156292>,  <26.827961, 35.632271, 37.260563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105457, 36.236000, 37.156292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175409, 35.953701, 37.430908>,  <27.217381, 35.784321, 37.595676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175409, 35.953701, 37.430908>,  <27.105457, 36.236000, 37.156292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175409, 35.953701, 37.430908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935161, -0.099094, -0.340081,
		0.308044, 0.701495, 0.642661,
		0.174882, -0.705751, 0.686536,
		27.227873, 35.741974, 37.636868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705576, 36.424698, 37.536251>,  <27.105457, 36.236000, 37.156292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705576, 36.424698, 37.536251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649199, 36.031578, 37.583984>,  <27.615372, 35.795708, 37.612625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649199, 36.031578, 37.583984>,  <27.705576, 36.424698, 37.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649199, 36.031578, 37.583984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935469, -0.171664, -0.308915,
		0.324086, 0.068091, 0.943574,
		-0.140943, -0.982800, 0.119331,
		27.606916, 35.736736, 37.619785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093546, 36.018566, 38.016716>,  <27.705576, 36.424698, 37.536251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093546, 36.018566, 38.016716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025566, 35.858990, 37.656281>,  <27.984777, 35.763245, 37.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025566, 35.858990, 37.656281>,  <28.093546, 36.018566, 38.016716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025566, 35.858990, 37.656281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978399, 0.040899, -0.202640,
		0.117695, -0.916066, 0.383369,
		-0.169952, -0.398938, -0.901091,
		27.974581, 35.739307, 37.385952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618357, 35.428917, 37.740921>,  <28.093546, 36.018566, 38.016716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618357, 35.428917, 37.740921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447130, 35.596058, 37.420380>,  <28.344395, 35.696342, 37.228054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447130, 35.596058, 37.420380>,  <28.618357, 35.428917, 37.740921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447130, 35.596058, 37.420380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822141, -0.188165, -0.537288,
		-0.375291, -0.888817, -0.262983,
		-0.428066, 0.417848, -0.801350,
		28.318710, 35.721413, 37.179974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674809, 34.882145, 37.195400>,  <28.618357, 35.428917, 37.740921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674809, 34.882145, 37.195400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655987, 35.250790, 37.041302>,  <28.644693, 35.471977, 36.948841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655987, 35.250790, 37.041302>,  <28.674809, 34.882145, 37.195400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655987, 35.250790, 37.041302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721577, -0.235333, -0.651110,
		-0.690733, -0.308625, -0.653941,
		-0.047055, 0.921612, -0.385249,
		28.641870, 35.527275, 36.925728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502083, 34.892132, 36.514774>,  <28.674809, 34.882145, 37.195400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502083, 34.892132, 36.514774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765558, 35.172897, 36.623177>,  <28.923643, 35.341358, 36.688217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765558, 35.172897, 36.623177>,  <28.502083, 34.892132, 36.514774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765558, 35.172897, 36.623177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678804, -0.398982, -0.616473,
		-0.324582, 0.590027, -0.739266,
		0.658690, 0.701913, 0.271010,
		28.963165, 35.383472, 36.704479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004612, 34.849686, 36.035419>,  <28.502083, 34.892132, 36.514774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004612, 34.849686, 36.035419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189266, 35.107342, 36.279377>,  <29.300058, 35.261936, 36.425751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189266, 35.107342, 36.279377>,  <29.004612, 34.849686, 36.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189266, 35.107342, 36.279377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862103, -0.163813, -0.479525,
		-0.208972, 0.747161, -0.630937,
		0.461637, 0.644140, 0.609897,
		29.327757, 35.300583, 36.462345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310772, 35.447037, 35.754681>,  <29.004612, 34.849686, 36.035419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310772, 35.447037, 35.754681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508028, 35.273949, 36.056557>,  <29.626381, 35.170094, 36.237682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508028, 35.273949, 36.056557>,  <29.310772, 35.447037, 35.754681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508028, 35.273949, 36.056557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696141, -0.323982, -0.640643,
		0.521729, 0.841300, 0.141469,
		0.493140, -0.432724, 0.754694,
		29.655970, 35.144131, 36.282967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046984, 35.606712, 35.851559>,  <29.310772, 35.447037, 35.754681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046984, 35.606712, 35.851559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016441, 35.232029, 35.988235>,  <29.998116, 35.007221, 36.070240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016441, 35.232029, 35.988235>,  <30.046984, 35.606712, 35.851559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016441, 35.232029, 35.988235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730283, -0.285861, -0.620460,
		0.678864, 0.202156, 0.705887,
		-0.076356, -0.936705, 0.341692,
		29.993534, 34.951019, 36.090744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797848, 35.349606, 35.956730>,  <30.046984, 35.606712, 35.851559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797848, 35.349606, 35.956730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537014, 35.049721, 35.911636>,  <30.380512, 34.869789, 35.884579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537014, 35.049721, 35.911636>,  <30.797848, 35.349606, 35.956730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537014, 35.049721, 35.911636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639981, -0.464615, -0.612011,
		0.406457, -0.471231, 0.782773,
		-0.652087, -0.749716, -0.112733,
		30.341389, 34.824806, 35.877815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216843, 35.166218, 35.369446>,  <30.797848, 35.349606, 35.956730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216843, 35.166218, 35.369446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582291, 35.272865, 35.246670>,  <31.801559, 35.336853, 35.173004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582291, 35.272865, 35.246670>,  <31.216843, 35.166218, 35.369446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582291, 35.272865, 35.246670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286814, -0.957739, 0.021781,
		-0.288160, -0.107934, -0.951480,
		0.913620, 0.266621, -0.306939,
		31.856377, 35.352852, 35.154587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447561, 34.667492, 34.987823>,  <31.216843, 35.166218, 35.369446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447561, 34.667492, 34.987823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788635, 34.845329, 35.097561>,  <31.993279, 34.952034, 35.163403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788635, 34.845329, 35.097561>,  <31.447561, 34.667492, 34.987823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788635, 34.845329, 35.097561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450299, -0.891716, 0.045531,
		0.264884, 0.084715, -0.960552,
		0.852683, 0.444596, 0.274348,
		32.044441, 34.978706, 35.179867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914129, 34.296249, 34.659565>,  <31.447561, 34.667492, 34.987823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914129, 34.296249, 34.659565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082371, 34.478954, 34.973114>,  <32.183315, 34.588577, 35.161243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082371, 34.478954, 34.973114>,  <31.914129, 34.296249, 34.659565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082371, 34.478954, 34.973114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477939, -0.845959, 0.236492,
		0.771148, 0.275175, -0.574117,
		0.420602, 0.456763, 0.783876,
		32.208553, 34.615982, 35.208279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717323, 34.408607, 34.690567>,  <31.914129, 34.296249, 34.659565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717323, 34.408607, 34.690567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513523, 34.328213, 35.025234>,  <32.391243, 34.279976, 35.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513523, 34.328213, 35.025234>,  <32.717323, 34.408607, 34.690567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513523, 34.328213, 35.025234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459757, -0.885494, 0.067259,
		0.727349, 0.418933, 0.543561,
		-0.509497, -0.200985, 0.836671,
		32.360676, 34.267918, 35.276234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173515, 34.082104, 35.018959>,  <32.717323, 34.408607, 34.690567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173515, 34.082104, 35.018959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814701, 33.992870, 35.171566>,  <32.599411, 33.939331, 35.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814701, 33.992870, 35.171566>,  <33.173515, 34.082104, 35.018959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814701, 33.992870, 35.171566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305318, -0.936951, 0.170010,
		0.319538, 0.268990, 0.908592,
		-0.897038, -0.223084, 0.381519,
		32.545589, 33.925945, 35.286022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185734, 33.806866, 35.713165>,  <33.173515, 34.082104, 35.018959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185734, 33.806866, 35.713165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883484, 33.673046, 35.487919>,  <32.702133, 33.592754, 35.352772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883484, 33.673046, 35.487919>,  <33.185734, 33.806866, 35.713165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883484, 33.673046, 35.487919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374852, -0.925889, 0.047072,
		-0.537134, -0.175518, 0.825034,
		-0.755628, -0.334550, -0.563120,
		32.656796, 33.572681, 35.318981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336315, 33.059204, 35.868179>,  <33.185734, 33.806866, 35.713165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336315, 33.059204, 35.868179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116352, 33.110844, 35.538105>,  <32.984375, 33.141827, 35.340061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116352, 33.110844, 35.538105>,  <33.336315, 33.059204, 35.868179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116352, 33.110844, 35.538105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509685, -0.730828, -0.453996,
		-0.661678, -0.670242, 0.336091,
		-0.549912, 0.129099, -0.825185,
		32.951378, 33.149574, 35.290550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981861, 32.316723, 35.797726>,  <33.336315, 33.059204, 35.868179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981861, 32.316723, 35.797726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990078, 32.526878, 35.457478>,  <32.995007, 32.652969, 35.253330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990078, 32.526878, 35.457478>,  <32.981861, 32.316723, 35.797726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990078, 32.526878, 35.457478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542263, -0.720638, -0.432009,
		-0.839958, -0.452384, -0.299699,
		0.020540, 0.525385, -0.850617,
		32.996239, 32.684494, 35.202293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107674, 31.794167, 35.442184>,  <32.981861, 32.316723, 35.797726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107674, 31.794167, 35.442184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132328, 32.105183, 35.191860>,  <33.147121, 32.291794, 35.041668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132328, 32.105183, 35.191860>,  <33.107674, 31.794167, 35.442184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132328, 32.105183, 35.191860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551200, -0.549231, -0.628111,
		-0.832094, -0.306231, -0.462431,
		0.061635, 0.777540, -0.625806,
		33.150818, 32.338444, 35.004120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033863, 31.491699, 34.742054>,  <33.107674, 31.794167, 35.442184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033863, 31.491699, 34.742054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206467, 31.851566, 34.715523>,  <33.310028, 32.067486, 34.699604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206467, 31.851566, 34.715523>,  <33.033863, 31.491699, 34.742054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206467, 31.851566, 34.715523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624524, -0.350976, -0.697700,
		-0.650978, 0.259639, -0.713313,
		0.431506, 0.899668, -0.066327,
		33.335918, 32.121468, 34.695625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022102, 31.635736, 34.040485>,  <33.033863, 31.491699, 34.742054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022102, 31.635736, 34.040485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316441, 31.863754, 34.186680>,  <33.493046, 32.000565, 34.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316441, 31.863754, 34.186680>,  <33.022102, 31.635736, 34.040485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316441, 31.863754, 34.186680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608094, -0.318834, -0.727026,
		-0.297909, 0.757228, -0.581253,
		0.735848, 0.570044, 0.365483,
		33.537193, 32.034767, 34.296326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295021, 31.808054, 33.531757>,  <33.022102, 31.635736, 34.040485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295021, 31.808054, 33.531757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580383, 31.868000, 33.805573>,  <33.751602, 31.903969, 33.969860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580383, 31.868000, 33.805573>,  <33.295021, 31.808054, 33.531757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580383, 31.868000, 33.805573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666903, -0.445129, -0.597579,
		0.215149, 0.882836, -0.417505,
		0.713408, 0.149867, 0.684536,
		33.794407, 31.912960, 34.010933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853046, 31.890764, 33.040245>,  <33.295021, 31.808054, 33.531757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853046, 31.890764, 33.040245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028709, 31.829451, 33.394341>,  <34.134106, 31.792662, 33.606796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028709, 31.829451, 33.394341>,  <33.853046, 31.890764, 33.040245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028709, 31.829451, 33.394341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772139, -0.439327, -0.459122,
		0.459285, 0.885153, -0.074577,
		0.439157, -0.153284, 0.885237,
		34.160458, 31.783466, 33.659912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459480, 32.135994, 32.940239>,  <33.853046, 31.890764, 33.040245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459480, 32.135994, 32.940239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506233, 31.888197, 33.250740>,  <34.534286, 31.739519, 33.437042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506233, 31.888197, 33.250740>,  <34.459480, 32.135994, 32.940239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506233, 31.888197, 33.250740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787539, -0.418385, -0.452477,
		0.605078, 0.664219, 0.438969,
		0.116886, -0.619490, 0.776254,
		34.541298, 31.702351, 33.483616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120544, 32.302830, 33.214577>,  <34.459480, 32.135994, 32.940239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120544, 32.302830, 33.214577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037708, 31.934410, 33.346508>,  <34.988007, 31.713360, 33.425667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037708, 31.934410, 33.346508>,  <35.120544, 32.302830, 33.214577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037708, 31.934410, 33.346508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874409, -0.325466, -0.359835,
		0.438773, 0.213888, 0.872772,
		-0.207093, -0.921045, 0.329831,
		34.975582, 31.658096, 33.445457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706722, 31.975754, 33.536964>,  <35.120544, 32.302830, 33.214577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706722, 31.975754, 33.536964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499271, 31.642422, 33.460453>,  <35.374802, 31.442423, 33.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499271, 31.642422, 33.460453>,  <35.706722, 31.975754, 33.536964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499271, 31.642422, 33.460453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817402, -0.417647, -0.396767,
		0.250751, -0.362126, 0.897769,
		-0.518630, -0.833328, -0.191277,
		35.343681, 31.392424, 33.403069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200375, 31.498030, 33.603523>,  <35.706722, 31.975754, 33.536964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200375, 31.498030, 33.603523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914829, 31.305250, 33.400303>,  <35.743500, 31.189583, 33.278370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914829, 31.305250, 33.400303>,  <36.200375, 31.498030, 33.603523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914829, 31.305250, 33.400303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680939, -0.308396, -0.664239,
		0.163449, -0.820131, 0.548333,
		-0.713867, -0.481951, -0.508052,
		35.700668, 31.160666, 33.247887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532768, 30.899807, 33.428745>,  <36.200375, 31.498030, 33.603523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532768, 30.899807, 33.428745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238953, 30.943535, 33.160866>,  <36.062664, 30.969772, 33.000137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238953, 30.943535, 33.160866>,  <36.532768, 30.899807, 33.428745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238953, 30.943535, 33.160866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586197, -0.394897, -0.707410,
		-0.341798, -0.912198, 0.225985,
		-0.734539, 0.109320, -0.669703,
		36.018593, 30.976332, 32.959953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539230, 30.307768, 33.114658>,  <36.532768, 30.899807, 33.428745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539230, 30.307768, 33.114658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363361, 30.541870, 32.842140>,  <36.257839, 30.682331, 32.678631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363361, 30.541870, 32.842140>,  <36.539230, 30.307768, 33.114658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363361, 30.541870, 32.842140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591829, -0.381792, -0.709910,
		-0.675592, -0.715339, -0.178508,
		-0.439674, 0.585256, -0.681294,
		36.231461, 30.717447, 32.637753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532146, 29.949020, 32.579357>,  <36.539230, 30.307768, 33.114658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532146, 29.949020, 32.579357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449997, 30.301477, 32.408989>,  <36.400707, 30.512953, 32.306770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449997, 30.301477, 32.408989>,  <36.532146, 29.949020, 32.579357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449997, 30.301477, 32.408989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618389, -0.220481, -0.754309,
		-0.758563, -0.418296, -0.499610,
		-0.205370, 0.881145, -0.425918,
		36.388386, 30.565821, 32.281212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282070, 29.790646, 31.963583>,  <36.532146, 29.949020, 32.579357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282070, 29.790646, 31.963583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456619, 30.150446, 31.972265>,  <36.561348, 30.366327, 31.977474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456619, 30.150446, 31.972265>,  <36.282070, 29.790646, 31.963583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456619, 30.150446, 31.972265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490746, -0.217720, -0.843662,
		-0.754151, 0.378805, -0.536435,
		0.436376, 0.899503, 0.021704,
		36.587532, 30.420298, 31.978777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290287, 30.039204, 31.234753>,  <36.282070, 29.790646, 31.963583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290287, 30.039204, 31.234753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547859, 30.292456, 31.406569>,  <36.702400, 30.444407, 31.509657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547859, 30.292456, 31.406569>,  <36.290287, 30.039204, 31.234753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547859, 30.292456, 31.406569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511244, 0.061610, -0.857224,
		-0.569198, 0.771590, -0.284011,
		0.643928, 0.633130, 0.429539,
		36.741039, 30.482395, 31.535431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396843, 30.450884, 30.627331>,  <36.290287, 30.039204, 31.234753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396843, 30.450884, 30.627331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692196, 30.484047, 30.895037>,  <36.869408, 30.503944, 31.055660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692196, 30.484047, 30.895037>,  <36.396843, 30.450884, 30.627331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692196, 30.484047, 30.895037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672855, -0.157290, -0.722859,
		0.045339, 0.984066, -0.171924,
		0.738384, 0.082906, 0.669265,
		36.913712, 30.508919, 31.095816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809395, 30.924246, 30.376013>,  <36.396843, 30.450884, 30.627331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809395, 30.924246, 30.376013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058739, 30.748865, 30.634991>,  <37.208344, 30.643637, 30.790379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058739, 30.748865, 30.634991>,  <36.809395, 30.924246, 30.376013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058739, 30.748865, 30.634991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695904, -0.066505, -0.715049,
		0.356572, 0.896292, 0.263662,
		0.623358, -0.438450, 0.647447,
		37.245747, 30.617331, 30.829226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514927, 31.337597, 30.380062>,  <36.809395, 30.924246, 30.376013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514927, 31.337597, 30.380062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595997, 30.972397, 30.521681>,  <37.644638, 30.753277, 30.606653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595997, 30.972397, 30.521681>,  <37.514927, 31.337597, 30.380062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595997, 30.972397, 30.521681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818985, -0.040165, -0.572408,
		0.536830, 0.405974, 0.739594,
		0.202677, -0.913001, 0.354049,
		37.656799, 30.698496, 30.627895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275829, 31.335222, 30.487724>,  <37.514927, 31.337597, 30.380062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275829, 31.335222, 30.487724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175690, 30.947960, 30.486916>,  <38.115608, 30.715603, 30.486429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175690, 30.947960, 30.486916>,  <38.275829, 31.335222, 30.487724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175690, 30.947960, 30.486916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755992, -0.194179, -0.625116,
		0.604816, -0.158025, 0.780529,
		-0.250346, -0.968154, -0.002023,
		38.100586, 30.657513, 30.486309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867596, 31.117073, 30.333437>,  <38.275829, 31.335222, 30.487724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867596, 31.117073, 30.333437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618145, 30.818348, 30.241035>,  <38.468475, 30.639112, 30.185595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618145, 30.818348, 30.241035>,  <38.867596, 31.117073, 30.333437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618145, 30.818348, 30.241035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545182, -0.203719, -0.813188,
		0.560240, -0.633064, 0.534193,
		-0.623625, -0.746813, -0.231003,
		38.431057, 30.594305, 30.171734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342632, 30.558821, 30.002447>,  <38.867596, 31.117073, 30.333437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342632, 30.558821, 30.002447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970638, 30.460524, 29.893091>,  <38.747440, 30.401545, 29.827478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970638, 30.460524, 29.893091>,  <39.342632, 30.558821, 30.002447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970638, 30.460524, 29.893091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362097, -0.484176, -0.796530,
		0.063374, -0.839752, 0.539259,
		-0.929984, -0.245743, -0.273388,
		38.691643, 30.386801, 29.811075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340626, 29.868933, 29.763798>,  <39.342632, 30.558821, 30.002447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340626, 29.868933, 29.763798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031498, 30.037703, 29.574177>,  <38.846020, 30.138966, 29.460403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031498, 30.037703, 29.574177>,  <39.340626, 29.868933, 29.763798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031498, 30.037703, 29.574177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286436, -0.434665, -0.853827,
		-0.566307, -0.795641, 0.215063,
		-0.772820, 0.421927, -0.474054,
		38.799652, 30.164280, 29.431961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130527, 29.356653, 29.330896>,  <39.340626, 29.868933, 29.763798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130527, 29.356653, 29.330896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952744, 29.677778, 29.171928>,  <38.846073, 29.870453, 29.076548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952744, 29.677778, 29.171928>,  <39.130527, 29.356653, 29.330896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952744, 29.677778, 29.171928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107689, -0.392549, -0.913405,
		-0.889301, -0.448771, 0.088019,
		-0.444462, 0.802814, -0.397422,
		38.819405, 29.918623, 29.052702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565159, 29.060404, 28.951908>,  <39.130527, 29.356653, 29.330896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565159, 29.060404, 28.951908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648129, 29.409929, 28.775988>,  <38.697910, 29.619644, 28.670435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648129, 29.409929, 28.775988>,  <38.565159, 29.060404, 28.951908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648129, 29.409929, 28.775988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136225, -0.470998, -0.871552,
		-0.968720, 0.120868, -0.216731,
		0.207422, 0.873815, -0.439800,
		38.710354, 29.672073, 28.644047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418934, 28.939486, 28.337109>,  <38.565159, 29.060404, 28.951908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418934, 28.939486, 28.337109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550320, 29.309488, 28.260723>,  <38.629150, 29.531490, 28.214891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550320, 29.309488, 28.260723>,  <38.418934, 28.939486, 28.337109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550320, 29.309488, 28.260723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267632, -0.285048, -0.920392,
		-0.905805, 0.251209, -0.341191,
		0.328466, 0.925009, -0.190966,
		38.648861, 29.586990, 28.203434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185104, 29.100332, 27.629452>,  <38.418934, 28.939486, 28.337109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185104, 29.100332, 27.629452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511353, 29.318291, 27.707279>,  <38.707100, 29.449066, 27.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511353, 29.318291, 27.707279>,  <38.185104, 29.100332, 27.629452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511353, 29.318291, 27.707279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342747, -0.184094, -0.921213,
		-0.466148, 0.818044, -0.336912,
		0.815617, 0.544897, 0.194567,
		38.756039, 29.481760, 27.765650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307217, 29.650942, 27.048695>,  <38.185104, 29.100332, 27.629452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307217, 29.650942, 27.048695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655083, 29.574997, 27.230963>,  <38.863804, 29.529430, 27.340322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655083, 29.574997, 27.230963>,  <38.307217, 29.650942, 27.048695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655083, 29.574997, 27.230963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435606, -0.139088, -0.889327,
		0.232227, 0.971909, -0.038254,
		0.869665, -0.189862, 0.455669,
		38.915981, 29.518038, 27.367664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743767, 30.043030, 26.697826>,  <38.307217, 29.650942, 27.048695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743767, 30.043030, 26.697826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983727, 29.779499, 26.879406>,  <39.127701, 29.621382, 26.988354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983727, 29.779499, 26.879406>,  <38.743767, 30.043030, 26.697826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983727, 29.779499, 26.879406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492419, -0.143158, -0.858504,
		0.630591, 0.738549, 0.238538,
		0.599899, -0.658826, 0.453950,
		39.163696, 29.581852, 27.015591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334808, 30.232613, 26.384264>,  <38.743767, 30.043030, 26.697826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334808, 30.232613, 26.384264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424099, 29.881214, 26.553221>,  <39.477673, 29.670376, 26.654594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424099, 29.881214, 26.553221>,  <39.334808, 30.232613, 26.384264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424099, 29.881214, 26.553221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683477, -0.167896, -0.710401,
		0.695002, 0.447278, 0.562952,
		0.223229, -0.878495, 0.422392,
		39.491066, 29.617666, 26.679939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957817, 30.145834, 26.429903>,  <39.334808, 30.232613, 26.384264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957817, 30.145834, 26.429903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819828, 29.770472, 26.422022>,  <39.737034, 29.545254, 26.417294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819828, 29.770472, 26.422022>,  <39.957817, 30.145834, 26.429903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819828, 29.770472, 26.422022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762941, -0.268120, -0.588246,
		0.546730, -0.217963, 0.808442,
		-0.344975, -0.938405, -0.019703,
		39.716335, 29.488951, 26.416111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511951, 29.774723, 26.475151>,  <39.957817, 30.145834, 26.429903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511951, 29.774723, 26.475151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231396, 29.534843, 26.321054>,  <40.063061, 29.390915, 26.228596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231396, 29.534843, 26.321054>,  <40.511951, 29.774723, 26.475151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231396, 29.534843, 26.321054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662031, -0.347813, -0.663883,
		0.264139, -0.720683, 0.640973,
		-0.701388, -0.599701, -0.385243,
		40.020981, 29.354933, 26.205481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868721, 29.197958, 26.350428>,  <40.511951, 29.774723, 26.475151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868721, 29.197958, 26.350428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521873, 29.134117, 26.161694>,  <40.313766, 29.095812, 26.048452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521873, 29.134117, 26.161694>,  <40.868721, 29.197958, 26.350428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521873, 29.134117, 26.161694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480074, -0.520324, -0.706252,
		-0.132788, -0.838922, 0.527804,
		-0.867120, -0.159603, -0.471837,
		40.261738, 29.086237, 26.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916126, 28.546358, 25.996603>,  <40.868721, 29.197958, 26.350428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916126, 28.546358, 25.996603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634792, 28.748951, 25.797087>,  <40.465992, 28.870506, 25.677378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634792, 28.748951, 25.797087>,  <40.916126, 28.546358, 25.996603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634792, 28.748951, 25.797087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382836, -0.321339, -0.866128,
		-0.598960, -0.800134, 0.032109,
		-0.703337, 0.506484, -0.498789,
		40.423790, 28.900896, 25.647449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732071, 28.138903, 25.429703>,  <40.916126, 28.546358, 25.996603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732071, 28.138903, 25.429703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619640, 28.504749, 25.313446>,  <40.552181, 28.724258, 25.243692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619640, 28.504749, 25.313446>,  <40.732071, 28.138903, 25.429703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619640, 28.504749, 25.313446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394877, -0.165805, -0.903649,
		-0.874683, -0.368758, -0.314559,
		-0.281073, 0.914618, -0.290641,
		40.535320, 28.779135, 25.226254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529224, 28.087925, 24.734655>,  <40.732071, 28.138903, 25.429703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529224, 28.087925, 24.734655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615288, 28.478491, 24.741821>,  <40.666924, 28.712830, 24.746120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615288, 28.478491, 24.741821>,  <40.529224, 28.087925, 24.734655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615288, 28.478491, 24.741821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414200, -0.074626, -0.907122,
		-0.884390, 0.202593, -0.420487,
		0.215156, 0.976415, 0.017915,
		40.679836, 28.771416, 24.747196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341064, 28.395630, 24.133732>,  <40.529224, 28.087925, 24.734655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341064, 28.395630, 24.133732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610561, 28.665638, 24.254007>,  <40.772259, 28.827642, 24.326174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610561, 28.665638, 24.254007>,  <40.341064, 28.395630, 24.133732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610561, 28.665638, 24.254007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360817, 0.054600, -0.931037,
		-0.644888, 0.735775, -0.206773,
		0.673743, 0.675022, 0.300691,
		40.812683, 28.868145, 24.344215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287380, 28.951071, 23.740334>,  <40.341064, 28.395630, 24.133732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287380, 28.951071, 23.740334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657688, 28.953537, 23.891552>,  <40.879871, 28.955017, 23.982283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657688, 28.953537, 23.891552>,  <40.287380, 28.951071, 23.740334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657688, 28.953537, 23.891552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369738, 0.194290, -0.908595,
		-0.079053, 0.980925, 0.177588,
		0.925767, 0.006166, 0.378045,
		40.935417, 28.955387, 24.004965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529816, 29.517929, 23.327200>,  <40.287380, 28.951071, 23.740334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529816, 29.517929, 23.327200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843399, 29.325556, 23.484226>,  <41.031548, 29.210131, 23.578442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843399, 29.325556, 23.484226>,  <40.529816, 29.517929, 23.327200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843399, 29.325556, 23.484226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570948, 0.310235, -0.760114,
		0.243777, 0.820034, 0.517801,
		0.783959, -0.480935, 0.392568,
		41.078587, 29.181274, 23.601997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955120, 30.000446, 23.178762>,  <40.529816, 29.517929, 23.327200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955120, 30.000446, 23.178762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144733, 29.654861, 23.246723>,  <41.258499, 29.447510, 23.287498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144733, 29.654861, 23.246723>,  <40.955120, 30.000446, 23.178762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144733, 29.654861, 23.246723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593471, 0.170955, -0.786491,
		0.650452, 0.473651, 0.593773,
		0.474030, -0.863962, 0.169900,
		41.286942, 29.395674, 23.297693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683796, 30.049698, 23.055695>,  <40.955120, 30.000446, 23.178762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683796, 30.049698, 23.055695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654644, 29.651260, 23.075644>,  <41.637154, 29.412197, 23.087614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654644, 29.651260, 23.075644>,  <41.683796, 30.049698, 23.055695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654644, 29.651260, 23.075644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431920, -0.076596, -0.898654,
		0.898963, -0.043950, 0.435815,
		-0.072878, -0.996093, 0.049874,
		41.632782, 29.352432, 23.090607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346146, 29.849363, 22.879343>,  <41.683796, 30.049698, 23.055695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346146, 29.849363, 22.879343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124458, 29.522667, 22.815123>,  <41.991447, 29.326649, 22.776590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124458, 29.522667, 22.815123>,  <42.346146, 29.849363, 22.879343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124458, 29.522667, 22.815123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615685, -0.272442, -0.739396,
		0.560156, -0.508634, 0.653848,
		-0.554218, -0.816742, -0.160549,
		41.958195, 29.277645, 22.766958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849384, 29.289309, 22.739544>,  <42.346146, 29.849363, 22.879343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849384, 29.289309, 22.739544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499187, 29.175600, 22.583233>,  <42.289070, 29.107376, 22.489447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499187, 29.175600, 22.583233>,  <42.849384, 29.289309, 22.739544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499187, 29.175600, 22.583233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457075, -0.224687, -0.860580,
		0.156835, -0.932044, 0.326644,
		-0.875491, -0.284270, -0.390776,
		42.236542, 29.090319, 22.466000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009724, 28.809624, 22.293316>,  <42.849384, 29.289309, 22.739544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009724, 28.809624, 22.293316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648300, 28.878139, 22.136225>,  <42.431446, 28.919249, 22.041969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648300, 28.878139, 22.136225>,  <43.009724, 28.809624, 22.293316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648300, 28.878139, 22.136225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390797, -0.046293, -0.919312,
		-0.175648, -0.984133, -0.025110,
		-0.903563, 0.171288, -0.392727,
		42.377232, 28.929525, 22.018406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017780, 28.269730, 21.879244>,  <43.009724, 28.809624, 22.293316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017780, 28.269730, 21.879244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782314, 28.579771, 21.787428>,  <42.641037, 28.765797, 21.732338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782314, 28.579771, 21.787428>,  <43.017780, 28.269730, 21.879244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782314, 28.579771, 21.787428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226260, -0.114619, -0.967300,
		-0.776069, -0.621349, -0.107903,
		-0.588663, 0.775105, -0.229539,
		42.605717, 28.812304, 21.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660130, 27.962269, 21.427256>,  <43.017780, 28.269730, 21.879244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660130, 27.962269, 21.427256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645832, 28.358849, 21.377060>,  <42.637253, 28.596796, 21.346943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645832, 28.358849, 21.377060>,  <42.660130, 27.962269, 21.427256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645832, 28.358849, 21.377060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425868, -0.098486, -0.899409,
		-0.904079, -0.085591, -0.418707,
		-0.035744, 0.991451, -0.125489,
		42.635109, 28.656284, 21.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247288, 28.228453, 20.825586>,  <42.660130, 27.962269, 21.427256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247288, 28.228453, 20.825586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591469, 28.415462, 20.906628>,  <42.797977, 28.527668, 20.955252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591469, 28.415462, 20.906628>,  <42.247288, 28.228453, 20.825586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591469, 28.415462, 20.906628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309221, -0.163096, -0.936900,
		-0.404978, 0.868805, -0.284903,
		0.860451, 0.467522, 0.202602,
		42.849606, 28.555719, 20.967409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452412, 28.806448, 20.392216>,  <42.247288, 28.228453, 20.825586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452412, 28.806448, 20.392216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778973, 28.618578, 20.526609>,  <42.974911, 28.505856, 20.607246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778973, 28.618578, 20.526609>,  <42.452412, 28.806448, 20.392216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778973, 28.618578, 20.526609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234122, -0.262656, -0.936055,
		0.527889, 0.842863, -0.104473,
		0.816407, -0.469674, 0.335986,
		43.023895, 28.477676, 20.627405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142853, 29.043257, 20.064091>,  <42.452412, 28.806448, 20.392216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142853, 29.043257, 20.064091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115383, 28.653479, 20.149635>,  <43.098904, 28.419611, 20.200962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115383, 28.653479, 20.149635>,  <43.142853, 29.043257, 20.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115383, 28.653479, 20.149635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260990, -0.224451, -0.938886,
		0.962896, -0.008659, 0.269734,
		-0.068672, -0.974447, 0.213863,
		43.094780, 28.361145, 20.213795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871780, 29.224985, 19.998806>,  <43.142853, 29.043257, 20.064091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871780, 29.224985, 19.998806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138687, 29.520954, 19.964718>,  <44.298832, 29.698536, 19.944265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138687, 29.520954, 19.964718>,  <43.871780, 29.224985, 19.998806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138687, 29.520954, 19.964718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723568, 0.616844, -0.309761,
		-0.176632, 0.268356, 0.946988,
		0.667270, 0.739924, -0.085219,
		44.338867, 29.742931, 19.939152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698505, 29.842775, 20.421537>,  <43.871780, 29.224985, 19.998806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698505, 29.842775, 20.421537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885403, 29.923996, 20.077339>,  <43.997543, 29.972729, 19.870821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885403, 29.923996, 20.077339>,  <43.698505, 29.842775, 20.421537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885403, 29.923996, 20.077339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732475, 0.633964, -0.248134,
		0.495138, 0.746230, 0.444948,
		0.467246, 0.203053, -0.860494,
		44.025578, 29.984911, 19.819191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503624, 30.563900, 20.240719>,  <43.698505, 29.842775, 20.421537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503624, 30.563900, 20.240719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638020, 30.438507, 19.885452>,  <43.718655, 30.363272, 19.672293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638020, 30.438507, 19.885452>,  <43.503624, 30.563900, 20.240719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638020, 30.438507, 19.885452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601778, 0.653965, -0.458468,
		0.724552, 0.688519, 0.031077,
		0.335987, -0.313483, -0.888168,
		43.738815, 30.344461, 19.619001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412842, 30.815977, 19.613415>,  <43.503624, 30.563900, 20.240719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412842, 30.815977, 19.613415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033325, 30.842567, 19.489883>,  <42.805614, 30.858521, 19.415766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033325, 30.842567, 19.489883>,  <43.412842, 30.815977, 19.613415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033325, 30.842567, 19.489883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292304, 0.185993, 0.938064,
		0.119797, 0.980300, -0.157038,
		-0.948792, 0.066474, -0.308827,
		42.748688, 30.862509, 19.397236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103397, 31.353430, 20.100248>,  <43.412842, 30.815977, 19.613415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103397, 31.353430, 20.100248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805824, 31.137342, 19.942907>,  <42.627281, 31.007690, 19.848503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805824, 31.137342, 19.942907>,  <43.103397, 31.353430, 20.100248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805824, 31.137342, 19.942907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600484, 0.282121, 0.748216,
		-0.293225, 0.792826, -0.534271,
		-0.743934, -0.540217, -0.393354,
		42.582645, 30.975277, 19.824902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505623, 31.780424, 20.063488>,  <43.103397, 31.353430, 20.100248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505623, 31.780424, 20.063488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409500, 31.393314, 20.093586>,  <42.351826, 31.161049, 20.111645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409500, 31.393314, 20.093586>,  <42.505623, 31.780424, 20.063488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409500, 31.393314, 20.093586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650707, 0.218125, 0.727325,
		-0.720301, 0.125820, -0.682156,
		-0.240307, -0.967776, 0.075244,
		42.337406, 31.102982, 20.116159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805725, 31.722889, 19.955755>,  <42.505623, 31.780424, 20.063488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805725, 31.722889, 19.955755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906891, 31.407461, 20.179966>,  <41.967590, 31.218204, 20.314493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906891, 31.407461, 20.179966>,  <41.805725, 31.722889, 19.955755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906891, 31.407461, 20.179966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663166, 0.280545, 0.693906,
		-0.704446, -0.547223, -0.451998,
		0.252916, -0.788569, 0.560529,
		41.982765, 31.170891, 20.348125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149837, 31.549309, 20.236362>,  <41.805725, 31.722889, 19.955755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149837, 31.549309, 20.236362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408867, 31.377914, 20.488409>,  <41.564285, 31.275078, 20.639637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408867, 31.377914, 20.488409>,  <41.149837, 31.549309, 20.236362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408867, 31.377914, 20.488409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614834, 0.194680, 0.764251,
		-0.450144, -0.882325, -0.137380,
		0.647572, -0.428489, 0.630117,
		41.603138, 31.249369, 20.677444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801834, 31.019766, 20.646236>,  <41.149837, 31.549309, 20.236362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801834, 31.019766, 20.646236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125916, 31.127665, 20.854391>,  <41.320366, 31.192404, 20.979284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125916, 31.127665, 20.854391>,  <40.801834, 31.019766, 20.646236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125916, 31.127665, 20.854391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572705, 0.175284, 0.800802,
		0.124797, -0.946844, 0.296500,
		0.810206, 0.269745, 0.520387,
		41.368977, 31.208590, 21.010508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651161, 30.750957, 21.284348>,  <40.801834, 31.019766, 20.646236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651161, 30.750957, 21.284348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942333, 31.018387, 21.345188>,  <41.117035, 31.178844, 21.381693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942333, 31.018387, 21.345188>,  <40.651161, 30.750957, 21.284348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942333, 31.018387, 21.345188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422307, 0.262411, 0.867639,
		0.540166, -0.695810, 0.473359,
		0.727927, 0.668572, 0.152100,
		41.160709, 31.218958, 21.390818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955795, 30.598301, 21.916031>,  <40.651161, 30.750957, 21.284348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955795, 30.598301, 21.916031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049404, 30.983873, 21.865320>,  <41.105572, 31.215216, 21.834894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049404, 30.983873, 21.865320>,  <40.955795, 30.598301, 21.916031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049404, 30.983873, 21.865320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466561, 0.225749, 0.855195,
		0.852968, -0.140987, 0.502562,
		0.234024, 0.963930, -0.126777,
		41.119610, 31.273052, 21.827288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459671, 30.862486, 22.468588>,  <40.955795, 30.598301, 21.916031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459671, 30.862486, 22.468588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268192, 31.186623, 22.333414>,  <41.153305, 31.381104, 22.252310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268192, 31.186623, 22.333414>,  <41.459671, 30.862486, 22.468588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268192, 31.186623, 22.333414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211901, 0.266891, 0.940142,
		0.852027, 0.521650, 0.043953,
		-0.478695, 0.810340, -0.337936,
		41.124584, 31.429724, 22.232033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670826, 31.538826, 22.850996>,  <41.459671, 30.862486, 22.468588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670826, 31.538826, 22.850996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308758, 31.625498, 22.704731>,  <41.091515, 31.677502, 22.616972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308758, 31.625498, 22.704731>,  <41.670826, 31.538826, 22.850996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308758, 31.625498, 22.704731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278501, 0.347540, 0.895351,
		0.321088, 0.912286, -0.254239,
		-0.905174, 0.216680, -0.365663,
		41.037205, 31.690502, 22.595032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537159, 32.115017, 23.274851>,  <41.670826, 31.538826, 22.850996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537159, 32.115017, 23.274851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189293, 32.016022, 23.103998>,  <40.980576, 31.956625, 23.001486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189293, 32.016022, 23.103998>,  <41.537159, 32.115017, 23.274851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189293, 32.016022, 23.103998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479179, 0.215247, 0.850915,
		-0.118650, 0.944680, -0.305782,
		-0.869660, -0.247485, -0.427132,
		40.928394, 31.941776, 22.975859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089687, 32.738964, 23.389973>,  <41.537159, 32.115017, 23.274851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089687, 32.738964, 23.389973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840855, 32.434418, 23.316940>,  <40.691555, 32.251690, 23.273121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840855, 32.434418, 23.316940>,  <41.089687, 32.738964, 23.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840855, 32.434418, 23.316940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622897, 0.339988, 0.704561,
		-0.474351, 0.552028, -0.685753,
		-0.622085, -0.761363, -0.182583,
		40.654228, 32.206009, 23.262165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419147, 33.039532, 23.470938>,  <41.089687, 32.738964, 23.389973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419147, 33.039532, 23.470938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360279, 32.646976, 23.520269>,  <40.324959, 32.411442, 23.549868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360279, 32.646976, 23.520269>,  <40.419147, 33.039532, 23.470938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360279, 32.646976, 23.520269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703847, 0.191515, 0.684048,
		-0.694938, 0.013870, -0.718936,
		-0.147175, -0.981392, 0.123329,
		40.316128, 32.352558, 23.557268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726383, 32.954357, 23.526505>,  <40.419147, 33.039532, 23.470938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726383, 32.954357, 23.526505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856159, 32.606396, 23.675102>,  <39.934025, 32.397621, 23.764261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856159, 32.606396, 23.675102>,  <39.726383, 32.954357, 23.526505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856159, 32.606396, 23.675102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708179, 0.036974, 0.705064,
		-0.627071, -0.491840, -0.604049,
		0.324445, -0.869901, 0.371496,
		39.953491, 32.345425, 23.786551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116512, 32.486927, 23.719959>,  <39.726383, 32.954357, 23.526505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116512, 32.486927, 23.719959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443645, 32.412949, 23.937933>,  <39.639923, 32.368561, 24.068716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443645, 32.412949, 23.937933>,  <39.116512, 32.486927, 23.719959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443645, 32.412949, 23.937933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535466, 0.102293, 0.838339,
		-0.210792, -0.977410, -0.015375,
		0.817828, -0.184948, 0.544932,
		39.688995, 32.357464, 24.101412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849464, 32.091923, 24.238537>,  <39.116512, 32.486927, 23.719959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849464, 32.091923, 24.238537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200882, 32.195679, 24.398977>,  <39.411732, 32.257931, 24.495241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200882, 32.195679, 24.398977>,  <38.849464, 32.091923, 24.238537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200882, 32.195679, 24.398977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446083, 0.145277, 0.883122,
		0.170819, -0.954779, 0.243348,
		0.878539, 0.259407, 0.401095,
		39.464443, 32.273495, 24.519308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828022, 31.781185, 24.818439>,  <38.849464, 32.091923, 24.238537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828022, 31.781185, 24.818439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100571, 32.069698, 24.868210>,  <39.264099, 32.242805, 24.898073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100571, 32.069698, 24.868210>,  <38.828022, 31.781185, 24.818439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100571, 32.069698, 24.868210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327473, 0.148378, 0.933137,
		0.654596, -0.676559, 0.337302,
		0.681370, 0.721285, 0.124427,
		39.304981, 32.286083, 24.905539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069717, 31.657228, 25.458490>,  <38.828022, 31.781185, 24.818439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069717, 31.657228, 25.458490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168205, 32.042286, 25.413427>,  <39.227299, 32.273319, 25.386389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168205, 32.042286, 25.413427>,  <39.069717, 31.657228, 25.458490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168205, 32.042286, 25.413427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638772, 0.248596, 0.728128,
		0.728934, -0.107317, 0.676120,
		0.246221, 0.962644, -0.112659,
		39.242073, 32.331078, 25.379629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351620, 31.932978, 26.111198>,  <39.069717, 31.657228, 25.458490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351620, 31.932978, 26.111198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219231, 32.250595, 25.907259>,  <39.139797, 32.441166, 25.784895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219231, 32.250595, 25.907259>,  <39.351620, 31.932978, 26.111198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219231, 32.250595, 25.907259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501837, 0.309449, 0.807713,
		0.799133, 0.523196, 0.296060,
		-0.330977, 0.794045, -0.509851,
		39.119938, 32.488808, 25.754303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317104, 32.410332, 26.682180>,  <39.351620, 31.932978, 26.111198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317104, 32.410332, 26.682180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113075, 32.588348, 26.387762>,  <38.990658, 32.695156, 26.211111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113075, 32.588348, 26.387762>,  <39.317104, 32.410332, 26.682180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113075, 32.588348, 26.387762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579266, 0.454839, 0.676441,
		0.635825, 0.771402, 0.025793,
		-0.510077, 0.445038, -0.736045,
		38.960052, 32.721859, 26.166948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308956, 33.232857, 26.825645>,  <39.317104, 32.410332, 26.682180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308956, 33.232857, 26.825645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008984, 33.138893, 26.578283>,  <38.829002, 33.082516, 26.429867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008984, 33.138893, 26.578283>,  <39.308956, 33.232857, 26.825645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008984, 33.138893, 26.578283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660933, 0.305400, 0.685492,
		0.027832, 0.922794, -0.384287,
		-0.749929, -0.234909, -0.618405,
		38.784004, 33.068420, 26.392761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852020, 33.875847, 26.757759>,  <39.308956, 33.232857, 26.825645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852020, 33.875847, 26.757759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622337, 33.562580, 26.662308>,  <38.484528, 33.374622, 26.605036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622337, 33.562580, 26.662308>,  <38.852020, 33.875847, 26.757759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622337, 33.562580, 26.662308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707944, 0.328557, 0.625193,
		-0.411225, 0.527924, -0.743095,
		-0.574203, -0.783164, -0.238630,
		38.450077, 33.327629, 26.590719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167042, 34.135826, 26.644514>,  <38.852020, 33.875847, 26.757759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167042, 34.135826, 26.644514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129951, 33.746273, 26.727417>,  <38.107697, 33.512543, 26.777159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129951, 33.746273, 26.727417>,  <38.167042, 34.135826, 26.644514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129951, 33.746273, 26.727417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720133, 0.209340, 0.661502,
		-0.687613, -0.087917, -0.720736,
		-0.092722, -0.973883, 0.207256,
		38.102135, 33.454109, 26.789595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387123, 33.952587, 26.660036>,  <38.167042, 34.135826, 26.644514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387123, 33.952587, 26.660036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549545, 33.646198, 26.859400>,  <37.646999, 33.462364, 26.979017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549545, 33.646198, 26.859400>,  <37.387123, 33.952587, 26.660036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549545, 33.646198, 26.859400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681106, 0.109954, 0.723881,
		-0.609273, -0.633404, -0.477060,
		0.406055, -0.765970, 0.498407,
		37.671360, 33.416409, 27.008923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789925, 33.523010, 26.882069>,  <37.387123, 33.952587, 26.660036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789925, 33.523010, 26.882069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080700, 33.422379, 27.137651>,  <37.255165, 33.362000, 27.291000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080700, 33.422379, 27.137651>,  <36.789925, 33.523010, 26.882069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080700, 33.422379, 27.137651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672397, -0.071863, 0.736694,
		-0.139419, -0.965165, -0.221401,
		0.726942, -0.251579, 0.638955,
		37.298782, 33.346905, 27.329338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610901, 32.953442, 27.197342>,  <36.789925, 33.523010, 26.882069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610901, 32.953442, 27.197342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870880, 33.146961, 27.431778>,  <37.026867, 33.263073, 27.572439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870880, 33.146961, 27.431778>,  <36.610901, 32.953442, 27.197342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870880, 33.146961, 27.431778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651096, -0.043278, 0.757761,
		0.391968, -0.874109, 0.286870,
		0.649950, 0.483798, 0.586092,
		37.065865, 33.292099, 27.607605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593391, 32.571419, 27.819727>,  <36.610901, 32.953442, 27.197342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593391, 32.571419, 27.819727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757126, 32.920223, 27.927088>,  <36.855366, 33.129505, 27.991505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757126, 32.920223, 27.927088>,  <36.593391, 32.571419, 27.819727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757126, 32.920223, 27.927088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339216, -0.127637, 0.932009,
		0.846982, -0.472549, 0.243555,
		0.409334, 0.872013, 0.268403,
		36.879925, 33.181828, 28.007608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863098, 32.465973, 28.429331>,  <36.593391, 32.571419, 27.819727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863098, 32.465973, 28.429331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821751, 32.863789, 28.435080>,  <36.796940, 33.102478, 28.438528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821751, 32.863789, 28.435080>,  <36.863098, 32.465973, 28.429331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821751, 32.863789, 28.435080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291616, -0.044119, 0.955518,
		0.950933, 0.094584, 0.294584,
		-0.103373, 0.994539, 0.014372,
		36.790737, 33.162151, 28.439390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226719, 32.653641, 29.021786>,  <36.863098, 32.465973, 28.429331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226719, 32.653641, 29.021786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969177, 32.944767, 28.927351>,  <36.814651, 33.119442, 28.870689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969177, 32.944767, 28.927351>,  <37.226719, 32.653641, 29.021786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969177, 32.944767, 28.927351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315173, 0.028889, 0.948594,
		0.697218, 0.685169, 0.210786,
		-0.643858, 0.727811, -0.236088,
		36.776020, 33.163109, 28.856525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166653, 33.087643, 29.634850>,  <37.226719, 32.653641, 29.021786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166653, 33.087643, 29.634850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844585, 33.203438, 29.427813>,  <36.651344, 33.272915, 29.303591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844585, 33.203438, 29.427813>,  <37.166653, 33.087643, 29.634850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844585, 33.203438, 29.427813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488086, 0.172281, 0.855623,
		0.336860, 0.941551, 0.002578,
		-0.805169, 0.289484, -0.517592,
		36.603035, 33.290283, 29.272535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929657, 33.526825, 30.120651>,  <37.166653, 33.087643, 29.634850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929657, 33.526825, 30.120651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615852, 33.505688, 29.873507>,  <36.427570, 33.493004, 29.725220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615852, 33.505688, 29.873507>,  <36.929657, 33.526825, 30.120651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615852, 33.505688, 29.873507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608950, 0.253891, 0.751478,
		0.117157, 0.965788, -0.231361,
		-0.784509, -0.052846, -0.617861,
		36.380501, 33.489834, 29.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654762, 34.093246, 30.423969>,  <36.929657, 33.526825, 30.120651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654762, 34.093246, 30.423969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367046, 33.927647, 30.200819>,  <36.194416, 33.828289, 30.066929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367046, 33.927647, 30.200819>,  <36.654762, 34.093246, 30.423969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367046, 33.927647, 30.200819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683065, 0.275057, 0.676584,
		-0.126655, 0.867727, -0.480632,
		-0.719291, -0.413996, -0.557877,
		36.151260, 33.803448, 30.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174023, 34.629940, 30.266417>,  <36.654762, 34.093246, 30.423969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174023, 34.629940, 30.266417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022720, 34.259689, 30.271147>,  <35.931938, 34.037540, 30.273985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022720, 34.259689, 30.271147>,  <36.174023, 34.629940, 30.266417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022720, 34.259689, 30.271147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585077, 0.248952, 0.771822,
		-0.717362, 0.285028, -0.635729,
		-0.378256, -0.925625, 0.011825,
		35.909245, 33.982002, 30.274694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463642, 34.632931, 30.161396>,  <36.174023, 34.629940, 30.266417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463642, 34.632931, 30.161396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502548, 34.283325, 30.351822>,  <35.525894, 34.073563, 30.466078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502548, 34.283325, 30.351822>,  <35.463642, 34.632931, 30.161396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502548, 34.283325, 30.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681516, 0.290101, 0.671846,
		-0.725310, -0.389795, -0.567438,
		0.097268, -0.874015, 0.476065,
		35.531727, 34.021122, 30.494642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781582, 34.473118, 30.516367>,  <35.463642, 34.632931, 30.161396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781582, 34.473118, 30.516367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012039, 34.203987, 30.702002>,  <35.150314, 34.042511, 30.813381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012039, 34.203987, 30.702002>,  <34.781582, 34.473118, 30.516367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012039, 34.203987, 30.702002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589395, 0.051388, 0.806209,
		-0.566283, -0.738017, -0.366951,
		0.576139, -0.672822, 0.464085,
		35.184879, 34.002140, 30.841227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331497, 33.944378, 30.697302>,  <34.781582, 34.473118, 30.516367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331497, 33.944378, 30.697302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659863, 33.918438, 30.924248>,  <34.856880, 33.902874, 31.060415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659863, 33.918438, 30.924248>,  <34.331497, 33.944378, 30.697302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659863, 33.918438, 30.924248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560936, 0.094675, 0.822428,
		-0.107052, -0.993394, 0.041341,
		0.820909, -0.064853, 0.567365,
		34.906136, 33.898983, 31.094458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251953, 33.443253, 31.254042>,  <34.331497, 33.944378, 30.697302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251953, 33.443253, 31.254042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540802, 33.689552, 31.380144>,  <34.714111, 33.837334, 31.455807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540802, 33.689552, 31.380144>,  <34.251953, 33.443253, 31.254042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540802, 33.689552, 31.380144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516187, 0.176240, 0.838147,
		0.460526, -0.767980, 0.445109,
		0.722126, 0.615748, 0.315259,
		34.757439, 33.874275, 31.474722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452801, 33.165600, 31.937559>,  <34.251953, 33.443253, 31.254042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452801, 33.165600, 31.937559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594784, 33.539379, 31.948978>,  <34.679974, 33.763645, 31.955830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594784, 33.539379, 31.948978>,  <34.452801, 33.165600, 31.937559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594784, 33.539379, 31.948978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543331, 0.181349, 0.819698,
		0.760785, -0.306472, 0.572085,
		0.354962, 0.934445, 0.028548,
		34.701271, 33.819714, 31.957542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472176, 33.280602, 32.627926>,  <34.452801, 33.165600, 31.937559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472176, 33.280602, 32.627926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548679, 33.647755, 32.488834>,  <34.594582, 33.868046, 32.405380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548679, 33.647755, 32.488834>,  <34.472176, 33.280602, 32.627926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548679, 33.647755, 32.488834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339464, 0.394262, 0.854003,
		0.920968, -0.045299, 0.386996,
		0.191263, 0.917881, -0.347725,
		34.606060, 33.923119, 32.384518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035316, 33.660427, 33.091259>,  <34.472176, 33.280602, 32.627926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035316, 33.660427, 33.091259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803001, 33.916405, 32.889999>,  <34.663612, 34.069992, 32.769245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803001, 33.916405, 32.889999>,  <35.035316, 33.660427, 33.091259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803001, 33.916405, 32.889999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316590, 0.391855, 0.863840,
		0.749968, 0.661002, -0.024987,
		-0.580792, 0.639942, -0.503145,
		34.628765, 34.108387, 32.739056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899471, 34.177391, 33.618019>,  <35.035316, 33.660427, 33.091259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899471, 34.177391, 33.618019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642281, 34.311047, 33.342358>,  <34.487965, 34.391239, 33.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642281, 34.311047, 33.342358>,  <34.899471, 34.177391, 33.618019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642281, 34.311047, 33.342358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533352, 0.450421, 0.716001,
		0.549650, 0.827934, -0.111399,
		-0.642978, 0.334135, -0.689154,
		34.449387, 34.411285, 33.135612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919209, 34.910980, 33.575821>,  <34.899471, 34.177391, 33.618019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919209, 34.910980, 33.575821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552059, 34.797359, 33.464951>,  <34.331772, 34.729187, 33.398430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552059, 34.797359, 33.464951>,  <34.919209, 34.910980, 33.575821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552059, 34.797359, 33.464951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372779, 0.377400, 0.847706,
		-0.136190, 0.881409, -0.452294,
		-0.917871, -0.284055, -0.277173,
		34.276699, 34.712143, 33.381798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630859, 35.035034, 33.572411>,  <34.919209, 34.910980, 33.575821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630859, 35.035034, 33.572411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998741, 35.156734, 33.671661>,  <36.219471, 35.229755, 33.731213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998741, 35.156734, 33.671661>,  <35.630859, 35.035034, 33.572411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998741, 35.156734, 33.671661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263044, -0.008351, -0.964748,
		-0.291450, 0.952556, -0.087711,
		0.919709, 0.304248, 0.248130,
		36.274654, 35.248009, 33.746101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737659, 35.622635, 33.293812>,  <35.630859, 35.035034, 33.572411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737659, 35.622635, 33.293812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107212, 35.494431, 33.377438>,  <36.328945, 35.417507, 33.427612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107212, 35.494431, 33.377438>,  <35.737659, 35.622635, 33.293812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107212, 35.494431, 33.377438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264930, 0.141507, -0.953828,
		0.276132, 0.936614, 0.215650,
		0.923885, -0.320515, 0.209063,
		36.384377, 35.398277, 33.440155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120678, 36.060631, 32.857838>,  <35.737659, 35.622635, 33.293812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120678, 36.060631, 32.857838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355358, 35.751331, 32.954060>,  <36.496166, 35.565750, 33.011791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355358, 35.751331, 32.954060>,  <36.120678, 36.060631, 32.857838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355358, 35.751331, 32.954060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349920, -0.025813, -0.936424,
		0.730301, 0.633573, 0.255431,
		0.586699, -0.773252, 0.240551,
		36.531368, 35.519356, 33.026226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745922, 36.286198, 32.683918>,  <36.120678, 36.060631, 32.857838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745922, 36.286198, 32.683918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796589, 35.889427, 32.681747>,  <36.826988, 35.651363, 32.680447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796589, 35.889427, 32.681747>,  <36.745922, 36.286198, 32.683918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796589, 35.889427, 32.681747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500803, 0.068668, -0.862834,
		0.856243, 0.106576, 0.505459,
		0.126666, -0.991931, -0.005423,
		36.834587, 35.591846, 32.680119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369259, 36.289734, 32.458694>,  <36.745922, 36.286198, 32.683918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369259, 36.289734, 32.458694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258961, 35.910202, 32.397125>,  <37.192783, 35.682484, 32.360184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258961, 35.910202, 32.397125>,  <37.369259, 36.289734, 32.458694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258961, 35.910202, 32.397125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390001, 0.035928, -0.920113,
		0.878559, -0.313744, 0.360137,
		-0.275741, -0.948828, -0.153926,
		37.176239, 35.625553, 32.350948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954449, 35.854820, 32.344086>,  <37.369259, 36.289734, 32.458694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954449, 35.854820, 32.344086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657104, 35.647362, 32.175125>,  <37.478699, 35.522884, 32.073750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657104, 35.647362, 32.175125>,  <37.954449, 35.854820, 32.344086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657104, 35.647362, 32.175125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578917, -0.182525, -0.794695,
		0.335070, -0.835277, 0.435937,
		-0.743360, -0.518649, -0.422398,
		37.434097, 35.491768, 32.048405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217201, 35.184063, 32.167568>,  <37.954449, 35.854820, 32.344086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217201, 35.184063, 32.167568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921875, 35.277817, 31.914598>,  <37.744678, 35.334068, 31.762817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921875, 35.277817, 31.914598>,  <38.217201, 35.184063, 32.167568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921875, 35.277817, 31.914598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583105, -0.249401, -0.773168,
		-0.338943, -0.939609, 0.047467,
		-0.738314, 0.234381, -0.632423,
		37.700382, 35.348129, 31.724873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465511, 34.764648, 31.571909>,  <38.217201, 35.184063, 32.167568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465511, 34.764648, 31.571909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196152, 35.038624, 31.460627>,  <38.034538, 35.203011, 31.393858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196152, 35.038624, 31.460627>,  <38.465511, 34.764648, 31.571909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196152, 35.038624, 31.460627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412951, 0.036361, -0.910027,
		-0.613196, -0.727694, -0.307331,
		-0.673396, 0.684937, -0.278206,
		37.994133, 35.244106, 31.377165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451263, 34.620495, 30.922045>,  <38.465511, 34.764648, 31.571909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451263, 34.620495, 30.922045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266544, 34.975220, 30.929087>,  <38.155712, 35.188053, 30.933311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266544, 34.975220, 30.929087>,  <38.451263, 34.620495, 30.922045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266544, 34.975220, 30.929087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279215, 0.164183, -0.946088,
		-0.841890, -0.431989, -0.323430,
		-0.461801, 0.886808, 0.017607,
		38.128002, 35.241261, 30.934368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160828, 34.679501, 30.282167>,  <38.451263, 34.620495, 30.922045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160828, 34.679501, 30.282167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171299, 35.056446, 30.415590>,  <38.177582, 35.282616, 30.495644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171299, 35.056446, 30.415590>,  <38.160828, 34.679501, 30.282167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171299, 35.056446, 30.415590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365413, 0.301561, -0.880644,
		-0.930477, 0.144937, -0.336460,
		0.026175, 0.942366, 0.333557,
		38.179150, 35.339157, 30.515657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919102, 35.068779, 29.759945>,  <38.160828, 34.679501, 30.282167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919102, 35.068779, 29.759945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145481, 35.294170, 30.000675>,  <38.281311, 35.429405, 30.145113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145481, 35.294170, 30.000675>,  <37.919102, 35.068779, 29.759945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145481, 35.294170, 30.000675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380692, 0.468884, -0.797008,
		-0.731281, 0.680178, 0.050855,
		0.565952, 0.563476, 0.601824,
		38.315266, 35.463215, 30.181223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903336, 35.769917, 29.488468>,  <37.919102, 35.068779, 29.759945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903336, 35.769917, 29.488468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240463, 35.759083, 29.703474>,  <38.442741, 35.752583, 29.832478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240463, 35.759083, 29.703474>,  <37.903336, 35.769917, 29.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240463, 35.759083, 29.703474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482621, 0.480027, -0.732564,
		-0.238182, 0.876836, 0.417647,
		0.842820, -0.027082, 0.537513,
		38.493309, 35.750957, 29.864729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232124, 36.442493, 29.499607>,  <37.903336, 35.769917, 29.488468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232124, 36.442493, 29.499607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525078, 36.179142, 29.569065>,  <38.700848, 36.021130, 29.610741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525078, 36.179142, 29.569065>,  <38.232124, 36.442493, 29.499607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525078, 36.179142, 29.569065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522149, 0.379379, -0.763827,
		0.437011, 0.650081, 0.621623,
		0.732380, -0.658381, 0.173647,
		38.744793, 35.981628, 29.621159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858543, 36.744961, 29.172737>,  <38.232124, 36.442493, 29.499607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858543, 36.744961, 29.172737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956192, 36.362713, 29.238697>,  <39.014782, 36.133362, 29.278273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956192, 36.362713, 29.238697>,  <38.858543, 36.744961, 29.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956192, 36.362713, 29.238697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569049, 0.003471, -0.822296,
		0.785232, 0.294574, 0.544644,
		0.244117, -0.955622, 0.164902,
		39.029427, 36.076027, 29.288168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540470, 36.750656, 29.019707>,  <38.858543, 36.744961, 29.172737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540470, 36.750656, 29.019707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435017, 36.365139, 29.003677>,  <39.371746, 36.133831, 28.994061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435017, 36.365139, 29.003677>,  <39.540470, 36.750656, 29.019707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435017, 36.365139, 29.003677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526242, -0.108882, -0.843335,
		0.808435, -0.243420, 0.535892,
		-0.263633, -0.963790, -0.040074,
		39.355927, 36.076000, 28.991655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144619, 36.419052, 28.844934>,  <39.540470, 36.750656, 29.019707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144619, 36.419052, 28.844934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868641, 36.142670, 28.758627>,  <39.703056, 35.976841, 28.706842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868641, 36.142670, 28.758627>,  <40.144619, 36.419052, 28.844934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868641, 36.142670, 28.758627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535659, -0.286857, -0.794218,
		0.486879, -0.663541, 0.568033,
		-0.689941, -0.690960, -0.215767,
		39.661659, 35.935383, 28.693897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610245, 35.843884, 28.658005>,  <40.144619, 36.419052, 28.844934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610245, 35.843884, 28.658005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261784, 35.749401, 28.485821>,  <40.052708, 35.692711, 28.382511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261784, 35.749401, 28.485821>,  <40.610245, 35.843884, 28.658005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261784, 35.749401, 28.485821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483433, -0.259232, -0.836117,
		0.085906, -0.936486, 0.340020,
		-0.871156, -0.236204, -0.430459,
		40.000435, 35.678539, 28.356684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732407, 35.198292, 28.247187>,  <40.610245, 35.843884, 28.658005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732407, 35.198292, 28.247187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394020, 35.346668, 28.093960>,  <40.190987, 35.435692, 28.002024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394020, 35.346668, 28.093960>,  <40.732407, 35.198292, 28.247187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394020, 35.346668, 28.093960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206632, -0.434215, -0.876790,
		-0.491570, -0.820891, 0.290684,
		-0.845969, 0.370939, -0.383069,
		40.140228, 35.457951, 27.979040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331211, 34.666073, 27.949677>,  <40.732407, 35.198292, 28.247187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331211, 34.666073, 27.949677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208076, 34.976845, 27.729998>,  <40.134193, 35.163307, 27.598190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208076, 34.976845, 27.729998>,  <40.331211, 34.666073, 27.949677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208076, 34.976845, 27.729998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132217, -0.536696, -0.833352,
		-0.942207, -0.329152, 0.062493,
		-0.307840, 0.776927, -0.549198,
		40.115726, 35.209923, 27.565239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859730, 34.353306, 27.423296>,  <40.331211, 34.666073, 27.949677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859730, 34.353306, 27.423296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960472, 34.721958, 27.305204>,  <40.020920, 34.943150, 27.234348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960472, 34.721958, 27.305204>,  <39.859730, 34.353306, 27.423296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960472, 34.721958, 27.305204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160196, -0.340559, -0.926476,
		-0.954413, 0.186048, -0.233415,
		0.251860, 0.921632, -0.295230,
		40.036030, 34.998447, 27.216635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506092, 34.434566, 26.767130>,  <39.859730, 34.353306, 27.423296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506092, 34.434566, 26.767130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820969, 34.681210, 26.762552>,  <40.009895, 34.829193, 26.759806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820969, 34.681210, 26.762552>,  <39.506092, 34.434566, 26.767130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820969, 34.681210, 26.762552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257380, -0.345334, -0.902496,
		-0.560435, 0.707491, -0.430545,
		0.787190, 0.616604, -0.011443,
		40.057125, 34.866192, 26.759119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447559, 34.639309, 26.133034>,  <39.506092, 34.434566, 26.767130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447559, 34.639309, 26.133034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821060, 34.683056, 26.269352>,  <40.045162, 34.709305, 26.351143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821060, 34.683056, 26.269352>,  <39.447559, 34.639309, 26.133034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821060, 34.683056, 26.269352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354983, -0.404597, -0.842786,
		0.045715, 0.907932, -0.416616,
		0.933754, 0.109364, 0.340797,
		40.101185, 34.715866, 26.371592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929756, 34.916988, 25.590302>,  <39.447559, 34.639309, 26.133034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929756, 34.916988, 25.590302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206043, 34.790375, 25.850367>,  <40.371815, 34.714405, 26.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206043, 34.790375, 25.850367>,  <39.929756, 34.916988, 25.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206043, 34.790375, 25.850367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491617, -0.453800, -0.743222,
		0.530298, 0.832990, -0.157837,
		0.690722, -0.316533, 0.650161,
		40.413261, 34.695415, 26.045414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581223, 35.096783, 25.255272>,  <39.929756, 34.916988, 25.590302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581223, 35.096783, 25.255272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662373, 34.809959, 25.522005>,  <40.711063, 34.637863, 25.682045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662373, 34.809959, 25.522005>,  <40.581223, 35.096783, 25.255272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662373, 34.809959, 25.522005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609143, -0.440770, -0.659293,
		0.766673, 0.539949, 0.347372,
		0.202873, -0.717061, 0.666833,
		40.723236, 34.594841, 25.722055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278450, 34.889568, 25.151930>,  <40.581223, 35.096783, 25.255272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278450, 34.889568, 25.151930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177547, 34.583084, 25.388330>,  <41.117004, 34.399193, 25.530170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177547, 34.583084, 25.388330>,  <41.278450, 34.889568, 25.151930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177547, 34.583084, 25.388330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785015, -0.519147, -0.337991,
		0.565790, 0.378685, 0.732447,
		-0.252255, -0.766214, 0.591001,
		41.101871, 34.353218, 25.565630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879833, 34.659740, 25.569773>,  <41.278450, 34.889568, 25.151930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879833, 34.659740, 25.569773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645679, 34.337322, 25.534863>,  <41.505188, 34.143871, 25.513916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645679, 34.337322, 25.534863>,  <41.879833, 34.659740, 25.569773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645679, 34.337322, 25.534863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810674, -0.580360, -0.077395,
		0.011731, -0.116059, 0.993173,
		-0.585381, -0.806047, -0.087278,
		41.470066, 34.095509, 25.508678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120789, 34.135742, 25.983065>,  <41.879833, 34.659740, 25.569773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120789, 34.135742, 25.983065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896015, 33.917946, 25.733986>,  <41.761150, 33.787266, 25.584538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896015, 33.917946, 25.733986>,  <42.120789, 34.135742, 25.983065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896015, 33.917946, 25.733986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788800, -0.579382, -0.205210,
		-0.249044, -0.606500, 0.755073,
		-0.561935, -0.544495, -0.622699,
		41.727436, 33.754597, 25.547176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099365, 33.354195, 26.235397>,  <42.120789, 34.135742, 25.983065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099365, 33.354195, 26.235397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016090, 33.368282, 25.844416>,  <41.966125, 33.376736, 25.609827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016090, 33.368282, 25.844416>,  <42.099365, 33.354195, 26.235397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016090, 33.368282, 25.844416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822654, -0.534251, -0.194463,
		-0.529055, -0.844592, 0.082251,
		-0.208184, 0.035218, -0.977456,
		41.953636, 33.378845, 25.551180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244125, 32.647511, 25.904459>,  <42.099365, 33.354195, 26.235397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244125, 32.647511, 25.904459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243015, 32.911888, 25.604288>,  <42.242348, 33.070515, 25.424185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243015, 32.911888, 25.604288>,  <42.244125, 32.647511, 25.904459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243015, 32.911888, 25.604288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768820, -0.478459, -0.424256,
		-0.639460, -0.578123, -0.506819,
		-0.002780, 0.660947, -0.750427,
		42.242180, 33.110172, 25.379160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236275, 32.237160, 25.254528>,  <42.244125, 32.647511, 25.904459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236275, 32.237160, 25.254528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352825, 32.609268, 25.165354>,  <42.422756, 32.832531, 25.111849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352825, 32.609268, 25.165354>,  <42.236275, 32.237160, 25.254528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352825, 32.609268, 25.165354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724593, -0.366780, -0.583469,
		-0.624552, 0.008468, -0.780937,
		0.291373, 0.930269, -0.222937,
		42.440239, 32.888348, 25.098473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453064, 32.159756, 24.666882>,  <42.236275, 32.237160, 25.254528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453064, 32.159756, 24.666882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614609, 32.521358, 24.722982>,  <42.711536, 32.738319, 24.756643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614609, 32.521358, 24.722982>,  <42.453064, 32.159756, 24.666882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614609, 32.521358, 24.722982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728041, -0.224768, -0.647639,
		-0.553946, 0.363663, -0.748928,
		0.403857, 0.904007, 0.140252,
		42.735767, 32.792561, 24.765059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579468, 32.487209, 23.970217>,  <42.453064, 32.159756, 24.666882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579468, 32.487209, 23.970217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817329, 32.665192, 24.238066>,  <42.960049, 32.771980, 24.398775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817329, 32.665192, 24.238066>,  <42.579468, 32.487209, 23.970217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817329, 32.665192, 24.238066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755839, -0.025529, -0.654260,
		-0.274024, 0.895187, -0.351498,
		0.594658, 0.444959, 0.669622,
		42.995728, 32.798679, 24.438951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953945, 33.009422, 23.617447>,  <42.579468, 32.487209, 23.970217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953945, 33.009422, 23.617447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167866, 32.921894, 23.943907>,  <43.296219, 32.869377, 24.139782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167866, 32.921894, 23.943907>,  <42.953945, 33.009422, 23.617447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167866, 32.921894, 23.943907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812937, -0.130203, -0.567609,
		0.230471, 0.967039, 0.108255,
		0.534805, -0.218822, 0.816150,
		43.328308, 32.856247, 24.188751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605778, 33.347172, 23.498434>,  <42.953945, 33.009422, 23.617447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605778, 33.347172, 23.498434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701420, 33.081440, 23.781698>,  <43.758804, 32.922001, 23.951656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701420, 33.081440, 23.781698>,  <43.605778, 33.347172, 23.498434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701420, 33.081440, 23.781698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863576, -0.187940, -0.467883,
		0.443922, 0.723422, 0.528766,
		0.239101, -0.664334, 0.708160,
		43.773151, 32.882141, 23.994146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246536, 33.554298, 23.768250>,  <43.605778, 33.347172, 23.498434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246536, 33.554298, 23.768250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198906, 33.165127, 23.847485>,  <44.170326, 32.931625, 23.895025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198906, 33.165127, 23.847485>,  <44.246536, 33.554298, 23.768250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198906, 33.165127, 23.847485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836653, -0.205752, -0.507620,
		0.534632, 0.105283, 0.838501,
		-0.119079, -0.972924, 0.198087,
		44.163181, 32.873249, 23.906910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910500, 33.386623, 23.905760>,  <44.246536, 33.554298, 23.768250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910500, 33.386623, 23.905760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728657, 33.034794, 23.849648>,  <44.619549, 32.823696, 23.815981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728657, 33.034794, 23.849648>,  <44.910500, 33.386623, 23.905760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728657, 33.034794, 23.849648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843278, -0.374337, -0.385687,
		0.286729, -0.293631, 0.911903,
		-0.454609, -0.879575, -0.140279,
		44.592274, 32.770920, 23.807564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336575, 32.888390, 24.071783>,  <44.910500, 33.386623, 23.905760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336575, 32.888390, 24.071783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085018, 32.672943, 23.847498>,  <44.934086, 32.543674, 23.712927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085018, 32.672943, 23.847498>,  <45.336575, 32.888390, 24.071783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085018, 32.672943, 23.847498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767865, -0.543431, -0.339216,
		-0.122002, -0.643879, 0.755338,
		-0.628888, -0.538612, -0.560711,
		44.896351, 32.511360, 23.679285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362968, 32.225292, 24.247776>,  <45.336575, 32.888390, 24.071783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362968, 32.225292, 24.247776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249729, 32.235760, 23.864283>,  <45.181786, 32.242039, 23.634186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249729, 32.235760, 23.864283>,  <45.362968, 32.225292, 24.247776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249729, 32.235760, 23.864283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620675, -0.757081, -0.203939,
		-0.731175, -0.652797, 0.198091,
		-0.283101, 0.026165, -0.958733,
		45.164799, 32.243610, 23.576662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236767, 31.620623, 24.784010>,  <45.362968, 32.225292, 24.247776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236767, 31.620623, 24.784010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627430, 31.626404, 24.869741>,  <45.861828, 31.629873, 24.921181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627430, 31.626404, 24.869741>,  <45.236767, 31.620623, 24.784010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627430, 31.626404, 24.869741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080132, 0.950229, 0.301073,
		-0.199309, -0.311219, 0.929203,
		0.976655, 0.014453, 0.214328,
		45.920425, 31.630739, 24.934040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382618, 31.708555, 25.517586>,  <45.236767, 31.620623, 24.784010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382618, 31.708555, 25.517586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723568, 31.824808, 25.343697>,  <45.928139, 31.894560, 25.239363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723568, 31.824808, 25.343697>,  <45.382618, 31.708555, 25.517586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723568, 31.824808, 25.343697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016054, 0.816393, 0.577274,
		0.522680, -0.499034, 0.691209,
		0.852377, 0.290633, -0.434724,
		45.979282, 31.911999, 25.213280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686085, 32.041576, 26.064457>,  <45.382618, 31.708555, 25.517586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686085, 32.041576, 26.064457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899319, 32.173740, 25.752905>,  <46.027260, 32.253040, 25.565973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899319, 32.173740, 25.752905>,  <45.686085, 32.041576, 26.064457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899319, 32.173740, 25.752905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071216, 0.899799, 0.430452,
		0.843061, -0.284935, 0.456136,
		0.533082, 0.330414, -0.778878,
		46.059242, 32.272865, 25.519241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289345, 32.230701, 26.342659>,  <45.686085, 32.041576, 26.064457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289345, 32.230701, 26.342659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255550, 32.428032, 25.996367>,  <46.235275, 32.546429, 25.788591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255550, 32.428032, 25.996367>,  <46.289345, 32.230701, 26.342659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255550, 32.428032, 25.996367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055006, 0.869823, 0.490288,
		0.994905, -0.006199, -0.100621,
		-0.084483, 0.493325, -0.865733,
		46.230206, 32.576031, 25.736647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700401, 32.823307, 26.316374>,  <46.289345, 32.230701, 26.342659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700401, 32.823307, 26.316374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445274, 32.899094, 26.017765>,  <46.292198, 32.944565, 25.838600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445274, 32.899094, 26.017765>,  <46.700401, 32.823307, 26.316374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445274, 32.899094, 26.017765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151102, 0.919652, 0.362503,
		0.755224, 0.344010, -0.557937,
		-0.637813, 0.189465, -0.746524,
		46.253929, 32.955933, 25.793808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887016, 33.434120, 26.060125>,  <46.700401, 32.823307, 26.316374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887016, 33.434120, 26.060125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503536, 33.406216, 25.949831>,  <46.273449, 33.389473, 25.883654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503536, 33.406216, 25.949831>,  <46.887016, 33.434120, 26.060125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503536, 33.406216, 25.949831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192317, 0.873235, 0.447745,
		0.209550, 0.482282, -0.850584,
		-0.958699, -0.069757, -0.275737,
		46.215927, 33.385288, 25.867109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608299, 34.063686, 25.723625>,  <46.887016, 33.434120, 26.060125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608299, 34.063686, 25.723625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303204, 33.868805, 25.893740>,  <46.120148, 33.751877, 25.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303204, 33.868805, 25.893740>,  <46.608299, 34.063686, 25.723625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303204, 33.868805, 25.893740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355965, 0.865312, 0.352880,
		-0.539930, 0.117767, -0.833431,
		-0.762735, -0.487202, 0.425287,
		46.074383, 33.722645, 26.021326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046066, 34.691113, 25.738337>,  <46.608299, 34.063686, 25.723625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046066, 34.691113, 25.738337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906403, 34.385258, 25.955011>,  <45.822605, 34.201744, 26.085016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906403, 34.385258, 25.955011>,  <46.046066, 34.691113, 25.738337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906403, 34.385258, 25.955011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541670, 0.636397, 0.549174,
		-0.764644, -0.101667, -0.636382,
		-0.349159, -0.764632, 0.541688,
		45.801655, 34.155869, 26.117517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332008, 34.755741, 25.775734>,  <46.046066, 34.691113, 25.738337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332008, 34.755741, 25.775734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418610, 34.494141, 26.065674>,  <45.470570, 34.337181, 26.239637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418610, 34.494141, 26.065674>,  <45.332008, 34.755741, 25.775734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418610, 34.494141, 26.065674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454684, 0.589474, 0.667670,
		-0.863938, -0.474130, -0.169741,
		0.216504, -0.654004, 0.724848,
		45.483562, 34.297939, 26.283129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657021, 34.613762, 26.085161>,  <45.332008, 34.755741, 25.775734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657021, 34.613762, 26.085161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938000, 34.526604, 26.356188>,  <45.106586, 34.474308, 26.518805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938000, 34.526604, 26.356188>,  <44.657021, 34.613762, 26.085161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938000, 34.526604, 26.356188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569273, 0.399402, 0.718614,
		-0.427201, -0.890507, 0.156517,
		0.702444, -0.217891, 0.677566,
		45.148731, 34.461235, 26.559458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335350, 34.237839, 26.713732>,  <44.657021, 34.613762, 26.085161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335350, 34.237839, 26.713732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682297, 34.406315, 26.819767>,  <44.890465, 34.507401, 26.883389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682297, 34.406315, 26.819767>,  <44.335350, 34.237839, 26.713732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682297, 34.406315, 26.819767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459313, 0.472455, 0.752208,
		0.191578, -0.774201, 0.603250,
		0.867369, 0.421188, 0.265089,
		44.942509, 34.532673, 26.899294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347008, 34.061008, 27.339350>,  <44.335350, 34.237839, 26.713732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347008, 34.061008, 27.339350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593960, 34.372696, 27.296177>,  <44.742130, 34.559708, 27.270273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593960, 34.372696, 27.296177>,  <44.347008, 34.061008, 27.339350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593960, 34.372696, 27.296177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287388, 0.351131, 0.891131,
		0.732288, -0.519151, 0.440722,
		0.617383, 0.779223, -0.107932,
		44.779175, 34.606464, 27.263798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723774, 34.200401, 27.962904>,  <44.347008, 34.061008, 27.339350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723774, 34.200401, 27.962904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706627, 34.549770, 27.768877>,  <44.696339, 34.759392, 27.652460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706627, 34.549770, 27.768877>,  <44.723774, 34.200401, 27.962904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706627, 34.549770, 27.768877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502322, 0.400844, 0.766157,
		0.863617, 0.276502, 0.421558,
		-0.042865, 0.873425, -0.485069,
		44.693768, 34.811798, 27.623356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949360, 34.739502, 28.477886>,  <44.723774, 34.200401, 27.962904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949360, 34.739502, 28.477886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746178, 34.915009, 28.181381>,  <44.624268, 35.020313, 28.003479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746178, 34.915009, 28.181381>,  <44.949360, 34.739502, 28.477886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746178, 34.915009, 28.181381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421834, 0.623586, 0.658177,
		0.751025, 0.647012, -0.131666,
		-0.507953, 0.438766, -0.741261,
		44.593792, 35.046638, 27.959003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891811, 35.406490, 28.695175>,  <44.949360, 34.739502, 28.477886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891811, 35.406490, 28.695175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608135, 35.433609, 28.414473>,  <44.437931, 35.449879, 28.246052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608135, 35.433609, 28.414473>,  <44.891811, 35.406490, 28.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608135, 35.433609, 28.414473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456806, 0.713981, 0.530621,
		0.537014, 0.696874, -0.475376,
		-0.709186, 0.067796, -0.701754,
		44.395378, 35.453949, 28.203947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687344, 36.145008, 28.589752>,  <44.891811, 35.406490, 28.695175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687344, 36.145008, 28.589752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371555, 35.933723, 28.464703>,  <44.182083, 35.806953, 28.389673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371555, 35.933723, 28.464703>,  <44.687344, 36.145008, 28.589752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371555, 35.933723, 28.464703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596110, 0.538453, 0.595585,
		-0.146262, 0.656553, -0.739963,
		-0.789469, -0.528211, -0.312622,
		44.134716, 35.775261, 28.370916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065563, 36.582581, 28.637774>,  <44.687344, 36.145008, 28.589752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065563, 36.582581, 28.637774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888214, 36.225769, 28.602676>,  <43.781807, 36.011681, 28.581617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888214, 36.225769, 28.602676>,  <44.065563, 36.582581, 28.637774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888214, 36.225769, 28.602676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701564, 0.284432, 0.653381,
		-0.557881, 0.351248, -0.751927,
		-0.443371, -0.892033, -0.087744,
		43.755203, 35.958160, 28.576353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324074, 36.715347, 28.468487>,  <44.065563, 36.582581, 28.637774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324074, 36.715347, 28.468487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348743, 36.339962, 28.604420>,  <43.363544, 36.114731, 28.685980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348743, 36.339962, 28.604420>,  <43.324074, 36.715347, 28.468487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348743, 36.339962, 28.604420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812887, 0.150332, 0.562685,
		-0.579146, -0.310951, -0.753591,
		0.061679, -0.938461, 0.339833,
		43.367249, 36.058422, 28.706369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656876, 36.455460, 28.311234>,  <43.324074, 36.715347, 28.468487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656876, 36.455460, 28.311234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799503, 36.238113, 28.615234>,  <42.885082, 36.107704, 28.797634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799503, 36.238113, 28.615234>,  <42.656876, 36.455460, 28.311234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799503, 36.238113, 28.615234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838140, 0.173354, 0.517175,
		-0.412767, -0.821400, -0.393607,
		0.356574, -0.543370, 0.760003,
		42.906475, 36.075104, 28.843235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158203, 35.907703, 28.507921>,  <42.656876, 36.455460, 28.311234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158203, 35.907703, 28.507921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382317, 35.937645, 28.837885>,  <42.516785, 35.955608, 29.035864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382317, 35.937645, 28.837885>,  <42.158203, 35.907703, 28.507921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382317, 35.937645, 28.837885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827979, 0.022982, 0.560288,
		0.022982, -0.996930, 0.074853,
		-0.560288, -0.074853, -0.824909,
		42.550404, 35.960102, 29.085358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944824, 35.386086, 28.898352>,  <42.158203, 35.907703, 28.507921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944824, 35.386086, 28.898352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122456, 35.638367, 29.152914>,  <42.229034, 35.789734, 29.305651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122456, 35.638367, 29.152914>,  <41.944824, 35.386086, 28.898352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122456, 35.638367, 29.152914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752865, -0.122443, 0.646686,
		0.485791, -0.766302, 0.420462,
		0.444074, 0.630705, 0.636404,
		42.255676, 35.827579, 29.343836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027668, 35.016586, 29.493198>,  <41.944824, 35.386086, 28.898352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027668, 35.016586, 29.493198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040955, 35.401798, 29.600134>,  <42.048927, 35.632927, 29.664295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040955, 35.401798, 29.600134>,  <42.027668, 35.016586, 29.493198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040955, 35.401798, 29.600134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584744, -0.198204, 0.786631,
		0.810537, -0.182451, 0.556543,
		0.033213, 0.963030, 0.267339,
		42.050919, 35.690708, 29.680336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820042, 34.982094, 30.199205>,  <42.027668, 35.016586, 29.493198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820042, 34.982094, 30.199205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801502, 35.373329, 30.118019>,  <41.790379, 35.608070, 30.069307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801502, 35.373329, 30.118019>,  <41.820042, 34.982094, 30.199205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801502, 35.373329, 30.118019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755726, 0.098536, 0.647433,
		0.653246, 0.183398, 0.734599,
		-0.046353, 0.978088, -0.202967,
		41.787598, 35.666756, 30.057129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867493, 35.357021, 30.833220>,  <41.820042, 34.982094, 30.199205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867493, 35.357021, 30.833220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711739, 35.632061, 30.588079>,  <41.618286, 35.797085, 30.440994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711739, 35.632061, 30.588079>,  <41.867493, 35.357021, 30.833220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711739, 35.632061, 30.588079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658826, 0.257062, 0.707013,
		0.643682, 0.679064, 0.352910,
		-0.389387, 0.687598, -0.612851,
		41.594921, 35.838341, 30.404224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945210, 35.983498, 31.179180>,  <41.867493, 35.357021, 30.833220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945210, 35.983498, 31.179180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651890, 36.078331, 30.924286>,  <41.475899, 36.135231, 30.771349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651890, 36.078331, 30.924286>,  <41.945210, 35.983498, 31.179180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651890, 36.078331, 30.924286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557015, 0.327968, 0.763002,
		0.389889, 0.914455, -0.108438,
		-0.733295, 0.237084, -0.637236,
		41.431900, 36.149456, 30.733114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744797, 36.613945, 31.512217>,  <41.945210, 35.983498, 31.179180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744797, 36.613945, 31.512217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447498, 36.519180, 31.261950>,  <41.269119, 36.462322, 31.111790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447498, 36.519180, 31.261950>,  <41.744797, 36.613945, 31.512217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447498, 36.519180, 31.261950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668772, 0.288554, 0.685187,
		0.018214, 0.927691, -0.372904,
		-0.743244, -0.236908, -0.625670,
		41.224525, 36.448109, 31.074249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347328, 37.183090, 31.516125>,  <41.744797, 36.613945, 31.512217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347328, 37.183090, 31.516125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135475, 36.860031, 31.412437>,  <41.008362, 36.666195, 31.350225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135475, 36.860031, 31.412437>,  <41.347328, 37.183090, 31.516125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135475, 36.860031, 31.412437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671626, 0.212650, 0.709717,
		-0.518077, 0.549990, -0.655063,
		-0.529636, -0.807645, -0.259219,
		40.976585, 36.617737, 31.334671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649105, 37.397362, 31.460257>,  <41.347328, 37.183090, 31.516125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649105, 37.397362, 31.460257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655838, 37.007256, 31.548422>,  <40.659878, 36.773193, 31.601322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655838, 37.007256, 31.548422>,  <40.649105, 37.397362, 31.460257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655838, 37.007256, 31.548422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750897, 0.133228, 0.646842,
		-0.660205, -0.176400, -0.730078,
		0.016836, -0.975261, 0.220415,
		40.660889, 36.714676, 31.614546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949543, 37.371033, 31.554218>,  <40.649105, 37.397362, 31.460257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949543, 37.371033, 31.554218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114590, 37.042133, 31.711012>,  <40.213615, 36.844791, 31.805088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114590, 37.042133, 31.711012>,  <39.949543, 37.371033, 31.554218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114590, 37.042133, 31.711012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748164, -0.060440, 0.660755,
		-0.519616, -0.565905, -0.640118,
		0.412613, -0.822252, 0.391984,
		40.238373, 36.795456, 31.828608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423901, 36.954571, 31.814558>,  <39.949543, 37.371033, 31.554218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423901, 36.954571, 31.814558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740749, 36.806652, 32.008793>,  <39.930859, 36.717899, 32.125336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740749, 36.806652, 32.008793>,  <39.423901, 36.954571, 31.814558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740749, 36.806652, 32.008793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571523, -0.170105, 0.802762,
		-0.214266, -0.913404, -0.346096,
		0.792119, -0.369807, 0.485584,
		39.978386, 36.695713, 32.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153614, 36.420193, 32.110554>,  <39.423901, 36.954571, 31.814558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153614, 36.420193, 32.110554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499294, 36.477482, 32.303486>,  <39.706703, 36.511856, 32.419247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499294, 36.477482, 32.303486>,  <39.153614, 36.420193, 32.110554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499294, 36.477482, 32.303486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443885, -0.234341, 0.864899,
		0.236906, -0.961546, -0.138942,
		0.864200, 0.143225, 0.482333,
		39.758553, 36.520451, 32.448185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138977, 35.939636, 32.546593>,  <39.153614, 36.420193, 32.110554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138977, 35.939636, 32.546593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403103, 36.198780, 32.698521>,  <39.561577, 36.354267, 32.789677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403103, 36.198780, 32.698521>,  <39.138977, 35.939636, 32.546593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403103, 36.198780, 32.698521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400660, -0.123855, 0.907817,
		0.635181, -0.751622, 0.177789,
		0.660315, 0.647861, 0.379816,
		39.601196, 36.393139, 32.812466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402214, 35.591682, 33.164257>,  <39.138977, 35.939636, 32.546593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402214, 35.591682, 33.164257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491009, 35.980057, 33.200035>,  <39.544285, 36.213081, 33.221504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491009, 35.980057, 33.200035>,  <39.402214, 35.591682, 33.164257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491009, 35.980057, 33.200035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269210, -0.027138, 0.962699,
		0.937148, -0.237790, 0.255362,
		0.221991, 0.970937, 0.089448,
		39.557606, 36.271339, 33.226868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751572, 35.692902, 33.834957>,  <39.402214, 35.591682, 33.164257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751572, 35.692902, 33.834957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584045, 36.041409, 33.732594>,  <39.483528, 36.250511, 33.671173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584045, 36.041409, 33.732594>,  <39.751572, 35.692902, 33.834957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584045, 36.041409, 33.732594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254486, 0.157912, 0.954097,
		0.871681, 0.464719, 0.155588,
		-0.418818, 0.871263, -0.255913,
		39.458401, 36.302788, 33.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027683, 36.124668, 34.295071>,  <39.751572, 35.692902, 33.834957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027683, 36.124668, 34.295071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709957, 36.326488, 34.159721>,  <39.519321, 36.447582, 34.078510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709957, 36.326488, 34.159721>,  <40.027683, 36.124668, 34.295071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709957, 36.326488, 34.159721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256590, 0.226231, 0.939671,
		0.550663, 0.833215, -0.050235,
		-0.794312, 0.504552, -0.338372,
		39.471664, 36.477856, 34.058208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964508, 36.755123, 34.777359>,  <40.027683, 36.124668, 34.295071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964508, 36.755123, 34.777359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604473, 36.716534, 34.607403>,  <39.388451, 36.693382, 34.505428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604473, 36.716534, 34.607403>,  <39.964508, 36.755123, 34.777359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604473, 36.716534, 34.607403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435303, 0.241048, 0.867414,
		0.018738, 0.965706, -0.258959,
		-0.900089, -0.096472, -0.424891,
		39.334446, 36.687592, 34.479935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480968, 37.392670, 35.101948>,  <39.964508, 36.755123, 34.777359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480968, 37.392670, 35.101948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230473, 37.108921, 34.972569>,  <39.080177, 36.938671, 34.894939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230473, 37.108921, 34.972569>,  <39.480968, 37.392670, 35.101948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230473, 37.108921, 34.972569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577605, 0.143493, 0.803606,
		-0.523641, 0.690075, -0.499597,
		-0.626236, -0.709371, -0.323452,
		39.042603, 36.896111, 34.875534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806355, 37.757454, 35.156712>,  <39.480968, 37.392670, 35.101948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806355, 37.757454, 35.156712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718388, 37.368477, 35.125755>,  <38.665607, 37.135090, 35.107182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718388, 37.368477, 35.125755>,  <38.806355, 37.757454, 35.156712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718388, 37.368477, 35.125755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495675, 0.043062, 0.867440,
		-0.840205, 0.229122, -0.491486,
		-0.219914, -0.972445, -0.077389,
		38.652412, 37.076744, 35.102539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116604, 37.781391, 35.392738>,  <38.806355, 37.757454, 35.156712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116604, 37.781391, 35.392738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235161, 37.401199, 35.430138>,  <38.306297, 37.173084, 35.452576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235161, 37.401199, 35.430138>,  <38.116604, 37.781391, 35.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235161, 37.401199, 35.430138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568917, -0.097076, 0.816645,
		-0.767127, -0.295241, -0.569516,
		0.296394, -0.950478, 0.093498,
		38.324078, 37.116055, 35.458187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518589, 37.426041, 35.594883>,  <38.116604, 37.781391, 35.392738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518589, 37.426041, 35.594883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816582, 37.180473, 35.699268>,  <37.995377, 37.033131, 35.761902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816582, 37.180473, 35.699268>,  <37.518589, 37.426041, 35.594883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816582, 37.180473, 35.699268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434749, -0.150106, 0.887954,
		-0.505961, -0.774963, -0.378728,
		0.744981, -0.613922, 0.260966,
		38.040077, 36.996296, 35.777557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191475, 36.809021, 35.826385>,  <37.518589, 37.426041, 35.594883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191475, 36.809021, 35.826385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558308, 36.787502, 35.984409>,  <37.778408, 36.774590, 36.079224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558308, 36.787502, 35.984409>,  <37.191475, 36.809021, 35.826385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558308, 36.787502, 35.984409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398383, -0.083902, 0.913374,
		-0.015987, -0.995021, -0.098376,
		0.917080, -0.053793, 0.395058,
		37.833431, 36.771362, 36.102928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246326, 36.186440, 36.285934>,  <37.191475, 36.809021, 35.826385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246326, 36.186440, 36.285934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523174, 36.443161, 36.418030>,  <37.689281, 36.597195, 36.497288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523174, 36.443161, 36.418030>,  <37.246326, 36.186440, 36.285934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523174, 36.443161, 36.418030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422881, -0.010212, 0.906128,
		0.584933, -0.766797, 0.264341,
		0.692117, 0.641809, 0.330237,
		37.730808, 36.635704, 36.517101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545979, 35.906601, 36.881386>,  <37.246326, 36.186440, 36.285934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545979, 35.906601, 36.881386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622066, 36.297260, 36.921345>,  <37.667721, 36.531654, 36.945320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622066, 36.297260, 36.921345>,  <37.545979, 35.906601, 36.881386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622066, 36.297260, 36.921345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308813, -0.037065, 0.950400,
		0.931907, -0.211635, 0.294551,
		0.190220, 0.976646, 0.099897,
		37.679134, 36.590256, 36.951313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120121, 36.073643, 37.421394>,  <37.545979, 35.906601, 36.881386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120121, 36.073643, 37.421394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934460, 36.427898, 37.427120>,  <37.823063, 36.640453, 37.430557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934460, 36.427898, 37.427120>,  <38.120121, 36.073643, 37.421394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934460, 36.427898, 37.427120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190997, -0.115859, 0.974729,
		0.864916, 0.449692, 0.222931,
		-0.464156, 0.885638, 0.014318,
		37.795212, 36.693588, 37.431416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310982, 36.388180, 38.011627>,  <38.120121, 36.073643, 37.421394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310982, 36.388180, 38.011627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983395, 36.596714, 37.915710>,  <37.786842, 36.721832, 37.858158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983395, 36.596714, 37.915710>,  <38.310982, 36.388180, 38.011627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983395, 36.596714, 37.915710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287338, -0.010845, 0.957768,
		0.496713, 0.853285, 0.158680,
		-0.818970, 0.521331, -0.239795,
		37.737705, 36.753113, 37.843773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194233, 36.783504, 38.643333>,  <38.310982, 36.388180, 38.011627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194233, 36.783504, 38.643333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851181, 36.834064, 38.443935>,  <37.645351, 36.864399, 38.324295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851181, 36.834064, 38.443935>,  <38.194233, 36.783504, 38.643333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851181, 36.834064, 38.443935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507960, -0.056759, 0.859509,
		0.080348, 0.990354, 0.112884,
		-0.857625, 0.126400, -0.498500,
		37.593895, 36.871986, 38.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695850, 37.361996, 38.959595>,  <38.194233, 36.783504, 38.643333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695850, 37.361996, 38.959595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470287, 37.090088, 38.772011>,  <37.334949, 36.926941, 38.659462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470287, 37.090088, 38.772011>,  <37.695850, 37.361996, 38.959595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470287, 37.090088, 38.772011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493753, -0.177669, 0.851259,
		-0.661983, 0.711576, -0.235452,
		-0.563903, -0.679774, -0.468957,
		37.301117, 36.886154, 38.631325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017269, 37.589916, 39.145554>,  <37.695850, 37.361996, 38.959595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017269, 37.589916, 39.145554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030422, 37.200825, 39.053715>,  <37.038315, 36.967369, 38.998611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030422, 37.200825, 39.053715>,  <37.017269, 37.589916, 39.145554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030422, 37.200825, 39.053715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573551, -0.206494, 0.792717,
		-0.818510, 0.105618, -0.564700,
		0.032882, -0.972730, -0.229595,
		37.040287, 36.909004, 38.984837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305370, 37.282848, 38.993629>,  <37.017269, 37.589916, 39.145554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305370, 37.282848, 38.993629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533607, 36.984783, 39.131702>,  <36.670551, 36.805943, 39.214546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533607, 36.984783, 39.131702>,  <36.305370, 37.282848, 38.993629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533607, 36.984783, 39.131702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679452, -0.192272, 0.708080,
		-0.461268, -0.638560, -0.616014,
		0.570593, -0.745166, 0.345182,
		36.704784, 36.761234, 39.235256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786922, 36.827915, 39.336227>,  <36.305370, 37.282848, 38.993629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786922, 36.827915, 39.336227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137772, 36.683090, 39.462444>,  <36.348282, 36.596195, 39.538174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137772, 36.683090, 39.462444>,  <35.786922, 36.827915, 39.336227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137772, 36.683090, 39.462444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457267, -0.428681, 0.779192,
		-0.146853, -0.827732, -0.541566,
		0.877121, -0.362067, 0.315541,
		36.400909, 36.574471, 39.557106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621025, 36.246716, 39.583847>,  <35.786922, 36.827915, 39.336227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621025, 36.246716, 39.583847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981094, 36.283939, 39.754040>,  <36.197136, 36.306274, 39.856155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981094, 36.283939, 39.754040>,  <35.621025, 36.246716, 39.583847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981094, 36.283939, 39.754040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346219, -0.439796, 0.828681,
		0.264243, -0.893263, -0.363671,
		0.900171, 0.093064, 0.425477,
		36.251144, 36.311859, 39.881683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651714, 35.726692, 40.002594>,  <35.621025, 36.246716, 39.583847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651714, 35.726692, 40.002594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949677, 35.945930, 40.154758>,  <36.128452, 36.077473, 40.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949677, 35.945930, 40.154758>,  <35.651714, 35.726692, 40.002594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949677, 35.945930, 40.154758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173952, -0.390905, 0.903844,
		0.644094, -0.739450, -0.195846,
		0.744905, 0.548093, 0.380409,
		36.173149, 36.110359, 40.268883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129494, 35.237541, 40.324181>,  <35.651714, 35.726692, 40.002594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129494, 35.237541, 40.324181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150036, 35.594597, 40.503319>,  <36.162361, 35.808830, 40.610802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150036, 35.594597, 40.503319>,  <36.129494, 35.237541, 40.324181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150036, 35.594597, 40.503319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115606, -0.440107, 0.890472,
		0.991967, -0.097504, 0.080592,
		0.051355, 0.892636, 0.447844,
		36.165443, 35.862389, 40.637672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517967, 35.034851, 40.793720>,  <36.129494, 35.237541, 40.324181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517967, 35.034851, 40.793720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347015, 35.373730, 40.919960>,  <36.244442, 35.577057, 40.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347015, 35.373730, 40.919960>,  <36.517967, 35.034851, 40.793720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347015, 35.373730, 40.919960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174337, -0.419765, 0.890732,
		0.887102, 0.325663, 0.327098,
		-0.427383, 0.847196, 0.315599,
		36.218800, 35.627888, 41.014641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805534, 35.075386, 41.385181>,  <36.517967, 35.034851, 40.793720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805534, 35.075386, 41.385181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459015, 35.273685, 41.409710>,  <36.251102, 35.392666, 41.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459015, 35.273685, 41.409710>,  <36.805534, 35.075386, 41.385181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459015, 35.273685, 41.409710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142119, -0.362291, 0.921166,
		0.478881, 0.789291, 0.384307,
		-0.866300, 0.495746, 0.061321,
		36.199123, 35.422409, 41.428104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664112, 35.057617, 42.047535>,  <36.805534, 35.075386, 41.385181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664112, 35.057617, 42.047535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329830, 35.236259, 41.919701>,  <36.129261, 35.343445, 41.842999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329830, 35.236259, 41.919701>,  <36.664112, 35.057617, 42.047535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329830, 35.236259, 41.919701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471541, -0.285244, 0.834437,
		0.281506, 0.848042, 0.448975,
		-0.835705, 0.446609, -0.319588,
		36.079117, 35.370243, 41.823826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381214, 35.545025, 42.572083>,  <36.664112, 35.057617, 42.047535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381214, 35.545025, 42.572083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100449, 35.388020, 42.334347>,  <35.931988, 35.293816, 42.191704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100449, 35.388020, 42.334347>,  <36.381214, 35.545025, 42.572083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100449, 35.388020, 42.334347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378689, -0.501073, 0.778152,
		-0.603246, 0.771270, 0.203070,
		-0.701918, -0.392517, -0.594341,
		35.889874, 35.270264, 42.156044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884670, 35.628078, 42.971947>,  <36.381214, 35.545025, 42.572083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884670, 35.628078, 42.971947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790676, 35.358551, 42.691730>,  <35.734280, 35.196835, 42.523602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790676, 35.358551, 42.691730>,  <35.884670, 35.628078, 42.971947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790676, 35.358551, 42.691730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408217, -0.585665, 0.700254,
		-0.882123, 0.450521, -0.137441,
		-0.234985, -0.673815, -0.700539,
		35.720181, 35.156406, 42.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162151, 35.456291, 43.027817>,  <35.884670, 35.628078, 42.971947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162151, 35.456291, 43.027817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357212, 35.151707, 42.856998>,  <35.474247, 34.968956, 42.754505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357212, 35.151707, 42.856998>,  <35.162151, 35.456291, 43.027817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357212, 35.151707, 42.856998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243177, -0.588266, 0.771238,
		-0.838488, -0.272247, -0.472038,
		0.487651, -0.761463, -0.427049,
		35.503506, 34.923267, 42.728882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791889, 34.962631, 42.537453>,  <35.162151, 35.456291, 43.027817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791889, 34.962631, 42.537453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014782, 34.687115, 42.351955>,  <35.148518, 34.521805, 42.240658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014782, 34.687115, 42.351955>,  <34.791889, 34.962631, 42.537453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014782, 34.687115, 42.351955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249937, -0.393461, 0.884715,
		-0.791852, -0.608895, -0.047092,
		0.557228, -0.688793, -0.463748,
		35.181950, 34.480476, 42.212830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429737, 34.278397, 42.588734>,  <34.791889, 34.962631, 42.537453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429737, 34.278397, 42.588734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828575, 34.256306, 42.567730>,  <35.067879, 34.243050, 42.555126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828575, 34.256306, 42.567730>,  <34.429737, 34.278397, 42.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828575, 34.256306, 42.567730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013770, -0.547096, 0.836957,
		-0.074952, -0.835246, -0.544744,
		0.997092, -0.055230, -0.052508,
		35.127705, 34.239735, 42.551979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589737, 33.530643, 42.697456>,  <34.429737, 34.278397, 42.588734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589737, 33.530643, 42.697456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865620, 33.793743, 42.818565>,  <35.031151, 33.951603, 42.891232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865620, 33.793743, 42.818565>,  <34.589737, 33.530643, 42.697456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865620, 33.793743, 42.818565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117238, -0.514066, 0.849701,
		0.714534, -0.550548, -0.431668,
		0.689707, 0.657748, 0.302773,
		35.072533, 33.991066, 42.909397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241524, 33.242981, 42.760571>,  <34.589737, 33.530643, 42.697456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241524, 33.242981, 42.760571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198517, 33.554394, 43.007904>,  <35.172714, 33.741241, 43.156303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198517, 33.554394, 43.007904>,  <35.241524, 33.242981, 42.760571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198517, 33.554394, 43.007904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113512, -0.608258, 0.785581,
		0.987702, 0.154651, -0.022974,
		-0.107517, 0.778528, 0.618332,
		35.166264, 33.787952, 43.193405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761955, 33.329411, 43.225670>,  <35.241524, 33.242981, 42.760571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761955, 33.329411, 43.225670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428654, 33.460381, 43.403873>,  <35.228672, 33.538963, 43.510796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428654, 33.460381, 43.403873>,  <35.761955, 33.329411, 43.225670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428654, 33.460381, 43.403873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036428, -0.771522, 0.635159,
		0.551684, 0.545480, 0.630949,
		-0.833257, 0.327423, 0.445507,
		35.178677, 33.558609, 43.537525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149456, 34.044109, 43.338554>,  <35.761955, 33.329411, 43.225670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149456, 34.044109, 43.338554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805195, 33.981728, 43.144665>,  <35.598637, 33.944298, 43.028332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805195, 33.981728, 43.144665>,  <36.149456, 34.044109, 43.338554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805195, 33.981728, 43.144665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328477, 0.557332, -0.762551,
		0.389074, -0.815512, -0.428441,
		-0.860654, -0.155955, -0.484720,
		35.546997, 33.934940, 42.999249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282257, 33.870560, 42.657455>,  <36.149456, 34.044109, 43.338554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282257, 33.870560, 42.657455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925488, 34.050030, 42.679947>,  <35.711426, 34.157711, 42.693439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925488, 34.050030, 42.679947>,  <36.282257, 33.870560, 42.657455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925488, 34.050030, 42.679947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263273, 0.616357, -0.742154,
		-0.367644, -0.647141, -0.667867,
		-0.891922, 0.448680, 0.056225,
		35.657909, 34.184635, 42.696815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992638, 33.943810, 42.013302>,  <36.282257, 33.870560, 42.657455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992638, 33.943810, 42.013302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832726, 34.238720, 42.231148>,  <35.736778, 34.415665, 42.361855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832726, 34.238720, 42.231148>,  <35.992638, 33.943810, 42.013302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832726, 34.238720, 42.231148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180037, 0.645746, -0.742024,
		-0.898755, -0.198598, -0.390894,
		-0.399782, 0.737273, 0.544612,
		35.712791, 34.459904, 42.394531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452259, 34.210739, 41.577908>,  <35.992638, 33.943810, 42.013302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452259, 34.210739, 41.577908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536438, 34.494335, 41.847141>,  <35.586945, 34.664494, 42.008682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536438, 34.494335, 41.847141>,  <35.452259, 34.210739, 41.577908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536438, 34.494335, 41.847141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179476, 0.704824, -0.686303,
		-0.960989, 0.023630, 0.275577,
		0.210450, 0.708989, 0.673087,
		35.599571, 34.707031, 42.049068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982632, 34.700378, 41.491642>,  <35.452259, 34.210739, 41.577908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982632, 34.700378, 41.491642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300446, 34.868370, 41.667065>,  <35.491135, 34.969166, 41.772320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300446, 34.868370, 41.667065>,  <34.982632, 34.700378, 41.491642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300446, 34.868370, 41.667065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038651, 0.755752, -0.653716,
		-0.605987, 0.502450, 0.616704,
		0.794535, 0.419979, 0.438556,
		35.538807, 34.994366, 41.798630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980896, 35.250160, 41.069683>,  <34.982632, 34.700378, 41.491642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980896, 35.250160, 41.069683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271362, 35.320255, 41.335606>,  <35.445641, 35.362312, 41.495159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271362, 35.320255, 41.335606>,  <34.980896, 35.250160, 41.069683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271362, 35.320255, 41.335606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242101, 0.839858, -0.485825,
		-0.643481, 0.513742, 0.567452,
		0.726167, 0.175239, 0.664810,
		35.489212, 35.372826, 41.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004696, 35.890533, 41.488644>,  <34.980896, 35.250160, 41.069683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004696, 35.890533, 41.488644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386532, 35.773750, 41.464897>,  <35.615631, 35.703678, 41.450649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386532, 35.773750, 41.464897>,  <35.004696, 35.890533, 41.488644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386532, 35.773750, 41.464897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221210, 0.828019, -0.515218,
		0.199578, 0.478688, 0.855001,
		0.954586, -0.291961, -0.059363,
		35.672909, 35.686161, 41.447086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385258, 36.200218, 41.004757>,  <35.004696, 35.890533, 41.488644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385258, 36.200218, 41.004757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667526, 36.092381, 41.266857>,  <35.836887, 36.027679, 41.424118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667526, 36.092381, 41.266857>,  <35.385258, 36.200218, 41.004757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667526, 36.092381, 41.266857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602470, 0.715021, -0.354647,
		-0.372906, 0.645032, 0.666989,
		0.705670, -0.269591, 0.655248,
		35.879227, 36.011501, 41.463432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726784, 36.762360, 41.455669>,  <35.385258, 36.200218, 41.004757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726784, 36.762360, 41.455669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919132, 36.433186, 41.334644>,  <36.034542, 36.235683, 41.262028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919132, 36.433186, 41.334644>,  <35.726784, 36.762360, 41.455669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919132, 36.433186, 41.334644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527769, 0.547237, -0.649608,
		0.700156, 0.152698, 0.697470,
		0.480876, -0.822931, -0.302562,
		36.063396, 36.186306, 41.243877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368374, 37.000568, 41.249973>,  <35.726784, 36.762360, 41.455669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368374, 37.000568, 41.249973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321594, 36.650112, 41.062912>,  <36.293526, 36.439838, 40.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321594, 36.650112, 41.062912>,  <36.368374, 37.000568, 41.249973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321594, 36.650112, 41.062912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466868, 0.367105, -0.804530,
		0.876559, -0.312422, 0.366109,
		-0.116953, -0.876143, -0.467649,
		36.286507, 36.387268, 40.922619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976521, 36.746872, 41.029270>,  <36.368374, 37.000568, 41.249973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976521, 36.746872, 41.029270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715397, 36.594242, 40.767506>,  <36.558723, 36.502666, 40.610447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715397, 36.594242, 40.767506>,  <36.976521, 36.746872, 41.029270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715397, 36.594242, 40.767506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645944, 0.170898, -0.744009,
		0.395730, -0.908404, 0.134911,
		-0.652805, -0.381571, -0.654407,
		36.519554, 36.479771, 40.571182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375874, 36.484589, 40.420197>,  <36.976521, 36.746872, 41.029270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375874, 36.484589, 40.420197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015583, 36.449711, 40.249981>,  <36.799408, 36.428783, 40.147854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015583, 36.449711, 40.249981>,  <37.375874, 36.484589, 40.420197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015583, 36.449711, 40.249981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418999, 0.083965, -0.904096,
		0.114564, -0.992646, -0.039094,
		-0.900730, -0.087197, -0.425538,
		36.745365, 36.423553, 40.122318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545345, 36.156353, 39.858952>,  <37.375874, 36.484589, 40.420197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545345, 36.156353, 39.858952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166595, 36.242676, 39.763569>,  <36.939346, 36.294472, 39.706341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166595, 36.242676, 39.763569>,  <37.545345, 36.156353, 39.858952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166595, 36.242676, 39.763569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264642, 0.101510, -0.958989,
		-0.182756, -0.971144, -0.153229,
		-0.946871, 0.215812, -0.238454,
		36.882534, 36.307419, 39.692032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514969, 35.811890, 39.215652>,  <37.545345, 36.156353, 39.858952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514969, 35.811890, 39.215652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207954, 36.068024, 39.227345>,  <37.023746, 36.221706, 39.234360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207954, 36.068024, 39.227345>,  <37.514969, 35.811890, 39.215652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207954, 36.068024, 39.227345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147672, 0.221012, -0.964026,
		-0.623764, -0.735608, -0.264195,
		-0.767536, 0.640339, 0.029231,
		36.977692, 36.260124, 39.236115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993637, 35.610607, 38.612885>,  <37.514969, 35.811890, 39.215652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993637, 35.610607, 38.612885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988029, 35.995777, 38.720650>,  <36.984665, 36.226879, 38.785309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988029, 35.995777, 38.720650>,  <36.993637, 35.610607, 38.612885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988029, 35.995777, 38.720650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275873, 0.262706, -0.924597,
		-0.961092, 0.061360, -0.269328,
		-0.014021, 0.962923, 0.269412,
		36.983822, 36.284653, 38.801472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503208, 36.032375, 38.154781>,  <36.993637, 35.610607, 38.612885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503208, 36.032375, 38.154781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750610, 36.304176, 38.312630>,  <36.899052, 36.467258, 38.407337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750610, 36.304176, 38.312630>,  <36.503208, 36.032375, 38.154781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750610, 36.304176, 38.312630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267051, 0.290538, -0.918843,
		-0.739012, 0.673690, -0.001765,
		0.618502, 0.679507, 0.394620,
		36.936161, 36.508030, 38.431015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473312, 36.605686, 37.676723>,  <36.503208, 36.032375, 38.154781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473312, 36.605686, 37.676723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826683, 36.676193, 37.850380>,  <37.038708, 36.718498, 37.954575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826683, 36.676193, 37.850380>,  <36.473312, 36.605686, 37.676723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826683, 36.676193, 37.850380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319719, 0.450574, -0.833524,
		-0.342540, 0.875164, 0.341694,
		0.883429, 0.176269, 0.434146,
		37.091713, 36.729073, 37.980625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666401, 37.415997, 37.512272>,  <36.473312, 36.605686, 37.676723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666401, 37.415997, 37.512272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991619, 37.210567, 37.621967>,  <37.186749, 37.087311, 37.687786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991619, 37.210567, 37.621967>,  <36.666401, 37.415997, 37.512272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991619, 37.210567, 37.621967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435442, 0.223739, -0.871970,
		0.386459, 0.828364, 0.405539,
		0.813044, -0.513569, 0.274239,
		37.235531, 37.056496, 37.704239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200680, 37.906559, 37.420067>,  <36.666401, 37.415997, 37.512272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200680, 37.906559, 37.420067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320969, 37.526215, 37.390575>,  <37.393143, 37.298008, 37.372883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320969, 37.526215, 37.390575>,  <37.200680, 37.906559, 37.420067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320969, 37.526215, 37.390575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407198, 0.197915, -0.891639,
		0.862414, 0.238111, 0.446705,
		0.300718, -0.950859, -0.073726,
		37.411182, 37.240955, 37.368458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870289, 37.899303, 37.002483>,  <37.200680, 37.906559, 37.420067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870289, 37.899303, 37.002483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830677, 37.501560, 36.987255>,  <37.806911, 37.262917, 36.978119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830677, 37.501560, 36.987255>,  <37.870289, 37.899303, 37.002483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830677, 37.501560, 36.987255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640626, -0.034429, -0.767081,
		0.761441, -0.100355, 0.640419,
		-0.099029, -0.994356, -0.038074,
		37.800968, 37.203255, 36.975834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601925, 37.517960, 36.919006>,  <37.870289, 37.899303, 37.002483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601925, 37.517960, 36.919006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330936, 37.257488, 36.782188>,  <38.168343, 37.101204, 36.700096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330936, 37.257488, 36.782188>,  <38.601925, 37.517960, 36.919006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330936, 37.257488, 36.782188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592027, -0.206778, -0.778940,
		0.436501, -0.730212, 0.525602,
		-0.677474, -0.651178, -0.342046,
		38.127693, 37.062134, 36.679573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030125, 36.945972, 36.725296>,  <38.601925, 37.517960, 36.919006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030125, 36.945972, 36.725296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677856, 36.884068, 36.546204>,  <38.466496, 36.846924, 36.438747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677856, 36.884068, 36.546204>,  <39.030125, 36.945972, 36.725296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677856, 36.884068, 36.546204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473301, -0.327336, -0.817825,
		-0.019989, -0.932148, 0.361525,
		-0.880674, -0.154762, -0.447730,
		38.413654, 36.837639, 36.411884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336121, 37.539074, 36.588318>,  <39.030125, 36.945972, 36.725296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336121, 37.539074, 36.588318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034439, 37.664310, 36.357441>,  <38.853432, 37.739452, 36.218914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034439, 37.664310, 36.357441>,  <39.336121, 37.539074, 36.588318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034439, 37.664310, 36.357441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292515, -0.626782, -0.722205,
		-0.587891, -0.713526, 0.381136,
		-0.754201, 0.313090, -0.577196,
		38.808178, 37.758236, 36.184280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008839, 37.294323, 36.936890>,  <39.336121, 37.539074, 36.588318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008839, 37.294323, 36.936890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150112, 37.002934, 36.702080>,  <40.234875, 36.828102, 36.561195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150112, 37.002934, 36.702080>,  <40.008839, 37.294323, 36.936890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150112, 37.002934, 36.702080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799546, -0.090782, 0.593704,
		-0.485787, -0.679035, 0.550384,
		0.353181, -0.728471, -0.587020,
		40.256065, 36.784393, 36.525974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263111, 36.688103, 37.350243>,  <40.008839, 37.294323, 36.936890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263111, 36.688103, 37.350243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467110, 36.715431, 37.007259>,  <40.589508, 36.731831, 36.801468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467110, 36.715431, 37.007259>,  <40.263111, 36.688103, 37.350243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467110, 36.715431, 37.007259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858535, -0.102028, 0.502502,
		-0.053151, -0.992432, -0.110693,
		0.509993, 0.068325, -0.857460,
		40.620110, 36.735928, 36.750023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622719, 36.038254, 37.075844>,  <40.263111, 36.688103, 37.350243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622719, 36.038254, 37.075844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823807, 36.349312, 36.924828>,  <40.944462, 36.535946, 36.834217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823807, 36.349312, 36.924828>,  <40.622719, 36.038254, 37.075844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823807, 36.349312, 36.924828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846347, -0.353864, 0.398091,
		0.175975, -0.519662, -0.836053,
		0.502722, 0.777645, -0.377543,
		40.974625, 36.582603, 36.811565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152725, 35.773998, 36.723652>,  <40.622719, 36.038254, 37.075844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152725, 35.773998, 36.723652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234776, 36.136726, 36.870953>,  <41.284004, 36.354362, 36.959332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234776, 36.136726, 36.870953>,  <41.152725, 35.773998, 36.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234776, 36.136726, 36.870953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843656, -0.354554, 0.403158,
		0.496155, 0.227981, -0.837768,
		0.205122, 0.906816, 0.368251,
		41.296310, 36.408772, 36.981426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822151, 36.104961, 36.403259>,  <41.152725, 35.773998, 36.723652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822151, 36.104961, 36.403259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749134, 36.231022, 36.775787>,  <41.705322, 36.306660, 36.999306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749134, 36.231022, 36.775787>,  <41.822151, 36.104961, 36.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749134, 36.231022, 36.775787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879602, -0.370878, 0.297907,
		0.439293, 0.873573, -0.209507,
		-0.182542, 0.315151, 0.931321,
		41.694370, 36.325565, 37.055183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542179, 36.217144, 36.674046>,  <41.822151, 36.104961, 36.403259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542179, 36.217144, 36.674046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275734, 36.197353, 36.971729>,  <42.115868, 36.185478, 37.150337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275734, 36.197353, 36.971729>,  <42.542179, 36.217144, 36.674046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275734, 36.197353, 36.971729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740933, -0.158275, 0.652662,
		0.085498, 0.986155, 0.142088,
		-0.666115, -0.049476, 0.744206,
		42.075901, 36.182510, 37.194992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580860, 35.582001, 36.402557>,  <42.542179, 36.217144, 36.674046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580860, 35.582001, 36.402557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545116, 35.185875, 36.360058>,  <42.523670, 34.948200, 36.334557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545116, 35.185875, 36.360058>,  <42.580860, 35.582001, 36.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545116, 35.185875, 36.360058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991468, -0.078283, -0.104226,
		0.094898, -0.114660, 0.988862,
		-0.089362, -0.990315, -0.106253,
		42.518307, 34.888779, 36.328182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092632, 35.283684, 36.884243>,  <42.580860, 35.582001, 36.402557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092632, 35.283684, 36.884243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981125, 35.036808, 36.589935>,  <42.914223, 34.888683, 36.413349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981125, 35.036808, 36.589935>,  <43.092632, 35.283684, 36.884243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981125, 35.036808, 36.589935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944652, -0.038228, -0.325838,
		0.172978, -0.785882, 0.593690,
		-0.278766, -0.617193, -0.735773,
		42.897495, 34.851650, 36.369202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415474, 34.569038, 36.828861>,  <43.092632, 35.283684, 36.884243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415474, 34.569038, 36.828861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312248, 34.696938, 36.464188>,  <43.250313, 34.773678, 36.245384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312248, 34.696938, 36.464188>,  <43.415474, 34.569038, 36.828861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312248, 34.696938, 36.464188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939477, -0.137061, -0.314002,
		-0.225358, -0.937535, -0.265030,
		-0.258063, 0.319753, -0.911681,
		43.234829, 34.792862, 36.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728069, 34.216030, 36.377338>,  <43.415474, 34.569038, 36.828861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728069, 34.216030, 36.377338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666767, 34.551537, 36.168346>,  <43.629986, 34.752842, 36.042950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666767, 34.551537, 36.168346>,  <43.728069, 34.216030, 36.377338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666767, 34.551537, 36.168346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933799, -0.050061, -0.354278,
		-0.323312, -0.542188, -0.775566,
		-0.153259, 0.838765, -0.522480,
		43.620789, 34.803165, 36.011604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814503, 34.134449, 35.669975>,  <43.728069, 34.216030, 36.377338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814503, 34.134449, 35.669975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905544, 34.503311, 35.795082>,  <43.960171, 34.724628, 35.870148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905544, 34.503311, 35.795082>,  <43.814503, 34.134449, 35.669975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905544, 34.503311, 35.795082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948805, -0.137780, -0.284230,
		-0.219010, 0.361451, -0.906304,
		0.227605, 0.922155, 0.312771,
		43.973827, 34.779957, 35.888912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208218, 34.590496, 35.197163>,  <43.814503, 34.134449, 35.669975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208218, 34.590496, 35.197163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322784, 34.755180, 35.543217>,  <44.391525, 34.853989, 35.750851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322784, 34.755180, 35.543217>,  <44.208218, 34.590496, 35.197163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322784, 34.755180, 35.543217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885968, 0.229930, -0.402731,
		-0.364729, 0.881833, -0.298903,
		0.286415, 0.411706, 0.865138,
		44.408710, 34.878693, 35.802757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376862, 35.290890, 35.090420>,  <44.208218, 34.590496, 35.197163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376862, 35.290890, 35.090420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574654, 35.152180, 35.409225>,  <44.693329, 35.068954, 35.600510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574654, 35.152180, 35.409225>,  <44.376862, 35.290890, 35.090420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574654, 35.152180, 35.409225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860782, 0.322588, -0.393688,
		-0.120589, 0.880731, 0.458008,
		0.494481, -0.346771, 0.797018,
		44.723000, 35.048149, 35.648331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945583, 35.738171, 35.163433>,  <44.376862, 35.290890, 35.090420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945583, 35.738171, 35.163433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069065, 35.409275, 35.354691>,  <45.143154, 35.211937, 35.469444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069065, 35.409275, 35.354691>,  <44.945583, 35.738171, 35.163433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069065, 35.409275, 35.354691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949020, 0.232582, -0.212758,
		0.063731, 0.519447, 0.852123,
		0.308705, -0.822241, 0.478143,
		45.161678, 35.162601, 35.498135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457954, 35.895771, 35.558815>,  <44.945583, 35.738171, 35.163433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457954, 35.895771, 35.558815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514904, 35.502785, 35.510662>,  <45.549072, 35.266994, 35.481770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514904, 35.502785, 35.510662>,  <45.457954, 35.895771, 35.558815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514904, 35.502785, 35.510662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988076, 0.148270, -0.041486,
		0.058607, -0.113036, 0.991861,
		0.142374, -0.982466, -0.120378,
		45.557617, 35.208046, 35.474548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927677, 35.606579, 36.056099>,  <45.457954, 35.895771, 35.558815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927677, 35.606579, 36.056099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918159, 35.382690, 35.724762>,  <45.912449, 35.248360, 35.525959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918159, 35.382690, 35.724762>,  <45.927677, 35.606579, 36.056099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918159, 35.382690, 35.724762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960493, 0.217021, -0.174230,
		0.277287, -0.799761, 0.532442,
		-0.023792, -0.559718, -0.828341,
		45.911022, 35.214775, 35.476261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335606, 34.922867, 36.003345>,  <45.927677, 35.606579, 36.056099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335606, 34.922867, 36.003345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322273, 35.111431, 35.650833>,  <46.314274, 35.224571, 35.439327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322273, 35.111431, 35.650833>,  <46.335606, 34.922867, 36.003345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322273, 35.111431, 35.650833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999264, -0.001043, -0.038351,
		-0.018998, -0.881911, -0.471033,
		-0.033331, 0.471415, -0.881281,
		46.312275, 35.252857, 35.386448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727077, 34.551445, 35.601391>,  <46.335606, 34.922867, 36.003345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727077, 34.551445, 35.601391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.724251, 34.928562, 35.468071>,  <46.722553, 35.154831, 35.388081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.724251, 34.928562, 35.468071>,  <46.727077, 34.551445, 35.601391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.724251, 34.928562, 35.468071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999131, -0.007039, -0.041093,
		-0.041088, -0.333301, -0.941925,
		-0.007066, 0.942794, -0.333300,
		46.722130, 35.211399, 35.368080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920685, 34.551544, 34.874454>,  <46.727077, 34.551445, 35.601391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920685, 34.551544, 34.874454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038433, 34.856556, 35.104897>,  <47.109081, 35.039562, 35.243164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038433, 34.856556, 35.104897>,  <46.920685, 34.551544, 34.874454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038433, 34.856556, 35.104897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928854, -0.370131, 0.015287,
		0.224893, 0.530620, -0.817230,
		0.294371, 0.762525, 0.576108,
		47.126743, 35.085312, 35.277729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519493, 35.107853, 34.519180>,  <46.920685, 34.551544, 34.874454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519493, 35.107853, 34.519180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494480, 35.012264, 34.906784>,  <47.479473, 34.954910, 35.139347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494480, 35.012264, 34.906784>,  <47.519493, 35.107853, 34.519180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494480, 35.012264, 34.906784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831076, -0.550077, -0.082027,
		0.552633, 0.800192, 0.233001,
		-0.062532, -0.238972, 0.969011,
		47.475719, 34.940571, 35.197487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.344967, 29.974564, 30.520887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009274, 29.851927, 30.341248>,  <41.807858, 29.778345, 30.233463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009274, 29.851927, 30.341248>,  <42.344967, 29.974564, 30.520887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009274, 29.851927, 30.341248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510318, 0.158863, 0.845185,
		-0.187781, 0.938491, -0.289781,
		-0.839234, -0.306590, -0.449098,
		41.757504, 29.759951, 30.206518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747387, 30.445578, 30.824251>,  <42.344967, 29.974564, 30.520887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747387, 30.445578, 30.824251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.543587, 30.161949, 30.629263>,  <41.421307, 29.991772, 30.512270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.543587, 30.161949, 30.629263>,  <41.747387, 30.445578, 30.824251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543587, 30.161949, 30.629263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790273, 0.161478, 0.591095,
		-0.340413, 0.686397, -0.642633,
		-0.509497, -0.709072, -0.487472,
		41.390739, 29.949228, 30.483021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113464, 30.674309, 30.393589>,  <41.747387, 30.445578, 30.824251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113464, 30.674309, 30.393589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.070107, 30.301210, 30.531128>,  <41.044090, 30.077351, 30.613651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.070107, 30.301210, 30.531128>,  <41.113464, 30.674309, 30.393589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070107, 30.301210, 30.531128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785314, 0.292422, 0.545684,
		-0.609535, -0.210882, -0.764197,
		-0.108393, -0.932748, 0.343849,
		41.037590, 30.021385, 30.634283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403023, 30.575634, 30.396452>,  <41.113464, 30.674309, 30.393589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403023, 30.575634, 30.396452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.531689, 30.287128, 30.641830>,  <40.608887, 30.114025, 30.789057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.531689, 30.287128, 30.641830>,  <40.403023, 30.575634, 30.396452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531689, 30.287128, 30.641830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764199, 0.184765, 0.617949,
		-0.559047, -0.667563, -0.491758,
		0.321660, -0.721264, 0.613444,
		40.628185, 30.070749, 30.825863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806026, 30.293324, 30.682354>,  <40.403023, 30.575634, 30.396452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806026, 30.293324, 30.682354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057121, 30.142923, 30.954990>,  <40.207779, 30.052683, 31.118572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057121, 30.142923, 30.954990>,  <39.806026, 30.293324, 30.682354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057121, 30.142923, 30.954990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715085, 0.067417, 0.695779,
		-0.307565, -0.924163, -0.226552,
		0.627740, -0.376002, 0.681590,
		40.245445, 30.030123, 31.159468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392616, 29.911854, 31.028467>,  <39.806026, 30.293324, 30.682354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392616, 29.911854, 31.028467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716030, 29.915623, 31.263817>,  <39.910076, 29.917883, 31.405027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716030, 29.915623, 31.263817>,  <39.392616, 29.911854, 31.028467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716030, 29.915623, 31.263817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588418, 0.023641, 0.808211,
		-0.006299, -0.999676, 0.024655,
		0.808533, 0.009417, 0.588376,
		39.958591, 29.918449, 31.440331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342659, 29.380905, 31.635229>,  <39.392616, 29.911854, 31.028467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342659, 29.380905, 31.635229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574356, 29.699543, 31.704407>,  <39.713375, 29.890726, 31.745914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574356, 29.699543, 31.704407>,  <39.342659, 29.380905, 31.635229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574356, 29.699543, 31.704407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504795, 0.183952, 0.843412,
		0.640045, -0.575845, 0.508671,
		0.579246, 0.796595, 0.172946,
		39.748131, 29.938522, 31.756290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124844, 29.439497, 32.340618>,  <39.342659, 29.380905, 31.635229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124844, 29.439497, 32.340618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335102, 29.771580, 32.266376>,  <39.461258, 29.970829, 32.221832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335102, 29.771580, 32.266376>,  <39.124844, 29.439497, 32.340618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335102, 29.771580, 32.266376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459046, 0.460494, 0.759751,
		0.716219, -0.314163, 0.623162,
		0.525648, 0.830209, -0.185599,
		39.492798, 30.020643, 32.210697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271996, 29.799612, 33.019337>,  <39.124844, 29.439497, 32.340618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271996, 29.799612, 33.019337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300774, 30.080973, 32.736481>,  <39.318039, 30.249788, 32.566765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300774, 30.080973, 32.736481>,  <39.271996, 29.799612, 33.019337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300774, 30.080973, 32.736481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341753, 0.683449, 0.645060,
		0.937032, 0.195260, 0.289560,
		0.071945, 0.703400, -0.707144,
		39.322357, 30.291992, 32.524338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643005, 30.309031, 33.327148>,  <39.271996, 29.799612, 33.019337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643005, 30.309031, 33.327148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425991, 30.478701, 33.037117>,  <39.295784, 30.580503, 32.863098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425991, 30.478701, 33.037117>,  <39.643005, 30.309031, 33.327148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425991, 30.478701, 33.037117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328551, 0.687244, 0.647881,
		0.773118, 0.589721, -0.233490,
		-0.542534, 0.424175, -0.725074,
		39.263229, 30.605953, 32.819595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911175, 30.944580, 33.241146>,  <39.643005, 30.309031, 33.327148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911175, 30.944580, 33.241146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537701, 30.942684, 33.097919>,  <39.313618, 30.941547, 33.011982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537701, 30.942684, 33.097919>,  <39.911175, 30.944580, 33.241146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537701, 30.942684, 33.097919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173609, 0.880537, 0.441037,
		0.313203, 0.473953, -0.822966,
		-0.933683, -0.004740, -0.358069,
		39.257595, 30.941261, 32.990498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877590, 31.622551, 33.023769>,  <39.911175, 30.944580, 33.241146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877590, 31.622551, 33.023769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506645, 31.481199, 33.072968>,  <39.284081, 31.396389, 33.102486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506645, 31.481199, 33.072968>,  <39.877590, 31.622551, 33.023769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506645, 31.481199, 33.072968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177143, 0.704186, 0.687563,
		-0.329586, 0.615829, -0.715631,
		-0.927359, -0.353380, 0.123000,
		39.228439, 31.375185, 33.109867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420341, 32.195507, 33.062195>,  <39.877590, 31.622551, 33.023769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420341, 32.195507, 33.062195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186737, 31.904087, 33.205379>,  <39.046574, 31.729235, 33.291290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186737, 31.904087, 33.205379>,  <39.420341, 32.195507, 33.062195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186737, 31.904087, 33.205379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382062, 0.635791, 0.670670,
		-0.716210, 0.254916, -0.649663,
		-0.584014, -0.728552, 0.357966,
		39.011532, 31.685522, 33.312771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793980, 32.477837, 33.029137>,  <39.420341, 32.195507, 33.062195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793980, 32.477837, 33.029137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801216, 32.200329, 33.317123>,  <38.805557, 32.033825, 33.489918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801216, 32.200329, 33.317123>,  <38.793980, 32.477837, 33.029137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801216, 32.200329, 33.317123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317428, 0.678847, 0.662122,
		-0.948110, -0.240519, -0.207938,
		0.018094, -0.693770, 0.719969,
		38.806644, 31.992197, 33.533115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084499, 32.527668, 33.312477>,  <38.793980, 32.477837, 33.029137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084499, 32.527668, 33.312477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289967, 32.326080, 33.590229>,  <38.413246, 32.205128, 33.756882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289967, 32.326080, 33.590229>,  <38.084499, 32.527668, 33.312477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289967, 32.326080, 33.590229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354022, 0.612708, 0.706581,
		-0.781546, -0.608773, 0.136313,
		0.513668, -0.503968, 0.694379,
		38.444065, 32.174889, 33.798542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673092, 32.652325, 33.837448>,  <38.084499, 32.527668, 33.312477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673092, 32.652325, 33.837448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027988, 32.548698, 33.990120>,  <38.240929, 32.486523, 34.081726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027988, 32.548698, 33.990120>,  <37.673092, 32.652325, 33.837448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027988, 32.548698, 33.990120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178642, 0.569884, 0.802072,
		-0.425308, -0.779818, 0.459345,
		0.887243, -0.259069, 0.381685,
		38.294163, 32.470978, 34.104626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465569, 32.661510, 34.489292>,  <37.673092, 32.652325, 33.837448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465569, 32.661510, 34.489292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863590, 32.639496, 34.522377>,  <38.102402, 32.626289, 34.542229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863590, 32.639496, 34.522377>,  <37.465569, 32.661510, 34.489292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863590, 32.639496, 34.522377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056090, 0.376001, 0.924920,
		-0.082004, -0.924984, 0.371054,
		0.995053, -0.055034, 0.082716,
		38.162106, 32.622986, 34.547192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649818, 32.336403, 35.118378>,  <37.465569, 32.661510, 34.489292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649818, 32.336403, 35.118378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958549, 32.575272, 35.031044>,  <38.143787, 32.718594, 34.978645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958549, 32.575272, 35.031044>,  <37.649818, 32.336403, 35.118378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958549, 32.575272, 35.031044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043853, 0.392552, 0.918684,
		0.634321, -0.699489, 0.329169,
		0.771825, 0.597176, -0.218330,
		38.190098, 32.754425, 34.965546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175587, 32.251259, 35.661507>,  <37.649818, 32.336403, 35.118378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175587, 32.251259, 35.661507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266499, 32.604042, 35.496342>,  <38.321045, 32.815712, 35.397243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266499, 32.604042, 35.496342>,  <38.175587, 32.251259, 35.661507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266499, 32.604042, 35.496342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005291, 0.422884, 0.906168,
		0.973814, -0.208141, 0.091448,
		0.227283, 0.881956, -0.412912,
		38.334682, 32.868629, 35.372467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707840, 32.389637, 36.010723>,  <38.175587, 32.251259, 35.661507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707840, 32.389637, 36.010723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622772, 32.737595, 35.832710>,  <38.571732, 32.946369, 35.725903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622772, 32.737595, 35.832710>,  <38.707840, 32.389637, 36.010723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622772, 32.737595, 35.832710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162466, 0.480593, 0.861763,
		0.963523, 0.110966, -0.243535,
		-0.212668, 0.869895, -0.445034,
		38.558971, 32.998562, 35.699200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303688, 32.840942, 36.131760>,  <38.707840, 32.389637, 36.010723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303688, 32.840942, 36.131760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970551, 33.050114, 36.059193>,  <38.770668, 33.175617, 36.015652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970551, 33.050114, 36.059193>,  <39.303688, 32.840942, 36.131760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970551, 33.050114, 36.059193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125412, 0.497518, 0.858340,
		0.539112, 0.692112, -0.479937,
		-0.832845, 0.522931, -0.181419,
		38.720695, 33.206993, 36.004768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472118, 33.539719, 36.214764>,  <39.303688, 32.840942, 36.131760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472118, 33.539719, 36.214764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073124, 33.532623, 36.242233>,  <38.833729, 33.528366, 36.258713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073124, 33.532623, 36.242233>,  <39.472118, 33.539719, 36.214764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073124, 33.532623, 36.242233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053431, 0.448793, 0.892037,
		-0.046642, 0.893460, -0.446715,
		-0.997482, -0.017738, 0.068671,
		38.773880, 33.527302, 36.262836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022560, 34.111996, 36.059551>,  <39.472118, 33.539719, 36.214764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022560, 34.111996, 36.059551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221008, 34.326160, 36.332958>,  <39.340076, 34.454659, 36.497002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221008, 34.326160, 36.332958>,  <39.022560, 34.111996, 36.059551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221008, 34.326160, 36.332958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859525, -0.414198, -0.299427,
		0.122793, 0.736051, -0.665696,
		0.496123, 0.535415, 0.683514,
		39.369846, 34.486786, 36.538013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567318, 34.501476, 35.710026>,  <39.022560, 34.111996, 36.059551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567318, 34.501476, 35.710026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673695, 34.484066, 36.095230>,  <39.737518, 34.473618, 36.326351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673695, 34.484066, 36.095230>,  <39.567318, 34.501476, 35.710026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673695, 34.484066, 36.095230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913972, -0.306221, -0.266239,
		0.306482, 0.950965, -0.041652,
		0.265939, -0.043529, 0.963007,
		39.753475, 34.471008, 36.384132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127640, 34.980919, 35.801865>,  <39.567318, 34.501476, 35.710026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127640, 34.980919, 35.801865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147312, 34.708679, 36.094265>,  <40.159115, 34.545334, 36.269707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147312, 34.708679, 36.094265>,  <40.127640, 34.980919, 35.801865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147312, 34.708679, 36.094265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916438, -0.260263, -0.303982,
		0.397144, 0.684867, 0.610929,
		0.049185, -0.680603, 0.731000,
		40.162067, 34.504498, 36.313564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826351, 35.012249, 35.854343>,  <40.127640, 34.980919, 35.801865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826351, 35.012249, 35.854343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.715820, 34.717255, 36.100842>,  <40.649502, 34.540257, 36.248741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.715820, 34.717255, 36.100842>,  <40.826351, 35.012249, 35.854343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715820, 34.717255, 36.100842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813044, -0.521284, -0.259273,
		0.512449, 0.429392, 0.743652,
		-0.276324, -0.737486, 0.616246,
		40.632923, 34.496010, 36.285717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448711, 34.900040, 36.227455>,  <40.826351, 35.012249, 35.854343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448711, 34.900040, 36.227455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223270, 34.571030, 36.257923>,  <41.088005, 34.373623, 36.276203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223270, 34.571030, 36.257923>,  <41.448711, 34.900040, 36.227455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223270, 34.571030, 36.257923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747542, -0.547105, -0.376637,
		0.351465, -0.155337, 0.923224,
		-0.563607, -0.822524, 0.076167,
		41.054188, 34.324272, 36.280773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854092, 34.432251, 36.643112>,  <41.448711, 34.900040, 36.227455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854092, 34.432251, 36.643112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.595783, 34.202961, 36.441360>,  <41.440800, 34.065388, 36.320309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.595783, 34.202961, 36.441360>,  <41.854092, 34.432251, 36.643112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595783, 34.202961, 36.441360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754579, -0.579999, -0.306938,
		-0.116594, -0.578804, 0.807088,
		-0.645768, -0.573225, -0.504378,
		41.402054, 34.030994, 36.290047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888363, 33.771034, 36.910206>,  <41.854092, 34.432251, 36.643112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888363, 33.771034, 36.910206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737930, 33.711380, 36.544403>,  <41.647671, 33.675587, 36.324921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737930, 33.711380, 36.544403>,  <41.888363, 33.771034, 36.910206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737930, 33.711380, 36.544403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703468, -0.688323, -0.177044,
		-0.603070, -0.709908, 0.363782,
		-0.376085, -0.149139, -0.914504,
		41.625103, 33.666637, 36.270050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856392, 33.105137, 36.936993>,  <41.888363, 33.771034, 36.910206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856392, 33.105137, 36.936993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.814213, 33.172756, 36.545013>,  <41.788906, 33.213326, 36.309826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.814213, 33.172756, 36.545013>,  <41.856392, 33.105137, 36.936993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814213, 33.172756, 36.545013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727629, -0.658581, -0.191903,
		-0.677818, -0.733277, -0.053556,
		-0.105447, 0.169045, -0.979951,
		41.782578, 33.223469, 36.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929848, 32.418865, 36.534000>,  <41.856392, 33.105137, 36.936993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929848, 32.418865, 36.534000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003258, 32.711788, 36.271690>,  <42.047302, 32.887543, 36.114304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003258, 32.711788, 36.271690>,  <41.929848, 32.418865, 36.534000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003258, 32.711788, 36.271690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824111, -0.478280, -0.303465,
		-0.535874, -0.484739, -0.691280,
		0.183524, 0.732310, -0.655776,
		42.058315, 32.931480, 36.074959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296852, 32.055305, 36.001873>,  <41.929848, 32.418865, 36.534000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296852, 32.055305, 36.001873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.392578, 32.441273, 35.958664>,  <42.450012, 32.672852, 35.932739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.392578, 32.441273, 35.958664>,  <42.296852, 32.055305, 36.001873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392578, 32.441273, 35.958664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926441, -0.260224, -0.272013,
		-0.290581, -0.034983, -0.956211,
		0.239313, 0.964914, -0.108026,
		42.464371, 32.730747, 35.926254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565735, 32.163467, 35.291183>,  <42.296852, 32.055305, 36.001873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565735, 32.163467, 35.291183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.706116, 32.434280, 35.549934>,  <42.790344, 32.596767, 35.705185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.706116, 32.434280, 35.549934>,  <42.565735, 32.163467, 35.291183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706116, 32.434280, 35.549934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936389, -0.251871, -0.244413,
		-0.002545, 0.691510, -0.722362,
		0.350956, 0.677034, 0.646881,
		42.811401, 32.637390, 35.743999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746655, 32.228474, 34.466965>,  <42.565735, 32.163467, 35.291183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746655, 32.228474, 34.466965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.914124, 31.865522, 34.452133>,  <43.014603, 31.647751, 34.443233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.914124, 31.865522, 34.452133>,  <42.746655, 32.228474, 34.466965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914124, 31.865522, 34.452133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404508, 0.222886, -0.886958,
		0.813074, 0.356343, 0.460359,
		0.418669, -0.907382, -0.037080,
		43.039722, 31.593307, 34.441010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287922, 32.422050, 33.973755>,  <42.746655, 32.228474, 34.466965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287922, 32.422050, 33.973755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.269943, 32.022484, 33.978519>,  <43.259155, 31.782743, 33.981377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.269943, 32.022484, 33.978519>,  <43.287922, 32.422050, 33.973755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269943, 32.022484, 33.978519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471405, -0.031723, -0.881347,
		0.880771, -0.034001, 0.472321,
		-0.044950, -0.998918, 0.011913,
		43.256458, 31.722809, 33.982094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928310, 32.267277, 33.669376>,  <43.287922, 32.422050, 33.973755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928310, 32.267277, 33.669376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.731468, 31.921972, 33.624474>,  <43.613361, 31.714788, 33.597530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.731468, 31.921972, 33.624474>,  <43.928310, 32.267277, 33.669376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731468, 31.921972, 33.624474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319096, -0.058902, -0.945890,
		0.809943, -0.501301, 0.304451,
		-0.492108, -0.863266, -0.112256,
		43.583836, 31.662992, 33.590797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378742, 31.876381, 33.314289>,  <43.928310, 32.267277, 33.669376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378742, 31.876381, 33.314289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.029625, 31.690474, 33.254658>,  <43.820156, 31.578928, 33.218880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.029625, 31.690474, 33.254658>,  <44.378742, 31.876381, 33.314289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029625, 31.690474, 33.254658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290170, -0.248472, -0.924155,
		0.392478, -0.849853, 0.351726,
		-0.872790, -0.464771, -0.149082,
		43.767788, 31.551043, 33.209934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469421, 31.135481, 33.081055>,  <44.378742, 31.876381, 33.314289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469421, 31.135481, 33.081055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.098324, 31.218468, 32.956959>,  <43.875664, 31.268259, 32.882504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.098324, 31.218468, 32.956959>,  <44.469421, 31.135481, 33.081055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098324, 31.218468, 32.956959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170495, -0.503849, -0.846798,
		-0.331994, -0.838507, 0.432072,
		-0.927745, 0.207466, -0.310236,
		43.820000, 31.280708, 32.863888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200165, 30.530266, 32.886292>,  <44.469421, 31.135481, 33.081055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200165, 30.530266, 32.886292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979557, 30.803946, 32.695419>,  <43.847195, 30.968153, 32.580898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979557, 30.803946, 32.695419>,  <44.200165, 30.530266, 32.886292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979557, 30.803946, 32.695419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065863, -0.534539, -0.842573,
		-0.831560, -0.496121, 0.249744,
		-0.551516, 0.684202, -0.477178,
		43.814102, 31.009207, 32.552265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670948, 30.102249, 32.552509>,  <44.200165, 30.530266, 32.886292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670948, 30.102249, 32.552509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.700920, 30.442282, 32.343990>,  <43.718903, 30.646301, 32.218880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.700920, 30.442282, 32.343990>,  <43.670948, 30.102249, 32.552509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700920, 30.442282, 32.343990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047978, -0.525231, -0.849607,
		-0.996034, 0.038649, -0.080140,
		0.074929, 0.850082, -0.521293,
		43.723400, 30.697306, 32.187603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.225269, 30.020924, 31.996256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.448120, 30.314861, 31.841536>,  <43.581829, 30.491224, 31.748703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.448120, 30.314861, 31.841536>,  <43.225269, 30.020924, 31.996256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448120, 30.314861, 31.841536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142822, -0.374055, -0.916343,
		-0.818055, 0.565760, -0.103443,
		0.557124, 0.734845, -0.386801,
		43.615257, 30.535315, 31.725494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894218, 30.319052, 31.451128>,  <43.225269, 30.020924, 31.996256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894218, 30.319052, 31.451128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.257202, 30.469622, 31.376480>,  <43.474991, 30.559963, 31.331692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.257202, 30.469622, 31.376480>,  <42.894218, 30.319052, 31.451128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257202, 30.469622, 31.376480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083600, -0.273527, -0.958225,
		-0.411747, 0.885148, -0.216744,
		0.907456, 0.376426, -0.186622,
		43.529438, 30.582550, 31.320494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790142, 30.699474, 30.828308>,  <42.894218, 30.319052, 31.451128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790142, 30.699474, 30.828308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.185837, 30.647968, 30.856102>,  <43.423252, 30.617065, 30.872778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.185837, 30.647968, 30.856102>,  <42.790142, 30.699474, 30.828308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185837, 30.647968, 30.856102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035139, -0.251936, -0.967106,
		0.142034, 0.959139, -0.244700,
		0.989238, -0.128763, 0.069487,
		43.482609, 30.609339, 30.876947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074230, 31.131437, 30.296574>,  <42.790142, 30.699474, 30.828308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074230, 31.131437, 30.296574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335964, 30.845987, 30.396639>,  <43.493004, 30.674717, 30.456678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335964, 30.845987, 30.396639>,  <43.074230, 31.131437, 30.296574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335964, 30.845987, 30.396639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033943, -0.302766, -0.952460,
		0.755439, 0.631723, -0.173889,
		0.654339, -0.713624, 0.250163,
		43.532265, 30.631901, 30.471687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519260, 31.194487, 29.768820>,  <43.074230, 31.131437, 30.296574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519260, 31.194487, 29.768820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.624039, 30.848301, 29.939631>,  <43.686905, 30.640589, 30.042118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.624039, 30.848301, 29.939631>,  <43.519260, 31.194487, 29.768820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624039, 30.848301, 29.939631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207858, -0.381499, -0.900696,
		0.942432, 0.324698, 0.079961,
		0.261949, -0.865465, 0.427028,
		43.702621, 30.588661, 30.067739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222450, 31.141651, 29.664913>,  <43.519260, 31.194487, 29.768820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222450, 31.141651, 29.664913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.068954, 30.780401, 29.741970>,  <43.976856, 30.563652, 29.788204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.068954, 30.780401, 29.741970>,  <44.222450, 31.141651, 29.664913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068954, 30.780401, 29.741970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422667, -0.357252, -0.832901,
		0.821035, -0.238193, 0.518812,
		-0.383738, -0.903125, 0.192640,
		43.953835, 30.509464, 29.799763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705315, 30.638287, 29.439230>,  <44.222450, 31.141651, 29.664913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705315, 30.638287, 29.439230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.387730, 30.405018, 29.507982>,  <44.197178, 30.265057, 29.549234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.387730, 30.405018, 29.507982>,  <44.705315, 30.638287, 29.439230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387730, 30.405018, 29.507982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265303, -0.586702, -0.765112,
		0.547033, -0.561866, 0.620533,
		-0.793958, -0.583171, 0.171881,
		44.149544, 30.230066, 29.559547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965641, 29.969912, 29.505449>,  <44.705315, 30.638287, 29.439230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965641, 29.969912, 29.505449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.580734, 29.918352, 29.409599>,  <44.349789, 29.887417, 29.352089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.580734, 29.918352, 29.409599>,  <44.965641, 29.969912, 29.505449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580734, 29.918352, 29.409599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271117, -0.528674, -0.804363,
		-0.023002, -0.838981, 0.543674,
		-0.962271, -0.128898, -0.239623,
		44.292053, 29.879683, 29.337713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808140, 29.275780, 29.375134>,  <44.965641, 29.969912, 29.505449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808140, 29.275780, 29.375134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.518772, 29.482660, 29.192192>,  <44.345154, 29.606789, 29.082428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.518772, 29.482660, 29.192192>,  <44.808140, 29.275780, 29.375134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518772, 29.482660, 29.192192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144523, -0.534319, -0.832836,
		-0.675118, -0.668584, 0.311787,
		-0.723415, 0.517202, -0.457354,
		44.301746, 29.637821, 29.054987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566280, 28.681492, 29.024158>,  <44.808140, 29.275780, 29.375134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566280, 28.681492, 29.024158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.411678, 29.008589, 28.853556>,  <44.318916, 29.204847, 28.751194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.411678, 29.008589, 28.853556>,  <44.566280, 28.681492, 29.024158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411678, 29.008589, 28.853556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111281, -0.417720, -0.901735,
		-0.915548, -0.395991, 0.070453,
		-0.386508, 0.817741, -0.426509,
		44.295727, 29.253912, 28.725603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034714, 28.444021, 28.505707>,  <44.566280, 28.681492, 29.024158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034714, 28.444021, 28.505707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.157017, 28.810661, 28.402672>,  <44.230400, 29.030645, 28.340851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.157017, 28.810661, 28.402672>,  <44.034714, 28.444021, 28.505707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157017, 28.810661, 28.402672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270285, -0.342978, -0.899618,
		-0.912939, 0.205444, -0.352612,
		0.305760, 0.916602, -0.257589,
		44.248745, 29.085642, 28.325396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804531, 28.533400, 27.773401>,  <44.034714, 28.444021, 28.505707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804531, 28.533400, 27.773401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.101135, 28.790333, 27.850941>,  <44.279099, 28.944492, 27.897465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.101135, 28.790333, 27.850941>,  <43.804531, 28.533400, 27.773401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101135, 28.790333, 27.850941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394365, -0.183512, -0.900444,
		-0.542809, 0.744133, -0.389389,
		0.741508, 0.642331, 0.193849,
		44.323589, 28.983032, 27.909096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969696, 28.607498, 27.161629>,  <43.804531, 28.533400, 27.773401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969696, 28.607498, 27.161629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.276852, 28.773172, 27.357100>,  <44.461143, 28.872576, 27.474382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.276852, 28.773172, 27.357100>,  <43.969696, 28.607498, 27.161629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276852, 28.773172, 27.357100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520541, 0.041159, -0.852844,
		-0.373347, 0.909262, -0.183995,
		0.767886, 0.414183, 0.488675,
		44.507217, 28.897427, 27.503702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204254, 29.221771, 26.707842>,  <43.969696, 28.607498, 27.161629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204254, 29.221771, 26.707842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.495010, 29.097500, 26.952826>,  <44.669464, 29.022938, 27.099815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.495010, 29.097500, 26.952826>,  <44.204254, 29.221771, 26.707842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495010, 29.097500, 26.952826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598998, -0.149386, -0.786693,
		0.335900, 0.938703, 0.077507,
		0.726892, -0.310677, 0.612460,
		44.713078, 29.004297, 27.136564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716831, 29.691898, 26.555666>,  <44.204254, 29.221771, 26.707842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716831, 29.691898, 26.555666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.895233, 29.372278, 26.716959>,  <45.002274, 29.180506, 26.813736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.895233, 29.372278, 26.716959>,  <44.716831, 29.691898, 26.555666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895233, 29.372278, 26.716959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542992, -0.116584, -0.831605,
		0.711507, 0.589850, 0.381882,
		0.446002, -0.799052, 0.403235,
		45.029034, 29.132563, 26.837929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521828, 29.837154, 26.542381>,  <44.716831, 29.691898, 26.555666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521828, 29.837154, 26.542381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.425659, 29.449198, 26.526844>,  <45.367958, 29.216423, 26.517521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.425659, 29.449198, 26.526844>,  <45.521828, 29.837154, 26.542381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425659, 29.449198, 26.526844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671572, -0.137312, -0.728104,
		0.700849, -0.201137, 0.684365,
		-0.240420, -0.969891, -0.038843,
		45.353535, 29.158230, 26.515190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169258, 29.723690, 26.356472>,  <45.521828, 29.837154, 26.542381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169258, 29.723690, 26.356472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938778, 29.404774, 26.284565>,  <45.800488, 29.213425, 26.241421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.938778, 29.404774, 26.284565>,  <46.169258, 29.723690, 26.356472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938778, 29.404774, 26.284565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662778, -0.327113, -0.673589,
		0.478241, -0.507271, 0.716911,
		-0.576203, -0.797291, -0.179770,
		45.765919, 29.165586, 26.230635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632656, 29.163479, 26.201483>,  <46.169258, 29.723690, 26.356472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632656, 29.163479, 26.201483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.287437, 29.036961, 26.043949>,  <46.080307, 28.961050, 25.949429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.287437, 29.036961, 26.043949>,  <46.632656, 29.163479, 26.201483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287437, 29.036961, 26.043949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500060, -0.424902, -0.754585,
		0.071331, -0.848184, 0.524878,
		-0.863048, -0.316296, -0.393834,
		46.028522, 28.942072, 25.925798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723858, 28.411812, 25.955368>,  <46.632656, 29.163479, 26.201483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723858, 28.411812, 25.955368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.403431, 28.528711, 25.746418>,  <46.211174, 28.598852, 25.621048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.403431, 28.528711, 25.746418>,  <46.723858, 28.411812, 25.955368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403431, 28.528711, 25.746418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402096, -0.383731, -0.831306,
		-0.443402, -0.875979, 0.189882,
		-0.801070, 0.292252, -0.522375,
		46.163109, 28.616386, 25.589706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607353, 27.878700, 25.537245>,  <46.723858, 28.411812, 25.955368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607353, 27.878700, 25.537245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.402481, 28.168039, 25.352016>,  <46.279556, 28.341642, 25.240879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.402481, 28.168039, 25.352016>,  <46.607353, 27.878700, 25.537245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402481, 28.168039, 25.352016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451256, -0.232108, -0.861681,
		-0.730778, -0.650302, -0.207534,
		-0.512183, 0.723349, -0.463072,
		46.248825, 28.385044, 25.213095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133938, 27.565596, 25.009815>,  <46.607353, 27.878700, 25.537245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133938, 27.565596, 25.009815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.205700, 27.935820, 24.876459>,  <46.248756, 28.157955, 24.796446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.205700, 27.935820, 24.876459>,  <46.133938, 27.565596, 25.009815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205700, 27.935820, 24.876459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236222, -0.369504, -0.898702,
		-0.954993, 0.082480, -0.284930,
		0.179408, 0.925561, -0.333390,
		46.259521, 28.213488, 24.776442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884518, 27.485180, 24.327631>,  <46.133938, 27.565596, 25.009815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884518, 27.485180, 24.327631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.115555, 27.811178, 24.346237>,  <46.254177, 28.006777, 24.357401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.115555, 27.811178, 24.346237>,  <45.884518, 27.485180, 24.327631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115555, 27.811178, 24.346237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315490, -0.170312, -0.933520,
		-0.752895, 0.553870, -0.355495,
		0.577594, 0.814998, 0.046513,
		46.288834, 28.055677, 24.360191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549690, 27.937799, 23.871387>,  <45.884518, 27.485180, 24.327631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549690, 27.937799, 23.871387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.941216, 28.019566, 23.876104>,  <46.176132, 28.068624, 23.878935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.941216, 28.019566, 23.876104>,  <45.549690, 27.937799, 23.871387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941216, 28.019566, 23.876104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002379, 0.046236, -0.998928,
		-0.204742, 0.977792, 0.044770,
		0.978813, 0.204416, 0.011792,
		46.234859, 28.080891, 23.879642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809269, 27.654924, 23.247175>,  <45.549690, 27.937799, 23.871387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809269, 27.654924, 23.247175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.473057, 27.563961, 23.050486>,  <45.271328, 27.509384, 22.932472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.473057, 27.563961, 23.050486>,  <45.809269, 27.654924, 23.247175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473057, 27.563961, 23.050486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508036, 0.646092, 0.569618,
		0.188163, 0.728595, -0.658592,
		-0.840532, -0.227407, -0.491724,
		45.220898, 27.495739, 22.902969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489700, 28.294046, 23.187725>,  <45.809269, 27.654924, 23.247175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489700, 28.294046, 23.187725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.230663, 27.990072, 23.165367>,  <45.075241, 27.807688, 23.151953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.230663, 27.990072, 23.165367>,  <45.489700, 28.294046, 23.187725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230663, 27.990072, 23.165367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596391, 0.459835, 0.657928,
		-0.474279, 0.459405, -0.751003,
		-0.647593, -0.759933, -0.055895,
		45.036385, 27.762093, 23.148598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888012, 28.724974, 23.283020>,  <45.489700, 28.294046, 23.187725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888012, 28.724974, 23.283020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.723156, 28.360584, 23.289494>,  <44.624241, 28.141951, 23.293377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.723156, 28.360584, 23.289494>,  <44.888012, 28.724974, 23.283020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723156, 28.360584, 23.289494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761359, 0.354103, 0.543088,
		-0.500470, 0.211509, -0.839520,
		-0.412144, -0.910975, 0.016183,
		44.599514, 28.087292, 23.294348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167019, 28.871708, 23.195543>,  <44.888012, 28.724974, 23.283020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167019, 28.871708, 23.195543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227127, 28.531471, 23.397102>,  <44.263191, 28.327330, 23.518038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227127, 28.531471, 23.397102>,  <44.167019, 28.871708, 23.195543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227127, 28.531471, 23.397102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656460, 0.295259, 0.694178,
		-0.739242, -0.435103, -0.514010,
		0.150272, -0.850593, 0.503895,
		44.272209, 28.276293, 23.548271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493828, 28.696115, 23.372898>,  <44.167019, 28.871708, 23.195543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493828, 28.696115, 23.372898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722054, 28.487198, 23.626406>,  <43.858990, 28.361847, 23.778511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722054, 28.487198, 23.626406>,  <43.493828, 28.696115, 23.372898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722054, 28.487198, 23.626406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572202, 0.300740, 0.762981,
		-0.589100, -0.797975, -0.127266,
		0.570566, -0.522294, 0.633769,
		43.893223, 28.330509, 23.816536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950958, 28.293749, 23.589411>,  <43.493828, 28.696115, 23.372898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950958, 28.293749, 23.589411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.255474, 28.267174, 23.847412>,  <43.438183, 28.251228, 24.002213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.255474, 28.267174, 23.847412>,  <42.950958, 28.293749, 23.589411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255474, 28.267174, 23.847412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592977, 0.331123, 0.733986,
		-0.262339, -0.941246, 0.212684,
		0.761286, -0.066437, 0.645003,
		43.483860, 28.247244, 24.040913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587070, 28.062620, 24.184418>,  <42.950958, 28.293749, 23.589411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587070, 28.062620, 24.184418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.922600, 28.243357, 24.305882>,  <43.123917, 28.351799, 24.378759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.922600, 28.243357, 24.305882>,  <42.587070, 28.062620, 24.184418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922600, 28.243357, 24.305882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462019, 0.295836, 0.836074,
		0.287917, -0.841630, 0.456907,
		0.838834, 0.451819, 0.303673,
		43.174248, 28.378908, 24.396978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719429, 27.815495, 24.894226>,  <42.587070, 28.062620, 24.184418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719429, 27.815495, 24.894226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917507, 28.160698, 24.854244>,  <43.036354, 28.367821, 24.830256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917507, 28.160698, 24.854244>,  <42.719429, 27.815495, 24.894226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917507, 28.160698, 24.854244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489267, 0.372101, 0.788770,
		0.717912, -0.341692, 0.606506,
		0.495198, 0.863011, -0.099957,
		43.066067, 28.419601, 24.824257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197365, 27.885944, 25.407679>,  <42.719429, 27.815495, 24.894226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197365, 27.885944, 25.407679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.138195, 28.261732, 25.284060>,  <43.102692, 28.487206, 25.209888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.138195, 28.261732, 25.284060>,  <43.197365, 27.885944, 25.407679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138195, 28.261732, 25.284060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289030, 0.257777, 0.921961,
		0.945822, 0.225709, 0.233403,
		-0.147929, 0.939471, -0.309048,
		43.093815, 28.543573, 25.191345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533695, 28.255537, 25.943287>,  <43.197365, 27.885944, 25.407679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533695, 28.255537, 25.943287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258720, 28.477203, 25.755529>,  <43.093735, 28.610203, 25.642876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258720, 28.477203, 25.755529>,  <43.533695, 28.255537, 25.943287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258720, 28.477203, 25.755529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305866, 0.365288, 0.879210,
		0.658692, 0.747974, -0.081613,
		-0.687438, 0.554166, -0.469392,
		43.052490, 28.643454, 25.614712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697689, 28.972130, 26.201002>,  <43.533695, 28.255537, 25.943287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697689, 28.972130, 26.201002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.313152, 28.961039, 26.091423>,  <43.082428, 28.954384, 26.025675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.313152, 28.961039, 26.091423>,  <43.697689, 28.972130, 26.201002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313152, 28.961039, 26.091423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242427, 0.556988, 0.794351,
		0.130560, 0.830057, -0.542180,
		-0.961344, -0.027729, -0.273949,
		43.024750, 28.952721, 26.009239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429585, 29.565523, 26.526573>,  <43.697689, 28.972130, 26.201002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429585, 29.565523, 26.526573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.101284, 29.364338, 26.418207>,  <42.904305, 29.243628, 26.353188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.101284, 29.364338, 26.418207>,  <43.429585, 29.565523, 26.526573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101284, 29.364338, 26.418207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499389, 0.401344, 0.767811,
		-0.277450, 0.765474, -0.580578,
		-0.820751, -0.502963, -0.270917,
		42.855061, 29.213449, 26.336933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975437, 30.063717, 26.531721>,  <43.429585, 29.565523, 26.526573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975437, 30.063717, 26.531721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.802238, 29.704422, 26.561878>,  <42.698318, 29.488846, 26.579973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.802238, 29.704422, 26.561878>,  <42.975437, 30.063717, 26.531721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802238, 29.704422, 26.561878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517779, 0.316315, 0.794890,
		-0.737848, 0.305145, -0.602052,
		-0.432995, -0.898238, 0.075395,
		42.672340, 29.434950, 26.584497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291828, 30.176298, 26.692223>,  <42.975437, 30.063717, 26.531721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291828, 30.176298, 26.692223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300243, 29.787558, 26.786085>,  <42.305294, 29.554314, 26.842403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300243, 29.787558, 26.786085>,  <42.291828, 30.176298, 26.692223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300243, 29.787558, 26.786085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515047, 0.190630, 0.835695,
		-0.856903, -0.138442, -0.496539,
		0.021040, -0.971851, 0.234656,
		42.306557, 29.496002, 26.856482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671562, 30.091738, 27.078960>,  <42.291828, 30.176298, 26.692223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671562, 30.091738, 27.078960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.869267, 29.753548, 27.159832>,  <41.987888, 29.550634, 27.208355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.869267, 29.753548, 27.159832>,  <41.671562, 30.091738, 27.078960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869267, 29.753548, 27.159832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436316, -0.040114, 0.898899,
		-0.751885, -0.532507, -0.388721,
		0.494264, -0.845474, 0.202180,
		42.017544, 29.499905, 27.220486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195797, 29.560490, 27.340855>,  <41.671562, 30.091738, 27.078960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195797, 29.560490, 27.340855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.554371, 29.451851, 27.480940>,  <41.769516, 29.386667, 27.564991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.554371, 29.451851, 27.480940>,  <41.195797, 29.560490, 27.340855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554371, 29.451851, 27.480940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344099, 0.071467, 0.936210,
		-0.279301, -0.959754, -0.029392,
		0.896430, -0.271598, 0.350211,
		41.823299, 29.370373, 27.586002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112156, 28.957420, 27.848694>,  <41.195797, 29.560490, 27.340855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112156, 28.957420, 27.848694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.473083, 29.101963, 27.942713>,  <41.689640, 29.188688, 27.999125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.473083, 29.101963, 27.942713>,  <41.112156, 28.957420, 27.848694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473083, 29.101963, 27.942713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221973, -0.077932, 0.971933,
		0.369533, -0.929165, 0.009892,
		0.902315, 0.361357, 0.235048,
		41.743778, 29.210369, 28.013227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263821, 28.622654, 28.579296>,  <41.112156, 28.957420, 27.848694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263821, 28.622654, 28.579296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.501949, 28.940403, 28.531027>,  <41.644829, 29.131052, 28.502066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.501949, 28.940403, 28.531027>,  <41.263821, 28.622654, 28.579296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501949, 28.940403, 28.531027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041066, 0.180071, 0.982796,
		0.802434, -0.580128, 0.139823,
		0.595326, 0.794371, -0.120672,
		41.680546, 29.178715, 28.494825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872707, 28.460386, 29.040781>,  <41.263821, 28.622654, 28.579296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872707, 28.460386, 29.040781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.822304, 28.856304, 29.014177>,  <41.792061, 29.093855, 28.998215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.822304, 28.856304, 29.014177>,  <41.872707, 28.460386, 29.040781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822304, 28.856304, 29.014177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100795, 0.053924, 0.993445,
		0.986895, 0.131890, 0.092972,
		-0.126013, 0.989796, -0.066511,
		41.784500, 29.153244, 28.994225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264694, 28.630480, 29.552599>,  <41.872707, 28.460386, 29.040781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264694, 28.630480, 29.552599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073837, 28.970331, 29.462740>,  <41.959324, 29.174242, 29.408825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073837, 28.970331, 29.462740>,  <42.264694, 28.630480, 29.552599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073837, 28.970331, 29.462740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075037, 0.215305, 0.973660,
		0.875617, 0.481431, -0.038978,
		-0.477142, 0.849628, -0.224649,
		41.930695, 29.225220, 29.395346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559391, 29.257545, 29.961514>,  <42.264694, 28.630480, 29.552599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559391, 29.257545, 29.961514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.181793, 29.363464, 29.882774>,  <41.955235, 29.427015, 29.835531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.181793, 29.363464, 29.882774>,  <42.559391, 29.257545, 29.961514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181793, 29.363464, 29.882774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088920, 0.370353, 0.924625,
		0.317743, 0.890348, -0.326066,
		-0.943998, 0.264800, -0.196847,
		41.898594, 29.442904, 29.823721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.317184, 32.956665, 36.721535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330204, 32.921848, 36.323265>,  <43.338017, 32.900959, 36.084305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330204, 32.921848, 36.323265>,  <43.317184, 32.956665, 36.721535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330204, 32.921848, 36.323265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906053, 0.417962, -0.066156,
		0.421911, 0.904286, -0.065257,
		0.032549, -0.087038, -0.995673,
		43.339970, 32.895737, 36.024563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281517, 33.649906, 36.343426>,  <43.317184, 32.956665, 36.721535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281517, 33.649906, 36.343426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134472, 33.332504, 36.149429>,  <43.046246, 33.142063, 36.033031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134472, 33.332504, 36.149429>,  <43.281517, 33.649906, 36.343426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134472, 33.332504, 36.149429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891419, 0.449272, -0.059390,
		0.265018, 0.410495, -0.872502,
		-0.367611, -0.793504, -0.484988,
		43.024189, 33.094452, 36.003933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897331, 33.953091, 35.711872>,  <43.281517, 33.649906, 36.343426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897331, 33.953091, 35.711872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738430, 33.590939, 35.771851>,  <42.643089, 33.373650, 35.807838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738430, 33.590939, 35.771851>,  <42.897331, 33.953091, 35.711872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738430, 33.590939, 35.771851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912885, 0.373118, -0.165601,
		0.093984, -0.202668, -0.974727,
		-0.397250, -0.905378, 0.149945,
		42.619255, 33.319324, 35.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366093, 33.934483, 35.225574>,  <42.897331, 33.953091, 35.711872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366093, 33.934483, 35.225574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.276546, 33.635956, 35.476303>,  <42.222820, 33.456841, 35.626740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.276546, 33.635956, 35.476303>,  <42.366093, 33.934483, 35.225574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276546, 33.635956, 35.476303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956496, 0.291689, 0.005690,
		-0.187082, -0.598276, -0.779144,
		-0.223864, -0.746313, 0.626818,
		42.209389, 33.412064, 35.664349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731216, 33.633846, 35.034340>,  <42.366093, 33.934483, 35.225574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731216, 33.633846, 35.034340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747562, 33.525410, 35.419014>,  <41.757370, 33.460346, 35.649818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747562, 33.525410, 35.419014>,  <41.731216, 33.633846, 35.034340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747562, 33.525410, 35.419014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926539, 0.349966, 0.138022,
		-0.373974, -0.896678, -0.236878,
		0.040862, -0.271094, 0.961685,
		41.759823, 33.444080, 35.707520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079193, 33.357048, 35.169376>,  <41.731216, 33.633846, 35.034340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079193, 33.357048, 35.169376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240154, 33.430588, 35.528103>,  <41.336731, 33.474712, 35.743340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240154, 33.430588, 35.528103>,  <41.079193, 33.357048, 35.169376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240154, 33.430588, 35.528103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872494, 0.373623, 0.314896,
		-0.277177, -0.909178, 0.310754,
		0.402401, 0.183849, 0.896813,
		41.360874, 33.485744, 35.797146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614883, 33.204861, 35.646328>,  <41.079193, 33.357048, 35.169376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614883, 33.204861, 35.646328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861416, 33.452984, 35.840378>,  <41.009335, 33.601860, 35.956806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861416, 33.452984, 35.840378>,  <40.614883, 33.204861, 35.646328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861416, 33.452984, 35.840378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780327, 0.563950, 0.270277,
		-0.105930, -0.545137, 0.831628,
		0.616334, 0.620311, 0.485125,
		41.046318, 33.639076, 35.985916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368958, 33.227680, 36.264065>,  <40.614883, 33.204861, 35.646328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368958, 33.227680, 36.264065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583477, 33.565285, 36.266060>,  <40.712189, 33.767849, 36.267258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583477, 33.565285, 36.266060>,  <40.368958, 33.227680, 36.264065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583477, 33.565285, 36.266060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691954, 0.436278, 0.575206,
		0.483306, -0.311932, 0.817994,
		0.536298, 0.844015, 0.004987,
		40.744366, 33.818489, 36.267555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373764, 33.408806, 36.973316>,  <40.368958, 33.227680, 36.264065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373764, 33.408806, 36.973316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445221, 33.745056, 36.768791>,  <40.488094, 33.946804, 36.646076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445221, 33.745056, 36.768791>,  <40.373764, 33.408806, 36.973316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445221, 33.745056, 36.768791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622221, 0.499081, 0.603124,
		0.762186, 0.210403, 0.612212,
		0.178644, 0.840624, -0.511310,
		40.498814, 33.997242, 36.615398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140003, 33.815685, 37.424641>,  <40.373764, 33.408806, 36.973316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140003, 33.815685, 37.424641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168957, 34.031990, 37.089417>,  <40.186329, 34.161774, 36.888283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168957, 34.031990, 37.089417>,  <40.140003, 33.815685, 37.424641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168957, 34.031990, 37.089417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714561, 0.614323, 0.334678,
		0.695819, 0.574620, 0.430869,
		0.072381, 0.540758, -0.838059,
		40.190670, 34.194218, 36.837997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098099, 34.459236, 37.640888>,  <40.140003, 33.815685, 37.424641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098099, 34.459236, 37.640888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.977325, 34.459446, 37.259556>,  <39.904861, 34.459572, 37.030758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.977325, 34.459446, 37.259556>,  <40.098099, 34.459236, 37.640888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977325, 34.459446, 37.259556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696699, 0.682463, 0.221031,
		0.650726, 0.730920, -0.205699,
		-0.301938, 0.000521, -0.953328,
		39.886745, 34.459602, 36.973557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090870, 35.096497, 37.494835>,  <40.098099, 34.459236, 37.640888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090870, 35.096497, 37.494835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.849117, 34.905418, 37.239796>,  <39.704063, 34.790771, 37.086773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.849117, 34.905418, 37.239796>,  <40.090870, 35.096497, 37.494835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849117, 34.905418, 37.239796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772154, 0.548320, 0.321128,
		0.196207, 0.686408, -0.700248,
		-0.604384, -0.477692, -0.637597,
		39.667801, 34.762112, 37.048515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611645, 35.586269, 37.138420>,  <40.090870, 35.096497, 37.494835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611645, 35.586269, 37.138420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.425072, 35.232819, 37.122208>,  <39.313126, 35.020748, 37.112480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.425072, 35.232819, 37.122208>,  <39.611645, 35.586269, 37.138420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425072, 35.232819, 37.122208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862343, 0.444044, 0.243290,
		-0.196980, 0.148429, -0.969107,
		-0.466437, -0.883625, -0.040529,
		39.285141, 34.967731, 37.110050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983566, 35.705387, 36.792984>,  <39.611645, 35.586269, 37.138420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983566, 35.705387, 36.792984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905884, 35.362804, 36.984303>,  <38.859272, 35.157253, 37.099094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905884, 35.362804, 36.984303>,  <38.983566, 35.705387, 36.792984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905884, 35.362804, 36.984303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901028, 0.348524, 0.258223,
		-0.387853, -0.380806, -0.839379,
		-0.194211, -0.856457, 0.478293,
		38.847622, 35.105869, 37.127792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025806, 36.323044, 36.270756>,  <38.983566, 35.705387, 36.792984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025806, 36.323044, 36.270756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720638, 36.514896, 36.097366>,  <38.537537, 36.630009, 35.993332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720638, 36.514896, 36.097366>,  <39.025806, 36.323044, 36.270756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720638, 36.514896, 36.097366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443655, -0.099271, -0.890682,
		-0.470234, -0.871835, -0.137056,
		-0.762922, 0.479635, -0.433475,
		38.491760, 36.658787, 35.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868942, 35.955387, 35.694614>,  <39.025806, 36.323044, 36.270756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868942, 35.955387, 35.694614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666988, 36.291801, 35.616898>,  <38.545815, 36.493649, 35.570267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666988, 36.291801, 35.616898>,  <38.868942, 35.955387, 35.694614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666988, 36.291801, 35.616898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297851, -0.041521, -0.953709,
		-0.810169, -0.539387, -0.229539,
		-0.504887, 0.841034, -0.194296,
		38.515522, 36.544113, 35.558609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386478, 35.826515, 34.986008>,  <38.868942, 35.955387, 35.694614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386478, 35.826515, 34.986008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491028, 36.210934, 35.021942>,  <38.553757, 36.441586, 35.043503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491028, 36.210934, 35.021942>,  <38.386478, 35.826515, 34.986008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491028, 36.210934, 35.021942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426331, -0.031446, -0.904021,
		-0.865983, 0.274583, -0.417944,
		0.261372, 0.961049, 0.089831,
		38.569439, 36.499249, 35.048893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240837, 36.036461, 34.360683>,  <38.386478, 35.826515, 34.986008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240837, 36.036461, 34.360683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485447, 36.312897, 34.514793>,  <38.632214, 36.478760, 34.607258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485447, 36.312897, 34.514793>,  <38.240837, 36.036461, 34.360683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485447, 36.312897, 34.514793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424483, 0.124374, -0.896853,
		-0.667724, 0.711988, -0.217299,
		0.611522, 0.691089, 0.385274,
		38.668903, 36.520222, 34.630375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171547, 36.595463, 33.907295>,  <38.240837, 36.036461, 34.360683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171547, 36.595463, 33.907295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527859, 36.616035, 34.087906>,  <38.741646, 36.628380, 34.196270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527859, 36.616035, 34.087906>,  <38.171547, 36.595463, 33.907295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527859, 36.616035, 34.087906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443747, 0.115857, -0.888631,
		-0.098012, 0.991934, 0.080382,
		0.890776, 0.051427, 0.451523,
		38.795090, 36.631462, 34.223362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415333, 37.198185, 33.680012>,  <38.171547, 36.595463, 33.907295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415333, 37.198185, 33.680012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.739464, 36.993607, 33.794411>,  <38.933941, 36.870861, 33.863049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.739464, 36.993607, 33.794411>,  <38.415333, 37.198185, 33.680012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739464, 36.993607, 33.794411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390310, 0.107054, -0.914438,
		0.437070, 0.852620, 0.286371,
		0.810326, -0.511447, 0.285996,
		38.982563, 36.840172, 33.880211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990948, 37.445251, 33.295906>,  <38.415333, 37.198185, 33.680012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990948, 37.445251, 33.295906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149261, 37.101406, 33.425159>,  <39.244247, 36.895100, 33.502712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149261, 37.101406, 33.425159>,  <38.990948, 37.445251, 33.295906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149261, 37.101406, 33.425159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603898, -0.021467, -0.796773,
		0.691857, 0.510487, 0.510625,
		0.395780, -0.859618, 0.323134,
		39.267994, 36.843521, 33.522099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773228, 37.568542, 33.263264>,  <38.990948, 37.445251, 33.295906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773228, 37.568542, 33.263264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747223, 37.170795, 33.296745>,  <39.731621, 36.932148, 33.316833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747223, 37.170795, 33.296745>,  <39.773228, 37.568542, 33.263264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747223, 37.170795, 33.296745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579163, -0.105904, -0.808304,
		0.812616, -0.004072, 0.582786,
		-0.065010, -0.994368, 0.083701,
		39.727718, 36.872486, 33.321854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397873, 37.289650, 33.215611>,  <39.773228, 37.568542, 33.263264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397873, 37.289650, 33.215611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156677, 36.985756, 33.118279>,  <40.011959, 36.803421, 33.059879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156677, 36.985756, 33.118279>,  <40.397873, 37.289650, 33.215611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156677, 36.985756, 33.118279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614121, -0.247392, -0.749434,
		0.509172, -0.601336, 0.615743,
		-0.602992, -0.759732, -0.243328,
		39.975780, 36.757835, 33.045280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877899, 36.743225, 33.151157>,  <40.397873, 37.289650, 33.215611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877899, 36.743225, 33.151157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.538574, 36.687939, 32.946701>,  <40.334980, 36.654766, 32.824028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.538574, 36.687939, 32.946701>,  <40.877899, 36.743225, 33.151157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538574, 36.687939, 32.946701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529495, -0.216460, -0.820232,
		0.002728, -0.966458, 0.256810,
		-0.848309, -0.138217, -0.511144,
		40.284081, 36.646473, 32.793358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016678, 36.147335, 32.786240>,  <40.877899, 36.743225, 33.151157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016678, 36.147335, 32.786240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701927, 36.300041, 32.592300>,  <40.513077, 36.391666, 32.475937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701927, 36.300041, 32.592300>,  <41.016678, 36.147335, 32.786240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701927, 36.300041, 32.592300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427917, -0.228558, -0.874442,
		-0.444652, -0.895552, 0.016481,
		-0.786875, 0.381770, -0.484850,
		40.465866, 36.414574, 32.446846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808681, 35.672371, 32.306358>,  <41.016678, 36.147335, 32.786240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808681, 35.672371, 32.306358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.618584, 35.986996, 32.148647>,  <40.504524, 36.175774, 32.054020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.618584, 35.986996, 32.148647>,  <40.808681, 35.672371, 32.306358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618584, 35.986996, 32.148647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266545, -0.298350, -0.916483,
		-0.838507, -0.540648, -0.067866,
		-0.475247, 0.786567, -0.394276,
		40.476009, 36.222965, 32.030365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648060, 35.448009, 31.599470>,  <40.808681, 35.672371, 32.306358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648060, 35.448009, 31.599470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.603310, 35.845409, 31.591064>,  <40.576458, 36.083851, 31.586021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.603310, 35.845409, 31.591064>,  <40.648060, 35.448009, 31.599470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603310, 35.845409, 31.591064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206447, 0.002553, -0.978454,
		-0.972040, -0.113805, -0.205391,
		-0.111878, 0.993500, -0.021013,
		40.569748, 36.143459, 31.584761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189968, 35.635880, 31.051779>,  <40.648060, 35.448009, 31.599470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189968, 35.635880, 31.051779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450733, 35.927155, 31.136398>,  <40.607193, 36.101921, 31.187170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450733, 35.927155, 31.136398>,  <40.189968, 35.635880, 31.051779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450733, 35.927155, 31.136398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429630, -0.124811, -0.894338,
		-0.624842, 0.673918, -0.394217,
		0.651913, 0.728187, 0.211548,
		40.646309, 36.145611, 31.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532200, 35.823471, 30.671368>,  <40.189968, 35.635880, 31.051779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532200, 35.823471, 30.671368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220539, 35.811947, 30.420898>,  <39.033543, 35.805031, 30.270617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220539, 35.811947, 30.420898>,  <39.532200, 35.823471, 30.671368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220539, 35.811947, 30.420898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625686, -0.024670, 0.779684,
		-0.037912, 0.999280, 0.001195,
		-0.779153, -0.028812, -0.626171,
		38.986794, 35.803303, 30.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037476, 36.276199, 30.975195>,  <39.532200, 35.823471, 30.671368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037476, 36.276199, 30.975195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837158, 36.009411, 30.754519>,  <38.716969, 35.849339, 30.622112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837158, 36.009411, 30.754519>,  <39.037476, 36.276199, 30.975195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837158, 36.009411, 30.754519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697516, -0.066442, 0.713483,
		-0.512524, 0.742119, -0.431946,
		-0.500790, -0.666967, -0.551693,
		38.686920, 35.809322, 30.589010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381100, 36.471634, 31.100224>,  <39.037476, 36.276199, 30.975195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381100, 36.471634, 31.100224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313606, 36.138565, 30.889250>,  <38.273109, 35.938725, 30.762667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313606, 36.138565, 30.889250>,  <38.381100, 36.471634, 31.100224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313606, 36.138565, 30.889250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747535, -0.240662, 0.619089,
		-0.642432, 0.498738, -0.581844,
		-0.168736, -0.832672, -0.527433,
		38.262985, 35.888763, 30.731020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572983, 36.365643, 30.949202>,  <38.381100, 36.471634, 31.100224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572983, 36.365643, 30.949202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.751354, 36.007641, 30.953413>,  <37.858376, 35.792839, 30.955940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.751354, 36.007641, 30.953413>,  <37.572983, 36.365643, 30.949202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751354, 36.007641, 30.953413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724367, -0.353947, 0.591620,
		-0.525778, -0.271445, -0.806148,
		0.445926, -0.895008, 0.010528,
		37.885132, 35.739140, 30.956572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002026, 35.951004, 30.895092>,  <37.572983, 36.365643, 30.949202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002026, 35.951004, 30.895092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290058, 35.734512, 31.068783>,  <37.462879, 35.604618, 31.172997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290058, 35.734512, 31.068783>,  <37.002026, 35.951004, 30.895092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290058, 35.734512, 31.068783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654456, -0.321781, 0.684210,
		-0.230589, -0.776869, -0.585920,
		0.720080, -0.541231, 0.434228,
		37.506081, 35.572144, 31.199051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572884, 35.432404, 31.173861>,  <37.002026, 35.951004, 30.895092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572884, 35.432404, 31.173861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938110, 35.385880, 31.330206>,  <37.157246, 35.357964, 31.424013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938110, 35.385880, 31.330206>,  <36.572884, 35.432404, 31.173861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938110, 35.385880, 31.330206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407512, -0.296283, 0.863800,
		0.015339, -0.947992, -0.317924,
		0.913071, -0.116308, 0.390863,
		37.212032, 35.350986, 31.447464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571598, 34.722496, 31.494905>,  <36.572884, 35.432404, 31.173861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571598, 34.722496, 31.494905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843124, 34.960587, 31.666914>,  <37.006039, 35.103439, 31.770119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843124, 34.960587, 31.666914>,  <36.571598, 34.722496, 31.494905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843124, 34.960587, 31.666914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373031, -0.224895, 0.900150,
		0.632500, -0.771448, 0.069374,
		0.678817, 0.595223, 0.430020,
		37.046768, 35.139153, 31.795919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671188, 34.391129, 32.138432>,  <36.571598, 34.722496, 31.494905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671188, 34.391129, 32.138432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859741, 34.738304, 32.201015>,  <36.972874, 34.946609, 32.238567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859741, 34.738304, 32.201015>,  <36.671188, 34.391129, 32.138432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859741, 34.738304, 32.201015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225058, -0.053147, 0.972895,
		0.852727, -0.493822, 0.170283,
		0.471386, 0.867937, 0.156458,
		37.001156, 34.998684, 32.247952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909992, 34.315578, 32.786312>,  <36.671188, 34.391129, 32.138432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909992, 34.315578, 32.786312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937229, 34.713066, 32.750778>,  <36.953571, 34.951557, 32.729458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937229, 34.713066, 32.750778>,  <36.909992, 34.315578, 32.786312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937229, 34.713066, 32.750778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364228, 0.107653, 0.925067,
		0.928817, -0.030634, 0.369270,
		0.068092, 0.993716, -0.088833,
		36.957657, 35.011181, 32.724129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357738, 34.564457, 33.348751>,  <36.909992, 34.315578, 32.786312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357738, 34.564457, 33.348751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.128803, 34.874798, 33.242561>,  <36.991440, 35.061005, 33.178848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.128803, 34.874798, 33.242561>,  <37.357738, 34.564457, 33.348751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128803, 34.874798, 33.242561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075234, 0.272693, 0.959155,
		0.816558, 0.568935, -0.097703,
		-0.572340, 0.775855, -0.265473,
		36.957100, 35.107555, 33.162918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637379, 35.098442, 33.746666>,  <37.357738, 34.564457, 33.348751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637379, 35.098442, 33.746666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260914, 35.194145, 33.651184>,  <37.035034, 35.251568, 33.593895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260914, 35.194145, 33.651184>,  <37.637379, 35.098442, 33.746666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260914, 35.194145, 33.651184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173814, 0.263064, 0.948992,
		0.289845, 0.934641, -0.205999,
		-0.941158, 0.239255, -0.238702,
		36.978565, 35.265923, 33.579575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491570, 35.735329, 34.083248>,  <37.637379, 35.098442, 33.746666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491570, 35.735329, 34.083248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144100, 35.550915, 34.010750>,  <36.935619, 35.440266, 33.967251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144100, 35.550915, 34.010750>,  <37.491570, 35.735329, 34.083248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144100, 35.550915, 34.010750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198770, -0.010736, 0.979987,
		-0.453757, 0.887316, -0.082315,
		-0.868674, -0.461038, -0.181243,
		36.883499, 35.412605, 33.956379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.924923, 35.778439, 26.577499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634869, 35.506874, 26.623556>,  <40.460838, 35.343933, 26.651190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634869, 35.506874, 26.623556>,  <40.924923, 35.778439, 26.577499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634869, 35.506874, 26.623556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406077, 0.556634, 0.724749,
		-0.556134, 0.478783, -0.679325,
		-0.725132, -0.678915, 0.115140,
		40.417328, 35.303200, 26.658098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357189, 36.189087, 26.842577>,  <40.924923, 35.778439, 26.577499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357189, 36.189087, 26.842577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270508, 35.812923, 26.947395>,  <40.218498, 35.587223, 27.010286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270508, 35.812923, 26.947395>,  <40.357189, 36.189087, 26.842577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270508, 35.812923, 26.947395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424010, 0.332448, 0.842433,
		-0.879350, 0.071447, -0.470786,
		-0.216701, -0.940411, 0.262044,
		40.205498, 35.530800, 27.026009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659206, 36.260418, 27.006170>,  <40.357189, 36.189087, 26.842577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659206, 36.260418, 27.006170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820473, 35.942192, 27.187069>,  <39.917233, 35.751255, 27.295609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820473, 35.942192, 27.187069>,  <39.659206, 36.260418, 27.006170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820473, 35.942192, 27.187069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460869, 0.250429, 0.851402,
		-0.790603, -0.551685, -0.265688,
		0.403170, -0.795568, 0.452245,
		39.941425, 35.703522, 27.322742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067554, 35.990971, 27.428951>,  <39.659206, 36.260418, 27.006170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067554, 35.990971, 27.428951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373638, 35.802925, 27.604879>,  <39.557289, 35.690098, 27.710436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373638, 35.802925, 27.604879>,  <39.067554, 35.990971, 27.428951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373638, 35.802925, 27.604879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485582, 0.027080, 0.873772,
		-0.422681, -0.882191, -0.207556,
		0.765213, -0.470112, 0.439822,
		39.603203, 35.661892, 27.736826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779190, 35.434456, 27.889977>,  <39.067554, 35.990971, 27.428951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779190, 35.434456, 27.889977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153484, 35.515991, 28.005106>,  <39.378063, 35.564911, 28.074183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153484, 35.515991, 28.005106>,  <38.779190, 35.434456, 27.889977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153484, 35.515991, 28.005106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285584, -0.040970, 0.957478,
		0.206965, -0.978146, 0.019876,
		0.935739, 0.203841, 0.287822,
		39.434208, 35.577145, 28.091454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906128, 34.911343, 28.352980>,  <38.779190, 35.434456, 27.889977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906128, 34.911343, 28.352980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110298, 35.240822, 28.451767>,  <39.232800, 35.438507, 28.511040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110298, 35.240822, 28.451767>,  <38.906128, 34.911343, 28.352980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110298, 35.240822, 28.451767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303762, -0.095973, 0.947902,
		0.804485, -0.558851, 0.201220,
		0.510425, 0.823695, 0.246967,
		39.263424, 35.487930, 28.525856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991253, 34.796459, 29.026800>,  <38.906128, 34.911343, 28.352980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991253, 34.796459, 29.026800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098885, 35.180176, 28.992476>,  <39.163464, 35.410404, 28.971880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098885, 35.180176, 28.992476>,  <38.991253, 34.796459, 29.026800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098885, 35.180176, 28.992476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134730, 0.125714, 0.982875,
		0.953647, -0.252913, 0.163072,
		0.269082, 0.959287, -0.085812,
		39.179607, 35.467960, 28.966732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539207, 34.919743, 29.463503>,  <38.991253, 34.796459, 29.026800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539207, 34.919743, 29.463503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381809, 35.285313, 29.423719>,  <39.287369, 35.504654, 29.399849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381809, 35.285313, 29.423719>,  <39.539207, 34.919743, 29.463503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381809, 35.285313, 29.423719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059269, 0.082741, 0.994807,
		0.917412, 0.397351, 0.021609,
		-0.393500, 0.913929, -0.099458,
		39.263760, 35.559490, 29.393883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728867, 35.333977, 30.126944>,  <39.539207, 34.919743, 29.463503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728867, 35.333977, 30.126944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432034, 35.550808, 29.969225>,  <39.253933, 35.680904, 29.874594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432034, 35.550808, 29.969225>,  <39.728867, 35.333977, 30.126944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432034, 35.550808, 29.969225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389874, 0.129450, 0.911724,
		0.545265, 0.830299, 0.115279,
		-0.742081, 0.542075, -0.394296,
		39.209408, 35.713432, 29.850937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183361, 35.978500, 30.406973>,  <39.728867, 35.333977, 30.126944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183361, 35.978500, 30.406973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497921, 36.126041, 30.605173>,  <40.686657, 36.214565, 30.724092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497921, 36.126041, 30.605173>,  <40.183361, 35.978500, 30.406973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497921, 36.126041, 30.605173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545669, -0.038860, -0.837099,
		-0.289509, 0.928676, -0.231830,
		0.786403, 0.368850, 0.495499,
		40.733841, 36.236698, 30.753822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478508, 36.538540, 29.894855>,  <40.183361, 35.978500, 30.406973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478508, 36.538540, 29.894855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766407, 36.417938, 30.144995>,  <40.939144, 36.345577, 30.295078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766407, 36.417938, 30.144995>,  <40.478508, 36.538540, 29.894855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766407, 36.417938, 30.144995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640352, -0.059633, -0.765763,
		0.268170, 0.951599, 0.150147,
		0.719746, -0.301501, 0.625351,
		40.982330, 36.327488, 30.332600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027271, 36.856812, 29.700451>,  <40.478508, 36.538540, 29.894855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027271, 36.856812, 29.700451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187222, 36.557152, 29.911688>,  <41.283192, 36.377357, 30.038431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187222, 36.557152, 29.911688>,  <41.027271, 36.856812, 29.700451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187222, 36.557152, 29.911688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764452, -0.045287, -0.643088,
		0.505682, 0.660857, 0.554576,
		0.399874, -0.749145, 0.528094,
		41.307182, 36.332409, 30.070116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751530, 36.940811, 29.594765>,  <41.027271, 36.856812, 29.700451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751530, 36.940811, 29.594765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751915, 36.586384, 29.780190>,  <41.752144, 36.373730, 29.891443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751915, 36.586384, 29.780190>,  <41.751530, 36.940811, 29.594765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751915, 36.586384, 29.780190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846456, -0.246106, -0.472169,
		0.532457, 0.392836, 0.749779,
		0.000960, -0.886065, 0.463560,
		41.752201, 36.320564, 29.919258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371868, 36.928299, 29.946838>,  <41.751530, 36.940811, 29.594765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371868, 36.928299, 29.946838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266125, 36.547184, 29.887077>,  <42.202679, 36.318516, 29.851221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266125, 36.547184, 29.887077>,  <42.371868, 36.928299, 29.946838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266125, 36.547184, 29.887077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922098, -0.204312, -0.328620,
		0.282580, -0.224634, 0.932571,
		-0.264355, -0.952783, -0.149400,
		42.186817, 36.261349, 29.842257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929771, 36.625610, 30.087635>,  <42.371868, 36.928299, 29.946838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929771, 36.625610, 30.087635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720612, 36.352219, 29.883898>,  <42.595116, 36.188183, 29.761656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720612, 36.352219, 29.883898>,  <42.929771, 36.625610, 30.087635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720612, 36.352219, 29.883898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823103, -0.249572, -0.510113,
		0.221534, -0.685980, 0.693075,
		-0.522899, -0.683480, -0.509344,
		42.563744, 36.147175, 29.731094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410088, 36.110504, 30.103165>,  <42.929771, 36.625610, 30.087635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410088, 36.110504, 30.103165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150066, 36.066208, 29.802456>,  <42.994053, 36.039631, 29.622030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150066, 36.066208, 29.802456>,  <43.410088, 36.110504, 30.103165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150066, 36.066208, 29.802456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752160, -0.234482, -0.615851,
		-0.108078, -0.965792, 0.235721,
		-0.650057, -0.110740, -0.751773,
		42.955048, 36.032986, 29.576923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379959, 35.371048, 29.895939>,  <43.410088, 36.110504, 30.103165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379959, 35.371048, 29.895939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276390, 35.609638, 29.592049>,  <43.214249, 35.752792, 29.409714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276390, 35.609638, 29.592049>,  <43.379959, 35.371048, 29.895939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276390, 35.609638, 29.592049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631607, -0.490530, -0.600378,
		-0.730776, -0.635296, -0.249728,
		-0.258919, 0.596472, -0.759725,
		43.198715, 35.788578, 29.364132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328495, 34.892643, 29.326553>,  <43.379959, 35.371048, 29.895939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328495, 34.892643, 29.326553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328033, 35.243050, 29.133644>,  <43.327759, 35.453293, 29.017899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328033, 35.243050, 29.133644>,  <43.328495, 34.892643, 29.326553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328033, 35.243050, 29.133644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570099, -0.395651, -0.720033,
		-0.821575, -0.275773, -0.498963,
		-0.001150, 0.876020, -0.482275,
		43.327690, 35.505856, 28.988962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174019, 34.824169, 28.632074>,  <43.328495, 34.892643, 29.326553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174019, 34.824169, 28.632074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363178, 35.176075, 28.612530>,  <43.476673, 35.387218, 28.600803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363178, 35.176075, 28.612530>,  <43.174019, 34.824169, 28.632074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363178, 35.176075, 28.612530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472777, -0.300143, -0.828490,
		-0.743539, 0.368690, -0.557868,
		0.472897, 0.879762, -0.048860,
		43.505047, 35.440002, 28.597872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085041, 35.142143, 27.963758>,  <43.174019, 34.824169, 28.632074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085041, 35.142143, 27.963758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414486, 35.332886, 28.086575>,  <43.612152, 35.447330, 28.160265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414486, 35.332886, 28.086575>,  <43.085041, 35.142143, 27.963758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414486, 35.332886, 28.086575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448162, -0.215413, -0.867611,
		-0.347581, 0.852179, -0.391124,
		0.823613, 0.476852, 0.307040,
		43.661572, 35.475941, 28.178686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467922, 35.385792, 27.329391>,  <43.085041, 35.142143, 27.963758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467922, 35.385792, 27.329391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765648, 35.426643, 27.593384>,  <43.944283, 35.451153, 27.751780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765648, 35.426643, 27.593384>,  <43.467922, 35.385792, 27.329391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765648, 35.426643, 27.593384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643342, -0.374831, -0.667542,
		0.179205, 0.921450, -0.344694,
		0.744310, 0.102129, 0.659979,
		43.988941, 35.457283, 27.791378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026688, 35.743282, 26.997732>,  <43.467922, 35.385792, 27.329391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026688, 35.743282, 26.997732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197021, 35.531784, 27.291426>,  <44.299221, 35.404884, 27.467642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197021, 35.531784, 27.291426>,  <44.026688, 35.743282, 26.997732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197021, 35.531784, 27.291426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734512, -0.271855, -0.621761,
		0.528356, 0.804069, 0.272604,
		0.425830, -0.528742, 0.734235,
		44.324772, 35.373161, 27.511696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820423, 35.998741, 27.157921>,  <44.026688, 35.743282, 26.997732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820423, 35.998741, 27.157921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786591, 35.621082, 27.285315>,  <44.766293, 35.394485, 27.361750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786591, 35.621082, 27.285315>,  <44.820423, 35.998741, 27.157921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786591, 35.621082, 27.285315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721711, -0.278426, -0.633729,
		0.687007, 0.176251, 0.704951,
		-0.084581, -0.944148, 0.318482,
		44.761215, 35.337837, 27.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.662285, 28.455067, 27.218668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609310, 28.814379, 27.051069>,  <39.577526, 29.029966, 26.950510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609310, 28.814379, 27.051069>,  <39.662285, 28.455067, 27.218668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609310, 28.814379, 27.051069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210695, 0.387545, 0.897451,
		0.968539, 0.207138, 0.137937,
		-0.132439, 0.898278, -0.418995,
		39.569580, 29.083862, 26.925371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109142, 28.897388, 27.483559>,  <39.662285, 28.455067, 27.218668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109142, 28.897388, 27.483559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.770752, 29.076839, 27.368282>,  <39.567719, 29.184509, 27.299116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.770752, 29.076839, 27.368282>,  <40.109142, 28.897388, 27.483559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770752, 29.076839, 27.368282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075109, 0.434830, 0.897375,
		0.527900, 0.780806, -0.334161,
		-0.845979, 0.448626, -0.288192,
		39.516960, 29.211428, 27.281824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983158, 29.259769, 28.003513>,  <40.109142, 28.897388, 27.483559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983158, 29.259769, 28.003513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661079, 29.361036, 27.789013>,  <39.467831, 29.421797, 27.660313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661079, 29.361036, 27.789013>,  <39.983158, 29.259769, 28.003513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661079, 29.361036, 27.789013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340053, 0.543717, 0.767291,
		0.485823, 0.800174, -0.351707,
		-0.805195, 0.253169, -0.536252,
		39.419521, 29.436987, 27.628138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840622, 30.036661, 28.114117>,  <39.983158, 29.259769, 28.003513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840622, 30.036661, 28.114117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.495544, 29.872450, 27.995981>,  <39.288498, 29.773924, 27.925100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.495544, 29.872450, 27.995981>,  <39.840622, 30.036661, 28.114117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495544, 29.872450, 27.995981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474792, 0.456353, 0.752538,
		-0.174159, 0.789435, -0.588609,
		-0.862694, -0.410528, -0.295340,
		39.236736, 29.749290, 27.907379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409954, 30.582027, 27.994213>,  <39.840622, 30.036661, 28.114117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409954, 30.582027, 27.994213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184303, 30.261509, 28.073900>,  <39.048912, 30.069199, 28.121712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184303, 30.261509, 28.073900>,  <39.409954, 30.582027, 27.994213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184303, 30.261509, 28.073900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464957, 0.507666, 0.725321,
		-0.682332, 0.316545, -0.658955,
		-0.564126, -0.801296, 0.199217,
		39.015064, 30.021120, 28.133665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879402, 30.895628, 28.199076>,  <39.409954, 30.582027, 27.994213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879402, 30.895628, 28.199076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817966, 30.519585, 28.320799>,  <38.781105, 30.293959, 28.393833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817966, 30.519585, 28.320799>,  <38.879402, 30.895628, 28.199076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817966, 30.519585, 28.320799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208323, 0.331846, 0.920044,
		-0.965925, 0.077917, -0.246815,
		-0.153591, -0.940110, 0.304306,
		38.771889, 30.237551, 28.412090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349293, 30.990070, 28.503490>,  <38.879402, 30.895628, 28.199076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349293, 30.990070, 28.503490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457916, 30.637623, 28.658348>,  <38.523090, 30.426153, 28.751263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457916, 30.637623, 28.658348>,  <38.349293, 30.990070, 28.503490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457916, 30.637623, 28.658348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334083, 0.290945, 0.896515,
		-0.902576, -0.372797, -0.215358,
		0.271561, -0.881120, 0.387145,
		38.539383, 30.373287, 28.774492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750450, 30.692892, 28.848724>,  <38.349293, 30.990070, 28.503490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750450, 30.692892, 28.848724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080578, 30.559885, 29.031277>,  <38.278652, 30.480080, 29.140808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080578, 30.559885, 29.031277>,  <37.750450, 30.692892, 28.848724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080578, 30.559885, 29.031277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387919, 0.253434, 0.886166,
		-0.410329, -0.908406, 0.080173,
		0.825317, -0.332519, 0.456379,
		38.328175, 30.460129, 29.168190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507557, 30.218340, 29.289089>,  <37.750450, 30.692892, 28.848724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507557, 30.218340, 29.289089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.872967, 30.253166, 29.448032>,  <38.092213, 30.274061, 29.543398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.872967, 30.253166, 29.448032>,  <37.507557, 30.218340, 29.289089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872967, 30.253166, 29.448032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402781, 0.056920, 0.913525,
		0.056920, -0.994575, 0.087066,
		-0.913525, -0.087066, -0.397357,
		38.147026, 30.279285, 29.567240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609585, 29.650373, 29.825249>,  <37.507557, 30.218340, 29.289089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609585, 29.650373, 29.825249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857662, 29.944996, 29.933210>,  <38.006508, 30.121769, 29.997988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857662, 29.944996, 29.933210>,  <37.609585, 29.650373, 29.825249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857662, 29.944996, 29.933210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479703, 0.083862, 0.873414,
		0.620685, -0.671156, 0.405339,
		0.620190, 0.736557, 0.269904,
		38.043720, 30.165962, 30.014181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651131, 29.435654, 30.557899>,  <37.609585, 29.650373, 29.825249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651131, 29.435654, 30.557899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799431, 29.806070, 30.529625>,  <37.888409, 30.028320, 30.512661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799431, 29.806070, 30.529625>,  <37.651131, 29.435654, 30.557899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799431, 29.806070, 30.529625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513597, 0.267845, 0.815155,
		0.773799, -0.265913, 0.574914,
		0.370748, 0.926039, -0.070686,
		37.910656, 30.083881, 30.508419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760471, 29.497431, 31.215117>,  <37.651131, 29.435654, 30.557899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760471, 29.497431, 31.215117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.731785, 29.848349, 31.025290>,  <37.714573, 30.058899, 30.911394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.731785, 29.848349, 31.025290>,  <37.760471, 29.497431, 31.215117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731785, 29.848349, 31.025290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698702, 0.295361, 0.651596,
		0.711809, 0.378310, 0.591785,
		-0.071716, 0.877293, -0.474567,
		37.710270, 30.111536, 30.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847149, 30.006954, 31.737226>,  <37.760471, 29.497431, 31.215117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847149, 30.006954, 31.737226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658211, 30.178074, 31.428972>,  <37.544849, 30.280746, 31.244020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658211, 30.178074, 31.428972>,  <37.847149, 30.006954, 31.737226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658211, 30.178074, 31.428972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651215, 0.419813, 0.632200,
		0.593978, 0.800464, 0.080294,
		-0.472345, 0.427801, -0.770634,
		37.516506, 30.306414, 31.197783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980278, 30.678793, 31.917667>,  <37.847149, 30.006954, 31.737226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980278, 30.678793, 31.917667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.655224, 30.633230, 31.689054>,  <37.460190, 30.605892, 31.551888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.655224, 30.633230, 31.689054>,  <37.980278, 30.678793, 31.917667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655224, 30.633230, 31.689054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567127, 0.380291, 0.730579,
		0.134132, 0.917826, -0.373636,
		-0.812635, -0.113905, -0.571533,
		37.411434, 30.599058, 31.517595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539097, 31.193943, 31.904531>,  <37.980278, 30.678793, 31.917667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539097, 31.193943, 31.904531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754066, 30.999697, 32.180313>,  <38.883049, 30.883148, 32.345783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754066, 30.999697, 32.180313>,  <38.539097, 31.193943, 31.904531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754066, 30.999697, 32.180313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559047, -0.406943, -0.722402,
		0.631379, 0.773676, 0.052780,
		0.537426, -0.485616, 0.689456,
		38.915295, 30.854012, 32.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252983, 31.274204, 31.741095>,  <38.539097, 31.193943, 31.904531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252983, 31.274204, 31.741095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243958, 30.948526, 31.973156>,  <39.238541, 30.753120, 32.112392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243958, 30.948526, 31.973156>,  <39.252983, 31.274204, 31.741095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243958, 30.948526, 31.973156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706108, -0.423791, -0.567285,
		0.707744, 0.396850, 0.584473,
		-0.022567, -0.814194, 0.580155,
		39.237186, 30.704268, 32.147202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972488, 31.137222, 31.726072>,  <39.252983, 31.274204, 31.741095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972488, 31.137222, 31.726072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819347, 30.801430, 31.880316>,  <39.727463, 30.599955, 31.972862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819347, 30.801430, 31.880316>,  <39.972488, 31.137222, 31.726072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819347, 30.801430, 31.880316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744818, -0.527433, -0.408731,
		0.546504, 0.130723, 0.827191,
		-0.382857, -0.839480, 0.385609,
		39.704491, 30.549585, 31.995998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547802, 30.817802, 32.143703>,  <39.972488, 31.137222, 31.726072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547802, 30.817802, 32.143703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.282104, 30.554449, 32.002106>,  <40.122688, 30.396437, 31.917147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.282104, 30.554449, 32.002106>,  <40.547802, 30.817802, 32.143703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282104, 30.554449, 32.002106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747510, -0.582749, -0.318798,
		0.003601, -0.476373, 0.879236,
		-0.664241, -0.658386, -0.353995,
		40.082832, 30.356934, 31.895906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905659, 30.268248, 32.282642>,  <40.547802, 30.817802, 32.143703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905659, 30.268248, 32.282642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613029, 30.152763, 32.035599>,  <40.437450, 30.083473, 31.887373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613029, 30.152763, 32.035599>,  <40.905659, 30.268248, 32.282642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613029, 30.152763, 32.035599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662924, -0.512724, -0.545569,
		-0.159151, -0.808553, 0.566491,
		-0.731575, -0.288713, -0.617610,
		40.393559, 30.066149, 31.850315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025864, 29.636724, 32.113255>,  <40.905659, 30.268248, 32.282642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025864, 29.636724, 32.113255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.809555, 29.767597, 31.803284>,  <40.679768, 29.846121, 31.617300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.809555, 29.767597, 31.803284>,  <41.025864, 29.636724, 32.113255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809555, 29.767597, 31.803284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628158, -0.455633, -0.630726,
		-0.559445, -0.827859, 0.040874,
		-0.540776, 0.327181, -0.774928,
		40.647324, 29.865751, 31.570805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083199, 29.091110, 31.561375>,  <41.025864, 29.636724, 32.113255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083199, 29.091110, 31.561375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.959248, 29.418797, 31.368351>,  <40.884876, 29.615408, 31.252537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.959248, 29.418797, 31.368351>,  <41.083199, 29.091110, 31.561375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959248, 29.418797, 31.368351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329031, -0.383782, -0.862815,
		-0.892029, -0.426141, -0.150623,
		-0.309875, 0.819216, -0.482558,
		40.866283, 29.664562, 31.223583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709404, 28.862045, 30.985214>,  <41.083199, 29.091110, 31.561375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709404, 28.862045, 30.985214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.849178, 29.227179, 30.900711>,  <40.933041, 29.446259, 30.850010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.849178, 29.227179, 30.900711>,  <40.709404, 28.862045, 30.985214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849178, 29.227179, 30.900711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431897, -0.357013, -0.828255,
		-0.831482, 0.198178, -0.519003,
		0.349433, 0.912835, -0.211257,
		40.954006, 29.501030, 30.837334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687912, 28.880442, 30.295252>,  <40.709404, 28.862045, 30.985214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687912, 28.880442, 30.295252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.908192, 29.210011, 30.348743>,  <41.040359, 29.407751, 30.380838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.908192, 29.210011, 30.348743>,  <40.687912, 28.880442, 30.295252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908192, 29.210011, 30.348743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437233, -0.148270, -0.887042,
		-0.711024, 0.546965, -0.441898,
		0.550701, 0.823920, 0.133727,
		41.073402, 29.457188, 30.388863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677059, 29.292402, 29.658154>,  <40.687912, 28.880442, 30.295252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677059, 29.292402, 29.658154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005810, 29.418266, 29.848106>,  <41.203060, 29.493784, 29.962078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005810, 29.418266, 29.848106>,  <40.677059, 29.292402, 29.658154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005810, 29.418266, 29.848106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524868, -0.094224, -0.845953,
		-0.221441, 0.944516, -0.242595,
		0.821875, 0.314659, 0.474881,
		41.252373, 29.512665, 29.990570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791431, 29.947451, 29.381273>,  <40.677059, 29.292402, 29.658154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791431, 29.947451, 29.381273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.129177, 29.783463, 29.519247>,  <41.331825, 29.685070, 29.602032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.129177, 29.783463, 29.519247>,  <40.791431, 29.947451, 29.381273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129177, 29.783463, 29.519247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396805, 0.045920, -0.916754,
		0.360001, 0.910943, 0.201450,
		0.844361, -0.409969, 0.344935,
		41.382484, 29.660473, 29.622728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293373, 30.364765, 29.131721>,  <40.791431, 29.947451, 29.381273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293373, 30.364765, 29.131721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.467865, 30.015356, 29.218124>,  <41.572559, 29.805710, 29.269966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.467865, 30.015356, 29.218124>,  <41.293373, 30.364765, 29.131721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467865, 30.015356, 29.218124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342278, -0.060925, -0.937621,
		0.832196, 0.482951, 0.272412,
		0.436229, -0.873525, 0.216005,
		41.598732, 29.753298, 29.282927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912968, 30.433157, 28.795343>,  <41.293373, 30.364765, 29.131721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912968, 30.433157, 28.795343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.888523, 30.037817, 28.851097>,  <41.873856, 29.800613, 28.884548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.888523, 30.037817, 28.851097>,  <41.912968, 30.433157, 28.795343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888523, 30.037817, 28.851097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205293, -0.149103, -0.967276,
		0.976791, -0.030496, 0.212014,
		-0.061110, -0.988351, 0.139382,
		41.870190, 29.741312, 28.892912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451733, 30.186052, 28.500498>,  <41.912968, 30.433157, 28.795343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451733, 30.186052, 28.500498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.206730, 29.870115, 28.487932>,  <42.059731, 29.680553, 28.480392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.206730, 29.870115, 28.487932>,  <42.451733, 30.186052, 28.500498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206730, 29.870115, 28.487932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310045, -0.203498, -0.928688,
		0.727126, -0.578563, 0.369530,
		-0.612503, -0.789844, -0.031412,
		42.022980, 29.633162, 28.478508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087650, 30.026482, 28.920784>,  <42.451733, 30.186052, 28.500498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087650, 30.026482, 28.920784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.460014, 29.958796, 29.050257>,  <43.683434, 29.918184, 29.127941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.460014, 29.958796, 29.050257>,  <43.087650, 30.026482, 28.920784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460014, 29.958796, 29.050257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261905, 0.308432, 0.914481,
		-0.254580, -0.936074, 0.242804,
		0.930911, -0.169217, 0.323683,
		43.739288, 29.908031, 29.147362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106365, 29.508192, 29.549685>,  <43.087650, 30.026482, 28.920784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106365, 29.508192, 29.549685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.432796, 29.739094, 29.560974>,  <43.628654, 29.877636, 29.567747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.432796, 29.739094, 29.560974>,  <43.106365, 29.508192, 29.549685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432796, 29.739094, 29.560974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275019, 0.344922, 0.897437,
		0.508318, -0.740137, 0.440238,
		0.816075, 0.577257, 0.028221,
		43.677620, 29.912270, 29.569441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355171, 29.346111, 30.194714>,  <43.106365, 29.508192, 29.549685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355171, 29.346111, 30.194714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.554253, 29.668938, 30.067633>,  <43.673702, 29.862635, 29.991385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.554253, 29.668938, 30.067633>,  <43.355171, 29.346111, 30.194714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554253, 29.668938, 30.067633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071009, 0.402978, 0.912450,
		0.864438, -0.431566, 0.257872,
		0.497700, 0.807068, -0.317704,
		43.703564, 29.911058, 29.972321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008331, 29.401918, 30.567028>,  <43.355171, 29.346111, 30.194714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008331, 29.401918, 30.567028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.939777, 29.763887, 30.411213>,  <43.898643, 29.981070, 30.317724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.939777, 29.763887, 30.411213>,  <44.008331, 29.401918, 30.567028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939777, 29.763887, 30.411213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043868, 0.402005, 0.914586,
		0.984227, 0.139660, -0.108596,
		-0.171387, 0.904924, -0.389538,
		43.888363, 30.035364, 30.294352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454018, 29.793627, 30.898466>,  <44.008331, 29.401918, 30.567028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454018, 29.793627, 30.898466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.192123, 30.056427, 30.748978>,  <44.034985, 30.214108, 30.659285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.192123, 30.056427, 30.748978>,  <44.454018, 29.793627, 30.898466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192123, 30.056427, 30.748978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106726, 0.569841, 0.814795,
		0.748282, 0.493592, -0.443216,
		-0.654739, 0.656999, -0.373723,
		43.995701, 30.253527, 30.636860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751827, 30.378628, 30.956888>,  <44.454018, 29.793627, 30.898466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751827, 30.378628, 30.956888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.359810, 30.449844, 30.921534>,  <44.124599, 30.492575, 30.900320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.359810, 30.449844, 30.921534>,  <44.751827, 30.378628, 30.956888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359810, 30.449844, 30.921534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031975, 0.580078, 0.813933,
		0.196187, 0.794865, -0.574196,
		-0.980045, 0.178043, -0.088388,
		44.065796, 30.503258, 30.895018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744797, 31.029892, 31.058214>,  <44.751827, 30.378628, 30.956888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744797, 31.029892, 31.058214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.376690, 30.894951, 31.137520>,  <44.155827, 30.813986, 31.185104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.376690, 30.894951, 31.137520>,  <44.744797, 31.029892, 31.058214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376690, 30.894951, 31.137520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017992, 0.542626, 0.839782,
		-0.390887, 0.769253, -0.505428,
		-0.920263, -0.337353, 0.198265,
		44.100613, 30.793745, 31.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390316, 31.546782, 31.379181>,  <44.744797, 31.029892, 31.058214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390316, 31.546782, 31.379181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.145073, 31.249342, 31.485878>,  <43.997925, 31.070877, 31.549896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.145073, 31.249342, 31.485878>,  <44.390316, 31.546782, 31.379181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145073, 31.249342, 31.485878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197358, 0.471119, 0.859707,
		-0.764948, 0.474451, -0.435604,
		-0.613110, -0.743601, 0.266745,
		43.961140, 31.026262, 31.565901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774071, 31.894997, 31.600662>,  <44.390316, 31.546782, 31.379181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774071, 31.894997, 31.600662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.765541, 31.536802, 31.778492>,  <43.760422, 31.321886, 31.885189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.765541, 31.536802, 31.778492>,  <43.774071, 31.894997, 31.600662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765541, 31.536802, 31.778492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512430, 0.391616, 0.764233,
		-0.858464, -0.211514, -0.467227,
		-0.021327, -0.895488, 0.444575,
		43.759144, 31.268156, 31.911865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090706, 31.872200, 31.881433>,  <43.774071, 31.894997, 31.600662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090706, 31.872200, 31.881433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.314476, 31.608639, 32.082584>,  <43.448738, 31.450502, 32.203274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.314476, 31.608639, 32.082584>,  <43.090706, 31.872200, 31.881433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314476, 31.608639, 32.082584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287124, 0.415087, 0.863286,
		-0.777561, -0.627334, 0.043025,
		0.559428, -0.658903, 0.502878,
		43.482304, 31.410967, 32.233448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679672, 31.761671, 32.447365>,  <43.090706, 31.872200, 31.881433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679672, 31.761671, 32.447365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.036572, 31.609514, 32.544693>,  <43.250710, 31.518221, 32.603088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.036572, 31.609514, 32.544693>,  <42.679672, 31.761671, 32.447365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036572, 31.609514, 32.544693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139902, 0.279456, 0.949911,
		-0.429334, -0.881594, 0.196126,
		0.892245, -0.380391, 0.243316,
		43.304245, 31.495398, 32.617687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621693, 31.125767, 32.931442>,  <42.679672, 31.761671, 32.447365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621693, 31.125767, 32.931442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.987686, 31.266893, 33.009743>,  <43.207283, 31.351570, 33.056721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.987686, 31.266893, 33.009743>,  <42.621693, 31.125767, 32.931442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987686, 31.266893, 33.009743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213096, 0.010602, 0.976974,
		0.342619, -0.935632, 0.084885,
		0.914988, 0.352818, 0.195747,
		43.262184, 31.372738, 33.068466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929821, 30.597422, 33.456600>,  <42.621693, 31.125767, 32.931442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929821, 30.597422, 33.456600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.150196, 30.928524, 33.499084>,  <43.282421, 31.127186, 33.524574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.150196, 30.928524, 33.499084>,  <42.929821, 30.597422, 33.456600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150196, 30.928524, 33.499084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194858, 0.003845, 0.980824,
		0.811476, -0.561073, 0.163413,
		0.550942, 0.827758, 0.106209,
		43.315479, 31.176851, 33.530949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419468, 30.433447, 33.952919>,  <42.929821, 30.597422, 33.456600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419468, 30.433447, 33.952919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.358280, 30.828728, 33.950020>,  <43.321568, 31.065897, 33.948280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.358280, 30.828728, 33.950020>,  <43.419468, 30.433447, 33.952919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358280, 30.828728, 33.950020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190485, -0.022292, 0.981437,
		0.969699, 0.151512, 0.191648,
		-0.152971, 0.988204, -0.007245,
		43.312389, 31.125189, 33.947845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.660030, 35.592220, 27.200855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.399185, 35.289692, 27.221750>,  <45.242676, 35.108177, 27.234287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.399185, 35.289692, 27.221750>,  <45.660030, 35.592220, 27.200855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399185, 35.289692, 27.221750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652804, -0.595228, -0.468563,
		0.385475, -0.271456, 0.881884,
		-0.652117, -0.756317, 0.052238,
		45.203548, 35.062798, 27.237421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021328, 34.901516, 27.408428>,  <45.660030, 35.592220, 27.200855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021328, 34.901516, 27.408428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.677856, 34.759613, 27.260469>,  <45.471775, 34.674473, 27.171694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.677856, 34.759613, 27.260469>,  <46.021328, 34.901516, 27.408428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677856, 34.759613, 27.260469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505754, -0.703396, -0.499447,
		-0.083003, -0.615940, 0.783408,
		-0.858675, -0.354756, -0.369898,
		45.420254, 34.653187, 27.149500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173958, 34.167191, 27.331482>,  <46.021328, 34.901516, 27.408428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173958, 34.167191, 27.331482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.849003, 34.249653, 27.113298>,  <45.654030, 34.299129, 26.982388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.849003, 34.249653, 27.113298>,  <46.173958, 34.167191, 27.331482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849003, 34.249653, 27.113298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293912, -0.663140, -0.688375,
		-0.503628, -0.719545, 0.478136,
		-0.812389, 0.206155, -0.545459,
		45.605286, 34.311501, 26.949661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822960, 33.537205, 27.259657>,  <46.173958, 34.167191, 27.331482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822960, 33.537205, 27.259657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.731728, 33.776173, 26.952133>,  <45.676991, 33.919552, 26.767618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.731728, 33.776173, 26.952133>,  <45.822960, 33.537205, 27.259657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731728, 33.776173, 26.952133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231291, -0.733776, -0.638810,
		-0.945772, -0.323517, 0.029179,
		-0.228077, 0.597420, -0.768811,
		45.663303, 33.955399, 26.721489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344318, 33.178547, 26.797773>,  <45.822960, 33.537205, 27.259657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344318, 33.178547, 26.797773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.517433, 33.476933, 26.595293>,  <45.621304, 33.655964, 26.473804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.517433, 33.476933, 26.595293>,  <45.344318, 33.178547, 26.797773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517433, 33.476933, 26.595293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116286, -0.603016, -0.789208,
		-0.893965, 0.282694, -0.347721,
		0.432786, 0.745960, -0.506202,
		45.647270, 33.700722, 26.443432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984459, 33.188740, 26.201790>,  <45.344318, 33.178547, 26.797773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984459, 33.188740, 26.201790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.315182, 33.399014, 26.121738>,  <45.513615, 33.525177, 26.073708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.315182, 33.399014, 26.121738>,  <44.984459, 33.188740, 26.201790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315182, 33.399014, 26.121738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118096, -0.510093, -0.851973,
		-0.549954, 0.680780, -0.483828,
		0.826804, 0.525684, -0.200131,
		45.563221, 33.556717, 26.061699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967358, 33.277927, 25.455439>,  <44.984459, 33.188740, 26.201790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967358, 33.277927, 25.455439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.343479, 33.285007, 25.591383>,  <45.569153, 33.289257, 25.672951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.343479, 33.285007, 25.591383>,  <44.967358, 33.277927, 25.455439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343479, 33.285007, 25.591383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265942, -0.661356, -0.701344,
		0.212356, 0.749863, -0.626586,
		0.940308, 0.017701, 0.339863,
		45.625572, 33.290318, 25.693342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513535, 33.348949, 24.842503>,  <44.967358, 33.277927, 25.455439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513535, 33.348949, 24.842503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.726288, 33.197842, 25.145658>,  <45.853939, 33.107178, 25.327551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.726288, 33.197842, 25.145658>,  <45.513535, 33.348949, 24.842503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726288, 33.197842, 25.145658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415032, -0.663834, -0.622151,
		0.738140, 0.645459, -0.196296,
		0.531882, -0.377765, 0.757889,
		45.885853, 33.084511, 25.373026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027695, 32.929249, 24.478657>,  <45.513535, 33.348949, 24.842503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027695, 32.929249, 24.478657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.127537, 32.853500, 24.858517>,  <46.187443, 32.808052, 25.086433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.127537, 32.853500, 24.858517>,  <46.027695, 32.929249, 24.478657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127537, 32.853500, 24.858517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325686, -0.907143, -0.266494,
		0.911935, 0.375806, -0.164753,
		0.249605, -0.189368, 0.949651,
		46.202419, 32.796688, 25.143412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692486, 32.607567, 24.447987>,  <46.027695, 32.929249, 24.478657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692486, 32.607567, 24.447987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.503551, 32.515198, 24.788240>,  <46.390190, 32.459778, 24.992392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.503551, 32.515198, 24.788240>,  <46.692486, 32.607567, 24.447987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503551, 32.515198, 24.788240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241370, -0.962067, -0.127150,
		0.847728, 0.145260, 0.510153,
		-0.472332, -0.230924, 0.850633,
		46.361851, 32.445919, 25.043430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093597, 32.173168, 24.604256>,  <46.692486, 32.607567, 24.447987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093597, 32.173168, 24.604256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.756748, 32.104008, 24.808584>,  <46.554638, 32.062511, 24.931181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.756748, 32.104008, 24.808584>,  <47.093597, 32.173168, 24.604256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756748, 32.104008, 24.808584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068614, -0.973867, -0.216509,
		0.534905, -0.147277, 0.831977,
		-0.842122, -0.172897, 0.510820,
		46.504112, 32.052139, 24.961830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221600, 31.684704, 25.099743>,  <47.093597, 32.173168, 24.604256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221600, 31.684704, 25.099743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.825180, 31.665447, 25.049934>,  <46.587330, 31.653893, 25.020050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.825180, 31.665447, 25.049934>,  <47.221600, 31.684704, 25.099743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825180, 31.665447, 25.049934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084494, -0.948325, -0.305843,
		-0.103363, -0.313627, 0.943904,
		-0.991048, -0.048141, -0.124522,
		46.527866, 31.651005, 25.012577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783314, 31.049242, 25.433668>,  <47.221600, 31.684704, 25.099743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783314, 31.049242, 25.433668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.633751, 31.174326, 25.084406>,  <46.544014, 31.249376, 24.874847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.633751, 31.174326, 25.084406>,  <46.783314, 31.049242, 25.433668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633751, 31.174326, 25.084406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118978, -0.917493, -0.379541,
		-0.919807, -0.245796, 0.305842,
		-0.373898, 0.312716, -0.873160,
		46.521576, 31.268139, 24.822458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307087, 30.505566, 25.147709>,  <46.783314, 31.049242, 25.433668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307087, 30.505566, 25.147709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.421528, 30.732681, 24.838966>,  <46.490192, 30.868950, 24.653721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.421528, 30.732681, 24.838966>,  <46.307087, 30.505566, 25.147709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421528, 30.732681, 24.838966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155891, -0.822377, -0.547169,
		-0.945433, 0.036221, -0.323797,
		0.286102, 0.567789, -0.771856,
		46.507359, 30.903017, 24.607410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652775, 30.105993, 24.634838>,  <46.307087, 30.505566, 25.147709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652775, 30.105993, 24.634838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.478695, 30.420605, 24.459579>,  <46.374249, 30.609371, 24.354424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.478695, 30.420605, 24.459579>,  <46.652775, 30.105993, 24.634838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478695, 30.420605, 24.459579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699774, -0.010707, -0.714284,
		-0.566497, -0.617459, -0.545734,
		-0.435198, 0.786530, -0.438147,
		46.348137, 30.656563, 24.328135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391521, 29.495493, 24.545115>,  <46.652775, 30.105993, 24.634838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391521, 29.495493, 24.545115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.349262, 29.099457, 24.582115>,  <46.323906, 28.861835, 24.604315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.349262, 29.099457, 24.582115>,  <46.391521, 29.495493, 24.545115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349262, 29.099457, 24.582115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584853, 0.137098, 0.799469,
		-0.804229, 0.030362, -0.593543,
		-0.105647, -0.990092, 0.092501,
		46.317570, 28.802429, 24.609865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674225, 29.367718, 24.670311>,  <46.391521, 29.495493, 24.545115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674225, 29.367718, 24.670311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.847672, 29.059612, 24.857357>,  <45.951740, 28.874748, 24.969585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.847672, 29.059612, 24.857357>,  <45.674225, 29.367718, 24.670311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847672, 29.059612, 24.857357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620689, 0.120882, 0.774683,
		-0.653237, -0.626162, -0.425678,
		0.433620, -0.770265, 0.467616,
		45.977757, 28.828533, 24.997643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161942, 28.980917, 24.931065>,  <45.674225, 29.367718, 24.670311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161942, 28.980917, 24.931065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.484589, 28.873587, 25.141727>,  <45.678177, 28.809189, 25.268126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.484589, 28.873587, 25.141727>,  <45.161942, 28.980917, 24.931065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484589, 28.873587, 25.141727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491741, 0.189745, 0.849816,
		-0.327959, -0.944456, 0.021104,
		0.806618, -0.268328, 0.526657,
		45.726574, 28.793089, 25.299725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898422, 28.520346, 25.489780>,  <45.161942, 28.980917, 24.931065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898422, 28.520346, 25.489780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.248890, 28.655273, 25.627504>,  <45.459171, 28.736231, 25.710138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.248890, 28.655273, 25.627504>,  <44.898422, 28.520346, 25.489780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248890, 28.655273, 25.627504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395673, 0.095386, 0.913425,
		0.275275, -0.936545, 0.217042,
		0.876166, 0.337321, 0.344308,
		45.511742, 28.756470, 25.730797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170181, 27.988789, 26.005678>,  <44.898422, 28.520346, 25.489780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170181, 27.988789, 26.005678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.327652, 28.349487, 26.077097>,  <45.422134, 28.565907, 26.119947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.327652, 28.349487, 26.077097>,  <45.170181, 27.988789, 26.005678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327652, 28.349487, 26.077097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371542, -0.021573, 0.928165,
		0.840820, -0.431730, 0.326544,
		0.393673, 0.901745, 0.178545,
		45.445755, 28.620010, 26.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307026, 27.871618, 26.683855>,  <45.170181, 27.988789, 26.005678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307026, 27.871618, 26.683855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.330803, 28.266996, 26.628077>,  <45.345070, 28.504223, 26.594608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.330803, 28.266996, 26.628077>,  <45.307026, 27.871618, 26.683855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330803, 28.266996, 26.628077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271007, 0.150428, 0.950751,
		0.960740, -0.018723, 0.276817,
		0.059442, 0.988444, -0.139449,
		45.348637, 28.563530, 26.586243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579449, 28.004478, 27.320965>,  <45.307026, 27.871618, 26.683855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579449, 28.004478, 27.320965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.441151, 28.351036, 27.176846>,  <45.358170, 28.558971, 27.090374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.441151, 28.351036, 27.176846>,  <45.579449, 28.004478, 27.320965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441151, 28.351036, 27.176846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261656, 0.279728, 0.923736,
		0.901107, 0.413656, 0.129981,
		-0.345749, 0.866395, -0.360300,
		45.337425, 28.610954, 27.068756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698757, 28.571970, 27.855352>,  <45.579449, 28.004478, 27.320965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698757, 28.571970, 27.855352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.391289, 28.693850, 27.630386>,  <45.206810, 28.766977, 27.495407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.391289, 28.693850, 27.630386>,  <45.698757, 28.571970, 27.855352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391289, 28.693850, 27.630386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401555, 0.454542, 0.795076,
		0.497901, 0.836988, -0.227037,
		-0.768667, 0.304701, -0.562413,
		45.160690, 28.785259, 27.461662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627968, 29.178604, 28.185934>,  <45.698757, 28.571970, 27.855352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627968, 29.178604, 28.185934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.290070, 29.092588, 27.989908>,  <45.087330, 29.040979, 27.872293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.290070, 29.092588, 27.989908>,  <45.627968, 29.178604, 28.185934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290070, 29.092588, 27.989908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520299, 0.544368, 0.657992,
		0.125281, 0.810815, -0.571737,
		-0.844745, -0.215041, -0.490065,
		45.036648, 29.028076, 27.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287117, 29.816111, 27.981638>,  <45.627968, 29.178604, 28.185934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287117, 29.816111, 27.981638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.008457, 29.530737, 28.011805>,  <44.841263, 29.359512, 28.029905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.008457, 29.530737, 28.011805>,  <45.287117, 29.816111, 27.981638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008457, 29.530737, 28.011805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547000, 0.596246, 0.587607,
		-0.464188, 0.368103, -0.805624,
		-0.696650, -0.713436, 0.075418,
		44.799461, 29.316706, 28.034430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734650, 30.253077, 27.923693>,  <45.287117, 29.816111, 27.981638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734650, 30.253077, 27.923693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.590900, 29.899303, 28.042772>,  <44.504650, 29.687038, 28.114220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.590900, 29.899303, 28.042772>,  <44.734650, 30.253077, 27.923693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590900, 29.899303, 28.042772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720401, 0.465714, 0.513939,
		-0.593187, -0.029765, -0.804514,
		-0.359376, -0.884435, 0.297699,
		44.483086, 29.633972, 28.132082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957546, 30.210688, 27.842409>,  <44.734650, 30.253077, 27.923693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957546, 30.210688, 27.842409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.070797, 29.956194, 28.129475>,  <44.138748, 29.803497, 28.301714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.070797, 29.956194, 28.129475>,  <43.957546, 30.210688, 27.842409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070797, 29.956194, 28.129475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649412, 0.423464, 0.631618,
		-0.705763, -0.644891, -0.293283,
		0.283130, -0.636234, 0.717665,
		44.155735, 29.765324, 28.344774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440132, 30.250799, 28.339823>,  <43.957546, 30.210688, 27.842409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440132, 30.250799, 28.339823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.699718, 30.049633, 28.568182>,  <43.855469, 29.928934, 28.705196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.699718, 30.049633, 28.568182>,  <43.440132, 30.250799, 28.339823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699718, 30.049633, 28.568182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398417, 0.414616, 0.818142,
		-0.648160, -0.758399, 0.068700,
		0.648963, -0.502916, 0.570897,
		43.894409, 29.898758, 28.739450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899345, 29.657305, 28.337255>,  <43.440132, 30.250799, 28.339823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899345, 29.657305, 28.337255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.535530, 29.532688, 28.227215>,  <42.317242, 29.457918, 28.161190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.535530, 29.532688, 28.227215>,  <42.899345, 29.657305, 28.337255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535530, 29.532688, 28.227215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379128, -0.350712, -0.856308,
		0.170296, -0.883143, 0.437101,
		-0.909539, -0.311543, -0.275100,
		42.262669, 29.439226, 28.144686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028709, 29.056454, 27.932528>,  <42.899345, 29.657305, 28.337255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028709, 29.056454, 27.932528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647095, 29.133339, 27.840557>,  <42.418125, 29.179470, 27.785376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647095, 29.133339, 27.840557>,  <43.028709, 29.056454, 27.932528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647095, 29.133339, 27.840557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208821, -0.123922, -0.970071,
		-0.214955, -0.973497, 0.078088,
		-0.954038, 0.192215, -0.229924,
		42.360882, 29.191004, 27.771580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742016, 28.489918, 27.686636>,  <43.028709, 29.056454, 27.932528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742016, 28.489918, 27.686636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534054, 28.796633, 27.536045>,  <42.409275, 28.980661, 27.445690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534054, 28.796633, 27.536045>,  <42.742016, 28.489918, 27.686636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534054, 28.796633, 27.536045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170099, -0.338965, -0.925294,
		-0.837117, -0.545103, 0.045800,
		-0.519905, 0.766789, -0.376475,
		42.378082, 29.026669, 27.423103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545273, 28.246161, 27.154005>,  <42.742016, 28.489918, 27.686636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545273, 28.246161, 27.154005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.473389, 28.630548, 27.069870>,  <42.430256, 28.861181, 27.019388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.473389, 28.630548, 27.069870>,  <42.545273, 28.246161, 27.154005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473389, 28.630548, 27.069870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049007, -0.222299, -0.973746,
		-0.982498, -0.164687, 0.087044,
		-0.179713, 0.960969, -0.210337,
		42.419476, 28.918839, 27.006769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886868, 28.355555, 26.640722>,  <42.545273, 28.246161, 27.154005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886868, 28.355555, 26.640722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.145176, 28.660679, 26.627466>,  <42.300159, 28.843754, 26.619513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.145176, 28.660679, 26.627466>,  <41.886868, 28.355555, 26.640722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145176, 28.660679, 26.627466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091825, -0.120678, -0.988436,
		-0.757989, 0.635261, -0.147976,
		0.645772, 0.762811, -0.033140,
		42.338909, 28.889523, 26.617525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724419, 28.618912, 25.977545>,  <41.886868, 28.355555, 26.640722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724419, 28.618912, 25.977545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.068413, 28.786655, 26.093864>,  <42.274807, 28.887302, 26.163656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.068413, 28.786655, 26.093864>,  <41.724419, 28.618912, 25.977545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068413, 28.786655, 26.093864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285073, 0.077867, -0.955338,
		-0.423275, 0.904474, -0.052584,
		0.859984, 0.419361, 0.290800,
		42.326408, 28.912464, 26.181105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818661, 29.244492, 25.538843>,  <41.724419, 28.618912, 25.977545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818661, 29.244492, 25.538843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.180988, 29.143257, 25.674749>,  <42.398384, 29.082516, 25.756294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.180988, 29.143257, 25.674749>,  <41.818661, 29.244492, 25.538843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180988, 29.143257, 25.674749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347206, -0.016109, -0.937650,
		0.242780, 0.967310, 0.073281,
		0.905818, -0.253087, 0.339767,
		42.452732, 29.067331, 25.776680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581783, 29.668465, 24.958410>,  <41.818661, 29.244492, 25.538843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581783, 29.668465, 24.958410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.341595, 29.427666, 24.747875>,  <41.197479, 29.283186, 24.621553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.341595, 29.427666, 24.747875>,  <41.581783, 29.668465, 24.958410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341595, 29.427666, 24.747875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726079, 0.134701, 0.674288,
		-0.335021, 0.787056, -0.517981,
		-0.600475, -0.601996, -0.526337,
		41.161453, 29.247066, 24.589973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975174, 30.025608, 24.797945>,  <41.581783, 29.668465, 24.958410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975174, 30.025608, 24.797945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.860291, 29.642838, 24.780958>,  <40.791363, 29.413176, 24.770767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.860291, 29.642838, 24.780958>,  <40.975174, 30.025608, 24.797945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860291, 29.642838, 24.780958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581624, 0.138997, 0.801495,
		-0.761069, 0.254894, -0.596492,
		-0.287206, -0.956927, -0.042466,
		40.774128, 29.355759, 24.768219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220146, 29.969770, 24.933748>,  <40.975174, 30.025608, 24.797945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220146, 29.969770, 24.933748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.310963, 29.587622, 25.009340>,  <40.365452, 29.358332, 25.054695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.310963, 29.587622, 25.009340>,  <40.220146, 29.969770, 24.933748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310963, 29.587622, 25.009340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634613, 0.002057, 0.772827,
		-0.738727, -0.295395, -0.605825,
		0.227043, -0.955373, 0.188981,
		40.379074, 29.301010, 25.066034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541496, 29.536690, 24.919380>,  <40.220146, 29.969770, 24.933748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541496, 29.536690, 24.919380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818436, 29.345707, 25.135782>,  <39.984600, 29.231117, 25.265623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818436, 29.345707, 25.135782>,  <39.541496, 29.536690, 24.919380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818436, 29.345707, 25.135782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658770, -0.112340, 0.743910,
		-0.294410, -0.871442, -0.392315,
		0.692347, -0.477460, 0.541007,
		40.026138, 29.202469, 25.298084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185028, 28.986666, 25.274508>,  <39.541496, 29.536690, 24.919380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185028, 28.986666, 25.274508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514355, 29.048389, 25.492989>,  <39.711952, 29.085424, 25.624077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.514355, 29.048389, 25.492989>,  <39.185028, 28.986666, 25.274508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514355, 29.048389, 25.492989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537388, -0.097767, 0.837649,
		0.182658, -0.983173, 0.002431,
		0.823316, 0.154310, 0.546204,
		39.761349, 29.094683, 25.656849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126514, 28.473658, 25.785378>,  <39.185028, 28.986666, 25.274508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126514, 28.473658, 25.785378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383892, 28.756409, 25.902889>,  <39.538319, 28.926060, 25.973396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383892, 28.756409, 25.902889>,  <39.126514, 28.473658, 25.785378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383892, 28.756409, 25.902889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375428, -0.043047, 0.925851,
		0.667108, -0.706026, 0.237683,
		0.643444, 0.706876, 0.293779,
		39.576927, 28.968472, 25.991022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255821, 28.252075, 26.473108>,  <39.126514, 28.473658, 25.785378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255821, 28.252075, 26.473108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399223, 28.623674, 26.436375>,  <39.485264, 28.846634, 26.414335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399223, 28.623674, 26.436375>,  <39.255821, 28.252075, 26.473108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399223, 28.623674, 26.436375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395902, 0.240391, 0.886270,
		0.845419, -0.281378, 0.453975,
		0.358507, 0.928999, -0.091833,
		39.506775, 28.902374, 26.408825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.728722, 32.116421, 22.406925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.859238, 32.150238, 22.783518>,  <44.937550, 32.170528, 23.009474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.859238, 32.150238, 22.783518>,  <44.728722, 32.116421, 22.406925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859238, 32.150238, 22.783518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910945, 0.294081, 0.289303,
		-0.252412, -0.952034, 0.172974,
		0.326295, 0.084546, 0.941480,
		44.957127, 32.175602, 23.065962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222084, 31.754496, 22.894638>,  <44.728722, 32.116421, 22.406925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222084, 31.754496, 22.894638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.441311, 31.976297, 23.145124>,  <44.572849, 32.109379, 23.295416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.441311, 31.976297, 23.145124>,  <44.222084, 31.754496, 22.894638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441311, 31.976297, 23.145124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813182, 0.177944, 0.554140,
		0.195842, -0.812934, 0.548438,
		0.548070, 0.554504, 0.626214,
		44.605732, 32.142647, 23.332989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875393, 31.676048, 23.618994>,  <44.222084, 31.754496, 22.894638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875393, 31.676048, 23.618994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.123528, 31.985670, 23.669615>,  <44.272408, 32.171444, 23.699987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.123528, 31.985670, 23.669615>,  <43.875393, 31.676048, 23.618994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123528, 31.985670, 23.669615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608686, 0.373352, 0.700078,
		0.494650, -0.511318, 0.702762,
		0.620341, 0.774056, 0.126554,
		44.309631, 32.217888, 23.707581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160732, 31.618412, 24.236847>,  <43.875393, 31.676048, 23.618994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160732, 31.618412, 24.236847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.126026, 32.006626, 24.146925>,  <44.105202, 32.239555, 24.092972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.126026, 32.006626, 24.146925>,  <44.160732, 31.618412, 24.236847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126026, 32.006626, 24.146925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567048, 0.137424, 0.812140,
		0.819102, 0.197941, 0.538415,
		-0.086765, 0.970533, -0.224806,
		44.099998, 32.297787, 24.079483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008671, 32.022171, 24.895988>,  <44.160732, 31.618412, 24.236847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008671, 32.022171, 24.895988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.934551, 32.312817, 24.631355>,  <43.890079, 32.487206, 24.472576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.934551, 32.312817, 24.631355>,  <44.008671, 32.022171, 24.895988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934551, 32.312817, 24.631355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705364, 0.370401, 0.604371,
		0.684197, 0.578646, 0.443896,
		-0.185298, 0.726617, -0.661583,
		43.878963, 32.530804, 24.432880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997681, 32.673458, 25.277601>,  <44.008671, 32.022171, 24.895988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997681, 32.673458, 25.277601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.799019, 32.744930, 24.937859>,  <43.679821, 32.787815, 24.734013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.799019, 32.744930, 24.937859>,  <43.997681, 32.673458, 25.277601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799019, 32.744930, 24.937859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707315, 0.483826, 0.515381,
		0.503032, 0.856729, -0.113907,
		-0.496653, 0.178685, -0.849357,
		43.650024, 32.798534, 24.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845131, 33.398403, 25.266560>,  <43.997681, 32.673458, 25.277601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845131, 33.398403, 25.266560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.578941, 33.211349, 25.033850>,  <43.419228, 33.099117, 24.894224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.578941, 33.211349, 25.033850>,  <43.845131, 33.398403, 25.266560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578941, 33.211349, 25.033850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739109, 0.521651, 0.426143,
		0.104206, 0.713584, -0.692777,
		-0.665476, -0.467630, -0.581776,
		43.379299, 33.071060, 24.859318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323330, 33.920803, 25.204569>,  <43.845131, 33.398403, 25.266560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323330, 33.920803, 25.204569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.144466, 33.590603, 25.066811>,  <43.037148, 33.392483, 24.984156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.144466, 33.590603, 25.066811>,  <43.323330, 33.920803, 25.204569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144466, 33.590603, 25.066811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894456, 0.413014, 0.171369,
		0.000775, 0.384676, -0.923051,
		-0.447154, -0.825496, -0.344396,
		43.010319, 33.342953, 24.963491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821129, 34.118908, 24.621624>,  <43.323330, 33.920803, 25.204569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821129, 34.118908, 24.621624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.730446, 33.751995, 24.752588>,  <42.676037, 33.531849, 24.831165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.730446, 33.751995, 24.752588>,  <42.821129, 34.118908, 24.621624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730446, 33.751995, 24.752588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953323, 0.277826, 0.118270,
		-0.199450, -0.285314, -0.937452,
		-0.226704, -0.917284, 0.327408,
		42.662434, 33.476810, 24.850811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234859, 33.801796, 24.251827>,  <42.821129, 34.118908, 24.621624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234859, 33.801796, 24.251827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.263222, 33.624043, 24.609037>,  <42.280239, 33.517391, 24.823364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.263222, 33.624043, 24.609037>,  <42.234859, 33.801796, 24.251827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263222, 33.624043, 24.609037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964971, 0.196156, 0.174224,
		-0.252595, -0.874098, -0.414907,
		0.070902, -0.444382, 0.893027,
		42.284492, 33.490726, 24.876945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577766, 33.408665, 24.239773>,  <42.234859, 33.801796, 24.251827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577766, 33.408665, 24.239773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.691219, 33.434837, 24.622452>,  <41.759293, 33.450539, 24.852058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.691219, 33.434837, 24.622452>,  <41.577766, 33.408665, 24.239773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691219, 33.434837, 24.622452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911633, 0.327865, 0.247853,
		-0.297450, -0.942456, 0.152642,
		0.283636, 0.065430, 0.956697,
		41.776310, 33.454468, 24.909460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028355, 33.123466, 24.664698>,  <41.577766, 33.408665, 24.239773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028355, 33.123466, 24.664698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241215, 33.334538, 24.929535>,  <41.368931, 33.461182, 25.088438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241215, 33.334538, 24.929535>,  <41.028355, 33.123466, 24.664698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241215, 33.334538, 24.929535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844821, 0.382291, 0.374340,
		-0.055582, -0.758558, 0.649230,
		0.532154, 0.527677, 0.662095,
		41.400860, 33.492840, 25.128162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622047, 32.577045, 24.990932>,  <41.028355, 33.123466, 24.664698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622047, 32.577045, 24.990932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.256805, 32.486858, 24.855043>,  <40.037663, 32.432747, 24.773510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.256805, 32.486858, 24.855043>,  <40.622047, 32.577045, 24.990932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256805, 32.486858, 24.855043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402033, -0.359044, -0.842293,
		0.067933, -0.905678, 0.418488,
		-0.913102, -0.225465, -0.339721,
		39.982876, 32.419220, 24.753126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619007, 31.886568, 24.806999>,  <40.622047, 32.577045, 24.990932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619007, 31.886568, 24.806999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.332916, 32.054981, 24.583862>,  <40.161263, 32.156029, 24.449980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.332916, 32.054981, 24.583862>,  <40.619007, 31.886568, 24.806999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332916, 32.054981, 24.583862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442171, -0.345523, -0.827707,
		-0.541239, -0.838656, 0.060958,
		-0.715224, 0.421033, -0.557840,
		40.118347, 32.181290, 24.416510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522961, 31.312107, 24.354166>,  <40.619007, 31.886568, 24.806999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522961, 31.312107, 24.354166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325924, 31.615446, 24.183397>,  <40.207703, 31.797449, 24.080936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325924, 31.615446, 24.183397>,  <40.522961, 31.312107, 24.354166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325924, 31.615446, 24.183397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385180, -0.249914, -0.888358,
		-0.780376, -0.602043, -0.168993,
		-0.492596, 0.758345, -0.426922,
		40.178146, 31.842949, 24.055321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153027, 31.077053, 23.690983>,  <40.522961, 31.312107, 24.354166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153027, 31.077053, 23.690983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223995, 31.467546, 23.641197>,  <40.266579, 31.701841, 23.611326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223995, 31.467546, 23.641197>,  <40.153027, 31.077053, 23.690983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223995, 31.467546, 23.641197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302044, -0.174382, -0.937209,
		-0.936638, 0.128690, -0.325805,
		0.177424, 0.976232, -0.124463,
		40.277222, 31.760416, 23.603859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798630, 31.245785, 23.070936>,  <40.153027, 31.077053, 23.690983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798630, 31.245785, 23.070936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.070637, 31.532969, 23.130419>,  <40.233841, 31.705278, 23.166109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.070637, 31.532969, 23.130419>,  <39.798630, 31.245785, 23.070936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070637, 31.532969, 23.130419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260304, -0.046797, -0.964392,
		-0.685435, 0.694510, -0.218711,
		0.680015, 0.717959, 0.148708,
		40.274643, 31.748356, 23.175032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756332, 31.643099, 22.571224>,  <39.798630, 31.245785, 23.070936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756332, 31.643099, 22.571224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.123428, 31.758907, 22.679987>,  <40.343685, 31.828392, 22.745245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.123428, 31.758907, 22.679987>,  <39.756332, 31.643099, 22.571224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123428, 31.758907, 22.679987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318272, -0.126506, -0.939521,
		-0.237611, 0.948775, -0.208246,
		0.917739, 0.289519, 0.271909,
		40.398750, 31.845762, 22.761560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946449, 32.076061, 22.010958>,  <39.756332, 31.643099, 22.571224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946449, 32.076061, 22.010958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.287106, 31.965515, 22.189095>,  <40.491501, 31.899187, 22.295977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.287106, 31.965515, 22.189095>,  <39.946449, 32.076061, 22.010958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287106, 31.965515, 22.189095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426018, -0.129959, -0.895332,
		0.305314, 0.952226, 0.007058,
		0.851641, -0.276364, 0.445343,
		40.542599, 31.882607, 22.322697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610687, 32.499722, 21.761648>,  <39.946449, 32.076061, 22.010958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610687, 32.499722, 21.761648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750896, 32.154171, 21.906340>,  <40.835022, 31.946840, 21.993155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750896, 32.154171, 21.906340>,  <40.610687, 32.499722, 21.761648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750896, 32.154171, 21.906340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526928, -0.137396, -0.838731,
		0.774262, 0.484599, 0.407041,
		0.350522, -0.863879, 0.361729,
		40.856052, 31.895008, 22.014858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357887, 32.498669, 21.585320>,  <40.610687, 32.499722, 21.761648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357887, 32.498669, 21.585320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.288376, 32.117249, 21.683744>,  <41.246670, 31.888397, 21.742800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.288376, 32.117249, 21.683744>,  <41.357887, 32.498669, 21.585320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288376, 32.117249, 21.683744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599714, -0.300660, -0.741584,
		0.781116, 0.018692, 0.624106,
		-0.173781, -0.953548, 0.246060,
		41.236240, 31.831184, 21.757563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948425, 32.132847, 21.792345>,  <41.357887, 32.498669, 21.585320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948425, 32.132847, 21.792345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712723, 31.839067, 21.657671>,  <41.571301, 31.662800, 21.576866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712723, 31.839067, 21.657671>,  <41.948425, 32.132847, 21.792345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712723, 31.839067, 21.657671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683352, -0.230730, -0.692672,
		0.431051, -0.638236, 0.637848,
		-0.589259, -0.734451, -0.336683,
		41.535946, 31.618732, 21.556665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425098, 31.475203, 21.653879>,  <41.948425, 32.132847, 21.792345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425098, 31.475203, 21.653879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095249, 31.374823, 21.451088>,  <41.897339, 31.314594, 21.329412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095249, 31.374823, 21.451088>,  <42.425098, 31.475203, 21.653879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095249, 31.374823, 21.451088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565624, -0.379301, -0.732257,
		-0.008537, -0.890592, 0.454723,
		-0.824619, -0.250951, -0.506978,
		41.847862, 31.299538, 21.298994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275051, 30.770052, 21.591043>,  <42.425098, 31.475203, 21.653879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275051, 30.770052, 21.591043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.112301, 30.946646, 21.271158>,  <42.014648, 31.052603, 21.079227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.112301, 30.946646, 21.271158>,  <42.275051, 30.770052, 21.591043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112301, 30.946646, 21.271158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618962, -0.510604, -0.596800,
		-0.671815, -0.737817, -0.065509,
		-0.406879, 0.441487, -0.799712,
		41.990238, 31.079092, 21.031244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408394, 30.183327, 21.142405>,  <42.275051, 30.770052, 21.591043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408394, 30.183327, 21.142405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.273113, 30.477322, 20.907316>,  <42.191944, 30.653719, 20.766264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.273113, 30.477322, 20.907316>,  <42.408394, 30.183327, 21.142405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273113, 30.477322, 20.907316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480077, -0.402400, -0.779487,
		-0.809413, -0.545771, -0.216761,
		-0.338197, 0.734989, -0.587720,
		42.171654, 30.697819, 20.731001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886288, 29.830006, 21.475164>,  <42.408394, 30.183327, 21.142405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886288, 29.830006, 21.475164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.009193, 29.449722, 21.491888>,  <42.082935, 29.221552, 21.501923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.009193, 29.449722, 21.491888>,  <41.886288, 29.830006, 21.475164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009193, 29.449722, 21.491888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020839, 0.037202, 0.999090,
		-0.951397, -0.307853, -0.008381,
		0.307262, -0.950706, 0.041810,
		42.101372, 29.164511, 21.504431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230995, 29.382456, 21.631899>,  <41.886288, 29.830006, 21.475164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230995, 29.382456, 21.631899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592712, 29.264868, 21.755724>,  <41.809742, 29.194315, 21.830019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592712, 29.264868, 21.755724>,  <41.230995, 29.382456, 21.631899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592712, 29.264868, 21.755724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353844, -0.110462, 0.928759,
		-0.238833, -0.949410, -0.203910,
		0.904297, -0.293970, 0.309561,
		41.864002, 29.176678, 21.848593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094967, 28.764387, 21.944220>,  <41.230995, 29.382456, 21.631899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094967, 28.764387, 21.944220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.447025, 28.885685, 22.090303>,  <41.658260, 28.958464, 22.177954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.447025, 28.885685, 22.090303>,  <41.094967, 28.764387, 21.944220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447025, 28.885685, 22.090303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312557, -0.208840, 0.926657,
		0.357274, -0.929747, -0.089029,
		0.880150, 0.303244, 0.365212,
		41.711071, 28.976658, 22.199867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057613, 28.346752, 22.566366>,  <41.094967, 28.764387, 21.944220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057613, 28.346752, 22.566366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330917, 28.633076, 22.624023>,  <41.494900, 28.804871, 22.658617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330917, 28.633076, 22.624023>,  <41.057613, 28.346752, 22.566366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330917, 28.633076, 22.624023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193054, -0.013289, 0.981098,
		0.704195, -0.698169, 0.129110,
		0.683257, 0.715809, 0.144143,
		41.535896, 28.847818, 22.667267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516834, 28.060217, 23.085508>,  <41.057613, 28.346752, 22.566366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516834, 28.060217, 23.085508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.527439, 28.460043, 23.090706>,  <41.533802, 28.699938, 23.093824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.527439, 28.460043, 23.090706>,  <41.516834, 28.060217, 23.085508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527439, 28.460043, 23.090706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010630, -0.013281, 0.999855,
		0.999592, -0.026367, -0.010978,
		0.026509, 0.999564, 0.012995,
		41.535393, 28.759912, 23.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784306, 28.182016, 23.768276>,  <41.516834, 28.060217, 23.085508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784306, 28.182016, 23.768276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685547, 28.539824, 23.619213>,  <41.626289, 28.754509, 23.529776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685547, 28.539824, 23.619213>,  <41.784306, 28.182016, 23.768276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685547, 28.539824, 23.619213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108689, 0.356576, 0.927923,
		0.962926, 0.269608, 0.009186,
		-0.246899, 0.894520, -0.372660,
		41.611477, 28.808180, 23.507416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137756, 28.694828, 24.178823>,  <41.784306, 28.182016, 23.768276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137756, 28.694828, 24.178823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.813004, 28.843357, 23.998615>,  <41.618153, 28.932474, 23.890490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.813004, 28.843357, 23.998615>,  <42.137756, 28.694828, 24.178823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813004, 28.843357, 23.998615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362006, 0.285237, 0.887464,
		0.458042, 0.883605, -0.097156,
		-0.811880, 0.371325, -0.450521,
		41.569439, 28.954754, 23.863459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020836, 29.208033, 24.612463>,  <42.137756, 28.694828, 24.178823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020836, 29.208033, 24.612463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.681702, 29.135210, 24.413252>,  <41.478222, 29.091516, 24.293724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.681702, 29.135210, 24.413252>,  <42.020836, 29.208033, 24.612463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681702, 29.135210, 24.413252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514087, 0.052006, 0.856160,
		-0.129968, 0.981912, -0.137685,
		-0.847834, -0.182056, -0.498029,
		41.427353, 29.080593, 24.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310078, 29.571199, 25.095161>,  <42.020836, 29.208033, 24.612463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310078, 29.571199, 25.095161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.541958, 29.282385, 25.246216>,  <42.681087, 29.109097, 25.336849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.541958, 29.282385, 25.246216>,  <42.310078, 29.571199, 25.095161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541958, 29.282385, 25.246216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458679, -0.093892, -0.883628,
		0.673470, 0.685453, 0.276754,
		0.579700, -0.722038, 0.377636,
		42.715866, 29.065773, 25.359507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947929, 29.791582, 24.854799>,  <42.310078, 29.571199, 25.095161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947929, 29.791582, 24.854799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.991047, 29.409008, 24.963326>,  <43.016918, 29.179464, 25.028442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.991047, 29.409008, 24.963326>,  <42.947929, 29.791582, 24.854799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991047, 29.409008, 24.963326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512089, -0.180501, -0.839752,
		0.852141, 0.229462, 0.470322,
		0.107798, -0.956434, 0.271318,
		43.023388, 29.122078, 25.044722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643326, 29.568808, 24.644917>,  <42.947929, 29.791582, 24.854799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643326, 29.568808, 24.644917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.468697, 29.213863, 24.704248>,  <43.363918, 29.000896, 24.739847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.468697, 29.213863, 24.704248>,  <43.643326, 29.568808, 24.644917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468697, 29.213863, 24.704248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443431, -0.355684, -0.822714,
		0.782801, -0.293397, 0.548763,
		-0.436568, -0.887359, 0.148329,
		43.337727, 28.947655, 24.748747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166786, 29.105186, 24.688482>,  <43.643326, 29.568808, 24.644917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166786, 29.105186, 24.688482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.853504, 28.868647, 24.611654>,  <43.665535, 28.726723, 24.565557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.853504, 28.868647, 24.611654>,  <44.166786, 29.105186, 24.688482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853504, 28.868647, 24.611654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591204, -0.612650, -0.524536,
		0.192513, -0.524374, 0.829441,
		-0.783209, -0.591349, -0.192069,
		43.618542, 28.691242, 24.554033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411880, 28.459600, 24.945871>,  <44.166786, 29.105186, 24.688482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411880, 28.459600, 24.945871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.127647, 28.408226, 24.669157>,  <43.957108, 28.377401, 24.503128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.127647, 28.408226, 24.669157>,  <44.411880, 28.459600, 24.945871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127647, 28.408226, 24.669157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638126, -0.531834, -0.556729,
		-0.296413, -0.837052, 0.459872,
		-0.710588, -0.128434, -0.691787,
		43.914471, 28.369696, 24.461620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479267, 27.623848, 24.727699>,  <44.411880, 28.459600, 24.945871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479267, 27.623848, 24.727699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.312702, 27.828728, 24.427233>,  <44.212765, 27.951656, 24.246952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.312702, 27.828728, 24.427233>,  <44.479267, 27.623848, 24.727699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312702, 27.828728, 24.427233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555301, -0.510914, -0.656207,
		-0.719893, -0.690374, -0.071678,
		-0.416407, 0.512202, -0.751169,
		44.187778, 27.982388, 24.201881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480404, 27.195019, 24.207825>,  <44.479267, 27.623848, 24.727699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480404, 27.195019, 24.207825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.392937, 27.521854, 23.994452>,  <44.340458, 27.717957, 23.866428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.392937, 27.521854, 23.994452>,  <44.480404, 27.195019, 24.207825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392937, 27.521854, 23.994452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537229, -0.355548, -0.764834,
		-0.814599, -0.453816, -0.361219,
		-0.218664, 0.817090, -0.533432,
		44.327339, 27.766981, 23.834421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230930, 26.872776, 23.569532>,  <44.480404, 27.195019, 24.207825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230930, 26.872776, 23.569532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.349503, 27.241531, 23.469728>,  <44.420647, 27.462784, 23.409845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.349503, 27.241531, 23.469728>,  <44.230930, 26.872776, 23.569532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349503, 27.241531, 23.469728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497277, -0.372028, -0.783780,
		-0.815381, 0.108257, -0.568712,
		0.296427, 0.921887, -0.249511,
		44.438431, 27.518097, 23.394875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027424, 26.960331, 22.879902>,  <44.230930, 26.872776, 23.569532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027424, 26.960331, 22.879902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.336166, 27.197041, 22.972893>,  <44.521412, 27.339067, 23.028687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.336166, 27.197041, 22.972893>,  <44.027424, 26.960331, 22.879902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336166, 27.197041, 22.972893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523491, -0.383992, -0.760597,
		-0.360834, 0.708768, -0.606174,
		0.771853, 0.591775, 0.232476,
		44.567722, 27.374573, 23.042635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.491272, 33.695091, 36.162762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.886913, 33.670044, 36.216064>,  <38.124298, 33.655014, 36.248047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.886913, 33.670044, 36.216064>,  <37.491272, 33.695091, 36.162762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886913, 33.670044, 36.216064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128605, -0.073226, -0.988989,
		0.071689, 0.995347, -0.064374,
		0.989101, -0.062621, 0.133256,
		38.183643, 33.651257, 36.256042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803699, 34.125050, 35.673237>,  <37.491272, 33.695091, 36.162762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803699, 34.125050, 35.673237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077278, 33.850948, 35.773342>,  <38.241425, 33.686485, 35.833405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077278, 33.850948, 35.773342>,  <37.803699, 34.125050, 35.673237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077278, 33.850948, 35.773342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130661, -0.222439, -0.966151,
		0.717731, 0.693500, -0.062601,
		0.683951, -0.685258, 0.250265,
		38.282463, 33.645370, 35.848423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360176, 34.176128, 35.234188>,  <37.803699, 34.125050, 35.673237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360176, 34.176128, 35.234188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409245, 33.801914, 35.366684>,  <38.438686, 33.577385, 35.446182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409245, 33.801914, 35.366684>,  <38.360176, 34.176128, 35.234188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409245, 33.801914, 35.366684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207566, -0.302196, -0.930373,
		0.970499, 0.182884, 0.157116,
		0.122670, -0.935538, 0.331242,
		38.446045, 33.521252, 35.466057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819511, 33.970058, 34.787483>,  <38.360176, 34.176128, 35.234188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819511, 33.970058, 34.787483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690907, 33.640396, 34.973988>,  <38.613743, 33.442600, 35.085892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690907, 33.640396, 34.973988>,  <38.819511, 33.970058, 34.787483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690907, 33.640396, 34.973988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238692, -0.547044, -0.802352,
		0.916327, -0.146674, 0.372600,
		-0.321513, -0.824154, 0.466262,
		38.594452, 33.393150, 35.113865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281876, 33.431282, 34.722092>,  <38.819511, 33.970058, 34.787483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281876, 33.431282, 34.722092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957027, 33.215187, 34.810280>,  <38.762119, 33.085529, 34.863194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957027, 33.215187, 34.810280>,  <39.281876, 33.431282, 34.722092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957027, 33.215187, 34.810280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190633, -0.602775, -0.774804,
		0.551470, -0.587205, 0.592512,
		-0.812120, -0.540234, 0.220471,
		38.713390, 33.053116, 34.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475769, 32.791660, 34.703072>,  <39.281876, 33.431282, 34.722092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475769, 32.791660, 34.703072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.082066, 32.741550, 34.653198>,  <38.845844, 32.711483, 34.623276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.082066, 32.741550, 34.653198>,  <39.475769, 32.791660, 34.703072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082066, 32.741550, 34.653198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174762, -0.584376, -0.792441,
		0.026414, -0.801754, 0.597069,
		-0.984256, -0.125277, -0.124681,
		38.786789, 32.703968, 34.615795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282005, 32.100754, 34.825256>,  <39.475769, 32.791660, 34.703072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282005, 32.100754, 34.825256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.994938, 32.233910, 34.580589>,  <38.822697, 32.313805, 34.433788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.994938, 32.233910, 34.580589>,  <39.282005, 32.100754, 34.825256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994938, 32.233910, 34.580589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160362, -0.775743, -0.610334,
		-0.677671, -0.536105, 0.503343,
		-0.717668, 0.332888, -0.611669,
		38.779636, 32.333775, 34.397087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908260, 31.492294, 34.788166>,  <39.282005, 32.100754, 34.825256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908260, 31.492294, 34.788166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798946, 31.716915, 34.475761>,  <38.733356, 31.851686, 34.288319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798946, 31.716915, 34.475761>,  <38.908260, 31.492294, 34.788166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798946, 31.716915, 34.475761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229105, -0.750556, -0.619820,
		-0.934252, -0.348320, 0.076461,
		-0.273284, 0.561550, -0.781011,
		38.716961, 31.885380, 34.241459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788445, 30.997929, 34.362392>,  <38.908260, 31.492294, 34.788166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788445, 30.997929, 34.362392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764950, 31.308395, 34.111279>,  <38.750854, 31.494675, 33.960609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764950, 31.308395, 34.111279>,  <38.788445, 30.997929, 34.362392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764950, 31.308395, 34.111279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157530, -0.613786, -0.773596,
		-0.985766, -0.144333, -0.086219,
		-0.058735, 0.776166, -0.627786,
		38.747330, 31.541245, 33.922943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281605, 30.797611, 33.881168>,  <38.788445, 30.997929, 34.362392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281605, 30.797611, 33.881168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509178, 31.078094, 33.709297>,  <38.645721, 31.246384, 33.606174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509178, 31.078094, 33.709297>,  <38.281605, 30.797611, 33.881168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509178, 31.078094, 33.709297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144897, -0.599778, -0.786937,
		-0.809520, 0.385453, -0.442835,
		0.568930, 0.701208, -0.429682,
		38.679859, 31.288456, 33.580391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003345, 30.927620, 33.215294>,  <38.281605, 30.797611, 33.881168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003345, 30.927620, 33.215294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383450, 31.049414, 33.189064>,  <38.611511, 31.122490, 33.173325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383450, 31.049414, 33.189064>,  <38.003345, 30.927620, 33.215294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383450, 31.049414, 33.189064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110195, -0.525583, -0.843575,
		-0.291323, 0.794386, -0.532992,
		0.950257, 0.304486, -0.065577,
		38.668526, 31.140760, 33.169392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044743, 31.094189, 32.549103>,  <38.003345, 30.927620, 33.215294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044743, 31.094189, 32.549103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407574, 31.025351, 32.702770>,  <38.625275, 30.984047, 32.794971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407574, 31.025351, 32.702770>,  <38.044743, 31.094189, 32.549103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407574, 31.025351, 32.702770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268234, -0.467052, -0.842563,
		0.324430, 0.867321, -0.377492,
		0.907081, -0.172097, 0.384171,
		38.679699, 30.973722, 32.818020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536602, 31.222357, 32.174038>,  <38.044743, 31.094189, 32.549103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536602, 31.222357, 32.174038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287964, 31.020222, 31.934622>,  <37.138779, 30.898941, 31.790972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287964, 31.020222, 31.934622>,  <37.536602, 31.222357, 32.174038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287964, 31.020222, 31.934622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778252, 0.311481, 0.545256,
		-0.089106, 0.804743, -0.586897,
		-0.621598, -0.505339, -0.598538,
		37.101486, 30.868620, 31.755060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965858, 31.676256, 31.919224>,  <37.536602, 31.222357, 32.174038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965858, 31.676256, 31.919224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854019, 31.292221, 31.922243>,  <36.786915, 31.061800, 31.924055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854019, 31.292221, 31.922243>,  <36.965858, 31.676256, 31.919224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854019, 31.292221, 31.922243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817592, 0.242208, 0.522378,
		-0.503356, 0.139886, -0.852681,
		-0.279600, -0.960087, 0.007547,
		36.770138, 31.004194, 31.924507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354599, 31.638187, 31.602621>,  <36.965858, 31.676256, 31.919224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354599, 31.638187, 31.602621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365715, 31.325510, 31.851839>,  <36.372387, 31.137903, 32.001369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365715, 31.325510, 31.851839>,  <36.354599, 31.638187, 31.602621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365715, 31.325510, 31.851839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825497, 0.333546, 0.455304,
		-0.563722, -0.526975, -0.636015,
		0.027793, -0.781693, 0.623044,
		36.374054, 31.091002, 32.038754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694942, 31.538704, 31.753798>,  <36.354599, 31.638187, 31.602621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694942, 31.538704, 31.753798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860886, 31.303368, 32.031429>,  <35.960453, 31.162165, 32.198009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860886, 31.303368, 32.031429>,  <35.694942, 31.538704, 31.753798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860886, 31.303368, 32.031429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835984, 0.054674, 0.546023,
		-0.359197, -0.806761, -0.469163,
		0.414859, -0.588343, 0.694078,
		35.985344, 31.126865, 32.239655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153584, 31.222147, 32.041664>,  <35.694942, 31.538704, 31.753798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153584, 31.222147, 32.041664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404491, 31.129200, 32.338993>,  <35.555038, 31.073431, 32.517391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404491, 31.129200, 32.338993>,  <35.153584, 31.222147, 32.041664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404491, 31.129200, 32.338993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769665, -0.039219, 0.637242,
		-0.118922, -0.971837, -0.203446,
		0.627274, -0.232367, 0.743326,
		35.592674, 31.059488, 32.561989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826607, 30.667568, 32.448246>,  <35.153584, 31.222147, 32.041664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826607, 30.667568, 32.448246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094231, 30.861475, 32.673584>,  <35.254807, 30.977819, 32.808788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094231, 30.861475, 32.673584>,  <34.826607, 30.667568, 32.448246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094231, 30.861475, 32.673584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722751, 0.247778, 0.645164,
		0.173167, -0.838815, 0.516142,
		0.669062, 0.484764, 0.563347,
		35.294949, 31.006905, 32.842587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647327, 30.397343, 33.102581>,  <34.826607, 30.667568, 32.448246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647327, 30.397343, 33.102581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856567, 30.728638, 33.182972>,  <34.982113, 30.927414, 33.231205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856567, 30.728638, 33.182972>,  <34.647327, 30.397343, 33.102581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856567, 30.728638, 33.182972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723295, 0.306696, 0.618694,
		0.450787, -0.469002, 0.759492,
		0.523102, 0.828236, 0.200972,
		35.013496, 30.977108, 33.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525570, 30.500843, 33.883137>,  <34.647327, 30.397343, 33.102581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525570, 30.500843, 33.883137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683582, 30.853207, 33.778870>,  <34.778389, 31.064625, 33.716309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683582, 30.853207, 33.778870>,  <34.525570, 30.500843, 33.883137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683582, 30.853207, 33.778870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732954, 0.473281, 0.488655,
		0.553832, -0.001972, 0.832626,
		0.395030, 0.880909, -0.260673,
		34.802090, 31.117479, 33.700668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722694, 30.954479, 34.506500>,  <34.525570, 30.500843, 33.883137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722694, 30.954479, 34.506500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665844, 31.190523, 34.188614>,  <34.631733, 31.332150, 33.997883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665844, 31.190523, 34.188614>,  <34.722694, 30.954479, 34.506500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665844, 31.190523, 34.188614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749725, 0.460042, 0.475682,
		0.646306, 0.663426, 0.377034,
		-0.142128, 0.590108, -0.794715,
		34.623207, 31.367556, 33.950199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831196, 31.624231, 34.713390>,  <34.722694, 30.954479, 34.506500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831196, 31.624231, 34.713390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580048, 31.621895, 34.402073>,  <34.429359, 31.620493, 34.215282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580048, 31.621895, 34.402073>,  <34.831196, 31.624231, 34.713390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580048, 31.621895, 34.402073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647650, 0.558513, 0.518279,
		0.431662, 0.829475, -0.354456,
		-0.627868, -0.005842, -0.778298,
		34.391685, 31.620142, 34.168583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779091, 32.273361, 34.798119>,  <34.831196, 31.624231, 34.713390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779091, 32.273361, 34.798119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481415, 32.151638, 34.560268>,  <34.302807, 32.078606, 34.417561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481415, 32.151638, 34.560268>,  <34.779091, 32.273361, 34.798119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481415, 32.151638, 34.560268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645433, 0.556853, 0.522811,
		0.172023, 0.772861, -0.610814,
		-0.744194, -0.304304, -0.594621,
		34.258156, 32.060349, 34.381882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459305, 32.867577, 34.724461>,  <34.779091, 32.273361, 34.798119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459305, 32.867577, 34.724461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185104, 32.597805, 34.614746>,  <34.020584, 32.435944, 34.548916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185104, 32.597805, 34.614746>,  <34.459305, 32.867577, 34.724461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185104, 32.597805, 34.614746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713724, 0.548063, 0.436148,
		-0.143825, 0.494745, -0.857054,
		-0.685502, -0.674429, -0.274286,
		33.979454, 32.395477, 34.532459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821568, 33.321239, 34.704891>,  <34.459305, 32.867577, 34.724461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821568, 33.321239, 34.704891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661461, 32.957249, 34.661583>,  <33.565399, 32.738853, 34.635597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661461, 32.957249, 34.661583>,  <33.821568, 33.321239, 34.704891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661461, 32.957249, 34.661583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842747, 0.319110, 0.433528,
		-0.359953, 0.264770, -0.894612,
		-0.400265, -0.909981, -0.108269,
		33.541382, 32.684254, 34.629101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175766, 33.437668, 34.334816>,  <33.821568, 33.321239, 34.704891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175766, 33.437668, 34.334816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189114, 33.102821, 34.553219>,  <33.197121, 32.901913, 34.684261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189114, 33.102821, 34.553219>,  <33.175766, 33.437668, 34.334816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189114, 33.102821, 34.553219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781086, 0.318991, 0.536796,
		-0.623531, -0.444388, -0.643217,
		0.033366, -0.837116, 0.546006,
		33.199123, 32.851685, 34.717022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445141, 34.187981, 34.252064>,  <33.175766, 33.437668, 34.334816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445141, 34.187981, 34.252064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491028, 34.550774, 34.089966>,  <33.518559, 34.768448, 33.992706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491028, 34.550774, 34.089966>,  <33.445141, 34.187981, 34.252064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491028, 34.550774, 34.089966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197977, -0.420631, -0.885367,
		-0.973471, 0.021334, -0.227813,
		0.114714, 0.906981, -0.405248,
		33.525440, 34.822868, 33.968391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223244, 34.217667, 33.526024>,  <33.445141, 34.187981, 34.252064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223244, 34.217667, 33.526024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475342, 34.525505, 33.567013>,  <33.626602, 34.710209, 33.591606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475342, 34.525505, 33.567013>,  <33.223244, 34.217667, 33.526024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475342, 34.525505, 33.567013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318947, -0.136307, -0.937920,
		-0.707855, 0.623808, -0.331369,
		0.630250, 0.769600, 0.102476,
		33.664417, 34.756386, 33.597755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099037, 34.519894, 32.941902>,  <33.223244, 34.217667, 33.526024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099037, 34.519894, 32.941902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465958, 34.584896, 33.087311>,  <33.686111, 34.623898, 33.174557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465958, 34.584896, 33.087311>,  <33.099037, 34.519894, 32.941902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465958, 34.584896, 33.087311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392829, -0.220008, -0.892906,
		-0.065129, 0.961866, -0.265653,
		0.917302, 0.162510, 0.363520,
		33.741150, 34.633648, 33.196365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441914, 34.665009, 32.339592>,  <33.099037, 34.519894, 32.941902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441914, 34.665009, 32.339592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753792, 34.588039, 32.577938>,  <33.940918, 34.541859, 32.720943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753792, 34.588039, 32.577938>,  <33.441914, 34.665009, 32.339592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753792, 34.588039, 32.577938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570200, -0.175041, -0.802641,
		0.258743, 0.965575, -0.026761,
		0.779695, -0.192418, 0.595862,
		33.987701, 34.530315, 32.756695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952271, 34.994293, 32.028625>,  <33.441914, 34.665009, 32.339592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952271, 34.994293, 32.028625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165386, 34.736675, 32.248207>,  <34.293255, 34.582104, 32.379955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165386, 34.736675, 32.248207>,  <33.952271, 34.994293, 32.028625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165386, 34.736675, 32.248207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583423, -0.190341, -0.789549,
		0.612991, 0.740933, 0.274338,
		0.532785, -0.644041, 0.548954,
		34.325222, 34.543465, 32.412895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601250, 35.155293, 31.929262>,  <33.952271, 34.994293, 32.028625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601250, 35.155293, 31.929262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617306, 34.777466, 32.059608>,  <34.626938, 34.550770, 32.137817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617306, 34.777466, 32.059608>,  <34.601250, 35.155293, 31.929262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617306, 34.777466, 32.059608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639448, -0.226316, -0.734770,
		0.767786, 0.237867, 0.594915,
		0.040139, -0.944564, 0.325866,
		34.629349, 34.494095, 32.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264229, 35.028366, 32.078117>,  <34.601250, 35.155293, 31.929262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264229, 35.028366, 32.078117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107132, 34.667603, 32.006218>,  <35.012875, 34.451145, 31.963079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107132, 34.667603, 32.006218>,  <35.264229, 35.028366, 32.078117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107132, 34.667603, 32.006218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750675, -0.201494, -0.629196,
		0.531261, -0.382045, 0.756177,
		-0.392746, -0.901910, -0.179745,
		34.989307, 34.397030, 31.952293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678577, 34.408852, 32.305725>,  <35.264229, 35.028366, 32.078117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678577, 34.408852, 32.305725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429474, 34.263779, 32.028416>,  <35.280010, 34.176735, 31.862030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429474, 34.263779, 32.028416>,  <35.678577, 34.408852, 32.305725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429474, 34.263779, 32.028416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781834, -0.254455, -0.569199,
		0.030033, -0.896500, 0.442024,
		-0.622763, -0.362684, -0.693273,
		35.242645, 34.154972, 31.820435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002224, 33.847889, 31.909529>,  <35.678577, 34.408852, 32.305725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002224, 33.847889, 31.909529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690220, 33.886501, 31.662216>,  <35.503017, 33.909668, 31.513828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690220, 33.886501, 31.662216>,  <36.002224, 33.847889, 31.909529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690220, 33.886501, 31.662216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569838, -0.298731, -0.765536,
		-0.258599, -0.949443, 0.178004,
		-0.780007, 0.096533, -0.618280,
		35.456219, 33.915462, 31.476732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098080, 33.280594, 31.453554>,  <36.002224, 33.847889, 31.909529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098080, 33.280594, 31.453554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814419, 33.498936, 31.275047>,  <35.644222, 33.629940, 31.167944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814419, 33.498936, 31.275047>,  <36.098080, 33.280594, 31.453554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814419, 33.498936, 31.275047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317994, -0.317301, -0.893420,
		-0.629276, -0.775478, 0.051436,
		-0.709149, 0.545851, -0.446267,
		35.601673, 33.662689, 31.141167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733906, 32.824394, 30.980156>,  <36.098080, 33.280594, 31.453554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733906, 32.824394, 30.980156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671158, 33.198456, 30.853109>,  <35.633507, 33.422894, 30.776882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671158, 33.198456, 30.853109>,  <35.733906, 32.824394, 30.980156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671158, 33.198456, 30.853109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121198, -0.300940, -0.945910,
		-0.980154, -0.186881, -0.066130,
		-0.156872, 0.935153, -0.317617,
		35.624096, 33.479000, 30.757824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163586, 32.913746, 30.373674>,  <35.733906, 32.824394, 30.980156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163586, 32.913746, 30.373674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430954, 33.210415, 30.351278>,  <35.591373, 33.388416, 30.337841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430954, 33.210415, 30.351278>,  <35.163586, 32.913746, 30.373674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430954, 33.210415, 30.351278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236988, -0.283722, -0.929160,
		-0.705019, 0.607801, -0.365413,
		0.668420, 0.741673, -0.055988,
		35.631481, 33.432919, 30.334482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207695, 32.962914, 29.577560>,  <35.163586, 32.913746, 30.373674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207695, 32.962914, 29.577560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474922, 33.229675, 29.709572>,  <35.635258, 33.389732, 29.788778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474922, 33.229675, 29.709572>,  <35.207695, 32.962914, 29.577560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474922, 33.229675, 29.709572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487285, -0.056919, -0.871386,
		-0.562348, 0.742964, -0.363000,
		0.668070, 0.666907, 0.330027,
		35.675343, 33.429749, 29.808580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296913, 33.473198, 29.008936>,  <35.207695, 32.962914, 29.577560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296913, 33.473198, 29.008936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640236, 33.460442, 29.213793>,  <35.846230, 33.452785, 29.336706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640236, 33.460442, 29.213793>,  <35.296913, 33.473198, 29.008936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640236, 33.460442, 29.213793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511205, -0.033321, -0.858813,
		0.044457, 0.998936, -0.012295,
		0.858308, -0.031895, 0.512142,
		35.897728, 33.450874, 29.367435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685276, 33.948505, 28.706095>,  <35.296913, 33.473198, 29.008936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685276, 33.948505, 28.706095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970905, 33.735947, 28.888401>,  <36.142284, 33.608414, 28.997786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970905, 33.735947, 28.888401>,  <35.685276, 33.948505, 28.706095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970905, 33.735947, 28.888401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561465, 0.045840, -0.826230,
		0.418160, 0.845885, 0.331091,
		0.714073, -0.531392, 0.455766,
		36.185127, 33.576530, 29.025131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181774, 34.306534, 28.634220>,  <35.685276, 33.948505, 28.706095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181774, 34.306534, 28.634220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355907, 33.951637, 28.695265>,  <36.460388, 33.738701, 28.731892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355907, 33.951637, 28.695265>,  <36.181774, 34.306534, 28.634220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355907, 33.951637, 28.695265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541455, 0.122604, -0.831742,
		0.719244, 0.444717, 0.533774,
		0.435332, -0.887240, 0.152612,
		36.486507, 33.685467, 28.741049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793343, 34.423721, 28.430353>,  <36.181774, 34.306534, 28.634220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793343, 34.423721, 28.430353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773960, 34.024265, 28.422659>,  <36.762333, 33.784592, 28.418043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773960, 34.024265, 28.422659>,  <36.793343, 34.423721, 28.430353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773960, 34.024265, 28.422659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528313, -0.009279, -0.848999,
		0.847666, -0.051298, 0.528045,
		-0.048452, -0.998640, -0.019236,
		36.759426, 33.724674, 28.416887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441425, 34.268044, 28.411037>,  <36.793343, 34.423721, 28.430353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441425, 34.268044, 28.411037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247250, 33.944584, 28.278114>,  <37.130745, 33.750507, 28.198360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247250, 33.944584, 28.278114>,  <37.441425, 34.268044, 28.411037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247250, 33.944584, 28.278114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638602, -0.068373, -0.766494,
		0.597106, -0.584299, 0.549598,
		-0.485439, -0.808653, -0.332309,
		37.101620, 33.701988, 28.178421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028263, 33.801624, 28.316944>,  <37.441425, 34.268044, 28.411037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028263, 33.801624, 28.316944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719994, 33.647839, 28.113670>,  <37.535034, 33.555565, 27.991707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719994, 33.647839, 28.113670>,  <38.028263, 33.801624, 28.316944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719994, 33.647839, 28.113670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626583, -0.312009, -0.714174,
		0.116018, -0.868813, 0.481357,
		-0.770671, -0.384467, -0.508185,
		37.488792, 33.532497, 27.961214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274784, 33.067890, 28.124617>,  <38.028263, 33.801624, 28.316944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274784, 33.067890, 28.124617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.971024, 33.168663, 27.884670>,  <37.788765, 33.229126, 27.740704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.971024, 33.168663, 27.884670>,  <38.274784, 33.067890, 28.124617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971024, 33.168663, 27.884670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465051, -0.434605, -0.771262,
		-0.455018, -0.864664, 0.212872,
		-0.759398, 0.251942, -0.599866,
		37.743202, 33.244244, 27.704712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244701, 32.444725, 27.663771>,  <38.274784, 33.067890, 28.124617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244701, 32.444725, 27.663771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053638, 32.733204, 27.463083>,  <37.939003, 32.906292, 27.342670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053638, 32.733204, 27.463083>,  <38.244701, 32.444725, 27.663771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053638, 32.733204, 27.463083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381101, -0.344461, -0.857967,
		-0.791586, -0.601018, -0.110315,
		-0.477654, 0.721196, -0.501719,
		37.910343, 32.949562, 27.312567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043896, 32.174622, 27.005098>,  <38.244701, 32.444725, 27.663771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043896, 32.174622, 27.005098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061653, 32.572029, 26.963259>,  <38.072308, 32.810474, 26.938156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061653, 32.572029, 26.963259>,  <38.043896, 32.174622, 27.005098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061653, 32.572029, 26.963259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325684, -0.113373, -0.938657,
		-0.944436, 0.007603, -0.328608,
		0.044392, 0.993523, -0.104597,
		38.074970, 32.870087, 26.931879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677555, 32.318729, 26.344984>,  <38.043896, 32.174622, 27.005098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677555, 32.318729, 26.344984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925632, 32.624226, 26.416611>,  <38.074478, 32.807522, 26.459587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925632, 32.624226, 26.416611>,  <37.677555, 32.318729, 26.344984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925632, 32.624226, 26.416611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303801, -0.023388, -0.952448,
		-0.723232, 0.645104, -0.246529,
		0.620194, 0.763737, 0.179068,
		38.111691, 32.853348, 26.470331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656227, 32.793015, 25.736343>,  <37.677555, 32.318729, 26.344984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656227, 32.793015, 25.736343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996822, 32.838753, 25.941046>,  <38.201180, 32.866196, 26.063868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996822, 32.838753, 25.941046>,  <37.656227, 32.793015, 25.736343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996822, 32.838753, 25.941046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516088, -0.009903, -0.856478,
		-0.092868, 0.993391, -0.067446,
		0.851486, 0.114348, 0.511758,
		38.252270, 32.873058, 26.094574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100548, 33.256706, 25.378008>,  <37.656227, 32.793015, 25.736343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100548, 33.256706, 25.378008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372253, 33.060852, 25.596682>,  <38.535275, 32.943340, 25.727886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372253, 33.060852, 25.596682>,  <38.100548, 33.256706, 25.378008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372253, 33.060852, 25.596682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637399, 0.024370, -0.770148,
		0.363767, 0.871588, 0.328646,
		0.679261, -0.489633, 0.546685,
		38.576031, 32.913963, 25.760687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734867, 33.602570, 25.237247>,  <38.100548, 33.256706, 25.378008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734867, 33.602570, 25.237247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866077, 33.262447, 25.401871>,  <38.944805, 33.058376, 25.500645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866077, 33.262447, 25.401871>,  <38.734867, 33.602570, 25.237247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866077, 33.262447, 25.401871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715130, -0.061144, -0.696312,
		0.617241, 0.522729, 0.588021,
		0.328029, -0.850303, 0.411560,
		38.964485, 33.007355, 25.525339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531094, 33.665760, 25.167398>,  <38.734867, 33.602570, 25.237247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531094, 33.665760, 25.167398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.437897, 33.279140, 25.210276>,  <39.381977, 33.047169, 25.236002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.437897, 33.279140, 25.210276>,  <39.531094, 33.665760, 25.167398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437897, 33.279140, 25.210276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605796, -0.230484, -0.761504,
		0.760740, -0.112487, 0.639234,
		-0.232992, -0.966553, 0.107194,
		39.368000, 32.989174, 25.242434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128460, 33.316422, 25.064753>,  <39.531094, 33.665760, 25.167398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128460, 33.316422, 25.064753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875229, 33.009632, 25.022852>,  <39.723289, 32.825558, 24.997711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875229, 33.009632, 25.022852>,  <40.128460, 33.316422, 25.064753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875229, 33.009632, 25.022852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501029, -0.302835, -0.810716,
		0.590073, -0.565727, 0.575992,
		-0.633075, -0.766971, -0.104751,
		39.685307, 32.779541, 24.991426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610680, 33.151196, 25.440643>,  <40.128460, 33.316422, 25.064753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610680, 33.151196, 25.440643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.898895, 33.428482, 25.434010>,  <41.071823, 33.594856, 25.430029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.898895, 33.428482, 25.434010>,  <40.610680, 33.151196, 25.440643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898895, 33.428482, 25.434010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583364, 0.618933, 0.525936,
		0.374855, -0.369280, 0.850362,
		0.720535, 0.693221, -0.016585,
		41.115055, 33.636448, 25.429033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642796, 33.296623, 26.157448>,  <40.610680, 33.151196, 25.440643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642796, 33.296623, 26.157448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.815166, 33.609196, 25.976927>,  <40.918591, 33.796738, 25.868614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.815166, 33.609196, 25.976927>,  <40.642796, 33.296623, 26.157448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815166, 33.609196, 25.976927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341947, 0.604229, 0.719708,
		0.835089, -0.155820, 0.527585,
		0.430927, 0.781426, -0.451303,
		40.944447, 33.843624, 25.841536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899452, 33.645588, 26.661211>,  <40.642796, 33.296623, 26.157448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899452, 33.645588, 26.661211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866291, 33.938488, 26.390823>,  <40.846394, 34.114227, 26.228590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866291, 33.938488, 26.390823>,  <40.899452, 33.645588, 26.661211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866291, 33.938488, 26.390823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373429, 0.606056, 0.702315,
		0.923946, 0.310654, 0.223198,
		-0.082906, 0.732250, -0.675971,
		40.841419, 34.158161, 26.188032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330433, 34.292046, 26.848099>,  <40.899452, 33.645588, 26.661211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330433, 34.292046, 26.848099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.042000, 34.417049, 26.600752>,  <40.868938, 34.492050, 26.452345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.042000, 34.417049, 26.600752>,  <41.330433, 34.292046, 26.848099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042000, 34.417049, 26.600752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337007, 0.621604, 0.707131,
		0.605361, 0.718296, -0.342913,
		-0.721086, 0.312505, -0.618366,
		40.825676, 34.510799, 26.415243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310764, 35.023483, 26.862730>,  <41.330433, 34.292046, 26.848099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310764, 35.023483, 26.862730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.948959, 34.898075, 26.747101>,  <40.731876, 34.822830, 26.677723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.948959, 34.898075, 26.747101>,  <41.310764, 35.023483, 26.862730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948959, 34.898075, 26.747101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423218, 0.576712, 0.698778,
		-0.052367, 0.754394, -0.654329,
		-0.904513, -0.313516, -0.289073,
		40.677605, 34.804020, 26.660379>
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
