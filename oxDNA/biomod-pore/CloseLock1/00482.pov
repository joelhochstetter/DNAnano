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
	<24.037708, 35.326927, 34.871223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190254, 34.983028, 35.007103>,  <24.281782, 34.776688, 35.088631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190254, 34.983028, 35.007103>,  <24.037708, 35.326927, 34.871223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190254, 34.983028, 35.007103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893995, 0.249497, -0.372189,
		0.235233, 0.445631, 0.863758,
		0.381364, -0.859746, 0.339702,
		24.304663, 34.725105, 35.109013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596823, 35.454193, 35.332207>,  <24.037708, 35.326927, 34.871223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596823, 35.454193, 35.332207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647736, 35.086975, 35.182014>,  <24.678284, 34.866642, 35.091900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647736, 35.086975, 35.182014>,  <24.596823, 35.454193, 35.332207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647736, 35.086975, 35.182014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890801, 0.272288, -0.363775,
		0.436203, -0.288181, 0.852454,
		0.127280, -0.918047, -0.375485,
		24.685919, 34.811562, 35.069370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200161, 35.049473, 35.621670>,  <24.596823, 35.454193, 35.332207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200161, 35.049473, 35.621670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139729, 34.943920, 35.240612>,  <25.103470, 34.880589, 35.011978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139729, 34.943920, 35.240612>,  <25.200161, 35.049473, 35.621670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139729, 34.943920, 35.240612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845552, 0.464721, -0.262823,
		0.512071, -0.845221, 0.152920,
		-0.151079, -0.263885, -0.952649,
		25.094404, 34.864754, 34.954819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727665, 34.858219, 35.066017>,  <25.200161, 35.049473, 35.621670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727665, 34.858219, 35.066017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485729, 34.985603, 34.774055>,  <25.340569, 35.062035, 34.598881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485729, 34.985603, 34.774055>,  <25.727665, 34.858219, 35.066017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485729, 34.985603, 34.774055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769967, -0.000097, -0.638083,
		-0.203272, -0.947938, -0.245142,
		-0.604839, 0.318456, -0.729901,
		25.304277, 35.081139, 34.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716194, 34.389240, 34.538399>,  <25.727665, 34.858219, 35.066017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716194, 34.389240, 34.538399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618919, 34.752743, 34.402740>,  <25.560555, 34.970844, 34.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618919, 34.752743, 34.402740>,  <25.716194, 34.389240, 34.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618919, 34.752743, 34.402740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688512, -0.084560, -0.720278,
		-0.683237, -0.408668, -0.605126,
		-0.243185, 0.908757, -0.339148,
		25.545963, 35.025372, 34.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462296, 34.508949, 33.822796>,  <25.716194, 34.389240, 34.538399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462296, 34.508949, 33.822796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652344, 34.844334, 33.929558>,  <25.766373, 35.045567, 33.993614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652344, 34.844334, 33.929558>,  <25.462296, 34.508949, 33.822796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652344, 34.844334, 33.929558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676634, -0.154226, -0.719986,
		-0.562519, 0.522678, -0.640610,
		0.475119, 0.838464, 0.266907,
		25.794880, 35.095875, 34.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547525, 35.169682, 33.330997>,  <25.462296, 34.508949, 33.822796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547525, 35.169682, 33.330997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846439, 35.088387, 33.584064>,  <26.025787, 35.039612, 33.735905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846439, 35.088387, 33.584064>,  <25.547525, 35.169682, 33.330997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846439, 35.088387, 33.584064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484818, -0.484363, -0.728247,
		0.454443, 0.850934, -0.263425,
		0.747284, -0.203233, 0.632663,
		26.070625, 35.027416, 33.773865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076527, 35.314758, 32.971836>,  <25.547525, 35.169682, 33.330997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076527, 35.314758, 32.971836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199688, 35.056000, 33.250900>,  <26.273584, 34.900745, 33.418339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199688, 35.056000, 33.250900>,  <26.076527, 35.314758, 32.971836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199688, 35.056000, 33.250900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537693, -0.486636, -0.688529,
		0.784909, 0.587125, 0.197993,
		0.307902, -0.646892, 0.697658,
		26.292059, 34.861931, 33.460197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803568, 35.339451, 33.004547>,  <26.076527, 35.314758, 32.971836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803568, 35.339451, 33.004547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664333, 34.993217, 33.148548>,  <26.580793, 34.785477, 33.234947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664333, 34.993217, 33.148548>,  <26.803568, 35.339451, 33.004547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664333, 34.993217, 33.148548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412429, -0.486251, -0.770365,
		0.841866, -0.119679, 0.526249,
		-0.348086, -0.865585, 0.359999,
		26.559908, 34.733543, 33.256546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373405, 34.906128, 32.899956>,  <26.803568, 35.339451, 33.004547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373405, 34.906128, 32.899956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049513, 34.674389, 32.937252>,  <26.855177, 34.535347, 32.959629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049513, 34.674389, 32.937252>,  <27.373405, 34.906128, 32.899956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049513, 34.674389, 32.937252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251222, -0.485853, -0.837159,
		0.530307, -0.654448, 0.538955,
		-0.809729, -0.579349, 0.093240,
		26.806595, 34.500584, 32.965225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699963, 34.201336, 32.837879>,  <27.373405, 34.906128, 32.899956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699963, 34.201336, 32.837879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304609, 34.167057, 32.787674>,  <27.067398, 34.146488, 32.757549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304609, 34.167057, 32.787674>,  <27.699963, 34.201336, 32.837879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304609, 34.167057, 32.787674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151040, -0.461940, -0.873956,
		0.016917, -0.882761, 0.469517,
		-0.988383, -0.085700, -0.125517,
		27.008095, 34.141346, 32.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662235, 33.626217, 32.512127>,  <27.699963, 34.201336, 32.837879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662235, 33.626217, 32.512127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307644, 33.784515, 32.416183>,  <27.094889, 33.879494, 32.358616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307644, 33.784515, 32.416183>,  <27.662235, 33.626217, 32.512127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307644, 33.784515, 32.416183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148593, -0.247451, -0.957438,
		-0.438261, -0.884392, 0.160555,
		-0.886480, 0.395750, -0.239863,
		27.041700, 33.903240, 32.344223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453001, 33.182991, 31.978563>,  <27.662235, 33.626217, 32.512127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453001, 33.182991, 31.978563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192671, 33.485199, 31.948597>,  <27.036472, 33.666523, 31.930616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192671, 33.485199, 31.948597>,  <27.453001, 33.182991, 31.978563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192671, 33.485199, 31.948597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024744, -0.077514, -0.996684,
		-0.758826, -0.650519, 0.031753,
		-0.650823, 0.755524, -0.074916,
		26.997423, 33.711857, 31.926123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908539, 32.962414, 31.574879>,  <27.453001, 33.182991, 31.978563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908539, 32.962414, 31.574879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936918, 33.357578, 31.519747>,  <26.953947, 33.594677, 31.486668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936918, 33.357578, 31.519747>,  <26.908539, 32.962414, 31.574879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936918, 33.357578, 31.519747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126800, -0.145989, -0.981126,
		-0.989388, 0.052134, -0.135625,
		0.070950, 0.987912, -0.137829,
		26.958202, 33.653954, 31.478397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494843, 33.163685, 31.091160>,  <26.908539, 32.962414, 31.574879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494843, 33.163685, 31.091160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748213, 33.472790, 31.075087>,  <26.900234, 33.658253, 31.065443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748213, 33.472790, 31.075087>,  <26.494843, 33.163685, 31.091160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748213, 33.472790, 31.075087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149448, -0.173121, -0.973496,
		-0.759236, 0.610630, -0.225147,
		0.633424, 0.772761, -0.040182,
		26.938240, 33.704617, 31.063032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308056, 33.633911, 30.475718>,  <26.494843, 33.163685, 31.091160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308056, 33.633911, 30.475718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689259, 33.723087, 30.557768>,  <26.917980, 33.776592, 30.606998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689259, 33.723087, 30.557768>,  <26.308056, 33.633911, 30.475718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689259, 33.723087, 30.557768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203648, 0.029845, -0.978589,
		-0.224289, 0.974375, -0.016959,
		0.953007, 0.222940, 0.205124,
		26.975161, 33.789970, 30.619305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410929, 34.111660, 30.060633>,  <26.308056, 33.633911, 30.475718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410929, 34.111660, 30.060633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778849, 33.979324, 30.145029>,  <26.999599, 33.899925, 30.195667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778849, 33.979324, 30.145029>,  <26.410929, 34.111660, 30.060633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778849, 33.979324, 30.145029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268411, 0.138252, -0.953332,
		0.286227, 0.933506, 0.215964,
		0.919799, -0.330836, 0.210992,
		27.054789, 33.880074, 30.208326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952953, 34.684757, 29.771603>,  <26.410929, 34.111660, 30.060633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952953, 34.684757, 29.771603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169020, 34.351036, 29.815701>,  <27.298660, 34.150803, 29.842159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169020, 34.351036, 29.815701>,  <26.952953, 34.684757, 29.771603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169020, 34.351036, 29.815701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336308, 0.093918, -0.937057,
		0.771438, 0.543243, 0.331315,
		0.540167, -0.834306, 0.110245,
		27.331070, 34.100746, 29.848774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617760, 34.853531, 29.575872>,  <26.952953, 34.684757, 29.771603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617760, 34.853531, 29.575872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616470, 34.457932, 29.516712>,  <27.615696, 34.220573, 29.481216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616470, 34.457932, 29.516712>,  <27.617760, 34.853531, 29.575872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616470, 34.457932, 29.516712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340137, 0.137998, -0.930195,
		0.940370, -0.053306, 0.335949,
		-0.003225, -0.988997, -0.147901,
		27.615503, 34.161232, 29.472342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181534, 34.698902, 29.130596>,  <27.617760, 34.853531, 29.575872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181534, 34.698902, 29.130596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948380, 34.374859, 29.105394>,  <27.808487, 34.180435, 29.090273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948380, 34.374859, 29.105394>,  <28.181534, 34.698902, 29.130596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948380, 34.374859, 29.105394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229241, -0.089562, -0.969241,
		0.779545, -0.579402, 0.237914,
		-0.582888, -0.810106, -0.063005,
		27.773514, 34.131828, 29.086493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631737, 34.138657, 28.905733>,  <28.181534, 34.698902, 29.130596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631737, 34.138657, 28.905733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266584, 34.031837, 28.782232>,  <28.047493, 33.967747, 28.708132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266584, 34.031837, 28.782232>,  <28.631737, 34.138657, 28.905733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266584, 34.031837, 28.782232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334433, -0.055531, -0.940782,
		0.234093, -0.962081, 0.140005,
		-0.912883, -0.267053, -0.308752,
		27.992720, 33.951721, 28.689606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736618, 33.656174, 28.340923>,  <28.631737, 34.138657, 28.905733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736618, 33.656174, 28.340923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351162, 33.756660, 28.304516>,  <28.119888, 33.816952, 28.282671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351162, 33.756660, 28.304516>,  <28.736618, 33.656174, 28.340923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351162, 33.756660, 28.304516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088490, -0.021374, -0.995848,
		-0.252123, -0.967694, -0.001634,
		-0.963641, 0.251221, -0.091020,
		28.062069, 33.832027, 28.277210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469563, 33.193325, 27.780861>,  <28.736618, 33.656174, 28.340923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469563, 33.193325, 27.780861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240894, 33.518486, 27.825363>,  <28.103693, 33.713585, 27.852064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240894, 33.518486, 27.825363>,  <28.469563, 33.193325, 27.780861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240894, 33.518486, 27.825363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031199, 0.157036, -0.987100,
		-0.819891, -0.560824, -0.115134,
		-0.571669, 0.812906, 0.111255,
		28.069393, 33.762360, 27.858740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975668, 33.151413, 27.269871>,  <28.469563, 33.193325, 27.780861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975668, 33.151413, 27.269871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964514, 33.534004, 27.386059>,  <27.957821, 33.763557, 27.455772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964514, 33.534004, 27.386059>,  <27.975668, 33.151413, 27.269871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964514, 33.534004, 27.386059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009337, 0.290322, -0.956884,
		-0.999568, -0.029395, 0.000835,
		-0.027885, 0.956478, 0.290470,
		27.956148, 33.820946, 27.473200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556263, 33.515064, 26.726921>,  <27.975668, 33.151413, 27.269871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556263, 33.515064, 26.726921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763165, 33.794296, 26.924967>,  <27.887306, 33.961834, 27.043795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763165, 33.794296, 26.924967>,  <27.556263, 33.515064, 26.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763165, 33.794296, 26.924967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179426, 0.477206, -0.860280,
		-0.836812, 0.533820, 0.121584,
		0.517255, 0.698077, 0.495112,
		27.918341, 34.003719, 27.073500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268934, 34.080894, 26.446667>,  <27.556263, 33.515064, 26.726921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268934, 34.080894, 26.446667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644928, 34.089680, 26.582870>,  <27.870523, 34.094952, 26.664593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644928, 34.089680, 26.582870>,  <27.268934, 34.080894, 26.446667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644928, 34.089680, 26.582870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260191, 0.599461, -0.756933,
		-0.220750, 0.800103, 0.557768,
		0.939984, 0.021967, 0.340511,
		27.926924, 34.096272, 26.685024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532446, 34.785030, 26.339987>,  <27.268934, 34.080894, 26.446667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532446, 34.785030, 26.339987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835127, 34.523758, 26.350973>,  <28.016735, 34.366993, 26.357565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835127, 34.523758, 26.350973>,  <27.532446, 34.785030, 26.339987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835127, 34.523758, 26.350973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362579, 0.384340, -0.849011,
		0.544004, 0.652406, 0.527661,
		0.756701, -0.653184, 0.027466,
		28.062138, 34.327801, 26.359213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137465, 35.339710, 26.518364>,  <27.532446, 34.785030, 26.339987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137465, 35.339710, 26.518364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785458, 35.494392, 26.408073>,  <26.574253, 35.587204, 26.341898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785458, 35.494392, 26.408073>,  <27.137465, 35.339710, 26.518364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785458, 35.494392, 26.408073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320269, 0.911875, 0.256733,
		0.350711, 0.137622, -0.926317,
		-0.880017, 0.386710, -0.275728,
		26.521452, 35.610405, 26.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324963, 36.001698, 26.249844>,  <27.137465, 35.339710, 26.518364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324963, 36.001698, 26.249844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928707, 36.023716, 26.299818>,  <26.690954, 36.036926, 26.329803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928707, 36.023716, 26.299818>,  <27.324963, 36.001698, 26.249844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928707, 36.023716, 26.299818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066340, 0.993895, 0.088151,
		-0.119321, 0.095614, -0.988241,
		-0.990637, 0.055042, 0.124936,
		26.631516, 36.040230, 26.337299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049046, 36.496101, 25.725471>,  <27.324963, 36.001698, 26.249844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049046, 36.496101, 25.725471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784327, 36.500217, 26.025316>,  <26.625496, 36.502686, 26.205223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784327, 36.500217, 26.025316>,  <27.049046, 36.496101, 25.725471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784327, 36.500217, 26.025316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302436, 0.918592, 0.254402,
		-0.685971, 0.395072, -0.611033,
		-0.661798, 0.010287, 0.749612,
		26.585787, 36.503304, 26.250200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573654, 37.063389, 25.600491>,  <27.049046, 36.496101, 25.725471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573654, 37.063389, 25.600491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628513, 36.979401, 25.987707>,  <26.661428, 36.929008, 26.220037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628513, 36.979401, 25.987707>,  <26.573654, 37.063389, 25.600491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628513, 36.979401, 25.987707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348293, 0.925093, 0.151309,
		-0.927298, 0.316410, 0.200007,
		0.137149, -0.209970, 0.968041,
		26.669659, 36.916409, 26.278120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177872, 37.507874, 26.078650>,  <26.573654, 37.063389, 25.600491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177872, 37.507874, 26.078650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535929, 37.378513, 26.201374>,  <26.750763, 37.300896, 26.275009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535929, 37.378513, 26.201374>,  <26.177872, 37.507874, 26.078650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535929, 37.378513, 26.201374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311381, 0.946126, 0.088815,
		-0.319005, 0.016034, 0.947617,
		0.895141, -0.323402, 0.306811,
		26.804472, 37.281494, 26.293417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404556, 37.810966, 26.710360>,  <26.177872, 37.507874, 26.078650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404556, 37.810966, 26.710360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702919, 37.707508, 26.464848>,  <26.881937, 37.645432, 26.317539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702919, 37.707508, 26.464848>,  <26.404556, 37.810966, 26.710360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702919, 37.707508, 26.464848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303769, 0.952205, -0.032097,
		0.592748, -0.162506, 0.788823,
		0.745905, -0.258645, -0.613782,
		26.926691, 37.629913, 26.280712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916279, 38.344219, 26.455397>,  <26.404556, 37.810966, 26.710360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916279, 38.344219, 26.455397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190722, 38.588173, 26.614042>,  <27.355387, 38.734543, 26.709230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190722, 38.588173, 26.614042>,  <26.916279, 38.344219, 26.455397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190722, 38.588173, 26.614042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044020, -0.578979, 0.814153,
		0.726168, -0.541137, -0.424088,
		0.686107, 0.609880, 0.396615,
		27.396553, 38.771137, 26.733027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467754, 38.057171, 26.874821>,  <26.916279, 38.344219, 26.455397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467754, 38.057171, 26.874821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433813, 38.426125, 27.025557>,  <27.413448, 38.647495, 27.115997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433813, 38.426125, 27.025557>,  <27.467754, 38.057171, 26.874821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433813, 38.426125, 27.025557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333366, -0.330126, 0.883111,
		0.938972, 0.200559, -0.279479,
		-0.084852, 0.922385, 0.376838,
		27.408358, 38.702839, 27.138609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084244, 38.321709, 27.183664>,  <27.467754, 38.057171, 26.874821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084244, 38.321709, 27.183664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783659, 38.490772, 27.386314>,  <27.603308, 38.592209, 27.507904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783659, 38.490772, 27.386314>,  <28.084244, 38.321709, 27.183664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783659, 38.490772, 27.386314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393559, -0.329152, 0.858353,
		0.529546, 0.844405, 0.081004,
		-0.751460, 0.422658, 0.506624,
		27.558222, 38.617569, 27.538301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313295, 38.844700, 27.723244>,  <28.084244, 38.321709, 27.183664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313295, 38.844700, 27.723244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965321, 38.683170, 27.836473>,  <27.756536, 38.586250, 27.904411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965321, 38.683170, 27.836473>,  <28.313295, 38.844700, 27.723244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965321, 38.683170, 27.836473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425706, -0.325135, 0.844430,
		-0.248967, 0.855108, 0.454759,
		-0.869937, -0.403828, 0.283077,
		27.704340, 38.562023, 27.921396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373705, 38.933109, 28.432741>,  <28.313295, 38.844700, 27.723244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373705, 38.933109, 28.432741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066652, 38.680779, 28.387478>,  <27.882421, 38.529381, 28.360319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066652, 38.680779, 28.387478>,  <28.373705, 38.933109, 28.432741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066652, 38.680779, 28.387478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291231, -0.500624, 0.815206,
		-0.570902, 0.592821, 0.568009,
		-0.767630, -0.630825, -0.113159,
		27.836363, 38.491531, 28.353531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864723, 38.980793, 28.942682>,  <28.373705, 38.933109, 28.432741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864723, 38.980793, 28.942682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813511, 38.607025, 28.809734>,  <27.782784, 38.382763, 28.729965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813511, 38.607025, 28.809734>,  <27.864723, 38.980793, 28.942682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813511, 38.607025, 28.809734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238592, -0.354306, 0.904180,
		-0.962643, 0.036462, 0.268307,
		-0.128031, -0.934418, -0.332370,
		27.775101, 38.326698, 28.710024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546398, 38.604038, 29.494560>,  <27.864723, 38.980793, 28.942682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546398, 38.604038, 29.494560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716990, 38.323391, 29.266228>,  <27.819344, 38.155003, 29.129229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716990, 38.323391, 29.266228>,  <27.546398, 38.604038, 29.494560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716990, 38.323391, 29.266228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297816, -0.486987, 0.821066,
		-0.854062, -0.520169, 0.001264,
		0.426477, -0.701618, -0.570832,
		27.844933, 38.112907, 29.094978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445171, 38.150997, 29.930632>,  <27.546398, 38.604038, 29.494560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445171, 38.150997, 29.930632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691498, 37.986103, 29.662054>,  <27.839293, 37.887165, 29.500908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691498, 37.986103, 29.662054>,  <27.445171, 38.150997, 29.930632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691498, 37.986103, 29.662054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374965, -0.596168, 0.709919,
		-0.692946, -0.688945, -0.212555,
		0.615814, -0.412235, -0.671443,
		27.876242, 37.862434, 29.460621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517941, 37.539146, 30.138887>,  <27.445171, 38.150997, 29.930632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517941, 37.539146, 30.138887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839626, 37.581078, 29.904881>,  <28.032639, 37.606236, 29.764477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839626, 37.581078, 29.904881>,  <27.517941, 37.539146, 30.138887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839626, 37.581078, 29.904881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513157, -0.619068, 0.594496,
		-0.299843, -0.778309, -0.551660,
		0.804217, 0.104833, -0.585018,
		28.080891, 37.612526, 29.729376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835480, 36.872559, 30.192663>,  <27.517941, 37.539146, 30.138887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835480, 36.872559, 30.192663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134697, 37.079453, 30.026339>,  <28.314226, 37.203590, 29.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134697, 37.079453, 30.026339>,  <27.835480, 36.872559, 30.192663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134697, 37.079453, 30.026339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663442, -0.598587, 0.448931,
		-0.016695, -0.611685, -0.790925,
		0.748042, 0.517238, -0.415811,
		28.359110, 37.234623, 29.901596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317722, 36.464977, 29.869585>,  <27.835480, 36.872559, 30.192663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317722, 36.464977, 29.869585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504438, 36.790554, 30.007925>,  <28.616468, 36.985901, 30.090929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504438, 36.790554, 30.007925>,  <28.317722, 36.464977, 29.869585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504438, 36.790554, 30.007925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605845, -0.579200, 0.545417,
		0.644252, -0.045063, -0.763485,
		0.466789, 0.813939, 0.345850,
		28.644476, 37.034737, 30.111679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009460, 36.250599, 29.905899>,  <28.317722, 36.464977, 29.869585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009460, 36.250599, 29.905899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953344, 36.542747, 30.173292>,  <28.919676, 36.718037, 30.333729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953344, 36.542747, 30.173292>,  <29.009460, 36.250599, 29.905899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953344, 36.542747, 30.173292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588557, -0.481409, 0.649497,
		0.796191, 0.484558, -0.362331,
		-0.140289, 0.730376, 0.668483,
		28.911257, 36.761860, 30.373837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709488, 36.337975, 30.059763>,  <29.009460, 36.250599, 29.905899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709488, 36.337975, 30.059763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528244, 36.554039, 30.343430>,  <29.419497, 36.683678, 30.513630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528244, 36.554039, 30.343430>,  <29.709488, 36.337975, 30.059763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528244, 36.554039, 30.343430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704294, -0.270775, 0.656240,
		0.546499, 0.796812, -0.257739,
		-0.453111, 0.540158, 0.709169,
		29.392311, 36.716087, 30.556181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221405, 36.809193, 30.408979>,  <29.709488, 36.337975, 30.059763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221405, 36.809193, 30.408979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910334, 36.729633, 30.647528>,  <29.723690, 36.681896, 30.790657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910334, 36.729633, 30.647528>,  <30.221405, 36.809193, 30.408979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910334, 36.729633, 30.647528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624895, -0.348273, 0.698722,
		0.068724, 0.916048, 0.395136,
		-0.777678, -0.198900, 0.596369,
		29.677031, 36.669964, 30.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546974, 36.600979, 31.082945>,  <30.221405, 36.809193, 30.408979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546974, 36.600979, 31.082945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164280, 36.512089, 31.158070>,  <29.934664, 36.458755, 31.203144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164280, 36.512089, 31.158070>,  <30.546974, 36.600979, 31.082945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164280, 36.512089, 31.158070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290358, -0.687769, 0.665332,
		-0.018681, 0.691079, 0.722537,
		-0.956736, -0.222224, 0.187813,
		29.877258, 36.445423, 31.214413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420715, 36.689159, 31.855440>,  <30.546974, 36.600979, 31.082945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420715, 36.689159, 31.855440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130388, 36.441242, 31.736074>,  <29.956192, 36.292492, 31.664455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130388, 36.441242, 31.736074>,  <30.420715, 36.689159, 31.855440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130388, 36.441242, 31.736074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106150, -0.529531, 0.841623,
		-0.679648, 0.579188, 0.450134,
		-0.725817, -0.619789, -0.298414,
		29.912643, 36.255306, 31.646551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903427, 36.666920, 32.382339>,  <30.420715, 36.689159, 31.855440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903427, 36.666920, 32.382339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839569, 36.316338, 32.200642>,  <29.801254, 36.105988, 32.091621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839569, 36.316338, 32.200642>,  <29.903427, 36.666920, 32.382339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839569, 36.316338, 32.200642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097201, -0.443953, 0.890763,
		-0.982377, 0.186360, -0.014317,
		-0.159647, -0.876456, -0.454243,
		29.791676, 36.053402, 32.064369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285923, 36.403614, 32.653946>,  <29.903427, 36.666920, 32.382339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285923, 36.403614, 32.653946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486303, 36.099480, 32.488564>,  <29.606531, 35.917000, 32.389336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486303, 36.099480, 32.488564>,  <29.285923, 36.403614, 32.653946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486303, 36.099480, 32.488564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168760, -0.554360, 0.814988,
		-0.848864, -0.338494, -0.406020,
		0.500950, -0.760333, -0.413452,
		29.636589, 35.871380, 32.364529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738348, 35.906551, 32.598152>,  <29.285923, 36.403614, 32.653946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738348, 35.906551, 32.598152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098703, 35.733074, 32.591049>,  <29.314917, 35.628990, 32.586788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098703, 35.733074, 32.591049>,  <28.738348, 35.906551, 32.598152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098703, 35.733074, 32.591049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247165, -0.546195, 0.800363,
		-0.356809, -0.716647, -0.599253,
		0.900887, -0.433691, -0.017757,
		29.368969, 35.602966, 32.585724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503008, 35.258724, 32.527054>,  <28.738348, 35.906551, 32.598152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503008, 35.258724, 32.527054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873533, 35.219845, 32.672653>,  <29.095848, 35.196518, 32.760014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873533, 35.219845, 32.672653>,  <28.503008, 35.258724, 32.527054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873533, 35.219845, 32.672653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352436, -0.565034, 0.746007,
		0.133166, -0.819323, -0.557653,
		0.926313, -0.097194, 0.364002,
		29.151426, 35.190685, 32.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492861, 34.565090, 32.754223>,  <28.503008, 35.258724, 32.527054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492861, 34.565090, 32.754223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814409, 34.712742, 32.940784>,  <29.007338, 34.801334, 33.052723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814409, 34.712742, 32.940784>,  <28.492861, 34.565090, 32.754223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814409, 34.712742, 32.940784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277276, -0.461162, 0.842881,
		0.526223, -0.806889, -0.268362,
		0.803870, 0.369133, 0.466405,
		29.055571, 34.823483, 33.080708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848743, 34.021111, 32.990993>,  <28.492861, 34.565090, 32.754223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848743, 34.021111, 32.990993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950518, 34.343834, 33.204281>,  <29.011583, 34.537468, 33.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950518, 34.343834, 33.204281>,  <28.848743, 34.021111, 32.990993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950518, 34.343834, 33.204281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117280, -0.521557, 0.845117,
		0.959952, -0.277566, -0.038081,
		0.254437, 0.806806, 0.533223,
		29.026850, 34.585876, 33.364246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283920, 33.838917, 33.511005>,  <28.848743, 34.021111, 32.990993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283920, 33.838917, 33.511005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132172, 34.183331, 33.646473>,  <29.041122, 34.389980, 33.727753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132172, 34.183331, 33.646473>,  <29.283920, 33.838917, 33.511005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132172, 34.183331, 33.646473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198166, -0.433153, 0.879266,
		0.903775, 0.266453, 0.334953,
		-0.379369, 0.861034, 0.338671,
		29.018360, 34.441643, 33.748074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549168, 33.869133, 34.132580>,  <29.283920, 33.838917, 33.511005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549168, 33.869133, 34.132580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246370, 34.124233, 34.189484>,  <29.064692, 34.277294, 34.223625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246370, 34.124233, 34.189484>,  <29.549168, 33.869133, 34.132580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246370, 34.124233, 34.189484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176312, -0.408997, 0.895341,
		0.629183, 0.652687, 0.422052,
		-0.756995, 0.637747, 0.142258,
		29.019272, 34.315556, 34.232162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655979, 34.258980, 34.784336>,  <29.549168, 33.869133, 34.132580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655979, 34.258980, 34.784336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268087, 34.334530, 34.722424>,  <29.035353, 34.379860, 34.685276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268087, 34.334530, 34.722424>,  <29.655979, 34.258980, 34.784336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268087, 34.334530, 34.722424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206770, -0.297925, 0.931926,
		0.129904, 0.935718, 0.327959,
		-0.969727, 0.188874, -0.154777,
		28.977169, 34.391193, 34.675991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252356, 34.265221, 35.152672>,  <29.655979, 34.258980, 34.784336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252356, 34.265221, 35.152672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064377, 34.597546, 35.033405>,  <29.951590, 34.796940, 34.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064377, 34.597546, 35.033405>,  <30.252356, 34.265221, 35.152672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064377, 34.597546, 35.033405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874135, 0.484962, -0.026453,
		0.122623, -0.273073, -0.954146,
		-0.469948, 0.830809, -0.298170,
		29.923393, 34.846786, 34.943954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741695, 34.431690, 34.753887>,  <30.252356, 34.265221, 35.152672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741695, 34.431690, 34.753887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615194, 34.804455, 34.682861>,  <30.539293, 35.028114, 34.640247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615194, 34.804455, 34.682861>,  <30.741695, 34.431690, 34.753887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615194, 34.804455, 34.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733788, 0.358923, 0.576827,
		0.601281, 0.052130, -0.797335,
		-0.316251, 0.931910, -0.177561,
		30.520319, 35.084026, 34.629593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376072, 34.637520, 34.649269>,  <30.741695, 34.431690, 34.753887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376072, 34.637520, 34.649269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143309, 34.952267, 34.731457>,  <31.003651, 35.141113, 34.780769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143309, 34.952267, 34.731457>,  <31.376072, 34.637520, 34.649269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143309, 34.952267, 34.731457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730324, 0.394465, 0.557695,
		0.357782, 0.474589, -0.804212,
		-0.581910, 0.786869, 0.205471,
		30.968735, 35.188328, 34.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718643, 35.207375, 34.464733>,  <31.376072, 34.637520, 34.649269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718643, 35.207375, 34.464733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464304, 35.205250, 34.773453>,  <31.311701, 35.203976, 34.958683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464304, 35.205250, 34.773453>,  <31.718643, 35.207375, 34.464733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464304, 35.205250, 34.773453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702003, 0.411601, 0.581185,
		-0.320761, 0.911349, -0.257984,
		-0.635849, -0.005316, 0.771795,
		31.273550, 35.203655, 35.004990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850742, 35.839100, 34.668766>,  <31.718643, 35.207375, 34.464733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850742, 35.839100, 34.668766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708727, 35.633518, 34.981125>,  <31.623518, 35.510170, 35.168541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708727, 35.633518, 34.981125>,  <31.850742, 35.839100, 34.668766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708727, 35.633518, 34.981125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435169, 0.648439, 0.624624,
		-0.827390, 0.561589, -0.006567,
		-0.355040, -0.513950, 0.780898,
		31.602215, 35.479332, 35.215393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575979, 36.312847, 35.131298>,  <31.850742, 35.839100, 34.668766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575979, 36.312847, 35.131298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673904, 35.983742, 35.336479>,  <31.732660, 35.786278, 35.459587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673904, 35.983742, 35.336479>,  <31.575979, 36.312847, 35.131298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673904, 35.983742, 35.336479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519893, 0.557965, 0.646828,
		-0.818399, 0.108330, 0.564347,
		0.244815, -0.822764, 0.512957,
		31.747349, 35.736912, 35.490368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519169, 36.529949, 35.774570>,  <31.575979, 36.312847, 35.131298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519169, 36.529949, 35.774570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733889, 36.197598, 35.833195>,  <31.862720, 35.998184, 35.868370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733889, 36.197598, 35.833195>,  <31.519169, 36.529949, 35.774570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733889, 36.197598, 35.833195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610606, 0.502466, 0.612118,
		-0.582241, -0.239092, 0.777065,
		0.536801, -0.830881, 0.146565,
		31.894930, 35.948334, 35.877163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585243, 36.448589, 36.476486>,  <31.519169, 36.529949, 35.774570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585243, 36.448589, 36.476486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877583, 36.214462, 36.336048>,  <32.052986, 36.073986, 36.251785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877583, 36.214462, 36.336048>,  <31.585243, 36.448589, 36.476486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877583, 36.214462, 36.336048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632599, 0.387743, 0.670428,
		-0.256278, -0.712082, 0.653652,
		0.730849, -0.585316, -0.351092,
		32.096836, 36.038868, 36.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853899, 36.157192, 37.100830>,  <31.585243, 36.448589, 36.476486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853899, 36.157192, 37.100830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142597, 36.140308, 36.824482>,  <32.315815, 36.130177, 36.658672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142597, 36.140308, 36.824482>,  <31.853899, 36.157192, 37.100830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142597, 36.140308, 36.824482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682244, 0.211723, 0.699797,
		0.116735, -0.976418, 0.181607,
		0.721745, -0.042210, -0.690871,
		32.359119, 36.127647, 36.617222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286510, 35.684021, 37.331104>,  <31.853899, 36.157192, 37.100830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286510, 35.684021, 37.331104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492809, 35.887360, 37.055252>,  <32.616589, 36.009361, 36.889740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492809, 35.887360, 37.055252>,  <32.286510, 35.684021, 37.331104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492809, 35.887360, 37.055252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744330, 0.132723, 0.654491,
		0.424237, -0.850864, -0.309925,
		0.515748, 0.508345, -0.689629,
		32.647533, 36.039864, 36.848362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971470, 35.467880, 37.399647>,  <32.286510, 35.684021, 37.331104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971470, 35.467880, 37.399647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030293, 35.814835, 37.209484>,  <33.065586, 36.023006, 37.095387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030293, 35.814835, 37.209484>,  <32.971470, 35.467880, 37.399647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030293, 35.814835, 37.209484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725937, 0.231815, 0.647515,
		0.671854, -0.440336, -0.595581,
		0.147060, 0.867391, -0.475402,
		33.074409, 36.075050, 37.066864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766109, 35.633327, 37.280342>,  <32.971470, 35.467880, 37.399647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766109, 35.633327, 37.280342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600910, 35.997253, 37.264034>,  <33.501789, 36.215611, 37.254250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600910, 35.997253, 37.264034>,  <33.766109, 35.633327, 37.280342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600910, 35.997253, 37.264034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602648, 0.306582, 0.736765,
		0.682822, 0.279712, -0.674918,
		-0.413000, 0.909818, -0.040773,
		33.477009, 36.270199, 37.251801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331753, 36.071423, 37.217812>,  <33.766109, 35.633327, 37.280342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331753, 36.071423, 37.217812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034641, 36.309944, 37.339603>,  <33.856377, 36.453056, 37.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034641, 36.309944, 37.339603>,  <34.331753, 36.071423, 37.217812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034641, 36.309944, 37.339603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627343, 0.460945, 0.627671,
		0.233932, 0.657233, -0.716464,
		-0.742777, 0.596301, 0.304480,
		33.811810, 36.488834, 37.430946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601650, 36.683720, 37.237453>,  <34.331753, 36.071423, 37.217812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601650, 36.683720, 37.237453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301300, 36.688053, 37.501598>,  <34.121090, 36.690655, 37.660084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301300, 36.688053, 37.501598>,  <34.601650, 36.683720, 37.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301300, 36.688053, 37.501598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582402, 0.482369, 0.654315,
		-0.311445, 0.875901, -0.368509,
		-0.750873, 0.010837, 0.660358,
		34.076038, 36.691303, 37.699707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790237, 37.190205, 37.693172>,  <34.601650, 36.683720, 37.237453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790237, 37.190205, 37.693172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491302, 37.024296, 37.900806>,  <34.311943, 36.924751, 38.025387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491302, 37.024296, 37.900806>,  <34.790237, 37.190205, 37.693172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491302, 37.024296, 37.900806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357636, 0.407311, 0.840354,
		-0.559987, 0.813670, -0.156060,
		-0.747336, -0.414775, 0.519087,
		34.267101, 36.899864, 38.056534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478027, 37.777893, 38.110371>,  <34.790237, 37.190205, 37.693172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478027, 37.777893, 38.110371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376369, 37.433193, 38.286007>,  <34.315376, 37.226372, 38.391388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376369, 37.433193, 38.286007>,  <34.478027, 37.777893, 38.110371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376369, 37.433193, 38.286007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192745, 0.399760, 0.896126,
		-0.947766, 0.312375, 0.064502,
		-0.254142, -0.861750, 0.439088,
		34.300125, 37.174667, 38.417732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006626, 38.016357, 38.520016>,  <34.478027, 37.777893, 38.110371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006626, 38.016357, 38.520016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074139, 37.658550, 38.685593>,  <34.114647, 37.443867, 38.784939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074139, 37.658550, 38.685593>,  <34.006626, 38.016357, 38.520016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074139, 37.658550, 38.685593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164005, 0.388622, 0.906684,
		-0.971914, -0.220918, -0.081115,
		0.168780, -0.894521, 0.413939,
		34.124771, 37.390194, 38.809772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405106, 37.769417, 38.901672>,  <34.006626, 38.016357, 38.520016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405106, 37.769417, 38.901672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722202, 37.579277, 39.054306>,  <33.912460, 37.465191, 39.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722202, 37.579277, 39.054306>,  <33.405106, 37.769417, 38.901672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722202, 37.579277, 39.054306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268113, 0.290274, 0.918617,
		-0.547430, -0.830530, 0.102663,
		0.792739, -0.475354, 0.381581,
		33.960026, 37.436672, 39.168781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138187, 37.563087, 39.538803>,  <33.405106, 37.769417, 38.901672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138187, 37.563087, 39.538803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533661, 37.511108, 39.568802>,  <33.770943, 37.479919, 39.586800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533661, 37.511108, 39.568802>,  <33.138187, 37.563087, 39.538803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533661, 37.511108, 39.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062656, 0.096581, 0.993351,
		-0.136327, -0.986806, 0.087345,
		0.988680, -0.129948, 0.074995,
		33.830265, 37.472126, 39.591301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237289, 37.076950, 39.888725>,  <33.138187, 37.563087, 39.538803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237289, 37.076950, 39.888725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596989, 37.248226, 39.924496>,  <33.812809, 37.350990, 39.945957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596989, 37.248226, 39.924496>,  <33.237289, 37.076950, 39.888725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596989, 37.248226, 39.924496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001974, -0.200455, 0.979701,
		0.437426, -0.881175, -0.179414,
		0.899252, 0.428192, 0.089423,
		33.866764, 37.376682, 39.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733967, 36.569508, 40.272163>,  <33.237289, 37.076950, 39.888725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733967, 36.569508, 40.272163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848724, 36.952511, 40.283916>,  <33.917580, 37.182312, 40.290966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848724, 36.952511, 40.283916>,  <33.733967, 36.569508, 40.272163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848724, 36.952511, 40.283916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116811, -0.065408, 0.990998,
		0.950813, -0.280883, -0.130613,
		0.286898, 0.957511, 0.029380,
		33.934795, 37.239765, 40.292732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082962, 36.558918, 40.816540>,  <33.733967, 36.569508, 40.272163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082962, 36.558918, 40.816540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992805, 36.943863, 40.755814>,  <33.938709, 37.174831, 40.719376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992805, 36.943863, 40.755814>,  <34.082962, 36.558918, 40.816540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992805, 36.943863, 40.755814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005675, 0.154527, 0.987972,
		0.974251, 0.223545, -0.029368,
		-0.225394, 0.962366, -0.151817,
		33.925186, 37.232574, 40.710270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629360, 36.885124, 41.159523>,  <34.082962, 36.558918, 40.816540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629360, 36.885124, 41.159523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349121, 37.167648, 41.118942>,  <34.180977, 37.337162, 41.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349121, 37.167648, 41.118942>,  <34.629360, 36.885124, 41.159523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349121, 37.167648, 41.118942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011575, 0.153407, 0.988095,
		0.713463, 0.691082, -0.115652,
		-0.700597, 0.706308, -0.101451,
		34.138943, 37.379539, 41.088509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852932, 37.432060, 41.533516>,  <34.629360, 36.885124, 41.159523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852932, 37.432060, 41.533516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461140, 37.509796, 41.512157>,  <34.226063, 37.556438, 41.499344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461140, 37.509796, 41.512157>,  <34.852932, 37.432060, 41.533516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461140, 37.509796, 41.512157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013901, 0.329447, 0.944072,
		0.201063, 0.923957, -0.325388,
		-0.979480, 0.194342, -0.053396,
		34.167297, 37.568100, 41.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746517, 38.041302, 41.908703>,  <34.852932, 37.432060, 41.533516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746517, 38.041302, 41.908703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388645, 37.863480, 41.891212>,  <34.173920, 37.756786, 41.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388645, 37.863480, 41.891212>,  <34.746517, 38.041302, 41.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388645, 37.863480, 41.891212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156967, 0.221236, 0.962505,
		-0.418218, 0.867999, -0.267717,
		-0.894682, -0.444559, -0.043722,
		34.120239, 37.730110, 41.878098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369270, 38.488987, 42.229370>,  <34.746517, 38.041302, 41.908703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369270, 38.488987, 42.229370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139606, 38.161682, 42.240543>,  <34.001808, 37.965298, 42.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139606, 38.161682, 42.240543>,  <34.369270, 38.488987, 42.229370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139606, 38.161682, 42.240543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153731, 0.141255, 0.977964,
		-0.804179, 0.557217, -0.206896,
		-0.574163, -0.818264, 0.027932,
		33.967358, 37.916203, 42.248924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840145, 38.669701, 42.691010>,  <34.369270, 38.488987, 42.229370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840145, 38.669701, 42.691010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845371, 38.269764, 42.695858>,  <33.848507, 38.029800, 42.698765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845371, 38.269764, 42.695858>,  <33.840145, 38.669701, 42.691010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845371, 38.269764, 42.695858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299064, 0.007657, 0.954202,
		-0.954144, -0.016090, -0.298916,
		0.013065, -0.999841, 0.012118,
		33.849289, 37.969810, 42.699493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200874, 38.509743, 43.019756>,  <33.840145, 38.669701, 42.691010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200874, 38.509743, 43.019756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386963, 38.155685, 43.023415>,  <33.498615, 37.943249, 43.025612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386963, 38.155685, 43.023415>,  <33.200874, 38.509743, 43.019756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386963, 38.155685, 43.023415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194454, -0.092109, 0.976577,
		-0.863572, -0.456104, -0.214972,
		0.465222, -0.885147, 0.009148,
		33.526531, 37.890141, 43.026157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766464, 38.088005, 43.390888>,  <33.200874, 38.509743, 43.019756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766464, 38.088005, 43.390888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120392, 37.902153, 43.404869>,  <33.332748, 37.790642, 43.413258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120392, 37.902153, 43.404869>,  <32.766464, 38.088005, 43.390888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120392, 37.902153, 43.404869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074177, -0.066401, 0.995032,
		-0.460001, -0.883012, -0.093217,
		0.884815, -0.464630, 0.034954,
		33.385838, 37.762764, 43.415356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676319, 37.390266, 43.758839>,  <32.766464, 38.088005, 43.390888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676319, 37.390266, 43.758839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056309, 37.513145, 43.781387>,  <33.284302, 37.586872, 43.794914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056309, 37.513145, 43.781387>,  <32.676319, 37.390266, 43.758839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056309, 37.513145, 43.781387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019021, -0.123239, 0.992195,
		0.311745, -0.943633, -0.111231,
		0.949975, 0.307196, 0.056368,
		33.341301, 37.605305, 43.798298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881241, 37.124577, 44.353821>,  <32.676319, 37.390266, 43.758839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881241, 37.124577, 44.353821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174549, 37.385353, 44.276573>,  <33.350533, 37.541817, 44.230225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174549, 37.385353, 44.276573>,  <32.881241, 37.124577, 44.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174549, 37.385353, 44.276573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214439, 0.047798, 0.975567,
		0.645240, -0.756764, -0.104753,
		0.733267, 0.651938, -0.193121,
		33.394531, 37.580933, 44.218636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498703, 36.911167, 44.744328>,  <32.881241, 37.124577, 44.353821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498703, 36.911167, 44.744328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529949, 37.304340, 44.677704>,  <33.548698, 37.540245, 44.637730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529949, 37.304340, 44.677704>,  <33.498703, 36.911167, 44.744328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529949, 37.304340, 44.677704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275574, 0.139267, 0.951138,
		0.958101, -0.120199, -0.259992,
		0.078117, 0.982933, -0.166555,
		33.553383, 37.599220, 44.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042645, 37.118618, 45.097893>,  <33.498703, 36.911167, 44.744328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042645, 37.118618, 45.097893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849499, 37.461288, 45.025284>,  <33.733612, 37.666889, 44.981716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849499, 37.461288, 45.025284>,  <34.042645, 37.118618, 45.097893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849499, 37.461288, 45.025284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018256, 0.197401, 0.980153,
		0.875507, 0.476590, -0.079677,
		-0.482860, 0.856676, -0.181527,
		33.704639, 37.718292, 44.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447052, 37.685886, 45.332848>,  <34.042645, 37.118618, 45.097893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447052, 37.685886, 45.332848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051865, 37.747620, 45.336926>,  <33.814754, 37.784660, 45.339371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051865, 37.747620, 45.336926>,  <34.447052, 37.685886, 45.332848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051865, 37.747620, 45.336926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054843, 0.287921, 0.956083,
		0.144617, 0.945137, -0.292920,
		-0.987967, 0.154331, 0.010196,
		33.755474, 37.793919, 45.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515034, 38.297913, 45.704742>,  <34.447052, 37.685886, 45.332848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515034, 38.297913, 45.704742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158833, 38.124878, 45.761143>,  <33.945114, 38.021057, 45.794983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158833, 38.124878, 45.761143>,  <34.515034, 38.297913, 45.704742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158833, 38.124878, 45.761143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003245, 0.315940, 0.948774,
		-0.454972, 0.844425, -0.282748,
		-0.890500, -0.432583, 0.141003,
		33.891682, 37.995102, 45.803444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102551, 38.824734, 45.994289>,  <34.515034, 38.297913, 45.704742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102551, 38.824734, 45.994289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954674, 38.471085, 46.108585>,  <33.865948, 38.258896, 46.177162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954674, 38.471085, 46.108585>,  <34.102551, 38.824734, 45.994289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954674, 38.471085, 46.108585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104055, 0.266199, 0.958285,
		-0.923308, 0.384007, -0.006416,
		-0.369696, -0.884125, 0.285742,
		33.843765, 38.205849, 46.194309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514378, 38.966793, 46.464886>,  <34.102551, 38.824734, 45.994289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514378, 38.966793, 46.464886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632572, 38.589092, 46.522953>,  <33.703487, 38.362473, 46.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632572, 38.589092, 46.522953>,  <33.514378, 38.966793, 46.464886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632572, 38.589092, 46.522953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084701, 0.125462, 0.988476,
		-0.951585, -0.304376, -0.042907,
		0.295485, -0.944253, 0.145168,
		33.721218, 38.305817, 46.566505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248634, 38.844845, 47.102215>,  <33.514378, 38.966793, 46.464886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248634, 38.844845, 47.102215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495770, 38.534245, 47.052704>,  <33.644051, 38.347885, 47.022999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495770, 38.534245, 47.052704>,  <33.248634, 38.844845, 47.102215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495770, 38.534245, 47.052704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114617, -0.066793, 0.991162,
		-0.777910, -0.626561, 0.047734,
		0.617835, -0.776505, -0.123774,
		33.681122, 38.301292, 47.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020569, 38.226921, 47.523323>,  <33.248634, 38.844845, 47.102215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020569, 38.226921, 47.523323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396122, 38.112606, 47.446564>,  <33.621452, 38.044018, 47.400509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396122, 38.112606, 47.446564>,  <33.020569, 38.226921, 47.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396122, 38.112606, 47.446564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104947, -0.293292, 0.950245,
		-0.327847, -0.912309, -0.245375,
		0.938884, -0.285784, -0.191899,
		33.677788, 38.026871, 47.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195427, 37.583832, 47.766174>,  <33.020569, 38.226921, 47.523323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195427, 37.583832, 47.766174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563992, 37.738682, 47.752686>,  <33.785130, 37.831593, 47.744591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563992, 37.738682, 47.752686>,  <33.195427, 37.583832, 47.766174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563992, 37.738682, 47.752686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164148, -0.309097, 0.936757,
		0.352220, -0.868673, -0.348351,
		0.921410, 0.387126, -0.033721,
		33.840416, 37.854820, 47.742569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567921, 37.154655, 48.109962>,  <33.195427, 37.583832, 47.766174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567921, 37.154655, 48.109962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795807, 37.482800, 48.129692>,  <33.932537, 37.679688, 48.141529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795807, 37.482800, 48.129692>,  <33.567921, 37.154655, 48.109962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795807, 37.482800, 48.129692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460574, -0.368408, 0.807557,
		0.680659, -0.437360, -0.587724,
		0.569715, 0.820361, 0.049323,
		33.966721, 37.728909, 48.144489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160896, 36.920002, 48.422195>,  <33.567921, 37.154655, 48.109962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160896, 36.920002, 48.422195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173332, 37.313618, 48.492271>,  <34.180794, 37.549789, 48.534317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173332, 37.313618, 48.492271>,  <34.160896, 36.920002, 48.422195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173332, 37.313618, 48.492271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101779, -0.177485, 0.978846,
		0.994321, -0.012599, -0.105673,
		0.031088, 0.984043, 0.175195,
		34.182659, 37.608829, 48.544830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793652, 37.090092, 48.756298>,  <34.160896, 36.920002, 48.422195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793652, 37.090092, 48.756298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556362, 37.395676, 48.857849>,  <34.413990, 37.579025, 48.918781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556362, 37.395676, 48.857849>,  <34.793652, 37.090092, 48.756298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556362, 37.395676, 48.857849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253477, -0.122068, 0.959609,
		0.764093, 0.633612, -0.121233,
		-0.593220, 0.763961, 0.253877,
		34.378395, 37.624863, 48.934013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112179, 37.325642, 49.325794>,  <34.793652, 37.090092, 48.756298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112179, 37.325642, 49.325794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750874, 37.496349, 49.343605>,  <34.534092, 37.598774, 49.354294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750874, 37.496349, 49.343605>,  <35.112179, 37.325642, 49.325794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750874, 37.496349, 49.343605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061938, 0.026987, 0.997715,
		0.424591, 0.903958, -0.050810,
		-0.903264, 0.426768, 0.044531,
		34.479893, 37.624378, 49.356964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118038, 37.859734, 49.748219>,  <35.112179, 37.325642, 49.325794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118038, 37.859734, 49.748219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719219, 37.844803, 49.775043>,  <34.479927, 37.835846, 49.791138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719219, 37.844803, 49.775043>,  <35.118038, 37.859734, 49.748219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719219, 37.844803, 49.775043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061167, 0.141353, 0.988068,
		-0.046360, 0.989255, -0.138653,
		-0.997050, -0.037326, 0.067063,
		34.420105, 37.833607, 49.795162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946831, 38.307590, 50.218197>,  <35.118038, 37.859734, 49.748219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946831, 38.307590, 50.218197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654140, 38.035019, 50.212231>,  <34.478527, 37.871475, 50.208652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654140, 38.035019, 50.212231>,  <34.946831, 38.307590, 50.218197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654140, 38.035019, 50.212231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014707, -0.006088, 0.999873,
		-0.681438, 0.731855, -0.005567,
		-0.731728, -0.681434, -0.014912,
		34.434624, 37.830589, 50.207756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429523, 38.554321, 50.739594>,  <34.946831, 38.307590, 50.218197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429523, 38.554321, 50.739594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378952, 38.161980, 50.680355>,  <34.348610, 37.926575, 50.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378952, 38.161980, 50.680355>,  <34.429523, 38.554321, 50.739594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378952, 38.161980, 50.680355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075422, -0.139358, 0.987366,
		-0.989104, 0.136002, -0.056359,
		-0.126429, -0.980858, -0.148097,
		34.341022, 37.867722, 50.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782883, 38.270580, 51.114231>,  <34.429523, 38.554321, 50.739594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782883, 38.270580, 51.114231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087784, 38.015289, 51.071079>,  <34.270725, 37.862114, 51.045189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087784, 38.015289, 51.071079>,  <33.782883, 38.270580, 51.114231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087784, 38.015289, 51.071079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011718, -0.153037, 0.988151,
		-0.647172, -0.754486, -0.109174,
		0.762254, -0.638224, -0.107882,
		34.316460, 37.823822, 51.038715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576691, 37.662273, 51.476456>,  <33.782883, 38.270580, 51.114231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576691, 37.662273, 51.476456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966389, 37.749020, 51.451748>,  <34.200207, 37.801067, 51.436924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966389, 37.749020, 51.451748>,  <33.576691, 37.662273, 51.476456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966389, 37.749020, 51.451748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114284, -0.238760, 0.964330,
		0.194382, -0.946553, -0.257395,
		0.974246, 0.216864, -0.061766,
		34.258663, 37.814079, 51.433220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113281, 37.210716, 51.768570>,  <33.576691, 37.662273, 51.476456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113281, 37.210716, 51.768570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261665, 37.580990, 51.798241>,  <34.350697, 37.803154, 51.816044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261665, 37.580990, 51.798241>,  <34.113281, 37.210716, 51.768570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261665, 37.580990, 51.798241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134831, -0.132715, 0.981941,
		0.918810, -0.354255, -0.174042,
		0.370956, 0.925684, 0.074175,
		34.372952, 37.858696, 51.820492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173222, 36.868103, 52.392452>,  <34.113281, 37.210716, 51.768570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173222, 36.868103, 52.392452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798286, 36.945667, 52.276661>,  <33.573326, 36.992207, 52.207184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798286, 36.945667, 52.276661>,  <34.173222, 36.868103, 52.392452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798286, 36.945667, 52.276661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007065, 0.841226, 0.540637,
		0.348355, 0.504714, -0.789882,
		-0.937336, 0.193914, -0.289480,
		33.517086, 37.003841, 52.189816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598835, 36.820580, 52.973885>,  <34.173222, 36.868103, 52.392452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598835, 36.820580, 52.973885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782867, 37.007957, 53.275581>,  <34.893288, 37.120384, 53.456600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782867, 37.007957, 53.275581>,  <34.598835, 36.820580, 52.973885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782867, 37.007957, 53.275581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148524, -0.878131, 0.454783,
		0.875365, -0.097214, -0.473588,
		0.460083, 0.468440, 0.754246,
		34.920891, 37.148491, 53.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510757, 36.844769, 53.666866>,  <34.598835, 36.820580, 52.973885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510757, 36.844769, 53.666866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868217, 36.934910, 53.822094>,  <35.082695, 36.988995, 53.915230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868217, 36.934910, 53.822094>,  <34.510757, 36.844769, 53.666866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868217, 36.934910, 53.822094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206603, -0.561060, 0.801578,
		0.398369, -0.796510, -0.454835,
		0.893654, 0.225353, 0.388070,
		35.136314, 37.002514, 53.938515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147949, 36.644226, 53.432796>,  <34.510757, 36.844769, 53.666866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147949, 36.644226, 53.432796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530846, 36.641109, 53.317116>,  <35.760582, 36.639240, 53.247707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530846, 36.641109, 53.317116>,  <35.147949, 36.644226, 53.432796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530846, 36.641109, 53.317116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134103, -0.897710, -0.419683,
		-0.256347, 0.440518, -0.860366,
		0.957237, -0.007794, -0.289200,
		35.818016, 36.638771, 53.230354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316109, 36.779301, 52.743057>,  <35.147949, 36.644226, 53.432796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316109, 36.779301, 52.743057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621082, 36.555752, 52.873512>,  <35.804066, 36.421623, 52.951786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621082, 36.555752, 52.873512>,  <35.316109, 36.779301, 52.743057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621082, 36.555752, 52.873512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198439, -0.681680, -0.704226,
		0.615891, 0.472204, -0.630635,
		0.762430, -0.558869, 0.326137,
		35.849812, 36.388092, 52.971352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863522, 36.613979, 52.178875>,  <35.316109, 36.779301, 52.743057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863522, 36.613979, 52.178875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815983, 36.299744, 52.421764>,  <35.787460, 36.111202, 52.567497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815983, 36.299744, 52.421764>,  <35.863522, 36.613979, 52.178875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815983, 36.299744, 52.421764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409315, -0.518414, -0.750805,
		0.904620, -0.337774, -0.259944,
		-0.118844, -0.785592, 0.607224,
		35.780331, 36.064064, 52.603931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210327, 36.104252, 51.839088>,  <35.863522, 36.613979, 52.178875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210327, 36.104252, 51.839088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913784, 35.978298, 52.076149>,  <35.735859, 35.902725, 52.218384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913784, 35.978298, 52.076149>,  <36.210327, 36.104252, 51.839088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913784, 35.978298, 52.076149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587077, -0.123579, -0.800043,
		0.325162, -0.941050, -0.093246,
		-0.741357, -0.314886, 0.592652,
		35.691376, 35.883831, 52.253944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027748, 35.455933, 51.532860>,  <36.210327, 36.104252, 51.839088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027748, 35.455933, 51.532860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725098, 35.595425, 51.754093>,  <35.543507, 35.679119, 51.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725098, 35.595425, 51.754093>,  <36.027748, 35.455933, 51.532860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725098, 35.595425, 51.754093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622110, -0.123643, -0.773105,
		-0.201219, -0.929032, 0.310500,
		-0.756630, 0.348728, 0.553081,
		35.498108, 35.700043, 51.920017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573036, 34.848957, 51.738785>,  <36.027748, 35.455933, 51.532860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573036, 34.848957, 51.738785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437172, 35.221710, 51.687832>,  <35.355652, 35.445362, 51.657261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437172, 35.221710, 51.687832>,  <35.573036, 34.848957, 51.738785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437172, 35.221710, 51.687832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442740, -0.277908, -0.852495,
		-0.829825, -0.233164, 0.506976,
		-0.339663, 0.931881, -0.127384,
		35.335274, 35.501274, 51.649616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873775, 34.756226, 51.558113>,  <35.573036, 34.848957, 51.738785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873775, 34.756226, 51.558113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020477, 35.100544, 51.416958>,  <35.108498, 35.307133, 51.332264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020477, 35.100544, 51.416958>,  <34.873775, 34.756226, 51.558113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020477, 35.100544, 51.416958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217134, -0.289640, -0.932181,
		-0.904624, 0.418505, 0.080681,
		0.366754, 0.860792, -0.352887,
		35.130505, 35.358780, 51.311092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331715, 34.981018, 51.038864>,  <34.873775, 34.756226, 51.558113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331715, 34.981018, 51.038864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653107, 35.188835, 50.922585>,  <34.845940, 35.313526, 50.852818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653107, 35.188835, 50.922585>,  <34.331715, 34.981018, 51.038864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653107, 35.188835, 50.922585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172996, -0.263469, -0.949029,
		-0.569648, 0.812811, -0.121812,
		0.803476, 0.519539, -0.290698,
		34.894150, 35.344696, 50.835377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204906, 35.434708, 50.393631>,  <34.331715, 34.981018, 51.038864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204906, 35.434708, 50.393631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603394, 35.441730, 50.359592>,  <34.842487, 35.445942, 50.339169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603394, 35.441730, 50.359592>,  <34.204906, 35.434708, 50.393631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603394, 35.441730, 50.359592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084306, -0.041773, -0.995564,
		-0.021032, 0.998973, -0.040135,
		0.996218, 0.017555, -0.085098,
		34.902260, 35.446999, 50.334064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203808, 35.751091, 49.763527>,  <34.204906, 35.434708, 50.393631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203808, 35.751091, 49.763527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574471, 35.624271, 49.844307>,  <34.796867, 35.548180, 49.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574471, 35.624271, 49.844307>,  <34.203808, 35.751091, 49.763527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574471, 35.624271, 49.844307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129665, -0.234660, -0.963391,
		0.352828, 0.918921, -0.176340,
		0.926660, -0.317046, 0.201946,
		34.852470, 35.529156, 49.904892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612202, 35.978172, 49.186405>,  <34.203808, 35.751091, 49.763527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612202, 35.978172, 49.186405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795567, 35.664268, 49.353264>,  <34.905586, 35.475925, 49.453381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795567, 35.664268, 49.353264>,  <34.612202, 35.978172, 49.186405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795567, 35.664268, 49.353264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161175, -0.388181, -0.907380,
		0.874001, 0.483191, -0.051465,
		0.458415, -0.784756, 0.417149,
		34.933090, 35.428841, 49.478409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347008, 35.902813, 48.927471>,  <34.612202, 35.978172, 49.186405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347008, 35.902813, 48.927471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208626, 35.549179, 49.053150>,  <35.125599, 35.336998, 49.128555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208626, 35.549179, 49.053150>,  <35.347008, 35.902813, 48.927471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208626, 35.549179, 49.053150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267346, -0.413875, -0.870192,
		0.899358, -0.217045, 0.379536,
		-0.345952, -0.884081, 0.314195,
		35.104839, 35.283955, 49.147408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765919, 35.558163, 48.643387>,  <35.347008, 35.902813, 48.927471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765919, 35.558163, 48.643387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468834, 35.304756, 48.730137>,  <35.290581, 35.152714, 48.782188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468834, 35.304756, 48.730137>,  <35.765919, 35.558163, 48.643387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468834, 35.304756, 48.730137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102579, -0.427707, -0.898078,
		0.661705, -0.644768, 0.382649,
		-0.742714, -0.633515, 0.216876,
		35.246021, 35.114700, 48.795200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976612, 34.845802, 48.392300>,  <35.765919, 35.558163, 48.643387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976612, 34.845802, 48.392300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577412, 34.849220, 48.417370>,  <35.337891, 34.851273, 48.432411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577412, 34.849220, 48.417370>,  <35.976612, 34.845802, 48.392300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577412, 34.849220, 48.417370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063248, -0.123110, -0.990375,
		-0.000749, -0.992356, 0.123405,
		-0.997997, 0.008547, 0.062673,
		35.278011, 34.851784, 48.436172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736118, 34.307232, 48.081848>,  <35.976612, 34.845802, 48.392300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736118, 34.307232, 48.081848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431499, 34.565468, 48.059017>,  <35.248730, 34.720409, 48.045319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431499, 34.565468, 48.059017>,  <35.736118, 34.307232, 48.081848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431499, 34.565468, 48.059017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243643, -0.366786, -0.897834,
		-0.600573, -0.669833, 0.436618,
		-0.761544, 0.645594, -0.057082,
		35.203037, 34.759148, 48.041893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277267, 33.873863, 47.721249>,  <35.736118, 34.307232, 48.081848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277267, 33.873863, 47.721249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137844, 34.246971, 47.684464>,  <35.054192, 34.470837, 47.662392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137844, 34.246971, 47.684464>,  <35.277267, 33.873863, 47.721249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137844, 34.246971, 47.684464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258383, -0.189936, -0.947187,
		-0.900970, -0.306386, 0.307214,
		-0.348556, 0.932766, -0.091961,
		35.033276, 34.526802, 47.656876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755325, 33.787983, 47.271206>,  <35.277267, 33.873863, 47.721249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755325, 33.787983, 47.271206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835266, 34.179001, 47.244453>,  <34.883228, 34.413612, 47.228401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835266, 34.179001, 47.244453>,  <34.755325, 33.787983, 47.271206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835266, 34.179001, 47.244453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295330, -0.004983, -0.955382,
		-0.934259, 0.210684, 0.287701,
		0.199850, 0.977542, -0.066877,
		34.895222, 34.472263, 47.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202885, 34.156750, 47.008533>,  <34.755325, 33.787983, 47.271206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202885, 34.156750, 47.008533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514996, 34.395374, 46.933407>,  <34.702263, 34.538551, 46.888332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514996, 34.395374, 46.933407>,  <34.202885, 34.156750, 47.008533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514996, 34.395374, 46.933407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302570, 0.097240, -0.948154,
		-0.547372, 0.796653, 0.256377,
		0.780279, 0.596565, -0.187817,
		34.749081, 34.574345, 46.877060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869865, 34.838898, 46.679451>,  <34.202885, 34.156750, 47.008533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869865, 34.838898, 46.679451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247105, 34.783207, 46.558670>,  <34.473450, 34.749794, 46.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247105, 34.783207, 46.558670>,  <33.869865, 34.838898, 46.679451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247105, 34.783207, 46.558670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298455, 0.045873, -0.953321,
		0.146579, 0.989197, 0.001710,
		0.943101, -0.139227, -0.301955,
		34.530033, 34.741440, 46.468082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830425, 35.291019, 46.097229>,  <33.869865, 34.838898, 46.679451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830425, 35.291019, 46.097229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139389, 35.040718, 46.053753>,  <34.324768, 34.890537, 46.027668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139389, 35.040718, 46.053753>,  <33.830425, 35.291019, 46.097229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139389, 35.040718, 46.053753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120950, 0.023082, -0.992390,
		0.623505, 0.779676, -0.057857,
		0.772407, -0.625758, -0.108693,
		34.371113, 34.852989, 46.021145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075039, 35.422913, 45.440414>,  <33.830425, 35.291019, 46.097229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075039, 35.422913, 45.440414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258713, 35.074745, 45.511429>,  <34.368916, 34.865845, 45.554039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258713, 35.074745, 45.511429>,  <34.075039, 35.422913, 45.440414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258713, 35.074745, 45.511429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094450, -0.246556, -0.964515,
		0.883308, 0.426118, -0.195425,
		0.459181, -0.870421, 0.177538,
		34.396465, 34.813618, 45.564690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618248, 35.468277, 44.909859>,  <34.075039, 35.422913, 45.440414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618248, 35.468277, 44.909859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546875, 35.087589, 45.009769>,  <34.504051, 34.859177, 45.069717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546875, 35.087589, 45.009769>,  <34.618248, 35.468277, 44.909859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546875, 35.087589, 45.009769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176714, -0.218728, -0.959651,
		0.967954, -0.215370, -0.129155,
		-0.178430, -0.951721, 0.249778,
		34.493347, 34.802074, 45.084702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891708, 35.143135, 44.425140>,  <34.618248, 35.468277, 44.909859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891708, 35.143135, 44.425140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669193, 34.843723, 44.569496>,  <34.535683, 34.664078, 44.656109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669193, 34.843723, 44.569496>,  <34.891708, 35.143135, 44.425140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669193, 34.843723, 44.569496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238310, -0.272347, -0.932221,
		0.796083, -0.604590, -0.026878,
		-0.556291, -0.748530, 0.360891,
		34.502304, 34.619164, 44.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025738, 34.515240, 43.925018>,  <34.891708, 35.143135, 44.425140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025738, 34.515240, 43.925018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680241, 34.478958, 44.123299>,  <34.472942, 34.457191, 44.242268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680241, 34.478958, 44.123299>,  <35.025738, 34.515240, 43.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680241, 34.478958, 44.123299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467354, -0.223740, -0.855290,
		0.188485, -0.970419, 0.150864,
		-0.863744, -0.090702, 0.495701,
		34.421116, 34.451748, 44.272011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719124, 33.831783, 43.711792>,  <35.025738, 34.515240, 43.925018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719124, 33.831783, 43.711792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413456, 34.041546, 43.862011>,  <34.230053, 34.167404, 43.952145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413456, 34.041546, 43.862011>,  <34.719124, 33.831783, 43.711792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413456, 34.041546, 43.862011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580407, -0.305068, -0.755024,
		-0.281358, -0.794950, 0.537488,
		-0.764176, 0.524393, 0.375561,
		34.184204, 34.198868, 43.974678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224201, 33.398037, 43.587975>,  <34.719124, 33.831783, 43.711792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224201, 33.398037, 43.587975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059006, 33.760105, 43.628185>,  <33.959888, 33.977348, 43.652313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059006, 33.760105, 43.628185>,  <34.224201, 33.398037, 43.587975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059006, 33.760105, 43.628185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681985, -0.234211, -0.692850,
		-0.603604, -0.354695, 0.714040,
		-0.412986, 0.905172, 0.100527,
		33.935108, 34.031658, 43.658344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434311, 33.321415, 43.610744>,  <34.224201, 33.398037, 43.587975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434311, 33.321415, 43.610744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495686, 33.696976, 43.487507>,  <33.532509, 33.922314, 43.413563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495686, 33.696976, 43.487507>,  <33.434311, 33.321415, 43.610744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495686, 33.696976, 43.487507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621493, -0.150709, -0.768787,
		-0.768247, 0.309440, 0.560396,
		0.153437, 0.938900, -0.308096,
		33.541718, 33.978645, 43.395077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825478, 33.582233, 43.465111>,  <33.434311, 33.321415, 43.610744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825478, 33.582233, 43.465111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080109, 33.818840, 43.267170>,  <33.232887, 33.960804, 43.148407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080109, 33.818840, 43.267170>,  <32.825478, 33.582233, 43.465111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080109, 33.818840, 43.267170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567370, -0.075409, -0.820003,
		-0.522358, 0.802762, 0.287602,
		0.636579, 0.591513, -0.494853,
		33.271084, 33.996292, 43.118713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353195, 34.020462, 43.054596>,  <32.825478, 33.582233, 43.465111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353195, 34.020462, 43.054596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719398, 34.040787, 42.894962>,  <32.939121, 34.052982, 42.799183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719398, 34.040787, 42.894962>,  <32.353195, 34.020462, 43.054596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719398, 34.040787, 42.894962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399418, -0.003846, -0.916761,
		-0.048116, 0.998701, 0.016774,
		0.915505, 0.050811, -0.399084,
		32.994049, 34.056030, 42.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232124, 34.531590, 42.446564>,  <32.353195, 34.020462, 43.054596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232124, 34.531590, 42.446564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566906, 34.318287, 42.397346>,  <32.767776, 34.190304, 42.367817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566906, 34.318287, 42.397346>,  <32.232124, 34.531590, 42.446564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566906, 34.318287, 42.397346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210106, -0.105484, -0.971972,
		0.505335, 0.839349, -0.200326,
		0.836954, -0.533261, -0.123047,
		32.817993, 34.158310, 42.360432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583557, 34.857697, 41.967918>,  <32.232124, 34.531590, 42.446564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583557, 34.857697, 41.967918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681133, 34.469959, 41.979649>,  <32.739681, 34.237316, 41.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681133, 34.469959, 41.979649>,  <32.583557, 34.857697, 41.967918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681133, 34.469959, 41.979649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339492, -0.113680, -0.933714,
		0.908426, 0.217818, -0.356816,
		0.243943, -0.969346, 0.029323,
		32.754314, 34.179153, 41.988445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835155, 34.783787, 41.340626>,  <32.583557, 34.857697, 41.967918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835155, 34.783787, 41.340626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775078, 34.404598, 41.452908>,  <32.739029, 34.177086, 41.520279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775078, 34.404598, 41.452908>,  <32.835155, 34.783787, 41.340626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775078, 34.404598, 41.452908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310557, -0.224320, -0.923707,
		0.938614, -0.225913, -0.260706,
		-0.150196, -0.947968, 0.280709,
		32.730019, 34.120209, 41.537121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128498, 34.433960, 40.884037>,  <32.835155, 34.783787, 41.340626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128498, 34.433960, 40.884037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881786, 34.154945, 41.029926>,  <32.733761, 33.987537, 41.117462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881786, 34.154945, 41.029926>,  <33.128498, 34.433960, 40.884037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881786, 34.154945, 41.029926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255439, -0.260908, -0.930955,
		0.744535, -0.667360, -0.017255,
		-0.616780, -0.697536, 0.364725,
		32.696751, 33.945683, 41.139343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221523, 33.910324, 40.485256>,  <33.128498, 34.433960, 40.884037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221523, 33.910324, 40.485256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864754, 33.766857, 40.595406>,  <32.650692, 33.680779, 40.661495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864754, 33.766857, 40.595406>,  <33.221523, 33.910324, 40.485256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864754, 33.766857, 40.595406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217010, -0.194750, -0.956545,
		0.396707, -0.912925, 0.095869,
		-0.891925, -0.358664, 0.275372,
		32.597176, 33.659260, 40.678017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141312, 33.257523, 40.178509>,  <33.221523, 33.910324, 40.485256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141312, 33.257523, 40.178509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760868, 33.346638, 40.264080>,  <32.532604, 33.400108, 40.315422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760868, 33.346638, 40.264080>,  <33.141312, 33.257523, 40.178509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760868, 33.346638, 40.264080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253466, -0.167190, -0.952787,
		-0.176533, -0.960416, 0.215491,
		-0.951100, 0.222818, 0.213918,
		32.475536, 33.413475, 40.328259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686790, 32.652504, 39.943890>,  <33.141312, 33.257523, 40.178509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686790, 32.652504, 39.943890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443184, 32.969467, 39.957710>,  <32.297020, 33.159645, 39.966003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443184, 32.969467, 39.957710>,  <32.686790, 32.652504, 39.943890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443184, 32.969467, 39.957710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313539, -0.200499, -0.928167,
		-0.728559, -0.576098, 0.370557,
		-0.609011, 0.792408, 0.034554,
		32.260479, 33.207191, 39.968075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115273, 32.444820, 39.410416>,  <32.686790, 32.652504, 39.943890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115273, 32.444820, 39.410416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036526, 32.828083, 39.493546>,  <31.989279, 33.058041, 39.543423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036526, 32.828083, 39.493546>,  <32.115273, 32.444820, 39.410416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036526, 32.828083, 39.493546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179072, 0.173265, -0.968459,
		-0.963939, -0.227868, 0.137468,
		-0.196863, 0.958152, 0.207821,
		31.977467, 33.115528, 39.555893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462933, 32.622124, 39.101814>,  <32.115273, 32.444820, 39.410416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462933, 32.622124, 39.101814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704031, 32.941273, 39.105839>,  <31.848690, 33.132763, 39.108253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704031, 32.941273, 39.105839>,  <31.462933, 32.622124, 39.101814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704031, 32.941273, 39.105839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169510, 0.140362, -0.975482,
		-0.779718, 0.586264, 0.219850,
		0.602748, 0.797868, 0.010066,
		31.884855, 33.180634, 39.108860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183308, 33.083115, 38.653122>,  <31.462933, 32.622124, 39.101814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183308, 33.083115, 38.653122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556862, 33.222820, 38.683769>,  <31.780994, 33.306644, 38.702156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556862, 33.222820, 38.683769>,  <31.183308, 33.083115, 38.653122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556862, 33.222820, 38.683769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040741, 0.108940, -0.993213,
		-0.355244, 0.930669, 0.087508,
		0.933885, 0.349267, 0.076617,
		31.837027, 33.327602, 38.706753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250343, 33.801922, 38.370544>,  <31.183308, 33.083115, 38.653122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250343, 33.801922, 38.370544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621691, 33.653271, 38.372551>,  <31.844500, 33.564079, 38.373756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621691, 33.653271, 38.372551>,  <31.250343, 33.801922, 38.370544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621691, 33.653271, 38.372551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127397, 0.305509, -0.943628,
		0.349146, 0.876674, 0.330969,
		0.928368, -0.371628, 0.005019,
		31.900202, 33.541782, 38.374058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649282, 34.359810, 38.100941>,  <31.250343, 33.801922, 38.370544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649282, 34.359810, 38.100941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881887, 34.035164, 38.078606>,  <32.021450, 33.840374, 38.065205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881887, 34.035164, 38.078606>,  <31.649282, 34.359810, 38.100941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881887, 34.035164, 38.078606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307473, 0.282807, -0.908560,
		0.753195, 0.511171, 0.414007,
		0.581514, -0.811618, -0.055837,
		32.056343, 33.791679, 38.061855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352371, 34.582092, 37.820084>,  <31.649282, 34.359810, 38.100941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352371, 34.582092, 37.820084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275990, 34.195477, 37.751579>,  <32.230160, 33.963505, 37.710476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275990, 34.195477, 37.751579>,  <32.352371, 34.582092, 37.820084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275990, 34.195477, 37.751579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262296, 0.117880, -0.957761,
		0.945905, -0.227812, 0.231010,
		-0.190958, -0.966543, -0.171257,
		32.218700, 33.905514, 37.700203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741341, 34.566154, 37.258438>,  <32.352371, 34.582092, 37.820084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741341, 34.566154, 37.258438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536625, 34.223267, 37.235653>,  <32.413795, 34.017532, 37.221981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536625, 34.223267, 37.235653>,  <32.741341, 34.566154, 37.258438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536625, 34.223267, 37.235653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026648, 0.050428, -0.998372,
		0.858696, -0.512477, -0.002966,
		-0.511792, -0.857219, -0.056959,
		32.383087, 33.966103, 37.218567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104332, 34.154915, 36.814281>,  <32.741341, 34.566154, 37.258438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104332, 34.154915, 36.814281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717529, 34.054420, 36.831173>,  <32.485447, 33.994125, 36.841309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717529, 34.054420, 36.831173>,  <33.104332, 34.154915, 36.814281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717529, 34.054420, 36.831173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067696, 0.093602, -0.993306,
		0.245599, -0.963390, -0.107521,
		-0.967004, -0.251234, 0.042229,
		32.427429, 33.979050, 36.843842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725769, 33.955753, 36.910328>,  <33.104332, 34.154915, 36.814281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725769, 33.955753, 36.910328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030209, 33.774223, 36.724957>,  <34.212872, 33.665306, 36.613735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030209, 33.774223, 36.724957>,  <33.725769, 33.955753, 36.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030209, 33.774223, 36.724957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226982, -0.482948, 0.845719,
		-0.607620, -0.748869, -0.264563,
		0.761102, -0.453825, -0.463428,
		34.258541, 33.638077, 36.585930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837868, 33.349045, 37.176823>,  <33.725769, 33.955753, 36.910328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837868, 33.349045, 37.176823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203140, 33.426567, 37.033413>,  <34.422302, 33.473080, 36.947369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203140, 33.426567, 37.033413>,  <33.837868, 33.349045, 37.176823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203140, 33.426567, 37.033413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406249, -0.503128, 0.762774,
		-0.032553, -0.842201, -0.538181,
		0.913182, 0.193804, -0.358522,
		34.477097, 33.484707, 36.925858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247520, 32.779655, 37.369637>,  <33.837868, 33.349045, 37.176823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247520, 32.779655, 37.369637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506603, 33.077591, 37.305523>,  <34.662052, 33.256351, 37.267056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506603, 33.077591, 37.305523>,  <34.247520, 32.779655, 37.369637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506603, 33.077591, 37.305523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490646, -0.246833, 0.835667,
		0.582877, -0.619908, -0.525328,
		0.647705, 0.744841, -0.160282,
		34.700916, 33.301044, 37.257439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886242, 32.514210, 37.621635>,  <34.247520, 32.779655, 37.369637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886242, 32.514210, 37.621635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959286, 32.907085, 37.603924>,  <35.003113, 33.142811, 37.593296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959286, 32.907085, 37.603924>,  <34.886242, 32.514210, 37.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959286, 32.907085, 37.603924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616347, -0.079273, 0.783475,
		0.766010, -0.170359, -0.619844,
		0.182608, 0.982188, -0.044276,
		35.014069, 33.201740, 37.590641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604305, 32.483086, 37.884621>,  <34.886242, 32.514210, 37.621635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604305, 32.483086, 37.884621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472187, 32.860298, 37.900612>,  <35.392918, 33.086624, 37.910206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472187, 32.860298, 37.900612>,  <35.604305, 32.483086, 37.884621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472187, 32.860298, 37.900612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527103, 0.149153, 0.836609,
		0.782986, 0.297401, -0.546339,
		-0.330296, 0.943030, 0.039976,
		35.373096, 33.143208, 37.912605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180916, 32.911289, 38.212708>,  <35.604305, 32.483086, 37.884621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180916, 32.911289, 38.212708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871563, 33.164478, 38.226715>,  <35.685951, 33.316391, 38.235119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871563, 33.164478, 38.226715>,  <36.180916, 32.911289, 38.212708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871563, 33.164478, 38.226715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311772, 0.331666, 0.890391,
		0.551979, 0.699529, -0.453848,
		-0.773380, 0.632974, 0.035021,
		35.639549, 33.354370, 38.237221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475643, 33.566219, 38.437225>,  <36.180916, 32.911289, 38.212708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475643, 33.566219, 38.437225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084400, 33.580162, 38.519283>,  <35.849655, 33.588528, 38.568520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084400, 33.580162, 38.519283>,  <36.475643, 33.566219, 38.437225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084400, 33.580162, 38.519283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204602, 0.340849, 0.917584,
		-0.037937, 0.939471, -0.340520,
		-0.978110, 0.034861, 0.205148,
		35.790966, 33.590622, 38.580830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225502, 34.329224, 38.634636>,  <36.475643, 33.566219, 38.437225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225502, 34.329224, 38.634636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981525, 34.052288, 38.788845>,  <35.835140, 33.886127, 38.881371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981525, 34.052288, 38.788845>,  <36.225502, 34.329224, 38.634636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981525, 34.052288, 38.788845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239454, 0.302732, 0.922505,
		-0.755401, 0.654992, -0.018865,
		-0.609944, -0.692343, 0.385525,
		35.798542, 33.844585, 38.904503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024788, 34.643101, 39.268730>,  <36.225502, 34.329224, 38.634636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024788, 34.643101, 39.268730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928585, 34.258366, 39.320934>,  <35.870861, 34.027527, 39.352257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928585, 34.258366, 39.320934>,  <36.024788, 34.643101, 39.268730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928585, 34.258366, 39.320934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141418, 0.098297, 0.985058,
		-0.960290, 0.255371, 0.112379,
		-0.240509, -0.961833, 0.130508,
		35.856434, 33.969814, 39.360088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578270, 34.553455, 39.941078>,  <36.024788, 34.643101, 39.268730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578270, 34.553455, 39.941078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740829, 34.200100, 39.847729>,  <35.838367, 33.988087, 39.791718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740829, 34.200100, 39.847729>,  <35.578270, 34.553455, 39.941078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740829, 34.200100, 39.847729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223350, -0.151623, 0.962873,
		-0.885976, -0.443437, 0.135686,
		0.406400, -0.883388, -0.233376,
		35.862751, 33.935085, 39.777718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388721, 34.193935, 40.445744>,  <35.578270, 34.553455, 39.941078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388721, 34.193935, 40.445744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715542, 34.009361, 40.307465>,  <35.911633, 33.898617, 40.224499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715542, 34.009361, 40.307465>,  <35.388721, 34.193935, 40.445744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715542, 34.009361, 40.307465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374614, -0.030914, 0.926665,
		-0.438287, -0.886633, 0.147604,
		0.817049, -0.461440, -0.345694,
		35.960655, 33.870930, 40.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503876, 33.594204, 40.811680>,  <35.388721, 34.193935, 40.445744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503876, 33.594204, 40.811680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869621, 33.683987, 40.676891>,  <36.089069, 33.737858, 40.596016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869621, 33.683987, 40.676891>,  <35.503876, 33.594204, 40.811680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869621, 33.683987, 40.676891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357643, -0.057601, 0.932080,
		0.189803, -0.972780, -0.132944,
		0.914367, 0.224458, -0.336975,
		36.143932, 33.751324, 40.575798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921978, 33.086136, 41.107819>,  <35.503876, 33.594204, 40.811680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921978, 33.086136, 41.107819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167263, 33.380589, 40.993225>,  <36.314434, 33.557262, 40.924469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167263, 33.380589, 40.993225>,  <35.921978, 33.086136, 41.107819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167263, 33.380589, 40.993225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544179, -0.130805, 0.828709,
		0.572568, -0.664076, -0.480801,
		0.613217, 0.736134, -0.286481,
		36.351227, 33.601429, 40.907280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622021, 32.967319, 41.329781>,  <35.921978, 33.086136, 41.107819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622021, 32.967319, 41.329781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650002, 33.365868, 41.310364>,  <36.666790, 33.604996, 41.298714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650002, 33.365868, 41.310364>,  <36.622021, 32.967319, 41.329781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650002, 33.365868, 41.310364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544288, 0.002656, 0.838894,
		0.835977, -0.085099, -0.542126,
		0.069949, 0.996369, -0.048538,
		36.670986, 33.664780, 41.295803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296707, 33.058960, 41.606552>,  <36.622021, 32.967319, 41.329781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296707, 33.058960, 41.606552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105209, 33.409386, 41.629581>,  <36.990311, 33.619640, 41.643398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105209, 33.409386, 41.629581>,  <37.296707, 33.058960, 41.606552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105209, 33.409386, 41.629581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294147, 0.098263, 0.950696,
		0.827215, 0.472073, -0.304735,
		-0.478742, 0.876066, 0.057574,
		36.961586, 33.672207, 41.646854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745251, 33.516640, 41.955059>,  <37.296707, 33.058960, 41.606552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745251, 33.516640, 41.955059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371746, 33.654892, 41.992233>,  <37.147644, 33.737843, 42.014538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371746, 33.654892, 41.992233>,  <37.745251, 33.516640, 41.955059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371746, 33.654892, 41.992233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146010, 0.130784, 0.980600,
		0.326767, 0.929213, -0.172585,
		-0.933758, 0.345627, 0.092938,
		37.091618, 33.758579, 42.020115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745182, 34.166130, 42.360191>,  <37.745251, 33.516640, 41.955059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745182, 34.166130, 42.360191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362591, 34.068031, 42.423454>,  <37.133038, 34.009171, 42.461411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362591, 34.068031, 42.423454>,  <37.745182, 34.166130, 42.360191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362591, 34.068031, 42.423454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096141, 0.246883, 0.964264,
		-0.275527, 0.937499, -0.212559,
		-0.956474, -0.245246, 0.158155,
		37.075649, 33.994457, 42.470901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406944, 34.764065, 42.624840>,  <37.745182, 34.166130, 42.360191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406944, 34.764065, 42.624840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142521, 34.477200, 42.713093>,  <36.983868, 34.305080, 42.766045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142521, 34.477200, 42.713093>,  <37.406944, 34.764065, 42.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142521, 34.477200, 42.713093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041420, 0.328474, 0.943604,
		-0.749188, 0.614641, -0.246846,
		-0.661061, -0.717162, 0.220630,
		36.944202, 34.262051, 42.779282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990376, 35.180309, 42.985340>,  <37.406944, 34.764065, 42.624840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990376, 35.180309, 42.985340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913342, 34.796131, 43.065788>,  <36.867123, 34.565624, 43.114056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913342, 34.796131, 43.065788>,  <36.990376, 35.180309, 42.985340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913342, 34.796131, 43.065788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219271, 0.241892, 0.945203,
		-0.956469, 0.137930, -0.257183,
		-0.192582, -0.960450, 0.201118,
		36.855568, 34.507996, 43.126125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401436, 35.185200, 43.372364>,  <36.990376, 35.180309, 42.985340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401436, 35.185200, 43.372364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572659, 34.836887, 43.469116>,  <36.675392, 34.627899, 43.527168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572659, 34.836887, 43.469116>,  <36.401436, 35.185200, 43.372364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572659, 34.836887, 43.469116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156011, 0.192422, 0.968832,
		-0.890183, -0.452453, -0.053484,
		0.428059, -0.870781, 0.241878,
		36.701077, 34.575653, 43.541679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946911, 34.916718, 43.831852>,  <36.401436, 35.185200, 43.372364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946911, 34.916718, 43.831852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294342, 34.726746, 43.888428>,  <36.502800, 34.612762, 43.922375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294342, 34.726746, 43.888428>,  <35.946911, 34.916718, 43.831852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294342, 34.726746, 43.888428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148712, 0.022450, 0.988626,
		-0.472705, -0.879736, -0.051128,
		0.868582, -0.474932, 0.141439,
		36.554916, 34.584267, 43.930859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780407, 34.405838, 44.385864>,  <35.946911, 34.916718, 43.831852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780407, 34.405838, 44.385864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176311, 34.458813, 44.364548>,  <36.413853, 34.490597, 44.351757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176311, 34.458813, 44.364548>,  <35.780407, 34.405838, 44.385864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176311, 34.458813, 44.364548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065017, -0.085826, 0.994186,
		0.127090, -0.987469, -0.093558,
		0.989758, 0.132434, -0.053295,
		36.473240, 34.498543, 44.348560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072178, 33.946220, 44.908279>,  <35.780407, 34.405838, 44.385864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072178, 33.946220, 44.908279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393173, 34.172436, 44.832188>,  <36.585770, 34.308163, 44.786533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393173, 34.172436, 44.832188>,  <36.072178, 33.946220, 44.908279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393173, 34.172436, 44.832188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168786, 0.090642, 0.981476,
		0.572302, -0.819728, -0.022716,
		0.802484, 0.565535, -0.190233,
		36.633919, 34.342094, 44.775116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527908, 33.730457, 45.412067>,  <36.072178, 33.946220, 44.908279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527908, 33.730457, 45.412067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676624, 34.081657, 45.291477>,  <36.765854, 34.292377, 45.219124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676624, 34.081657, 45.291477>,  <36.527908, 33.730457, 45.412067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676624, 34.081657, 45.291477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205459, 0.238870, 0.949067,
		0.905295, -0.414794, -0.091584,
		0.371791, 0.878002, -0.301471,
		36.788162, 34.345058, 45.201035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132019, 33.769424, 45.813423>,  <36.527908, 33.730457, 45.412067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132019, 33.769424, 45.813423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059784, 34.144890, 45.695919>,  <37.016441, 34.370171, 45.625416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059784, 34.144890, 45.695919>,  <37.132019, 33.769424, 45.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059784, 34.144890, 45.695919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252124, 0.332873, 0.908641,
		0.950695, 0.090024, -0.296773,
		-0.180587, 0.938665, -0.293764,
		37.005608, 34.426491, 45.607788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822197, 34.207142, 45.766487>,  <37.132019, 33.769424, 45.813423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822197, 34.207142, 45.766487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503605, 34.442959, 45.820259>,  <37.312450, 34.584450, 45.852520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503605, 34.442959, 45.820259>,  <37.822197, 34.207142, 45.766487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503605, 34.442959, 45.820259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393141, 0.335980, 0.855896,
		0.459419, 0.734549, -0.499372,
		-0.796476, 0.589538, 0.134426,
		37.264664, 34.619820, 45.860588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111340, 34.837814, 45.935070>,  <37.822197, 34.207142, 45.766487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111340, 34.837814, 45.935070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729221, 34.847061, 46.052971>,  <37.499950, 34.852608, 46.123711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729221, 34.847061, 46.052971>,  <38.111340, 34.837814, 45.935070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729221, 34.847061, 46.052971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256456, 0.560847, 0.787198,
		-0.147115, 0.827597, -0.541701,
		-0.955294, 0.023114, 0.294752,
		37.442635, 34.853996, 46.141396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983116, 35.551674, 46.108299>,  <38.111340, 34.837814, 45.935070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983116, 35.551674, 46.108299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725574, 35.351875, 46.340145>,  <37.571049, 35.231998, 46.479252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725574, 35.351875, 46.340145>,  <37.983116, 35.551674, 46.108299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725574, 35.351875, 46.340145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178899, 0.638255, 0.748749,
		-0.743940, 0.585779, -0.321584,
		-0.643854, -0.499493, 0.579619,
		37.532417, 35.202026, 46.514030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629421, 36.064053, 46.419868>,  <37.983116, 35.551674, 46.108299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629421, 36.064053, 46.419868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567726, 35.741905, 46.648811>,  <37.530708, 35.548618, 46.786179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567726, 35.741905, 46.648811>,  <37.629421, 36.064053, 46.419868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567726, 35.741905, 46.648811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160514, 0.551167, 0.818810,
		-0.974908, 0.218165, 0.044260,
		-0.154241, -0.805368, 0.572356,
		37.521454, 35.500294, 46.820518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259956, 36.261467, 46.930195>,  <37.629421, 36.064053, 46.419868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259956, 36.261467, 46.930195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430592, 35.932392, 47.080509>,  <37.532970, 35.734947, 47.170700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430592, 35.932392, 47.080509>,  <37.259956, 36.261467, 46.930195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430592, 35.932392, 47.080509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006567, 0.418295, 0.908287,
		-0.904424, -0.384994, 0.183841,
		0.426585, -0.822684, 0.375788,
		37.558567, 35.685589, 47.193245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921162, 36.243816, 47.490692>,  <37.259956, 36.261467, 46.930195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921162, 36.243816, 47.490692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224571, 35.990849, 47.553528>,  <37.406616, 35.839066, 47.591228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224571, 35.990849, 47.553528>,  <36.921162, 36.243816, 47.490692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224571, 35.990849, 47.553528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016485, 0.259615, 0.965572,
		-0.651433, -0.729823, 0.207350,
		0.758527, -0.632423, 0.157091,
		37.452129, 35.801121, 47.600655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666977, 36.012554, 48.114475>,  <36.921162, 36.243816, 47.490692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666977, 36.012554, 48.114475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054230, 35.915943, 48.088001>,  <37.286583, 35.857975, 48.072117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054230, 35.915943, 48.088001>,  <36.666977, 36.012554, 48.114475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054230, 35.915943, 48.088001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096585, 0.116289, 0.988508,
		-0.231057, -0.963400, 0.135912,
		0.968134, -0.241529, -0.066181,
		37.344669, 35.843483, 48.068146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805580, 35.443920, 48.711823>,  <36.666977, 36.012554, 48.114475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805580, 35.443920, 48.711823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117016, 35.661907, 48.587368>,  <37.303879, 35.792698, 48.512695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117016, 35.661907, 48.587368>,  <36.805580, 35.443920, 48.711823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117016, 35.661907, 48.587368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239635, 0.200041, 0.950031,
		0.579976, -0.814245, 0.025157,
		0.778590, 0.544967, -0.311140,
		37.350594, 35.825397, 48.494026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305244, 35.315273, 49.147552>,  <36.805580, 35.443920, 48.711823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305244, 35.315273, 49.147552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470551, 35.639778, 48.982109>,  <37.569736, 35.834480, 48.882843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470551, 35.639778, 48.982109>,  <37.305244, 35.315273, 49.147552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470551, 35.639778, 48.982109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236161, 0.343180, 0.909096,
		0.879453, -0.473377, -0.049763,
		0.413268, 0.811259, -0.413604,
		37.594532, 35.883156, 48.858028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079628, 35.496780, 49.389252>,  <37.305244, 35.315273, 49.147552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079628, 35.496780, 49.389252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943748, 35.831207, 49.216930>,  <37.862221, 36.031864, 49.113537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943748, 35.831207, 49.216930>,  <38.079628, 35.496780, 49.389252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943748, 35.831207, 49.216930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358567, 0.538572, 0.762477,
		0.869504, 0.104536, -0.482737,
		-0.339695, 0.836070, -0.430807,
		37.841839, 36.082027, 49.087688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590012, 35.919361, 49.476971>,  <38.079628, 35.496780, 49.389252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590012, 35.919361, 49.476971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258186, 36.134365, 49.416439>,  <38.059090, 36.263367, 49.380119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258186, 36.134365, 49.416439>,  <38.590012, 35.919361, 49.476971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258186, 36.134365, 49.416439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233603, 0.580203, 0.780253,
		0.507196, 0.611921, -0.606881,
		-0.829567, 0.537510, -0.151330,
		38.009315, 36.295620, 49.371040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778652, 36.698730, 49.361549>,  <38.590012, 35.919361, 49.476971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778652, 36.698730, 49.361549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406395, 36.660881, 49.502941>,  <38.183041, 36.638172, 49.587776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406395, 36.660881, 49.502941>,  <38.778652, 36.698730, 49.361549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406395, 36.660881, 49.502941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163267, 0.757140, 0.632521,
		-0.327484, 0.646364, -0.689179,
		-0.930644, -0.094621, 0.353481,
		38.127201, 36.632496, 49.608986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422127, 37.225353, 49.139980>,  <38.778652, 36.698730, 49.361549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422127, 37.225353, 49.139980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357288, 37.080040, 49.506969>,  <38.318386, 36.992851, 49.727161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357288, 37.080040, 49.506969>,  <38.422127, 37.225353, 49.139980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357288, 37.080040, 49.506969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576846, 0.719469, 0.386799,
		-0.800608, 0.591938, 0.092932,
		-0.162099, -0.363282, 0.917469,
		38.308659, 36.971054, 49.782211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030842, 37.743309, 49.480511>,  <38.422127, 37.225353, 49.139980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030842, 37.743309, 49.480511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261703, 38.067558, 49.440948>,  <38.400219, 38.262108, 49.417213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261703, 38.067558, 49.440948>,  <38.030842, 37.743309, 49.480511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261703, 38.067558, 49.440948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194451, -0.254042, -0.947445,
		-0.793146, 0.527592, -0.304249,
		0.577156, 0.810623, -0.098902,
		38.434849, 38.310745, 49.411278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866825, 38.074337, 48.933800>,  <38.030842, 37.743309, 49.480511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866825, 38.074337, 48.933800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252522, 38.170937, 48.977459>,  <38.483940, 38.228897, 49.003654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252522, 38.170937, 48.977459>,  <37.866825, 38.074337, 48.933800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252522, 38.170937, 48.977459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157258, -0.189863, -0.969135,
		-0.213319, 0.951647, -0.221052,
		0.964243, 0.241497, 0.109152,
		38.541794, 38.243385, 49.010204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963306, 38.677399, 48.459293>,  <37.866825, 38.074337, 48.933800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963306, 38.677399, 48.459293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318970, 38.506023, 48.523582>,  <38.532368, 38.403198, 48.562157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318970, 38.506023, 48.523582>,  <37.963306, 38.677399, 48.459293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318970, 38.506023, 48.523582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104433, -0.151966, -0.982853,
		0.445516, 0.890700, -0.090380,
		0.889162, -0.428439, 0.160722,
		38.585720, 38.377491, 48.571800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298042, 38.838661, 47.853096>,  <37.963306, 38.677399, 48.459293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298042, 38.838661, 47.853096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552368, 38.573452, 48.011158>,  <38.704964, 38.414326, 48.105995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552368, 38.573452, 48.011158>,  <38.298042, 38.838661, 47.853096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552368, 38.573452, 48.011158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322050, -0.237375, -0.916481,
		0.701447, 0.709967, 0.062602,
		0.635811, -0.663024, 0.395151,
		38.743111, 38.374546, 48.129704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849266, 39.009167, 47.476662>,  <38.298042, 38.838661, 47.853096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849266, 39.009167, 47.476662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868481, 38.636425, 47.620518>,  <38.880009, 38.412781, 47.706833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868481, 38.636425, 47.620518>,  <38.849266, 39.009167, 47.476662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868481, 38.636425, 47.620518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307539, -0.328768, -0.892934,
		0.950322, 0.153494, 0.270790,
		0.048033, -0.931854, 0.359640,
		38.882889, 38.356869, 47.728409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361210, 38.787708, 47.196667>,  <38.849266, 39.009167, 47.476662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361210, 38.787708, 47.196667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172604, 38.447388, 47.289452>,  <39.059441, 38.243195, 47.345123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172604, 38.447388, 47.289452>,  <39.361210, 38.787708, 47.196667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172604, 38.447388, 47.289452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246443, -0.379687, -0.891686,
		0.846725, -0.363275, 0.388702,
		-0.471512, -0.850805, 0.231964,
		39.031151, 38.192146, 47.359039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778095, 38.338020, 46.995667>,  <39.361210, 38.787708, 47.196667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778095, 38.338020, 46.995667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442181, 38.121880, 47.016747>,  <39.240631, 37.992195, 47.029396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442181, 38.121880, 47.016747>,  <39.778095, 38.338020, 46.995667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442181, 38.121880, 47.016747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230813, -0.443202, -0.866197,
		0.491412, -0.715255, 0.496915,
		-0.839785, -0.540354, 0.052705,
		39.190247, 37.959774, 47.032558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979549, 37.773304, 46.662605>,  <39.778095, 38.338020, 46.995667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979549, 37.773304, 46.662605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580723, 37.743652, 46.655018>,  <39.341427, 37.725861, 46.650467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580723, 37.743652, 46.655018>,  <39.979549, 37.773304, 46.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580723, 37.743652, 46.655018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052754, -0.486428, -0.872127,
		0.055422, -0.870571, 0.488912,
		-0.997068, -0.074127, -0.018967,
		39.281601, 37.721413, 46.649326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861885, 37.084751, 46.423439>,  <39.979549, 37.773304, 46.662605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861885, 37.084751, 46.423439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531944, 37.300571, 46.355907>,  <39.333981, 37.430065, 46.315388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531944, 37.300571, 46.355907>,  <39.861885, 37.084751, 46.423439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531944, 37.300571, 46.355907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047957, -0.364333, -0.930033,
		-0.563309, -0.759044, 0.326396,
		-0.824853, 0.539550, -0.168830,
		39.284489, 37.462437, 46.305260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331043, 36.637909, 46.377892>,  <39.861885, 37.084751, 46.423439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331043, 36.637909, 46.377892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221256, 36.972485, 46.188141>,  <39.155384, 37.173229, 46.074291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221256, 36.972485, 46.188141>,  <39.331043, 36.637909, 46.377892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221256, 36.972485, 46.188141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205902, -0.532999, -0.820680,
		-0.939294, -0.127574, 0.318515,
		-0.274465, 0.836443, -0.474375,
		39.138916, 37.223419, 46.045830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909103, 36.426201, 45.868824>,  <39.331043, 36.637909, 46.377892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909103, 36.426201, 45.868824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935379, 36.809204, 45.756489>,  <38.951145, 37.039005, 45.689087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935379, 36.809204, 45.756489>,  <38.909103, 36.426201, 45.868824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935379, 36.809204, 45.756489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324504, -0.245644, -0.913431,
		-0.943600, 0.151138, 0.294577,
		0.065693, 0.957505, -0.280834,
		38.955086, 37.096455, 45.672237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253735, 36.699429, 45.607800>,  <38.909103, 36.426201, 45.868824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253735, 36.699429, 45.607800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547668, 36.921665, 45.452198>,  <38.724030, 37.055008, 45.358837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547668, 36.921665, 45.452198>,  <38.253735, 36.699429, 45.607800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547668, 36.921665, 45.452198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327799, -0.211188, -0.920840,
		-0.593767, 0.804186, 0.026933,
		0.734839, 0.555593, -0.389008,
		38.768120, 37.088345, 45.335495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859253, 37.108746, 45.032757>,  <38.253735, 36.699429, 45.607800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859253, 37.108746, 45.032757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252197, 37.062683, 44.973839>,  <38.487965, 37.035046, 44.938488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252197, 37.062683, 44.973839>,  <37.859253, 37.108746, 45.032757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252197, 37.062683, 44.973839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181323, -0.394581, -0.900793,
		0.045614, 0.911616, -0.408504,
		0.982365, -0.115160, -0.147299,
		38.546906, 37.028133, 44.929649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091766, 37.505020, 44.392704>,  <37.859253, 37.108746, 45.032757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091766, 37.505020, 44.392704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363445, 37.216652, 44.447777>,  <38.526455, 37.043633, 44.480820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363445, 37.216652, 44.447777>,  <38.091766, 37.505020, 44.392704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363445, 37.216652, 44.447777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037094, -0.221068, -0.974553,
		0.733013, 0.656811, -0.176892,
		0.679202, -0.720922, 0.137683,
		38.567207, 37.000374, 44.489082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510468, 37.651058, 43.797039>,  <38.091766, 37.505020, 44.392704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510468, 37.651058, 43.797039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574734, 37.279140, 43.929508>,  <38.613293, 37.055992, 44.008987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574734, 37.279140, 43.929508>,  <38.510468, 37.651058, 43.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574734, 37.279140, 43.929508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064012, -0.344638, -0.936550,
		0.984930, 0.129276, -0.114891,
		0.160669, -0.929791, 0.331169,
		38.622936, 37.000202, 44.028858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034679, 37.442429, 43.369465>,  <38.510468, 37.651058, 43.797039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034679, 37.442429, 43.369465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875397, 37.097000, 43.493195>,  <38.779827, 36.889744, 43.567432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875397, 37.097000, 43.493195>,  <39.034679, 37.442429, 43.369465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875397, 37.097000, 43.493195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009347, -0.341015, -0.940011,
		0.917247, -0.371431, 0.143867,
		-0.398210, -0.863567, 0.309323,
		38.755936, 36.837929, 43.585991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425884, 36.940197, 43.066952>,  <39.034679, 37.442429, 43.369465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425884, 36.940197, 43.066952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082634, 36.755356, 43.156475>,  <38.876686, 36.644451, 43.210190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082634, 36.755356, 43.156475>,  <39.425884, 36.940197, 43.066952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082634, 36.755356, 43.156475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010299, -0.420309, -0.907322,
		0.513344, -0.780897, 0.355917,
		-0.858121, -0.462103, 0.223806,
		38.825199, 36.616726, 43.223618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474487, 36.178345, 42.999744>,  <39.425884, 36.940197, 43.066952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474487, 36.178345, 42.999744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087711, 36.275669, 42.969223>,  <38.855644, 36.334064, 42.950909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087711, 36.275669, 42.969223>,  <39.474487, 36.178345, 42.999744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087711, 36.275669, 42.969223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079320, -0.571401, -0.816829,
		-0.242344, -0.783774, 0.571811,
		-0.966942, 0.243310, -0.076307,
		38.797630, 36.348663, 42.946331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222675, 35.559120, 42.786129>,  <39.474487, 36.178345, 42.999744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222675, 35.559120, 42.786129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940804, 35.833954, 42.715309>,  <38.771683, 35.998856, 42.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940804, 35.833954, 42.715309>,  <39.222675, 35.559120, 42.786129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940804, 35.833954, 42.715309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116088, -0.357814, -0.926549,
		-0.699969, -0.632362, 0.331905,
		-0.704674, 0.687086, -0.177049,
		38.729401, 36.040081, 42.662193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779167, 35.209980, 42.417332>,  <39.222675, 35.559120, 42.786129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779167, 35.209980, 42.417332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649586, 35.581646, 42.346100>,  <38.571838, 35.804646, 42.303360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649586, 35.581646, 42.346100>,  <38.779167, 35.209980, 42.417332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649586, 35.581646, 42.346100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204954, -0.252686, -0.945591,
		-0.923605, -0.269831, 0.272295,
		-0.323955, 0.929162, -0.178080,
		38.552399, 35.860394, 42.292675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086140, 35.134701, 42.075279>,  <38.779167, 35.209980, 42.417332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086140, 35.134701, 42.075279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241261, 35.487286, 41.967472>,  <38.334332, 35.698837, 41.902786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241261, 35.487286, 41.967472>,  <38.086140, 35.134701, 42.075279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241261, 35.487286, 41.967472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206897, -0.201698, -0.957346,
		-0.898222, 0.427024, 0.104152,
		0.387802, 0.881458, -0.269520,
		38.357601, 35.751724, 41.886616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579037, 35.311863, 41.550999>,  <38.086140, 35.134701, 42.075279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579037, 35.311863, 41.550999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926701, 35.506878, 41.517857>,  <38.135300, 35.623886, 41.497971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926701, 35.506878, 41.517857>,  <37.579037, 35.311863, 41.550999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926701, 35.506878, 41.517857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050865, -0.078527, -0.995614,
		-0.491910, 0.869561, -0.043453,
		0.869159, 0.487542, -0.082858,
		38.187447, 35.653141, 41.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414993, 35.948605, 40.985622>,  <37.579037, 35.311863, 41.550999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414993, 35.948605, 40.985622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808098, 35.886017, 41.025002>,  <38.043961, 35.848465, 41.048630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808098, 35.886017, 41.025002>,  <37.414993, 35.948605, 40.985622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808098, 35.886017, 41.025002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096526, -0.019857, -0.995132,
		0.157667, 0.987482, -0.004410,
		0.982763, -0.156474, 0.098449,
		38.102928, 35.839073, 41.054535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635689, 36.137520, 40.364559>,  <37.414993, 35.948605, 40.985622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635689, 36.137520, 40.364559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962299, 35.961830, 40.514420>,  <38.158264, 35.856415, 40.604336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962299, 35.961830, 40.514420>,  <37.635689, 36.137520, 40.364559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962299, 35.961830, 40.514420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253307, -0.310585, -0.916173,
		0.518770, 0.842981, -0.142341,
		0.816525, -0.439227, 0.374655,
		38.207256, 35.830063, 40.626816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247433, 36.320305, 39.928898>,  <37.635689, 36.137520, 40.364559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247433, 36.320305, 39.928898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278381, 35.974899, 40.128239>,  <38.296951, 35.767654, 40.247845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278381, 35.974899, 40.128239>,  <38.247433, 36.320305, 39.928898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278381, 35.974899, 40.128239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230284, -0.470855, -0.851625,
		0.970043, 0.180654, 0.162423,
		0.077372, -0.863516, 0.498351,
		38.301594, 35.715843, 40.277744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877583, 36.039173, 39.713100>,  <38.247433, 36.320305, 39.928898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877583, 36.039173, 39.713100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679489, 35.724457, 39.860455>,  <38.560635, 35.535625, 39.948868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679489, 35.724457, 39.860455>,  <38.877583, 36.039173, 39.713100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679489, 35.724457, 39.860455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374216, -0.575872, -0.726866,
		0.784035, -0.222108, 0.579618,
		-0.495229, -0.786790, 0.368388,
		38.530922, 35.488419, 39.970970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303978, 35.587704, 39.901028>,  <38.877583, 36.039173, 39.713100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303978, 35.587704, 39.901028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972530, 35.369278, 39.851692>,  <38.773663, 35.238224, 39.822090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972530, 35.369278, 39.851692>,  <39.303978, 35.587704, 39.901028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972530, 35.369278, 39.851692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406438, -0.435306, -0.803316,
		0.384973, -0.715768, 0.582642,
		-0.828616, -0.546063, -0.123334,
		38.723946, 35.205460, 39.814693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518295, 34.868759, 39.875839>,  <39.303978, 35.587704, 39.901028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518295, 34.868759, 39.875839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157383, 34.914349, 39.709511>,  <38.940838, 34.941700, 39.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157383, 34.914349, 39.709511>,  <39.518295, 34.868759, 39.875839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157383, 34.914349, 39.709511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310973, -0.496009, -0.810723,
		-0.298646, -0.860806, 0.412097,
		-0.902278, 0.113968, -0.415819,
		38.886700, 34.948540, 39.584766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334732, 34.219952, 39.577950>,  <39.518295, 34.868759, 39.875839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334732, 34.219952, 39.577950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090851, 34.475639, 39.390480>,  <38.944523, 34.629051, 39.277996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090851, 34.475639, 39.390480>,  <39.334732, 34.219952, 39.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090851, 34.475639, 39.390480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247343, -0.408333, -0.878684,
		-0.753047, -0.651663, 0.090857,
		-0.609706, 0.639217, -0.468679,
		38.907940, 34.667404, 39.249878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055233, 33.859894, 39.051987>,  <39.334732, 34.219952, 39.577950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055233, 33.859894, 39.051987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012978, 34.239838, 38.934265>,  <38.987625, 34.467804, 38.863632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012978, 34.239838, 38.934265>,  <39.055233, 33.859894, 39.051987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012978, 34.239838, 38.934265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346849, -0.242181, -0.906115,
		-0.931953, -0.197796, -0.303874,
		-0.105634, 0.949855, -0.294307,
		38.981289, 34.524796, 38.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795227, 33.736542, 38.313358>,  <39.055233, 33.859894, 39.051987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795227, 33.736542, 38.313358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915470, 34.117641, 38.330818>,  <38.987614, 34.346302, 38.341293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915470, 34.117641, 38.330818>,  <38.795227, 33.736542, 38.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915470, 34.117641, 38.330818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286806, -0.046658, -0.956852,
		-0.909604, 0.300151, -0.287280,
		0.300604, 0.952750, 0.043645,
		39.005650, 34.403465, 38.343910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569996, 34.027622, 37.669804>,  <38.795227, 33.736542, 38.313358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569996, 34.027622, 37.669804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855019, 34.275219, 37.801929>,  <39.026031, 34.423779, 37.881207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855019, 34.275219, 37.801929>,  <38.569996, 34.027622, 37.669804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855019, 34.275219, 37.801929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450241, -0.042350, -0.891902,
		-0.538094, 0.784253, -0.308874,
		0.712557, 0.618995, 0.330315,
		39.068787, 34.460918, 37.901024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571087, 34.541370, 37.149956>,  <38.569996, 34.027622, 37.669804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571087, 34.541370, 37.149956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920856, 34.609856, 37.331535>,  <39.130718, 34.650948, 37.440483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920856, 34.609856, 37.331535>,  <38.571087, 34.541370, 37.149956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920856, 34.609856, 37.331535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454050, 0.040859, -0.890039,
		-0.170933, 0.984387, -0.042010,
		0.874426, 0.171211, 0.453945,
		39.183186, 34.661221, 37.467720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895351, 35.115032, 36.776859>,  <38.571087, 34.541370, 37.149956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895351, 35.115032, 36.776859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173992, 34.896122, 36.962437>,  <39.341175, 34.764778, 37.073784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173992, 34.896122, 36.962437>,  <38.895351, 35.115032, 36.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173992, 34.896122, 36.962437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662656, 0.242895, -0.708441,
		0.275020, 0.800934, 0.531854,
		0.696599, -0.547272, 0.463943,
		39.382973, 34.731941, 37.101620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506184, 35.586098, 36.911034>,  <38.895351, 35.115032, 36.776859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506184, 35.586098, 36.911034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630016, 35.206825, 36.882412>,  <39.704315, 34.979263, 36.865238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630016, 35.206825, 36.882412>,  <39.506184, 35.586098, 36.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630016, 35.206825, 36.882412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630153, 0.260932, -0.731315,
		0.712086, 0.181314, 0.678276,
		0.309582, -0.948177, -0.071551,
		39.722893, 34.922371, 36.860947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210667, 35.625698, 36.836716>,  <39.506184, 35.586098, 36.911034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210667, 35.625698, 36.836716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165764, 35.241173, 36.736092>,  <40.138824, 35.010460, 36.675716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165764, 35.241173, 36.736092>,  <40.210667, 35.625698, 36.836716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165764, 35.241173, 36.736092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624174, 0.128770, -0.770601,
		0.773179, -0.243522, 0.585569,
		-0.112254, -0.961309, -0.251562,
		40.132088, 34.952782, 36.660622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837738, 35.518795, 36.676430>,  <40.210667, 35.625698, 36.836716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837738, 35.518795, 36.676430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633892, 35.220211, 36.505276>,  <40.511585, 35.041061, 36.402584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633892, 35.220211, 36.505276>,  <40.837738, 35.518795, 36.676430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633892, 35.220211, 36.505276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657500, -0.017099, -0.753260,
		0.554964, -0.665209, 0.499512,
		-0.509616, -0.746462, -0.427886,
		40.481007, 34.996273, 36.376911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240280, 34.907372, 36.700954>,  <40.837738, 35.518795, 36.676430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240280, 34.907372, 36.700954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994682, 34.844181, 36.391617>,  <40.847324, 34.806267, 36.206013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994682, 34.844181, 36.391617>,  <41.240280, 34.907372, 36.700954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994682, 34.844181, 36.391617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754733, 0.169320, -0.633804,
		0.231069, -0.972817, 0.015269,
		-0.613991, -0.157977, -0.773342,
		40.810486, 34.796787, 36.159615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539349, 34.352375, 36.338909>,  <41.240280, 34.907372, 36.700954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539349, 34.352375, 36.338909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316101, 34.546467, 36.069672>,  <41.182152, 34.662922, 35.908131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316101, 34.546467, 36.069672>,  <41.539349, 34.352375, 36.338909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316101, 34.546467, 36.069672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778028, 0.024081, -0.627768,
		-0.288405, -0.874053, -0.390966,
		-0.558118, 0.485234, -0.673093,
		41.148666, 34.692036, 35.867744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866699, 34.152958, 35.708080>,  <41.539349, 34.352375, 36.338909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866699, 34.152958, 35.708080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609776, 34.438892, 35.597481>,  <41.455624, 34.610455, 35.531120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609776, 34.438892, 35.597481>,  <41.866699, 34.152958, 35.708080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609776, 34.438892, 35.597481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549154, 0.177562, -0.816640,
		-0.534671, -0.676371, -0.506606,
		-0.642306, 0.714838, -0.276495,
		41.417084, 34.653343, 35.514534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625496, 34.013706, 35.002987>,  <41.866699, 34.152958, 35.708080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625496, 34.013706, 35.002987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601788, 34.402653, 35.093311>,  <41.587563, 34.636021, 35.147507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601788, 34.402653, 35.093311>,  <41.625496, 34.013706, 35.002987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601788, 34.402653, 35.093311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473814, 0.226502, -0.850998,
		-0.878628, 0.056554, -0.474146,
		-0.059267, 0.972368, 0.225807,
		41.584007, 34.694363, 35.161053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461174, 34.304611, 34.394325>,  <41.625496, 34.013706, 35.002987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461174, 34.304611, 34.394325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642815, 34.577576, 34.623447>,  <41.751797, 34.741356, 34.760921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642815, 34.577576, 34.623447>,  <41.461174, 34.304611, 34.394325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642815, 34.577576, 34.623447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731559, 0.081382, -0.676903,
		-0.508543, 0.726424, -0.462269,
		0.454098, 0.682412, 0.572808,
		41.779045, 34.782299, 34.795288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686672, 34.978989, 34.008636>,  <41.461174, 34.304611, 34.394325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686672, 34.978989, 34.008636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910461, 34.949867, 34.338894>,  <42.044735, 34.932392, 34.537048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910461, 34.949867, 34.338894>,  <41.686672, 34.978989, 34.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910461, 34.949867, 34.338894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828639, 0.026905, -0.559136,
		0.018495, 0.996983, 0.075384,
		0.559477, -0.072808, 0.825642,
		42.078304, 34.928024, 34.586586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367863, 35.339355, 34.047726>,  <41.686672, 34.978989, 34.008636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367863, 35.339355, 34.047726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429470, 35.039185, 34.304829>,  <42.466434, 34.859081, 34.459091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429470, 35.039185, 34.304829>,  <42.367863, 35.339355, 34.047726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429470, 35.039185, 34.304829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898322, -0.164544, -0.407361,
		0.411458, 0.640140, 0.648786,
		0.154014, -0.750431, 0.642755,
		42.475674, 34.814056, 34.497654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093979, 35.297840, 34.116516>,  <42.367863, 35.339355, 34.047726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093979, 35.297840, 34.116516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916328, 34.948097, 34.194736>,  <42.809738, 34.738251, 34.241669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916328, 34.948097, 34.194736>,  <43.093979, 35.297840, 34.116516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916328, 34.948097, 34.194736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857967, -0.477928, -0.188355,
		0.258151, 0.084126, 0.962435,
		-0.444129, -0.874361, 0.195554,
		42.783089, 34.685787, 34.253403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498974, 34.976185, 34.545353>,  <43.093979, 35.297840, 34.116516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498974, 34.976185, 34.545353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305859, 34.691132, 34.341755>,  <43.189991, 34.520100, 34.219597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305859, 34.691132, 34.341755>,  <43.498974, 34.976185, 34.545353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305859, 34.691132, 34.341755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873554, -0.432928, -0.222436,
		-0.061841, -0.552020, 0.831535,
		-0.482784, -0.712634, -0.508991,
		43.161022, 34.477341, 34.189056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821045, 34.908085, 35.173374>,  <43.498974, 34.976185, 34.545353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821045, 34.908085, 35.173374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201088, 34.995258, 35.262638>,  <44.429115, 35.047562, 35.316196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201088, 34.995258, 35.262638>,  <43.821045, 34.908085, 35.173374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201088, 34.995258, 35.262638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304466, 0.492445, 0.815352,
		0.067800, -0.842616, 0.534229,
		0.950107, 0.217935, 0.223160,
		44.486118, 35.060638, 35.329586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063892, 34.603790, 35.886036>,  <43.821045, 34.908085, 35.173374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063892, 34.603790, 35.886036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260334, 34.935642, 35.779812>,  <44.378201, 35.134754, 35.716076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260334, 34.935642, 35.779812>,  <44.063892, 34.603790, 35.886036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260334, 34.935642, 35.779812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065028, 0.338927, 0.938563,
		0.868669, -0.443664, 0.220399,
		0.491106, 0.829633, -0.265565,
		44.407665, 35.184532, 35.700142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606625, 34.719776, 36.329597>,  <44.063892, 34.603790, 35.886036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606625, 34.719776, 36.329597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575111, 35.091946, 36.186428>,  <44.556206, 35.315247, 36.100525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575111, 35.091946, 36.186428>,  <44.606625, 34.719776, 36.329597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575111, 35.091946, 36.186428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162414, 0.366225, 0.916242,
		0.983573, 0.014048, -0.179964,
		-0.078779, 0.930420, -0.357928,
		44.551479, 35.371071, 36.079048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082100, 35.139492, 36.761112>,  <44.606625, 34.719776, 36.329597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082100, 35.139492, 36.761112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865067, 35.405624, 36.556004>,  <44.734844, 35.565304, 36.432938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865067, 35.405624, 36.556004>,  <45.082100, 35.139492, 36.761112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865067, 35.405624, 36.556004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077017, 0.647271, 0.758359,
		0.836461, 0.371985, -0.402443,
		-0.542588, 0.665332, -0.512768,
		44.702290, 35.605225, 36.402172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502453, 35.818134, 36.907967>,  <45.082100, 35.139492, 36.761112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502453, 35.818134, 36.907967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120529, 35.893219, 36.815788>,  <44.891376, 35.938271, 36.760479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120529, 35.893219, 36.815788>,  <45.502453, 35.818134, 36.907967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120529, 35.893219, 36.815788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029429, 0.711822, 0.701743,
		0.295764, 0.676811, -0.674129,
		-0.954808, 0.187711, -0.230449,
		44.834087, 35.949532, 36.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515808, 36.563053, 36.887463>,  <45.502453, 35.818134, 36.907967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515808, 36.563053, 36.887463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132622, 36.458519, 36.934814>,  <44.902710, 36.395798, 36.963226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132622, 36.458519, 36.934814>,  <45.515808, 36.563053, 36.887463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132622, 36.458519, 36.934814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115823, 0.729784, 0.673795,
		-0.262478, 0.631759, -0.729374,
		-0.957962, -0.261335, 0.118380,
		44.845234, 36.380119, 36.970329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248177, 37.299435, 37.059429>,  <45.515808, 36.563053, 36.887463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248177, 37.299435, 37.059429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959133, 37.036358, 37.144543>,  <44.785706, 36.878513, 37.195610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959133, 37.036358, 37.144543>,  <45.248177, 37.299435, 37.059429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959133, 37.036358, 37.144543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368357, 0.626847, 0.686568,
		-0.584931, 0.417743, -0.695231,
		-0.722613, -0.657688, 0.212783,
		44.742348, 36.839050, 37.208378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634529, 37.779125, 37.152382>,  <45.248177, 37.299435, 37.059429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634529, 37.779125, 37.152382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562187, 37.435604, 37.344109>,  <44.518780, 37.229492, 37.459145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562187, 37.435604, 37.344109>,  <44.634529, 37.779125, 37.152382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562187, 37.435604, 37.344109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283347, 0.512188, 0.810788,
		-0.941809, 0.010826, -0.335973,
		-0.180859, -0.858805, 0.479316,
		44.507931, 37.177963, 37.487904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114674, 37.910973, 37.549335>,  <44.634529, 37.779125, 37.152382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114674, 37.910973, 37.549335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206757, 37.570034, 37.737171>,  <44.262009, 37.365471, 37.849873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206757, 37.570034, 37.737171>,  <44.114674, 37.910973, 37.549335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206757, 37.570034, 37.737171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154001, 0.444558, 0.882412,
		-0.960878, -0.275457, -0.028920,
		0.230210, -0.852345, 0.469587,
		44.275818, 37.314331, 37.878048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515526, 37.719124, 38.020130>,  <44.114674, 37.910973, 37.549335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515526, 37.719124, 38.020130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866974, 37.569813, 38.139256>,  <44.077843, 37.480225, 38.210732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866974, 37.569813, 38.139256>,  <43.515526, 37.719124, 38.020130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866974, 37.569813, 38.139256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062237, 0.528835, 0.846440,
		-0.473452, -0.762232, 0.441412,
		0.878618, -0.373277, 0.297817,
		44.130558, 37.457829, 38.228600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441483, 37.361916, 38.668758>,  <43.515526, 37.719124, 38.020130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441483, 37.361916, 38.668758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821297, 37.479557, 38.625141>,  <44.049183, 37.550144, 38.598972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821297, 37.479557, 38.625141>,  <43.441483, 37.361916, 38.668758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821297, 37.479557, 38.625141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033302, 0.440188, 0.897288,
		0.311896, -0.848373, 0.427767,
		0.949533, 0.294106, -0.109040,
		44.106155, 37.567791, 38.592430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577290, 37.640949, 39.229610>,  <43.441483, 37.361916, 38.668758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577290, 37.640949, 39.229610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955387, 37.690750, 39.108932>,  <44.182243, 37.720631, 39.036526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955387, 37.690750, 39.108932>,  <43.577290, 37.640949, 39.229610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955387, 37.690750, 39.108932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205104, 0.492460, 0.845823,
		0.253878, -0.861385, 0.439958,
		0.945240, 0.124498, -0.301698,
		44.238960, 37.728100, 39.018425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109077, 37.404125, 39.753212>,  <43.577290, 37.640949, 39.229610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109077, 37.404125, 39.753212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261127, 37.697269, 39.527500>,  <44.352356, 37.873158, 39.392071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261127, 37.697269, 39.527500>,  <44.109077, 37.404125, 39.753212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261127, 37.697269, 39.527500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264912, 0.498258, 0.825567,
		0.886186, -0.463305, -0.004744,
		0.380125, 0.732863, -0.564284,
		44.375164, 37.917130, 39.358215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669750, 37.647243, 40.116871>,  <44.109077, 37.404125, 39.753212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669750, 37.647243, 40.116871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578167, 37.921085, 39.840061>,  <44.523216, 38.085392, 39.673977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578167, 37.921085, 39.840061>,  <44.669750, 37.647243, 40.116871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578167, 37.921085, 39.840061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362168, 0.719781, 0.592241,
		0.903555, -0.115029, -0.412743,
		-0.228960, 0.684605, -0.692022,
		44.509480, 38.126465, 39.632454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312569, 38.112732, 39.885857>,  <44.669750, 37.647243, 40.116871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312569, 38.112732, 39.885857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995796, 38.336494, 39.787949>,  <44.805733, 38.470753, 39.729202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995796, 38.336494, 39.787949>,  <45.312569, 38.112732, 39.885857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995796, 38.336494, 39.787949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382294, 0.766807, 0.515615,
		0.476128, 0.314758, -0.821115,
		-0.791930, 0.559406, -0.244769,
		44.758217, 38.504314, 39.714520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598801, 38.775837, 39.727745>,  <45.312569, 38.112732, 39.885857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598801, 38.775837, 39.727745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214741, 38.880375, 39.767349>,  <44.984303, 38.943100, 39.791111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214741, 38.880375, 39.767349>,  <45.598801, 38.775837, 39.727745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214741, 38.880375, 39.767349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274980, 0.820190, 0.501671,
		0.049907, 0.508906, -0.859374,
		-0.960154, 0.261347, 0.099006,
		44.926693, 38.958778, 39.797050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651257, 39.461311, 39.547832>,  <45.598801, 38.775837, 39.727745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651257, 39.461311, 39.547832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291759, 39.443382, 39.722301>,  <45.076061, 39.432625, 39.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291759, 39.443382, 39.722301>,  <45.651257, 39.461311, 39.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291759, 39.443382, 39.722301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231634, 0.796085, 0.559102,
		-0.372294, 0.603523, -0.705094,
		-0.898745, -0.044826, 0.436174,
		45.022137, 39.429935, 39.853153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235828, 40.183510, 39.476055>,  <45.651257, 39.461311, 39.547832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235828, 40.183510, 39.476055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104210, 40.004875, 39.808868>,  <45.025238, 39.897694, 40.008556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104210, 40.004875, 39.808868>,  <45.235828, 40.183510, 39.476055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104210, 40.004875, 39.808868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068455, 0.867504, 0.492698,
		-0.941829, 0.219078, -0.254879,
		-0.329048, -0.446589, 0.832037,
		45.005497, 39.870899, 40.058479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785595, 40.668865, 39.752430>,  <45.235828, 40.183510, 39.476055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785595, 40.668865, 39.752430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912556, 40.423412, 40.041626>,  <44.988731, 40.276142, 40.215145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912556, 40.423412, 40.041626>,  <44.785595, 40.668865, 39.752430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912556, 40.423412, 40.041626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158714, 0.786034, 0.597462,
		-0.934916, -0.074885, 0.346878,
		0.317399, -0.613631, 0.722991,
		45.007774, 40.239323, 40.258522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540627, 40.939560, 40.293011>,  <44.785595, 40.668865, 39.752430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540627, 40.939560, 40.293011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791573, 40.699909, 40.491993>,  <44.942139, 40.556118, 40.611382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791573, 40.699909, 40.491993>,  <44.540627, 40.939560, 40.293011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791573, 40.699909, 40.491993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339946, 0.785429, 0.517241,
		-0.700606, -0.155393, 0.696422,
		0.627365, -0.599128, 0.497451,
		44.979782, 40.520172, 40.641228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436195, 41.135593, 40.992943>,  <44.540627, 40.939560, 40.293011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436195, 41.135593, 40.992943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788754, 40.947781, 40.972206>,  <45.000286, 40.835091, 40.959763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788754, 40.947781, 40.972206>,  <44.436195, 41.135593, 40.992943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788754, 40.947781, 40.972206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386123, 0.652865, 0.651671,
		-0.272137, -0.594394, 0.756728,
		0.881391, -0.469534, -0.051840,
		45.053169, 40.806919, 40.956654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730709, 41.232166, 41.744946>,  <44.436195, 41.135593, 40.992943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730709, 41.232166, 41.744946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032627, 41.142662, 41.498299>,  <45.213779, 41.088959, 41.350311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032627, 41.142662, 41.498299>,  <44.730709, 41.232166, 41.744946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032627, 41.142662, 41.498299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597395, 0.622742, 0.505284,
		0.270930, -0.749749, 0.603716,
		0.754795, -0.223761, -0.616616,
		45.259068, 41.075535, 41.313313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340508, 41.152157, 42.180714>,  <44.730709, 41.232166, 41.744946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340508, 41.152157, 42.180714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490360, 41.185257, 41.811325>,  <45.580273, 41.205116, 41.589691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490360, 41.185257, 41.811325>,  <45.340508, 41.152157, 42.180714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490360, 41.185257, 41.811325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677941, 0.655001, 0.333721,
		0.632491, -0.751083, 0.189283,
		0.374633, 0.082753, -0.923473,
		45.602749, 41.210083, 41.534283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125290, 41.017338, 42.140133>,  <45.340508, 41.152157, 42.180714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125290, 41.017338, 42.140133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008659, 41.242081, 41.830475>,  <45.938683, 41.376926, 41.644680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008659, 41.242081, 41.830475>,  <46.125290, 41.017338, 42.140133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008659, 41.242081, 41.830475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683965, 0.688242, 0.241898,
		0.668712, -0.458958, -0.584963,
		-0.291575, 0.561854, -0.774147,
		45.921188, 41.410637, 41.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733288, 41.311062, 41.709251>,  <46.125290, 41.017338, 42.140133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733288, 41.311062, 41.709251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408722, 41.543423, 41.683441>,  <46.213982, 41.682838, 41.667953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408722, 41.543423, 41.683441>,  <46.733288, 41.311062, 41.709251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408722, 41.543423, 41.683441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559908, 0.804224, 0.199315,
		0.167678, 0.125597, -0.977809,
		-0.811411, 0.580903, -0.064527,
		46.165298, 41.717693, 41.664082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988094, 41.841217, 41.307289>,  <46.733288, 41.311062, 41.709251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988094, 41.841217, 41.307289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691914, 41.933868, 41.559666>,  <46.514206, 41.989460, 41.711090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691914, 41.933868, 41.559666>,  <46.988094, 41.841217, 41.307289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691914, 41.933868, 41.559666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529133, 0.779732, 0.334719,
		-0.414435, 0.581693, -0.699912,
		-0.740447, 0.231627, 0.630941,
		46.469780, 42.003357, 41.748947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844887, 42.509357, 41.176830>,  <46.988094, 41.841217, 41.307289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844887, 42.509357, 41.176830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705399, 42.431400, 41.543526>,  <46.621708, 42.384624, 41.763542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705399, 42.431400, 41.543526>,  <46.844887, 42.509357, 41.176830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705399, 42.431400, 41.543526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461104, 0.815895, 0.348853,
		-0.815952, 0.544364, -0.194652,
		-0.348718, -0.194892, 0.916740,
		46.600784, 42.372932, 41.818546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.724411, 43.143017, 41.737289>,  <46.844887, 42.509357, 41.176830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.724411, 43.143017, 41.737289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853519, 43.494972, 41.597794>,  <46.930984, 43.706146, 41.514095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853519, 43.494972, 41.597794>,  <46.724411, 43.143017, 41.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853519, 43.494972, 41.597794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296580, -0.443924, -0.845560,
		-0.898810, 0.169495, -0.404243,
		0.322771, 0.879888, -0.348735,
		46.950352, 43.758938, 41.493172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420174, 43.412685, 41.092934>,  <46.724411, 43.143017, 41.737289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420174, 43.412685, 41.092934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807972, 43.509090, 41.110783>,  <47.040649, 43.566933, 41.121494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807972, 43.509090, 41.110783>,  <46.420174, 43.412685, 41.092934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807972, 43.509090, 41.110783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172513, -0.541611, -0.822737,
		-0.174118, 0.805339, -0.566667,
		0.969496, 0.241011, 0.044627,
		47.098820, 43.581394, 41.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835293, 43.758278, 40.505001>,  <46.420174, 43.412685, 41.092934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835293, 43.758278, 40.505001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091618, 43.527084, 40.707108>,  <47.245415, 43.388371, 40.828373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091618, 43.527084, 40.707108>,  <46.835293, 43.758278, 40.505001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091618, 43.527084, 40.707108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009132, -0.663851, -0.747809,
		0.767641, 0.474593, -0.430684,
		0.640815, -0.577982, 0.505266,
		47.283863, 43.353691, 40.858688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.498806, 43.790241, 40.226364>,  <46.835293, 43.758278, 40.505001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.498806, 43.790241, 40.226364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445351, 43.444660, 40.420574>,  <47.413277, 43.237312, 40.537102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445351, 43.444660, 40.420574>,  <47.498806, 43.790241, 40.226364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445351, 43.444660, 40.420574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053814, -0.482869, -0.874038,
		0.989568, -0.142930, 0.018036,
		-0.133635, -0.863949, 0.485524,
		47.405262, 43.185474, 40.566231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.011848, 43.332085, 40.058502>,  <47.498806, 43.790241, 40.226364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.011848, 43.332085, 40.058502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669140, 43.144852, 40.145081>,  <47.463516, 43.032513, 40.197025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669140, 43.144852, 40.145081>,  <48.011848, 43.332085, 40.058502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669140, 43.144852, 40.145081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090319, -0.549415, -0.830654,
		0.507731, -0.692129, 0.512998,
		-0.856769, -0.468082, 0.216442,
		47.412109, 43.004429, 40.210014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084091, 42.564781, 40.109905>,  <48.011848, 43.332085, 40.058502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084091, 42.564781, 40.109905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718761, 42.665756, 39.982079>,  <47.499565, 42.726341, 39.905384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718761, 42.665756, 39.982079>,  <48.084091, 42.564781, 40.109905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718761, 42.665756, 39.982079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104837, -0.612511, -0.783479,
		-0.393516, -0.749069, 0.532954,
		-0.913320, 0.252438, -0.319563,
		47.444767, 42.741489, 39.886211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.870430, 41.975323, 39.890736>,  <48.084091, 42.564781, 40.109905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.870430, 41.975323, 39.890736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608795, 42.219891, 39.712597>,  <47.451817, 42.366631, 39.605713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608795, 42.219891, 39.712597>,  <47.870430, 41.975323, 39.890736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.608795, 42.219891, 39.712597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177392, -0.696325, -0.695459,
		-0.735328, -0.375887, 0.563916,
		-0.654083, 0.611425, -0.445348,
		47.412571, 42.403316, 39.578995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.334099, 41.477276, 39.684982>,  <47.870430, 41.975323, 39.890736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.334099, 41.477276, 39.684982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264313, 41.800468, 39.459869>,  <47.222443, 41.994385, 39.324802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264313, 41.800468, 39.459869>,  <47.334099, 41.477276, 39.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264313, 41.800468, 39.459869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279502, -0.588673, -0.758513,
		-0.944162, 0.024968, 0.328534,
		-0.174461, 0.807985, -0.562782,
		47.211975, 42.042866, 39.291035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862133, 41.165379, 39.347195>,  <47.334099, 41.477276, 39.684982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862133, 41.165379, 39.347195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967449, 41.488827, 39.136742>,  <47.030640, 41.682896, 39.010471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967449, 41.488827, 39.136742>,  <46.862133, 41.165379, 39.347195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967449, 41.488827, 39.136742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384207, -0.412365, -0.826039,
		-0.884909, 0.419629, 0.202107,
		0.263288, 0.808620, -0.526130,
		47.046436, 41.731411, 38.978901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369560, 41.183495, 38.930000>,  <46.862133, 41.165379, 39.347195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369560, 41.183495, 38.930000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.654884, 41.391895, 38.742493>,  <46.826080, 41.516937, 38.629990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.654884, 41.391895, 38.742493>,  <46.369560, 41.183495, 38.930000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654884, 41.391895, 38.742493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288273, -0.391549, -0.873835,
		-0.638817, 0.758449, -0.129105,
		0.713311, 0.521003, -0.468768,
		46.868877, 41.548195, 38.601864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048096, 41.418427, 38.277489>,  <46.369560, 41.183495, 38.930000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048096, 41.418427, 38.277489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447113, 41.408230, 38.251385>,  <46.686523, 41.402111, 38.235722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447113, 41.408230, 38.251385>,  <46.048096, 41.418427, 38.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447113, 41.408230, 38.251385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068029, -0.575171, -0.815200,
		-0.016752, 0.817636, -0.575492,
		0.997543, -0.025494, -0.065258,
		46.746376, 41.400581, 38.231808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030968, 41.464470, 37.616470>,  <46.048096, 41.418427, 38.277489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030968, 41.464470, 37.616470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391441, 41.342007, 37.739197>,  <46.607723, 41.268528, 37.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391441, 41.342007, 37.739197>,  <46.030968, 41.464470, 37.616470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391441, 41.342007, 37.739197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039257, -0.647303, -0.761221,
		0.431660, 0.698043, -0.571319,
		0.901182, -0.306161, 0.306818,
		46.661797, 41.250160, 37.831242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342422, 41.388382, 36.988060>,  <46.030968, 41.464470, 37.616470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342422, 41.388382, 36.988060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548416, 41.175697, 37.257008>,  <46.672012, 41.048088, 37.418377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548416, 41.175697, 37.257008>,  <46.342422, 41.388382, 36.988060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548416, 41.175697, 37.257008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218599, -0.676978, -0.702791,
		0.828857, 0.508905, -0.232402,
		0.514985, -0.531711, 0.672364,
		46.702911, 41.016186, 37.458717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890041, 41.117020, 36.682465>,  <46.342422, 41.388382, 36.988060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890041, 41.117020, 36.682465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822319, 40.871597, 36.990978>,  <46.781685, 40.724342, 37.176086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822319, 40.871597, 36.990978>,  <46.890041, 41.117020, 36.682465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822319, 40.871597, 36.990978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074073, -0.788292, -0.610827,
		0.982776, -0.046284, 0.178909,
		-0.169304, -0.613558, 0.771286,
		46.771526, 40.687531, 37.222363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338264, 40.533653, 36.517952>,  <46.890041, 41.117020, 36.682465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338264, 40.533653, 36.517952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060406, 40.417336, 36.781132>,  <46.893688, 40.347546, 36.939041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060406, 40.417336, 36.781132>,  <47.338264, 40.533653, 36.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060406, 40.417336, 36.781132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206639, -0.795436, -0.569721,
		0.689028, -0.531716, 0.492462,
		-0.694651, -0.290791, 0.657951,
		46.852009, 40.330097, 36.978516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548492, 39.940205, 36.711926>,  <47.338264, 40.533653, 36.517952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548492, 39.940205, 36.711926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160622, 39.946808, 36.809456>,  <46.927898, 39.950771, 36.867973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160622, 39.946808, 36.809456>,  <47.548492, 39.940205, 36.711926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.160622, 39.946808, 36.809456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113388, -0.914224, -0.389023,
		0.216493, -0.404874, 0.888374,
		-0.969677, 0.016510, 0.243830,
		46.869717, 39.951759, 36.882607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.373539, 39.260117, 36.925343>,  <47.548492, 39.940205, 36.711926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.373539, 39.260117, 36.925343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013767, 39.415665, 36.845543>,  <46.797905, 39.508995, 36.797665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013767, 39.415665, 36.845543>,  <47.373539, 39.260117, 36.925343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.013767, 39.415665, 36.845543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317001, -0.894672, -0.314759,
		-0.300886, -0.219864, 0.927970,
		-0.899432, 0.388873, -0.199497,
		46.743938, 39.532326, 36.785694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.983994, 38.858437, 37.199562>,  <47.373539, 39.260117, 36.925343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.983994, 38.858437, 37.199562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762619, 39.047760, 36.925426>,  <46.629795, 39.161354, 36.760944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762619, 39.047760, 36.925426>,  <46.983994, 38.858437, 37.199562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762619, 39.047760, 36.925426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229873, -0.877685, -0.420509,
		-0.800539, -0.075185, 0.594545,
		-0.553440, 0.473304, -0.685338,
		46.596588, 39.189751, 36.719826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257797, 38.427673, 37.091301>,  <46.983994, 38.858437, 37.199562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257797, 38.427673, 37.091301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298355, 38.660892, 36.768867>,  <46.322689, 38.800823, 36.575405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298355, 38.660892, 36.768867>,  <46.257797, 38.427673, 37.091301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298355, 38.660892, 36.768867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324212, -0.746662, -0.580846,
		-0.940535, 0.320235, 0.113326,
		0.101391, 0.583048, -0.806086,
		46.328773, 38.835808, 36.527042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771366, 38.257488, 36.712044>,  <46.257797, 38.427673, 37.091301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771366, 38.257488, 36.712044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993149, 38.421791, 36.422531>,  <46.126217, 38.520370, 36.248825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993149, 38.421791, 36.422531>,  <45.771366, 38.257488, 36.712044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993149, 38.421791, 36.422531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186361, -0.786338, -0.589018,
		-0.811079, 0.461469, -0.359441,
		0.554455, 0.410754, -0.723782,
		46.159485, 38.545017, 36.205395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384933, 38.157143, 36.050823>,  <45.771366, 38.257488, 36.712044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384933, 38.157143, 36.050823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769798, 38.193089, 35.947937>,  <46.000717, 38.214657, 35.886204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769798, 38.193089, 35.947937>,  <45.384933, 38.157143, 36.050823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769798, 38.193089, 35.947937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088333, -0.790165, -0.606495,
		-0.257751, 0.606270, -0.752331,
		0.962165, 0.089869, -0.257219,
		46.058449, 38.220051, 35.870770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467075, 38.040375, 35.311516>,  <45.384933, 38.157143, 36.050823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467075, 38.040375, 35.311516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838100, 37.964832, 35.440487>,  <46.060715, 37.919506, 35.517868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838100, 37.964832, 35.440487>,  <45.467075, 38.040375, 35.311516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838100, 37.964832, 35.440487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021758, -0.834108, -0.551172,
		0.373030, 0.518262, -0.769579,
		0.927564, -0.188859, 0.322424,
		46.116371, 37.908173, 35.537212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768440, 37.707275, 34.770523>,  <45.467075, 38.040375, 35.311516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768440, 37.707275, 34.770523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034058, 37.633701, 35.060410>,  <46.193428, 37.589558, 35.234341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034058, 37.633701, 35.060410>,  <45.768440, 37.707275, 34.770523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034058, 37.633701, 35.060410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224078, -0.875761, -0.427587,
		0.713328, 0.446330, -0.540327,
		0.664042, -0.183934, 0.724718,
		46.233269, 37.578522, 35.277824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211250, 37.449783, 34.423115>,  <45.768440, 37.707275, 34.770523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211250, 37.449783, 34.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306248, 37.324337, 34.790863>,  <46.363247, 37.249069, 35.011513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306248, 37.324337, 34.790863>,  <46.211250, 37.449783, 34.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306248, 37.324337, 34.790863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161603, -0.920504, -0.355747,
		0.957853, 0.233060, -0.167932,
		0.237493, -0.313615, 0.919371,
		46.377495, 37.230251, 35.066673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845421, 37.122913, 34.326157>,  <46.211250, 37.449783, 34.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845421, 37.122913, 34.326157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695572, 36.975441, 34.666447>,  <46.605663, 36.886959, 34.870621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695572, 36.975441, 34.666447>,  <46.845421, 37.122913, 34.326157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695572, 36.975441, 34.666447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385595, -0.896383, -0.218664,
		0.843194, 0.246120, 0.477964,
		-0.374621, -0.368677, 0.850727,
		46.583187, 36.864838, 34.921665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439964, 36.969292, 34.682220>,  <46.845421, 37.122913, 34.326157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439964, 36.969292, 34.682220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116928, 36.770699, 34.809536>,  <46.923107, 36.651543, 34.885925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116928, 36.770699, 34.809536>,  <47.439964, 36.969292, 34.682220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116928, 36.770699, 34.809536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501137, -0.862245, -0.073447,
		0.310910, 0.100192, 0.945144,
		-0.807587, -0.496482, 0.318291,
		46.874653, 36.621754, 34.905022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569511, 36.718624, 35.373127>,  <47.439964, 36.969292, 34.682220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569511, 36.718624, 35.373127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303566, 36.497101, 35.172626>,  <47.143997, 36.364185, 35.052326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303566, 36.497101, 35.172626>,  <47.569511, 36.718624, 35.373127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303566, 36.497101, 35.172626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594662, -0.798523, 0.093482,
		-0.452031, -0.235922, 0.860238,
		-0.664865, -0.553807, -0.501251,
		47.104107, 36.330959, 35.022251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312714, 36.183037, 35.747684>,  <47.569511, 36.718624, 35.373127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312714, 36.183037, 35.747684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310841, 36.052086, 35.369732>,  <47.309715, 35.973515, 35.142960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310841, 36.052086, 35.369732>,  <47.312714, 36.183037, 35.747684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310841, 36.052086, 35.369732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658085, -0.712455, 0.243584,
		-0.752930, -0.620670, 0.218782,
		-0.004687, -0.327378, -0.944882,
		47.309433, 35.953873, 35.086266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455578, 35.414356, 35.668549>,  <47.312714, 36.183037, 35.747684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455578, 35.414356, 35.668549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567562, 35.567783, 35.316528>,  <47.634754, 35.659840, 35.105316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567562, 35.567783, 35.316528>,  <47.455578, 35.414356, 35.668549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567562, 35.567783, 35.316528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706234, -0.703233, -0.081835,
		-0.650272, -0.598613, -0.467770,
		0.279964, 0.383570, -0.880054,
		47.651550, 35.682854, 35.052513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464100, 34.889965, 35.092197>,  <47.455578, 35.414356, 35.668549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464100, 34.889965, 35.092197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707401, 35.190331, 34.989311>,  <47.853382, 35.370548, 34.927582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707401, 35.190331, 34.989311>,  <47.464100, 34.889965, 35.092197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707401, 35.190331, 34.989311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788562, -0.608639, 0.087907,
		-0.090539, -0.256299, -0.962348,
		0.608253, 0.750912, -0.257214,
		47.889877, 35.415604, 34.912148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.052910, 39.850464, 42.865402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681076, 39.709206, 42.907661>,  <36.457977, 39.624451, 42.933018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681076, 39.709206, 42.907661>,  <37.052910, 39.850464, 42.865402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681076, 39.709206, 42.907661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035644, -0.371394, -0.927791,
		0.366879, -0.858695, 0.357830,
		-0.929586, -0.353141, 0.105649,
		36.402199, 39.603264, 42.939358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034592, 39.146313, 42.579117>,  <37.052910, 39.850464, 42.865402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034592, 39.146313, 42.579117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649460, 39.252472, 42.599228>,  <36.418381, 39.316166, 42.611294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649460, 39.252472, 42.599228>,  <37.034592, 39.146313, 42.579117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649460, 39.252472, 42.599228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181440, -0.497558, -0.848243,
		-0.200107, -0.825833, 0.527216,
		-0.962827, 0.265398, 0.050274,
		36.360611, 39.332092, 42.614311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605412, 38.560043, 42.367981>,  <37.034592, 39.146313, 42.579117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605412, 38.560043, 42.367981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370190, 38.879791, 42.318665>,  <36.229057, 39.071640, 42.289074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370190, 38.879791, 42.318665>,  <36.605412, 38.560043, 42.367981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370190, 38.879791, 42.318665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213086, -0.300159, -0.929784,
		-0.780250, -0.520489, 0.346844,
		-0.588051, 0.799372, -0.123290,
		36.193775, 39.119602, 42.281677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168530, 38.328411, 41.999340>,  <36.605412, 38.560043, 42.367981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168530, 38.328411, 41.999340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098064, 38.718292, 41.944324>,  <36.055786, 38.952221, 41.911316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098064, 38.718292, 41.944324>,  <36.168530, 38.328411, 41.999340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098064, 38.718292, 41.944324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149022, -0.164524, -0.975051,
		-0.973016, -0.151267, 0.174234,
		-0.176159, 0.974705, -0.137543,
		36.045216, 39.010704, 41.903061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524273, 38.388924, 41.728203>,  <36.168530, 38.328411, 41.999340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524273, 38.388924, 41.728203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722397, 38.720669, 41.624802>,  <35.841270, 38.919716, 41.562759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722397, 38.720669, 41.624802>,  <35.524273, 38.388924, 41.728203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722397, 38.720669, 41.624802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213295, -0.172358, -0.961664,
		-0.842124, 0.531460, 0.091528,
		0.495311, 0.829363, -0.258505,
		35.870991, 38.969479, 41.547249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161320, 38.627506, 41.162750>,  <35.524273, 38.388924, 41.728203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161320, 38.627506, 41.162750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502354, 38.836422, 41.155800>,  <35.706974, 38.961773, 41.151630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502354, 38.836422, 41.155800>,  <35.161320, 38.627506, 41.162750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502354, 38.836422, 41.155800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020212, -0.066188, -0.997602,
		-0.522191, 0.850194, -0.066988,
		0.852589, 0.522293, -0.017378,
		35.758129, 38.993111, 41.150585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110912, 39.175747, 40.563610>,  <35.161320, 38.627506, 41.162750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110912, 39.175747, 40.563610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497547, 39.116440, 40.647247>,  <35.729530, 39.080856, 40.697430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497547, 39.116440, 40.647247>,  <35.110912, 39.175747, 40.563610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497547, 39.116440, 40.647247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183010, -0.171953, -0.967956,
		0.179471, 0.973883, -0.139074,
		0.966590, -0.148268, 0.209091,
		35.787525, 39.071960, 40.709976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504810, 39.487465, 40.034813>,  <35.110912, 39.175747, 40.563610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504810, 39.487465, 40.034813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.749683, 39.221062, 40.205307>,  <35.896606, 39.061222, 40.307602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.749683, 39.221062, 40.205307>,  <35.504810, 39.487465, 40.034813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749683, 39.221062, 40.205307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336736, -0.268135, -0.902614,
		0.715433, 0.696090, 0.060120,
		0.612181, -0.666005, 0.426231,
		35.933338, 39.021259, 40.333176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182899, 39.524700, 39.717411>,  <35.504810, 39.487465, 40.034813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182899, 39.524700, 39.717411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176296, 39.168156, 39.898609>,  <36.172333, 38.954227, 40.007328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176296, 39.168156, 39.898609>,  <36.182899, 39.524700, 39.717411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176296, 39.168156, 39.898609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465622, -0.407783, -0.785435,
		0.884829, 0.197958, 0.421769,
		-0.016507, -0.891362, 0.452992,
		36.171345, 38.900745, 40.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785782, 39.299477, 39.540710>,  <36.182899, 39.524700, 39.717411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785782, 39.299477, 39.540710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598751, 38.966763, 39.660378>,  <36.486534, 38.767136, 39.732178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598751, 38.966763, 39.660378>,  <36.785782, 39.299477, 39.540710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598751, 38.966763, 39.660378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303130, -0.468806, -0.829659,
		0.830352, -0.297242, 0.471342,
		-0.467577, -0.831786, 0.299171,
		36.458477, 38.717228, 39.750130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211830, 38.711369, 39.558117>,  <36.785782, 39.299477, 39.540710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211830, 38.711369, 39.558117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854214, 38.540714, 39.503452>,  <36.639645, 38.438324, 39.470654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854214, 38.540714, 39.503452>,  <37.211830, 38.711369, 39.558117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854214, 38.540714, 39.503452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356594, -0.493083, -0.793542,
		0.271167, -0.758191, 0.592971,
		-0.894041, -0.426633, -0.136658,
		36.586002, 38.412724, 39.462456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381985, 38.057369, 39.359875>,  <37.211830, 38.711369, 39.558117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381985, 38.057369, 39.359875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000992, 38.109253, 39.249630>,  <36.772396, 38.140381, 39.183483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000992, 38.109253, 39.249630>,  <37.381985, 38.057369, 39.359875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000992, 38.109253, 39.249630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164265, -0.543248, -0.823346,
		-0.256517, -0.829492, 0.496126,
		-0.952479, 0.129706, -0.275609,
		36.715248, 38.148167, 39.166946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147636, 37.343849, 39.243763>,  <37.381985, 38.057369, 39.359875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147636, 37.343849, 39.243763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950977, 37.606716, 39.015232>,  <36.832981, 37.764435, 38.878113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950977, 37.606716, 39.015232>,  <37.147636, 37.343849, 39.243763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950977, 37.606716, 39.015232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165051, -0.573878, -0.802136,
		-0.855010, -0.488666, 0.173679,
		-0.491647, 0.657169, -0.571326,
		36.803482, 37.803867, 38.843834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850849, 36.902596, 38.746132>,  <37.147636, 37.343849, 39.243763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850849, 36.902596, 38.746132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819225, 37.279339, 38.615498>,  <36.800251, 37.505383, 38.537117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819225, 37.279339, 38.615498>,  <36.850849, 36.902596, 38.746132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819225, 37.279339, 38.615498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112035, -0.317143, -0.941737,
		-0.990554, -0.111045, -0.080446,
		-0.079062, 0.941854, -0.326588,
		36.795506, 37.561893, 38.517521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183910, 36.935757, 38.243904>,  <36.850849, 36.902596, 38.746132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183910, 36.935757, 38.243904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437778, 37.234821, 38.165730>,  <36.590099, 37.414261, 38.118824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437778, 37.234821, 38.165730>,  <36.183910, 36.935757, 38.243904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437778, 37.234821, 38.165730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094850, -0.175620, -0.979878,
		-0.766939, 0.640438, -0.040545,
		0.634671, 0.747661, -0.195435,
		36.628181, 37.459118, 38.107098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002659, 37.177219, 37.511322>,  <36.183910, 36.935757, 38.243904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002659, 37.177219, 37.511322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355091, 37.351856, 37.584091>,  <36.566551, 37.456638, 37.627750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355091, 37.351856, 37.584091>,  <36.002659, 37.177219, 37.511322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355091, 37.351856, 37.584091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310817, -0.244542, -0.918473,
		-0.356507, 0.865789, -0.351159,
		0.881076, 0.436588, 0.181921,
		36.619415, 37.482834, 37.638668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177788, 37.553856, 36.910015>,  <36.002659, 37.177219, 37.511322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177788, 37.553856, 36.910015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531563, 37.482990, 37.082703>,  <36.743828, 37.440472, 37.186317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531563, 37.482990, 37.082703>,  <36.177788, 37.553856, 36.910015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531563, 37.482990, 37.082703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389678, -0.228616, -0.892124,
		0.256748, 0.957261, -0.133161,
		0.884438, -0.177162, 0.431720,
		36.796894, 37.429840, 37.212219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662636, 37.801968, 36.473881>,  <36.177788, 37.553856, 36.910015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662636, 37.801968, 36.473881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882317, 37.563148, 36.707775>,  <37.014126, 37.419857, 36.848110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882317, 37.563148, 36.707775>,  <36.662636, 37.801968, 36.473881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882317, 37.563148, 36.707775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549541, -0.269124, -0.790934,
		0.629590, 0.755718, 0.180298,
		0.549201, -0.597045, 0.584735,
		37.047077, 37.384033, 36.883194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212929, 37.785126, 36.125275>,  <36.662636, 37.801968, 36.473881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212929, 37.785126, 36.125275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286480, 37.469013, 36.359077>,  <37.330608, 37.279346, 36.499359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286480, 37.469013, 36.359077>,  <37.212929, 37.785126, 36.125275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286480, 37.469013, 36.359077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668453, -0.335439, -0.663815,
		0.720667, 0.512771, 0.466589,
		0.183873, -0.790282, 0.584504,
		37.341640, 37.231930, 36.534428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952141, 37.633911, 36.055397>,  <37.212929, 37.785126, 36.125275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952141, 37.633911, 36.055397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808125, 37.286648, 36.192028>,  <37.721714, 37.078289, 36.274006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808125, 37.286648, 36.192028>,  <37.952141, 37.633911, 36.055397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808125, 37.286648, 36.192028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666174, -0.495565, -0.557339,
		0.653131, 0.026884, 0.756768,
		-0.360044, -0.868155, 0.341579,
		37.700111, 37.026203, 36.294502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576084, 37.180492, 36.181004>,  <37.952141, 37.633911, 36.055397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576084, 37.180492, 36.181004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279957, 36.913490, 36.149109>,  <38.102280, 36.753288, 36.129971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279957, 36.913490, 36.149109>,  <38.576084, 37.180492, 36.181004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279957, 36.913490, 36.149109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605192, -0.610121, -0.511366,
		0.292689, -0.426834, 0.855655,
		-0.740322, -0.667507, -0.079740,
		38.057861, 36.713238, 36.125187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890480, 36.510220, 36.344151>,  <38.576084, 37.180492, 36.181004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890480, 36.510220, 36.344151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545242, 36.411289, 36.168018>,  <38.338100, 36.351929, 36.062340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545242, 36.411289, 36.168018>,  <38.890480, 36.510220, 36.344151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545242, 36.411289, 36.168018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474887, -0.694181, -0.540921,
		-0.171883, -0.675974, 0.716600,
		-0.863099, -0.247329, -0.440329,
		38.286312, 36.337090, 36.035919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106934, 36.656193, 35.594601>,  <38.890480, 36.510220, 36.344151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106934, 36.656193, 35.594601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468685, 36.790550, 35.489319>,  <39.685734, 36.871166, 35.426147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468685, 36.790550, 35.489319>,  <39.106934, 36.656193, 35.594601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468685, 36.790550, 35.489319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303993, -0.074237, 0.949777,
		0.299485, -0.938970, -0.169247,
		0.904377, 0.335894, -0.263208,
		39.739998, 36.891319, 35.410358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625462, 36.167477, 35.834248>,  <39.106934, 36.656193, 35.594601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625462, 36.167477, 35.834248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838665, 36.503601, 35.794689>,  <39.966587, 36.705276, 35.770954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838665, 36.503601, 35.794689>,  <39.625462, 36.167477, 35.834248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838665, 36.503601, 35.794689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221554, -0.025801, 0.974807,
		0.816589, -0.541490, -0.199926,
		0.533006, 0.840311, -0.098900,
		39.998566, 36.755695, 35.765018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166428, 36.078945, 36.261982>,  <39.625462, 36.167477, 35.834248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166428, 36.078945, 36.261982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136822, 36.474785, 36.212654>,  <40.119061, 36.712288, 36.183060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136822, 36.474785, 36.212654>,  <40.166428, 36.078945, 36.261982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136822, 36.474785, 36.212654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274092, 0.139080, 0.951593,
		0.958851, 0.036629, -0.281537,
		-0.074012, 0.989603, -0.123318,
		40.114616, 36.771667, 36.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763870, 36.435104, 36.547367>,  <40.166428, 36.078945, 36.261982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763870, 36.435104, 36.547367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.480694, 36.717560, 36.541870>,  <40.310787, 36.887032, 36.538574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.480694, 36.717560, 36.541870>,  <40.763870, 36.435104, 36.547367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480694, 36.717560, 36.541870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276004, 0.294509, 0.914924,
		0.650109, 0.643920, -0.403392,
		-0.707941, 0.706138, -0.013739,
		40.268311, 36.929401, 36.537750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014492, 36.861988, 37.023220>,  <40.763870, 36.435104, 36.547367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014492, 36.861988, 37.023220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664089, 37.033669, 36.935223>,  <40.453846, 37.136677, 36.882423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664089, 37.033669, 36.935223>,  <41.014492, 36.861988, 37.023220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664089, 37.033669, 36.935223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085194, 0.311267, 0.946496,
		0.474711, 0.847881, -0.236108,
		-0.876009, 0.429197, -0.219996,
		40.401287, 37.162426, 36.869225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173592, 37.385410, 37.420673>,  <41.014492, 36.861988, 37.023220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173592, 37.385410, 37.420673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.781292, 37.362591, 37.345974>,  <40.545914, 37.348900, 37.301155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.781292, 37.362591, 37.345974>,  <41.173592, 37.385410, 37.420673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781292, 37.362591, 37.345974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192749, 0.129696, 0.972639,
		-0.031270, 0.989911, -0.138196,
		-0.980750, -0.057051, -0.186748,
		40.487068, 37.345474, 37.289951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846268, 38.015816, 37.594482>,  <41.173592, 37.385410, 37.420673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846268, 38.015816, 37.594482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.584545, 37.716965, 37.641262>,  <40.427509, 37.537655, 37.669331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.584545, 37.716965, 37.641262>,  <40.846268, 38.015816, 37.594482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584545, 37.716965, 37.641262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130288, 0.263705, 0.955764,
		-0.744918, 0.610130, -0.269887,
		-0.654311, -0.747129, 0.116946,
		40.388252, 37.492825, 37.676346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463058, 38.293247, 38.061287>,  <40.846268, 38.015816, 37.594482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463058, 38.293247, 38.061287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.334549, 37.914806, 38.077629>,  <40.257442, 37.687740, 38.087437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.334549, 37.914806, 38.077629>,  <40.463058, 38.293247, 38.061287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334549, 37.914806, 38.077629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276348, 0.134937, 0.951538,
		-0.905766, 0.294416, -0.304806,
		-0.321277, -0.946103, 0.040860,
		40.238167, 37.630974, 38.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757069, 38.272118, 38.232876>,  <40.463058, 38.293247, 38.061287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757069, 38.272118, 38.232876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924274, 37.932858, 38.363049>,  <40.024597, 37.729301, 38.441154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924274, 37.932858, 38.363049>,  <39.757069, 38.272118, 38.232876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924274, 37.932858, 38.363049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262357, 0.230259, 0.937096,
		-0.869730, -0.477102, -0.126265,
		0.418017, -0.848147, 0.325434,
		40.049679, 37.678413, 38.460678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401279, 38.115585, 38.773319>,  <39.757069, 38.272118, 38.232876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401279, 38.115585, 38.773319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705433, 37.861023, 38.825176>,  <39.887924, 37.708286, 38.856289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705433, 37.861023, 38.825176>,  <39.401279, 38.115585, 38.773319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705433, 37.861023, 38.825176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126273, 0.050939, 0.990687,
		-0.637080, -0.769673, -0.041627,
		0.760384, -0.636403, 0.129641,
		39.933548, 37.670101, 38.864067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177967, 37.741413, 39.350883>,  <39.401279, 38.115585, 38.773319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177967, 37.741413, 39.350883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570267, 37.664505, 39.337284>,  <39.805649, 37.618359, 39.329124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570267, 37.664505, 39.337284>,  <39.177967, 37.741413, 39.350883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570267, 37.664505, 39.337284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027943, -0.034120, 0.999027,
		-0.193243, -0.980749, -0.028091,
		0.980753, -0.192270, -0.033998,
		39.864494, 37.606823, 39.327084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351620, 37.136444, 39.776913>,  <39.177967, 37.741413, 39.350883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351620, 37.136444, 39.776913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680878, 37.362675, 39.756683>,  <39.878433, 37.498413, 39.744545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680878, 37.362675, 39.756683>,  <39.351620, 37.136444, 39.776913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680878, 37.362675, 39.756683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094955, 0.224913, 0.969741,
		0.559838, -0.793433, 0.238840,
		0.823143, 0.565577, -0.050574,
		39.927822, 37.532349, 39.741512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631260, 37.141369, 40.515598>,  <39.351620, 37.136444, 39.776913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631260, 37.141369, 40.515598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765320, 37.462273, 40.317989>,  <39.845757, 37.654816, 40.199425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765320, 37.462273, 40.317989>,  <39.631260, 37.141369, 40.515598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765320, 37.462273, 40.317989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013876, 0.520089, 0.853999,
		0.942062, -0.293075, 0.163177,
		0.335153, 0.802256, -0.494023,
		39.865868, 37.702950, 40.169781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139950, 37.385658, 40.887833>,  <39.631260, 37.141369, 40.515598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139950, 37.385658, 40.887833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028629, 37.706421, 40.676361>,  <39.961838, 37.898876, 40.549477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028629, 37.706421, 40.676361>,  <40.139950, 37.385658, 40.887833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028629, 37.706421, 40.676361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171715, 0.583097, 0.794048,
		0.945021, 0.130199, -0.299973,
		-0.278298, 0.801902, -0.528681,
		39.945141, 37.946991, 40.517757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582649, 38.023655, 41.115406>,  <40.139950, 37.385658, 40.887833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582649, 38.023655, 41.115406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243225, 38.149788, 40.945461>,  <40.039570, 38.225468, 40.843494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243225, 38.149788, 40.945461>,  <40.582649, 38.023655, 41.115406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243225, 38.149788, 40.945461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156011, 0.618176, 0.770402,
		0.505576, 0.720016, -0.475363,
		-0.848559, 0.315335, -0.424865,
		39.988659, 38.244389, 40.818001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589523, 38.764641, 41.193157>,  <40.582649, 38.023655, 41.115406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589523, 38.764641, 41.193157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210701, 38.661644, 41.116447>,  <39.983406, 38.599846, 41.070423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210701, 38.661644, 41.116447>,  <40.589523, 38.764641, 41.193157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210701, 38.661644, 41.116447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313879, 0.616927, 0.721721,
		-0.067529, 0.743705, -0.665088,
		-0.947058, -0.257494, -0.191773,
		39.926582, 38.584396, 41.058914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246868, 39.404388, 41.248661>,  <40.589523, 38.764641, 41.193157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246868, 39.404388, 41.248661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.981194, 39.108894, 41.294491>,  <39.821789, 38.931599, 41.321987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.981194, 39.108894, 41.294491>,  <40.246868, 39.404388, 41.248661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981194, 39.108894, 41.294491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439499, 0.509849, 0.739523,
		-0.604726, 0.440827, -0.663308,
		-0.664189, -0.738732, 0.114576,
		39.781937, 38.887276, 41.328865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573334, 39.756020, 41.304573>,  <40.246868, 39.404388, 41.248661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573334, 39.756020, 41.304573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537601, 39.387363, 41.455616>,  <39.516163, 39.166168, 41.546242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537601, 39.387363, 41.455616>,  <39.573334, 39.756020, 41.304573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537601, 39.387363, 41.455616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289548, 0.386785, 0.875534,
		-0.952985, -0.031121, -0.301414,
		-0.089335, -0.921645, 0.377611,
		39.510799, 39.110870, 41.568901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.811146, 39.648476, 41.523468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023632, 39.375195, 41.723885>,  <39.151123, 39.211224, 41.844135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023632, 39.375195, 41.723885>,  <38.811146, 39.648476, 41.523468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023632, 39.375195, 41.723885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451720, 0.271922, 0.849710,
		-0.716770, -0.677709, -0.164168,
		0.531215, -0.683205, 0.501040,
		39.182995, 39.170235, 41.874195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303288, 39.329906, 41.912792>,  <38.811146, 39.648476, 41.523468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303288, 39.329906, 41.912792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656361, 39.253117, 42.084381>,  <38.868206, 39.207043, 42.187336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656361, 39.253117, 42.084381>,  <38.303288, 39.329906, 41.912792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656361, 39.253117, 42.084381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413310, 0.117398, 0.902991,
		-0.223711, -0.974353, 0.024281,
		0.882683, -0.191974, 0.428973,
		38.921165, 39.195526, 42.213074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144817, 39.339867, 42.527065>,  <38.303288, 39.329906, 41.912792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144817, 39.339867, 42.527065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535393, 39.300068, 42.603657>,  <38.769737, 39.276188, 42.649612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535393, 39.300068, 42.603657>,  <38.144817, 39.339867, 42.527065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535393, 39.300068, 42.603657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178134, 0.129137, 0.975496,
		-0.121784, -0.986623, 0.108371,
		0.976441, -0.099495, 0.191477,
		38.828323, 39.270218, 42.661098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285145, 38.712494, 43.026131>,  <38.144817, 39.339867, 42.527065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285145, 38.712494, 43.026131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538975, 39.021557, 43.033215>,  <38.691273, 39.206997, 43.037464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538975, 39.021557, 43.033215>,  <38.285145, 38.712494, 43.026131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538975, 39.021557, 43.033215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138658, 0.091269, 0.986126,
		0.760325, -0.628222, 0.165052,
		0.634570, 0.772662, 0.017714,
		38.729347, 39.253357, 43.038528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563293, 38.556866, 43.634525>,  <38.285145, 38.712494, 43.026131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563293, 38.556866, 43.634525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692688, 38.922989, 43.538551>,  <38.770325, 39.142662, 43.480968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692688, 38.922989, 43.538551>,  <38.563293, 38.556866, 43.634525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692688, 38.922989, 43.538551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084666, 0.280551, 0.956098,
		0.942439, -0.288966, 0.168249,
		0.323482, 0.915309, -0.239936,
		38.789734, 39.197582, 43.466572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144779, 38.701759, 43.980148>,  <38.563293, 38.556866, 43.634525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144779, 38.701759, 43.980148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037945, 39.078316, 43.897732>,  <38.973846, 39.304249, 43.848282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037945, 39.078316, 43.897732>,  <39.144779, 38.701759, 43.980148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037945, 39.078316, 43.897732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005197, 0.212394, 0.977170,
		0.963660, 0.262055, -0.051834,
		-0.267082, 0.941390, -0.206037,
		38.957821, 39.360733, 43.835922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600788, 39.165337, 44.358398>,  <39.144779, 38.701759, 43.980148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600788, 39.165337, 44.358398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286762, 39.396667, 44.269669>,  <39.098347, 39.535465, 44.216431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286762, 39.396667, 44.269669>,  <39.600788, 39.165337, 44.358398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286762, 39.396667, 44.269669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053891, 0.292995, 0.954594,
		0.617064, 0.761373, -0.198854,
		-0.785066, 0.578329, -0.221828,
		39.051243, 39.570168, 44.203121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764965, 39.760712, 44.658566>,  <39.600788, 39.165337, 44.358398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764965, 39.760712, 44.658566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368950, 39.767208, 44.602627>,  <39.131340, 39.771107, 44.569065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368950, 39.767208, 44.602627>,  <39.764965, 39.760712, 44.658566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368950, 39.767208, 44.602627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115781, 0.471185, 0.874403,
		0.080092, 0.881885, -0.464611,
		-0.990040, 0.016240, -0.139843,
		39.071938, 39.772079, 44.560673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574352, 40.481354, 44.837391>,  <39.764965, 39.760712, 44.658566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574352, 40.481354, 44.837391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234280, 40.270847, 44.831406>,  <39.030235, 40.144543, 44.827812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234280, 40.270847, 44.831406>,  <39.574352, 40.481354, 44.837391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234280, 40.270847, 44.831406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219020, 0.327689, 0.919049,
		-0.478763, 0.784640, -0.393860,
		-0.850186, -0.526269, -0.014966,
		38.979225, 40.112965, 44.826916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947556, 40.971127, 44.978806>,  <39.574352, 40.481354, 44.837391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947556, 40.971127, 44.978806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851830, 40.598946, 45.089787>,  <38.794395, 40.375637, 45.156376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851830, 40.598946, 45.089787>,  <38.947556, 40.971127, 44.978806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851830, 40.598946, 45.089787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262768, 0.337155, 0.904035,
		-0.934709, 0.143444, -0.325181,
		-0.239315, -0.930457, 0.277450,
		38.780037, 40.319809, 45.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385212, 41.078735, 45.442509>,  <38.947556, 40.971127, 44.978806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385212, 41.078735, 45.442509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458145, 40.692513, 45.516762>,  <38.501904, 40.460781, 45.561314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458145, 40.692513, 45.516762>,  <38.385212, 41.078735, 45.442509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458145, 40.692513, 45.516762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099393, 0.169733, 0.980465,
		-0.978201, -0.197220, -0.065021,
		0.182331, -0.965554, 0.185635,
		38.512844, 40.402847, 45.572453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860565, 40.846924, 45.828609>,  <38.385212, 41.078735, 45.442509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860565, 40.846924, 45.828609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171394, 40.603130, 45.891464>,  <38.357891, 40.456856, 45.929176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171394, 40.603130, 45.891464>,  <37.860565, 40.846924, 45.828609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171394, 40.603130, 45.891464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035837, 0.206411, 0.977809,
		-0.628390, -0.765460, 0.138554,
		0.777073, -0.609480, 0.157138,
		38.404518, 40.420288, 45.938606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658924, 40.313801, 46.255024>,  <37.860565, 40.846924, 45.828609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658924, 40.313801, 46.255024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053509, 40.375126, 46.278305>,  <38.290260, 40.411922, 46.292274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053509, 40.375126, 46.278305>,  <37.658924, 40.313801, 46.255024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053509, 40.375126, 46.278305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084442, 0.170652, 0.981706,
		0.140581, -0.973330, 0.181288,
		0.986462, 0.153318, 0.058200,
		38.349449, 40.421120, 46.295765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801949, 40.027939, 46.885963>,  <37.658924, 40.313801, 46.255024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801949, 40.027939, 46.885963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118855, 40.251865, 46.788868>,  <38.308998, 40.386223, 46.730610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118855, 40.251865, 46.788868>,  <37.801949, 40.027939, 46.885963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118855, 40.251865, 46.788868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147838, 0.562068, 0.813771,
		0.592006, -0.608830, 0.528067,
		0.792258, 0.559825, -0.242739,
		38.356533, 40.419811, 46.716045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094475, 40.085541, 47.572292>,  <37.801949, 40.027939, 46.885963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094475, 40.085541, 47.572292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316551, 40.361294, 47.386169>,  <38.449799, 40.526745, 47.274498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316551, 40.361294, 47.386169>,  <38.094475, 40.085541, 47.572292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316551, 40.361294, 47.386169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140881, 0.473414, 0.869501,
		0.819704, -0.548292, 0.165715,
		0.555192, 0.689387, -0.465303,
		38.483109, 40.568111, 47.246578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792248, 40.080624, 47.935562>,  <38.094475, 40.085541, 47.572292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792248, 40.080624, 47.935562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719585, 40.426636, 47.748493>,  <38.675987, 40.634243, 47.636250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719585, 40.426636, 47.748493>,  <38.792248, 40.080624, 47.935562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719585, 40.426636, 47.748493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128486, 0.492391, 0.860838,
		0.974932, 0.096287, -0.200591,
		-0.181657, 0.865032, -0.467676,
		38.665089, 40.686146, 47.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289459, 40.494270, 48.231133>,  <38.792248, 40.080624, 47.935562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289459, 40.494270, 48.231133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998825, 40.727402, 48.085598>,  <38.824444, 40.867283, 47.998276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998825, 40.727402, 48.085598>,  <39.289459, 40.494270, 48.231133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998825, 40.727402, 48.085598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064174, 0.584798, 0.808636,
		0.684070, 0.564196, -0.462310,
		-0.726588, 0.582832, -0.363836,
		38.780849, 40.902252, 47.976448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500324, 41.144238, 48.343182>,  <39.289459, 40.494270, 48.231133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500324, 41.144238, 48.343182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108643, 41.199352, 48.283627>,  <38.873634, 41.232422, 48.247894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108643, 41.199352, 48.283627>,  <39.500324, 41.144238, 48.343182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108643, 41.199352, 48.283627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038627, 0.593864, 0.803638,
		0.199153, 0.792679, -0.576193,
		-0.979207, 0.137791, -0.148888,
		38.814880, 41.240688, 48.238960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400200, 41.839409, 48.580425>,  <39.500324, 41.144238, 48.343182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400200, 41.839409, 48.580425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040588, 41.664467, 48.589043>,  <38.824821, 41.559502, 48.594212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040588, 41.664467, 48.589043>,  <39.400200, 41.839409, 48.580425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040588, 41.664467, 48.589043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191056, 0.436048, 0.879409,
		-0.394009, 0.786499, -0.475580,
		-0.899030, -0.437358, 0.021541,
		38.770878, 41.533260, 48.595505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003593, 42.181271, 48.967308>,  <39.400200, 41.839409, 48.580425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003593, 42.181271, 48.967308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714169, 41.905167, 48.966282>,  <38.540516, 41.739506, 48.965668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714169, 41.905167, 48.966282>,  <39.003593, 42.181271, 48.967308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714169, 41.905167, 48.966282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270497, 0.280128, 0.921064,
		-0.635054, 0.667138, -0.389402,
		-0.723559, -0.690257, -0.002563,
		38.497101, 41.698090, 48.965511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365852, 42.504715, 49.169369>,  <39.003593, 42.181271, 48.967308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365852, 42.504715, 49.169369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348587, 42.112694, 49.246971>,  <38.338226, 41.877483, 49.293533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348587, 42.112694, 49.246971>,  <38.365852, 42.504715, 49.169369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348587, 42.112694, 49.246971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233084, 0.198704, 0.951939,
		-0.971498, -0.004126, -0.237012,
		-0.043167, -0.980051, 0.194002,
		38.335636, 41.818680, 49.305172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644279, 42.281944, 49.415813>,  <38.365852, 42.504715, 49.169369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644279, 42.281944, 49.415813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934944, 42.052059, 49.566372>,  <38.109341, 41.914127, 49.656708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934944, 42.052059, 49.566372>,  <37.644279, 42.281944, 49.415813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934944, 42.052059, 49.566372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214810, 0.330339, 0.919094,
		-0.652552, -0.748720, 0.116590,
		0.726658, -0.574712, 0.376396,
		38.152943, 41.879646, 49.679291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440659, 41.831280, 49.908989>,  <37.644279, 42.281944, 49.415813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440659, 41.831280, 49.908989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827183, 41.879185, 50.000118>,  <38.059097, 41.907928, 50.054798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827183, 41.879185, 50.000118>,  <37.440659, 41.831280, 49.908989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827183, 41.879185, 50.000118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249799, 0.223026, 0.942263,
		0.062032, -0.967428, 0.245427,
		0.966309, 0.119758, 0.227827,
		38.117077, 41.915112, 50.068466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846107, 41.834057, 50.235546>,  <37.440659, 41.831280, 49.908989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846107, 41.834057, 50.235546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545368, 41.745079, 50.483814>,  <36.364925, 41.691692, 50.632774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545368, 41.745079, 50.483814>,  <36.846107, 41.834057, 50.235546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545368, 41.745079, 50.483814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199843, -0.820199, -0.536038,
		0.628317, -0.527058, 0.572213,
		-0.751852, -0.222449, 0.620674,
		36.319813, 41.678345, 50.670017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938469, 41.191814, 50.511295>,  <36.846107, 41.834057, 50.235546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938469, 41.191814, 50.511295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563324, 41.321049, 50.460655>,  <36.338238, 41.398590, 50.430271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563324, 41.321049, 50.460655>,  <36.938469, 41.191814, 50.511295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563324, 41.321049, 50.460655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168265, -0.742495, -0.648373,
		-0.303478, -0.586784, 0.750723,
		-0.937864, 0.323087, -0.126596,
		36.281963, 41.417976, 50.422676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678825, 40.641563, 50.284428>,  <36.938469, 41.191814, 50.511295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678825, 40.641563, 50.284428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394569, 40.910660, 50.202053>,  <36.224014, 41.072117, 50.152630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394569, 40.910660, 50.202053>,  <36.678825, 40.641563, 50.284428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394569, 40.910660, 50.202053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326532, -0.574647, -0.750438,
		-0.623194, -0.466044, 0.628038,
		-0.710638, 0.672743, -0.205939,
		36.181377, 41.112484, 50.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164192, 40.234119, 50.033710>,  <36.678825, 40.641563, 50.284428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164192, 40.234119, 50.033710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036839, 40.596458, 49.921951>,  <35.960426, 40.813862, 49.854897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036839, 40.596458, 49.921951>,  <36.164192, 40.234119, 50.033710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036839, 40.596458, 49.921951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539092, -0.415455, -0.732651,
		-0.779752, -0.082638, 0.620610,
		-0.318381, 0.905852, -0.279402,
		35.941322, 40.868214, 49.838131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429398, 40.147945, 49.929722>,  <36.164192, 40.234119, 50.033710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429398, 40.147945, 49.929722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540337, 40.466858, 49.715275>,  <35.606899, 40.658207, 49.586609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540337, 40.466858, 49.715275>,  <35.429398, 40.147945, 49.929722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540337, 40.466858, 49.715275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554556, -0.322827, -0.766975,
		-0.784569, 0.510022, 0.352604,
		0.277344, 0.797284, -0.536115,
		35.623539, 40.706043, 49.554440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867466, 40.307526, 49.423912>,  <35.429398, 40.147945, 49.929722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867466, 40.307526, 49.423912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203045, 40.484497, 49.297157>,  <35.404392, 40.590679, 49.221104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203045, 40.484497, 49.297157>,  <34.867466, 40.307526, 49.423912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203045, 40.484497, 49.297157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185425, -0.315055, -0.930783,
		-0.511646, 0.839638, -0.182277,
		0.838949, 0.442433, -0.316887,
		35.454731, 40.617226, 49.202091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666706, 40.606533, 48.767162>,  <34.867466, 40.307526, 49.423912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666706, 40.606533, 48.767162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064808, 40.584061, 48.735397>,  <35.303669, 40.570576, 48.716339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064808, 40.584061, 48.735397>,  <34.666706, 40.606533, 48.767162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064808, 40.584061, 48.735397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097225, -0.547929, -0.830856,
		0.003166, 0.834636, -0.550793,
		0.995257, -0.056182, -0.079413,
		35.363384, 40.567207, 48.711575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816311, 40.757660, 48.009182>,  <34.666706, 40.606533, 48.767162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816311, 40.757660, 48.009182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148720, 40.577610, 48.139896>,  <35.348164, 40.469578, 48.218323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148720, 40.577610, 48.139896>,  <34.816311, 40.757660, 48.009182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148720, 40.577610, 48.139896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124040, -0.422731, -0.897726,
		0.542232, 0.786565, -0.295465,
		0.831023, -0.450126, 0.326783,
		35.398026, 40.442574, 48.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468136, 40.939465, 47.643497>,  <34.816311, 40.757660, 48.009182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468136, 40.939465, 47.643497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539745, 40.579384, 47.802288>,  <35.582710, 40.363335, 47.897564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539745, 40.579384, 47.802288>,  <35.468136, 40.939465, 47.643497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539745, 40.579384, 47.802288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272917, -0.342220, -0.899112,
		0.945234, 0.269305, 0.184414,
		0.179025, -0.900200, 0.396976,
		35.593452, 40.309322, 47.921379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069927, 40.899784, 47.455471>,  <35.468136, 40.939465, 47.643497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069927, 40.899784, 47.455471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965164, 40.526218, 47.552795>,  <35.902306, 40.302078, 47.611191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965164, 40.526218, 47.552795>,  <36.069927, 40.899784, 47.455471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965164, 40.526218, 47.552795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450704, -0.341295, -0.824854,
		0.853387, -0.106375, 0.510309,
		-0.261909, -0.933918, 0.243313,
		35.886593, 40.246044, 47.625790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577370, 40.459103, 47.414581>,  <36.069927, 40.899784, 47.455471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577370, 40.459103, 47.414581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300190, 40.171871, 47.388733>,  <36.133881, 39.999531, 47.373226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300190, 40.171871, 47.388733>,  <36.577370, 40.459103, 47.414581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300190, 40.171871, 47.388733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349338, -0.256005, -0.901346,
		0.630699, -0.647162, 0.428252,
		-0.692952, -0.718083, -0.064616,
		36.092304, 39.956448, 47.369347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922562, 39.811115, 47.219872>,  <36.577370, 40.459103, 47.414581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922562, 39.811115, 47.219872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546581, 39.719982, 47.118217>,  <36.320995, 39.665302, 47.057224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546581, 39.719982, 47.118217>,  <36.922562, 39.811115, 47.219872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546581, 39.719982, 47.118217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335518, -0.480142, -0.810488,
		0.062638, -0.847085, 0.527753,
		-0.939949, -0.227838, -0.254137,
		36.264595, 39.651630, 47.041977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987625, 39.083443, 46.839207>,  <36.922562, 39.811115, 47.219872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987625, 39.083443, 46.839207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629017, 39.226685, 46.734894>,  <36.413853, 39.312630, 46.672306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629017, 39.226685, 46.734894>,  <36.987625, 39.083443, 46.839207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629017, 39.226685, 46.734894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162331, -0.282163, -0.945533,
		-0.412182, -0.890026, 0.194834,
		-0.896523, 0.358104, -0.260782,
		36.360058, 39.334114, 46.656658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632473, 38.474586, 46.438145>,  <36.987625, 39.083443, 46.839207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632473, 38.474586, 46.438145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493298, 38.836845, 46.341202>,  <36.409794, 39.054203, 46.283035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493298, 38.836845, 46.341202>,  <36.632473, 38.474586, 46.438145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493298, 38.836845, 46.341202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008025, -0.261381, -0.965202,
		-0.937485, -0.333882, 0.098211,
		-0.347934, 0.905650, -0.242362,
		36.388916, 39.108540, 46.268494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317471, 38.317348, 45.763630>,  <36.632473, 38.474586, 46.438145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317471, 38.317348, 45.763630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308327, 38.716904, 45.780155>,  <36.302841, 38.956635, 45.790070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308327, 38.716904, 45.780155>,  <36.317471, 38.317348, 45.763630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308327, 38.716904, 45.780155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001624, 0.041283, -0.999146,
		-0.999737, -0.022906, 0.000679,
		-0.022858, 0.998885, 0.041310,
		36.301468, 39.016571, 45.792549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799706, 38.519501, 45.263031>,  <36.317471, 38.317348, 45.763630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799706, 38.519501, 45.263031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011822, 38.854282, 45.317139>,  <36.139091, 39.055153, 45.349606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011822, 38.854282, 45.317139>,  <35.799706, 38.519501, 45.263031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011822, 38.854282, 45.317139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059780, 0.196068, -0.978766,
		-0.845704, 0.510947, 0.154007,
		0.530294, 0.836953, 0.135271,
		36.170910, 39.105370, 45.357719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485432, 38.950779, 44.788944>,  <35.799706, 38.519501, 45.263031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485432, 38.950779, 44.788944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812500, 39.145397, 44.912029>,  <36.008743, 39.262169, 44.985882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812500, 39.145397, 44.912029>,  <35.485432, 38.950779, 44.788944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812500, 39.145397, 44.912029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081058, 0.431890, -0.898276,
		-0.569947, 0.759440, 0.313707,
		0.817673, 0.486542, 0.307713,
		36.057800, 39.291359, 45.004345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375431, 39.648376, 44.718094>,  <35.485432, 38.950779, 44.788944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375431, 39.648376, 44.718094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750053, 39.528881, 44.644756>,  <35.974827, 39.457184, 44.600754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750053, 39.528881, 44.644756>,  <35.375431, 39.648376, 44.718094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750053, 39.528881, 44.644756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094821, 0.287628, -0.953037,
		0.337440, 0.909960, 0.241054,
		0.936559, -0.298736, -0.183340,
		36.031021, 39.439259, 44.589756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785999, 40.275921, 44.411091>,  <35.375431, 39.648376, 44.718094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785999, 40.275921, 44.411091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997753, 39.953194, 44.306179>,  <36.124805, 39.759556, 44.243233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997753, 39.953194, 44.306179>,  <35.785999, 40.275921, 44.411091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997753, 39.953194, 44.306179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081596, 0.259300, -0.962344,
		0.844446, 0.530855, 0.071437,
		0.529389, -0.806819, -0.262281,
		36.156570, 39.711147, 44.227493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192684, 40.554829, 43.802162>,  <35.785999, 40.275921, 44.411091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192684, 40.554829, 43.802162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217373, 40.156139, 43.781254>,  <36.232185, 39.916927, 43.768707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217373, 40.156139, 43.781254>,  <36.192684, 40.554829, 43.802162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217373, 40.156139, 43.781254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042934, 0.049675, -0.997842,
		0.997170, 0.063829, -0.039727,
		0.061717, -0.996724, -0.052275,
		36.235889, 39.857121, 43.765572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687134, 40.348003, 43.297871>,  <36.192684, 40.554829, 43.802162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687134, 40.348003, 43.297871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486305, 40.003967, 43.334015>,  <36.365807, 39.797546, 43.355701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486305, 40.003967, 43.334015>,  <36.687134, 40.348003, 43.297871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486305, 40.003967, 43.334015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080490, -0.057560, -0.995092,
		0.861072, -0.506882, -0.040329,
		-0.502073, -0.860092, 0.090362,
		36.335682, 39.745941, 43.361122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.214947, 40.708832, 40.464817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.918526, 40.824020, 40.707439>,  <45.740673, 40.893131, 40.853012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.918526, 40.824020, 40.707439>,  <46.214947, 40.708832, 40.464817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918526, 40.824020, 40.707439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438731, -0.891515, -0.112761,
		0.508283, -0.349678, 0.787003,
		-0.741056, 0.287968, 0.606556,
		45.696209, 40.910412, 40.889408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199104, 40.181072, 40.887489>,  <46.214947, 40.708832, 40.464817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199104, 40.181072, 40.887489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.853661, 40.378895, 40.926674>,  <45.646397, 40.497589, 40.950184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.853661, 40.378895, 40.926674>,  <46.199104, 40.181072, 40.887489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853661, 40.378895, 40.926674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498981, -0.810641, -0.306396,
		-0.072118, -0.313487, 0.946850,
		-0.863607, 0.494557, 0.097962,
		45.594578, 40.527264, 40.956062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837635, 39.761356, 41.258862>,  <46.199104, 40.181072, 40.887489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837635, 39.761356, 41.258862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572437, 39.990314, 41.065861>,  <45.413319, 40.127689, 40.950062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572437, 39.990314, 41.065861>,  <45.837635, 39.761356, 41.258862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572437, 39.990314, 41.065861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396415, -0.815163, -0.422332,
		-0.635058, -0.088732, 0.767352,
		-0.662991, 0.572395, -0.482501,
		45.373539, 40.162033, 40.921112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299541, 39.402546, 41.205067>,  <45.837635, 39.761356, 41.258862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299541, 39.402546, 41.205067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202972, 39.678387, 40.931961>,  <45.145031, 39.843891, 40.768097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202972, 39.678387, 40.931961>,  <45.299541, 39.402546, 41.205067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202972, 39.678387, 40.931961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299283, -0.722191, -0.623595,
		-0.923116, 0.053787, 0.380741,
		-0.241427, 0.689600, -0.682764,
		45.130543, 39.885265, 40.727131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583923, 39.292225, 41.105488>,  <45.299541, 39.402546, 41.205067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583923, 39.292225, 41.105488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730991, 39.456074, 40.771534>,  <44.819233, 39.554382, 40.571163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730991, 39.456074, 40.771534>,  <44.583923, 39.292225, 41.105488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730991, 39.456074, 40.771534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473915, -0.689909, -0.547202,
		-0.800140, 0.596853, -0.059531,
		0.367670, 0.409625, -0.834881,
		44.841293, 39.578960, 40.521069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056828, 39.295345, 40.680859>,  <44.583923, 39.292225, 41.105488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056828, 39.295345, 40.680859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364853, 39.311428, 40.426178>,  <44.549667, 39.321079, 40.273369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364853, 39.311428, 40.426178>,  <44.056828, 39.295345, 40.680859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364853, 39.311428, 40.426178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375186, -0.778641, -0.502945,
		-0.515986, 0.626180, -0.584514,
		0.770061, 0.040211, -0.636702,
		44.595871, 39.323490, 40.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657974, 39.108624, 40.149857>,  <44.056828, 39.295345, 40.680859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657974, 39.108624, 40.149857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032970, 39.051991, 40.022697>,  <44.257969, 39.018013, 39.946404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032970, 39.051991, 40.022697>,  <43.657974, 39.108624, 40.149857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032970, 39.051991, 40.022697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302348, -0.783676, -0.542621,
		-0.172304, 0.604820, -0.777499,
		0.937495, -0.141579, -0.317896,
		44.314220, 39.009518, 39.927330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659782, 39.092674, 39.361221>,  <43.657974, 39.108624, 40.149857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659782, 39.092674, 39.361221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998425, 38.907085, 39.465523>,  <44.201611, 38.795734, 39.528103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998425, 38.907085, 39.465523>,  <43.659782, 39.092674, 39.361221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998425, 38.907085, 39.465523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151924, -0.680223, -0.717088,
		0.510078, 0.567476, -0.646368,
		0.846605, -0.463970, 0.260754,
		44.252407, 38.767895, 39.543747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016811, 38.942959, 38.747219>,  <43.659782, 39.092674, 39.361221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016811, 38.942959, 38.747219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.204338, 38.711243, 39.013943>,  <44.316853, 38.572212, 39.173977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.204338, 38.711243, 39.013943>,  <44.016811, 38.942959, 38.747219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204338, 38.711243, 39.013943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145134, -0.694130, -0.705067,
		0.871292, 0.427322, -0.241343,
		0.468814, -0.579292, 0.666809,
		44.344982, 38.537457, 39.213985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741768, 38.856266, 38.504452>,  <44.016811, 38.942959, 38.747219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741768, 38.856266, 38.504452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636597, 38.569946, 38.763218>,  <44.573494, 38.398155, 38.918476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636597, 38.569946, 38.763218>,  <44.741768, 38.856266, 38.504452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636597, 38.569946, 38.763218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130585, -0.690736, -0.711218,
		0.955937, -0.102522, 0.275087,
		-0.262928, -0.715802, 0.646913,
		44.557720, 38.355206, 38.957291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340939, 38.333855, 38.572750>,  <44.741768, 38.856266, 38.504452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340939, 38.333855, 38.572750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991146, 38.166218, 38.670441>,  <44.781273, 38.065636, 38.729053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991146, 38.166218, 38.670441>,  <45.340939, 38.333855, 38.572750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991146, 38.166218, 38.670441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141761, -0.702322, -0.697602,
		0.463886, -0.575417, 0.673577,
		-0.874479, -0.419094, 0.244226,
		44.728802, 38.040489, 38.743710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416481, 37.602867, 38.400925>,  <45.340939, 38.333855, 38.572750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416481, 37.602867, 38.400925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.023628, 37.596142, 38.475906>,  <44.787918, 37.592106, 38.520897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.023628, 37.596142, 38.475906>,  <45.416481, 37.602867, 38.400925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023628, 37.596142, 38.475906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134371, -0.634731, -0.760960,
		0.131780, -0.772550, 0.621129,
		-0.982130, -0.016817, 0.187453,
		44.728989, 37.591095, 38.532143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258137, 36.929035, 38.570431>,  <45.416481, 37.602867, 38.400925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258137, 36.929035, 38.570431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907326, 37.087048, 38.461052>,  <44.696838, 37.181854, 38.395424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907326, 37.087048, 38.461052>,  <45.258137, 36.929035, 38.570431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907326, 37.087048, 38.461052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148073, -0.763699, -0.628361,
		-0.457056, -0.510599, 0.728278,
		-0.877026, 0.395034, -0.273447,
		44.644218, 37.205559, 38.379017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813538, 36.319855, 38.507961>,  <45.258137, 36.929035, 38.570431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813538, 36.319855, 38.507961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.651115, 36.624966, 38.306644>,  <44.553661, 36.808033, 38.185856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.651115, 36.624966, 38.306644>,  <44.813538, 36.319855, 38.507961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651115, 36.624966, 38.306644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194311, -0.610206, -0.768044,
		-0.892953, -0.214071, 0.395990,
		-0.406052, 0.762773, -0.503289,
		44.529301, 36.853798, 38.155659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321018, 36.100227, 38.151638>,  <44.813538, 36.319855, 38.507961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321018, 36.100227, 38.151638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.395439, 36.432003, 37.940956>,  <44.440090, 36.631069, 37.814545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.395439, 36.432003, 37.940956>,  <44.321018, 36.100227, 38.151638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395439, 36.432003, 37.940956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038503, -0.529501, -0.847435,
		-0.981786, 0.177944, -0.066577,
		0.186049, 0.829436, -0.526708,
		44.451252, 36.680836, 37.782944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792686, 36.087666, 37.664265>,  <44.321018, 36.100227, 38.151638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792686, 36.087666, 37.664265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101173, 36.297756, 37.520397>,  <44.286266, 36.423809, 37.434078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101173, 36.297756, 37.520397>,  <43.792686, 36.087666, 37.664265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101173, 36.297756, 37.520397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004822, -0.569814, -0.821760,
		-0.636555, 0.632020, -0.441983,
		0.771216, 0.525226, -0.359670,
		44.332539, 36.455322, 37.412495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561108, 36.263313, 37.007633>,  <43.792686, 36.087666, 37.664265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561108, 36.263313, 37.007633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961067, 36.266785, 37.003151>,  <44.201042, 36.268867, 37.000462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961067, 36.266785, 37.003151>,  <43.561108, 36.263313, 37.007633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961067, 36.266785, 37.003151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004783, -0.537974, -0.842948,
		-0.013344, 0.842917, -0.537878,
		0.999900, 0.008676, -0.011210,
		44.261036, 36.269386, 36.999786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659851, 36.116844, 36.310322>,  <43.561108, 36.263313, 37.007633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659851, 36.116844, 36.310322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029839, 36.080315, 36.457882>,  <44.251831, 36.058395, 36.546417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029839, 36.080315, 36.457882>,  <43.659851, 36.116844, 36.310322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029839, 36.080315, 36.457882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343843, -0.212329, -0.914707,
		0.161867, 0.972921, -0.164996,
		0.924971, -0.091328, 0.368901,
		44.307331, 36.052917, 36.568554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001579, 36.485886, 35.835171>,  <43.659851, 36.116844, 36.310322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001579, 36.485886, 35.835171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241890, 36.228592, 36.025043>,  <44.386078, 36.074215, 36.138966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241890, 36.228592, 36.025043>,  <44.001579, 36.485886, 35.835171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241890, 36.228592, 36.025043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179192, -0.470318, -0.864113,
		0.779074, 0.604199, -0.167295,
		0.600778, -0.643230, 0.474680,
		44.422123, 36.035622, 36.167446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498466, 36.498829, 35.433544>,  <44.001579, 36.485886, 35.835171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498466, 36.498829, 35.433544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544365, 36.156902, 35.635979>,  <44.571903, 35.951748, 35.757439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544365, 36.156902, 35.635979>,  <44.498466, 36.498829, 35.433544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544365, 36.156902, 35.635979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307364, -0.453903, -0.836361,
		0.944648, 0.251524, 0.210655,
		0.114748, -0.854815, 0.506088,
		44.578789, 35.900459, 35.787804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215080, 36.222115, 35.384087>,  <44.498466, 36.498829, 35.433544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215080, 36.222115, 35.384087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954258, 35.926582, 35.452141>,  <44.797764, 35.749264, 35.492973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954258, 35.926582, 35.452141>,  <45.215080, 36.222115, 35.384087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954258, 35.926582, 35.452141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249119, -0.420732, -0.872310,
		0.716071, -0.526414, 0.458399,
		-0.652059, -0.738832, 0.170134,
		44.758640, 35.704933, 35.503181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842804, 36.028309, 35.355057>,  <45.215080, 36.222115, 35.384087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842804, 36.028309, 35.355057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175201, 36.216682, 35.236622>,  <46.374641, 36.329704, 35.165558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175201, 36.216682, 35.236622>,  <45.842804, 36.028309, 35.355057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175201, 36.216682, 35.236622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269261, 0.806285, 0.526691,
		0.486769, -0.357953, 0.796822,
		0.830996, 0.470930, -0.296092,
		46.424500, 36.357960, 35.147793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.154095, 36.351109, 35.959599>,  <45.842804, 36.028309, 35.355057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.154095, 36.351109, 35.959599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324406, 36.532539, 35.646427>,  <46.426590, 36.641399, 35.458523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324406, 36.532539, 35.646427>,  <46.154095, 36.351109, 35.959599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324406, 36.532539, 35.646427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041412, 0.854607, 0.517622,
		0.903882, -0.252812, 0.345085,
		0.425773, 0.453578, -0.782933,
		46.452137, 36.668613, 35.411549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761120, 36.789658, 36.245464>,  <46.154095, 36.351109, 35.959599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761120, 36.789658, 36.245464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652073, 36.922947, 35.884434>,  <46.586643, 37.002922, 35.667816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652073, 36.922947, 35.884434>,  <46.761120, 36.789658, 36.245464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652073, 36.922947, 35.884434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166645, 0.940283, 0.296810,
		0.947581, -0.069495, -0.311866,
		-0.272616, 0.333223, -0.902576,
		46.570290, 37.022915, 35.613663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.168522, 37.308254, 36.128094>,  <46.761120, 36.789658, 36.245464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.168522, 37.308254, 36.128094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.882645, 37.385124, 35.859089>,  <46.711117, 37.431248, 35.697685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.882645, 37.385124, 35.859089>,  <47.168522, 37.308254, 36.128094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.882645, 37.385124, 35.859089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070775, 0.976449, 0.203811,
		0.695844, 0.098065, -0.711466,
		-0.714697, 0.192175, -0.672515,
		46.668236, 37.442776, 35.657333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352829, 37.920212, 35.779137>,  <47.168522, 37.308254, 36.128094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352829, 37.920212, 35.779137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.958229, 37.913754, 35.713955>,  <46.721470, 37.909878, 35.674847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.958229, 37.913754, 35.713955>,  <47.352829, 37.920212, 35.779137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958229, 37.913754, 35.713955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048085, 0.979821, 0.194008,
		0.156532, 0.199225, -0.967371,
		-0.986502, -0.016148, -0.162953,
		46.662277, 37.908909, 35.665070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258152, 38.509708, 35.470268>,  <47.352829, 37.920212, 35.779137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258152, 38.509708, 35.470268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893265, 38.411457, 35.601437>,  <46.674332, 38.352509, 35.680138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893265, 38.411457, 35.601437>,  <47.258152, 38.509708, 35.470268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893265, 38.411457, 35.601437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144231, 0.941656, 0.304107,
		-0.383489, 0.230114, -0.894418,
		-0.912214, -0.245624, 0.327925,
		46.619602, 38.337769, 35.699814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829884, 39.051010, 35.223278>,  <47.258152, 38.509708, 35.470268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829884, 39.051010, 35.223278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.644657, 38.899593, 35.543846>,  <46.533520, 38.808743, 35.736187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.644657, 38.899593, 35.543846>,  <46.829884, 39.051010, 35.223278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.644657, 38.899593, 35.543846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074505, 0.917631, 0.390388,
		-0.883187, 0.121066, -0.453128,
		-0.463066, -0.378546, 0.801419,
		46.505737, 38.786030, 35.784271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466351, 39.600700, 35.440315>,  <46.829884, 39.051010, 35.223278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466351, 39.600700, 35.440315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.422832, 39.369949, 35.764137>,  <46.396721, 39.231499, 35.958431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.422832, 39.369949, 35.764137>,  <46.466351, 39.600700, 35.440315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422832, 39.369949, 35.764137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084910, 0.816802, 0.570635,
		-0.990431, -0.006654, -0.137850,
		-0.108799, -0.576880, 0.809551,
		46.390194, 39.196884, 36.007004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008644, 39.880791, 35.824707>,  <46.466351, 39.600700, 35.440315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008644, 39.880791, 35.824707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211559, 39.662800, 36.091740>,  <46.333309, 39.532005, 36.251957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211559, 39.662800, 36.091740>,  <46.008644, 39.880791, 35.824707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211559, 39.662800, 36.091740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078206, 0.742345, 0.665438,
		-0.858220, -0.389778, 0.333963,
		0.507289, -0.544975, 0.667578,
		46.363747, 39.499306, 36.292011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614086, 40.007881, 36.443604>,  <46.008644, 39.880791, 35.824707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614086, 40.007881, 36.443604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967361, 39.862007, 36.561573>,  <46.179329, 39.774483, 36.632355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967361, 39.862007, 36.561573>,  <45.614086, 40.007881, 36.443604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967361, 39.862007, 36.561573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040951, 0.686371, 0.726098,
		-0.467222, -0.629206, 0.621131,
		0.883191, -0.364685, 0.294921,
		46.232319, 39.752602, 36.650051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595646, 40.002350, 37.173203>,  <45.614086, 40.007881, 36.443604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595646, 40.002350, 37.173203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.980835, 39.986729, 37.066494>,  <46.211948, 39.977356, 37.002468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.980835, 39.986729, 37.066494>,  <45.595646, 40.002350, 37.173203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980835, 39.986729, 37.066494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242849, 0.555423, 0.795317,
		0.117110, -0.830650, 0.544340,
		0.962969, -0.039053, -0.266769,
		46.269726, 39.975014, 36.986462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973057, 39.908470, 37.812378>,  <45.595646, 40.002350, 37.173203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973057, 39.908470, 37.812378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.249783, 40.041428, 37.555969>,  <46.415817, 40.121201, 37.402122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.249783, 40.041428, 37.555969>,  <45.973057, 39.908470, 37.812378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249783, 40.041428, 37.555969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379293, 0.588127, 0.714314,
		0.614436, -0.737306, 0.280799,
		0.691814, 0.332395, -0.641021,
		46.457329, 40.141144, 37.363663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517918, 39.857891, 38.160248>,  <45.973057, 39.908470, 37.812378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517918, 39.857891, 38.160248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.590210, 40.144646, 37.890907>,  <46.633587, 40.316700, 37.729301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.590210, 40.144646, 37.890907>,  <46.517918, 39.857891, 38.160248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590210, 40.144646, 37.890907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390948, 0.575855, 0.718018,
		0.902493, -0.393018, -0.176188,
		0.180736, 0.716887, -0.673355,
		46.644432, 40.359711, 37.688900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219116, 40.208267, 38.318199>,  <46.517918, 39.857891, 38.160248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219116, 40.208267, 38.318199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.061314, 40.473179, 38.063404>,  <46.966633, 40.632126, 37.910526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.061314, 40.473179, 38.063404>,  <47.219116, 40.208267, 38.318199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.061314, 40.473179, 38.063404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330679, 0.749091, 0.574034,
		0.857330, 0.015823, -0.514524,
		-0.394508, 0.662278, -0.636986,
		46.942963, 40.671864, 37.872307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.797985, 40.759705, 38.250023>,  <47.219116, 40.208267, 38.318199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.797985, 40.759705, 38.250023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.449848, 40.917828, 38.132557>,  <47.240967, 41.012703, 38.062077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.449848, 40.917828, 38.132557>,  <47.797985, 40.759705, 38.250023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.449848, 40.917828, 38.132557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216813, 0.843026, 0.492240,
		0.442157, 0.364745, -0.819426,
		-0.870339, 0.395309, -0.293669,
		47.188747, 41.036419, 38.044456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.043446, 41.375614, 38.031181>,  <47.797985, 40.759705, 38.250023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.043446, 41.375614, 38.031181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.647202, 41.395882, 38.081974>,  <47.409454, 41.408043, 38.112450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.647202, 41.395882, 38.081974>,  <48.043446, 41.375614, 38.031181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.647202, 41.395882, 38.081974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110634, 0.842750, 0.526813,
		-0.080317, 0.535915, -0.840443,
		-0.990611, 0.050670, 0.126978,
		47.350018, 41.411083, 38.120068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898922, 42.105259, 38.081329>,  <48.043446, 41.375614, 38.031181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898922, 42.105259, 38.081329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.571945, 41.932285, 38.233536>,  <47.375759, 41.828503, 38.324860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.571945, 41.932285, 38.233536>,  <47.898922, 42.105259, 38.081329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571945, 41.932285, 38.233536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050130, 0.604689, 0.794883,
		-0.573824, 0.668846, -0.472621,
		-0.817443, -0.432430, 0.380514,
		47.326714, 41.802555, 38.347691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381149, 42.668552, 38.143295>,  <47.898922, 42.105259, 38.081329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381149, 42.668552, 38.143295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.322086, 42.380119, 38.414066>,  <47.286648, 42.207058, 38.576530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.322086, 42.380119, 38.414066>,  <47.381149, 42.668552, 38.143295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322086, 42.380119, 38.414066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166536, 0.692786, 0.701651,
		-0.974917, -0.009132, -0.222379,
		-0.147654, -0.721086, 0.676929,
		47.277790, 42.163795, 38.617146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.011417, 43.123798, 38.589226>,  <47.381149, 42.668552, 38.143295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.011417, 43.123798, 38.589226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.058067, 42.794350, 38.811237>,  <47.086060, 42.596680, 38.944443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.058067, 42.794350, 38.811237>,  <47.011417, 43.123798, 38.589226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058067, 42.794350, 38.811237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270150, 0.511460, 0.815737,
		-0.955729, -0.245077, -0.162849,
		0.116628, -0.823617, 0.555025,
		47.093056, 42.547264, 38.977745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517021, 43.191452, 39.016636>,  <47.011417, 43.123798, 38.589226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517021, 43.191452, 39.016636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.756233, 42.926964, 39.197803>,  <46.899761, 42.768269, 39.306503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.756233, 42.926964, 39.197803>,  <46.517021, 43.191452, 39.016636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756233, 42.926964, 39.197803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128564, 0.478650, 0.868542,
		-0.791092, -0.577647, 0.201239,
		0.598034, -0.661224, 0.452921,
		46.935642, 42.728596, 39.333679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215328, 43.086670, 39.656551>,  <46.517021, 43.191452, 39.016636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215328, 43.086670, 39.656551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.597485, 42.976322, 39.698730>,  <46.826778, 42.910114, 39.724037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.597485, 42.976322, 39.698730>,  <46.215328, 43.086670, 39.656551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597485, 42.976322, 39.698730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020192, 0.417227, 0.908578,
		-0.294648, -0.865919, 0.404186,
		0.955393, -0.275872, 0.105450,
		46.884102, 42.893562, 39.730366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.051762, 38.170849, 39.505798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705822, 37.985142, 39.582207>,  <40.498257, 37.873718, 39.628052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705822, 37.985142, 39.582207>,  <41.051762, 38.170849, 39.505798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705822, 37.985142, 39.582207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047324, -0.454198, -0.889643,
		0.499793, -0.760369, 0.414785,
		-0.864851, -0.464267, 0.191021,
		40.446365, 37.845863, 39.639515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167225, 37.457577, 39.276123>,  <41.051762, 38.170849, 39.505798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167225, 37.457577, 39.276123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770123, 37.502499, 39.293186>,  <40.531860, 37.529449, 39.303425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770123, 37.502499, 39.293186>,  <41.167225, 37.457577, 39.276123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770123, 37.502499, 39.293186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093001, -0.493714, -0.864637,
		-0.076039, -0.862343, 0.500582,
		-0.992758, 0.112301, 0.042657,
		40.472294, 37.536190, 39.305984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855183, 36.795704, 39.030197>,  <41.167225, 37.457577, 39.276123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855183, 36.795704, 39.030197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569065, 37.070648, 38.979755>,  <40.397396, 37.235615, 38.949490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569065, 37.070648, 38.979755>,  <40.855183, 36.795704, 39.030197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569065, 37.070648, 38.979755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240612, -0.411656, -0.879002,
		-0.656100, -0.598398, 0.459840,
		-0.715289, 0.687357, -0.126106,
		40.354477, 37.276855, 38.941925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382355, 36.438126, 38.615875>,  <40.855183, 36.795704, 39.030197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382355, 36.438126, 38.615875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269485, 36.821178, 38.592800>,  <40.201763, 37.051010, 38.578957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269485, 36.821178, 38.592800>,  <40.382355, 36.438126, 38.615875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269485, 36.821178, 38.592800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195620, -0.116302, -0.973759,
		-0.939208, -0.263483, 0.220148,
		-0.282173, 0.957628, -0.057689,
		40.184834, 37.108467, 38.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741104, 36.461632, 38.327389>,  <40.382355, 36.438126, 38.615875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741104, 36.461632, 38.327389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894543, 36.822479, 38.248356>,  <39.986607, 37.038986, 38.200935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894543, 36.822479, 38.248356>,  <39.741104, 36.461632, 38.327389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894543, 36.822479, 38.248356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113775, -0.166154, -0.979514,
		-0.916465, 0.398219, 0.038902,
		0.383598, 0.902117, -0.197582,
		40.009621, 37.093113, 38.189083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449162, 36.579483, 37.714096>,  <39.741104, 36.461632, 38.327389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449162, 36.579483, 37.714096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717091, 36.876347, 37.723427>,  <39.877850, 37.054462, 37.729023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717091, 36.876347, 37.723427>,  <39.449162, 36.579483, 37.714096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717091, 36.876347, 37.723427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087870, 0.110419, -0.989993,
		-0.737303, 0.661071, 0.139175,
		0.669823, 0.742154, 0.023324,
		39.918037, 37.098991, 37.730423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252350, 37.077496, 37.258255>,  <39.449162, 36.579483, 37.714096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252350, 37.077496, 37.258255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643898, 37.158310, 37.245636>,  <39.878826, 37.206799, 37.238064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643898, 37.158310, 37.245636>,  <39.252350, 37.077496, 37.258255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643898, 37.158310, 37.245636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036769, 0.022158, -0.999078,
		-0.201147, 0.979128, 0.029118,
		0.978871, 0.202032, -0.031544,
		39.937561, 37.218918, 37.236172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290516, 37.737492, 36.888744>,  <39.252350, 37.077496, 37.258255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290516, 37.737492, 36.888744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633530, 37.531826, 36.882168>,  <39.839336, 37.408428, 36.878223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633530, 37.531826, 36.882168>,  <39.290516, 37.737492, 36.888744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633530, 37.531826, 36.882168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010105, 0.015108, -0.999835,
		0.514328, 0.857558, 0.007760,
		0.857534, -0.514165, -0.016437,
		39.890789, 37.377575, 36.877235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484741, 38.005558, 36.240906>,  <39.290516, 37.737492, 36.888744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484741, 38.005558, 36.240906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682243, 37.671253, 36.336994>,  <39.800743, 37.470669, 36.394646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682243, 37.671253, 36.336994>,  <39.484741, 38.005558, 36.240906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682243, 37.671253, 36.336994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229847, -0.140992, -0.962960,
		0.838675, 0.530682, 0.122481,
		0.493756, -0.835762, 0.240222,
		39.830372, 37.420525, 36.409061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995525, 38.062244, 35.782452>,  <39.484741, 38.005558, 36.240906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995525, 38.062244, 35.782452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051422, 37.689365, 35.916004>,  <40.084961, 37.465637, 35.996136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051422, 37.689365, 35.916004>,  <39.995525, 38.062244, 35.782452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051422, 37.689365, 35.916004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105182, -0.321307, -0.941115,
		0.984586, 0.166630, 0.053151,
		0.139740, -0.932200, 0.333881,
		40.093346, 37.409706, 36.016167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598923, 37.849480, 35.437183>,  <39.995525, 38.062244, 35.782452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598923, 37.849480, 35.437183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410053, 37.521179, 35.565823>,  <40.296734, 37.324200, 35.643005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410053, 37.521179, 35.565823>,  <40.598923, 37.849480, 35.437183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410053, 37.521179, 35.565823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014921, -0.372219, -0.928025,
		0.881381, -0.433386, 0.187997,
		-0.472169, -0.820749, 0.321600,
		40.268402, 37.274956, 35.662304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972149, 37.359554, 35.202908>,  <40.598923, 37.849480, 35.437183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972149, 37.359554, 35.202908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599167, 37.220432, 35.242001>,  <40.375378, 37.136959, 35.265457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599167, 37.220432, 35.242001>,  <40.972149, 37.359554, 35.202908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599167, 37.220432, 35.242001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017024, -0.227932, -0.973528,
		0.360875, -0.909439, 0.206616,
		-0.932459, -0.347805, 0.097737,
		40.319427, 37.116093, 35.271320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845165, 36.613396, 35.040791>,  <40.972149, 37.359554, 35.202908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845165, 36.613396, 35.040791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521214, 36.839081, 34.976585>,  <40.326843, 36.974491, 34.938065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521214, 36.839081, 34.976585>,  <40.845165, 36.613396, 35.040791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521214, 36.839081, 34.976585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003020, -0.269615, -0.962963,
		-0.586590, -0.780368, 0.216652,
		-0.809879, 0.564210, -0.160510,
		40.278252, 37.008343, 34.928432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461712, 36.231617, 34.631073>,  <40.845165, 36.613396, 35.040791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461712, 36.231617, 34.631073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368225, 36.615284, 34.567345>,  <40.312134, 36.845482, 34.529106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368225, 36.615284, 34.567345>,  <40.461712, 36.231617, 34.631073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368225, 36.615284, 34.567345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057754, -0.149875, -0.987017,
		-0.970588, -0.239883, -0.020367,
		-0.233716, 0.959163, -0.159321,
		40.298111, 36.903034, 34.519547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698513, 35.710377, 35.153240>,  <40.461712, 36.231617, 34.631073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698513, 35.710377, 35.153240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907463, 35.381699, 35.244411>,  <41.032833, 35.184494, 35.299114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907463, 35.381699, 35.244411>,  <40.698513, 35.710377, 35.153240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907463, 35.381699, 35.244411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783303, -0.356751, 0.509082,
		-0.336995, -0.444466, -0.829990,
		0.522370, -0.821692, 0.227929,
		41.064175, 35.135193, 35.312790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273235, 35.189220, 35.029106>,  <40.698513, 35.710377, 35.153240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273235, 35.189220, 35.029106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549011, 35.053013, 35.284832>,  <40.714478, 34.971287, 35.438267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549011, 35.053013, 35.284832>,  <40.273235, 35.189220, 35.029106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549011, 35.053013, 35.284832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721628, -0.399241, 0.565561,
		0.062656, -0.851266, -0.520980,
		0.689439, -0.340518, 0.639313,
		40.755844, 34.950859, 35.476627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025776, 34.598446, 35.147274>,  <40.273235, 35.189220, 35.029106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025776, 34.598446, 35.147274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255726, 34.705902, 35.456429>,  <40.393696, 34.770378, 35.641922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255726, 34.705902, 35.456429>,  <40.025776, 34.598446, 35.147274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255726, 34.705902, 35.456429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719405, -0.284084, 0.633840,
		0.389843, -0.920394, 0.029952,
		0.574873, 0.268645, 0.772884,
		40.428188, 34.786495, 35.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759464, 34.147926, 35.720974>,  <40.025776, 34.598446, 35.147274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759464, 34.147926, 35.720974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005692, 34.363945, 35.950558>,  <40.153427, 34.493557, 36.088306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005692, 34.363945, 35.950558>,  <39.759464, 34.147926, 35.720974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005692, 34.363945, 35.950558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486337, -0.312761, 0.815878,
		0.620122, -0.781365, 0.070119,
		0.615568, 0.540045, 0.573957,
		40.190361, 34.525959, 36.122746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916805, 33.749336, 36.358818>,  <39.759464, 34.147926, 35.720974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916805, 33.749336, 36.358818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020962, 34.124924, 36.448730>,  <40.083454, 34.350277, 36.502678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020962, 34.124924, 36.448730>,  <39.916805, 33.749336, 36.358818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020962, 34.124924, 36.448730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371702, -0.117382, 0.920901,
		0.891087, -0.323346, 0.318453,
		0.260389, 0.938972, 0.224786,
		40.099079, 34.406616, 36.516167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212311, 33.693741, 37.031017>,  <39.916805, 33.749336, 36.358818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212311, 33.693741, 37.031017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071766, 34.063122, 36.969345>,  <39.987438, 34.284752, 36.932343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071766, 34.063122, 36.969345>,  <40.212311, 33.693741, 37.031017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071766, 34.063122, 36.969345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384198, 0.007958, 0.923216,
		0.853777, 0.383622, 0.351994,
		-0.351365, 0.923456, -0.154181,
		39.966358, 34.340160, 36.923092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376488, 34.072010, 37.625912>,  <40.212311, 33.693741, 37.031017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376488, 34.072010, 37.625912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068005, 34.271320, 37.467438>,  <39.882915, 34.390907, 37.372353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068005, 34.271320, 37.467438>,  <40.376488, 34.072010, 37.625912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068005, 34.271320, 37.467438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323435, 0.229338, 0.918038,
		0.548297, 0.836136, -0.015706,
		-0.771207, 0.498278, -0.396181,
		39.836643, 34.420803, 37.348583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327717, 34.623314, 38.080921>,  <40.376488, 34.072010, 37.625912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327717, 34.623314, 38.080921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981831, 34.650356, 37.881847>,  <39.774300, 34.666580, 37.762402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981831, 34.650356, 37.881847>,  <40.327717, 34.623314, 38.080921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981831, 34.650356, 37.881847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479250, 0.185417, 0.857869,
		0.150276, 0.980332, -0.127933,
		-0.864718, 0.067605, -0.497688,
		39.722416, 34.670639, 37.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016094, 35.152462, 38.446949>,  <40.327717, 34.623314, 38.080921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016094, 35.152462, 38.446949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727970, 34.948822, 38.258495>,  <39.555096, 34.826637, 38.145424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727970, 34.948822, 38.258495>,  <40.016094, 35.152462, 38.446949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727970, 34.948822, 38.258495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614781, 0.154005, 0.773516,
		-0.321240, 0.846817, -0.423917,
		-0.720311, -0.509101, -0.471135,
		39.511875, 34.796093, 38.117153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418003, 35.631088, 38.442986>,  <40.016094, 35.152462, 38.446949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418003, 35.631088, 38.442986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296566, 35.251225, 38.412056>,  <39.223705, 35.023308, 38.393497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296566, 35.251225, 38.412056>,  <39.418003, 35.631088, 38.442986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296566, 35.251225, 38.412056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684142, 0.160787, 0.711405,
		-0.663160, 0.268875, -0.698516,
		-0.303591, -0.949660, -0.077321,
		39.205490, 34.966328, 38.388859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690041, 35.657734, 38.376663>,  <39.418003, 35.631088, 38.442986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690041, 35.657734, 38.376663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787823, 35.305141, 38.538269>,  <38.846493, 35.093586, 38.635235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787823, 35.305141, 38.538269>,  <38.690041, 35.657734, 38.376663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787823, 35.305141, 38.538269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652174, 0.158873, 0.741235,
		-0.717572, -0.444691, -0.536041,
		0.244458, -0.881481, 0.404019,
		38.861160, 35.040695, 38.659473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085136, 35.519836, 38.744751>,  <38.690041, 35.657734, 38.376663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085136, 35.519836, 38.744751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338905, 35.249683, 38.895149>,  <38.491165, 35.087593, 38.985386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338905, 35.249683, 38.895149>,  <38.085136, 35.519836, 38.744751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338905, 35.249683, 38.895149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467608, 0.051997, 0.882405,
		-0.615513, -0.735631, -0.282827,
		0.634418, -0.675384, 0.375992,
		38.529232, 35.047070, 39.007946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702877, 35.106236, 39.165565>,  <38.085136, 35.519836, 38.744751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702877, 35.106236, 39.165565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077259, 35.025593, 39.281040>,  <38.301888, 34.977207, 39.350327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077259, 35.025593, 39.281040>,  <37.702877, 35.106236, 39.165565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077259, 35.025593, 39.281040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298158, -0.017615, 0.954354,
		-0.187321, -0.979308, -0.076598,
		0.935955, -0.201609, 0.288689,
		38.358047, 34.965111, 39.367645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644444, 34.487900, 39.672039>,  <37.702877, 35.106236, 39.165565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644444, 34.487900, 39.672039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964680, 34.722908, 39.719143>,  <38.156822, 34.863914, 39.747406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964680, 34.722908, 39.719143>,  <37.644444, 34.487900, 39.672039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964680, 34.722908, 39.719143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292157, 0.211155, 0.932769,
		0.523159, -0.781172, 0.340699,
		0.800593, 0.587524, 0.117757,
		38.204857, 34.899166, 39.754471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247204, 33.972404, 39.965611>,  <37.644444, 34.487900, 39.672039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247204, 33.972404, 39.965611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917984, 33.870663, 40.168743>,  <36.720451, 33.809620, 40.290623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917984, 33.870663, 40.168743>,  <37.247204, 33.972404, 39.965611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917984, 33.870663, 40.168743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500123, -0.099204, -0.860253,
		0.269185, -0.962011, -0.045557,
		-0.823053, -0.254351, 0.507828,
		36.671066, 33.794357, 40.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028912, 33.285534, 39.738811>,  <37.247204, 33.972404, 39.965611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028912, 33.285534, 39.738811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712219, 33.482220, 39.883797>,  <36.522202, 33.600231, 39.970787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712219, 33.482220, 39.883797>,  <37.028912, 33.285534, 39.738811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712219, 33.482220, 39.883797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438814, -0.045005, -0.897450,
		-0.424973, -0.869594, 0.251402,
		-0.791732, 0.491711, 0.362464,
		36.474701, 33.629734, 39.992535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431686, 32.801609, 39.611950>,  <37.028912, 33.285534, 39.738811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431686, 32.801609, 39.611950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263889, 33.162354, 39.653263>,  <36.163212, 33.378799, 39.678051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263889, 33.162354, 39.653263>,  <36.431686, 32.801609, 39.611950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263889, 33.162354, 39.653263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551815, -0.163006, -0.817881,
		-0.720783, -0.400085, 0.566042,
		-0.419490, 0.901865, 0.103281,
		36.138042, 33.432915, 39.684246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666191, 32.690159, 39.502396>,  <36.431686, 32.801609, 39.611950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666191, 32.690159, 39.502396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722664, 33.083809, 39.459381>,  <35.756550, 33.320000, 39.433571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722664, 33.083809, 39.459381>,  <35.666191, 32.690159, 39.502396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722664, 33.083809, 39.459381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634695, 0.006615, -0.772735,
		-0.759756, 0.177353, 0.625553,
		0.141184, 0.984125, -0.107539,
		35.765018, 33.379047, 39.427120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972660, 33.049431, 39.407417>,  <35.666191, 32.690159, 39.502396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972660, 33.049431, 39.407417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261189, 33.269405, 39.239002>,  <35.434307, 33.401390, 39.137955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261189, 33.269405, 39.239002>,  <34.972660, 33.049431, 39.407417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261189, 33.269405, 39.239002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487784, -0.028199, -0.872509,
		-0.491693, 0.834733, 0.247907,
		0.721321, 0.549932, -0.421035,
		35.477585, 33.434383, 39.112690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539848, 33.393379, 38.985771>,  <34.972660, 33.049431, 39.407417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539848, 33.393379, 38.985771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911968, 33.463463, 38.856876>,  <35.135242, 33.505512, 38.779541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911968, 33.463463, 38.856876>,  <34.539848, 33.393379, 38.985771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911968, 33.463463, 38.856876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347807, 0.142429, -0.926684,
		-0.116463, 0.974175, 0.193440,
		0.930304, 0.175204, -0.322237,
		35.191059, 33.516026, 38.760204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470074, 33.954563, 38.470612>,  <34.539848, 33.393379, 38.985771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470074, 33.954563, 38.470612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825642, 33.791134, 38.387764>,  <35.038982, 33.693077, 38.338055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825642, 33.791134, 38.387764>,  <34.470074, 33.954563, 38.470612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825642, 33.791134, 38.387764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188180, 0.086520, -0.978316,
		0.417629, 0.908618, 0.000024,
		0.888918, -0.408569, -0.207116,
		35.092316, 33.668564, 38.325630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690544, 34.286282, 37.930832>,  <34.470074, 33.954563, 38.470612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690544, 34.286282, 37.930832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902462, 33.947105, 37.923794>,  <35.029613, 33.743599, 37.919571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902462, 33.947105, 37.923794>,  <34.690544, 34.286282, 37.930832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902462, 33.947105, 37.923794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018516, 0.009175, -0.999786,
		0.847924, 0.530006, -0.010840,
		0.529793, -0.847944, -0.017594,
		35.061401, 33.692722, 37.918514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229156, 34.460331, 37.489452>,  <34.690544, 34.286282, 37.930832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229156, 34.460331, 37.489452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176674, 34.063942, 37.500488>,  <35.145184, 33.826107, 37.507111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176674, 34.063942, 37.500488>,  <35.229156, 34.460331, 37.489452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176674, 34.063942, 37.500488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114582, -0.012482, -0.993335,
		0.984711, -0.133491, -0.111910,
		-0.131205, -0.990971, 0.027587,
		35.137314, 33.766651, 37.508766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581356, 34.225098, 36.926418>,  <35.229156, 34.460331, 37.489452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581356, 34.225098, 36.926418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318146, 33.938488, 37.019020>,  <35.160221, 33.766521, 37.074581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318146, 33.938488, 37.019020>,  <35.581356, 34.225098, 36.926418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318146, 33.938488, 37.019020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259276, -0.073038, -0.963038,
		0.706952, -0.693724, -0.137718,
		-0.658024, -0.716528, 0.231501,
		35.120739, 33.723530, 37.088470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618534, 33.774338, 36.411701>,  <35.581356, 34.225098, 36.926418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618534, 33.774338, 36.411701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267262, 33.664127, 36.568100>,  <35.056496, 33.598000, 36.661938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267262, 33.664127, 36.568100>,  <35.618534, 33.774338, 36.411701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267262, 33.664127, 36.568100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376633, -0.105574, -0.920327,
		0.294855, -0.955478, -0.011060,
		-0.878185, -0.275528, 0.390994,
		35.003807, 33.581470, 36.685398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333012, 33.123318, 36.122116>,  <35.618534, 33.774338, 36.411701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333012, 33.123318, 36.122116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007587, 33.319122, 36.247658>,  <34.812332, 33.436604, 36.322983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007587, 33.319122, 36.247658>,  <35.333012, 33.123318, 36.122116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007587, 33.319122, 36.247658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390334, -0.059681, -0.918737,
		-0.431000, -0.869953, 0.239626,
		-0.813559, 0.489509, 0.313850,
		34.763519, 33.465973, 36.341812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.723228, 33.928078, 43.799202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373100, 34.104515, 43.878445>,  <37.163021, 34.210377, 43.925991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373100, 34.104515, 43.878445>,  <37.723228, 33.928078, 43.799202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373100, 34.104515, 43.878445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401947, -0.436011, -0.805191,
		-0.268790, -0.784430, 0.558947,
		-0.875323, 0.441094, 0.198104,
		37.110504, 34.236843, 43.937878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116413, 33.404839, 43.829212>,  <37.723228, 33.928078, 43.799202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116413, 33.404839, 43.829212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.966553, 33.766033, 43.745056>,  <36.876637, 33.982750, 43.694565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.966553, 33.766033, 43.745056>,  <37.116413, 33.404839, 43.829212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966553, 33.766033, 43.745056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365247, -0.352302, -0.861672,
		-0.852194, -0.245979, 0.461800,
		-0.374646, 0.902983, -0.210386,
		36.854160, 34.036926, 43.681942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416424, 33.340862, 43.593143>,  <37.116413, 33.404839, 43.829212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416424, 33.340862, 43.593143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.578991, 33.678806, 43.453987>,  <36.676533, 33.881573, 43.370495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.578991, 33.678806, 43.453987>,  <36.416424, 33.340862, 43.593143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578991, 33.678806, 43.453987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272015, -0.251604, -0.928818,
		-0.872255, 0.472123, 0.127559,
		0.406422, 0.844864, -0.347888,
		36.700916, 33.932266, 43.349621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046509, 33.373932, 43.003231>,  <36.416424, 33.340862, 43.593143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046509, 33.373932, 43.003231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316711, 33.662048, 42.940147>,  <36.478832, 33.834919, 42.902298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316711, 33.662048, 42.940147>,  <36.046509, 33.373932, 43.003231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316711, 33.662048, 42.940147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135526, -0.088951, -0.986773,
		-0.724791, 0.687946, 0.037531,
		0.675508, 0.720290, -0.157705,
		36.519363, 33.878136, 42.892838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780319, 33.767834, 42.507320>,  <36.046509, 33.373932, 43.003231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780319, 33.767834, 42.507320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173176, 33.842560, 42.498348>,  <36.408890, 33.887394, 42.492966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173176, 33.842560, 42.498348>,  <35.780319, 33.767834, 42.507320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173176, 33.842560, 42.498348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028112, 0.027798, -0.999218,
		-0.186045, 0.982002, 0.032553,
		0.982139, 0.186815, -0.022434,
		36.467819, 33.898605, 42.491619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910526, 34.273964, 42.075169>,  <35.780319, 33.767834, 42.507320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910526, 34.273964, 42.075169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.283508, 34.129608, 42.068367>,  <36.507298, 34.042995, 42.064285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.283508, 34.129608, 42.068367>,  <35.910526, 34.273964, 42.075169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283508, 34.129608, 42.068367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002251, 0.052879, -0.998598,
		0.361279, 0.931110, 0.050120,
		0.932455, -0.360885, -0.017009,
		36.563244, 34.021343, 42.063263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316139, 34.768688, 41.678783>,  <35.910526, 34.273964, 42.075169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316139, 34.768688, 41.678783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518673, 34.423988, 41.666016>,  <36.640194, 34.217171, 41.658356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518673, 34.423988, 41.666016>,  <36.316139, 34.768688, 41.678783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518673, 34.423988, 41.666016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024454, 0.022648, -0.999444,
		0.861990, 0.506835, -0.009606,
		0.506335, -0.861746, -0.031917,
		36.670574, 34.165466, 41.656441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812428, 34.898430, 41.080502>,  <36.316139, 34.768688, 41.678783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812428, 34.898430, 41.080502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753292, 34.511288, 41.161892>,  <36.717812, 34.279003, 41.210728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753292, 34.511288, 41.161892>,  <36.812428, 34.898430, 41.080502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753292, 34.511288, 41.161892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026798, -0.201746, -0.979071,
		0.988648, -0.150199, 0.003890,
		-0.147840, -0.967853, 0.203481,
		36.708939, 34.220932, 41.222935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208042, 34.548466, 40.540001>,  <36.812428, 34.898430, 41.080502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208042, 34.548466, 40.540001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.932228, 34.287094, 40.664948>,  <36.766739, 34.130272, 40.739918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.932228, 34.287094, 40.664948>,  <37.208042, 34.548466, 40.540001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932228, 34.287094, 40.664948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312285, -0.120904, -0.942263,
		0.653467, -0.747272, -0.120688,
		-0.689535, -0.653427, 0.312369,
		36.725368, 34.091064, 40.758659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874294, 34.391376, 40.514507>,  <37.208042, 34.548466, 40.540001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874294, 34.391376, 40.514507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077099, 34.700924, 40.362686>,  <38.198784, 34.886654, 40.271595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077099, 34.700924, 40.362686>,  <37.874294, 34.391376, 40.514507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077099, 34.700924, 40.362686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008811, 0.435672, 0.900062,
		0.861893, -0.459688, 0.214074,
		0.507014, 0.773871, -0.379553,
		38.229202, 34.933086, 40.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367962, 34.603443, 40.988182>,  <37.874294, 34.391376, 40.514507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367962, 34.603443, 40.988182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363335, 34.942707, 40.776340>,  <38.360558, 35.146267, 40.649235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363335, 34.942707, 40.776340>,  <38.367962, 34.603443, 40.988182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363335, 34.942707, 40.776340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085457, 0.526867, 0.845641,
		0.996275, 0.055044, 0.066385,
		-0.011571, 0.848164, -0.529608,
		38.359863, 35.197155, 40.617458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991055, 35.022991, 41.184879>,  <38.367962, 34.603443, 40.988182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991055, 35.022991, 41.184879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746120, 35.282074, 41.003544>,  <38.599159, 35.437523, 40.894745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746120, 35.282074, 41.003544>,  <38.991055, 35.022991, 41.184879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746120, 35.282074, 41.003544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084864, 0.623948, 0.776844,
		0.786028, 0.437219, -0.437035,
		-0.612338, 0.647710, -0.453337,
		38.562420, 35.476387, 40.867542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393330, 35.603054, 41.017601>,  <38.991055, 35.022991, 41.184879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393330, 35.603054, 41.017601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000721, 35.665710, 41.061573>,  <38.765156, 35.703304, 41.087955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000721, 35.665710, 41.061573>,  <39.393330, 35.603054, 41.017601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000721, 35.665710, 41.061573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172620, 0.476748, 0.861924,
		0.082607, 0.864971, -0.494977,
		-0.981518, 0.156644, 0.109928,
		38.706264, 35.712704, 41.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348866, 36.310600, 41.373775>,  <39.393330, 35.603054, 41.017601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348866, 36.310600, 41.373775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004295, 36.109051, 41.399254>,  <38.797554, 35.988121, 41.414543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004295, 36.109051, 41.399254>,  <39.348866, 36.310600, 41.373775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004295, 36.109051, 41.399254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062966, 0.230408, 0.971055,
		-0.503966, 0.832480, -0.230206,
		-0.861426, -0.503873, 0.063700,
		38.745869, 35.957890, 41.418365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906574, 36.877510, 41.619446>,  <39.348866, 36.310600, 41.373775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906574, 36.877510, 41.619446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718410, 36.534531, 41.702869>,  <38.605511, 36.328743, 41.752922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718410, 36.534531, 41.702869>,  <38.906574, 36.877510, 41.619446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718410, 36.534531, 41.702869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194720, 0.331375, 0.923187,
		-0.860696, 0.393666, -0.322845,
		-0.470410, -0.857448, 0.208558,
		38.577286, 36.277298, 41.765438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356834, 37.094341, 41.886723>,  <38.906574, 36.877510, 41.619446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356834, 37.094341, 41.886723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378319, 36.719398, 42.024403>,  <38.391209, 36.494431, 42.107010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378319, 36.719398, 42.024403>,  <38.356834, 37.094341, 41.886723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378319, 36.719398, 42.024403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169949, 0.331086, 0.928170,
		-0.983988, -0.108345, -0.141522,
		0.053706, -0.937360, 0.344198,
		38.394432, 36.438190, 42.127663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883263, 36.982265, 42.443157>,  <38.356834, 37.094341, 41.886723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883263, 36.982265, 42.443157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135948, 36.679272, 42.509075>,  <38.287560, 36.497475, 42.548626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135948, 36.679272, 42.509075>,  <37.883263, 36.982265, 42.443157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135948, 36.679272, 42.509075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003937, 0.209443, 0.977813,
		-0.775192, -0.618346, 0.129326,
		0.631714, -0.757483, 0.164793,
		38.325462, 36.452026, 42.558514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547104, 36.690365, 42.987820>,  <37.883263, 36.982265, 42.443157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547104, 36.690365, 42.987820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.923203, 36.554283, 42.982357>,  <38.148861, 36.472633, 42.979080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.923203, 36.554283, 42.982357>,  <37.547104, 36.690365, 42.987820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923203, 36.554283, 42.982357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039755, 0.069850, 0.996765,
		-0.338153, -0.937752, 0.079202,
		0.940251, -0.340208, -0.013660,
		38.205276, 36.452221, 42.978260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656769, 36.165932, 43.569641>,  <37.547104, 36.690365, 42.987820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656769, 36.165932, 43.569641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017567, 36.300758, 43.461723>,  <38.234047, 36.381653, 43.396973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017567, 36.300758, 43.461723>,  <37.656769, 36.165932, 43.569641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017567, 36.300758, 43.461723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261836, 0.069806, 0.962584,
		0.343288, -0.938890, -0.025292,
		0.901995, 0.337066, -0.269799,
		38.288166, 36.401878, 43.380783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103100, 35.834904, 44.078091>,  <37.656769, 36.165932, 43.569641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103100, 35.834904, 44.078091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276672, 36.164433, 43.932205>,  <38.380817, 36.362148, 43.844673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276672, 36.164433, 43.932205>,  <38.103100, 35.834904, 44.078091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276672, 36.164433, 43.932205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394644, 0.190103, 0.898953,
		0.809912, -0.534019, -0.242624,
		0.433935, 0.823823, -0.364714,
		38.406853, 36.411579, 43.822792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776173, 35.823589, 44.481239>,  <38.103100, 35.834904, 44.078091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776173, 35.823589, 44.481239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761765, 36.192890, 44.328236>,  <38.753120, 36.414471, 44.236435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761765, 36.192890, 44.328236>,  <38.776173, 35.823589, 44.481239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761765, 36.192890, 44.328236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454893, 0.355950, 0.816316,
		0.889817, -0.144595, -0.432802,
		-0.036020, 0.923251, -0.382506,
		38.750957, 36.469864, 44.213482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493992, 36.058521, 44.552917>,  <38.776173, 35.823589, 44.481239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493992, 36.058521, 44.552917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207298, 36.337410, 44.547600>,  <39.035282, 36.504745, 44.544411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207298, 36.337410, 44.547600>,  <39.493992, 36.058521, 44.552917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207298, 36.337410, 44.547600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355764, 0.381976, 0.852952,
		0.599774, 0.606608, -0.521821,
		-0.716730, 0.697224, -0.013290,
		38.992279, 36.546577, 44.543613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779495, 36.658848, 44.743858>,  <39.493992, 36.058521, 44.552917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779495, 36.658848, 44.743858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399807, 36.764751, 44.811832>,  <39.171993, 36.828293, 44.852615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399807, 36.764751, 44.811832>,  <39.779495, 36.658848, 44.743858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399807, 36.764751, 44.811832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293184, 0.548560, 0.783023,
		0.114093, 0.793086, -0.598329,
		-0.949224, 0.264758, 0.169933,
		39.115040, 36.844177, 44.862812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.113285, 38.838261, 44.782856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331963, 38.510319, 44.850929>,  <33.463169, 38.313553, 44.891773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331963, 38.510319, 44.850929>,  <33.113285, 38.838261, 44.782856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331963, 38.510319, 44.850929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075371, -0.154234, -0.985155,
		0.833936, 0.551402, -0.022525,
		0.546691, -0.819858, 0.170181,
		33.495968, 38.264362, 44.901985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732635, 38.937820, 44.418278>,  <33.113285, 38.838261, 44.782856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732635, 38.937820, 44.418278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.709064, 38.541431, 44.466457>,  <33.694923, 38.303600, 44.495365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.709064, 38.541431, 44.466457>,  <33.732635, 38.937820, 44.418278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709064, 38.541431, 44.466457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119411, -0.126793, -0.984715,
		0.991095, -0.043642, 0.125804,
		-0.058926, -0.990968, 0.120453,
		33.691387, 38.244141, 44.502594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278111, 38.544651, 44.035950>,  <33.732635, 38.937820, 44.418278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278111, 38.544651, 44.035950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014194, 38.248924, 44.089752>,  <33.855843, 38.071487, 44.122032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014194, 38.248924, 44.089752>,  <34.278111, 38.544651, 44.035950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014194, 38.248924, 44.089752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109720, -0.271857, -0.956062,
		0.743395, -0.616044, 0.260487,
		-0.659792, -0.739313, 0.134504,
		33.816257, 38.027130, 44.130104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580502, 37.958649, 43.773689>,  <34.278111, 38.544651, 44.035950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580502, 37.958649, 43.773689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195469, 37.850292, 43.776691>,  <33.964451, 37.785278, 43.778492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195469, 37.850292, 43.776691>,  <34.580502, 37.958649, 43.773689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195469, 37.850292, 43.776691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080891, -0.313650, -0.946087,
		0.258644, -0.910077, 0.323826,
		-0.962580, -0.270895, 0.007507,
		33.906696, 37.769024, 43.778942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570499, 37.273926, 43.468132>,  <34.580502, 37.958649, 43.773689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570499, 37.273926, 43.468132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191448, 37.401497, 43.461388>,  <33.964016, 37.478039, 43.457340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191448, 37.401497, 43.461388>,  <34.570499, 37.273926, 43.468132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191448, 37.401497, 43.461388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081872, -0.293613, -0.952412,
		-0.308712, -0.901149, 0.304348,
		-0.947625, 0.318938, -0.016863,
		33.907158, 37.497177, 43.456329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216198, 36.768856, 43.081074>,  <34.570499, 37.273926, 43.468132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216198, 36.768856, 43.081074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000683, 37.105385, 43.063721>,  <33.871372, 37.307304, 43.053310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000683, 37.105385, 43.063721>,  <34.216198, 36.768856, 43.081074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000683, 37.105385, 43.063721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054433, -0.086153, -0.994794,
		-0.840682, -0.533620, 0.092214,
		-0.538787, 0.841324, -0.043381,
		33.839046, 37.357780, 43.050705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605179, 36.726662, 42.747360>,  <34.216198, 36.768856, 43.081074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605179, 36.726662, 42.747360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679821, 37.117123, 42.702991>,  <33.724606, 37.351398, 42.676369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679821, 37.117123, 42.702991>,  <33.605179, 36.726662, 42.747360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679821, 37.117123, 42.702991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297464, -0.051469, -0.953344,
		-0.936319, 0.210897, 0.280766,
		0.186607, 0.976152, -0.110926,
		33.735802, 37.409969, 42.669712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302937, 36.768822, 42.153744>,  <33.605179, 36.726662, 42.747360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302937, 36.768822, 42.153744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467560, 37.132710, 42.175785>,  <33.566334, 37.351040, 42.189011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467560, 37.132710, 42.175785>,  <33.302937, 36.768822, 42.153744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467560, 37.132710, 42.175785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035960, 0.076627, -0.996411,
		-0.910674, 0.408098, 0.064250,
		0.411557, 0.909716, 0.055107,
		33.591026, 37.405624, 42.192318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936089, 37.284798, 41.889030>,  <33.302937, 36.768822, 42.153744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936089, 37.284798, 41.889030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315086, 37.411850, 41.874290>,  <33.542484, 37.488083, 41.865448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315086, 37.411850, 41.874290>,  <32.936089, 37.284798, 41.889030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315086, 37.411850, 41.874290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009439, -0.087399, -0.996129,
		-0.319625, 0.944177, -0.079812,
		0.947497, 0.317634, -0.036847,
		33.599335, 37.507141, 41.863235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917515, 37.786160, 41.426891>,  <32.936089, 37.284798, 41.889030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917515, 37.786160, 41.426891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305874, 37.690933, 41.437317>,  <33.538891, 37.633797, 41.443573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305874, 37.690933, 41.437317>,  <32.917515, 37.786160, 41.426891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305874, 37.690933, 41.437317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027567, 0.002992, -0.999615,
		0.237892, 0.971245, 0.009467,
		0.970900, -0.238062, 0.026063,
		33.597145, 37.619514, 41.445137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219997, 38.295254, 40.990032>,  <32.917515, 37.786160, 41.426891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219997, 38.295254, 40.990032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520935, 38.032738, 41.012836>,  <33.701500, 37.875229, 41.026520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520935, 38.032738, 41.012836>,  <33.219997, 38.295254, 40.990032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520935, 38.032738, 41.012836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143117, 0.078367, -0.986598,
		0.643031, 0.750425, 0.152886,
		0.752349, -0.656294, 0.057006,
		33.746639, 37.835850, 41.029938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751144, 38.541538, 40.639729>,  <33.219997, 38.295254, 40.990032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751144, 38.541538, 40.639729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804119, 38.145229, 40.651218>,  <33.835903, 37.907444, 40.658112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804119, 38.145229, 40.651218>,  <33.751144, 38.541538, 40.639729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804119, 38.145229, 40.651218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206272, -0.000792, -0.978494,
		0.969491, 0.135512, 0.204264,
		0.132436, -0.990775, 0.028720,
		33.843849, 37.847996, 40.659836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399361, 38.397049, 40.370422>,  <33.751144, 38.541538, 40.639729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399361, 38.397049, 40.370422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211460, 38.044827, 40.345242>,  <34.098721, 37.833492, 40.330135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211460, 38.044827, 40.345242>,  <34.399361, 38.397049, 40.370422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211460, 38.044827, 40.345242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281742, -0.081959, -0.955983,
		0.836633, -0.466810, 0.286589,
		-0.469751, -0.880551, -0.062950,
		34.070534, 37.780663, 40.326355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947792, 38.082878, 39.970398>,  <34.399361, 38.397049, 40.370422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947792, 38.082878, 39.970398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616901, 37.858410, 39.981564>,  <34.418365, 37.723728, 39.988262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616901, 37.858410, 39.981564>,  <34.947792, 38.082878, 39.970398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616901, 37.858410, 39.981564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140818, -0.255174, -0.956586,
		0.543930, -0.787386, 0.290110,
		-0.827231, -0.561169, 0.027919,
		34.368732, 37.690060, 39.989941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651989, 37.737087, 40.070663>,  <34.947792, 38.082878, 39.970398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651989, 37.737087, 40.070663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919327, 38.018749, 39.974758>,  <36.079731, 38.187744, 39.917217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919327, 38.018749, 39.974758>,  <35.651989, 37.737087, 40.070663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919327, 38.018749, 39.974758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177003, 0.463611, 0.868179,
		0.722484, -0.537806, 0.434490,
		0.668346, 0.704151, -0.239759,
		36.119831, 38.229996, 39.902832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229206, 37.726944, 40.626476>,  <35.651989, 37.737087, 40.070663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229206, 37.726944, 40.626476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199539, 38.076862, 40.434963>,  <36.181740, 38.286812, 40.320057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199539, 38.076862, 40.434963>,  <36.229206, 37.726944, 40.626476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199539, 38.076862, 40.434963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042332, 0.476909, 0.877933,
		0.996347, 0.085379, 0.001662,
		-0.074165, 0.874796, -0.478781,
		36.177288, 38.339302, 40.291328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809242, 38.156212, 40.808796>,  <36.229206, 37.726944, 40.626476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809242, 38.156212, 40.808796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537479, 38.408318, 40.658508>,  <36.374420, 38.559582, 40.568336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537479, 38.408318, 40.658508>,  <36.809242, 38.156212, 40.808796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537479, 38.408318, 40.658508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058729, 0.557116, 0.828356,
		0.731408, 0.540725, -0.415523,
		-0.679407, 0.630269, -0.375722,
		36.333656, 38.597397, 40.545792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026100, 38.793880, 40.994492>,  <36.809242, 38.156212, 40.808796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026100, 38.793880, 40.994492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.641865, 38.875034, 40.918476>,  <36.411324, 38.923725, 40.872868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.641865, 38.875034, 40.918476>,  <37.026100, 38.793880, 40.994492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641865, 38.875034, 40.918476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039801, 0.576216, 0.816328,
		0.275126, 0.791715, -0.545429,
		-0.960584, 0.202884, -0.190043,
		36.353691, 38.935898, 40.861462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942417, 39.576351, 40.992863>,  <37.026100, 38.793880, 40.994492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942417, 39.576351, 40.992863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.612583, 39.367912, 41.080971>,  <36.414684, 39.242851, 41.133835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.612583, 39.367912, 41.080971>,  <36.942417, 39.576351, 40.992863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612583, 39.367912, 41.080971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087656, 0.502326, 0.860224,
		-0.558905, 0.690021, -0.459888,
		-0.824586, -0.521095, 0.220268,
		36.365208, 39.211582, 41.147053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514545, 40.122646, 41.269367>,  <36.942417, 39.576351, 40.992863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514545, 40.122646, 41.269367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327015, 39.779911, 41.355186>,  <36.214497, 39.574268, 41.406677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327015, 39.779911, 41.355186>,  <36.514545, 40.122646, 41.269367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327015, 39.779911, 41.355186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335162, 0.397298, 0.854296,
		-0.817233, 0.328607, -0.473443,
		-0.468825, -0.856839, 0.214548,
		36.186367, 39.522858, 41.419552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872822, 40.299221, 41.685459>,  <36.514545, 40.122646, 41.269367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872822, 40.299221, 41.685459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926758, 39.907951, 41.748707>,  <35.959118, 39.673191, 41.786655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926758, 39.907951, 41.748707>,  <35.872822, 40.299221, 41.685459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926758, 39.907951, 41.748707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401282, 0.091997, 0.911323,
		-0.905975, -0.186335, -0.380116,
		0.134841, -0.978169, 0.158120,
		35.967209, 39.614502, 41.796143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376019, 40.141071, 42.105221>,  <35.872822, 40.299221, 41.685459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376019, 40.141071, 42.105221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635788, 39.841362, 42.157124>,  <35.791649, 39.661537, 42.188267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635788, 39.841362, 42.157124>,  <35.376019, 40.141071, 42.105221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635788, 39.841362, 42.157124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213613, -0.015987, 0.976788,
		-0.729811, -0.662063, -0.170437,
		0.649420, -0.749278, 0.129758,
		35.830612, 39.616577, 42.196053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040489, 39.616909, 42.631680>,  <35.376019, 40.141071, 42.105221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040489, 39.616909, 42.631680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433304, 39.541470, 42.629227>,  <35.668991, 39.496208, 42.627754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433304, 39.541470, 42.629227>,  <35.040489, 39.616909, 42.631680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433304, 39.541470, 42.629227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014308, -0.106836, 0.994174,
		-0.188157, -0.976225, -0.107615,
		0.982035, -0.188601, -0.006134,
		35.727913, 39.484890, 42.627388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131241, 39.188786, 43.221165>,  <35.040489, 39.616909, 42.631680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131241, 39.188786, 43.221165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504646, 39.303196, 43.134693>,  <35.728691, 39.371841, 43.082809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504646, 39.303196, 43.134693>,  <35.131241, 39.188786, 43.221165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504646, 39.303196, 43.134693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263908, -0.140038, 0.954328,
		0.242692, -0.947933, -0.206213,
		0.933517, 0.286029, -0.216181,
		35.784702, 39.389004, 43.069839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648888, 38.647957, 43.521381>,  <35.131241, 39.188786, 43.221165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648888, 38.647957, 43.521381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850742, 38.987206, 43.456837>,  <35.971855, 39.190754, 43.418110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850742, 38.987206, 43.456837>,  <35.648888, 38.647957, 43.521381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850742, 38.987206, 43.456837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462567, -0.107802, 0.880006,
		0.728954, -0.518723, -0.446712,
		0.504636, 0.848118, -0.161361,
		36.002132, 39.241642, 43.408428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265232, 38.567734, 43.748302>,  <35.648888, 38.647957, 43.521381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265232, 38.567734, 43.748302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.256279, 38.967049, 43.769917>,  <36.250908, 39.206638, 43.782883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.256279, 38.967049, 43.769917>,  <36.265232, 38.567734, 43.748302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256279, 38.967049, 43.769917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349172, -0.042836, 0.936079,
		0.936791, 0.039821, -0.347616,
		-0.022385, 0.998288, 0.054033,
		36.249565, 39.266537, 43.786125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959908, 38.740635, 43.942104>,  <36.265232, 38.567734, 43.748302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959908, 38.740635, 43.942104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720177, 39.047245, 44.034412>,  <36.576340, 39.231209, 44.089798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720177, 39.047245, 44.034412>,  <36.959908, 38.740635, 43.942104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720177, 39.047245, 44.034412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281358, -0.068180, 0.957178,
		0.749433, 0.638587, -0.174805,
		-0.599323, 0.766523, 0.230768,
		36.540379, 39.277203, 44.103642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284153, 39.176952, 44.423813>,  <36.959908, 38.740635, 43.942104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284153, 39.176952, 44.423813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.894493, 39.260323, 44.458679>,  <36.660698, 39.310345, 44.479599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.894493, 39.260323, 44.458679>,  <37.284153, 39.176952, 44.423813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894493, 39.260323, 44.458679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086620, -0.011768, 0.996172,
		0.208651, 0.977968, -0.006590,
		-0.974147, 0.208423, 0.087167,
		36.602249, 39.322849, 44.484829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777172, 39.800488, 44.406502>,  <37.284153, 39.176952, 44.423813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777172, 39.800488, 44.406502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.174805, 39.811378, 44.448566>,  <38.413383, 39.817913, 44.473804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.174805, 39.811378, 44.448566>,  <37.777172, 39.800488, 44.406502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174805, 39.811378, 44.448566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106986, -0.077889, -0.991205,
		-0.018795, 0.996590, -0.080341,
		0.994083, 0.027225, 0.105157,
		38.473030, 39.819546, 44.480114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952351, 40.263729, 43.966461>,  <37.777172, 39.800488, 44.406502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952351, 40.263729, 43.966461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286152, 40.057533, 44.044304>,  <38.486431, 39.933815, 44.091007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286152, 40.057533, 44.044304>,  <37.952351, 40.263729, 43.966461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286152, 40.057533, 44.044304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171318, -0.092931, -0.980823,
		0.523693, 0.851839, 0.010762,
		0.834503, -0.515494, 0.194603,
		38.536503, 39.902885, 44.102684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438988, 40.483147, 43.516064>,  <37.952351, 40.263729, 43.966461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438988, 40.483147, 43.516064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594501, 40.126957, 43.610645>,  <38.687809, 39.913242, 43.667393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594501, 40.126957, 43.610645>,  <38.438988, 40.483147, 43.516064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594501, 40.126957, 43.610645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312730, -0.113858, -0.942993,
		0.866631, 0.440563, 0.234212,
		0.388781, -0.890472, 0.236451,
		38.711136, 39.859814, 43.681580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082043, 40.425896, 43.188065>,  <38.438988, 40.483147, 43.516064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082043, 40.425896, 43.188065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986156, 40.044254, 43.259869>,  <38.928627, 39.815269, 43.302952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986156, 40.044254, 43.259869>,  <39.082043, 40.425896, 43.188065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986156, 40.044254, 43.259869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430709, -0.270224, -0.861086,
		0.870073, -0.129096, 0.475717,
		-0.239713, -0.954103, 0.179511,
		38.914242, 39.758022, 43.313721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776539, 40.107944, 43.040386>,  <39.082043, 40.425896, 43.188065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776539, 40.107944, 43.040386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499126, 39.821743, 43.074043>,  <39.332680, 39.650024, 43.094238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499126, 39.821743, 43.074043>,  <39.776539, 40.107944, 43.040386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499126, 39.821743, 43.074043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294398, -0.388060, -0.873349,
		0.657533, -0.580921, 0.479772,
		-0.693528, -0.715499, 0.084140,
		39.291069, 39.607094, 43.099285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079914, 39.473961, 42.882812>,  <39.776539, 40.107944, 43.040386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079914, 39.473961, 42.882812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692280, 39.401340, 42.815975>,  <39.459702, 39.357769, 42.775871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692280, 39.401340, 42.815975>,  <40.079914, 39.473961, 42.882812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692280, 39.401340, 42.815975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240776, -0.547797, -0.801215,
		0.053928, -0.816675, 0.574573,
		-0.969081, -0.181551, -0.167094,
		39.401554, 39.346874, 42.765846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037411, 38.872635, 42.758293>,  <40.079914, 39.473961, 42.882812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037411, 38.872635, 42.758293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.706703, 39.007168, 42.577923>,  <39.508278, 39.087887, 42.469700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.706703, 39.007168, 42.577923>,  <40.037411, 38.872635, 42.758293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706703, 39.007168, 42.577923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114260, -0.684474, -0.720027,
		-0.550812, -0.646820, 0.527475,
		-0.826771, 0.336331, -0.450922,
		39.458672, 39.108067, 42.442646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783062, 38.206215, 42.506371>,  <40.037411, 38.872635, 42.758293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783062, 38.206215, 42.506371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608631, 38.508293, 42.310612>,  <39.503971, 38.689541, 42.193157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608631, 38.508293, 42.310612>,  <39.783062, 38.206215, 42.506371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608631, 38.508293, 42.310612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007463, -0.540777, -0.841133,
		-0.899877, -0.370454, 0.230186,
		-0.436080, 0.755198, -0.489397,
		39.477806, 38.734852, 42.163792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295788, 37.947987, 42.042179>,  <39.783062, 38.206215, 42.506371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295788, 37.947987, 42.042179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391880, 38.306950, 41.894154>,  <39.449535, 38.522327, 41.805340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391880, 38.306950, 41.894154>,  <39.295788, 37.947987, 42.042179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391880, 38.306950, 41.894154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105373, -0.403084, -0.909077,
		-0.964980, 0.179394, -0.191396,
		0.240231, 0.897408, -0.370064,
		39.463951, 38.576172, 41.783134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803131, 38.057064, 41.426704>,  <39.295788, 37.947987, 42.042179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803131, 38.057064, 41.426704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112240, 38.307911, 41.387646>,  <39.297707, 38.458420, 41.364212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112240, 38.307911, 41.387646>,  <38.803131, 38.057064, 41.426704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112240, 38.307911, 41.387646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066317, -0.232796, -0.970262,
		-0.631204, 0.743320, -0.221488,
		0.772776, 0.627122, -0.097647,
		39.344074, 38.496048, 41.358353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704727, 38.233070, 40.769501>,  <38.803131, 38.057064, 41.426704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704727, 38.233070, 40.769501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066479, 38.371475, 40.869400>,  <39.283531, 38.454517, 40.929340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066479, 38.371475, 40.869400>,  <38.704727, 38.233070, 40.769501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066479, 38.371475, 40.869400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344184, -0.245478, -0.906244,
		-0.252260, 0.905549, -0.341096,
		0.904379, 0.346009, 0.249751,
		39.337791, 38.475277, 40.944324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932468, 38.791496, 40.282787>,  <38.704727, 38.233070, 40.769501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932468, 38.791496, 40.282787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252506, 38.602268, 40.430328>,  <39.444530, 38.488731, 40.518852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252506, 38.602268, 40.430328>,  <38.932468, 38.791496, 40.282787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252506, 38.602268, 40.430328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282514, -0.245269, -0.927377,
		0.529185, 0.846195, -0.062589,
		0.800094, -0.473072, 0.368855,
		39.492535, 38.460346, 40.540985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531227, 38.917660, 39.811295>,  <38.932468, 38.791496, 40.282787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531227, 38.917660, 39.811295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.683071, 38.618984, 40.029781>,  <39.774178, 38.439781, 40.160873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.683071, 38.618984, 40.029781>,  <39.531227, 38.917660, 39.811295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683071, 38.618984, 40.029781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414844, -0.390342, -0.821911,
		0.826921, 0.538603, 0.161579,
		0.379612, -0.746686, 0.546218,
		39.796955, 38.394978, 40.193645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241863, 38.820847, 39.640167>,  <39.531227, 38.917660, 39.811295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241863, 38.820847, 39.640167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112495, 38.467789, 39.776596>,  <40.034874, 38.255955, 39.858456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112495, 38.467789, 39.776596>,  <40.241863, 38.820847, 39.640167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112495, 38.467789, 39.776596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435549, -0.458855, -0.774435,
		0.840057, -0.101915, 0.532840,
		-0.323422, -0.882647, 0.341076,
		40.015469, 38.202995, 39.878918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.505564, 35.040703, 27.526398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267378, 34.752079, 27.385105>,  <28.124466, 34.578903, 27.300329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267378, 34.752079, 27.385105>,  <28.505564, 35.040703, 27.526398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267378, 34.752079, 27.385105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127541, -0.349198, 0.928328,
		-0.793192, 0.597839, 0.115907,
		-0.595466, -0.721560, -0.353230,
		28.088737, 34.535610, 27.279137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838245, 35.079967, 27.871971>,  <28.505564, 35.040703, 27.526398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838245, 35.079967, 27.871971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854696, 34.705734, 27.731688>,  <27.864567, 34.481194, 27.647516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854696, 34.705734, 27.731688>,  <27.838245, 35.079967, 27.871971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854696, 34.705734, 27.731688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384098, -0.338840, 0.858869,
		-0.922376, 0.099384, -0.373290,
		0.041127, -0.935580, -0.350711,
		27.867035, 34.425060, 27.626474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102928, 34.653713, 27.843843>,  <27.838245, 35.079967, 27.871971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102928, 34.653713, 27.843843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409691, 34.397652, 27.861977>,  <27.593748, 34.244015, 27.872856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409691, 34.397652, 27.861977>,  <27.102928, 34.653713, 27.843843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409691, 34.397652, 27.861977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349500, -0.357368, 0.866105,
		-0.538240, -0.680067, -0.497802,
		0.766908, -0.640154, 0.045334,
		27.639763, 34.205605, 27.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814749, 34.172749, 28.090803>,  <27.102928, 34.653713, 27.843843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814749, 34.172749, 28.090803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204443, 34.104580, 28.149893>,  <27.438259, 34.063679, 28.185347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204443, 34.104580, 28.149893>,  <26.814749, 34.172749, 28.090803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204443, 34.104580, 28.149893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196058, -0.316204, 0.928211,
		-0.111476, -0.933259, -0.341469,
		0.974235, -0.170421, 0.147724,
		27.496714, 34.053452, 28.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828300, 33.440960, 28.370687>,  <26.814749, 34.172749, 28.090803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828300, 33.440960, 28.370687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.174814, 33.622478, 28.454233>,  <27.382723, 33.731388, 28.504360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.174814, 33.622478, 28.454233>,  <26.828300, 33.440960, 28.370687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174814, 33.622478, 28.454233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037745, -0.357446, 0.933171,
		0.498123, -0.816275, -0.292521,
		0.866284, 0.453793, 0.208862,
		27.434700, 33.758617, 28.516891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986692, 33.114777, 28.941221>,  <26.828300, 33.440960, 28.370687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986692, 33.114777, 28.941221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212294, 33.440823, 28.994112>,  <27.347654, 33.636452, 29.025846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212294, 33.440823, 28.994112>,  <26.986692, 33.114777, 28.941221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212294, 33.440823, 28.994112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147206, -0.058313, 0.987385,
		0.812545, -0.576353, 0.087102,
		0.564004, 0.815117, 0.132225,
		27.381495, 33.685356, 29.033779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503878, 32.883892, 29.387211>,  <26.986692, 33.114777, 28.941221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503878, 32.883892, 29.387211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528667, 33.282398, 29.411283>,  <27.543541, 33.521500, 29.425728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528667, 33.282398, 29.411283>,  <27.503878, 32.883892, 29.387211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528667, 33.282398, 29.411283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122036, -0.067409, 0.990234,
		0.990589, -0.054027, -0.125757,
		0.061977, 0.996262, 0.060181,
		27.547260, 33.581276, 29.429338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076532, 33.017269, 29.967169>,  <27.503878, 32.883892, 29.387211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076532, 33.017269, 29.967169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837057, 33.335838, 29.933041>,  <27.693373, 33.526981, 29.912563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837057, 33.335838, 29.933041>,  <28.076532, 33.017269, 29.967169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837057, 33.335838, 29.933041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045669, 0.140287, 0.989057,
		0.799680, 0.588239, -0.120360,
		-0.598687, 0.796426, -0.085320,
		27.657452, 33.574764, 29.907444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265430, 33.441769, 30.424110>,  <28.076532, 33.017269, 29.967169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265430, 33.441769, 30.424110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888006, 33.561836, 30.368126>,  <27.661552, 33.633877, 30.334536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888006, 33.561836, 30.368126>,  <28.265430, 33.441769, 30.424110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888006, 33.561836, 30.368126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134664, 0.038365, 0.990148,
		0.302586, 0.953113, 0.004223,
		-0.943561, 0.300174, -0.139959,
		27.604939, 33.651890, 30.326138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162247, 34.012486, 30.894724>,  <28.265430, 33.441769, 30.424110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162247, 34.012486, 30.894724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794600, 33.889385, 30.796329>,  <27.574011, 33.815525, 30.737293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794600, 33.889385, 30.796329>,  <28.162247, 34.012486, 30.894724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794600, 33.889385, 30.796329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296896, 0.130607, 0.945936,
		-0.258982, 0.942461, -0.211413,
		-0.919120, -0.307749, -0.245988,
		27.518864, 33.797062, 30.722532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751009, 34.676640, 31.130318>,  <28.162247, 34.012486, 30.894724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751009, 34.676640, 31.130318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505161, 34.361763, 31.110003>,  <27.357653, 34.172836, 31.097815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505161, 34.361763, 31.110003>,  <27.751009, 34.676640, 31.130318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505161, 34.361763, 31.110003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371001, 0.231651, 0.899275,
		-0.696135, 0.571552, -0.434424,
		-0.614617, -0.787189, -0.050786,
		27.320776, 34.125607, 31.094767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036325, 34.955467, 31.226553>,  <27.751009, 34.676640, 31.130318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036325, 34.955467, 31.226553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046465, 34.563950, 31.307856>,  <27.052547, 34.329037, 31.356636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046465, 34.563950, 31.307856>,  <27.036325, 34.955467, 31.226553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046465, 34.563950, 31.307856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366848, 0.180028, 0.912695,
		-0.929936, -0.097697, -0.354507,
		0.025347, -0.978798, 0.203255,
		27.054070, 34.270309, 31.368832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367651, 34.758469, 31.517063>,  <27.036325, 34.955467, 31.226553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367651, 34.758469, 31.517063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.590441, 34.452221, 31.645811>,  <26.724113, 34.268471, 31.723061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.590441, 34.452221, 31.645811>,  <26.367651, 34.758469, 31.517063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590441, 34.452221, 31.645811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295130, 0.179801, 0.938387,
		-0.776324, -0.617650, -0.125815,
		0.556973, -0.765624, 0.321871,
		26.757532, 34.222534, 31.742373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891279, 34.323559, 31.870218>,  <26.367651, 34.758469, 31.517063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891279, 34.323559, 31.870218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247143, 34.219643, 32.020424>,  <26.460661, 34.157291, 32.110546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247143, 34.219643, 32.020424>,  <25.891279, 34.323559, 31.870218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247143, 34.219643, 32.020424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374625, 0.054924, 0.925548,
		-0.261074, -0.964102, -0.048460,
		0.889661, -0.259791, 0.375516,
		26.514042, 34.141705, 32.133080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800690, 33.851665, 32.411591>,  <25.891279, 34.323559, 31.870218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800690, 33.851665, 32.411591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167278, 33.983753, 32.501953>,  <26.387232, 34.063004, 32.556171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167278, 33.983753, 32.501953>,  <25.800690, 33.851665, 32.411591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167278, 33.983753, 32.501953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272539, 0.101871, 0.956737,
		0.292917, -0.938392, 0.183358,
		0.916473, 0.330217, 0.225908,
		26.442221, 34.082817, 32.569725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879610, 33.623642, 33.135754>,  <25.800690, 33.851665, 32.411591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879610, 33.623642, 33.135754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166058, 33.897278, 33.080330>,  <26.337927, 34.061459, 33.047077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166058, 33.897278, 33.080330>,  <25.879610, 33.623642, 33.135754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166058, 33.897278, 33.080330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114666, 0.311118, 0.943429,
		0.688494, -0.659721, 0.301239,
		0.716120, 0.684087, -0.138555,
		26.380894, 34.102505, 33.038765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132292, 33.633049, 33.766663>,  <25.879610, 33.623642, 33.135754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132292, 33.633049, 33.766663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294752, 33.967106, 33.618294>,  <26.392229, 34.167538, 33.529274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294752, 33.967106, 33.618294>,  <26.132292, 33.633049, 33.766663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294752, 33.967106, 33.618294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143304, 0.459096, 0.876753,
		0.902499, -0.302940, 0.306141,
		0.406151, 0.835140, -0.370922,
		26.416597, 34.217648, 33.507019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540462, 33.953114, 34.345016>,  <26.132292, 33.633049, 33.766663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540462, 33.953114, 34.345016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.460617, 34.229191, 34.066799>,  <26.412710, 34.394836, 33.899868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.460617, 34.229191, 34.066799>,  <26.540462, 33.953114, 34.345016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460617, 34.229191, 34.066799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225573, 0.658398, 0.718072,
		0.953557, 0.300235, 0.024263,
		-0.199616, 0.690196, -0.695545,
		26.400732, 34.436249, 33.858135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898806, 34.521469, 34.616688>,  <26.540462, 33.953114, 34.345016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898806, 34.521469, 34.616688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634651, 34.678467, 34.360615>,  <26.476158, 34.772663, 34.206970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634651, 34.678467, 34.360615>,  <26.898806, 34.521469, 34.616688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634651, 34.678467, 34.360615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152168, 0.764898, 0.625920,
		0.735346, 0.510765, -0.445404,
		-0.660387, 0.392492, -0.640187,
		26.436535, 34.796215, 34.168560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684986, 34.562084, 34.534130>,  <26.898806, 34.521469, 34.616688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684986, 34.562084, 34.534130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081385, 34.537777, 34.581856>,  <28.319223, 34.523193, 34.610493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.081385, 34.537777, 34.581856>,  <27.684986, 34.562084, 34.534130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081385, 34.537777, 34.581856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133457, 0.520603, -0.843304,
		-0.010873, 0.851633, 0.524025,
		0.990995, -0.060766, 0.119318,
		28.378683, 34.519547, 34.617653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028700, 35.246780, 34.390995>,  <27.684986, 34.562084, 34.534130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028700, 35.246780, 34.390995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317787, 34.973328, 34.350361>,  <28.491240, 34.809254, 34.325981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317787, 34.973328, 34.350361>,  <28.028700, 35.246780, 34.390995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317787, 34.973328, 34.350361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299852, 0.442579, -0.845111,
		0.622709, 0.580316, 0.524849,
		0.722719, -0.683635, -0.101589,
		28.534603, 34.768238, 34.319885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672239, 35.552059, 34.310905>,  <28.028700, 35.246780, 34.390995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672239, 35.552059, 34.310905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760561, 35.207714, 34.127533>,  <28.813553, 35.001106, 34.017509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760561, 35.207714, 34.127533>,  <28.672239, 35.552059, 34.310905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760561, 35.207714, 34.127533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532787, 0.500165, -0.682622,
		0.816936, -0.093520, 0.569096,
		0.220803, -0.860865, -0.458429,
		28.826801, 34.949455, 33.990005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328020, 35.630463, 34.131065>,  <28.672239, 35.552059, 34.310905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328020, 35.630463, 34.131065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206476, 35.320774, 33.908985>,  <29.133551, 35.134960, 33.775738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206476, 35.320774, 33.908985>,  <29.328020, 35.630463, 34.131065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206476, 35.320774, 33.908985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519281, 0.353992, -0.777842,
		0.798760, -0.524659, 0.294476,
		-0.303860, -0.774224, -0.555200,
		29.115318, 35.088509, 33.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999048, 35.376984, 33.757172>,  <29.328020, 35.630463, 34.131065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999048, 35.376984, 33.757172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708717, 35.208542, 33.539604>,  <29.534519, 35.107475, 33.409061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708717, 35.208542, 33.539604>,  <29.999048, 35.376984, 33.757172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708717, 35.208542, 33.539604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521363, 0.179045, -0.834340,
		0.448730, -0.889165, 0.089592,
		-0.725825, -0.421103, -0.543920,
		29.490971, 35.082211, 33.376427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311096, 34.930424, 33.262371>,  <29.999048, 35.376984, 33.757172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311096, 34.930424, 33.262371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949316, 35.031025, 33.124554>,  <29.732248, 35.091385, 33.041862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949316, 35.031025, 33.124554>,  <30.311096, 34.930424, 33.262371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949316, 35.031025, 33.124554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419627, 0.379397, -0.824604,
		-0.076674, -0.890394, -0.448686,
		-0.904453, 0.251506, -0.344543,
		29.677980, 35.106476, 33.021191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467848, 34.916176, 32.493469>,  <30.311096, 34.930424, 33.262371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467848, 34.916176, 32.493469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119324, 35.109619, 32.526802>,  <29.910210, 35.225685, 32.546803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119324, 35.109619, 32.526802>,  <30.467848, 34.916176, 32.493469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119324, 35.109619, 32.526802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085136, 0.316195, -0.944866,
		-0.483292, -0.816177, -0.316677,
		-0.871310, 0.483607, 0.083329,
		29.857931, 35.254700, 32.551800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160315, 34.819904, 31.831934>,  <30.467848, 34.916176, 32.493469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160315, 34.819904, 31.831934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985435, 35.139690, 31.996721>,  <29.880508, 35.331562, 32.095592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985435, 35.139690, 31.996721>,  <30.160315, 34.819904, 31.831934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985435, 35.139690, 31.996721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019521, 0.449521, -0.893056,
		-0.899153, -0.398486, -0.180924,
		-0.437200, 0.799462, 0.411967,
		29.854275, 35.379528, 32.120312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505877, 34.988163, 31.482319>,  <30.160315, 34.819904, 31.831934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505877, 34.988163, 31.482319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600336, 35.334560, 31.658628>,  <29.657011, 35.542400, 31.764414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600336, 35.334560, 31.658628>,  <29.505877, 34.988163, 31.482319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600336, 35.334560, 31.658628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459182, 0.499213, -0.734805,
		-0.856380, -0.028873, 0.515538,
		0.236147, 0.865998, 0.440774,
		29.671181, 35.594360, 31.790861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028618, 35.449623, 31.196699>,  <29.505877, 34.988163, 31.482319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028618, 35.449623, 31.196699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298643, 35.703716, 31.346775>,  <29.460659, 35.856171, 31.436821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298643, 35.703716, 31.346775>,  <29.028618, 35.449623, 31.196699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298643, 35.703716, 31.346775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424333, 0.750332, -0.506896,
		-0.603513, 0.182982, 0.776073,
		0.675065, 0.635232, 0.375190,
		29.501163, 35.894287, 31.459332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679018, 36.033787, 31.370018>,  <29.028618, 35.449623, 31.196699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679018, 36.033787, 31.370018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054991, 36.159916, 31.317715>,  <29.280575, 36.235596, 31.286333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054991, 36.159916, 31.317715>,  <28.679018, 36.033787, 31.370018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054991, 36.159916, 31.317715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327509, 0.724985, -0.605917,
		-0.096264, 0.612345, 0.784708,
		0.939932, 0.315327, -0.130758,
		29.336969, 36.254513, 31.278488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690245, 36.716835, 31.664146>,  <28.679018, 36.033787, 31.370018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690245, 36.716835, 31.664146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946547, 36.654064, 31.363531>,  <29.100328, 36.616402, 31.183163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946547, 36.654064, 31.363531>,  <28.690245, 36.716835, 31.664146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946547, 36.654064, 31.363531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340603, 0.819180, -0.461447,
		0.688057, 0.551650, 0.471445,
		0.640755, -0.156926, -0.751536,
		29.138773, 36.606987, 31.138071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914360, 37.442146, 31.511858>,  <28.690245, 36.716835, 31.664146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914360, 37.442146, 31.511858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044373, 37.221256, 31.204769>,  <29.122381, 37.088722, 31.020515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044373, 37.221256, 31.204769>,  <28.914360, 37.442146, 31.511858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044373, 37.221256, 31.204769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352688, 0.682454, -0.640210,
		0.877476, 0.478856, 0.027056,
		0.325033, -0.552226, -0.767724,
		29.141882, 37.055588, 30.974453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025896, 37.909122, 30.991014>,  <28.914360, 37.442146, 31.511858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025896, 37.909122, 30.991014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034052, 37.557304, 30.800865>,  <29.038946, 37.346214, 30.686775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034052, 37.557304, 30.800865>,  <29.025896, 37.909122, 30.991014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034052, 37.557304, 30.800865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218871, 0.460011, -0.860514,
		0.975541, 0.121591, -0.183128,
		0.020390, -0.879548, -0.475373,
		29.040169, 37.293442, 30.658253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529301, 37.930984, 30.411898>,  <29.025896, 37.909122, 30.991014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529301, 37.930984, 30.411898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240532, 37.664051, 30.338688>,  <29.067270, 37.503891, 30.294762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240532, 37.664051, 30.338688>,  <29.529301, 37.930984, 30.411898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240532, 37.664051, 30.338688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261077, 0.507623, -0.821071,
		0.640835, -0.544965, -0.540689,
		-0.721920, -0.667333, -0.183024,
		29.023956, 37.463852, 30.283781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442675, 37.902344, 29.621527>,  <29.529301, 37.930984, 30.411898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442675, 37.902344, 29.621527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094437, 37.731037, 29.718399>,  <28.885494, 37.628254, 29.776524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094437, 37.731037, 29.718399>,  <29.442675, 37.902344, 29.621527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094437, 37.731037, 29.718399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444717, 0.474429, -0.759700,
		0.210455, -0.769094, -0.603493,
		-0.870595, -0.428266, 0.242183,
		28.833258, 37.602558, 29.791054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114166, 37.921978, 29.057222>,  <29.442675, 37.902344, 29.621527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114166, 37.921978, 29.057222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797880, 37.809937, 29.274961>,  <28.608109, 37.742714, 29.405605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797880, 37.809937, 29.274961>,  <29.114166, 37.921978, 29.057222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797880, 37.809937, 29.274961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611678, 0.397620, -0.683921,
		-0.024876, -0.873751, -0.485736,
		-0.790715, -0.280101, 0.544346,
		28.560665, 37.725906, 29.438265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740904, 37.446514, 28.608044>,  <29.114166, 37.921978, 29.057222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740904, 37.446514, 28.608044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478573, 37.586029, 28.875847>,  <28.321175, 37.669739, 29.036530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478573, 37.586029, 28.875847>,  <28.740904, 37.446514, 28.608044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478573, 37.586029, 28.875847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671864, 0.134720, -0.728319,
		-0.344222, -0.927470, 0.145982,
		-0.655828, 0.348784, 0.669507,
		28.281824, 37.690662, 29.076698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176382, 37.138107, 28.252918>,  <28.740904, 37.446514, 28.608044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176382, 37.138107, 28.252918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079897, 37.434849, 28.503187>,  <28.022005, 37.612896, 28.653349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079897, 37.434849, 28.503187>,  <28.176382, 37.138107, 28.252918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079897, 37.434849, 28.503187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696402, 0.316700, -0.643992,
		-0.675900, -0.591058, 0.440239,
		-0.241213, 0.741857, 0.625671,
		28.007532, 37.657406, 28.690889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493109, 37.259251, 28.131222>,  <28.176382, 37.138107, 28.252918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493109, 37.259251, 28.131222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.553846, 37.588833, 28.349596>,  <27.590288, 37.786583, 28.480621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.553846, 37.588833, 28.349596>,  <27.493109, 37.259251, 28.131222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553846, 37.588833, 28.349596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379789, 0.558576, -0.737396,
		-0.912526, -0.095372, 0.397744,
		0.151843, 0.823952, 0.545936,
		27.599400, 37.836018, 28.513376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864904, 37.606735, 28.124969>,  <27.493109, 37.259251, 28.131222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864904, 37.606735, 28.124969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.150360, 37.876221, 28.201738>,  <27.321632, 38.037910, 28.247799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.150360, 37.876221, 28.201738>,  <26.864904, 37.606735, 28.124969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150360, 37.876221, 28.201738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387741, 0.608066, -0.692757,
		-0.583419, 0.419963, 0.695165,
		0.713638, 0.673712, 0.191920,
		27.364452, 38.078335, 28.259314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549158, 38.180424, 28.281921>,  <26.864904, 37.606735, 28.124969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549158, 38.180424, 28.281921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919350, 38.288250, 28.175468>,  <27.141464, 38.352947, 28.111597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919350, 38.288250, 28.175468>,  <26.549158, 38.180424, 28.281921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919350, 38.288250, 28.175468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378105, 0.699955, -0.605887,
		0.022954, 0.661361, 0.749717,
		0.925478, 0.269565, -0.266131,
		27.196993, 38.369118, 28.095629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581161, 38.920494, 28.300817>,  <26.549158, 38.180424, 28.281921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581161, 38.920494, 28.300817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847420, 38.800304, 28.027576>,  <27.007175, 38.728191, 27.863632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847420, 38.800304, 28.027576>,  <26.581161, 38.920494, 28.300817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847420, 38.800304, 28.027576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401622, 0.627257, -0.667270,
		0.628980, 0.718515, 0.296853,
		0.665646, -0.300476, -0.683103,
		27.047113, 38.710163, 27.822645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.663803, 37.874630, 44.816467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387989, 37.627510, 44.967655>,  <39.222500, 37.479237, 45.058369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387989, 37.627510, 44.967655>,  <39.663803, 37.874630, 44.816467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387989, 37.627510, 44.967655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063386, 0.468395, 0.881242,
		-0.721469, 0.631609, -0.283818,
		-0.689540, -0.617799, 0.377968,
		39.181126, 37.442169, 45.081047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222286, 38.316422, 45.248260>,  <39.663803, 37.874630, 44.816467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222286, 38.316422, 45.248260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.157963, 37.942822, 45.375877>,  <39.119370, 37.718662, 45.452450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.157963, 37.942822, 45.375877>,  <39.222286, 38.316422, 45.248260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157963, 37.942822, 45.375877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051751, 0.330786, 0.942286,
		-0.985628, 0.135016, -0.101528,
		-0.160808, -0.933997, 0.319045,
		39.109722, 37.662621, 45.471592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681419, 38.383770, 45.694202>,  <39.222286, 38.316422, 45.248260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681419, 38.383770, 45.694202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828907, 38.022720, 45.783035>,  <38.917400, 37.806091, 45.836334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828907, 38.022720, 45.783035>,  <38.681419, 38.383770, 45.694202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828907, 38.022720, 45.783035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072344, 0.210325, 0.974951,
		-0.926722, -0.375547, 0.012251,
		0.368716, -0.902623, 0.222081,
		38.939522, 37.751934, 45.849659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174198, 38.081787, 46.118748>,  <38.681419, 38.383770, 45.694202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174198, 38.081787, 46.118748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524982, 37.894783, 46.163258>,  <38.735451, 37.782581, 46.189964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524982, 37.894783, 46.163258>,  <38.174198, 38.081787, 46.118748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524982, 37.894783, 46.163258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050474, 0.140658, 0.988771,
		-0.477912, -0.872725, 0.099754,
		0.876956, -0.467511, 0.111272,
		38.788071, 37.754528, 46.196640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994530, 37.615829, 46.723427>,  <38.174198, 38.081787, 46.118748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994530, 37.615829, 46.723427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.390282, 37.654392, 46.679916>,  <38.627731, 37.677528, 46.653809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.390282, 37.654392, 46.679916>,  <37.994530, 37.615829, 46.723427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390282, 37.654392, 46.679916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091719, 0.166492, 0.981768,
		0.112762, -0.981318, 0.155881,
		0.989380, 0.096409, -0.108780,
		38.687096, 37.683315, 46.647282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105808, 37.283001, 47.249847>,  <37.994530, 37.615829, 46.723427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105808, 37.283001, 47.249847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460712, 37.452705, 47.177448>,  <38.673656, 37.554527, 47.134007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460712, 37.452705, 47.177448>,  <38.105808, 37.283001, 47.249847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460712, 37.452705, 47.177448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088018, 0.229469, 0.969328,
		0.452785, -0.875982, 0.166256,
		0.887264, 0.424264, -0.181002,
		38.726891, 37.579983, 47.123146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495945, 37.057018, 47.696617>,  <38.105808, 37.283001, 47.249847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495945, 37.057018, 47.696617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679520, 37.399338, 47.601128>,  <38.789665, 37.604729, 47.543835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679520, 37.399338, 47.601128>,  <38.495945, 37.057018, 47.696617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679520, 37.399338, 47.601128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178665, 0.174304, 0.968347,
		0.870319, -0.487063, -0.072906,
		0.458938, 0.855797, -0.238721,
		38.817200, 37.656078, 47.529510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020348, 37.123219, 48.219860>,  <38.495945, 37.057018, 47.696617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020348, 37.123219, 48.219860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954880, 37.482723, 48.057163>,  <38.915600, 37.698425, 47.959545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954880, 37.482723, 48.057163>,  <39.020348, 37.123219, 48.219860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954880, 37.482723, 48.057163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013048, 0.414238, 0.910075,
		0.986430, 0.143641, -0.079523,
		-0.163666, 0.898762, -0.406743,
		38.905781, 37.752354, 47.935139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504696, 37.442360, 48.593060>,  <39.020348, 37.123219, 48.219860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504696, 37.442360, 48.593060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282833, 37.743458, 48.451229>,  <39.149715, 37.924118, 48.366131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282833, 37.743458, 48.451229>,  <39.504696, 37.442360, 48.593060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282833, 37.743458, 48.451229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026914, 0.409682, 0.911831,
		0.831643, 0.515297, -0.206974,
		-0.554657, 0.752748, -0.354578,
		39.116436, 37.969284, 48.344856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839680, 38.080814, 48.867443>,  <39.504696, 37.442360, 48.593060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839680, 38.080814, 48.867443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460979, 38.173954, 48.778496>,  <39.233761, 38.229836, 48.725128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460979, 38.173954, 48.778496>,  <39.839680, 38.080814, 48.867443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460979, 38.173954, 48.778496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133046, 0.346011, 0.928749,
		0.293198, 0.908878, -0.296606,
		-0.946749, 0.232845, -0.222373,
		39.176956, 38.243809, 48.711784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693691, 38.760414, 49.106583>,  <39.839680, 38.080814, 48.867443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693691, 38.760414, 49.106583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319447, 38.627052, 49.060158>,  <39.094898, 38.547035, 49.032303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319447, 38.627052, 49.060158>,  <39.693691, 38.760414, 49.106583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319447, 38.627052, 49.060158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272453, 0.472875, 0.837949,
		-0.224489, 0.815619, -0.533264,
		-0.935614, -0.333400, -0.116063,
		39.038761, 38.527031, 49.025337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316895, 39.295639, 49.310852>,  <39.693691, 38.760414, 49.106583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316895, 39.295639, 49.310852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.054741, 38.996483, 49.353035>,  <38.897449, 38.816990, 49.378345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.054741, 38.996483, 49.353035>,  <39.316895, 39.295639, 49.310852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054741, 38.996483, 49.353035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530370, 0.555117, 0.640744,
		-0.537750, 0.364004, -0.760477,
		-0.655388, -0.747895, 0.105457,
		38.858124, 38.772114, 49.384674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841999, 39.809975, 49.750061>,  <39.316895, 39.295639, 49.310852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841999, 39.809975, 49.750061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113503, 40.076851, 49.627327>,  <40.276405, 40.236977, 49.553688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113503, 40.076851, 49.627327>,  <39.841999, 39.809975, 49.750061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113503, 40.076851, 49.627327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620319, 0.297271, -0.725833,
		-0.393052, 0.683002, 0.615644,
		0.678759, 0.667186, -0.306836,
		40.317131, 40.277008, 49.535275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534748, 40.566631, 49.606140>,  <39.841999, 39.809975, 49.750061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534748, 40.566631, 49.606140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850925, 40.460587, 49.385262>,  <40.040630, 40.396961, 49.252735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850925, 40.460587, 49.385262>,  <39.534748, 40.566631, 49.606140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850925, 40.460587, 49.385262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477102, 0.298911, -0.826454,
		0.384160, 0.916716, 0.109786,
		0.790440, -0.265111, -0.552197,
		40.088058, 40.381054, 49.219601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820171, 40.810925, 49.977989>,  <39.534748, 40.566631, 49.606140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820171, 40.810925, 49.977989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602482, 41.132679, 49.882668>,  <38.471870, 41.325729, 49.825474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602482, 41.132679, 49.882668>,  <38.820171, 40.810925, 49.977989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602482, 41.132679, 49.882668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076608, -0.235221, -0.968918,
		-0.835436, -0.545563, 0.066390,
		-0.544222, 0.804383, -0.238306,
		38.439217, 41.373993, 49.811176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246841, 40.560543, 49.573589>,  <38.820171, 40.810925, 49.977989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246841, 40.560543, 49.573589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278156, 40.949898, 49.487442>,  <38.296944, 41.183510, 49.435753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278156, 40.949898, 49.487442>,  <38.246841, 40.560543, 49.573589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278156, 40.949898, 49.487442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127798, -0.204452, -0.970498,
		-0.988706, 0.103498, 0.108392,
		0.078284, 0.973389, -0.215369,
		38.301640, 41.241913, 49.422832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721409, 40.691090, 49.112408>,  <38.246841, 40.560543, 49.573589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721409, 40.691090, 49.112408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.950237, 41.011215, 49.040585>,  <38.087532, 41.203289, 48.997490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.950237, 41.011215, 49.040585>,  <37.721409, 40.691090, 49.112408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950237, 41.011215, 49.040585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014729, -0.228906, -0.973337,
		-0.820073, 0.554171, -0.142738,
		0.572069, 0.800310, -0.179557,
		38.121857, 41.251308, 48.986717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504612, 41.076237, 48.606476>,  <37.721409, 40.691090, 49.112408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504612, 41.076237, 48.606476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885742, 41.197083, 48.594872>,  <38.114422, 41.269592, 48.587910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885742, 41.197083, 48.594872>,  <37.504612, 41.076237, 48.606476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885742, 41.197083, 48.594872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026093, -0.176761, -0.983908,
		-0.302384, 0.936739, -0.176306,
		0.952829, 0.302118, -0.029007,
		38.171593, 41.287720, 48.586170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533680, 41.387489, 47.973843>,  <37.504612, 41.076237, 48.606476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533680, 41.387489, 47.973843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919609, 41.336514, 48.065826>,  <38.151165, 41.305927, 48.121017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919609, 41.336514, 48.065826>,  <37.533680, 41.387489, 47.973843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919609, 41.336514, 48.065826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219946, -0.087911, -0.971543,
		0.144028, 0.987943, -0.056789,
		0.964821, -0.127439, 0.229956,
		38.209057, 41.298283, 48.134811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871525, 41.719543, 47.420570>,  <37.533680, 41.387489, 47.973843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871525, 41.719543, 47.420570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142975, 41.482140, 47.593643>,  <38.305843, 41.339699, 47.697487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142975, 41.482140, 47.593643>,  <37.871525, 41.719543, 47.420570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142975, 41.482140, 47.593643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217762, -0.400033, -0.890255,
		0.701463, 0.698370, -0.142228,
		0.678623, -0.593510, 0.432686,
		38.346561, 41.304089, 47.723450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478027, 41.850895, 47.029896>,  <37.871525, 41.719543, 47.420570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478027, 41.850895, 47.029896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.483456, 41.493011, 47.208473>,  <38.486713, 41.278282, 47.315620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.483456, 41.493011, 47.208473>,  <38.478027, 41.850895, 47.029896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483456, 41.493011, 47.208473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066146, -0.444702, -0.893233,
		0.997718, 0.041654, 0.053145,
		0.013573, -0.894709, 0.446443,
		38.487526, 41.224598, 47.342407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096832, 41.527416, 46.653332>,  <38.478027, 41.850895, 47.029896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096832, 41.527416, 46.653332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873074, 41.242031, 46.822113>,  <38.738819, 41.070801, 46.923382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873074, 41.242031, 46.822113>,  <39.096832, 41.527416, 46.653332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873074, 41.242031, 46.822113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106157, -0.566524, -0.817179,
		0.822072, -0.412337, 0.392653,
		-0.559400, -0.713463, 0.421951,
		38.705254, 41.027992, 46.948700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506111, 41.001316, 46.610844>,  <39.096832, 41.527416, 46.653332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506111, 41.001316, 46.610844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140274, 40.843586, 46.646683>,  <38.920773, 40.748947, 46.668186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140274, 40.843586, 46.646683>,  <39.506111, 41.001316, 46.610844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140274, 40.843586, 46.646683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148198, -0.533011, -0.833029,
		0.376240, -0.748604, 0.545926,
		-0.914593, -0.394324, 0.089598,
		38.865894, 40.725288, 46.673561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628029, 40.282455, 46.376263>,  <39.506111, 41.001316, 46.610844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628029, 40.282455, 46.376263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235653, 40.359524, 46.366230>,  <39.000225, 40.405766, 46.360210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235653, 40.359524, 46.366230>,  <39.628029, 40.282455, 46.376263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235653, 40.359524, 46.366230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095417, -0.590170, -0.801621,
		-0.169248, -0.783951, 0.597307,
		-0.980944, 0.192666, -0.025083,
		38.941368, 40.417324, 46.358704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342468, 39.577957, 46.238014>,  <39.628029, 40.282455, 46.376263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342468, 39.577957, 46.238014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.060116, 39.840340, 46.131096>,  <38.890705, 39.997768, 46.066944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.060116, 39.840340, 46.131096>,  <39.342468, 39.577957, 46.238014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060116, 39.840340, 46.131096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053322, -0.425502, -0.903385,
		-0.706319, -0.623431, 0.335332,
		-0.705883, 0.655958, -0.267298,
		38.848351, 40.037128, 46.050907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802410, 39.163628, 45.966419>,  <39.342468, 39.577957, 46.238014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802410, 39.163628, 45.966419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762466, 39.538414, 45.832485>,  <38.738499, 39.763287, 45.752125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762466, 39.538414, 45.832485>,  <38.802410, 39.163628, 45.966419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762466, 39.538414, 45.832485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152602, -0.346958, -0.925383,
		-0.983230, -0.041313, 0.177631,
		-0.099861, 0.936970, -0.334835,
		38.732510, 39.819504, 45.732037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450115, 39.114506, 45.401634>,  <38.802410, 39.163628, 45.966419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450115, 39.114506, 45.401634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539433, 39.499645, 45.340885>,  <38.593021, 39.730728, 45.304436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539433, 39.499645, 45.340885>,  <38.450115, 39.114506, 45.401634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539433, 39.499645, 45.340885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004478, -0.154790, -0.987937,
		-0.974742, 0.221277, -0.030251,
		0.223290, 0.962848, -0.151871,
		38.606419, 39.788498, 45.295322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859459, 39.424973, 45.007240>,  <38.450115, 39.114506, 45.401634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859459, 39.424973, 45.007240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192326, 39.638985, 44.948936>,  <38.392044, 39.767391, 44.913956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192326, 39.638985, 44.948936>,  <37.859459, 39.424973, 45.007240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192326, 39.638985, 44.948936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038424, -0.317857, -0.947360,
		-0.553193, 0.782760, -0.285068,
		0.832167, 0.535026, -0.145759,
		38.441975, 39.799492, 44.905209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205364, 39.701851, 44.972412>,  <37.859459, 39.424973, 45.007240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205364, 39.701851, 44.972412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848354, 39.522068, 44.957493>,  <36.634148, 39.414200, 44.948540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848354, 39.522068, 44.957493>,  <37.205364, 39.701851, 44.972412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848354, 39.522068, 44.957493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116397, 0.149652, 0.981863,
		-0.435719, 0.880680, -0.185883,
		-0.892525, -0.449453, -0.037302,
		36.580597, 39.387234, 44.946301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019344, 40.078732, 45.546055>,  <37.205364, 39.701851, 44.972412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019344, 40.078732, 45.546055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744450, 39.793800, 45.489063>,  <36.579514, 39.622841, 45.454868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744450, 39.793800, 45.489063>,  <37.019344, 40.078732, 45.546055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744450, 39.793800, 45.489063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310911, 0.111150, 0.943917,
		-0.656541, 0.692991, -0.297856,
		-0.687233, -0.712327, -0.142483,
		36.538280, 39.580101, 45.446320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396542, 40.314892, 45.830524>,  <37.019344, 40.078732, 45.546055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396542, 40.314892, 45.830524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335266, 39.920002, 45.812954>,  <36.298500, 39.683067, 45.802410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335266, 39.920002, 45.812954>,  <36.396542, 40.314892, 45.830524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335266, 39.920002, 45.812954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422719, 0.025286, 0.905908,
		-0.893220, 0.157340, -0.421190,
		-0.153185, -0.987221, -0.043925,
		36.289310, 39.623837, 45.799778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767529, 40.182552, 45.911121>,  <36.396542, 40.314892, 45.830524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767529, 40.182552, 45.911121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951363, 39.850662, 46.037819>,  <36.061665, 39.651527, 46.113838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951363, 39.850662, 46.037819>,  <35.767529, 40.182552, 45.911121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951363, 39.850662, 46.037819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398005, 0.126408, 0.908632,
		-0.793958, -0.543664, -0.272140,
		0.459590, -0.829729, 0.316744,
		36.089241, 39.601742, 46.132843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266438, 39.807278, 46.241474>,  <35.767529, 40.182552, 45.911121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266438, 39.807278, 46.241474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609440, 39.650818, 46.375149>,  <35.815243, 39.556942, 46.455353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609440, 39.650818, 46.375149>,  <35.266438, 39.807278, 46.241474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609440, 39.650818, 46.375149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290873, 0.167181, 0.942042,
		-0.424349, -0.905015, 0.029584,
		0.857508, -0.391150, 0.334188,
		35.866692, 39.533474, 46.475407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059380, 39.362186, 46.706749>,  <35.266438, 39.807278, 46.241474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059380, 39.362186, 46.706749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432919, 39.439674, 46.827019>,  <35.657043, 39.486168, 46.899181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432919, 39.439674, 46.827019>,  <35.059380, 39.362186, 46.706749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432919, 39.439674, 46.827019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354064, 0.381564, 0.853843,
		0.050677, -0.903816, 0.424910,
		0.933847, 0.193716, 0.300673,
		35.713074, 39.497787, 46.917221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140423, 39.055416, 47.325508>,  <35.059380, 39.362186, 46.706749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140423, 39.055416, 47.325508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423187, 39.337662, 47.345036>,  <35.592846, 39.507008, 47.356750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423187, 39.337662, 47.345036>,  <35.140423, 39.055416, 47.325508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423187, 39.337662, 47.345036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260415, 0.195477, 0.945501,
		0.657618, -0.681098, 0.321938,
		0.706911, 0.705616, 0.048819,
		35.635262, 39.549347, 47.359680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008488, 38.364700, 47.627121>,  <35.140423, 39.055416, 47.325508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008488, 38.364700, 47.627121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632095, 38.232121, 47.654510>,  <34.406258, 38.152573, 47.670944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632095, 38.232121, 47.654510>,  <35.008488, 38.364700, 47.627121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632095, 38.232121, 47.654510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092184, 0.056344, -0.994146,
		0.325657, -0.941787, -0.083574,
		-0.940983, -0.331455, 0.068469,
		34.349800, 38.132683, 47.675053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955425, 37.984039, 47.042709>,  <35.008488, 38.364700, 47.627121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955425, 37.984039, 47.042709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569935, 37.991817, 47.149189>,  <34.338642, 37.996483, 47.213078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569935, 37.991817, 47.149189>,  <34.955425, 37.984039, 47.042709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569935, 37.991817, 47.149189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265795, -0.160749, -0.950533,
		0.024314, -0.986804, 0.160084,
		-0.963723, 0.019438, 0.266196,
		34.280819, 37.997650, 47.229046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599705, 37.443432, 46.812534>,  <34.955425, 37.984039, 47.042709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599705, 37.443432, 46.812534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297825, 37.698753, 46.873196>,  <34.116695, 37.851944, 46.909592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297825, 37.698753, 46.873196>,  <34.599705, 37.443432, 46.812534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297825, 37.698753, 46.873196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334153, -0.175059, -0.926119,
		-0.564596, -0.749616, 0.345408,
		-0.754701, 0.638302, 0.151649,
		34.071415, 37.890244, 46.918690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020710, 37.024097, 46.794239>,  <34.599705, 37.443432, 46.812534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020710, 37.024097, 46.794239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922234, 37.404274, 46.718300>,  <33.863148, 37.632381, 46.672737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922234, 37.404274, 46.718300>,  <34.020710, 37.024097, 46.794239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922234, 37.404274, 46.718300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354984, -0.270691, -0.894826,
		-0.901874, -0.152905, 0.404035,
		-0.246192, 0.950445, -0.189851,
		33.848377, 37.689407, 46.661346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209232, 37.130970, 46.591431>,  <34.020710, 37.024097, 46.794239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209232, 37.130970, 46.591431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424332, 37.436527, 46.448715>,  <33.553391, 37.619862, 46.363087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424332, 37.436527, 46.448715>,  <33.209232, 37.130970, 46.591431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424332, 37.436527, 46.448715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356592, -0.177397, -0.917264,
		-0.763981, 0.620487, 0.177001,
		0.537750, 0.763889, -0.356788,
		33.585655, 37.665695, 46.341679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745907, 37.521652, 46.105560>,  <33.209232, 37.130970, 46.591431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745907, 37.521652, 46.105560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114574, 37.647713, 46.015045>,  <33.335773, 37.723351, 45.960735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114574, 37.647713, 46.015045>,  <32.745907, 37.521652, 46.105560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114574, 37.647713, 46.015045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157833, -0.228234, -0.960728,
		-0.354421, 0.921189, -0.160614,
		0.921669, 0.315152, -0.226285,
		33.391075, 37.742260, 45.947159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455067, 37.898041, 45.535763>,  <32.745907, 37.521652, 46.105560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455067, 37.898041, 45.535763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847435, 37.847450, 45.476711>,  <33.082855, 37.817097, 45.441280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847435, 37.847450, 45.476711>,  <32.455067, 37.898041, 45.535763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847435, 37.847450, 45.476711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177775, -0.276366, -0.944467,
		0.078651, 0.952694, -0.293577,
		0.980923, -0.126474, -0.147629,
		33.141712, 37.809509, 45.432423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.181934, 36.562977, 50.303398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.347607, 36.861458, 50.094921>,  <37.447010, 37.040546, 49.969833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.347607, 36.861458, 50.094921>,  <37.181934, 36.562977, 50.303398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347607, 36.861458, 50.094921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093444, -0.604450, -0.791144,
		-0.905386, 0.278973, -0.320078,
		0.414179, 0.746200, -0.521193,
		37.471859, 37.085320, 49.938564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862610, 36.698551, 49.634998>,  <37.181934, 36.562977, 50.303398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862610, 36.698551, 49.634998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.238491, 36.835091, 49.626579>,  <37.464020, 36.917015, 49.621529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.238491, 36.835091, 49.626579>,  <36.862610, 36.698551, 49.634998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238491, 36.835091, 49.626579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224145, -0.661194, -0.715948,
		-0.258304, 0.668059, -0.697837,
		0.939701, 0.341349, -0.021047,
		37.520401, 36.937496, 49.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975063, 36.963726, 48.973297>,  <36.862610, 36.698551, 49.634998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975063, 36.963726, 48.973297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.325451, 36.844982, 49.125378>,  <37.535683, 36.773735, 49.216625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.325451, 36.844982, 49.125378>,  <36.975063, 36.963726, 48.973297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325451, 36.844982, 49.125378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211137, -0.472721, -0.855544,
		0.433704, 0.829705, -0.351411,
		0.875969, -0.296857, 0.380203,
		37.588242, 36.755924, 49.239437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428722, 37.209824, 48.493214>,  <36.975063, 36.963726, 48.973297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428722, 37.209824, 48.493214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.546120, 36.874916, 48.677753>,  <37.616558, 36.673973, 48.788479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.546120, 36.874916, 48.677753>,  <37.428722, 37.209824, 48.493214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546120, 36.874916, 48.677753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050959, -0.495624, -0.867041,
		0.954602, 0.230961, -0.188129,
		0.293494, -0.837265, 0.461354,
		37.634167, 36.623737, 48.816158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110081, 36.982491, 48.351467>,  <37.428722, 37.209824, 48.493214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110081, 36.982491, 48.351467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940125, 36.648582, 48.491539>,  <37.838150, 36.448238, 48.575584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940125, 36.648582, 48.491539>,  <38.110081, 36.982491, 48.351467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940125, 36.648582, 48.491539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258160, -0.482510, -0.836981,
		0.867653, -0.265222, 0.420518,
		-0.424890, -0.834770, 0.350181,
		37.812656, 36.398151, 48.596592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501907, 36.345146, 48.215290>,  <38.110081, 36.982491, 48.351467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501907, 36.345146, 48.215290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.134781, 36.197651, 48.274132>,  <37.914505, 36.109154, 48.309437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.134781, 36.197651, 48.274132>,  <38.501907, 36.345146, 48.215290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134781, 36.197651, 48.274132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076211, -0.527293, -0.846259,
		0.389618, -0.765501, 0.512061,
		-0.917817, -0.368743, 0.147103,
		37.859436, 36.087029, 48.318264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599331, 35.642319, 47.955330>,  <38.501907, 36.345146, 48.215290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599331, 35.642319, 47.955330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.202290, 35.673992, 47.992123>,  <37.964066, 35.692997, 48.014198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.202290, 35.673992, 47.992123>,  <38.599331, 35.642319, 47.955330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202290, 35.673992, 47.992123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121064, -0.592000, -0.796794,
		-0.008640, -0.802039, 0.597209,
		-0.992607, 0.079185, 0.091984,
		37.904507, 35.697746, 48.019718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386078, 34.947395, 47.930420>,  <38.599331, 35.642319, 47.955330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386078, 34.947395, 47.930420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.102512, 35.208344, 47.823204>,  <37.932373, 35.364914, 47.758877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.102512, 35.208344, 47.823204>,  <38.386078, 34.947395, 47.930420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102512, 35.208344, 47.823204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162179, -0.520637, -0.838233,
		-0.686392, -0.550768, 0.474890,
		-0.708917, 0.652374, -0.268038,
		37.889835, 35.404057, 47.742794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840530, 34.554379, 47.787140>,  <38.386078, 34.947395, 47.930420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840530, 34.554379, 47.787140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.766621, 34.897552, 47.595387>,  <37.722275, 35.103455, 47.480335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.766621, 34.897552, 47.595387>,  <37.840530, 34.554379, 47.787140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766621, 34.897552, 47.595387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149039, -0.506604, -0.849200,
		-0.971415, -0.085461, 0.221471,
		-0.184771, 0.857933, -0.479386,
		37.711189, 35.154934, 47.451572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399090, 34.299019, 47.283829>,  <37.840530, 34.554379, 47.787140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399090, 34.299019, 47.283829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.451313, 34.675114, 47.158031>,  <37.482647, 34.900772, 47.082554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.451313, 34.675114, 47.158031>,  <37.399090, 34.299019, 47.283829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451313, 34.675114, 47.158031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105395, -0.302251, -0.947384,
		-0.985823, 0.156831, 0.059637,
		0.130554, 0.940238, -0.314496,
		37.490479, 34.957184, 47.063683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675781, 34.500023, 47.130901>,  <37.399090, 34.299019, 47.283829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675781, 34.500023, 47.130901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.934582, 34.729271, 46.929737>,  <37.089863, 34.866817, 46.809036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.934582, 34.729271, 46.929737>,  <36.675781, 34.500023, 47.130901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934582, 34.729271, 46.929737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409243, -0.295501, -0.863249,
		-0.643355, 0.764340, 0.043354,
		0.647004, 0.573118, -0.502913,
		37.128681, 34.901207, 46.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221634, 34.813297, 46.634029>,  <36.675781, 34.500023, 47.130901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221634, 34.813297, 46.634029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.591717, 34.842140, 46.485008>,  <36.813766, 34.859444, 46.395596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.591717, 34.842140, 46.485008>,  <36.221634, 34.813297, 46.634029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591717, 34.842140, 46.485008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370711, -0.037943, -0.927973,
		-0.081048, 0.996675, -0.008375,
		0.925205, 0.072105, -0.372554,
		36.869278, 34.863773, 46.373241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796486, 35.349548, 46.628983>,  <36.221634, 34.813297, 46.634029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796486, 35.349548, 46.628983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.480591, 35.115547, 46.702839>,  <35.291054, 34.975147, 46.747150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.480591, 35.115547, 46.702839>,  <35.796486, 35.349548, 46.628983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480591, 35.115547, 46.702839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184165, 0.061004, 0.981000,
		-0.585149, 0.808736, 0.059559,
		-0.789737, -0.585000, 0.184637,
		35.243671, 34.940048, 46.758228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330212, 35.715279, 47.220955>,  <35.796486, 35.349548, 46.628983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330212, 35.715279, 47.220955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.174767, 35.346729, 47.224075>,  <35.081501, 35.125599, 47.225948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.174767, 35.346729, 47.224075>,  <35.330212, 35.715279, 47.220955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174767, 35.346729, 47.224075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153016, 0.072887, 0.985532,
		-0.908609, 0.381792, -0.169309,
		-0.388608, -0.921370, 0.007805,
		35.058186, 35.070320, 47.226418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598366, 35.797417, 47.513474>,  <35.330212, 35.715279, 47.220955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598366, 35.797417, 47.513474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724106, 35.419140, 47.546581>,  <34.799549, 35.192173, 47.566444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724106, 35.419140, 47.546581>,  <34.598366, 35.797417, 47.513474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724106, 35.419140, 47.546581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198908, 0.019637, 0.979822,
		-0.928233, -0.324474, -0.181932,
		0.314354, -0.945691, 0.082769,
		34.818413, 35.135433, 47.571411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128227, 35.499233, 48.027851>,  <34.598366, 35.797417, 47.513474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128227, 35.499233, 48.027851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459339, 35.275101, 48.039188>,  <34.658009, 35.140621, 48.045990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459339, 35.275101, 48.039188>,  <34.128227, 35.499233, 48.027851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459339, 35.275101, 48.039188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012462, 0.068871, 0.997548,
		-0.560909, -0.825400, 0.063994,
		0.827784, -0.560331, 0.028344,
		34.707676, 35.107002, 48.047691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002216, 34.954697, 48.547760>,  <34.128227, 35.499233, 48.027851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002216, 34.954697, 48.547760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398186, 34.928787, 48.497406>,  <34.635769, 34.913242, 48.467194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.398186, 34.928787, 48.497406>,  <34.002216, 34.954697, 48.547760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398186, 34.928787, 48.497406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119063, -0.100128, 0.987825,
		-0.076587, -0.992864, -0.091408,
		0.989928, -0.064771, -0.125882,
		34.695164, 34.909355, 48.459641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223938, 34.398010, 49.144535>,  <34.002216, 34.954697, 48.547760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223938, 34.398010, 49.144535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558121, 34.589878, 49.037254>,  <34.758629, 34.704998, 48.972885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558121, 34.589878, 49.037254>,  <34.223938, 34.398010, 49.144535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558121, 34.589878, 49.037254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241145, 0.118556, 0.963220,
		0.493823, -0.869403, -0.016621,
		0.835456, 0.479669, -0.268198,
		34.808758, 34.733780, 48.956795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739407, 34.128475, 49.586094>,  <34.223938, 34.398010, 49.144535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739407, 34.128475, 49.586094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862812, 34.483494, 49.449230>,  <34.936855, 34.696507, 49.367111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862812, 34.483494, 49.449230>,  <34.739407, 34.128475, 49.586094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862812, 34.483494, 49.449230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147315, 0.310789, 0.938993,
		0.939742, -0.340102, -0.034865,
		0.308518, 0.887547, -0.342164,
		34.955368, 34.749760, 49.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433590, 34.305607, 49.900959>,  <34.739407, 34.128475, 49.586094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433590, 34.305607, 49.900959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283314, 34.656467, 49.781319>,  <35.193146, 34.866985, 49.709534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283314, 34.656467, 49.781319>,  <35.433590, 34.305607, 49.900959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283314, 34.656467, 49.781319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216804, 0.396974, 0.891856,
		0.901027, 0.270220, -0.339311,
		-0.375695, 0.877150, -0.299100,
		35.170605, 34.919613, 49.691589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863232, 34.732162, 50.288406>,  <35.433590, 34.305607, 49.900959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863232, 34.732162, 50.288406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.578957, 34.976894, 50.149502>,  <35.408390, 35.123734, 50.066158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.578957, 34.976894, 50.149502>,  <35.863232, 34.732162, 50.288406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578957, 34.976894, 50.149502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045104, 0.532223, 0.845402,
		0.702059, 0.585154, -0.405841,
		-0.710689, 0.611827, -0.347260,
		35.365749, 35.160442, 50.045322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145821, 35.445168, 50.246971>,  <35.863232, 34.732162, 50.288406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145821, 35.445168, 50.246971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.751915, 35.416145, 50.310184>,  <35.515572, 35.398731, 50.348114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.751915, 35.416145, 50.310184>,  <36.145821, 35.445168, 50.246971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751915, 35.416145, 50.310184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097866, 0.519964, 0.848563,
		-0.143740, 0.851101, -0.504941,
		-0.984765, -0.072556, 0.158033,
		35.456486, 35.394379, 50.357594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915833, 36.105095, 50.476181>,  <36.145821, 35.445168, 50.246971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915833, 36.105095, 50.476181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639351, 35.848362, 50.609020>,  <35.473461, 35.694321, 50.688725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639351, 35.848362, 50.609020>,  <35.915833, 36.105095, 50.476181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639351, 35.848362, 50.609020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057289, 0.506768, 0.860177,
		-0.720386, 0.575532, -0.387049,
		-0.691203, -0.641833, 0.332097,
		35.431992, 35.655811, 50.708649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631702, 36.488708, 50.894520>,  <35.915833, 36.105095, 50.476181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631702, 36.488708, 50.894520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474644, 36.141247, 51.015366>,  <35.380409, 35.932770, 51.087872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474644, 36.141247, 51.015366>,  <35.631702, 36.488708, 50.894520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474644, 36.141247, 51.015366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025980, 0.317890, 0.947771,
		-0.919321, 0.379991, -0.102252,
		-0.392650, -0.868650, 0.302115,
		35.356850, 35.880653, 51.105999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206268, 36.707214, 51.410961>,  <35.631702, 36.488708, 50.894520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206268, 36.707214, 51.410961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.262081, 36.315773, 51.471439>,  <35.295570, 36.080906, 51.507725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.262081, 36.315773, 51.471439>,  <35.206268, 36.707214, 51.410961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262081, 36.315773, 51.471439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099974, 0.165828, 0.981074,
		-0.985158, -0.121776, 0.120974,
		0.139532, -0.978607, 0.151192,
		35.303940, 36.022190, 51.516796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565987, 36.788429, 50.905140>,  <35.206268, 36.707214, 51.410961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565987, 36.788429, 50.905140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321041, 37.099686, 50.960999>,  <34.174072, 37.286442, 50.994514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321041, 37.099686, 50.960999>,  <34.565987, 36.788429, 50.905140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321041, 37.099686, 50.960999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072789, 0.120395, -0.990054,
		-0.787219, -0.616437, -0.017085,
		-0.612363, 0.778145, 0.139648,
		34.137333, 37.333130, 51.002892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840046, 36.705025, 50.535389>,  <34.565987, 36.788429, 50.905140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840046, 36.705025, 50.535389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.949657, 37.087929, 50.572407>,  <34.015427, 37.317669, 50.594620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.949657, 37.087929, 50.572407>,  <33.840046, 36.705025, 50.535389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949657, 37.087929, 50.572407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026777, 0.103790, -0.994239,
		-0.961348, 0.269974, 0.054074,
		0.274031, 0.957257, 0.092549,
		34.031868, 37.375107, 50.600170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427601, 37.102669, 50.126621>,  <33.840046, 36.705025, 50.535389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427601, 37.102669, 50.126621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.746677, 37.340652, 50.166039>,  <33.938122, 37.483444, 50.189690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.746677, 37.340652, 50.166039>,  <33.427601, 37.102669, 50.126621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746677, 37.340652, 50.166039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042213, 0.218088, -0.975016,
		-0.601588, 0.773600, 0.199082,
		0.797690, 0.594962, 0.098543,
		33.985985, 37.519142, 50.195602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172844, 37.556244, 49.747528>,  <33.427601, 37.102669, 50.126621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172844, 37.556244, 49.747528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.560604, 37.648777, 49.780388>,  <33.793259, 37.704296, 49.800102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.560604, 37.648777, 49.780388>,  <33.172844, 37.556244, 49.747528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560604, 37.648777, 49.780388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012622, 0.287221, -0.957781,
		-0.245161, 0.929510, 0.275512,
		0.969400, 0.231333, 0.082148,
		33.851425, 37.718178, 49.805031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285168, 38.211098, 49.492138>,  <33.172844, 37.556244, 49.747528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285168, 38.211098, 49.492138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639751, 38.028694, 49.460503>,  <33.852501, 37.919250, 49.441521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639751, 38.028694, 49.460503>,  <33.285168, 38.211098, 49.492138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639751, 38.028694, 49.460503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015865, 0.140849, -0.989904,
		0.462543, 0.878760, 0.117622,
		0.886455, -0.456008, -0.079090,
		33.905689, 37.891891, 49.436775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687927, 38.683300, 49.184860>,  <33.285168, 38.211098, 49.492138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687927, 38.683300, 49.184860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.907669, 38.359467, 49.102127>,  <34.039513, 38.165165, 49.052486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.907669, 38.359467, 49.102127>,  <33.687927, 38.683300, 49.184860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907669, 38.359467, 49.102127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095375, 0.185156, -0.978070,
		0.830128, 0.557035, 0.024502,
		0.549356, -0.809586, -0.206830,
		34.072475, 38.116592, 49.040077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284248, 38.874172, 48.704857>,  <33.687927, 38.683300, 49.184860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284248, 38.874172, 48.704857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264114, 38.476868, 48.663113>,  <34.252033, 38.238483, 48.638065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264114, 38.476868, 48.663113>,  <34.284248, 38.874172, 48.704857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264114, 38.476868, 48.663113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112578, 0.098185, -0.988780,
		0.992367, -0.061518, 0.106877,
		-0.050334, -0.993265, -0.104361,
		34.249016, 38.178886, 48.631805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731407, 38.755268, 48.139797>,  <34.284248, 38.874172, 48.704857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731407, 38.755268, 48.139797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.488827, 38.437649, 48.156315>,  <34.343281, 38.247078, 48.166225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.488827, 38.437649, 48.156315>,  <34.731407, 38.755268, 48.139797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488827, 38.437649, 48.156315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075488, 0.005799, -0.997130,
		0.791532, -0.607824, -0.063458,
		-0.606447, -0.794051, 0.041293,
		34.306892, 38.199432, 48.168701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539726, 39.004780, 48.067848>,  <34.731407, 38.755268, 48.139797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539726, 39.004780, 48.067848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.642750, 39.366714, 47.932240>,  <35.704563, 39.583874, 47.850872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.642750, 39.366714, 47.932240>,  <35.539726, 39.004780, 48.067848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642750, 39.366714, 47.932240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001525, 0.350480, 0.936569,
		0.966262, -0.241736, 0.088888,
		0.257555, 0.904836, -0.339024,
		35.720016, 39.638165, 47.830532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011902, 39.251324, 48.527088>,  <35.539726, 39.004780, 48.067848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011902, 39.251324, 48.527088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888100, 39.581787, 48.338757>,  <35.813820, 39.780064, 48.225758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888100, 39.581787, 48.338757>,  <36.011902, 39.251324, 48.527088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888100, 39.581787, 48.338757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171776, 0.535569, 0.826837,
		0.935255, 0.175030, -0.307673,
		-0.309501, 0.826154, -0.470827,
		35.795250, 39.829632, 48.197510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439617, 39.789898, 48.730621>,  <36.011902, 39.251324, 48.527088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439617, 39.789898, 48.730621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.137516, 39.988728, 48.559738>,  <35.956253, 40.108025, 48.457207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.137516, 39.988728, 48.559738>,  <36.439617, 39.789898, 48.730621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137516, 39.988728, 48.559738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104025, 0.734441, 0.670653,
		0.647124, 0.462074, -0.606398,
		-0.755255, 0.497076, -0.427207,
		35.910938, 40.137852, 48.431576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635395, 40.535221, 48.655869>,  <36.439617, 39.789898, 48.730621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635395, 40.535221, 48.655869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236740, 40.524155, 48.686729>,  <35.997547, 40.517513, 48.705246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236740, 40.524155, 48.686729>,  <36.635395, 40.535221, 48.655869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236740, 40.524155, 48.686729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039610, 0.661501, 0.748898,
		-0.071759, 0.749434, -0.658179,
		-0.996635, -0.027670, 0.077154,
		35.937748, 40.515854, 48.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477310, 41.230396, 48.640579>,  <36.635395, 40.535221, 48.655869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477310, 41.230396, 48.640579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175076, 41.033478, 48.813427>,  <35.993736, 40.915325, 48.917137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175076, 41.033478, 48.813427>,  <36.477310, 41.230396, 48.640579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175076, 41.033478, 48.813427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069777, 0.595436, 0.800367,
		-0.651320, 0.634900, -0.415553,
		-0.755588, -0.492299, 0.432121,
		35.948399, 40.885788, 48.943062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005123, 41.699543, 48.806656>,  <36.477310, 41.230396, 48.640579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005123, 41.699543, 48.806656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906021, 41.394547, 49.045727>,  <35.846561, 41.211548, 49.189171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906021, 41.394547, 49.045727>,  <36.005123, 41.699543, 48.806656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906021, 41.394547, 49.045727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116221, 0.589068, 0.799682,
		-0.961827, 0.267586, -0.057325,
		-0.247752, -0.762494, 0.597681,
		35.831696, 41.165798, 49.225033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821331, 42.063267, 49.439476>,  <36.005123, 41.699543, 48.806656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821331, 42.063267, 49.439476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806717, 41.683655, 49.564701>,  <35.797947, 41.455887, 49.639835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806717, 41.683655, 49.564701>,  <35.821331, 42.063267, 49.439476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806717, 41.683655, 49.564701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157256, 0.303912, 0.939632,
		-0.986882, 0.083566, 0.138136,
		-0.036540, -0.949028, 0.313066,
		35.795753, 41.398945, 49.658623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303913, 41.990723, 49.895660>,  <35.821331, 42.063267, 49.439476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303913, 41.990723, 49.895660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.569168, 41.704842, 49.984615>,  <35.728321, 41.533314, 50.037991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.569168, 41.704842, 49.984615>,  <35.303913, 41.990723, 49.895660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569168, 41.704842, 49.984615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171501, 0.434290, 0.884296,
		-0.728589, -0.548266, 0.410564,
		0.663133, -0.714701, 0.222391,
		35.768108, 41.490433, 50.051334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073719, 41.864822, 50.553181>,  <35.303913, 41.990723, 49.895660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073719, 41.864822, 50.553181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.443089, 41.727398, 50.484760>,  <35.664711, 41.644943, 50.443707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.443089, 41.727398, 50.484760>,  <35.073719, 41.864822, 50.553181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443089, 41.727398, 50.484760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341427, 0.531853, 0.774958,
		-0.175271, -0.774014, 0.608425,
		0.923422, -0.343560, -0.171051,
		35.720116, 41.624329, 50.433445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.175842, 36.403988, 35.330074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511368, 36.344555, 35.539574>,  <37.712685, 36.308895, 35.665272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511368, 36.344555, 35.539574>,  <37.175842, 36.403988, 35.330074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511368, 36.344555, 35.539574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482639, 0.242150, 0.841679,
		-0.251882, -0.958795, 0.131408,
		0.838817, -0.148581, 0.523745,
		37.763012, 36.299980, 35.696697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054420, 35.921791, 35.962132>,  <37.175842, 36.403988, 35.330074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054420, 35.921791, 35.962132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361629, 36.168468, 36.031219>,  <37.545956, 36.316475, 36.072674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361629, 36.168468, 36.031219>,  <37.054420, 35.921791, 35.962132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361629, 36.168468, 36.031219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409600, 0.265680, 0.872721,
		0.492309, -0.741017, 0.456645,
		0.768023, 0.616691, 0.172724,
		37.592037, 36.353477, 36.083038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114658, 35.946941, 36.660767>,  <37.054420, 35.921791, 35.962132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114658, 35.946941, 36.660767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313427, 36.278641, 36.558453>,  <37.432686, 36.477661, 36.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313427, 36.278641, 36.558453>,  <37.114658, 35.946941, 36.660767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313427, 36.278641, 36.558453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272840, 0.429094, 0.861067,
		0.823791, -0.358092, 0.439476,
		0.496918, 0.829246, -0.255782,
		37.462502, 36.527416, 36.481716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499176, 36.179504, 37.237972>,  <37.114658, 35.946941, 36.660767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499176, 36.179504, 37.237972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455971, 36.510399, 37.017426>,  <37.430050, 36.708935, 36.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455971, 36.510399, 37.017426>,  <37.499176, 36.179504, 37.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455971, 36.510399, 37.017426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477418, 0.443314, 0.758647,
		0.872013, 0.345174, 0.347057,
		-0.108010, 0.827241, -0.551368,
		37.423569, 36.758572, 36.852016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800064, 36.651943, 37.643177>,  <37.499176, 36.179504, 37.237972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800064, 36.651943, 37.643177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577110, 36.879810, 37.401581>,  <37.443336, 37.016529, 37.256622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577110, 36.879810, 37.401581>,  <37.800064, 36.651943, 37.643177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577110, 36.879810, 37.401581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273116, 0.561183, 0.781333,
		0.784046, 0.600463, -0.157211,
		-0.557386, 0.569665, -0.603989,
		37.409893, 37.050709, 37.220383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990490, 37.337467, 37.768150>,  <37.800064, 36.651943, 37.643177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990490, 37.337467, 37.768150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619350, 37.332325, 37.619057>,  <37.396667, 37.329239, 37.529598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619350, 37.332325, 37.619057>,  <37.990490, 37.337467, 37.768150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619350, 37.332325, 37.619057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286022, 0.665909, 0.689026,
		0.239350, 0.745923, -0.621539,
		-0.927848, -0.012855, -0.372736,
		37.340996, 37.328468, 37.507236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835102, 38.022892, 37.785561>,  <37.990490, 37.337467, 37.768150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835102, 38.022892, 37.785561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486660, 37.828190, 37.759499>,  <37.277596, 37.711369, 37.743862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486660, 37.828190, 37.759499>,  <37.835102, 38.022892, 37.785561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486660, 37.828190, 37.759499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374507, 0.572605, 0.729293,
		-0.317682, 0.659690, -0.681093,
		-0.871104, -0.486757, -0.065153,
		37.225330, 37.682163, 37.739952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339981, 38.507534, 37.840168>,  <37.835102, 38.022892, 37.785561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339981, 38.507534, 37.840168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146034, 38.168041, 37.924610>,  <37.029667, 37.964344, 37.975273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146034, 38.168041, 37.924610>,  <37.339981, 38.507534, 37.840168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146034, 38.168041, 37.924610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495511, 0.465478, 0.733348,
		-0.720678, 0.250971, -0.646249,
		-0.484864, -0.848730, 0.211101,
		37.000576, 37.913422, 37.987942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655453, 38.691650, 37.863323>,  <37.339981, 38.507534, 37.840168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655453, 38.691650, 37.863323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730770, 38.363747, 38.079670>,  <36.775959, 38.167004, 38.209480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730770, 38.363747, 38.079670>,  <36.655453, 38.691650, 37.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730770, 38.363747, 38.079670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461568, 0.412245, 0.785499,
		-0.866892, -0.397551, -0.300752,
		0.188293, -0.819760, 0.540869,
		36.787258, 38.117817, 38.241932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028202, 38.676182, 38.255421>,  <36.655453, 38.691650, 37.863323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028202, 38.676182, 38.255421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255177, 38.401833, 38.437668>,  <36.391361, 38.237225, 38.547016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255177, 38.401833, 38.437668>,  <36.028202, 38.676182, 38.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255177, 38.401833, 38.437668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225299, 0.402889, 0.887086,
		-0.791993, -0.606018, 0.074089,
		0.567439, -0.685874, 0.455620,
		36.425407, 38.196072, 38.574352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550518, 38.426170, 38.684616>,  <36.028202, 38.676182, 38.255421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550518, 38.426170, 38.684616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904388, 38.301762, 38.823536>,  <36.116711, 38.227116, 38.906887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904388, 38.301762, 38.823536>,  <35.550518, 38.426170, 38.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904388, 38.301762, 38.823536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293565, 0.207073, 0.933242,
		-0.362171, -0.927571, 0.091889,
		0.884676, -0.311018, 0.347298,
		36.169792, 38.208458, 38.927727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368992, 37.992710, 39.287411>,  <35.550518, 38.426170, 38.684616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368992, 37.992710, 39.287411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746868, 38.115875, 39.332581>,  <35.973595, 38.189774, 39.359684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746868, 38.115875, 39.332581>,  <35.368992, 37.992710, 39.287411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746868, 38.115875, 39.332581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207787, 0.295521, 0.932465,
		0.253744, -0.904355, 0.343156,
		0.944690, 0.307911, 0.112927,
		36.030273, 38.208248, 39.366459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140148, 37.423901, 39.685631>,  <35.368992, 37.992710, 39.287411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140148, 37.423901, 39.685631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741299, 37.437328, 39.658455>,  <34.501987, 37.445385, 39.642151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741299, 37.437328, 39.658455>,  <35.140148, 37.423901, 39.685631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741299, 37.437328, 39.658455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046366, -0.438876, -0.897350,
		-0.059942, -0.897920, 0.436058,
		-0.997125, 0.033571, -0.067940,
		34.442162, 37.447399, 39.638073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831585, 36.686687, 39.673512>,  <35.140148, 37.423901, 39.685631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831585, 36.686687, 39.673512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555172, 36.933083, 39.522232>,  <34.389324, 37.080921, 39.431465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555172, 36.933083, 39.522232>,  <34.831585, 36.686687, 39.673512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555172, 36.933083, 39.522232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132020, -0.621979, -0.771825,
		-0.710669, -0.483423, 0.511128,
		-0.691028, 0.615991, -0.378199,
		34.347862, 37.117882, 39.408772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460430, 36.279251, 39.399715>,  <34.831585, 36.686687, 39.673512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460430, 36.279251, 39.399715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355225, 36.615746, 39.210762>,  <34.292103, 36.817642, 39.097389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355225, 36.615746, 39.210762>,  <34.460430, 36.279251, 39.399715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355225, 36.615746, 39.210762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052119, -0.501295, -0.863705,
		-0.963385, -0.202542, 0.175690,
		-0.263009, 0.841237, -0.472383,
		34.276321, 36.868118, 39.069046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985527, 36.009132, 38.961208>,  <34.460430, 36.279251, 39.399715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985527, 36.009132, 38.961208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039047, 36.375771, 38.810501>,  <34.071159, 36.595753, 38.720078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039047, 36.375771, 38.810501>,  <33.985527, 36.009132, 38.961208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039047, 36.375771, 38.810501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491093, -0.268901, -0.828565,
		-0.860770, 0.295892, 0.414153,
		0.133800, 0.916592, -0.376772,
		34.079185, 36.650749, 38.697468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325901, 36.364075, 38.750957>,  <33.985527, 36.009132, 38.961208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325901, 36.364075, 38.750957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620476, 36.538082, 38.543720>,  <33.797218, 36.642487, 38.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620476, 36.538082, 38.543720>,  <33.325901, 36.364075, 38.750957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620476, 36.538082, 38.543720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589113, 0.035881, -0.807253,
		-0.332582, 0.899706, 0.282700,
		0.736434, 0.435020, -0.518095,
		33.841408, 36.668587, 38.388290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051952, 36.951183, 38.365891>,  <33.325901, 36.364075, 38.750957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051952, 36.951183, 38.365891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378597, 36.872257, 38.148926>,  <33.574585, 36.824902, 38.018745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378597, 36.872257, 38.148926>,  <33.051952, 36.951183, 38.365891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378597, 36.872257, 38.148926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571492, -0.144690, -0.807751,
		0.080896, 0.969605, -0.230917,
		0.816611, -0.197311, -0.542416,
		33.623581, 36.813065, 37.986202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943436, 37.331375, 37.802074>,  <33.051952, 36.951183, 38.365891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943436, 37.331375, 37.802074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215221, 37.059464, 37.691635>,  <33.378292, 36.896317, 37.625374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215221, 37.059464, 37.691635>,  <32.943436, 37.331375, 37.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215221, 37.059464, 37.691635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543386, -0.213373, -0.811914,
		0.493010, 0.701693, -0.514361,
		0.679465, -0.679778, -0.276095,
		33.419060, 36.855530, 37.608807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971073, 37.475266, 37.150421>,  <32.943436, 37.331375, 37.802074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971073, 37.475266, 37.150421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107868, 37.099659, 37.164841>,  <33.189945, 36.874294, 37.173492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107868, 37.099659, 37.164841>,  <32.971073, 37.475266, 37.150421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107868, 37.099659, 37.164841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436442, -0.192690, -0.878857,
		0.832205, 0.284820, -0.475722,
		0.341983, -0.939014, 0.036051,
		33.210464, 36.817955, 37.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157310, 37.248150, 36.465775>,  <32.971073, 37.475266, 37.150421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157310, 37.248150, 36.465775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125801, 36.898750, 36.657940>,  <33.106895, 36.689110, 36.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125801, 36.898750, 36.657940>,  <33.157310, 37.248150, 36.465775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125801, 36.898750, 36.657940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488878, -0.386133, -0.782240,
		0.868788, -0.296484, -0.396616,
		-0.078775, -0.873498, 0.480413,
		33.102169, 36.636700, 36.802063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410164, 36.733852, 36.039303>,  <33.157310, 37.248150, 36.465775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410164, 36.733852, 36.039303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149456, 36.542793, 36.274948>,  <32.993031, 36.428158, 36.416336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149456, 36.542793, 36.274948>,  <33.410164, 36.733852, 36.039303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149456, 36.542793, 36.274948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434255, -0.401793, -0.806216,
		0.621791, -0.781288, 0.054452,
		-0.651766, -0.477652, 0.589109,
		32.953926, 36.399498, 36.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375469, 36.068539, 35.768646>,  <33.410164, 36.733852, 36.039303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375469, 36.068539, 35.768646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056820, 36.116310, 36.005672>,  <32.865631, 36.144974, 36.147888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056820, 36.116310, 36.005672>,  <33.375469, 36.068539, 35.768646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056820, 36.116310, 36.005672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553435, -0.538360, -0.635513,
		0.243113, -0.834209, 0.494966,
		-0.796621, 0.119430, 0.592563,
		32.817833, 36.152138, 36.183441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033333, 35.444839, 35.572872>,  <33.375469, 36.068539, 35.768646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033333, 35.444839, 35.572872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747978, 35.609055, 35.800041>,  <32.576767, 35.707584, 35.936344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747978, 35.609055, 35.800041>,  <33.033333, 35.444839, 35.572872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747978, 35.609055, 35.800041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678023, -0.609184, -0.411315,
		0.177110, -0.678493, 0.712937,
		-0.713385, 0.410540, 0.567926,
		32.533962, 35.732216, 35.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666088, 34.858868, 35.889080>,  <33.033333, 35.444839, 35.572872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666088, 34.858868, 35.889080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436764, 35.186565, 35.884262>,  <32.299168, 35.383186, 35.881371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436764, 35.186565, 35.884262>,  <32.666088, 34.858868, 35.889080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436764, 35.186565, 35.884262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700754, -0.497903, -0.510918,
		-0.424567, -0.284473, 0.859545,
		-0.573312, 0.819248, -0.012048,
		32.264771, 35.432339, 35.880646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118847, 34.702724, 36.171383>,  <32.666088, 34.858868, 35.889080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118847, 34.702724, 36.171383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011875, 35.021667, 35.954975>,  <31.947693, 35.213036, 35.825130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011875, 35.021667, 35.954975>,  <32.118847, 34.702724, 36.171383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011875, 35.021667, 35.954975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671089, -0.557031, -0.489240,
		-0.691464, 0.232236, 0.684064,
		-0.267426, 0.797360, -0.541018,
		31.931646, 35.260876, 35.792671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396605, 34.942955, 36.281094>,  <32.118847, 34.702724, 36.171383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396605, 34.942955, 36.281094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496790, 35.057293, 35.911106>,  <31.556900, 35.125896, 35.689114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496790, 35.057293, 35.911106>,  <31.396605, 34.942955, 36.281094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496790, 35.057293, 35.911106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822347, -0.441372, -0.359076,
		-0.510895, 0.850577, 0.124520,
		0.250462, 0.285848, -0.924965,
		31.571928, 35.143047, 35.633617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182611, 34.292252, 36.639313>,  <31.396605, 34.942955, 36.281094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182611, 34.292252, 36.639313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530550, 34.118122, 36.546482>,  <31.739313, 34.013645, 36.490784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530550, 34.118122, 36.546482>,  <31.182611, 34.292252, 36.639313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530550, 34.118122, 36.546482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077615, -0.343815, 0.935824,
		-0.487183, -0.832034, -0.265277,
		0.869844, -0.435329, -0.232079,
		31.791504, 33.987522, 36.476860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222857, 33.514309, 36.783352>,  <31.182611, 34.292252, 36.639313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222857, 33.514309, 36.783352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596981, 33.654064, 36.805706>,  <31.821455, 33.737919, 36.819118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596981, 33.654064, 36.805706>,  <31.222857, 33.514309, 36.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596981, 33.654064, 36.805706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171136, -0.584945, 0.792813,
		0.309688, -0.731962, -0.606898,
		0.935311, 0.349387, 0.055886,
		31.877575, 33.758881, 36.822472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668732, 32.886440, 37.089436>,  <31.222857, 33.514309, 36.783352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668732, 32.886440, 37.089436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889158, 33.214535, 37.150814>,  <32.021416, 33.411392, 37.187641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889158, 33.214535, 37.150814>,  <31.668732, 32.886440, 37.089436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889158, 33.214535, 37.150814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167727, -0.289004, 0.942520,
		0.817432, -0.493654, -0.296836,
		0.551065, 0.820233, 0.153442,
		32.054478, 33.460606, 37.196846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337788, 32.665218, 37.372711>,  <31.668732, 32.886440, 37.089436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337788, 32.665218, 37.372711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321014, 33.049675, 37.481846>,  <32.310951, 33.280350, 37.547329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321014, 33.049675, 37.481846>,  <32.337788, 32.665218, 37.372711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321014, 33.049675, 37.481846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205718, -0.258921, 0.943737,
		0.977712, 0.095705, -0.186866,
		-0.041937, 0.961145, 0.272839,
		32.308434, 33.338020, 37.563698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878918, 32.728790, 37.872643>,  <32.337788, 32.665218, 37.372711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878918, 32.728790, 37.872643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630932, 33.037540, 37.929005>,  <32.482140, 33.222790, 37.962822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630932, 33.037540, 37.929005>,  <32.878918, 32.728790, 37.872643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630932, 33.037540, 37.929005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000308, -0.179341, 0.983787,
		0.784630, 0.609956, 0.110947,
		-0.619964, 0.771875, 0.140904,
		32.444942, 33.269104, 37.971275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070572, 33.006832, 38.466335>,  <32.878918, 32.728790, 37.872643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070572, 33.006832, 38.466335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705685, 33.166664, 38.430119>,  <32.486752, 33.262562, 38.408390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705685, 33.166664, 38.430119>,  <33.070572, 33.006832, 38.466335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705685, 33.166664, 38.430119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153795, -0.129139, 0.979627,
		0.379749, 0.907556, 0.179257,
		-0.912216, 0.399581, -0.090537,
		32.432018, 33.286537, 38.402958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100842, 33.673862, 38.867882>,  <33.070572, 33.006832, 38.466335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100842, 33.673862, 38.867882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715183, 33.575237, 38.828640>,  <32.483788, 33.516060, 38.805096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715183, 33.575237, 38.828640>,  <33.100842, 33.673862, 38.867882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715183, 33.575237, 38.828640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133423, 0.130864, 0.982381,
		-0.229384, 0.960250, -0.159070,
		-0.964148, -0.246566, -0.098101,
		32.425938, 33.501266, 38.799210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623428, 34.234211, 39.176476>,  <33.100842, 33.673862, 38.867882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623428, 34.234211, 39.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422112, 33.888569, 39.174656>,  <32.301323, 33.681183, 39.173565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422112, 33.888569, 39.174656>,  <32.623428, 34.234211, 39.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422112, 33.888569, 39.174656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176567, 0.097683, 0.979430,
		-0.845887, 0.493740, -0.201735,
		-0.503289, -0.864106, -0.004550,
		32.271126, 33.629337, 39.173290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992456, 34.344212, 39.429745>,  <32.623428, 34.234211, 39.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992456, 34.344212, 39.429745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024666, 33.952747, 39.505367>,  <32.043991, 33.717869, 39.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024666, 33.952747, 39.505367>,  <31.992456, 34.344212, 39.429745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024666, 33.952747, 39.505367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233316, 0.165897, 0.958145,
		-0.969061, -0.121263, -0.214979,
		0.080524, -0.978659, 0.189057,
		32.048824, 33.659149, 39.562084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534750, 34.240032, 40.038483>,  <31.992456, 34.344212, 39.429745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534750, 34.240032, 40.038483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763277, 33.912605, 40.014694>,  <31.900394, 33.716148, 40.000423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763277, 33.912605, 40.014694>,  <31.534750, 34.240032, 40.038483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763277, 33.912605, 40.014694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163687, 0.042644, 0.985590,
		-0.804240, -0.572821, 0.158353,
		0.571319, -0.818571, -0.059467,
		31.934673, 33.667034, 39.996853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239750, 33.833164, 40.586609>,  <31.534750, 34.240032, 40.038483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239750, 33.833164, 40.586609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618893, 33.737537, 40.502312>,  <31.846378, 33.680161, 40.451733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618893, 33.737537, 40.502312>,  <31.239750, 33.833164, 40.586609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618893, 33.737537, 40.502312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193848, -0.092372, 0.976673,
		-0.252959, -0.966599, -0.041212,
		0.947858, -0.239069, -0.210739,
		31.903250, 33.665817, 40.439091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424931, 33.313423, 41.140537>,  <31.239750, 33.833164, 40.586609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424931, 33.313423, 41.140537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787046, 33.412300, 41.002354>,  <32.004318, 33.471626, 40.919441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787046, 33.412300, 41.002354>,  <31.424931, 33.313423, 41.140537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787046, 33.412300, 41.002354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367687, -0.048724, 0.928672,
		0.212728, -0.967741, -0.134998,
		0.905292, 0.247192, -0.345461,
		32.058636, 33.486458, 40.898716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943048, 33.012707, 41.609894>,  <31.424931, 33.313423, 41.140537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943048, 33.012707, 41.609894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183010, 33.292526, 41.454586>,  <32.326988, 33.460419, 41.361401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183010, 33.292526, 41.454586>,  <31.943048, 33.012707, 41.609894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183010, 33.292526, 41.454586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532997, 0.012488, 0.846025,
		0.596681, -0.714480, -0.365364,
		0.599905, 0.699545, -0.388267,
		32.362980, 33.502388, 41.338104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601410, 32.833500, 41.829144>,  <31.943048, 33.012707, 41.609894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601410, 32.833500, 41.829144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654842, 33.215569, 41.723465>,  <32.686901, 33.444809, 41.660057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654842, 33.215569, 41.723465>,  <32.601410, 32.833500, 41.829144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654842, 33.215569, 41.723465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405830, 0.190486, 0.893878,
		0.904135, -0.226619, -0.362194,
		0.133577, 0.955175, -0.264194,
		32.694916, 33.502121, 41.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327717, 33.014923, 42.072544>,  <32.601410, 32.833500, 41.829144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327717, 33.014923, 42.072544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131145, 33.361889, 42.041344>,  <33.013203, 33.570068, 42.022621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131145, 33.361889, 42.041344>,  <33.327717, 33.014923, 42.072544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131145, 33.361889, 42.041344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502950, 0.355780, 0.787694,
		0.711010, 0.347867, -0.611108,
		-0.491433, 0.867415, -0.078004,
		32.983715, 33.622112, 42.017944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925083, 33.525070, 42.040558>,  <33.327717, 33.014923, 42.072544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925083, 33.525070, 42.040558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583126, 33.706547, 42.141212>,  <33.377953, 33.815434, 42.201603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583126, 33.706547, 42.141212>,  <33.925083, 33.525070, 42.040558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583126, 33.706547, 42.141212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407294, 0.286485, 0.867201,
		0.321354, 0.843854, -0.429701,
		-0.854893, 0.453693, 0.251633,
		33.326656, 33.842655, 42.216702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154724, 34.208351, 42.202141>,  <33.925083, 33.525070, 42.040558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154724, 34.208351, 42.202141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811424, 34.129547, 42.391708>,  <33.605446, 34.082264, 42.505447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811424, 34.129547, 42.391708>,  <34.154724, 34.208351, 42.202141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811424, 34.129547, 42.391708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342428, 0.468017, 0.814680,
		-0.382305, 0.861479, -0.334211,
		-0.858245, -0.197013, 0.473920,
		33.553951, 34.070442, 42.533886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164085, 34.835899, 42.537281>,  <34.154724, 34.208351, 42.202141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164085, 34.835899, 42.537281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885532, 34.596600, 42.695850>,  <33.718399, 34.453022, 42.790993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885532, 34.596600, 42.695850>,  <34.164085, 34.835899, 42.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885532, 34.596600, 42.695850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314097, 0.242598, 0.917872,
		-0.645286, 0.763706, 0.018966,
		-0.696383, -0.598247, 0.396423,
		33.676617, 34.417126, 42.814777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668880, 35.267117, 43.062141>,  <34.164085, 34.835899, 42.537281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668880, 35.267117, 43.062141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652351, 34.881817, 43.168304>,  <33.642433, 34.650635, 43.232002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652351, 34.881817, 43.168304>,  <33.668880, 35.267117, 43.062141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652351, 34.881817, 43.168304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410223, 0.225854, 0.883576,
		-0.911049, 0.145385, 0.385815,
		-0.041321, -0.963251, 0.265405,
		33.639954, 34.592842, 43.247925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482105, 35.270538, 43.718719>,  <33.668880, 35.267117, 43.062141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482105, 35.270538, 43.718719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603382, 34.889896, 43.698666>,  <33.676147, 34.661510, 43.686634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603382, 34.889896, 43.698666>,  <33.482105, 35.270538, 43.718719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603382, 34.889896, 43.698666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278840, 0.038285, 0.959574,
		-0.911221, -0.304916, 0.276954,
		0.303192, -0.951610, -0.050137,
		33.694340, 34.604412, 43.683624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177967, 34.952332, 44.350552>,  <33.482105, 35.270538, 43.718719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177967, 34.952332, 44.350552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476852, 34.712311, 44.236275>,  <33.656181, 34.568298, 44.167709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476852, 34.712311, 44.236275>,  <33.177967, 34.952332, 44.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476852, 34.712311, 44.236275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384892, 0.040270, 0.922083,
		-0.541789, -0.798950, 0.261044,
		0.747210, -0.600048, -0.285691,
		33.701015, 34.532295, 44.150566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201847, 34.314178, 44.692654>,  <33.177967, 34.952332, 44.350552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201847, 34.314178, 44.692654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580578, 34.373020, 44.578194>,  <33.807816, 34.408325, 44.509518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580578, 34.373020, 44.578194>,  <33.201847, 34.314178, 44.692654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580578, 34.373020, 44.578194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285385, 0.026747, 0.958040,
		0.148586, -0.988759, -0.016657,
		0.946825, 0.147105, -0.286152,
		33.864624, 34.417152, 44.492348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573265, 33.774849, 45.063366>,  <33.201847, 34.314178, 44.692654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573265, 33.774849, 45.063366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847172, 34.048645, 44.963314>,  <34.011517, 34.212921, 44.903282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847172, 34.048645, 44.963314>,  <33.573265, 33.774849, 45.063366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847172, 34.048645, 44.963314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361507, -0.021023, 0.932132,
		0.632778, -0.728718, -0.261844,
		0.684766, 0.684491, -0.250134,
		34.052601, 34.253994, 44.888275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161339, 33.581215, 45.452957>,  <33.573265, 33.774849, 45.063366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161339, 33.581215, 45.452957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267281, 33.947025, 45.330647>,  <34.330845, 34.166512, 45.257259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267281, 33.947025, 45.330647>,  <34.161339, 33.581215, 45.452957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267281, 33.947025, 45.330647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401690, 0.183639, 0.897174,
		0.876639, -0.360449, -0.318717,
		0.264857, 0.914523, -0.305774,
		34.346737, 34.221382, 45.238914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757202, 33.629345, 45.885670>,  <34.161339, 33.581215, 45.452957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757202, 33.629345, 45.885670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680389, 34.003803, 45.767853>,  <34.634300, 34.228477, 45.697163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680389, 34.003803, 45.767853>,  <34.757202, 33.629345, 45.885670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680389, 34.003803, 45.767853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288267, 0.340693, 0.894891,
		0.938096, 0.086944, -0.335285,
		-0.192035, 0.936146, -0.294540,
		34.622780, 34.284649, 45.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346470, 34.014957, 45.896866>,  <34.757202, 33.629345, 45.885670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346470, 34.014957, 45.896866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058422, 34.290279, 45.931862>,  <34.885593, 34.455475, 45.952862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058422, 34.290279, 45.931862>,  <35.346470, 34.014957, 45.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058422, 34.290279, 45.931862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394340, 0.302253, 0.867836,
		0.570892, 0.659451, -0.489087,
		-0.720124, 0.688307, 0.087494,
		34.842384, 34.496773, 45.958111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727535, 34.658321, 46.073349>,  <35.346470, 34.014957, 45.896866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727535, 34.658321, 46.073349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349087, 34.679306, 46.201160>,  <35.122017, 34.691895, 46.277847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349087, 34.679306, 46.201160>,  <35.727535, 34.658321, 46.073349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349087, 34.679306, 46.201160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321630, 0.266492, 0.908590,
		-0.037490, 0.962409, -0.269006,
		-0.946123, 0.052457, 0.319530,
		35.065250, 34.695042, 46.297020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153004, 35.220100, 45.912716>,  <35.727535, 34.658321, 46.073349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153004, 35.220100, 45.912716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526100, 35.075890, 45.913792>,  <36.749958, 34.989365, 45.914436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526100, 35.075890, 45.913792>,  <36.153004, 35.220100, 45.912716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526100, 35.075890, 45.913792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041766, -0.115464, -0.992433,
		0.358109, 0.925575, -0.122756,
		0.932745, -0.360526, 0.002691,
		36.805923, 34.967731, 45.914600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554707, 35.600864, 45.345161>,  <36.153004, 35.220100, 45.912716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554707, 35.600864, 45.345161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725334, 35.248230, 45.426003>,  <36.827709, 35.036648, 45.474506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725334, 35.248230, 45.426003>,  <36.554707, 35.600864, 45.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725334, 35.248230, 45.426003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040028, -0.204827, -0.977979,
		0.903569, 0.425264, -0.052084,
		0.426568, -0.881587, 0.202098,
		36.853306, 34.983753, 45.486633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197067, 35.512554, 44.910343>,  <36.554707, 35.600864, 45.345161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197067, 35.512554, 44.910343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063404, 35.146816, 45.001827>,  <36.983204, 34.927372, 45.056717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063404, 35.146816, 45.001827>,  <37.197067, 35.512554, 44.910343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063404, 35.146816, 45.001827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195615, -0.304660, -0.932158,
		0.921994, -0.266750, 0.280664,
		-0.334160, -0.914345, 0.228714,
		36.963158, 34.872513, 45.070442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584785, 35.188019, 44.589561>,  <37.197067, 35.512554, 44.910343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584785, 35.188019, 44.589561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275772, 34.941116, 44.649139>,  <37.090363, 34.792976, 44.684887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275772, 34.941116, 44.649139>,  <37.584785, 35.188019, 44.589561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275772, 34.941116, 44.649139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101300, -0.351372, -0.930739,
		0.626837, -0.703943, 0.333976,
		-0.772537, -0.617254, 0.148944,
		37.044010, 34.755939, 44.693821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789768, 34.541382, 44.243435>,  <37.584785, 35.188019, 44.589561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789768, 34.541382, 44.243435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391968, 34.519341, 44.279045>,  <37.153286, 34.506115, 44.300411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391968, 34.519341, 44.279045>,  <37.789768, 34.541382, 44.243435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391968, 34.519341, 44.279045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063288, -0.360965, -0.930429,
		0.083407, -0.930950, 0.355494,
		-0.994504, -0.055106, 0.089025,
		37.093616, 34.502808, 44.305752>
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
