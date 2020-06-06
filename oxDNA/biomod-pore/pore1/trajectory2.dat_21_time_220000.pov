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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<49.634720, 39.618969, 44.698994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.699509, 39.883400, 44.992046>,  <49.738384, 40.042057, 45.167877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.699509, 39.883400, 44.992046>,  <49.634720, 39.618969, 44.698994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.699509, 39.883400, 44.992046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968403, -0.036185, 0.246752,
		0.189632, -0.749447, 0.634325,
		0.161975, 0.661074, 0.732628,
		49.748100, 40.081722, 45.211834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.398033, 39.348492, 45.217068>,  <49.634720, 39.618969, 44.698994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.398033, 39.348492, 45.217068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.411819, 39.737679, 45.308418>,  <49.420090, 39.971191, 45.363228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.411819, 39.737679, 45.308418>,  <49.398033, 39.348492, 45.217068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.411819, 39.737679, 45.308418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953349, -0.036566, 0.299647,
		0.299896, -0.228048, 0.926313,
		0.034462, 0.972963, 0.228376,
		49.422157, 40.029568, 45.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.208042, 39.341133, 45.824089>,  <49.398033, 39.348492, 45.217068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.208042, 39.341133, 45.824089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123367, 39.712715, 45.702614>,  <49.072563, 39.935665, 45.629730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123367, 39.712715, 45.702614>,  <49.208042, 39.341133, 45.824089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.123367, 39.712715, 45.702614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926823, -0.092200, 0.364004,
		0.310144, 0.358518, 0.880497,
		-0.211684, 0.928958, -0.303687,
		49.059860, 39.991402, 45.611507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.920368, 39.625732, 46.322929>,  <49.208042, 39.341133, 45.824089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.920368, 39.625732, 46.322929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.799507, 39.873573, 46.033157>,  <48.726990, 40.022278, 45.859295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.799507, 39.873573, 46.033157>,  <48.920368, 39.625732, 46.322929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.799507, 39.873573, 46.033157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918558, 0.013935, 0.395041,
		0.254864, 0.784790, 0.564932,
		-0.302151, 0.619605, -0.724427,
		48.708862, 40.059456, 45.815830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.615639, 40.151680, 46.669022>,  <48.920368, 39.625732, 46.322929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.615639, 40.151680, 46.669022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.453148, 40.167229, 46.303844>,  <48.355656, 40.176559, 46.084736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.453148, 40.167229, 46.303844>,  <48.615639, 40.151680, 46.669022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.453148, 40.167229, 46.303844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887770, 0.219861, 0.404383,
		0.216442, 0.974756, -0.054801,
		-0.406223, 0.038875, -0.912947,
		48.331280, 40.178890, 46.029961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.315941, 40.854134, 46.554020>,  <48.615639, 40.151680, 46.669022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.315941, 40.854134, 46.554020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.111275, 40.638557, 46.286366>,  <47.988476, 40.509212, 46.125774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.111275, 40.638557, 46.286366>,  <48.315941, 40.854134, 46.554020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.111275, 40.638557, 46.286366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848578, 0.438984, 0.295310,
		0.134583, 0.718911, -0.681949,
		-0.511666, -0.538943, -0.669132,
		47.957775, 40.476875, 46.085625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806351, 41.391365, 46.291981>,  <48.315941, 40.854134, 46.554020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806351, 41.391365, 46.291981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674828, 41.030525, 46.180187>,  <47.595913, 40.814022, 46.113113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674828, 41.030525, 46.180187>,  <47.806351, 41.391365, 46.291981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674828, 41.030525, 46.180187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919753, 0.238713, 0.311562,
		-0.214343, 0.359496, -0.908196,
		-0.328804, -0.902097, -0.279481,
		47.576187, 40.759895, 46.096344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222301, 41.415432, 45.918644>,  <47.806351, 41.391365, 46.291981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222301, 41.415432, 45.918644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163078, 41.047531, 46.064041>,  <47.127544, 40.826790, 46.151279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163078, 41.047531, 46.064041>,  <47.222301, 41.415432, 45.918644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163078, 41.047531, 46.064041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949649, 0.234838, 0.207406,
		-0.276125, -0.314487, -0.908214,
		-0.148057, -0.919755, 0.363497,
		47.118660, 40.771606, 46.173092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557590, 41.220985, 45.712505>,  <47.222301, 41.415432, 45.918644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557590, 41.220985, 45.712505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658134, 40.986877, 46.020863>,  <46.718460, 40.846413, 46.205879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658134, 40.986877, 46.020863>,  <46.557590, 41.220985, 45.712505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658134, 40.986877, 46.020863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887121, 0.179222, 0.425319,
		-0.387087, -0.790785, -0.474154,
		0.251357, -0.585268, 0.770897,
		46.733543, 40.811298, 46.252132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955223, 40.902069, 45.905769>,  <46.557590, 41.220985, 45.712505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955223, 40.902069, 45.905769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197426, 40.835762, 46.217121>,  <46.342747, 40.795979, 46.403934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197426, 40.835762, 46.217121>,  <45.955223, 40.902069, 45.905769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197426, 40.835762, 46.217121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780444, 0.067764, 0.621543,
		-0.155781, -0.983833, -0.088344,
		0.605508, -0.165772, 0.778383,
		46.379078, 40.786030, 46.450638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643219, 40.344341, 46.261524>,  <45.955223, 40.902069, 45.905769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643219, 40.344341, 46.261524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891441, 40.469971, 46.548931>,  <46.040375, 40.545349, 46.721375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891441, 40.469971, 46.548931>,  <45.643219, 40.344341, 46.261524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891441, 40.469971, 46.548931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701410, -0.187372, 0.687688,
		0.350616, -0.930725, 0.104021,
		0.620558, 0.314076, 0.718516,
		46.077610, 40.564194, 46.764484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654163, 39.800720, 46.799568>,  <45.643219, 40.344341, 46.261524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654163, 39.800720, 46.799568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781990, 40.129234, 46.988613>,  <45.858685, 40.326344, 47.102039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781990, 40.129234, 46.988613>,  <45.654163, 39.800720, 46.799568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781990, 40.129234, 46.988613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631020, -0.187634, 0.752733,
		0.706889, -0.538775, 0.458289,
		0.319563, 0.821288, 0.472615,
		45.877861, 40.375622, 47.130398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899296, 39.575684, 47.535713>,  <45.654163, 39.800720, 46.799568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899296, 39.575684, 47.535713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822792, 39.967888, 47.553696>,  <45.776890, 40.203209, 47.564484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822792, 39.967888, 47.553696>,  <45.899296, 39.575684, 47.535713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822792, 39.967888, 47.553696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600801, -0.153164, 0.784588,
		0.776182, 0.123047, 0.618385,
		-0.191256, 0.980510, 0.044956,
		45.765415, 40.262039, 47.567184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977261, 39.702614, 48.205391>,  <45.899296, 39.575684, 47.535713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977261, 39.702614, 48.205391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737976, 39.987885, 48.059231>,  <45.594406, 40.159046, 47.971535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737976, 39.987885, 48.059231>,  <45.977261, 39.702614, 48.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737976, 39.987885, 48.059231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518183, 0.003553, 0.855262,
		0.611253, 0.700973, 0.367432,
		-0.598210, 0.713179, -0.365404,
		45.558514, 40.201839, 47.949608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922508, 40.191593, 48.723934>,  <45.977261, 39.702614, 48.205391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922508, 40.191593, 48.723934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601036, 40.270271, 48.499290>,  <45.408154, 40.317478, 48.364502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601036, 40.270271, 48.499290>,  <45.922508, 40.191593, 48.723934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601036, 40.270271, 48.499290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535309, 0.173222, 0.826704,
		0.259889, 0.965042, -0.033924,
		-0.803681, 0.196691, -0.561614,
		45.359932, 40.329277, 48.330807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696278, 40.719318, 49.138672>,  <45.922508, 40.191593, 48.723934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696278, 40.719318, 49.138672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400024, 40.574173, 48.912472>,  <45.222275, 40.487083, 48.776752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400024, 40.574173, 48.912472>,  <45.696278, 40.719318, 49.138672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400024, 40.574173, 48.912472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588254, -0.056527, 0.806698,
		-0.324690, 0.930125, -0.171591,
		-0.740631, -0.362866, -0.565503,
		45.177834, 40.465313, 48.742821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093388, 41.067291, 49.353916>,  <45.696278, 40.719318, 49.138672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093388, 41.067291, 49.353916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950279, 40.738686, 49.176327>,  <44.864414, 40.541523, 49.069775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950279, 40.738686, 49.176327>,  <45.093388, 41.067291, 49.353916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950279, 40.738686, 49.176327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612534, -0.152406, 0.775612,
		-0.704844, 0.549436, -0.448682,
		-0.357767, -0.821518, -0.443971,
		44.842949, 40.492229, 49.043137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399899, 41.091000, 49.521763>,  <45.093388, 41.067291, 49.353916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399899, 41.091000, 49.521763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459980, 40.706779, 49.428143>,  <44.496029, 40.476246, 49.371971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459980, 40.706779, 49.428143>,  <44.399899, 41.091000, 49.521763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459980, 40.706779, 49.428143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548781, -0.277920, 0.788416,
		-0.822361, 0.010015, -0.568878,
		0.150206, -0.960552, -0.234047,
		44.505043, 40.418613, 49.357929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797615, 40.827408, 49.585365>,  <44.399899, 41.091000, 49.521763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797615, 40.827408, 49.585365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022881, 40.497696, 49.608727>,  <44.158039, 40.299870, 49.622742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022881, 40.497696, 49.608727>,  <43.797615, 40.827408, 49.585365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022881, 40.497696, 49.608727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533688, -0.308843, 0.787270,
		-0.630896, -0.474525, -0.613837,
		0.563159, -0.824282, 0.058400,
		44.191830, 40.250412, 49.626247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349712, 40.285725, 49.669430>,  <43.797615, 40.827408, 49.585365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349712, 40.285725, 49.669430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699181, 40.150612, 49.809486>,  <43.908863, 40.069546, 49.893520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699181, 40.150612, 49.809486>,  <43.349712, 40.285725, 49.669430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699181, 40.150612, 49.809486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436482, -0.226325, 0.870781,
		-0.214855, -0.913622, -0.345156,
		0.873682, -0.337747, 0.350153,
		43.961285, 40.049278, 49.914528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144722, 39.824554, 50.115162>,  <43.349712, 40.285725, 49.669430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144722, 39.824554, 50.115162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523346, 39.866997, 50.236996>,  <43.750519, 39.892460, 50.310097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523346, 39.866997, 50.236996>,  <43.144722, 39.824554, 50.115162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523346, 39.866997, 50.236996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294361, -0.101804, 0.950257,
		0.131832, -0.989130, -0.065131,
		0.946558, 0.106102, 0.304582,
		43.807312, 39.898827, 50.328369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271351, 39.225529, 50.389801>,  <43.144722, 39.824554, 50.115162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271351, 39.225529, 50.389801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527771, 39.489304, 50.546871>,  <43.681622, 39.647568, 50.641113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527771, 39.489304, 50.546871>,  <43.271351, 39.225529, 50.389801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527771, 39.489304, 50.546871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255833, -0.298765, 0.919396,
		0.723604, -0.689838, -0.022817,
		0.641052, 0.659441, 0.392671,
		43.720085, 39.687138, 50.664673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626194, 38.803219, 50.696930>,  <43.271351, 39.225529, 50.389801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626194, 38.803219, 50.696930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690697, 39.157547, 50.870972>,  <43.729401, 39.370144, 50.975399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690697, 39.157547, 50.870972>,  <43.626194, 38.803219, 50.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690697, 39.157547, 50.870972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180475, -0.406976, 0.895432,
		0.970270, -0.222924, 0.094239,
		0.161260, 0.885819, 0.435109,
		43.739075, 39.423294, 51.001503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964039, 38.594681, 51.283340>,  <43.626194, 38.803219, 50.696930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964039, 38.594681, 51.283340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797363, 38.954773, 51.333878>,  <43.697357, 39.170826, 51.364201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797363, 38.954773, 51.333878>,  <43.964039, 38.594681, 51.283340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797363, 38.954773, 51.333878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338510, -0.282648, 0.897508,
		0.843672, 0.331212, 0.422512,
		-0.416688, 0.900227, 0.126344,
		43.672356, 39.224842, 51.371780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147087, 38.876835, 51.933975>,  <43.964039, 38.594681, 51.283340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147087, 38.876835, 51.933975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801857, 39.056458, 51.841507>,  <43.594719, 39.164230, 51.786026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801857, 39.056458, 51.841507>,  <44.147087, 38.876835, 51.933975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801857, 39.056458, 51.841507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398086, -0.323131, 0.858554,
		0.310838, 0.833028, 0.457650,
		-0.863080, 0.449056, -0.231175,
		43.542934, 39.191174, 51.772156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824993, 38.956699, 52.553890>,  <44.147087, 38.876835, 51.933975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824993, 38.956699, 52.553890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504341, 39.086708, 52.353191>,  <43.311951, 39.164715, 52.232773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504341, 39.086708, 52.353191>,  <43.824993, 38.956699, 52.553890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504341, 39.086708, 52.353191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574158, -0.184785, 0.797620,
		0.166531, 0.927477, 0.334744,
		-0.801630, 0.325025, -0.501746,
		43.263851, 39.184216, 52.202667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475101, 39.589485, 52.956234>,  <43.824993, 38.956699, 52.553890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475101, 39.589485, 52.956234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195107, 39.425240, 52.722511>,  <43.027107, 39.326691, 52.582279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195107, 39.425240, 52.722511>,  <43.475101, 39.589485, 52.956234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195107, 39.425240, 52.722511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680915, 0.137033, 0.719428,
		-0.215337, 0.901454, -0.375514,
		-0.699989, -0.410612, -0.584305,
		42.985111, 39.302055, 52.547218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865288, 40.035282, 52.984295>,  <43.475101, 39.589485, 52.956234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865288, 40.035282, 52.984295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744064, 39.669739, 52.876209>,  <42.671329, 39.450413, 52.811359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744064, 39.669739, 52.876209>,  <42.865288, 40.035282, 52.984295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744064, 39.669739, 52.876209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715697, 0.031040, 0.697721,
		-0.629232, 0.404841, -0.663454,
		-0.303059, -0.913860, -0.270212,
		42.653145, 39.395580, 52.795147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217484, 40.065144, 53.120472>,  <42.865288, 40.035282, 52.984295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217484, 40.065144, 53.120472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283768, 39.670822, 53.109703>,  <42.323540, 39.434227, 53.103241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283768, 39.670822, 53.109703>,  <42.217484, 40.065144, 53.120472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283768, 39.670822, 53.109703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723315, -0.140055, 0.676166,
		-0.670339, -0.092574, -0.736258,
		0.165712, -0.985807, -0.026925,
		42.333481, 39.375080, 53.101627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482109, 39.831802, 53.156559>,  <42.217484, 40.065144, 53.120472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482109, 39.831802, 53.156559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755314, 39.557281, 53.256546>,  <41.919239, 39.392570, 53.316540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755314, 39.557281, 53.256546>,  <41.482109, 39.831802, 53.156559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755314, 39.557281, 53.256546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586520, -0.311383, 0.747687,
		-0.435301, -0.657292, -0.615207,
		0.683014, -0.686300, 0.249970,
		41.960217, 39.351391, 53.331539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174023, 39.247559, 53.210182>,  <41.482109, 39.831802, 53.156559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174023, 39.247559, 53.210182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501785, 39.189400, 53.431965>,  <41.698444, 39.154507, 53.565037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501785, 39.189400, 53.431965>,  <41.174023, 39.247559, 53.210182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501785, 39.189400, 53.431965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570364, -0.303021, 0.763455,
		0.057014, -0.941828, -0.331224,
		0.819411, -0.145391, 0.554461,
		41.747608, 39.145782, 53.598305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920574, 38.828842, 53.670364>,  <41.174023, 39.247559, 53.210182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920574, 38.828842, 53.670364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271568, 38.922745, 53.837654>,  <41.482162, 38.979088, 53.938030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271568, 38.922745, 53.837654>,  <40.920574, 38.828842, 53.670364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271568, 38.922745, 53.837654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351565, -0.278307, 0.893838,
		0.326230, -0.931362, -0.161678,
		0.877483, 0.234756, 0.418227,
		41.534813, 38.993172, 53.963123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913078, 38.387245, 54.210430>,  <40.920574, 38.828842, 53.670364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913078, 38.387245, 54.210430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190052, 38.658905, 54.307823>,  <41.356236, 38.821903, 54.366261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190052, 38.658905, 54.307823>,  <40.913078, 38.387245, 54.210430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190052, 38.658905, 54.307823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229487, -0.112625, 0.966774,
		0.684009, -0.725306, 0.077871,
		0.692436, 0.679152, 0.243484,
		41.397781, 38.862652, 54.380867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083553, 38.109097, 54.783104>,  <40.913078, 38.387245, 54.210430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083553, 38.109097, 54.783104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236279, 38.478592, 54.795216>,  <41.327915, 38.700291, 54.802483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236279, 38.478592, 54.795216>,  <41.083553, 38.109097, 54.783104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236279, 38.478592, 54.795216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029171, -0.020703, 0.999360,
		0.923778, -0.382456, 0.019042,
		0.381817, 0.923742, 0.030282,
		41.350822, 38.755714, 54.804298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539856, 38.083092, 55.215561>,  <41.083553, 38.109097, 54.783104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539856, 38.083092, 55.215561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463753, 38.475784, 55.215893>,  <41.418091, 38.711399, 55.216091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463753, 38.475784, 55.215893>,  <41.539856, 38.083092, 55.215561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463753, 38.475784, 55.215893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033866, -0.007405, 0.999399,
		0.981150, 0.190115, 0.034657,
		-0.190257, 0.981734, 0.000827,
		41.406677, 38.770306, 55.216141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857330, 38.300728, 55.818409>,  <41.539856, 38.083092, 55.215561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857330, 38.300728, 55.818409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604515, 38.603371, 55.751385>,  <41.452827, 38.784958, 55.711170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604515, 38.603371, 55.751385>,  <41.857330, 38.300728, 55.818409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604515, 38.603371, 55.751385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039928, 0.247728, 0.968006,
		0.773908, 0.605127, -0.186784,
		-0.632038, 0.756606, -0.167557,
		41.414902, 38.830353, 55.701118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139572, 38.841721, 56.179729>,  <41.857330, 38.300728, 55.818409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139572, 38.841721, 56.179729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754036, 38.924194, 56.112202>,  <41.522713, 38.973679, 56.071686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754036, 38.924194, 56.112202>,  <42.139572, 38.841721, 56.179729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754036, 38.924194, 56.112202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114672, 0.250953, 0.961183,
		0.240546, 0.945786, -0.218235,
		-0.963840, 0.206183, -0.168821,
		41.464886, 38.986050, 56.061554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985954, 39.534431, 56.305599>,  <42.139572, 38.841721, 56.179729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985954, 39.534431, 56.305599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661476, 39.310356, 56.372711>,  <41.466789, 39.175911, 56.412979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661476, 39.310356, 56.372711>,  <41.985954, 39.534431, 56.305599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661476, 39.310356, 56.372711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013656, 0.268681, 0.963132,
		-0.584618, 0.783578, -0.210303,
		-0.811194, -0.560193, 0.167776,
		41.418118, 39.142300, 56.423042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624447, 39.994518, 56.725773>,  <41.985954, 39.534431, 56.305599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624447, 39.994518, 56.725773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455719, 39.634911, 56.772808>,  <41.354481, 39.419144, 56.801029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455719, 39.634911, 56.772808>,  <41.624447, 39.994518, 56.725773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455719, 39.634911, 56.772808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134628, 0.190356, 0.972440,
		-0.896627, 0.394367, -0.201330,
		-0.421823, -0.899021, 0.117586,
		41.329170, 39.365204, 56.808083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993938, 40.120411, 56.883884>,  <41.624447, 39.994518, 56.725773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993938, 40.120411, 56.883884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046448, 39.755882, 57.039963>,  <41.077953, 39.537163, 57.133610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046448, 39.755882, 57.039963>,  <40.993938, 40.120411, 56.883884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046448, 39.755882, 57.039963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170710, 0.366944, 0.914445,
		-0.976537, -0.186656, -0.107401,
		0.131277, -0.911324, 0.390198,
		41.085831, 39.482487, 57.157021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426968, 40.056824, 57.354103>,  <40.993938, 40.120411, 56.883884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426968, 40.056824, 57.354103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695038, 39.782921, 57.468624>,  <40.855881, 39.618580, 57.537338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695038, 39.782921, 57.468624>,  <40.426968, 40.056824, 57.354103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695038, 39.782921, 57.468624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205762, 0.199217, 0.958110,
		-0.713108, -0.701015, -0.007386,
		0.670179, -0.684756, 0.286305,
		40.896091, 39.577496, 57.554516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099518, 39.791580, 57.959900>,  <40.426968, 40.056824, 57.354103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099518, 39.791580, 57.959900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480957, 39.671265, 57.965157>,  <40.709820, 39.599075, 57.968311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480957, 39.671265, 57.965157>,  <40.099518, 39.791580, 57.959900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480957, 39.671265, 57.965157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013257, 0.001671, 0.999911,
		-0.300787, -0.953688, -0.002395,
		0.953599, -0.300792, 0.013146,
		40.767036, 39.581028, 57.969101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151291, 39.106888, 58.296597>,  <40.099518, 39.791580, 57.959900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151291, 39.106888, 58.296597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470337, 39.342590, 58.348114>,  <40.661762, 39.484013, 58.379025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470337, 39.342590, 58.348114>,  <40.151291, 39.106888, 58.296597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470337, 39.342590, 58.348114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144743, -0.020307, 0.989261,
		0.585546, -0.807689, 0.069093,
		0.797612, 0.589258, 0.128798,
		40.709621, 39.519367, 58.386753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677784, 38.709919, 58.706398>,  <40.151291, 39.106888, 58.296597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677784, 38.709919, 58.706398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691177, 39.096848, 58.806927>,  <40.699211, 39.329006, 58.867245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691177, 39.096848, 58.806927>,  <40.677784, 38.709919, 58.706398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691177, 39.096848, 58.806927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372202, -0.221305, 0.901382,
		0.927548, -0.123719, 0.352631,
		0.033479, 0.967325, 0.251319,
		40.701221, 39.387047, 58.882324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980881, 38.863010, 59.407860>,  <40.677784, 38.709919, 58.706398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980881, 38.863010, 59.407860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654411, 39.057518, 59.283028>,  <40.458530, 39.174225, 59.208130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654411, 39.057518, 59.283028>,  <40.980881, 38.863010, 59.407860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654411, 39.057518, 59.283028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392162, -0.069537, 0.917264,
		0.424339, 0.871036, 0.247453,
		-0.816177, 0.486272, -0.312080,
		40.409557, 39.203400, 59.189404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747746, 39.155712, 59.971012>,  <40.980881, 38.863010, 59.407860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747746, 39.155712, 59.971012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433548, 39.167862, 59.723766>,  <40.245029, 39.175152, 59.575417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433548, 39.167862, 59.723766>,  <40.747746, 39.155712, 59.971012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433548, 39.167862, 59.723766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612682, -0.179002, 0.769791,
		-0.087260, 0.983380, 0.159217,
		-0.785497, 0.030378, -0.618119,
		40.197899, 39.176975, 59.538330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160435, 39.604328, 60.281929>,  <40.747746, 39.155712, 59.971012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160435, 39.604328, 60.281929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016422, 39.342377, 60.016144>,  <39.930016, 39.185204, 59.856674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016422, 39.342377, 60.016144>,  <40.160435, 39.604328, 60.281929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016422, 39.342377, 60.016144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728247, -0.247889, 0.638911,
		-0.583123, 0.713921, -0.387666,
		-0.360034, -0.654880, -0.664460,
		39.908413, 39.145912, 59.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869869, 39.578209, 60.761086>,  <40.160435, 39.604328, 60.281929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869869, 39.578209, 60.761086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974266, 39.931229, 60.917538>,  <41.036903, 40.143040, 61.011410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974266, 39.931229, 60.917538>,  <40.869869, 39.578209, 60.761086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974266, 39.931229, 60.917538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338582, 0.295741, -0.893252,
		-0.904015, 0.365563, -0.221630,
		0.260995, 0.882553, 0.391128,
		41.052563, 40.195995, 61.034878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553699, 40.215916, 60.380260>,  <40.869869, 39.578209, 60.761086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553699, 40.215916, 60.380260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913555, 40.297318, 60.534782>,  <41.129471, 40.346157, 60.627495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913555, 40.297318, 60.534782>,  <40.553699, 40.215916, 60.380260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913555, 40.297318, 60.534782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310761, 0.323062, -0.893901,
		-0.306712, 0.924239, 0.227399,
		0.899642, 0.203503, 0.386304,
		41.183449, 40.358368, 60.650673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744270, 40.644352, 59.880646>,  <40.553699, 40.215916, 60.380260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744270, 40.644352, 59.880646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075745, 40.540443, 60.078957>,  <41.274632, 40.478100, 60.197941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075745, 40.540443, 60.078957>,  <40.744270, 40.644352, 59.880646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075745, 40.540443, 60.078957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548702, 0.202260, -0.811183,
		0.110446, 0.944251, 0.310147,
		0.828690, -0.259770, 0.495774,
		41.324352, 40.462513, 60.227688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223728, 41.057388, 59.651691>,  <40.744270, 40.644352, 59.880646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223728, 41.057388, 59.651691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434113, 40.743210, 59.782196>,  <41.560341, 40.554703, 59.860500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434113, 40.743210, 59.782196>,  <41.223728, 41.057388, 59.651691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434113, 40.743210, 59.782196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584930, 0.055566, -0.809178,
		0.617434, 0.616435, 0.488654,
		0.525958, -0.785443, 0.326263,
		41.591900, 40.507576, 59.880074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091061, 41.129868, 59.657646>,  <41.223728, 41.057388, 59.651691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091061, 41.129868, 59.657646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988342, 40.745140, 59.619778>,  <41.926712, 40.514305, 59.597057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988342, 40.745140, 59.619778>,  <42.091061, 41.129868, 59.657646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988342, 40.745140, 59.619778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635720, -0.094321, -0.766135,
		0.727952, -0.256927, 0.635668,
		-0.256798, -0.961817, -0.094673,
		41.911304, 40.456596, 59.591377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707619, 40.744164, 59.724796>,  <42.091061, 41.129868, 59.657646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707619, 40.744164, 59.724796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463108, 40.507713, 59.514305>,  <42.316402, 40.365845, 59.388012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463108, 40.507713, 59.514305>,  <42.707619, 40.744164, 59.724796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463108, 40.507713, 59.514305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608691, 0.073793, -0.789968,
		0.505800, -0.803199, 0.314703,
		-0.611279, -0.591123, -0.526224,
		42.279724, 40.330376, 59.356438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079472, 40.079025, 59.582214>,  <42.707619, 40.744164, 59.724796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079472, 40.079025, 59.582214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800976, 40.151649, 59.304428>,  <42.633877, 40.195225, 59.137756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800976, 40.151649, 59.304428>,  <43.079472, 40.079025, 59.582214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800976, 40.151649, 59.304428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675032, -0.163388, -0.719469,
		-0.244095, -0.969711, -0.008802,
		-0.696239, 0.181560, -0.694468,
		42.592106, 40.206116, 59.096088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385983, 39.689861, 59.126041>,  <43.079472, 40.079025, 59.582214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385983, 39.689861, 59.126041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120804, 39.907608, 58.920452>,  <42.961697, 40.038258, 58.797096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120804, 39.907608, 58.920452>,  <43.385983, 39.689861, 59.126041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120804, 39.907608, 58.920452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501746, -0.186479, -0.844675,
		-0.555660, -0.817856, -0.149510,
		-0.662942, 0.544369, -0.513975,
		42.921921, 40.070919, 58.766258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238213, 39.308937, 58.554157>,  <43.385983, 39.689861, 59.126041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238213, 39.308937, 58.554157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110405, 39.680214, 58.477871>,  <43.033722, 39.902981, 58.432098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110405, 39.680214, 58.477871>,  <43.238213, 39.308937, 58.554157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110405, 39.680214, 58.477871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467786, -0.020529, -0.883604,
		-0.824066, -0.371544, -0.427634,
		-0.319519, 0.928188, -0.190720,
		43.014549, 39.958672, 58.420654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009926, 39.298355, 57.922932>,  <43.238213, 39.308937, 58.554157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009926, 39.298355, 57.922932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063492, 39.689873, 57.984947>,  <43.095631, 39.924782, 58.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063492, 39.689873, 57.984947>,  <43.009926, 39.298355, 57.922932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063492, 39.689873, 57.984947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531462, 0.061109, -0.844875,
		-0.836429, 0.195540, -0.512006,
		0.133919, 0.978790, 0.155036,
		43.103668, 39.983509, 58.031460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852959, 39.686779, 57.198166>,  <43.009926, 39.298355, 57.922932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852959, 39.686779, 57.198166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086887, 39.939201, 57.402027>,  <43.227245, 40.090656, 57.524345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086887, 39.939201, 57.402027>,  <42.852959, 39.686779, 57.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086887, 39.939201, 57.402027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583676, 0.108937, -0.804646,
		-0.563297, 0.768050, -0.304623,
		0.584824, 0.631056, 0.509656,
		43.262333, 40.128517, 57.554924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961689, 40.212578, 56.766712>,  <42.852959, 39.686779, 57.198166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961689, 40.212578, 56.766712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254272, 40.260498, 57.035225>,  <43.429821, 40.289249, 57.196331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254272, 40.260498, 57.035225>,  <42.961689, 40.212578, 56.766712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254272, 40.260498, 57.035225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643231, 0.205510, -0.737576,
		-0.226319, 0.971294, 0.073261,
		0.731460, 0.119804, 0.671278,
		43.473709, 40.296440, 57.236607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150192, 40.835316, 56.823357>,  <42.961689, 40.212578, 56.766712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150192, 40.835316, 56.823357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473213, 40.631195, 56.941643>,  <43.667027, 40.508724, 57.012615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473213, 40.631195, 56.941643>,  <43.150192, 40.835316, 56.823357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473213, 40.631195, 56.941643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530864, 0.410435, -0.741436,
		0.256984, 0.755734, 0.602350,
		0.807554, -0.510303, 0.295716,
		43.715481, 40.478104, 57.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704601, 41.281784, 56.714085>,  <43.150192, 40.835316, 56.823357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704601, 41.281784, 56.714085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930996, 40.960854, 56.789913>,  <44.066833, 40.768295, 56.835411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930996, 40.960854, 56.789913>,  <43.704601, 41.281784, 56.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930996, 40.960854, 56.789913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701770, 0.348203, -0.621509,
		0.432640, 0.484803, 0.760124,
		0.565987, -0.802322, 0.189574,
		44.100792, 40.720158, 56.846786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462730, 41.489796, 56.871914>,  <43.704601, 41.281784, 56.714085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462730, 41.489796, 56.871914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433643, 41.121681, 56.718143>,  <44.416191, 40.900810, 56.625881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433643, 41.121681, 56.718143>,  <44.462730, 41.489796, 56.871914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433643, 41.121681, 56.718143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646224, 0.250118, -0.720997,
		0.759676, -0.300851, 0.576525,
		-0.072714, -0.920288, -0.384426,
		44.411831, 40.845596, 56.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147633, 41.298149, 56.832447>,  <44.462730, 41.489796, 56.871914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147633, 41.298149, 56.832447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988747, 41.039375, 56.572079>,  <44.893414, 40.884109, 56.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988747, 41.039375, 56.572079>,  <45.147633, 41.298149, 56.832447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988747, 41.039375, 56.572079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745606, 0.186037, -0.639892,
		0.535063, -0.739505, 0.408461,
		-0.397214, -0.646934, -0.650921,
		44.869583, 40.845295, 56.376804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704796, 41.028435, 56.597260>,  <45.147633, 41.298149, 56.832447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704796, 41.028435, 56.597260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425934, 40.925438, 56.329628>,  <45.258617, 40.863640, 56.169048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425934, 40.925438, 56.329628>,  <45.704796, 41.028435, 56.597260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425934, 40.925438, 56.329628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595677, 0.311261, -0.740463,
		0.398923, -0.914775, -0.063615,
		-0.697158, -0.257494, -0.669080,
		45.216785, 40.848190, 56.128902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076786, 40.535492, 56.133999>,  <45.704796, 41.028435, 56.597260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076786, 40.535492, 56.133999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763733, 40.687737, 55.936974>,  <45.575901, 40.779083, 55.818760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763733, 40.687737, 55.936974>,  <46.076786, 40.535492, 56.133999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763733, 40.687737, 55.936974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569674, 0.118986, -0.813212,
		-0.250907, -0.917049, -0.309945,
		-0.782635, 0.380608, -0.492564,
		45.528942, 40.801918, 55.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057739, 40.132542, 55.451664>,  <46.076786, 40.535492, 56.133999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057739, 40.132542, 55.451664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851357, 40.468147, 55.382557>,  <45.727528, 40.669510, 55.341091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851357, 40.468147, 55.382557>,  <46.057739, 40.132542, 55.451664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851357, 40.468147, 55.382557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390157, 0.050612, -0.919357,
		-0.762606, -0.541754, -0.353459,
		-0.515955, 0.839012, -0.172772,
		45.696571, 40.719852, 55.330727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926472, 40.034409, 54.824589>,  <46.057739, 40.132542, 55.451664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926472, 40.034409, 54.824589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839073, 40.424278, 54.843632>,  <45.786633, 40.658199, 54.855057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839073, 40.424278, 54.843632>,  <45.926472, 40.034409, 54.824589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839073, 40.424278, 54.843632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403862, 0.134733, -0.904844,
		-0.888343, -0.178481, -0.423073,
		-0.218499, 0.974675, 0.047607,
		45.773525, 40.716682, 54.857914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569252, 40.229870, 54.076717>,  <45.926472, 40.034409, 54.824589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569252, 40.229870, 54.076717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734032, 40.548317, 54.254028>,  <45.832901, 40.739384, 54.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734032, 40.548317, 54.254028>,  <45.569252, 40.229870, 54.076717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734032, 40.548317, 54.254028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429376, 0.259474, -0.865049,
		-0.803699, 0.546690, -0.234943,
		0.411952, 0.796118, 0.443274,
		45.857616, 40.787151, 54.387012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211861, 40.775990, 53.815681>,  <45.569252, 40.229870, 54.076717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211861, 40.775990, 53.815681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573227, 40.891693, 53.942280>,  <45.790047, 40.961113, 54.018238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573227, 40.891693, 53.942280>,  <45.211861, 40.775990, 53.815681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573227, 40.891693, 53.942280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236026, 0.280739, -0.930310,
		-0.357949, 0.915160, 0.185353,
		0.903418, 0.289255, 0.316492,
		45.844254, 40.978470, 54.037228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368423, 41.414242, 53.382645>,  <45.211861, 40.775990, 53.815681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368423, 41.414242, 53.382645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711571, 41.279793, 53.538124>,  <45.917458, 41.199123, 53.631413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711571, 41.279793, 53.538124>,  <45.368423, 41.414242, 53.382645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711571, 41.279793, 53.538124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496750, 0.348786, -0.794725,
		0.131552, 0.874854, 0.466180,
		0.857866, -0.336122, 0.388700,
		45.968929, 41.178955, 53.654736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874245, 41.967674, 53.374706>,  <45.368423, 41.414242, 53.382645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874245, 41.967674, 53.374706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097435, 41.636948, 53.403076>,  <46.231350, 41.438511, 53.420097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097435, 41.636948, 53.403076>,  <45.874245, 41.967674, 53.374706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097435, 41.636948, 53.403076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488709, 0.258316, -0.833328,
		0.670691, 0.499641, 0.548209,
		0.557976, -0.826820, 0.070929,
		46.264828, 41.388901, 53.424355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448532, 42.173008, 53.052200>,  <45.874245, 41.967674, 53.374706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448532, 42.173008, 53.052200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520859, 41.779854, 53.066277>,  <46.564255, 41.543961, 53.074722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520859, 41.779854, 53.066277>,  <46.448532, 42.173008, 53.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520859, 41.779854, 53.066277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546988, 0.070765, -0.834144,
		0.817379, 0.170077, 0.550422,
		0.180820, -0.982887, 0.035188,
		46.575104, 41.484989, 53.076832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232510, 42.070282, 52.996784>,  <46.448532, 42.173008, 53.052200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232510, 42.070282, 52.996784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045471, 41.744164, 52.860168>,  <46.933247, 41.548492, 52.778198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045471, 41.744164, 52.860168>,  <47.232510, 42.070282, 52.996784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045471, 41.744164, 52.860168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628881, -0.035316, -0.776699,
		0.621177, -0.577969, 0.529237,
		-0.467599, -0.815294, -0.341536,
		46.905193, 41.499577, 52.757710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726471, 41.729729, 52.770691>,  <47.232510, 42.070282, 52.996784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726471, 41.729729, 52.770691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438705, 41.518478, 52.590237>,  <47.266045, 41.391727, 52.481964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438705, 41.518478, 52.590237>,  <47.726471, 41.729729, 52.770691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.438705, 41.518478, 52.590237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605755, -0.159248, -0.779552,
		0.339860, -0.834099, 0.434482,
		-0.719413, -0.528128, -0.451137,
		47.222881, 41.360039, 52.454895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.067162, 41.149940, 52.494865>,  <47.726471, 41.729729, 52.770691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.067162, 41.149940, 52.494865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722214, 41.166573, 52.293037>,  <47.515244, 41.176552, 52.171940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722214, 41.166573, 52.293037>,  <48.067162, 41.149940, 52.494865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722214, 41.166573, 52.293037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498471, -0.104613, -0.860572,
		-0.088553, -0.993644, 0.069497,
		-0.862372, 0.041564, -0.504566,
		47.463501, 41.179047, 52.141666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.121727, 40.572899, 52.104786>,  <48.067162, 41.149940, 52.494865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.121727, 40.572899, 52.104786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862473, 40.818497, 51.924591>,  <47.706921, 40.965855, 51.816475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862473, 40.818497, 51.924591>,  <48.121727, 40.572899, 52.104786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.862473, 40.818497, 51.924591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505136, -0.096053, -0.857678,
		-0.569880, -0.783444, -0.247895,
		-0.648132, 0.613994, -0.450485,
		47.668034, 41.002693, 51.789444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.029598, 40.328339, 51.389927>,  <48.121727, 40.572899, 52.104786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.029598, 40.328339, 51.389927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.868553, 40.693108, 51.358158>,  <47.771927, 40.911968, 51.339096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.868553, 40.693108, 51.358158>,  <48.029598, 40.328339, 51.389927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.868553, 40.693108, 51.358158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275625, 0.038037, -0.960512,
		-0.872890, -0.408600, -0.266662,
		-0.402608, 0.911921, -0.079418,
		47.747772, 40.966682, 51.334332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.545559, 40.316704, 50.912075>,  <48.029598, 40.328339, 51.389927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.545559, 40.316704, 50.912075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613396, 40.710907, 50.912918>,  <47.654099, 40.947430, 50.913422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613396, 40.710907, 50.912918>,  <47.545559, 40.316704, 50.912075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613396, 40.710907, 50.912918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201613, -0.032603, -0.978922,
		-0.964672, 0.166440, -0.204222,
		0.169590, 0.985512, 0.002105,
		47.664272, 41.006561, 50.913551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174061, 40.617840, 50.412663>,  <47.545559, 40.316704, 50.912075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174061, 40.617840, 50.412663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479858, 40.868118, 50.474705>,  <47.663338, 41.018284, 50.511929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479858, 40.868118, 50.474705>,  <47.174061, 40.617840, 50.412663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479858, 40.868118, 50.474705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354365, -0.206917, -0.911927,
		-0.538494, 0.752124, -0.379911,
		0.764493, 0.625695, 0.155103,
		47.709206, 41.055828, 50.521236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.241119, 40.831528, 49.765732>,  <47.174061, 40.617840, 50.412663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.241119, 40.831528, 49.765732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573013, 40.963600, 49.945744>,  <47.772148, 41.042843, 50.053749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573013, 40.963600, 49.945744>,  <47.241119, 40.831528, 49.765732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573013, 40.963600, 49.945744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450223, 0.080659, -0.889266,
		-0.329919, 0.940465, -0.081731,
		0.829731, 0.330182, 0.450030,
		47.821934, 41.062656, 50.080753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418556, 41.479221, 49.537781>,  <47.241119, 40.831528, 49.765732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418556, 41.479221, 49.537781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769035, 41.334457, 49.665092>,  <47.979321, 41.247597, 49.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769035, 41.334457, 49.665092>,  <47.418556, 41.479221, 49.537781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769035, 41.334457, 49.665092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393710, 0.156569, -0.905803,
		0.277988, 0.918970, 0.279673,
		0.876194, -0.361912, 0.318283,
		48.031895, 41.225883, 49.760578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949036, 41.880859, 49.229050>,  <47.418556, 41.479221, 49.537781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949036, 41.880859, 49.229050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.157570, 41.570030, 49.370117>,  <48.282692, 41.383533, 49.454758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.157570, 41.570030, 49.370117>,  <47.949036, 41.880859, 49.229050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.157570, 41.570030, 49.370117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647610, 0.091149, -0.756500,
		0.555707, 0.622781, 0.550756,
		0.521335, -0.777068, 0.352667,
		48.313969, 41.336910, 49.475918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.668396, 42.073307, 49.236526>,  <47.949036, 41.880859, 49.229050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.668396, 42.073307, 49.236526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.659348, 41.673416, 49.234509>,  <48.653919, 41.433479, 49.233299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.659348, 41.673416, 49.234509>,  <48.668396, 42.073307, 49.236526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.659348, 41.673416, 49.234509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616804, -0.009988, -0.787053,
		0.786792, -0.020916, 0.616864,
		-0.022624, -0.999731, -0.005043,
		48.652561, 41.373497, 49.232994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.450493, 41.881054, 49.105503>,  <48.668396, 42.073307, 49.236526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.450493, 41.881054, 49.105503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.215210, 41.564117, 49.040760>,  <49.074039, 41.373955, 49.001915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.215210, 41.564117, 49.040760>,  <49.450493, 41.881054, 49.105503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.215210, 41.564117, 49.040760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667366, -0.362543, -0.650528,
		0.456760, -0.490667, 0.742035,
		-0.588212, -0.792344, -0.161859,
		49.038746, 41.326416, 48.992203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.009403, 41.426781, 49.060543>,  <49.450493, 41.881054, 49.105503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.009403, 41.426781, 49.060543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.659149, 41.323822, 48.897076>,  <49.448997, 41.262047, 48.798996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.659149, 41.323822, 48.897076>,  <50.009403, 41.426781, 49.060543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.659149, 41.323822, 48.897076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456650, -0.165723, -0.874075,
		0.157261, -0.951988, 0.262655,
		-0.875637, -0.257399, -0.408664,
		49.396458, 41.246601, 48.774475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.179710, 40.801502, 48.701836>,  <50.009403, 41.426781, 49.060543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.179710, 40.801502, 48.701836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.836311, 40.930252, 48.542145>,  <49.630272, 41.007504, 48.446331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.836311, 40.930252, 48.542145>,  <50.179710, 40.801502, 48.701836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.836311, 40.930252, 48.542145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388232, -0.100698, -0.916044,
		-0.335054, -0.941411, -0.038514,
		-0.858496, 0.321876, -0.399225,
		49.578762, 41.026814, 48.422379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.171555, 40.296051, 48.168037>,  <50.179710, 40.801502, 48.701836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.171555, 40.296051, 48.168037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.932220, 40.610023, 48.103683>,  <49.788620, 40.798405, 48.065071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.932220, 40.610023, 48.103683>,  <50.171555, 40.296051, 48.168037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.932220, 40.610023, 48.103683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290910, 0.025728, -0.956404,
		-0.746569, -0.619053, -0.243737,
		-0.598336, 0.784928, -0.160881,
		49.752720, 40.845501, 48.055420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.911469, 40.208801, 47.467587>,  <50.171555, 40.296051, 48.168037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.911469, 40.208801, 47.467587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.897812, 40.594780, 47.571671>,  <49.889618, 40.826366, 47.634121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.897812, 40.594780, 47.571671>,  <49.911469, 40.208801, 47.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.897812, 40.594780, 47.571671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370493, 0.254031, -0.893422,
		-0.928208, 0.065903, -0.366179,
		-0.034142, 0.964948, 0.260211,
		49.887569, 40.884266, 47.649734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.465702, 40.551384, 46.939713>,  <49.911469, 40.208801, 47.467587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.465702, 40.551384, 46.939713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702637, 40.832039, 47.098125>,  <49.844795, 41.000431, 47.193172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702637, 40.832039, 47.098125>,  <49.465702, 40.551384, 46.939713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.702637, 40.832039, 47.098125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228878, 0.324757, -0.917686,
		-0.772500, 0.634220, 0.031774,
		0.592334, 0.701640, 0.396034,
		49.880337, 41.042530, 47.216934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.209709, 41.178383, 46.609505>,  <49.465702, 40.551384, 46.939713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.209709, 41.178383, 46.609505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.569862, 41.275978, 46.753609>,  <49.785954, 41.334534, 46.840073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.569862, 41.275978, 46.753609>,  <49.209709, 41.178383, 46.609505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.569862, 41.275978, 46.753609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268334, 0.340417, -0.901173,
		-0.342513, 0.908068, 0.241035,
		0.900379, 0.243985, 0.360263,
		49.839977, 41.349174, 46.861687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.349628, 41.876442, 46.413193>,  <49.209709, 41.178383, 46.609505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.349628, 41.876442, 46.413193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.720589, 41.752884, 46.497589>,  <49.943165, 41.678749, 46.548225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.720589, 41.752884, 46.497589>,  <49.349628, 41.876442, 46.413193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.720589, 41.752884, 46.497589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338706, 0.453989, -0.824119,
		0.158778, 0.835751, 0.525652,
		0.927398, -0.308893, 0.210990,
		49.998810, 41.660217, 46.560886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.757595, 42.465416, 46.344799>,  <49.349628, 41.876442, 46.413193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.757595, 42.465416, 46.344799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.018791, 42.163956, 46.314823>,  <50.175510, 41.983082, 46.296837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.018791, 42.163956, 46.314823>,  <49.757595, 42.465416, 46.344799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.018791, 42.163956, 46.314823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415695, 0.439361, -0.796341,
		0.633085, 0.488854, 0.600187,
		0.652994, -0.753647, -0.074939,
		50.214691, 41.937862, 46.292343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.089947, 42.765415, 46.115147>,  <49.757595, 42.465416, 46.344799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.089947, 42.765415, 46.115147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.786140, 43.023346, 46.080894>,  <48.603855, 43.178104, 46.060341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.786140, 43.023346, 46.080894>,  <49.089947, 42.765415, 46.115147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.786140, 43.023346, 46.080894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124881, 0.273740, 0.953662,
		0.638387, 0.713629, -0.288437,
		-0.759517, 0.644826, -0.085633,
		48.558285, 43.216793, 46.055206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.317211, 43.251324, 46.512238>,  <49.089947, 42.765415, 46.115147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.317211, 43.251324, 46.512238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.925125, 43.315010, 46.465210>,  <48.689873, 43.353222, 46.436993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.925125, 43.315010, 46.465210>,  <49.317211, 43.251324, 46.512238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.925125, 43.315010, 46.465210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062944, 0.312414, 0.947858,
		0.187647, 0.936508, -0.296212,
		-0.980218, 0.159218, -0.117571,
		48.631062, 43.362774, 46.429939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.162334, 43.745388, 46.954193>,  <49.317211, 43.251324, 46.512238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.162334, 43.745388, 46.954193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.786026, 43.629349, 46.884003>,  <48.560242, 43.559727, 46.841888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.786026, 43.629349, 46.884003>,  <49.162334, 43.745388, 46.954193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.786026, 43.629349, 46.884003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276688, 0.357816, 0.891858,
		-0.195939, 0.887587, -0.416890,
		-0.940772, -0.290099, -0.175475,
		48.503796, 43.542320, 46.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.748596, 44.281246, 47.156784>,  <49.162334, 43.745388, 46.954193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.748596, 44.281246, 47.156784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.507607, 43.961990, 47.156143>,  <48.363014, 43.770439, 47.155758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.507607, 43.961990, 47.156143>,  <48.748596, 44.281246, 47.156784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.507607, 43.961990, 47.156143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455260, 0.342001, 0.822055,
		-0.655562, 0.495999, -0.569406,
		-0.602475, -0.798136, -0.001606,
		48.326862, 43.722549, 47.155663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.097900, 44.561657, 47.486858>,  <48.748596, 44.281246, 47.156784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.097900, 44.561657, 47.486858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.080223, 44.164589, 47.531841>,  <48.069614, 43.926346, 47.558830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.080223, 44.164589, 47.531841>,  <48.097900, 44.561657, 47.486858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.080223, 44.164589, 47.531841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469460, 0.120005, 0.874761,
		-0.881847, -0.014136, -0.471324,
		-0.044196, -0.992673, 0.112462,
		48.066963, 43.866787, 47.565578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.467712, 44.342258, 47.499599>,  <48.097900, 44.561657, 47.486858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.467712, 44.342258, 47.499599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661217, 44.060547, 47.707432>,  <47.777321, 43.891521, 47.832130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661217, 44.060547, 47.707432>,  <47.467712, 44.342258, 47.499599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661217, 44.060547, 47.707432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635600, 0.125404, 0.761766,
		-0.601654, -0.698758, -0.386975,
		0.483762, -0.704281, 0.519580,
		47.806347, 43.849262, 47.863304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.011566, 43.994301, 47.921650>,  <47.467712, 44.342258, 47.499599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.011566, 43.994301, 47.921650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343842, 43.887222, 48.116913>,  <47.543205, 43.822975, 48.234070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343842, 43.887222, 48.116913>,  <47.011566, 43.994301, 47.921650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343842, 43.887222, 48.116913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398012, 0.327540, 0.856915,
		-0.389286, -0.906120, 0.165536,
		0.830688, -0.267700, 0.488153,
		47.593048, 43.806911, 48.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743347, 43.788784, 48.543121>,  <47.011566, 43.994301, 47.921650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743347, 43.788784, 48.543121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131317, 43.816444, 48.636475>,  <47.364098, 43.833042, 48.692486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131317, 43.816444, 48.636475>,  <46.743347, 43.788784, 48.543121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131317, 43.816444, 48.636475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243411, 0.279345, 0.928826,
		-0.000968, -0.957698, 0.287775,
		0.969922, 0.069148, 0.233385,
		47.422295, 43.837189, 48.706490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763252, 43.535969, 49.160519>,  <46.743347, 43.788784, 48.543121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763252, 43.535969, 49.160519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099182, 43.751984, 49.138443>,  <47.300739, 43.881592, 49.125198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099182, 43.751984, 49.138443>,  <46.763252, 43.535969, 49.160519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099182, 43.751984, 49.138443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160406, 0.343994, 0.925169,
		0.518614, -0.768130, 0.375522,
		0.839827, 0.540042, -0.055188,
		47.351131, 43.913998, 49.121887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109295, 43.332012, 49.754398>,  <46.763252, 43.535969, 49.160519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109295, 43.332012, 49.754398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215370, 43.694794, 49.623486>,  <47.279015, 43.912460, 49.544937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215370, 43.694794, 49.623486>,  <47.109295, 43.332012, 49.754398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215370, 43.694794, 49.623486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184820, 0.380956, 0.905933,
		0.946318, -0.179751, 0.268647,
		0.265185, 0.906952, -0.327284,
		47.294926, 43.966881, 49.525299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.623940, 43.515480, 50.188324>,  <47.109295, 43.332012, 49.754398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.623940, 43.515480, 50.188324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.491425, 43.857681, 50.029144>,  <47.411915, 44.063000, 49.933636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.491425, 43.857681, 50.029144>,  <47.623940, 43.515480, 50.188324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.491425, 43.857681, 50.029144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057278, 0.402756, 0.913514,
		0.941789, 0.325432, -0.084427,
		-0.331290, 0.855501, -0.397951,
		47.392036, 44.114330, 49.909760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092560, 44.066998, 50.423885>,  <47.623940, 43.515480, 50.188324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092560, 44.066998, 50.423885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747414, 44.240280, 50.319733>,  <47.540325, 44.344250, 50.257240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747414, 44.240280, 50.319733>,  <48.092560, 44.066998, 50.423885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747414, 44.240280, 50.319733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026002, 0.476441, 0.878822,
		0.504770, 0.765073, -0.399839,
		-0.862862, 0.433206, -0.260386,
		47.488556, 44.370243, 50.241615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.105671, 44.735157, 50.890606>,  <48.092560, 44.066998, 50.423885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.105671, 44.735157, 50.890606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735191, 44.651955, 50.764820>,  <47.512905, 44.602032, 50.689346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735191, 44.651955, 50.764820>,  <48.105671, 44.735157, 50.890606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735191, 44.651955, 50.764820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364981, 0.285412, 0.886188,
		-0.094581, 0.935560, -0.340267,
		-0.926198, -0.208007, -0.314468,
		47.457333, 44.589554, 50.670479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.772026, 45.254452, 51.311695>,  <48.105671, 44.735157, 50.890606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.772026, 45.254452, 51.311695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497375, 44.986046, 51.199776>,  <47.332584, 44.825005, 51.132626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497375, 44.986046, 51.199776>,  <47.772026, 45.254452, 51.311695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497375, 44.986046, 51.199776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527963, 0.195650, 0.826424,
		-0.499799, 0.715167, -0.488608,
		-0.686627, -0.671012, -0.279796,
		47.291386, 44.784740, 51.115837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049561, 45.537991, 51.356346>,  <47.772026, 45.254452, 51.311695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049561, 45.537991, 51.356346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022919, 45.140892, 51.396378>,  <47.006935, 44.902634, 51.420395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022919, 45.140892, 51.396378>,  <47.049561, 45.537991, 51.356346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022919, 45.140892, 51.396378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495995, 0.119970, 0.859998,
		-0.865767, 0.007639, -0.500389,
		-0.066601, -0.992748, 0.100078,
		47.002937, 44.843067, 51.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354706, 45.411156, 51.746712>,  <47.049561, 45.537991, 51.356346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354706, 45.411156, 51.746712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528542, 45.051079, 51.757950>,  <46.632843, 44.835033, 51.764694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528542, 45.051079, 51.757950>,  <46.354706, 45.411156, 51.746712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528542, 45.051079, 51.757950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567105, -0.249280, 0.785017,
		-0.699663, -0.357089, -0.618837,
		0.434584, -0.900192, 0.028095,
		46.658916, 44.781021, 51.766376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793831, 44.923660, 51.798412>,  <46.354706, 45.411156, 51.746712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793831, 44.923660, 51.798412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119843, 44.756561, 51.959019>,  <46.315449, 44.656300, 52.055382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119843, 44.756561, 51.959019>,  <45.793831, 44.923660, 51.798412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119843, 44.756561, 51.959019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545351, -0.318955, 0.775151,
		-0.195753, -0.850737, -0.487777,
		0.815030, -0.417748, 0.401514,
		46.364349, 44.631237, 52.079472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612404, 44.115494, 51.896996>,  <45.793831, 44.923660, 51.798412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612404, 44.115494, 51.896996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915123, 44.237099, 52.128456>,  <46.096756, 44.310062, 52.267334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915123, 44.237099, 52.128456>,  <45.612404, 44.115494, 51.896996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915123, 44.237099, 52.128456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507936, -0.283671, 0.813346,
		0.411412, -0.909455, -0.060264,
		0.756797, 0.304011, 0.578650,
		46.142162, 44.328300, 52.302052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865231, 43.443493, 52.255951>,  <45.612404, 44.115494, 51.896996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865231, 43.443493, 52.255951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954758, 43.774086, 52.462574>,  <46.008476, 43.972443, 52.586548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954758, 43.774086, 52.462574>,  <45.865231, 43.443493, 52.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954758, 43.774086, 52.462574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390399, -0.409598, 0.824511,
		0.893025, -0.386205, 0.230983,
		0.223820, 0.826484, 0.516555,
		46.021904, 44.022030, 52.617542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044689, 43.173080, 52.866199>,  <45.865231, 43.443493, 52.255951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044689, 43.173080, 52.866199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995972, 43.560226, 52.954208>,  <45.966743, 43.792515, 53.007015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995972, 43.560226, 52.954208>,  <46.044689, 43.173080, 52.866199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995972, 43.560226, 52.954208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466312, -0.251480, 0.848122,
		0.876196, 0.000696, 0.481954,
		-0.121792, 0.967862, 0.220021,
		45.959435, 43.850586, 53.020214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196026, 43.235847, 53.645500>,  <46.044689, 43.173080, 52.866199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196026, 43.235847, 53.645500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963707, 43.522163, 53.490417>,  <45.824314, 43.693954, 53.397369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963707, 43.522163, 53.490417>,  <46.196026, 43.235847, 53.645500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963707, 43.522163, 53.490417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632358, -0.096785, 0.768606,
		0.512638, 0.691574, 0.508849,
		-0.580797, 0.715792, -0.387707,
		45.789467, 43.736900, 53.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102661, 43.745121, 54.267250>,  <46.196026, 43.235847, 53.645500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102661, 43.745121, 54.267250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793091, 43.795570, 54.019012>,  <45.607349, 43.825840, 53.870071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793091, 43.795570, 54.019012>,  <46.102661, 43.745121, 54.267250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793091, 43.795570, 54.019012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623105, 0.023272, 0.781792,
		0.113048, 0.991741, 0.060580,
		-0.773925, 0.126128, -0.620590,
		45.560913, 43.833408, 53.832836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678810, 44.349712, 54.548752>,  <46.102661, 43.745121, 54.267250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678810, 44.349712, 54.548752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443062, 44.136620, 54.305820>,  <45.301613, 44.008762, 54.160061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443062, 44.136620, 54.305820>,  <45.678810, 44.349712, 54.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443062, 44.136620, 54.305820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723742, 0.014157, 0.689926,
		-0.358947, 0.846166, -0.393904,
		-0.589368, -0.532731, -0.607324,
		45.266251, 43.976799, 54.123623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016483, 44.197094, 54.940536>,  <45.678810, 44.349712, 54.548752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016483, 44.197094, 54.940536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935226, 43.960358, 54.628521>,  <44.886475, 43.818317, 54.441311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935226, 43.960358, 54.628521>,  <45.016483, 44.197094, 54.940536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935226, 43.960358, 54.628521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807216, -0.349679, 0.475529,
		-0.554200, 0.726259, -0.406708,
		-0.203140, -0.591839, -0.780039,
		44.874283, 43.782806, 54.394508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319542, 44.245361, 54.808681>,  <45.016483, 44.197094, 54.940536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319542, 44.245361, 54.808681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391735, 43.890594, 54.638596>,  <44.435051, 43.677734, 54.536545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391735, 43.890594, 54.638596>,  <44.319542, 44.245361, 54.808681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391735, 43.890594, 54.638596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781586, -0.391777, 0.485421,
		-0.597118, 0.244737, -0.763907,
		0.180481, -0.886913, -0.425220,
		44.445881, 43.624519, 54.511028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658924, 43.999840, 54.596287>,  <44.319542, 44.245361, 54.808681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658924, 43.999840, 54.596287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902596, 43.684486, 54.630608>,  <44.048798, 43.495274, 54.651199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902596, 43.684486, 54.630608>,  <43.658924, 43.999840, 54.596287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902596, 43.684486, 54.630608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727291, -0.512265, 0.456763,
		-0.316150, -0.340652, -0.885441,
		0.609177, -0.788379, 0.085801,
		44.085350, 43.447971, 54.656349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332039, 43.418190, 54.309574>,  <43.658924, 43.999840, 54.596287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332039, 43.418190, 54.309574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609184, 43.242966, 54.538673>,  <43.775471, 43.137833, 54.676132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609184, 43.242966, 54.538673>,  <43.332039, 43.418190, 54.309574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609184, 43.242966, 54.538673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714262, -0.525825, 0.461885,
		0.098833, -0.729118, -0.677215,
		0.692865, -0.438059, 0.572750,
		43.817043, 43.111549, 54.710499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079506, 42.699902, 54.319801>,  <43.332039, 43.418190, 54.309574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079506, 42.699902, 54.319801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345329, 42.731537, 54.617020>,  <43.504822, 42.750519, 54.795349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345329, 42.731537, 54.617020>,  <43.079506, 42.699902, 54.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345329, 42.731537, 54.617020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585297, -0.563084, 0.583407,
		0.464534, -0.822607, -0.327912,
		0.664556, 0.079086, 0.743041,
		43.544697, 42.755264, 54.839931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211235, 42.060486, 54.538490>,  <43.079506, 42.699902, 54.319801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211235, 42.060486, 54.538490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308136, 42.300873, 54.843163>,  <43.366276, 42.445103, 55.025967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308136, 42.300873, 54.843163>,  <43.211235, 42.060486, 54.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308136, 42.300873, 54.843163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701389, -0.433947, 0.565458,
		0.670349, -0.671216, 0.316388,
		0.242249, 0.600965, 0.761680,
		43.380810, 42.481163, 55.071667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223991, 41.673382, 55.132084>,  <43.211235, 42.060486, 54.538490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223991, 41.673382, 55.132084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206047, 42.044266, 55.280823>,  <43.195282, 42.266796, 55.370068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206047, 42.044266, 55.280823>,  <43.223991, 41.673382, 55.132084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206047, 42.044266, 55.280823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564937, -0.330532, 0.756039,
		0.823914, -0.176157, 0.538641,
		-0.044857, 0.927209, 0.371848,
		43.192589, 42.322430, 55.392376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189175, 41.553772, 55.810070>,  <43.223991, 41.673382, 55.132084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189175, 41.553772, 55.810070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046555, 41.924072, 55.759705>,  <42.960983, 42.146252, 55.729485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046555, 41.924072, 55.759705>,  <43.189175, 41.553772, 55.810070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046555, 41.924072, 55.759705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603247, -0.125206, 0.787665,
		0.713419, 0.356798, 0.603099,
		-0.356549, 0.925753, -0.125913,
		42.939590, 42.201797, 55.721931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134941, 41.816334, 56.482491>,  <43.189175, 41.553772, 55.810070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134941, 41.816334, 56.482491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902542, 42.061920, 56.268764>,  <42.763103, 42.209270, 56.140530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902542, 42.061920, 56.268764>,  <43.134941, 41.816334, 56.482491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902542, 42.061920, 56.268764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750580, -0.150284, 0.643463,
		0.314765, 0.774894, 0.548144,
		-0.580993, 0.613965, -0.534316,
		42.728245, 42.246109, 56.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779911, 42.231968, 56.987331>,  <43.134941, 41.816334, 56.482491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779911, 42.231968, 56.987331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555283, 42.244377, 56.656593>,  <42.420506, 42.251823, 56.458149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555283, 42.244377, 56.656593>,  <42.779911, 42.231968, 56.987331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555283, 42.244377, 56.656593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774665, -0.370845, 0.512219,
		-0.290742, 0.928176, 0.232288,
		-0.561572, 0.031022, -0.826846,
		42.386810, 42.253685, 56.408539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194164, 42.551868, 57.234375>,  <42.779911, 42.231968, 56.987331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194164, 42.551868, 57.234375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104630, 42.346428, 56.903046>,  <42.050911, 42.223164, 56.704250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104630, 42.346428, 56.903046>,  <42.194164, 42.551868, 57.234375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104630, 42.346428, 56.903046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864546, -0.287733, 0.412031,
		-0.449954, 0.808347, -0.379626,
		-0.223834, -0.513600, -0.828320,
		42.037479, 42.192348, 56.654549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510941, 42.744637, 57.121033>,  <42.194164, 42.551868, 57.234375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510941, 42.744637, 57.121033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575397, 42.419762, 56.896751>,  <41.614071, 42.224838, 56.762184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575397, 42.419762, 56.896751>,  <41.510941, 42.744637, 57.121033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575397, 42.419762, 56.896751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768492, -0.459726, 0.445054,
		-0.619236, 0.359179, -0.698238,
		0.161144, -0.812184, -0.560705,
		41.623741, 42.176105, 56.728539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862972, 42.566639, 56.995041>,  <41.510941, 42.744637, 57.121033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862972, 42.566639, 56.995041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084930, 42.248360, 56.897915>,  <41.218105, 42.057392, 56.839642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084930, 42.248360, 56.897915>,  <40.862972, 42.566639, 56.995041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084930, 42.248360, 56.897915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753988, -0.604353, 0.257409,
		-0.351565, 0.040244, -0.935298,
		0.554891, -0.795700, -0.242813,
		41.251396, 42.009651, 56.825069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378773, 42.121380, 56.618835>,  <40.862972, 42.566639, 56.995041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378773, 42.121380, 56.618835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673988, 41.915268, 56.793095>,  <40.851116, 41.791599, 56.897652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673988, 41.915268, 56.793095>,  <40.378773, 42.121380, 56.618835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673988, 41.915268, 56.793095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663812, -0.438613, 0.605782,
		-0.121068, -0.736277, -0.665762,
		0.738035, -0.515282, 0.435648,
		40.895397, 41.760685, 56.923790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076084, 41.509632, 56.650410>,  <40.378773, 42.121380, 56.618835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076084, 41.509632, 56.650410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388649, 41.497566, 56.899727>,  <40.576187, 41.490326, 57.049316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388649, 41.497566, 56.899727>,  <40.076084, 41.509632, 56.650410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388649, 41.497566, 56.899727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533214, -0.551150, 0.641807,
		0.324164, -0.833861, -0.446759,
		0.781409, -0.030168, 0.623289,
		40.623074, 41.488518, 57.086712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423061, 41.484344, 57.008396>,  <40.076084, 41.509632, 56.650410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423061, 41.484344, 57.008396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165207, 41.742912, 56.845139>,  <39.010494, 41.898052, 56.747185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165207, 41.742912, 56.845139>,  <39.423061, 41.484344, 57.008396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165207, 41.742912, 56.845139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722572, 0.340842, -0.601428,
		-0.249661, -0.682619, -0.686804,
		-0.644638, 0.646419, -0.408146,
		38.971817, 41.936836, 56.722694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444962, 41.403053, 56.202202>,  <39.423061, 41.484344, 57.008396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444962, 41.403053, 56.202202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331734, 41.768547, 56.318787>,  <39.263798, 41.987843, 56.388737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331734, 41.768547, 56.318787>,  <39.444962, 41.403053, 56.202202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331734, 41.768547, 56.318787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597080, 0.405714, -0.692020,
		-0.750576, -0.021866, -0.660422,
		-0.283074, 0.913738, 0.291464,
		39.246811, 42.042667, 56.406227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476799, 41.764858, 55.553764>,  <39.444962, 41.403053, 56.202202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476799, 41.764858, 55.553764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455109, 42.079376, 55.799950>,  <39.442093, 42.268089, 55.947662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455109, 42.079376, 55.799950>,  <39.476799, 41.764858, 55.553764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455109, 42.079376, 55.799950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508204, 0.552301, -0.660827,
		-0.859528, 0.276948, -0.429548,
		-0.054225, 0.786297, 0.615464,
		39.438843, 42.315266, 55.984589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114101, 42.352608, 55.144485>,  <39.476799, 41.764858, 55.553764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114101, 42.352608, 55.144485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333931, 42.498680, 55.445045>,  <39.465828, 42.586323, 55.625381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333931, 42.498680, 55.445045>,  <39.114101, 42.352608, 55.144485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333931, 42.498680, 55.445045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424158, 0.652904, -0.627540,
		-0.719763, 0.663594, 0.203923,
		0.549574, 0.365184, 0.751405,
		39.498802, 42.608234, 55.670467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155968, 43.115200, 54.914303>,  <39.114101, 42.352608, 55.144485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155968, 43.115200, 54.914303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440624, 43.045792, 55.186615>,  <39.611420, 43.004147, 55.350002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440624, 43.045792, 55.186615>,  <39.155968, 43.115200, 54.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440624, 43.045792, 55.186615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640281, 0.559009, -0.526829,
		-0.289146, 0.810803, 0.508914,
		0.711642, -0.173518, 0.680777,
		39.654118, 42.993736, 55.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495644, 43.766239, 54.966446>,  <39.155968, 43.115200, 54.914303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495644, 43.766239, 54.966446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751434, 43.518822, 55.149082>,  <39.904907, 43.370373, 55.258663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751434, 43.518822, 55.149082>,  <39.495644, 43.766239, 54.966446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751434, 43.518822, 55.149082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743485, 0.346361, -0.572070,
		0.195703, 0.705296, 0.681365,
		0.639477, -0.618540, 0.456593,
		39.943279, 43.333260, 55.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073551, 44.240112, 55.175846>,  <39.495644, 43.766239, 54.966446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073551, 44.240112, 55.175846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213112, 43.865250, 55.176781>,  <40.296848, 43.640331, 55.177341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213112, 43.865250, 55.176781>,  <40.073551, 44.240112, 55.175846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213112, 43.865250, 55.176781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845253, 0.313608, -0.432663,
		0.404738, 0.152935, 0.901553,
		0.348904, -0.937156, 0.002340,
		40.317783, 43.584103, 55.177483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766308, 44.337795, 55.294910>,  <40.073551, 44.240112, 55.175846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766308, 44.337795, 55.294910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725613, 43.977936, 55.125072>,  <40.701195, 43.762020, 55.023170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725613, 43.977936, 55.125072>,  <40.766308, 44.337795, 55.294910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725613, 43.977936, 55.125072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827019, 0.160721, -0.538710,
		0.552891, -0.405959, 0.727674,
		-0.101741, -0.899648, -0.424597,
		40.695091, 43.708042, 54.997692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350159, 44.160011, 55.085182>,  <40.766308, 44.337795, 55.294910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350159, 44.160011, 55.085182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160702, 43.897720, 54.850002>,  <41.047028, 43.740345, 54.708893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160702, 43.897720, 54.850002>,  <41.350159, 44.160011, 55.085182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160702, 43.897720, 54.850002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772251, 0.011745, -0.635209,
		0.423430, -0.754906, 0.500824,
		-0.473641, -0.655728, -0.587950,
		41.018608, 43.701000, 54.673618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840187, 43.758327, 54.897648>,  <41.350159, 44.160011, 55.085182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840187, 43.758327, 54.897648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549873, 43.702133, 54.628277>,  <41.375687, 43.668415, 54.466656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549873, 43.702133, 54.628277>,  <41.840187, 43.758327, 54.897648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549873, 43.702133, 54.628277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675264, 0.041448, -0.736410,
		0.131371, -0.989214, 0.064786,
		-0.725782, -0.140491, -0.673426,
		41.332138, 43.659985, 54.426250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973888, 43.135288, 54.393433>,  <41.840187, 43.758327, 54.897648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973888, 43.135288, 54.393433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708313, 43.375488, 54.215179>,  <41.548969, 43.519608, 54.108227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708313, 43.375488, 54.215179>,  <41.973888, 43.135288, 54.393433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708313, 43.375488, 54.215179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559423, 0.003413, -0.828875,
		-0.496219, -0.799617, -0.338200,
		-0.663937, 0.600501, -0.445631,
		41.509132, 43.555637, 54.081490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895924, 42.807758, 53.756378>,  <41.973888, 43.135288, 54.393433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895924, 42.807758, 53.756378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802147, 43.195831, 53.731781>,  <41.745880, 43.428677, 53.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802147, 43.195831, 53.731781>,  <41.895924, 42.807758, 53.756378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802147, 43.195831, 53.731781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658173, 0.111855, -0.744511,
		-0.715434, -0.215018, -0.664772,
		-0.234441, 0.970183, -0.061494,
		41.731815, 43.486885, 53.713333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720463, 42.912292, 53.075901>,  <41.895924, 42.807758, 53.756378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720463, 42.912292, 53.075901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838852, 43.254829, 53.245171>,  <41.909885, 43.460354, 53.346733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838852, 43.254829, 53.245171>,  <41.720463, 42.912292, 53.075901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838852, 43.254829, 53.245171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676492, 0.124844, -0.725791,
		-0.674357, 0.501086, -0.542360,
		0.295974, 0.856345, 0.423170,
		41.927643, 43.511734, 53.372120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772469, 43.335972, 52.494152>,  <41.720463, 42.912292, 53.075901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772469, 43.335972, 52.494152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980820, 43.521126, 52.781048>,  <42.105831, 43.632217, 52.953186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980820, 43.521126, 52.781048>,  <41.772469, 43.335972, 52.494152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980820, 43.521126, 52.781048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628938, 0.359996, -0.689086,
		-0.577167, 0.810027, -0.103610,
		0.520879, 0.462882, 0.717235,
		42.137085, 43.659988, 52.996220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820679, 44.048454, 52.241356>,  <41.772469, 43.335972, 52.494152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820679, 44.048454, 52.241356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112194, 43.995880, 52.510155>,  <42.287106, 43.964336, 52.671436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112194, 43.995880, 52.510155>,  <41.820679, 44.048454, 52.241356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112194, 43.995880, 52.510155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683042, 0.208517, -0.699981,
		-0.048120, 0.969146, 0.241743,
		0.728792, -0.131438, 0.672002,
		42.330833, 43.956448, 52.711754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250633, 44.543655, 52.019882>,  <41.820679, 44.048454, 52.241356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250633, 44.543655, 52.019882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483170, 44.335449, 52.270035>,  <42.622692, 44.210526, 52.420128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483170, 44.335449, 52.270035>,  <42.250633, 44.543655, 52.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483170, 44.335449, 52.270035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800205, 0.226562, -0.555285,
		0.147344, 0.823248, 0.548227,
		0.581344, -0.520512, 0.625385,
		42.657574, 44.179295, 52.457649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778389, 45.064392, 52.351120>,  <42.250633, 44.543655, 52.019882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778389, 45.064392, 52.351120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913937, 44.688141, 52.358887>,  <42.995266, 44.462391, 52.363548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913937, 44.688141, 52.358887>,  <42.778389, 45.064392, 52.351120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913937, 44.688141, 52.358887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850575, 0.297474, -0.433625,
		0.402105, 0.163462, 0.900884,
		0.338871, -0.940632, 0.019421,
		43.015598, 44.405952, 52.364712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458225, 45.078049, 52.556316>,  <42.778389, 45.064392, 52.351120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458225, 45.078049, 52.556316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414856, 44.729416, 52.365070>,  <43.388836, 44.520237, 52.250324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414856, 44.729416, 52.365070>,  <43.458225, 45.078049, 52.556316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414856, 44.729416, 52.365070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764080, 0.234609, -0.600949,
		0.635945, -0.430473, 0.640520,
		-0.108420, -0.871580, -0.478115,
		43.382328, 44.467941, 52.221638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039623, 44.821983, 52.641197>,  <43.458225, 45.078049, 52.556316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039623, 44.821983, 52.641197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898712, 44.622353, 52.324509>,  <43.814167, 44.502575, 52.134495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898712, 44.622353, 52.324509>,  <44.039623, 44.821983, 52.641197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898712, 44.622353, 52.324509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784492, 0.303852, -0.540598,
		0.510368, -0.811538, 0.284484,
		-0.352275, -0.499080, -0.791721,
		43.793030, 44.472630, 52.086994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645081, 44.555580, 52.252506>,  <44.039623, 44.821983, 52.641197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645081, 44.555580, 52.252506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347664, 44.525833, 51.986691>,  <44.169212, 44.507984, 51.827202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347664, 44.525833, 51.986691>,  <44.645081, 44.555580, 52.252506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347664, 44.525833, 51.986691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536319, 0.527235, -0.659079,
		0.399384, -0.846459, -0.352136,
		-0.743542, -0.074369, -0.664541,
		44.124603, 44.503521, 51.787327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943195, 44.220680, 51.605362>,  <44.645081, 44.555580, 52.252506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943195, 44.220680, 51.605362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618492, 44.415421, 51.476349>,  <44.423672, 44.532265, 51.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618492, 44.415421, 51.476349>,  <44.943195, 44.220680, 51.605362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618492, 44.415421, 51.476349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494235, 0.278510, -0.823507,
		-0.311093, -0.827896, -0.466699,
		-0.811759, 0.486847, -0.322533,
		44.374966, 44.561474, 51.379589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803501, 44.105122, 50.826477>,  <44.943195, 44.220680, 51.605362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803501, 44.105122, 50.826477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622452, 44.454063, 50.900379>,  <44.513824, 44.663429, 50.944721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622452, 44.454063, 50.900379>,  <44.803501, 44.105122, 50.826477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622452, 44.454063, 50.900379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495228, 0.418216, -0.761475,
		-0.741543, -0.253165, -0.621307,
		-0.452619, 0.872355, 0.184751,
		44.486668, 44.715771, 50.955803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565239, 44.363625, 50.166008>,  <44.803501, 44.105122, 50.826477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565239, 44.363625, 50.166008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555977, 44.692596, 50.393368>,  <44.550419, 44.889980, 50.529781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555977, 44.692596, 50.393368>,  <44.565239, 44.363625, 50.166008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555977, 44.692596, 50.393368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382400, 0.532600, -0.755054,
		-0.923706, 0.199868, -0.326832,
		-0.023160, 0.822429, 0.568396,
		44.549030, 44.939323, 50.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335983, 44.906219, 49.698971>,  <44.565239, 44.363625, 50.166008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335983, 44.906219, 49.698971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515385, 45.074036, 50.014648>,  <44.623028, 45.174725, 50.204056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515385, 45.074036, 50.014648>,  <44.335983, 44.906219, 49.698971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515385, 45.074036, 50.014648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496584, 0.617187, -0.610315,
		-0.743133, 0.665631, 0.068474,
		0.448506, 0.419542, 0.789194,
		44.649937, 45.199898, 50.251408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242298, 45.596016, 49.609665>,  <44.335983, 44.906219, 49.698971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242298, 45.596016, 49.609665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553078, 45.528313, 49.852219>,  <44.739544, 45.487690, 49.997753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553078, 45.528313, 49.852219>,  <44.242298, 45.596016, 49.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553078, 45.528313, 49.852219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592123, 0.523674, -0.612499,
		-0.213880, 0.834935, 0.507088,
		0.776946, -0.169257, 0.606388,
		44.786163, 45.477535, 50.034134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522305, 46.209862, 49.641357>,  <44.242298, 45.596016, 49.609665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522305, 46.209862, 49.641357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825516, 45.975220, 49.755405>,  <45.007442, 45.834435, 49.823833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825516, 45.975220, 49.755405>,  <44.522305, 46.209862, 49.641357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825516, 45.975220, 49.755405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644245, 0.605251, -0.467568,
		0.101706, 0.538117, 0.836712,
		0.758027, -0.586601, 0.285121,
		45.052925, 45.799240, 49.840942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037922, 46.750111, 49.765114>,  <44.522305, 46.209862, 49.641357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037922, 46.750111, 49.765114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197403, 46.384140, 49.739990>,  <45.293091, 46.164558, 49.724918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197403, 46.384140, 49.739990>,  <45.037922, 46.750111, 49.765114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197403, 46.384140, 49.739990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797194, 0.379619, -0.469438,
		0.453344, 0.137097, 0.880729,
		0.398700, -0.914928, -0.062806,
		45.317013, 46.109661, 49.721149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801376, 46.906197, 49.744396>,  <45.037922, 46.750111, 49.765114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801376, 46.906197, 49.744396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748978, 46.539574, 49.593258>,  <45.717537, 46.319599, 49.502575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748978, 46.539574, 49.593258>,  <45.801376, 46.906197, 49.744396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748978, 46.539574, 49.593258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641328, 0.212297, -0.737312,
		0.756002, -0.338911, 0.560001,
		-0.130997, -0.916553, -0.377850,
		45.709679, 46.264606, 49.479904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409824, 46.667980, 49.552525>,  <45.801376, 46.906197, 49.744396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409824, 46.667980, 49.552525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191368, 46.435249, 49.311455>,  <46.060295, 46.295612, 49.166813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191368, 46.435249, 49.311455>,  <46.409824, 46.667980, 49.552525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191368, 46.435249, 49.311455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646694, 0.164465, -0.744807,
		0.532466, -0.796511, 0.286443,
		-0.546137, -0.581826, -0.602671,
		46.027527, 46.260700, 49.130653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814308, 46.381557, 49.073151>,  <46.409824, 46.667980, 49.552525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814308, 46.381557, 49.073151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471565, 46.324760, 48.874908>,  <46.265919, 46.290680, 48.755962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471565, 46.324760, 48.874908>,  <46.814308, 46.381557, 49.073151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471565, 46.324760, 48.874908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466736, 0.194630, -0.862715,
		0.218963, -0.970544, -0.100496,
		-0.856862, -0.141997, -0.495605,
		46.214508, 46.282162, 48.726227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935688, 45.821716, 48.533138>,  <46.814308, 46.381557, 49.073151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935688, 45.821716, 48.533138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616936, 46.022064, 48.398022>,  <46.425682, 46.142273, 48.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616936, 46.022064, 48.398022>,  <46.935688, 45.821716, 48.533138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616936, 46.022064, 48.398022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442314, 0.102856, -0.890943,
		-0.411501, -0.859390, -0.303505,
		-0.796885, 0.500869, -0.337795,
		46.377869, 46.172325, 48.296684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915237, 45.677219, 47.818146>,  <46.935688, 45.821716, 48.533138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915237, 45.677219, 47.818146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646019, 45.972740, 47.804367>,  <46.484489, 46.150051, 47.796101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646019, 45.972740, 47.804367>,  <46.915237, 45.677219, 47.818146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.646019, 45.972740, 47.804367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153609, 0.094076, -0.983643,
		-0.723472, -0.667329, -0.176803,
		-0.673046, 0.738797, -0.034447,
		46.444103, 46.194378, 47.794033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635246, 45.575031, 47.201962>,  <46.915237, 45.677219, 47.818146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635246, 45.575031, 47.201962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536667, 45.951042, 47.296295>,  <46.477520, 46.176647, 47.352894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536667, 45.951042, 47.296295>,  <46.635246, 45.575031, 47.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536667, 45.951042, 47.296295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161696, 0.279810, -0.946341,
		-0.955573, -0.195088, -0.220956,
		-0.246445, 0.940025, 0.235834,
		46.462734, 46.233051, 47.367046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258278, 45.820930, 46.617554>,  <46.635246, 45.575031, 47.201962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258278, 45.820930, 46.617554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350098, 46.153145, 46.820541>,  <46.405190, 46.352474, 46.942333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350098, 46.153145, 46.820541>,  <46.258278, 45.820930, 46.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350098, 46.153145, 46.820541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140037, 0.487780, -0.861661,
		-0.963171, 0.268856, -0.004337,
		0.229548, 0.830534, 0.507465,
		46.418961, 46.402306, 46.972782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214024, 46.283245, 46.090073>,  <46.258278, 45.820930, 46.617554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214024, 46.283245, 46.090073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399002, 46.492134, 46.376690>,  <46.509991, 46.617466, 46.548660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399002, 46.492134, 46.376690>,  <46.214024, 46.283245, 46.090073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399002, 46.492134, 46.376690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478030, 0.533781, -0.697542,
		-0.746744, 0.665106, -0.002789,
		0.462451, 0.522219, 0.716538,
		46.537739, 46.648800, 46.591652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077251, 46.866890, 45.920876>,  <46.214024, 46.283245, 46.090073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077251, 46.866890, 45.920876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413795, 46.879173, 46.136715>,  <46.615723, 46.886543, 46.266216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413795, 46.879173, 46.136715>,  <46.077251, 46.866890, 45.920876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413795, 46.879173, 46.136715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399649, 0.636775, -0.659392,
		-0.363852, 0.770438, 0.523486,
		0.841363, 0.030710, 0.539597,
		46.666206, 46.888386, 46.298595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215000, 47.570847, 45.925587>,  <46.077251, 46.866890, 45.920876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215000, 47.570847, 45.925587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549065, 47.361679, 45.993771>,  <46.749504, 47.236179, 46.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549065, 47.361679, 45.993771>,  <46.215000, 47.570847, 45.925587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549065, 47.361679, 45.993771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493501, 0.575641, -0.651993,
		0.242816, 0.628643, 0.738816,
		0.835163, -0.522920, 0.170460,
		46.799614, 47.204803, 46.044910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723789, 47.988686, 45.847198>,  <46.215000, 47.570847, 45.925587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723789, 47.988686, 45.847198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942825, 47.659988, 45.784103>,  <47.074249, 47.462769, 45.746246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942825, 47.659988, 45.784103>,  <46.723789, 47.988686, 45.847198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942825, 47.659988, 45.784103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422424, 0.434219, -0.795620,
		0.722287, 0.369045, 0.584900,
		0.547594, -0.821742, -0.157738,
		47.107105, 47.413467, 45.736782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427647, 48.262173, 45.599915>,  <46.723789, 47.988686, 45.847198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427647, 48.262173, 45.599915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450584, 47.876038, 45.498058>,  <47.464348, 47.644356, 45.436947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450584, 47.876038, 45.498058>,  <47.427647, 48.262173, 45.599915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450584, 47.876038, 45.498058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437297, 0.253575, -0.862827,
		0.897487, -0.061873, 0.436680,
		0.057345, -0.965335, -0.254637,
		47.467789, 47.586437, 45.421669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.093842, 48.230194, 45.387543>,  <47.427647, 48.262173, 45.599915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.093842, 48.230194, 45.387543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.903725, 47.918694, 45.223770>,  <47.789654, 47.731792, 45.125507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.903725, 47.918694, 45.223770>,  <48.093842, 48.230194, 45.387543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.903725, 47.918694, 45.223770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463089, 0.174251, -0.869014,
		0.748094, -0.602641, 0.277812,
		-0.475295, -0.778756, -0.409433,
		47.761135, 47.685066, 45.100941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.618111, 41.904861, 50.036343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824909, 41.570015, 50.107834>,  <40.948990, 41.369106, 50.150726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824909, 41.570015, 50.107834>,  <40.618111, 41.904861, 50.036343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824909, 41.570015, 50.107834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714858, 0.307393, -0.628083,
		0.470842, 0.452480, 0.757343,
		0.516997, -0.837121, 0.178725,
		40.980007, 41.318878, 50.161453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260529, 42.181335, 49.945538>,  <40.618111, 41.904861, 50.036343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260529, 42.181335, 49.945538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.288506, 41.784416, 49.904644>,  <41.305290, 41.546265, 49.880108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.288506, 41.784416, 49.904644>,  <41.260529, 42.181335, 49.945538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288506, 41.784416, 49.904644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674424, 0.122550, -0.728103,
		0.735024, -0.018026, 0.677801,
		0.069939, -0.992299, -0.102234,
		41.309486, 41.486725, 49.873974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968544, 41.972523, 50.003006>,  <41.260529, 42.181335, 49.945538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968544, 41.972523, 50.003006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.786278, 41.691010, 49.784992>,  <41.676918, 41.522102, 49.654186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.786278, 41.691010, 49.784992>,  <41.968544, 41.972523, 50.003006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786278, 41.691010, 49.784992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693354, 0.103367, -0.713145,
		0.558237, -0.702856, 0.440869,
		-0.455667, -0.703782, -0.545031,
		41.649578, 41.479874, 49.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532341, 41.602219, 49.686638>,  <41.968544, 41.972523, 50.003006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532341, 41.602219, 49.686638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.208344, 41.480026, 49.486397>,  <42.013947, 41.406712, 49.366253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.208344, 41.480026, 49.486397>,  <42.532341, 41.602219, 49.686638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208344, 41.480026, 49.486397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541383, -0.061359, -0.838534,
		0.225440, -0.950219, 0.215082,
		-0.809989, -0.305481, -0.500599,
		41.965347, 41.388382, 49.336216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760647, 41.033852, 49.311310>,  <42.532341, 41.602219, 49.686638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760647, 41.033852, 49.311310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425678, 41.141479, 49.121014>,  <42.224697, 41.206055, 49.006836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425678, 41.141479, 49.121014>,  <42.760647, 41.033852, 49.311310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425678, 41.141479, 49.121014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475522, -0.070460, -0.876878,
		-0.269460, -0.960541, -0.068943,
		-0.837419, 0.269067, -0.475744,
		42.174454, 41.222198, 48.978291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600307, 40.540031, 48.879082>,  <42.760647, 41.033852, 49.311310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600307, 40.540031, 48.879082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.397385, 40.850815, 48.729965>,  <42.275631, 41.037285, 48.640495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.397385, 40.850815, 48.729965>,  <42.600307, 40.540031, 48.879082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397385, 40.850815, 48.729965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477898, -0.106337, -0.871956,
		-0.717114, -0.620508, -0.317360,
		-0.507308, 0.776957, -0.372795,
		42.245193, 41.083900, 48.618126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515785, 40.354698, 48.114883>,  <42.600307, 40.540031, 48.879082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515785, 40.354698, 48.114883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.457367, 40.750397, 48.117867>,  <42.422318, 40.987816, 48.119656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.457367, 40.750397, 48.117867>,  <42.515785, 40.354698, 48.114883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457367, 40.750397, 48.117867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500139, 0.080333, -0.862211,
		-0.853541, -0.122194, -0.506494,
		-0.146045, 0.989250, 0.007454,
		42.413555, 41.047173, 48.120102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334595, 40.539379, 47.384457>,  <42.515785, 40.354698, 48.114883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334595, 40.539379, 47.384457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.436592, 40.893997, 47.538868>,  <42.497791, 41.106770, 47.631516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.436592, 40.893997, 47.538868>,  <42.334595, 40.539379, 47.384457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436592, 40.893997, 47.538868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386661, 0.272427, -0.881065,
		-0.886268, 0.373929, -0.273325,
		0.254995, 0.886544, 0.386028,
		42.513092, 41.159962, 47.654675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178307, 40.951481, 46.844952>,  <42.334595, 40.539379, 47.384457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178307, 40.951481, 46.844952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.417896, 41.166939, 47.081963>,  <42.561649, 41.296215, 47.224167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.417896, 41.166939, 47.081963>,  <42.178307, 40.951481, 46.844952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417896, 41.166939, 47.081963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493460, 0.334467, -0.802887,
		-0.630654, 0.773298, -0.065463,
		0.598976, 0.538648, 0.592525,
		42.597588, 41.328533, 47.259720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350334, 41.553448, 46.481903>,  <42.178307, 40.951481, 46.844952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350334, 41.553448, 46.481903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.636589, 41.522583, 46.759579>,  <42.808342, 41.504066, 46.926186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.636589, 41.522583, 46.759579>,  <42.350334, 41.553448, 46.481903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636589, 41.522583, 46.759579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640885, 0.467707, -0.608701,
		-0.277712, 0.880509, 0.384161,
		0.715641, -0.077160, 0.694193,
		42.851280, 41.499435, 46.967838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654762, 42.252750, 46.708519>,  <42.350334, 41.553448, 46.481903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654762, 42.252750, 46.708519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.930767, 41.976151, 46.794033>,  <43.096371, 41.810188, 46.845341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.930767, 41.976151, 46.794033>,  <42.654762, 42.252750, 46.708519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930767, 41.976151, 46.794033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697064, 0.555356, -0.453521,
		0.194886, 0.461956, 0.865226,
		0.690015, -0.691503, 0.213782,
		43.137772, 41.768700, 46.858166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247898, 42.610477, 46.905231>,  <42.654762, 42.252750, 46.708519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247898, 42.610477, 46.905231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.420547, 42.255714, 46.839382>,  <43.524136, 42.042858, 46.799873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.420547, 42.255714, 46.839382>,  <43.247898, 42.610477, 46.905231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420547, 42.255714, 46.839382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746045, 0.453563, -0.487543,
		0.507071, 0.087617, 0.857439,
		0.431620, -0.886907, -0.164623,
		43.550034, 41.989643, 46.789997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874046, 42.713390, 47.078133>,  <43.247898, 42.610477, 46.905231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874046, 42.713390, 47.078133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.880783, 42.395042, 46.836037>,  <43.884823, 42.204033, 46.690781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.880783, 42.395042, 46.836037>,  <43.874046, 42.713390, 47.078133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880783, 42.395042, 46.836037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694094, 0.445011, -0.565861,
		0.719687, -0.410565, 0.559899,
		0.016838, -0.795865, -0.605239,
		43.885834, 42.156284, 46.654465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528435, 42.287895, 47.138489>,  <43.874046, 42.713390, 47.078133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528435, 42.287895, 47.138489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.370457, 42.229691, 46.775646>,  <44.275669, 42.194767, 46.557941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.370457, 42.229691, 46.775646>,  <44.528435, 42.287895, 47.138489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370457, 42.229691, 46.775646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846352, 0.326447, -0.420857,
		0.357362, -0.933948, -0.005774,
		-0.394943, -0.145511, -0.907109,
		44.251972, 42.186039, 46.503513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154045, 42.134224, 46.884529>,  <44.528435, 42.287895, 47.138489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154045, 42.134224, 46.884529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.919571, 42.177177, 46.563316>,  <44.778889, 42.202950, 46.370590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.919571, 42.177177, 46.563316>,  <45.154045, 42.134224, 46.884529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919571, 42.177177, 46.563316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761303, 0.412065, -0.500620,
		0.277140, -0.904804, -0.323300,
		-0.586184, 0.107387, -0.803030,
		44.743717, 42.209393, 46.322407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583584, 41.910290, 46.338760>,  <45.154045, 42.134224, 46.884529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583584, 41.910290, 46.338760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.287819, 42.105202, 46.152931>,  <45.110359, 42.222149, 46.041431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.287819, 42.105202, 46.152931>,  <45.583584, 41.910290, 46.338760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287819, 42.105202, 46.152931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661811, 0.399367, -0.634439,
		-0.123613, -0.776572, -0.617782,
		-0.739409, 0.487280, -0.464577,
		45.065994, 42.251385, 46.013557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664928, 41.793346, 45.547123>,  <45.583584, 41.910290, 46.338760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664928, 41.793346, 45.547123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.475975, 42.136696, 45.627167>,  <45.362602, 42.342705, 45.675194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.475975, 42.136696, 45.627167>,  <45.664928, 41.793346, 45.547123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475975, 42.136696, 45.627167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611982, 0.482815, -0.626393,
		-0.634297, -0.173433, -0.753384,
		-0.472382, 0.858377, 0.200111,
		45.334259, 42.394211, 45.687199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603096, 42.124020, 44.883411>,  <45.664928, 41.793346, 45.547123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603096, 42.124020, 44.883411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.538094, 42.413475, 45.151722>,  <45.499092, 42.587147, 45.312710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.538094, 42.413475, 45.151722>,  <45.603096, 42.124020, 44.883411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538094, 42.413475, 45.151722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637282, 0.595977, -0.488551,
		-0.753302, 0.348084, -0.558009,
		-0.162504, 0.723636, 0.670778,
		45.489342, 42.630566, 45.352955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487499, 42.637489, 44.486610>,  <45.603096, 42.124020, 44.883411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487499, 42.637489, 44.486610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.594933, 42.801437, 44.835293>,  <45.659393, 42.899807, 45.044502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.594933, 42.801437, 44.835293>,  <45.487499, 42.637489, 44.486610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594933, 42.801437, 44.835293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592521, 0.643200, -0.484987,
		-0.759462, 0.646764, -0.070102,
		0.268583, 0.409866, 0.871707,
		45.675507, 42.924397, 45.096806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282181, 43.375832, 44.451443>,  <45.487499, 42.637489, 44.486610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282181, 43.375832, 44.451443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.598419, 43.325600, 44.691174>,  <45.788162, 43.295460, 44.835011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.598419, 43.325600, 44.691174>,  <45.282181, 43.375832, 44.451443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598419, 43.325600, 44.691174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557201, 0.553420, -0.619074,
		-0.253937, 0.823381, 0.507502,
		0.790596, -0.125575, 0.599323,
		45.835598, 43.287926, 44.870972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509323, 44.055840, 44.468468>,  <45.282181, 43.375832, 44.451443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509323, 44.055840, 44.468468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.800659, 43.822327, 44.611980>,  <45.975460, 43.682220, 44.698090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.800659, 43.822327, 44.611980>,  <45.509323, 44.055840, 44.468468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800659, 43.822327, 44.611980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645094, 0.407634, -0.646288,
		0.231041, 0.702162, 0.673490,
		0.728337, -0.583783, 0.358780,
		46.019161, 43.647190, 44.719616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069958, 44.449600, 44.765911>,  <45.509323, 44.055840, 44.468468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069958, 44.449600, 44.765911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.207993, 44.087837, 44.665543>,  <46.290813, 43.870781, 44.605324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.207993, 44.087837, 44.665543>,  <46.069958, 44.449600, 44.765911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207993, 44.087837, 44.665543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744418, 0.426562, -0.513699,
		0.571625, -0.009515, 0.820459,
		0.345089, -0.904408, -0.250917,
		46.311520, 43.816513, 44.590267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132309, 44.990509, 45.376339>,  <46.069958, 44.449600, 44.765911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132309, 44.990509, 45.376339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.011040, 45.370605, 45.347713>,  <45.938278, 45.598663, 45.330540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.011040, 45.370605, 45.347713>,  <46.132309, 44.990509, 45.376339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011040, 45.370605, 45.347713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844766, -0.233252, 0.481626,
		0.440971, 0.206471, 0.873450,
		-0.303176, 0.950244, -0.071562,
		45.920086, 45.655678, 45.326244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883221, 45.210709, 46.035225>,  <46.132309, 44.990509, 45.376339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883221, 45.210709, 46.035225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.700417, 45.418159, 45.746178>,  <45.590733, 45.542629, 45.572750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.700417, 45.418159, 45.746178>,  <45.883221, 45.210709, 46.035225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700417, 45.418159, 45.746178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855645, -0.034452, 0.516416,
		0.242931, 0.854308, 0.459503,
		-0.457009, 0.518625, -0.722614,
		45.563313, 45.573746, 45.529392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485043, 45.767441, 46.363281>,  <45.883221, 45.210709, 46.035225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485043, 45.767441, 46.363281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.310280, 45.771561, 46.003502>,  <45.205421, 45.774033, 45.787636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.310280, 45.771561, 46.003502>,  <45.485043, 45.767441, 46.363281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310280, 45.771561, 46.003502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897810, 0.056379, 0.436759,
		0.055208, 0.998356, -0.015388,
		-0.436909, 0.010297, -0.899447,
		45.179207, 45.774651, 45.733669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006447, 46.345314, 46.317638>,  <45.485043, 45.767441, 46.363281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006447, 46.345314, 46.317638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.883476, 46.044884, 46.083927>,  <44.809696, 45.864628, 45.943703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.883476, 46.044884, 46.083927>,  <45.006447, 46.345314, 46.317638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883476, 46.044884, 46.083927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918401, 0.073485, 0.388766,
		-0.249057, 0.656116, -0.712378,
		-0.307424, -0.751074, -0.584276,
		44.791248, 45.819561, 45.908646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393543, 46.591682, 46.138123>,  <45.006447, 46.345314, 46.317638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393543, 46.591682, 46.138123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.331474, 46.225128, 45.990524>,  <44.294235, 46.005196, 45.901966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.331474, 46.225128, 45.990524>,  <44.393543, 46.591682, 46.138123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331474, 46.225128, 45.990524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918703, -0.003463, 0.394934,
		-0.363191, 0.400277, -0.841351,
		-0.155169, -0.916388, -0.368993,
		44.284924, 45.950211, 45.879826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674469, 46.493484, 45.899544>,  <44.393543, 46.591682, 46.138123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674469, 46.493484, 45.899544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.798576, 46.117287, 45.954979>,  <43.873039, 45.891567, 45.988239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.798576, 46.117287, 45.954979>,  <43.674469, 46.493484, 45.899544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798576, 46.117287, 45.954979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904579, -0.247242, 0.347286,
		-0.292357, -0.233110, -0.927462,
		0.310263, -0.940495, 0.138584,
		43.891655, 45.835140, 45.996555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157681, 46.143085, 45.635494>,  <43.674469, 46.493484, 45.899544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157681, 46.143085, 45.635494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.346710, 45.899551, 45.890366>,  <43.460129, 45.753433, 46.043289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.346710, 45.899551, 45.890366>,  <43.157681, 46.143085, 45.635494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346710, 45.899551, 45.890366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880298, -0.291835, 0.374043,
		-0.041780, -0.737669, -0.673869,
		0.472578, -0.608833, 0.637175,
		43.488483, 45.716900, 46.081520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803223, 45.511047, 45.550312>,  <43.157681, 46.143085, 45.635494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803223, 45.511047, 45.550312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.013412, 45.496994, 45.890347>,  <43.139526, 45.488564, 46.094368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.013412, 45.496994, 45.890347>,  <42.803223, 45.511047, 45.550312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013412, 45.496994, 45.890347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819265, -0.290448, 0.494414,
		0.229535, -0.956246, -0.181406,
		0.525470, -0.035134, 0.850086,
		43.171055, 45.486454, 46.145370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597572, 44.886749, 45.812519>,  <42.803223, 45.511047, 45.550312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597572, 44.886749, 45.812519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.742641, 45.066605, 46.139027>,  <42.829685, 45.174519, 46.334930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.742641, 45.066605, 46.139027>,  <42.597572, 44.886749, 45.812519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742641, 45.066605, 46.139027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751030, -0.377555, 0.541669,
		0.551742, -0.809490, 0.200765,
		0.362676, 0.449642, 0.816265,
		42.851444, 45.201496, 46.383907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589310, 44.382195, 46.381523>,  <42.597572, 44.886749, 45.812519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589310, 44.382195, 46.381523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.579529, 44.737984, 46.564056>,  <42.573662, 44.951458, 46.673576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.579529, 44.737984, 46.564056>,  <42.589310, 44.382195, 46.381523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579529, 44.737984, 46.564056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674408, -0.351632, 0.649252,
		0.737954, -0.291885, 0.608463,
		-0.024448, 0.889471, 0.456338,
		42.572193, 45.004826, 46.700958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416740, 44.228706, 47.059380>,  <42.589310, 44.382195, 46.381523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416740, 44.228706, 47.059380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.367592, 44.625412, 47.073830>,  <42.338104, 44.863434, 47.082500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.367592, 44.625412, 47.073830>,  <42.416740, 44.228706, 47.059380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367592, 44.625412, 47.073830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687265, -0.111292, 0.717831,
		0.715940, 0.063373, 0.695280,
		-0.122870, 0.991765, 0.036124,
		42.330730, 44.922943, 47.084667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550255, 44.485661, 47.771450>,  <42.416740, 44.228706, 47.059380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550255, 44.485661, 47.771450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.302765, 44.745689, 47.595005>,  <42.154270, 44.901707, 47.489140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.302765, 44.745689, 47.595005>,  <42.550255, 44.485661, 47.771450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302765, 44.745689, 47.595005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604792, -0.035784, 0.795579,
		0.501401, 0.759027, 0.415300,
		-0.618727, 0.650075, -0.441112,
		42.117146, 44.940712, 47.462673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330688, 45.045395, 48.300426>,  <42.550255, 44.485661, 47.771450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330688, 45.045395, 48.300426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.058483, 45.082520, 48.009693>,  <41.895161, 45.104794, 47.835255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.058483, 45.082520, 48.009693>,  <42.330688, 45.045395, 48.300426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058483, 45.082520, 48.009693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731890, -0.038530, 0.680333,
		0.035136, 0.994939, 0.094146,
		-0.680517, 0.092809, -0.726831,
		41.854328, 45.110363, 47.791645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740673, 45.534321, 48.572182>,  <42.330688, 45.045395, 48.300426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740673, 45.534321, 48.572182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.576691, 45.344521, 48.260597>,  <41.478302, 45.230640, 48.073647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.576691, 45.344521, 48.260597>,  <41.740673, 45.534321, 48.572182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576691, 45.344521, 48.260597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794630, -0.233462, 0.560410,
		-0.447772, 0.848733, -0.281341,
		-0.409956, -0.474498, -0.778966,
		41.453705, 45.202171, 48.026909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984070, 45.733429, 48.627995>,  <41.740673, 45.534321, 48.572182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984070, 45.733429, 48.627995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.031097, 45.385521, 48.436295>,  <41.059315, 45.176777, 48.321274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.031097, 45.385521, 48.436295>,  <40.984070, 45.733429, 48.627995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031097, 45.385521, 48.436295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600155, -0.446724, 0.663515,
		-0.791197, 0.209616, -0.574517,
		0.117568, -0.869770, -0.479249,
		41.066368, 45.124592, 48.292519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324116, 45.574375, 48.558159>,  <40.984070, 45.733429, 48.627995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324116, 45.574375, 48.558159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.531487, 45.234421, 48.520370>,  <40.655907, 45.030449, 48.497700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.531487, 45.234421, 48.520370>,  <40.324116, 45.574375, 48.558159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531487, 45.234421, 48.520370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614716, -0.447190, 0.649728,
		-0.594442, -0.278764, -0.754274,
		0.518424, -0.849890, -0.094468,
		40.687016, 44.979454, 48.492031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804356, 45.004192, 48.429420>,  <40.324116, 45.574375, 48.558159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804356, 45.004192, 48.429420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128372, 44.823746, 48.579262>,  <40.322781, 44.715477, 48.669167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128372, 44.823746, 48.579262>,  <39.804356, 45.004192, 48.429420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128372, 44.823746, 48.579262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575846, -0.491499, 0.653322,
		-0.110608, -0.744931, -0.657908,
		0.810042, -0.451117, 0.374602,
		40.371384, 44.688412, 48.691643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588173, 44.258831, 48.502964>,  <39.804356, 45.004192, 48.429420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588173, 44.258831, 48.502964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910961, 44.286484, 48.737579>,  <40.104633, 44.303074, 48.878349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910961, 44.286484, 48.737579>,  <39.588173, 44.258831, 48.502964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910961, 44.286484, 48.737579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398315, -0.669558, 0.626927,
		0.436061, -0.739536, -0.512775,
		0.806967, 0.069133, 0.586536,
		40.153053, 44.307224, 48.913540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.714741, 43.546577, 48.856133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.927345, 43.796219, 49.085213>,  <40.054909, 43.946003, 49.222660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.927345, 43.796219, 49.085213>,  <39.714741, 43.546577, 48.856133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927345, 43.796219, 49.085213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387335, -0.422206, 0.819582,
		0.753302, -0.657446, 0.017329,
		0.531514, 0.624105, 0.572700,
		40.086800, 43.983452, 49.257023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229752, 43.086929, 49.293758>,  <39.714741, 43.546577, 48.856133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229752, 43.086929, 49.293758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.214638, 43.433800, 49.492382>,  <40.205570, 43.641922, 49.611557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.214638, 43.433800, 49.492382>,  <40.229752, 43.086929, 49.293758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214638, 43.433800, 49.492382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207807, -0.492874, 0.844921,
		0.977440, -0.071261, 0.198831,
		-0.037789, 0.867177, 0.496564,
		40.203300, 43.693954, 49.641350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621140, 43.046532, 49.941090>,  <40.229752, 43.086929, 49.293758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621140, 43.046532, 49.941090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.354664, 43.340584, 49.991341>,  <40.194778, 43.517014, 50.021492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.354664, 43.340584, 49.991341>,  <40.621140, 43.046532, 49.941090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354664, 43.340584, 49.991341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245724, -0.375398, 0.893698,
		0.704143, 0.564499, 0.430724,
		-0.666185, 0.735130, 0.125623,
		40.154808, 43.561123, 50.029026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728317, 43.161442, 50.629364>,  <40.621140, 43.046532, 49.941090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728317, 43.161442, 50.629364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376797, 43.327705, 50.535614>,  <40.165882, 43.427464, 50.479366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376797, 43.327705, 50.535614>,  <40.728317, 43.161442, 50.629364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376797, 43.327705, 50.535614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353065, -0.235975, 0.905351,
		0.321012, 0.878375, 0.354131,
		-0.878804, 0.415659, -0.234373,
		40.113155, 43.452404, 50.465302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465946, 43.357948, 51.330460>,  <40.728317, 43.161442, 50.629364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465946, 43.357948, 51.330460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.156326, 43.364212, 51.077286>,  <39.970554, 43.367970, 50.925381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.156326, 43.364212, 51.077286>,  <40.465946, 43.357948, 51.330460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156326, 43.364212, 51.077286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593946, -0.364167, 0.717364,
		-0.219258, 0.931202, 0.291184,
		-0.774051, 0.015660, -0.632930,
		39.924110, 43.368912, 50.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844677, 43.585339, 51.712605>,  <40.465946, 43.357948, 51.330460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844677, 43.585339, 51.712605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711128, 43.385468, 51.392891>,  <39.631001, 43.265545, 51.201065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711128, 43.385468, 51.392891>,  <39.844677, 43.585339, 51.712605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711128, 43.385468, 51.392891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732456, -0.396206, 0.553650,
		-0.593327, 0.770287, -0.233710,
		-0.333873, -0.499678, -0.799282,
		39.610966, 43.235565, 51.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041534, 43.803230, 51.570927>,  <39.844677, 43.585339, 51.712605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041534, 43.803230, 51.570927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139473, 43.456879, 51.396431>,  <39.198238, 43.249069, 51.291733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139473, 43.456879, 51.396431>,  <39.041534, 43.803230, 51.570927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139473, 43.456879, 51.396431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621799, -0.485455, 0.614572,
		-0.743918, 0.120773, -0.657267,
		0.244850, -0.865879, -0.436235,
		39.212929, 43.197113, 51.265560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425526, 43.588097, 51.434063>,  <39.041534, 43.803230, 51.570927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425526, 43.588097, 51.434063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644062, 43.254280, 51.405605>,  <38.775185, 43.053989, 51.388531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644062, 43.254280, 51.405605>,  <38.425526, 43.588097, 51.434063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644062, 43.254280, 51.405605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644435, -0.473097, 0.600735,
		-0.534994, -0.282357, -0.796276,
		0.546337, -0.834538, -0.071144,
		38.807964, 43.003918, 51.384262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979542, 43.169922, 51.382172>,  <38.425526, 43.588097, 51.434063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979542, 43.169922, 51.382172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289696, 42.953415, 51.512283>,  <38.475788, 42.823509, 51.590351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289696, 42.953415, 51.512283>,  <37.979542, 43.169922, 51.382172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289696, 42.953415, 51.512283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602686, -0.480510, 0.637087,
		-0.188532, -0.690030, -0.698794,
		0.775387, -0.541265, 0.325280,
		38.522312, 42.791035, 51.609867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799480, 42.517830, 51.398518>,  <37.979542, 43.169922, 51.382172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799480, 42.517830, 51.398518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105949, 42.486130, 51.653610>,  <38.289829, 42.467110, 51.806667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105949, 42.486130, 51.653610>,  <37.799480, 42.517830, 51.398518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105949, 42.486130, 51.653610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624050, -0.328713, 0.708879,
		0.153453, -0.941099, -0.301305,
		0.766168, -0.079249, 0.637735,
		38.335800, 42.462357, 51.844933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534519, 42.003693, 51.824474>,  <37.799480, 42.517830, 51.398518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534519, 42.003693, 51.824474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809101, 42.160103, 52.069710>,  <37.973850, 42.253948, 52.216850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809101, 42.160103, 52.069710>,  <37.534519, 42.003693, 51.824474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809101, 42.160103, 52.069710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569182, -0.235779, 0.787681,
		0.452558, -0.889666, 0.060714,
		0.686457, 0.391029, 0.613085,
		38.015038, 42.277412, 52.253635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571377, 41.572998, 52.346943>,  <37.534519, 42.003693, 51.824474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571377, 41.572998, 52.346943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745964, 41.886353, 52.523941>,  <37.850716, 42.074364, 52.630142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745964, 41.886353, 52.523941>,  <37.571377, 41.572998, 52.346943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745964, 41.886353, 52.523941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460561, -0.227959, 0.857857,
		0.772904, -0.578223, 0.261301,
		0.436467, 0.783386, 0.442497,
		37.876904, 42.121368, 52.656689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881828, 41.255222, 52.814911>,  <37.571377, 41.572998, 52.346943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881828, 41.255222, 52.814911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834801, 41.637459, 52.923000>,  <37.806583, 41.866802, 52.987854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834801, 41.637459, 52.923000>,  <37.881828, 41.255222, 52.814911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834801, 41.637459, 52.923000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320744, -0.294063, 0.900361,
		0.939841, 0.019180, 0.341072,
		-0.117565, 0.955594, 0.270221,
		37.799530, 41.924137, 53.004066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197487, 41.352203, 53.448990>,  <37.881828, 41.255222, 52.814911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197487, 41.352203, 53.448990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960819, 41.674355, 53.434582>,  <37.818817, 41.867645, 53.425938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960819, 41.674355, 53.434582>,  <38.197487, 41.352203, 53.448990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960819, 41.674355, 53.434582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331150, -0.202055, 0.921691,
		0.735028, 0.557266, 0.386250,
		-0.591671, 0.805375, -0.036022,
		37.783318, 41.915966, 53.423775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281414, 41.819904, 53.999584>,  <38.197487, 41.352203, 53.448990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281414, 41.819904, 53.999584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903530, 41.886299, 53.886463>,  <37.676800, 41.926136, 53.818592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903530, 41.886299, 53.886463>,  <38.281414, 41.819904, 53.999584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903530, 41.886299, 53.886463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319724, -0.274717, 0.906812,
		0.072827, 0.947090, 0.312596,
		-0.944708, 0.165984, -0.282800,
		37.620117, 41.936096, 53.801624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048477, 42.108238, 54.641792>,  <38.281414, 41.819904, 53.999584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048477, 42.108238, 54.641792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715576, 42.036980, 54.431793>,  <37.515835, 41.994225, 54.305794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715576, 42.036980, 54.431793>,  <38.048477, 42.108238, 54.641792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715576, 42.036980, 54.431793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438423, -0.368105, 0.819929,
		-0.339324, 0.912558, 0.228251,
		-0.832253, -0.178151, -0.524993,
		37.465900, 41.983536, 54.274296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640728, 42.323395, 54.994606>,  <38.048477, 42.108238, 54.641792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640728, 42.323395, 54.994606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402260, 42.070259, 54.796982>,  <37.259178, 41.918377, 54.678406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402260, 42.070259, 54.796982>,  <37.640728, 42.323395, 54.994606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402260, 42.070259, 54.796982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441002, -0.256105, 0.860190,
		-0.670895, 0.730700, -0.126402,
		-0.596169, -0.632841, -0.494060,
		37.223408, 41.880405, 54.648766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926140, 42.462307, 55.239868>,  <37.640728, 42.323395, 54.994606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926140, 42.462307, 55.239868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904503, 42.092941, 55.087879>,  <36.891521, 41.871323, 54.996685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904503, 42.092941, 55.087879>,  <36.926140, 42.462307, 55.239868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904503, 42.092941, 55.087879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568540, -0.284341, 0.771954,
		-0.820875, 0.257786, -0.509618,
		-0.054094, -0.923416, -0.379970,
		36.888275, 41.815918, 54.973888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269646, 42.258038, 55.442413>,  <36.926140, 42.462307, 55.239868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269646, 42.258038, 55.442413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457001, 41.924377, 55.325928>,  <36.569412, 41.724182, 55.256035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457001, 41.924377, 55.325928>,  <36.269646, 42.258038, 55.442413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457001, 41.924377, 55.325928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430561, -0.503322, 0.749189,
		-0.771513, -0.225522, -0.594901,
		0.468385, -0.834151, -0.291218,
		36.597515, 41.674133, 55.238564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767429, 41.773232, 55.321613>,  <36.269646, 42.258038, 55.442413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767429, 41.773232, 55.321613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111641, 41.578735, 55.382347>,  <36.318169, 41.462036, 55.418789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111641, 41.578735, 55.382347>,  <35.767429, 41.773232, 55.321613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111641, 41.578735, 55.382347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427311, -0.526791, 0.734776,
		-0.277293, -0.697179, -0.661097,
		0.860531, -0.486243, 0.151837,
		36.369801, 41.432861, 55.427898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548866, 41.078613, 55.431385>,  <35.767429, 41.773232, 55.321613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548866, 41.078613, 55.431385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923729, 41.040627, 55.565681>,  <36.148647, 41.017834, 55.646259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923729, 41.040627, 55.565681>,  <35.548866, 41.078613, 55.431385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923729, 41.040627, 55.565681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314234, -0.647931, 0.693860,
		0.151643, -0.755756, -0.637054,
		0.937156, -0.094965, 0.335739,
		36.204876, 41.012138, 55.666405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677452, 40.355362, 55.612881>,  <35.548866, 41.078613, 55.431385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677452, 40.355362, 55.612881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941971, 40.563431, 55.829067>,  <36.100681, 40.688274, 55.958778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941971, 40.563431, 55.829067>,  <35.677452, 40.355362, 55.612881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941971, 40.563431, 55.829067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076419, -0.670036, 0.738384,
		0.746223, -0.529592, -0.403341,
		0.661295, 0.520176, 0.540467,
		36.140358, 40.719482, 55.991207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139286, 39.816227, 55.842621>,  <35.677452, 40.355362, 55.612881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139286, 39.816227, 55.842621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126160, 40.141159, 56.075531>,  <36.118286, 40.336117, 56.215279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126160, 40.141159, 56.075531>,  <36.139286, 39.816227, 55.842621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126160, 40.141159, 56.075531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168833, -0.578722, 0.797857,
		0.985098, -0.072128, 0.156137,
		-0.032812, 0.812329, 0.582276,
		36.116318, 40.384857, 56.250214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495045, 39.430080, 56.294807>,  <36.139286, 39.816227, 55.842621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495045, 39.430080, 56.294807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748390, 39.415123, 56.603989>,  <36.900398, 39.406147, 56.789497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748390, 39.415123, 56.603989>,  <36.495045, 39.430080, 56.294807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748390, 39.415123, 56.603989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770455, -0.063074, -0.634367,
		0.072477, 0.997308, -0.011135,
		0.633361, -0.037398, 0.772952,
		36.938400, 39.403904, 56.835873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003384, 39.964458, 56.201313>,  <36.495045, 39.430080, 56.294807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003384, 39.964458, 56.201313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161320, 39.679276, 56.433105>,  <37.256081, 39.508167, 56.572182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161320, 39.679276, 56.433105>,  <37.003384, 39.964458, 56.201313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161320, 39.679276, 56.433105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797531, -0.047159, -0.601432,
		0.456124, 0.699619, 0.549986,
		0.394836, -0.712959, 0.579478,
		37.279770, 39.465389, 56.606949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652729, 40.208084, 56.499821>,  <37.003384, 39.964458, 56.201313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652729, 40.208084, 56.499821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633022, 39.810394, 56.461670>,  <37.621201, 39.571781, 56.438782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633022, 39.810394, 56.461670>,  <37.652729, 40.208084, 56.499821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633022, 39.810394, 56.461670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694273, 0.034558, -0.718882,
		0.718024, -0.101630, 0.688559,
		-0.049265, -0.994222, -0.095373,
		37.618244, 39.512127, 56.433060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378838, 39.959141, 56.573330>,  <37.652729, 40.208084, 56.499821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378838, 39.959141, 56.573330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187645, 39.657677, 56.392868>,  <38.072929, 39.476799, 56.284592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187645, 39.657677, 56.392868>,  <38.378838, 39.959141, 56.573330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187645, 39.657677, 56.392868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710716, -0.030010, -0.702839,
		0.516160, -0.656584, 0.549979,
		-0.477977, -0.753656, -0.451155,
		38.044250, 39.431580, 56.257523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943592, 39.589462, 56.416691>,  <38.378838, 39.959141, 56.573330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943592, 39.589462, 56.416691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.629841, 39.451424, 56.210526>,  <38.441589, 39.368599, 56.086826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.629841, 39.451424, 56.210526>,  <38.943592, 39.589462, 56.416691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629841, 39.451424, 56.210526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595420, -0.186026, -0.781582,
		0.173841, -0.919947, 0.351393,
		-0.784382, -0.345097, -0.515416,
		38.394527, 39.347897, 56.055901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155727, 39.020866, 56.112232>,  <38.943592, 39.589462, 56.416691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155727, 39.020866, 56.112232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843918, 39.138336, 55.890930>,  <38.656830, 39.208817, 55.758148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843918, 39.138336, 55.890930>,  <39.155727, 39.020866, 56.112232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843918, 39.138336, 55.890930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584082, 0.021775, -0.811402,
		-0.226240, -0.955658, -0.188503,
		-0.779528, 0.293673, -0.553256,
		38.610058, 39.226437, 55.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217651, 38.613701, 55.446278>,  <39.155727, 39.020866, 56.112232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217651, 38.613701, 55.446278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990326, 38.935844, 55.378849>,  <38.853931, 39.129131, 55.338390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990326, 38.935844, 55.378849>,  <39.217651, 38.613701, 55.446278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990326, 38.935844, 55.378849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556983, 0.225753, -0.799253,
		-0.605629, -0.548120, -0.576869,
		-0.568317, 0.805357, -0.168571,
		38.819832, 39.177452, 55.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992287, 38.537716, 54.753300>,  <39.217651, 38.613701, 55.446278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992287, 38.537716, 54.753300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936401, 38.923325, 54.843750>,  <38.902870, 39.154690, 54.898022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936401, 38.923325, 54.843750>,  <38.992287, 38.537716, 54.753300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936401, 38.923325, 54.843750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470194, 0.265571, -0.841659,
		-0.871434, -0.011269, -0.490384,
		-0.139716, 0.964025, 0.226130,
		38.894485, 39.212532, 54.911591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819405, 38.786716, 54.098797>,  <38.992287, 38.537716, 54.753300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819405, 38.786716, 54.098797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947220, 39.087975, 54.328812>,  <39.023907, 39.268730, 54.466820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947220, 39.087975, 54.328812>,  <38.819405, 38.786716, 54.098797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947220, 39.087975, 54.328812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485195, 0.391219, -0.782006,
		-0.813931, 0.528884, -0.240414,
		0.319535, 0.753146, 0.575037,
		39.043079, 39.313919, 54.501324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668774, 39.357319, 53.784168>,  <38.819405, 38.786716, 54.098797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668774, 39.357319, 53.784168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942276, 39.508064, 54.034115>,  <39.106377, 39.598511, 54.184082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942276, 39.508064, 54.034115>,  <38.668774, 39.357319, 53.784168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942276, 39.508064, 54.034115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260320, 0.673995, -0.691349,
		-0.681700, 0.635377, 0.362741,
		0.683753, 0.376864, 0.624864,
		39.147404, 39.621124, 54.221573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646835, 40.077068, 53.668167>,  <38.668774, 39.357319, 53.784168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646835, 40.077068, 53.668167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004585, 40.013985, 53.835602>,  <39.219234, 39.976135, 53.936062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004585, 40.013985, 53.835602>,  <38.646835, 40.077068, 53.668167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004585, 40.013985, 53.835602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432307, 0.545086, -0.718326,
		-0.114879, 0.823413, 0.555692,
		0.894379, -0.157709, 0.418586,
		39.272900, 39.966671, 53.961178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065758, 40.779556, 53.688457>,  <38.646835, 40.077068, 53.668167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065758, 40.779556, 53.688457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325851, 40.476677, 53.713268>,  <39.481907, 40.294949, 53.728153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325851, 40.476677, 53.713268>,  <39.065758, 40.779556, 53.688457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325851, 40.476677, 53.713268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508726, 0.373317, -0.775778,
		0.564259, 0.535995, 0.627950,
		0.650238, -0.757195, 0.062027,
		39.520924, 40.249519, 53.731876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718887, 41.118061, 53.558975>,  <39.065758, 40.779556, 53.688457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718887, 41.118061, 53.558975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804756, 40.730911, 53.506618>,  <39.856277, 40.498623, 53.475204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804756, 40.730911, 53.506618>,  <39.718887, 41.118061, 53.558975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804756, 40.730911, 53.506618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394771, 0.208568, -0.894793,
		0.893348, 0.140418, 0.426863,
		0.214675, -0.967875, -0.130891,
		39.869160, 40.440548, 53.467350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379288, 41.065022, 53.360336>,  <39.718887, 41.118061, 53.558975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379288, 41.065022, 53.360336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181747, 40.750259, 53.212341>,  <40.063221, 40.561401, 53.123547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181747, 40.750259, 53.212341>,  <40.379288, 41.065022, 53.360336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181747, 40.750259, 53.212341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372405, 0.193091, -0.907761,
		0.785763, -0.586085, 0.197689,
		-0.493854, -0.786905, -0.369985,
		40.033592, 40.514187, 53.101345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875793, 40.768986, 52.962547>,  <40.379288, 41.065022, 53.360336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875793, 40.768986, 52.962547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524727, 40.613350, 52.850609>,  <40.314087, 40.519970, 52.783447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524727, 40.613350, 52.850609>,  <40.875793, 40.768986, 52.962547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524727, 40.613350, 52.850609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330282, -0.067914, -0.941436,
		0.347294, -0.918695, 0.188113,
		-0.877668, -0.389085, -0.279842,
		40.261425, 40.496624, 52.766655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089478, 40.270267, 52.526928>,  <40.875793, 40.768986, 52.962547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089478, 40.270267, 52.526928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706932, 40.349495, 52.441006>,  <40.477406, 40.397030, 52.389454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706932, 40.349495, 52.441006>,  <41.089478, 40.270267, 52.526928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706932, 40.349495, 52.441006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241644, 0.122868, -0.962555,
		-0.164255, -0.972458, -0.165368,
		-0.956362, 0.198065, -0.214807,
		40.420025, 40.408913, 52.376564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943787, 39.876064, 51.999279>,  <41.089478, 40.270267, 52.526928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943787, 39.876064, 51.999279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684189, 40.179649, 51.978188>,  <40.528431, 40.361801, 51.965534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684189, 40.179649, 51.978188>,  <40.943787, 39.876064, 51.999279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684189, 40.179649, 51.978188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305156, 0.196200, -0.931872,
		-0.696912, -0.620870, -0.358935,
		-0.648994, 0.758964, -0.052728,
		40.489491, 40.407337, 51.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600685, 39.746933, 51.367661>,  <40.943787, 39.876064, 51.999279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600685, 39.746933, 51.367661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519348, 40.127441, 51.460381>,  <40.470547, 40.355747, 51.516010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519348, 40.127441, 51.460381>,  <40.600685, 39.746933, 51.367661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519348, 40.127441, 51.460381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200816, 0.272231, -0.941044,
		-0.958293, -0.144802, -0.246387,
		-0.203339, 0.951274, 0.231798,
		40.458347, 40.412823, 51.529919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168079, 39.918648, 50.773571>,  <40.600685, 39.746933, 51.367661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168079, 39.918648, 50.773571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287880, 40.264275, 50.935402>,  <40.359760, 40.471653, 51.032501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287880, 40.264275, 50.935402>,  <40.168079, 39.918648, 50.773571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287880, 40.264275, 50.935402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230557, 0.345930, -0.909492,
		-0.925820, 0.365671, -0.095611,
		0.299500, 0.864070, 0.404577,
		40.377731, 40.523495, 51.056774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842110, 40.514400, 50.398598>,  <40.168079, 39.918648, 50.773571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842110, 40.514400, 50.398598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165047, 40.655228, 50.588013>,  <40.358810, 40.739723, 50.701664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165047, 40.655228, 50.588013>,  <39.842110, 40.514400, 50.398598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165047, 40.655228, 50.588013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343945, 0.371312, -0.862456,
		-0.479474, 0.859172, 0.178685,
		0.807346, 0.352067, 0.473542,
		40.407249, 40.760849, 50.730076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979004, 41.117493, 50.076988>,  <39.842110, 40.514400, 50.398598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979004, 41.117493, 50.076988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332748, 41.037041, 50.245487>,  <40.544994, 40.988770, 50.346584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332748, 41.037041, 50.245487>,  <39.979004, 41.117493, 50.076988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332748, 41.037041, 50.245487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465347, 0.308832, -0.829503,
		0.036744, 0.929608, 0.366714,
		0.884365, -0.201128, 0.421243,
		40.598057, 40.976704, 50.371861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.310318, 45.742802, 46.853054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564735, 45.500443, 47.044189>,  <41.717388, 45.355026, 47.158871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564735, 45.500443, 47.044189>,  <41.310318, 45.742802, 46.853054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564735, 45.500443, 47.044189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766089, 0.421602, -0.485139,
		0.092484, 0.674641, 0.732329,
		0.636046, -0.605897, 0.477843,
		41.755550, 45.318672, 47.187542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972900, 46.164516, 47.054287>,  <41.310318, 45.742802, 46.853054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972900, 46.164516, 47.054287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.094589, 45.783943, 47.073154>,  <42.167603, 45.555599, 47.084476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.094589, 45.783943, 47.073154>,  <41.972900, 46.164516, 47.054287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094589, 45.783943, 47.073154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808417, 0.231668, -0.541103,
		0.503894, 0.202751, 0.839632,
		0.304225, -0.951431, 0.047172,
		42.185856, 45.498512, 47.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765736, 46.198864, 47.157974>,  <41.972900, 46.164516, 47.054287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765736, 46.198864, 47.157974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695114, 45.822220, 47.043289>,  <42.652740, 45.596233, 46.974480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695114, 45.822220, 47.043289>,  <42.765736, 46.198864, 47.157974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695114, 45.822220, 47.043289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864957, -0.009401, -0.501757,
		0.469764, -0.336577, 0.816111,
		-0.176552, -0.941609, -0.286708,
		42.642147, 45.539738, 46.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284935, 45.903767, 47.387634>,  <42.765736, 46.198864, 47.157974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284935, 45.903767, 47.387634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158104, 45.674026, 47.085751>,  <43.082005, 45.536182, 46.904621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158104, 45.674026, 47.085751>,  <43.284935, 45.903767, 47.387634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158104, 45.674026, 47.085751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907497, 0.047434, -0.417373,
		0.275516, -0.817236, 0.506178,
		-0.317082, -0.574347, -0.754708,
		43.062981, 45.501720, 46.859337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837566, 45.430237, 47.285007>,  <43.284935, 45.903767, 47.387634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837566, 45.430237, 47.285007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.620163, 45.439827, 46.949383>,  <43.489719, 45.445583, 46.748009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.620163, 45.439827, 46.949383>,  <43.837566, 45.430237, 47.285007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620163, 45.439827, 46.949383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838452, 0.063074, -0.541313,
		0.039941, -0.997721, -0.054390,
		-0.543510, 0.023983, -0.839060,
		43.457111, 45.447021, 46.697666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116268, 44.861607, 46.869759>,  <43.837566, 45.430237, 47.285007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116268, 44.861607, 46.869759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937412, 45.139847, 46.644829>,  <43.830097, 45.306789, 46.509872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937412, 45.139847, 46.644829>,  <44.116268, 44.861607, 46.869759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937412, 45.139847, 46.644829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823735, 0.075218, -0.561963,
		-0.348602, -0.714485, -0.606620,
		-0.447143, 0.695596, -0.562325,
		43.803268, 45.348526, 46.476131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415287, 44.617607, 46.225933>,  <44.116268, 44.861607, 46.869759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415287, 44.617607, 46.225933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254219, 44.974998, 46.146381>,  <44.157578, 45.189434, 46.098648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254219, 44.974998, 46.146381>,  <44.415287, 44.617607, 46.225933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254219, 44.974998, 46.146381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711141, 0.168565, -0.682543,
		-0.576312, -0.416273, -0.703265,
		-0.402670, 0.893478, -0.198882,
		44.133419, 45.243042, 46.086716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443253, 44.731762, 45.539547>,  <44.415287, 44.617607, 46.225933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443253, 44.731762, 45.539547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409370, 45.098526, 45.695549>,  <44.389042, 45.318584, 45.789150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409370, 45.098526, 45.695549>,  <44.443253, 44.731762, 45.539547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409370, 45.098526, 45.695549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729209, 0.323784, -0.602842,
		-0.679028, 0.233333, -0.696043,
		-0.084705, 0.916908, 0.390007,
		44.383961, 45.373600, 45.812550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339031, 45.059700, 44.967838>,  <44.443253, 44.731762, 45.539547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339031, 45.059700, 44.967838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468025, 45.312988, 45.249275>,  <44.545422, 45.464962, 45.418137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468025, 45.312988, 45.249275>,  <44.339031, 45.059700, 44.967838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468025, 45.312988, 45.249275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749944, 0.282626, -0.598086,
		-0.577572, 0.720525, -0.383737,
		0.322481, 0.633219, 0.703590,
		44.564770, 45.502953, 45.460354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566986, 45.576702, 44.651150>,  <44.339031, 45.059700, 44.967838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566986, 45.576702, 44.651150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763031, 45.666191, 44.988136>,  <44.880657, 45.719883, 45.190327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763031, 45.666191, 44.988136>,  <44.566986, 45.576702, 44.651150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763031, 45.666191, 44.988136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784652, 0.307696, -0.538187,
		-0.379624, 0.924810, -0.024736,
		0.490109, 0.223718, 0.842463,
		44.910065, 45.733307, 45.240875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896320, 46.107594, 44.509262>,  <44.566986, 45.576702, 44.651150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896320, 46.107594, 44.509262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091751, 45.935066, 44.812645>,  <45.209011, 45.831551, 44.994675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091751, 45.935066, 44.812645>,  <44.896320, 46.107594, 44.509262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091751, 45.935066, 44.812645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871829, 0.206775, -0.444026,
		0.034689, 0.878183, 0.477064,
		0.488581, -0.431321, 0.758453,
		45.238327, 45.805672, 45.040180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508560, 46.580517, 44.688953>,  <44.896320, 46.107594, 44.509262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508560, 46.580517, 44.688953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557213, 46.197708, 44.794266>,  <45.586407, 45.968021, 44.857452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557213, 46.197708, 44.794266>,  <45.508560, 46.580517, 44.688953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557213, 46.197708, 44.794266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916082, 0.006130, -0.400945,
		0.382099, 0.289952, 0.877456,
		0.121634, -0.957022, 0.263277,
		45.593704, 45.910603, 44.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048550, 46.466206, 45.091694>,  <45.508560, 46.580517, 44.688953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048550, 46.466206, 45.091694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027687, 46.156639, 44.839241>,  <46.015171, 45.970898, 44.687767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027687, 46.156639, 44.839241>,  <46.048550, 46.466206, 45.091694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027687, 46.156639, 44.839241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876281, 0.267654, -0.400615,
		0.478969, -0.573945, 0.664210,
		-0.052153, -0.773917, -0.631136,
		46.012043, 45.924465, 44.649899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701916, 46.353706, 44.815140>,  <46.048550, 46.466206, 45.091694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701916, 46.353706, 44.815140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.494469, 46.101761, 44.583862>,  <46.369999, 45.950592, 44.445095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.494469, 46.101761, 44.583862>,  <46.701916, 46.353706, 44.815140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494469, 46.101761, 44.583862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651644, 0.146619, -0.744219,
		0.553531, -0.762742, 0.334408,
		-0.518617, -0.629864, -0.578194,
		46.338882, 45.912800, 44.410404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233959, 46.657204, 44.495350>,  <46.701916, 46.353706, 44.815140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233959, 46.657204, 44.495350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.417778, 46.958771, 44.683144>,  <47.528069, 47.139713, 44.795822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.417778, 46.958771, 44.683144>,  <47.233959, 46.657204, 44.495350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417778, 46.958771, 44.683144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549379, -0.174051, 0.817245,
		0.697851, -0.633492, 0.334203,
		0.459549, 0.753919, 0.469489,
		47.555641, 47.184948, 44.823990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.481987, 46.360046, 45.095779>,  <47.233959, 46.657204, 44.495350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.481987, 46.360046, 45.095779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.485710, 46.748001, 45.193138>,  <47.487942, 46.980774, 45.251553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.485710, 46.748001, 45.193138>,  <47.481987, 46.360046, 45.095779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.485710, 46.748001, 45.193138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415495, -0.217650, 0.883172,
		0.909548, -0.109349, 0.400956,
		0.009306, 0.969882, 0.243397,
		47.488503, 47.038967, 45.266155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896019, 46.421604, 45.669174>,  <47.481987, 46.360046, 45.095779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896019, 46.421604, 45.669174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.644897, 46.732765, 45.680016>,  <47.494225, 46.919460, 45.686520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.644897, 46.732765, 45.680016>,  <47.896019, 46.421604, 45.669174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.644897, 46.732765, 45.680016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378810, -0.335770, 0.862417,
		0.679977, 0.531157, 0.505473,
		-0.627801, 0.777901, 0.027108,
		47.456558, 46.966137, 45.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.833565, 46.528099, 46.319378>,  <47.896019, 46.421604, 45.669174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.833565, 46.528099, 46.319378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.523033, 46.770157, 46.248810>,  <47.336716, 46.915390, 46.206470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.523033, 46.770157, 46.248810>,  <47.833565, 46.528099, 46.319378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523033, 46.770157, 46.248810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424452, -0.294955, 0.856062,
		0.466003, 0.739464, 0.485834,
		-0.776326, 0.605140, -0.176417,
		47.290134, 46.951698, 46.195885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784058, 46.891907, 46.927879>,  <47.833565, 46.528099, 46.319378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784058, 46.891907, 46.927879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.436264, 46.878471, 46.730747>,  <47.227589, 46.870411, 46.612469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.436264, 46.878471, 46.730747>,  <47.784058, 46.891907, 46.927879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436264, 46.878471, 46.730747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488037, -0.095740, 0.867556,
		-0.076324, 0.994840, 0.066850,
		-0.869479, -0.033590, -0.492826,
		47.175419, 46.868393, 46.582901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360817, 47.215569, 47.404560>,  <47.784058, 46.891907, 46.927879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360817, 47.215569, 47.404560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.106789, 47.041191, 47.149487>,  <46.954372, 46.936565, 46.996441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.106789, 47.041191, 47.149487>,  <47.360817, 47.215569, 47.404560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.106789, 47.041191, 47.149487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649919, -0.144624, 0.746117,
		-0.417488, 0.888278, -0.191481,
		-0.635067, -0.435942, -0.637687,
		46.916267, 46.910408, 46.958179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.820507, 47.556389, 47.518475>,  <47.360817, 47.215569, 47.404560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.820507, 47.556389, 47.518475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.692505, 47.220955, 47.342121>,  <46.615704, 47.019695, 47.236309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.692505, 47.220955, 47.342121>,  <46.820507, 47.556389, 47.518475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692505, 47.220955, 47.342121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711896, -0.094226, 0.695935,
		-0.625141, 0.536566, -0.566830,
		-0.320004, -0.838581, -0.440884,
		46.596504, 46.969379, 47.209858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102772, 47.532890, 47.631435>,  <46.820507, 47.556389, 47.518475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102772, 47.532890, 47.631435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.185493, 47.149971, 47.550617>,  <46.235126, 46.920219, 47.502125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.185493, 47.149971, 47.550617>,  <46.102772, 47.532890, 47.631435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.185493, 47.149971, 47.550617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615058, -0.287802, 0.734081,
		-0.760880, -0.027539, -0.648308,
		0.206800, -0.957294, -0.202045,
		46.247532, 46.862782, 47.490005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556026, 47.118687, 47.772266>,  <46.102772, 47.532890, 47.631435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556026, 47.118687, 47.772266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.819588, 46.817810, 47.775539>,  <45.977722, 46.637283, 47.777504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.819588, 46.817810, 47.775539>,  <45.556026, 47.118687, 47.772266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819588, 46.817810, 47.775539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431016, -0.368599, 0.823626,
		-0.616505, -0.546214, -0.567074,
		0.658898, -0.752187, 0.008184,
		46.017258, 46.592155, 47.777996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184555, 46.515594, 47.818428>,  <45.556026, 47.118687, 47.772266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184555, 46.515594, 47.818428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547668, 46.422638, 47.958099>,  <45.765537, 46.366863, 48.041901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547668, 46.422638, 47.958099>,  <45.184555, 46.515594, 47.818428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547668, 46.422638, 47.958099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416679, -0.404326, 0.814186,
		-0.048026, -0.884600, -0.463872,
		0.907784, -0.232388, 0.349176,
		45.820004, 46.352921, 48.062851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081024, 45.953419, 48.176472>,  <45.184555, 46.515594, 47.818428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081024, 45.953419, 48.176472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433144, 46.033142, 48.348679>,  <45.644417, 46.080978, 48.452003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433144, 46.033142, 48.348679>,  <45.081024, 45.953419, 48.176472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433144, 46.033142, 48.348679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369600, -0.280820, 0.885740,
		0.297439, -0.938837, -0.173540,
		0.880299, 0.199313, 0.430521,
		45.697235, 46.092937, 48.477837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230312, 45.407768, 48.481380>,  <45.081024, 45.953419, 48.176472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230312, 45.407768, 48.481380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469681, 45.656624, 48.683304>,  <45.613300, 45.805939, 48.804459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469681, 45.656624, 48.683304>,  <45.230312, 45.407768, 48.481380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469681, 45.656624, 48.683304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273825, -0.433319, 0.858635,
		0.752935, -0.652056, -0.088950,
		0.598422, 0.622140, 0.504810,
		45.649208, 45.843266, 48.834747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577389, 45.057255, 48.958786>,  <45.230312, 45.407768, 48.481380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577389, 45.057255, 48.958786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614449, 45.424156, 49.113735>,  <45.636684, 45.644299, 49.206703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614449, 45.424156, 49.113735>,  <45.577389, 45.057255, 48.958786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614449, 45.424156, 49.113735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455049, -0.307033, 0.835859,
		0.885633, -0.253714, 0.388951,
		0.092648, 0.917257, 0.387371,
		45.642242, 45.699333, 49.229946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941822, 44.928230, 49.610416>,  <45.577389, 45.057255, 48.958786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941822, 44.928230, 49.610416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733147, 45.269150, 49.625534>,  <45.607941, 45.473701, 49.634605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733147, 45.269150, 49.625534>,  <45.941822, 44.928230, 49.610416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733147, 45.269150, 49.625534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474889, -0.326907, 0.817076,
		0.708746, 0.408314, 0.575290,
		-0.521690, 0.852298, 0.037790,
		45.576641, 45.524837, 49.636871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511154, 45.116833, 49.892475>,  <45.941822, 44.928230, 49.610416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511154, 45.116833, 49.892475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802780, 44.863518, 49.996330>,  <46.977757, 44.711529, 50.058643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802780, 44.863518, 49.996330>,  <46.511154, 45.116833, 49.892475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802780, 44.863518, 49.996330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275281, -0.076004, -0.958355,
		0.626650, 0.770173, 0.118921,
		0.729061, -0.633290, 0.259642,
		47.021500, 44.673531, 50.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064438, 45.318527, 49.462654>,  <46.511154, 45.116833, 49.892475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064438, 45.318527, 49.462654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.144775, 44.945534, 49.582741>,  <47.192978, 44.721737, 49.654793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.144775, 44.945534, 49.582741>,  <47.064438, 45.318527, 49.462654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144775, 44.945534, 49.582741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387495, -0.205844, -0.898597,
		0.899728, 0.296810, 0.319991,
		0.200844, -0.932487, 0.300216,
		47.205029, 44.665787, 49.672806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.722874, 45.143909, 49.177074>,  <47.064438, 45.318527, 49.462654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.722874, 45.143909, 49.177074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.609840, 44.776802, 49.288685>,  <47.542023, 44.556538, 49.355652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.609840, 44.776802, 49.288685>,  <47.722874, 45.143909, 49.177074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609840, 44.776802, 49.288685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549779, -0.393322, -0.736913,
		0.786061, -0.054834, 0.615713,
		-0.282581, -0.917764, 0.279028,
		47.525066, 44.501472, 49.372395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.378120, 44.624290, 49.248001>,  <47.722874, 45.143909, 49.177074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.378120, 44.624290, 49.248001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.045280, 44.414154, 49.176865>,  <47.845577, 44.288074, 49.134182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.045280, 44.414154, 49.176865>,  <48.378120, 44.624290, 49.248001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.045280, 44.414154, 49.176865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455454, -0.464261, -0.759621,
		0.316494, -0.713079, 0.625579,
		-0.832102, -0.525338, -0.177839,
		47.795650, 44.256554, 49.123512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.646114, 44.072613, 49.059586>,  <48.378120, 44.624290, 49.248001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.646114, 44.072613, 49.059586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.268219, 44.031929, 48.934933>,  <48.041481, 44.007519, 48.860142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.268219, 44.031929, 48.934933>,  <48.646114, 44.072613, 49.059586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.268219, 44.031929, 48.934933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318476, -0.510041, -0.799019,
		-0.077683, -0.854116, 0.514249,
		-0.944743, -0.101706, -0.311637,
		47.984795, 44.001419, 48.841442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.576000, 43.377522, 48.951118>,  <48.646114, 44.072613, 49.059586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.576000, 43.377522, 48.951118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.295059, 43.545372, 48.721123>,  <48.126495, 43.646080, 48.583126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.295059, 43.545372, 48.721123>,  <48.576000, 43.377522, 48.951118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.295059, 43.545372, 48.721123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298750, -0.559414, -0.773179,
		-0.646104, -0.714822, 0.267542,
		-0.702352, 0.419626, -0.574992,
		48.084354, 43.671261, 48.548626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.448807, 42.877254, 48.387444>,  <48.576000, 43.377522, 48.951118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.448807, 42.877254, 48.387444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.240059, 43.176292, 48.223122>,  <48.114811, 43.355713, 48.124527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.240059, 43.176292, 48.223122>,  <48.448807, 42.877254, 48.387444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.240059, 43.176292, 48.223122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279081, -0.305446, -0.910394,
		-0.806080, -0.589755, -0.049234,
		-0.521871, 0.747591, -0.410803,
		48.083496, 43.400570, 48.099880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.173080, 42.592449, 47.768566>,  <48.448807, 42.877254, 48.387444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.173080, 42.592449, 47.768566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.138954, 42.987457, 47.715622>,  <48.118477, 43.224464, 47.683857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.138954, 42.987457, 47.715622>,  <48.173080, 42.592449, 47.768566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.138954, 42.987457, 47.715622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113447, -0.122354, -0.985981,
		-0.989874, -0.099135, -0.101593,
		-0.085315, 0.987523, -0.132362,
		48.113361, 43.283714, 47.675915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711048, 42.641273, 47.277725>,  <48.173080, 42.592449, 47.768566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711048, 42.641273, 47.277725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.891769, 42.997215, 47.252312>,  <48.000202, 43.210781, 47.237064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.891769, 42.997215, 47.252312>,  <47.711048, 42.641273, 47.277725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.891769, 42.997215, 47.252312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046282, -0.094506, -0.994448,
		-0.890915, 0.446356, -0.083883,
		0.451806, 0.889851, -0.063538,
		48.027309, 43.264172, 47.233250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391708, 42.941032, 46.791206>,  <47.711048, 42.641273, 47.277725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391708, 42.941032, 46.791206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.743462, 43.131004, 46.804646>,  <47.954514, 43.244987, 46.812710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.743462, 43.131004, 46.804646>,  <47.391708, 42.941032, 46.791206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743462, 43.131004, 46.804646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092100, -0.100456, -0.990670,
		-0.467123, 0.874272, -0.132080,
		0.879383, 0.474929, 0.033595,
		48.007275, 43.273483, 46.814724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.340408, 43.479351, 46.341747>,  <47.391708, 42.941032, 46.791206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.340408, 43.479351, 46.341747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.737564, 43.440315, 46.369041>,  <47.975857, 43.416893, 46.385418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.737564, 43.440315, 46.369041>,  <47.340408, 43.479351, 46.341747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.737564, 43.440315, 46.369041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077152, 0.090703, -0.992885,
		0.090703, 0.991085, 0.097587,
		0.992885, -0.097587, 0.068237,
		48.035431, 43.411037, 46.389511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598763, 44.083607, 45.902355>,  <47.340408, 43.479351, 46.341747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.598763, 44.083607, 45.902355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.876579, 43.799232, 45.946503>,  <48.043270, 43.628609, 45.972992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.876579, 43.799232, 45.946503>,  <47.598763, 44.083607, 45.902355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.876579, 43.799232, 45.946503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164782, 0.007868, -0.986299,
		0.700323, 0.703217, 0.122614,
		0.694546, -0.710932, 0.110367,
		48.084942, 43.585953, 45.979614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.975163, 44.683807, 53.012287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244202, 44.410744, 53.126537>,  <45.405624, 44.246906, 53.195087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244202, 44.410744, 53.126537>,  <44.975163, 44.683807, 53.012287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244202, 44.410744, 53.126537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642212, 0.346704, -0.683637,
		0.367665, 0.643247, 0.671607,
		0.672597, -0.682663, 0.285630,
		45.445980, 44.205944, 53.212227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585430, 45.085361, 53.243938>,  <44.975163, 44.683807, 53.012287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585430, 45.085361, 53.243938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709579, 44.715012, 53.157753>,  <45.784069, 44.492802, 53.106041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709579, 44.715012, 53.157753>,  <45.585430, 45.085361, 53.243938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709579, 44.715012, 53.157753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749287, 0.377761, -0.543935,
		0.585008, 0.007383, 0.810994,
		0.310378, -0.925874, -0.215461,
		45.802692, 44.437248, 53.093113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353668, 45.031670, 53.390301>,  <45.585430, 45.085361, 53.243938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353668, 45.031670, 53.390301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244179, 44.740196, 53.139191>,  <46.178486, 44.565311, 52.988525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244179, 44.740196, 53.139191>,  <46.353668, 45.031670, 53.390301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244179, 44.740196, 53.139191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724517, 0.273060, -0.632861,
		0.632573, -0.628063, 0.453198,
		-0.273726, -0.728680, -0.627773,
		46.162060, 44.521591, 52.950859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010857, 44.656757, 53.174267>,  <46.353668, 45.031670, 53.390301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010857, 44.656757, 53.174267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753151, 44.566971, 52.881821>,  <46.598526, 44.513100, 52.706352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753151, 44.566971, 52.881821>,  <47.010857, 44.656757, 53.174267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753151, 44.566971, 52.881821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733448, 0.089576, -0.673818,
		0.216743, -0.970355, 0.106927,
		-0.644264, -0.224471, -0.731119,
		46.559872, 44.499630, 52.662483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.419640, 44.135555, 52.632877>,  <47.010857, 44.656757, 53.174267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.419640, 44.135555, 52.632877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088280, 44.270775, 52.454224>,  <46.889465, 44.351906, 52.347031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088280, 44.270775, 52.454224>,  <47.419640, 44.135555, 52.632877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088280, 44.270775, 52.454224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502356, 0.095652, -0.859354,
		-0.247787, -0.936253, -0.249062,
		-0.828396, 0.338054, -0.446631,
		46.839760, 44.372192, 52.320236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272457, 43.677769, 52.006184>,  <47.419640, 44.135555, 52.632877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272457, 43.677769, 52.006184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094460, 44.025131, 51.918678>,  <46.987659, 44.233547, 51.866177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094460, 44.025131, 51.918678>,  <47.272457, 43.677769, 52.006184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.094460, 44.025131, 51.918678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289383, -0.091735, -0.952807,
		-0.847488, -0.487301, -0.210479,
		-0.444996, 0.868402, -0.218761,
		46.960960, 44.285652, 51.853050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730812, 43.574493, 51.509808>,  <47.272457, 43.677769, 52.006184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730812, 43.574493, 51.509808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854309, 43.954514, 51.491535>,  <46.928406, 44.182526, 51.480572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854309, 43.954514, 51.491535>,  <46.730812, 43.574493, 51.509808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854309, 43.954514, 51.491535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234964, -0.122722, -0.964226,
		-0.921667, 0.286965, -0.261117,
		0.308744, 0.950048, -0.045683,
		46.946934, 44.239529, 51.477829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514992, 43.714958, 50.775906>,  <46.730812, 43.574493, 51.509808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514992, 43.714958, 50.775906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726830, 44.039711, 50.874191>,  <46.853931, 44.234562, 50.933163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726830, 44.039711, 50.874191>,  <46.514992, 43.714958, 50.775906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726830, 44.039711, 50.874191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173400, 0.179940, -0.968274,
		-0.830338, 0.555401, -0.045485,
		0.529596, 0.811882, 0.245717,
		46.885708, 44.283276, 50.947906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222992, 44.316113, 50.351814>,  <46.514992, 43.714958, 50.775906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222992, 44.316113, 50.351814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598824, 44.400093, 50.459972>,  <46.824322, 44.450481, 50.524868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598824, 44.400093, 50.459972>,  <46.222992, 44.316113, 50.351814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598824, 44.400093, 50.459972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261560, 0.069293, -0.962697,
		-0.220853, 0.975254, 0.010192,
		0.939580, 0.209949, 0.270391,
		46.880699, 44.463078, 50.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965405, 45.066700, 50.396927>,  <46.222992, 44.316113, 50.351814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965405, 45.066700, 50.396927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699905, 45.318649, 50.235580>,  <45.540607, 45.469818, 50.138771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699905, 45.318649, 50.235580>,  <45.965405, 45.066700, 50.396927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699905, 45.318649, 50.235580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629717, -0.179577, 0.755783,
		0.403609, 0.755656, 0.515834,
		-0.663743, 0.629870, -0.403370,
		45.500782, 45.507610, 50.114571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704113, 45.452866, 50.943737>,  <45.965405, 45.066700, 50.396927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704113, 45.452866, 50.943737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433197, 45.435478, 50.649963>,  <45.270645, 45.425045, 50.473701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433197, 45.435478, 50.649963>,  <45.704113, 45.452866, 50.943737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433197, 45.435478, 50.649963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709624, -0.224895, 0.667725,
		-0.194192, 0.973413, 0.121476,
		-0.677292, -0.043464, -0.734430,
		45.230011, 45.422440, 50.429634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195721, 45.848068, 51.226295>,  <45.704113, 45.452866, 50.943737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195721, 45.848068, 51.226295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046387, 45.626305, 50.928772>,  <44.956787, 45.493244, 50.750259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046387, 45.626305, 50.928772>,  <45.195721, 45.848068, 51.226295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046387, 45.626305, 50.928772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748075, -0.294253, 0.594810,
		-0.548638, 0.778486, -0.304888,
		-0.373337, -0.554414, -0.743804,
		44.934387, 45.459980, 50.705631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451057, 45.903385, 51.390675>,  <45.195721, 45.848068, 51.226295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451057, 45.903385, 51.390675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470268, 45.620644, 51.108383>,  <44.481796, 45.451000, 50.939007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470268, 45.620644, 51.108383>,  <44.451057, 45.903385, 51.390675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470268, 45.620644, 51.108383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522343, -0.620009, 0.585446,
		-0.851382, 0.340514, -0.398998,
		0.048030, -0.706852, -0.705729,
		44.484676, 45.408588, 50.896664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710129, 45.697292, 51.176907>,  <44.451057, 45.903385, 51.390675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710129, 45.697292, 51.176907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964359, 45.392563, 51.126839>,  <44.116898, 45.209724, 51.096798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964359, 45.392563, 51.126839>,  <43.710129, 45.697292, 51.176907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964359, 45.392563, 51.126839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624525, -0.602648, 0.496772,
		-0.453890, -0.237560, -0.858806,
		0.635572, -0.761827, -0.125174,
		44.155029, 45.164017, 51.089287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292702, 45.139149, 50.893929>,  <43.710129, 45.697292, 51.176907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292702, 45.139149, 50.893929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616283, 44.972878, 51.060204>,  <43.810432, 44.873116, 51.159969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616283, 44.972878, 51.060204>,  <43.292702, 45.139149, 50.893929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616283, 44.972878, 51.060204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584363, -0.645690, 0.491532,
		0.064085, -0.640541, -0.765245,
		0.808958, -0.415681, 0.415688,
		43.858971, 44.848171, 51.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276859, 44.386227, 50.816502>,  <43.292702, 45.139149, 50.893929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276859, 44.386227, 50.816502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501846, 44.447289, 51.141544>,  <43.636837, 44.483925, 51.336571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501846, 44.447289, 51.141544>,  <43.276859, 44.386227, 50.816502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501846, 44.447289, 51.141544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600751, -0.599817, 0.528506,
		0.568093, -0.785441, -0.245670,
		0.562467, 0.152654, 0.812605,
		43.670586, 44.493084, 51.385326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217106, 43.759792, 51.131321>,  <43.276859, 44.386227, 50.816502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217106, 43.759792, 51.131321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386501, 43.986839, 51.413731>,  <43.488140, 44.123066, 51.583176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386501, 43.986839, 51.413731>,  <43.217106, 43.759792, 51.131321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386501, 43.986839, 51.413731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464020, -0.533440, 0.707197,
		0.778036, -0.627101, 0.037476,
		0.423493, 0.567614, 0.706022,
		43.513550, 44.157124, 51.625538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233810, 43.308083, 51.677753>,  <43.217106, 43.759792, 51.131321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233810, 43.308083, 51.677753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294586, 43.669334, 51.838390>,  <43.331051, 43.886086, 51.934772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294586, 43.669334, 51.838390>,  <43.233810, 43.308083, 51.677753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294586, 43.669334, 51.838390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440570, -0.301828, 0.845457,
		0.884767, -0.305385, 0.352032,
		0.151937, 0.903127, 0.401591,
		43.340168, 43.940273, 51.958866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470150, 43.127018, 52.478992>,  <43.233810, 43.308083, 51.677753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470150, 43.127018, 52.478992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338905, 43.502533, 52.437019>,  <43.260159, 43.727844, 52.411835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338905, 43.502533, 52.437019>,  <43.470150, 43.127018, 52.478992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338905, 43.502533, 52.437019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683505, -0.159263, 0.712359,
		0.652044, 0.305459, 0.693926,
		-0.328114, 0.938791, -0.104936,
		43.240471, 43.784172, 52.405537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395676, 43.381989, 53.212276>,  <43.470150, 43.127018, 52.478992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395676, 43.381989, 53.212276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185310, 43.645416, 52.996979>,  <43.059093, 43.803474, 52.867802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185310, 43.645416, 52.996979>,  <43.395676, 43.381989, 53.212276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185310, 43.645416, 52.996979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711963, 0.005350, 0.702197,
		0.465327, 0.752498, 0.466065,
		-0.525909, 0.658572, -0.538240,
		43.027538, 43.842987, 52.835506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201363, 43.856564, 53.640434>,  <43.395676, 43.381989, 53.212276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201363, 43.856564, 53.640434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947319, 43.911331, 53.336357>,  <42.794891, 43.944191, 53.153912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947319, 43.911331, 53.336357>,  <43.201363, 43.856564, 53.640434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947319, 43.911331, 53.336357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765792, 0.017065, 0.642862,
		0.100992, 0.990435, 0.094013,
		-0.635109, 0.136918, -0.760191,
		42.756786, 43.952408, 53.108299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779594, 44.380863, 53.875050>,  <43.201363, 43.856564, 53.640434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779594, 44.380863, 53.875050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573154, 44.175858, 53.600540>,  <42.449291, 44.052856, 53.435833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573154, 44.175858, 53.600540>,  <42.779594, 44.380863, 53.875050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573154, 44.175858, 53.600540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761266, -0.092764, 0.641770,
		-0.392575, 0.853656, -0.342281,
		-0.516100, -0.512510, -0.686276,
		42.418324, 44.022106, 53.394657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063316, 44.747364, 53.894588>,  <42.779594, 44.380863, 53.875050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063316, 44.747364, 53.894588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057747, 44.383270, 53.729050>,  <42.054405, 44.164814, 53.629726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057747, 44.383270, 53.729050>,  <42.063316, 44.747364, 53.894588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057747, 44.383270, 53.729050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846557, -0.209526, 0.489325,
		-0.532115, 0.357163, -0.767651,
		-0.013926, -0.910238, -0.413851,
		42.053570, 44.110199, 53.604893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.158401, 38.324837, 52.314598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.340599, 38.647888, 52.464401>,  <42.449917, 38.841721, 52.554283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.340599, 38.647888, 52.464401>,  <42.158401, 38.324837, 52.314598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340599, 38.647888, 52.464401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430833, 0.168157, -0.886626,
		-0.779045, 0.565201, -0.271361,
		0.455490, 0.807633, 0.374510,
		42.477245, 38.890179, 52.576756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146729, 38.754223, 51.711872>,  <42.158401, 38.324837, 52.314598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146729, 38.754223, 51.711872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.405136, 38.920486, 51.967960>,  <42.560181, 39.020245, 52.121613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.405136, 38.920486, 51.967960>,  <42.146729, 38.754223, 51.711872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405136, 38.920486, 51.967960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522801, 0.370184, -0.767882,
		-0.556178, 0.830776, 0.021839,
		0.646022, 0.415662, 0.640219,
		42.598942, 39.045185, 52.160027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221424, 39.426186, 51.486973>,  <42.146729, 38.754223, 51.711872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221424, 39.426186, 51.486973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542652, 39.373055, 51.719330>,  <42.735390, 39.341175, 51.858746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542652, 39.373055, 51.719330>,  <42.221424, 39.426186, 51.486973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542652, 39.373055, 51.719330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585619, 0.356141, -0.728158,
		-0.110159, 0.924943, 0.363794,
		0.803066, -0.132832, 0.580896,
		42.783573, 39.333206, 51.893600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544193, 39.969624, 51.496208>,  <42.221424, 39.426186, 51.486973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544193, 39.969624, 51.496208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855721, 39.734520, 51.583824>,  <43.042637, 39.593460, 51.636395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855721, 39.734520, 51.583824>,  <42.544193, 39.969624, 51.496208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855721, 39.734520, 51.583824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520713, 0.411144, -0.748210,
		0.349705, 0.696782, 0.626260,
		0.778822, -0.587755, 0.219044,
		43.089367, 39.558193, 51.649536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156982, 40.399532, 51.615234>,  <42.544193, 39.969624, 51.496208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156982, 40.399532, 51.615234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.306732, 40.043861, 51.509998>,  <43.396584, 39.830460, 51.446857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.306732, 40.043861, 51.509998>,  <43.156982, 40.399532, 51.615234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306732, 40.043861, 51.509998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551792, 0.441643, -0.707443,
		0.745230, 0.119680, 0.655979,
		0.374375, -0.889172, -0.263088,
		43.419044, 39.777111, 51.431072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894985, 40.510990, 51.659554>,  <43.156982, 40.399532, 51.615234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894985, 40.510990, 51.659554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.860012, 40.185486, 51.429718>,  <43.839027, 39.990185, 51.291817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.860012, 40.185486, 51.429718>,  <43.894985, 40.510990, 51.659554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860012, 40.185486, 51.429718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629857, 0.401708, -0.664764,
		0.771775, -0.420027, 0.477432,
		-0.087430, -0.813762, -0.574585,
		43.833782, 39.941357, 51.257343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510906, 40.493435, 51.274261>,  <43.894985, 40.510990, 51.659554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510906, 40.493435, 51.274261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.285019, 40.226128, 51.080555>,  <44.149487, 40.065742, 50.964333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.285019, 40.226128, 51.080555>,  <44.510906, 40.493435, 51.274261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285019, 40.226128, 51.080555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527979, 0.158450, -0.834345,
		0.634296, -0.726852, 0.263351,
		-0.564718, -0.668266, -0.484267,
		44.115604, 40.025646, 50.935276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003681, 40.028595, 50.856468>,  <44.510906, 40.493435, 51.274261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003681, 40.028595, 50.856468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.642632, 39.983719, 50.690247>,  <44.426003, 39.956795, 50.590515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.642632, 39.983719, 50.690247>,  <45.003681, 40.028595, 50.856468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642632, 39.983719, 50.690247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410966, 0.062409, -0.909512,
		0.127971, -0.991725, -0.010226,
		-0.902624, -0.112189, -0.415551,
		44.371845, 39.950062, 50.565582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088242, 39.599094, 50.334675>,  <45.003681, 40.028595, 50.856468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088242, 39.599094, 50.334675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.730782, 39.729576, 50.211391>,  <44.516308, 39.807865, 50.137421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.730782, 39.729576, 50.211391>,  <45.088242, 39.599094, 50.334675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730782, 39.729576, 50.211391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329905, 0.011927, -0.943939,
		-0.304238, -0.945225, -0.118274,
		-0.893645, 0.326202, -0.308206,
		44.462688, 39.827438, 50.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990269, 39.225216, 49.748734>,  <45.088242, 39.599094, 50.334675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990269, 39.225216, 49.748734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.751686, 39.542992, 49.702950>,  <44.608536, 39.733658, 49.675480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.751686, 39.542992, 49.702950>,  <44.990269, 39.225216, 49.748734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751686, 39.542992, 49.702950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322773, 0.106846, -0.940426,
		-0.734885, -0.597868, -0.320153,
		-0.596458, 0.794442, -0.114456,
		44.572750, 39.781322, 49.668613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618694, 39.186371, 49.054176>,  <44.990269, 39.225216, 49.748734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618694, 39.186371, 49.054176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.597919, 39.571274, 49.161034>,  <44.585453, 39.802216, 49.225147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.597919, 39.571274, 49.161034>,  <44.618694, 39.186371, 49.054176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597919, 39.571274, 49.161034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225279, 0.271903, -0.935584,
		-0.972909, 0.011589, -0.230898,
		-0.051939, 0.962255, 0.267148,
		44.582336, 39.859951, 49.241177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389191, 39.430943, 48.408421>,  <44.618694, 39.186371, 49.054176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389191, 39.430943, 48.408421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.514175, 39.757332, 48.602970>,  <44.589165, 39.953167, 48.719700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.514175, 39.757332, 48.602970>,  <44.389191, 39.430943, 48.408421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514175, 39.757332, 48.602970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348008, 0.378082, -0.857872,
		-0.883889, 0.437310, -0.165830,
		0.312459, 0.815974, 0.486370,
		44.607914, 40.002125, 48.748882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239910, 39.975990, 47.979534>,  <44.389191, 39.430943, 48.408421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239910, 39.975990, 47.979534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.515335, 40.149628, 48.211891>,  <44.680592, 40.253811, 48.351307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.515335, 40.149628, 48.211891>,  <44.239910, 39.975990, 47.979534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515335, 40.149628, 48.211891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494313, 0.305146, -0.813966,
		-0.530599, 0.847611, -0.004468,
		0.688563, 0.434098, 0.580895,
		44.721905, 40.279858, 48.386158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311764, 40.748016, 47.774063>,  <44.239910, 39.975990, 47.979534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311764, 40.748016, 47.774063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.656544, 40.606758, 47.919575>,  <44.863411, 40.522003, 48.006882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.656544, 40.606758, 47.919575>,  <44.311764, 40.748016, 47.774063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656544, 40.606758, 47.919575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496173, 0.440068, -0.748433,
		0.104217, 0.825608, 0.554537,
		0.861946, -0.353146, 0.363782,
		44.915127, 40.500813, 48.028709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918179, 41.374104, 47.676174>,  <44.311764, 40.748016, 47.774063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918179, 41.374104, 47.676174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.582161, 41.408913, 47.461979>,  <43.380550, 41.429798, 47.333462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.582161, 41.408913, 47.461979>,  <43.918179, 41.374104, 47.676174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582161, 41.408913, 47.461979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541676, -0.189426, 0.818966,
		-0.030167, 0.978031, 0.206264,
		-0.840046, 0.087023, -0.535491,
		43.330147, 41.435020, 47.301331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482594, 41.981186, 47.981644>,  <43.918179, 41.374104, 47.676174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482594, 41.981186, 47.981644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.226555, 41.745956, 47.783878>,  <43.072933, 41.604816, 47.665218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.226555, 41.745956, 47.783878>,  <43.482594, 41.981186, 47.981644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226555, 41.745956, 47.783878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570617, -0.067020, 0.818477,
		-0.514462, 0.806024, -0.292667,
		-0.640097, -0.588077, -0.494410,
		43.034527, 41.569534, 47.635555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934391, 42.284752, 48.209740>,  <43.482594, 41.981186, 47.981644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934391, 42.284752, 48.209740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.792812, 41.945816, 48.051376>,  <42.707863, 41.742455, 47.956360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.792812, 41.945816, 48.051376>,  <42.934391, 42.284752, 48.209740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792812, 41.945816, 48.051376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677368, -0.059636, 0.733223,
		-0.644897, 0.527697, -0.552851,
		-0.353950, -0.847337, -0.395904,
		42.686626, 41.691616, 47.932606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282921, 42.327862, 48.220425>,  <42.934391, 42.284752, 48.209740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282921, 42.327862, 48.220425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.311882, 41.931602, 48.174160>,  <42.329258, 41.693848, 48.146400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.311882, 41.931602, 48.174160>,  <42.282921, 42.327862, 48.220425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311882, 41.931602, 48.174160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650531, -0.134811, 0.747419,
		-0.756021, 0.021129, -0.654206,
		0.072402, -0.990646, -0.115665,
		42.333603, 41.634407, 48.139462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562057, 42.107258, 48.208817>,  <42.282921, 42.327862, 48.220425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562057, 42.107258, 48.208817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.779205, 41.787140, 48.310658>,  <41.909492, 41.595070, 48.371761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.779205, 41.787140, 48.310658>,  <41.562057, 42.107258, 48.208817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779205, 41.787140, 48.310658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578118, -0.136212, 0.804503,
		-0.609161, -0.583927, -0.536611,
		0.542864, -0.800297, 0.254604,
		41.942066, 41.547050, 48.387039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080948, 41.596947, 48.340092>,  <41.562057, 42.107258, 48.208817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080948, 41.596947, 48.340092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403370, 41.463715, 48.535778>,  <41.596825, 41.383774, 48.653191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403370, 41.463715, 48.535778>,  <41.080948, 41.596947, 48.340092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403370, 41.463715, 48.535778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565516, -0.189674, 0.802630,
		-0.174531, -0.923631, -0.341239,
		0.806059, -0.333060, 0.489225,
		41.645187, 41.363789, 48.682545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852612, 41.026638, 48.756870>,  <41.080948, 41.596947, 48.340092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852612, 41.026638, 48.756870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.199169, 41.154961, 48.909939>,  <41.407104, 41.231953, 49.001781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.199169, 41.154961, 48.909939>,  <40.852612, 41.026638, 48.756870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199169, 41.154961, 48.909939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314021, -0.245826, 0.917039,
		0.388263, -0.914688, -0.112243,
		0.866396, 0.320806, 0.382676,
		41.459087, 41.251202, 49.024742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142639, 40.403419, 49.064400>,  <40.852612, 41.026638, 48.756870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142639, 40.403419, 49.064400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.273994, 40.743446, 49.229103>,  <41.352810, 40.947464, 49.327923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.273994, 40.743446, 49.229103>,  <41.142639, 40.403419, 49.064400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273994, 40.743446, 49.229103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457897, -0.238007, 0.856553,
		0.826129, -0.469826, 0.311085,
		0.328391, 0.850068, 0.411756,
		41.372513, 40.998466, 49.352631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379692, 40.231819, 49.789680>,  <41.142639, 40.403419, 49.064400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379692, 40.231819, 49.789680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.363960, 40.631447, 49.796741>,  <41.354523, 40.871223, 49.800980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.363960, 40.631447, 49.796741>,  <41.379692, 40.231819, 49.789680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363960, 40.631447, 49.796741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364724, -0.030799, 0.930606,
		0.930285, 0.030160, 0.365597,
		-0.039327, 0.999071, 0.017652,
		41.352161, 40.931168, 49.802036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549809, 40.198540, 50.425095>,  <41.379692, 40.231819, 49.789680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549809, 40.198540, 50.425095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403030, 40.557800, 50.328201>,  <41.314964, 40.773357, 50.270065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403030, 40.557800, 50.328201>,  <41.549809, 40.198540, 50.425095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403030, 40.557800, 50.328201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412095, 0.076508, 0.907923,
		0.833984, 0.432981, 0.342049,
		-0.366944, 0.898151, -0.242236,
		41.292946, 40.827244, 50.255531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772743, 40.827854, 50.911793>,  <41.549809, 40.198540, 50.425095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772743, 40.827854, 50.911793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400280, 40.852982, 50.768124>,  <41.176804, 40.868057, 50.681923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400280, 40.852982, 50.768124>,  <41.772743, 40.827854, 50.911793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400280, 40.852982, 50.768124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363265, -0.074747, 0.928683,
		0.031493, 0.995222, 0.092422,
		-0.931154, 0.062821, -0.359175,
		41.120934, 40.871826, 50.660370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434174, 41.239254, 51.428490>,  <41.772743, 40.827854, 50.911793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434174, 41.239254, 51.428490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.137493, 41.086586, 51.207870>,  <40.959484, 40.994984, 51.075497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.137493, 41.086586, 51.207870>,  <41.434174, 41.239254, 51.428490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137493, 41.086586, 51.207870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567389, -0.081516, 0.819405,
		-0.357703, 0.920697, -0.156095,
		-0.741700, -0.381670, -0.551552,
		40.914982, 40.972084, 51.042404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836060, 41.670547, 51.528095>,  <41.434174, 41.239254, 51.428490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836060, 41.670547, 51.528095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710747, 41.313751, 51.397739>,  <40.635559, 41.099674, 51.319527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710747, 41.313751, 51.397739>,  <40.836060, 41.670547, 51.528095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710747, 41.313751, 51.397739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568566, -0.098690, 0.816697,
		-0.760650, 0.441143, -0.476240,
		-0.313280, -0.891994, -0.325887,
		40.616764, 41.046154, 51.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164196, 41.675026, 51.712086>,  <40.836060, 41.670547, 51.528095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164196, 41.675026, 51.712086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.264198, 41.290848, 51.663033>,  <40.324200, 41.060341, 51.633602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.264198, 41.290848, 51.663033>,  <40.164196, 41.675026, 51.712086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264198, 41.290848, 51.663033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410665, -0.219884, 0.884876,
		-0.876841, -0.170866, -0.449395,
		0.250009, -0.960446, -0.122634,
		40.339203, 41.002712, 51.626244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535625, 41.934452, 51.413368>,  <40.164196, 41.675026, 51.712086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535625, 41.934452, 51.413368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309875, 42.264023, 51.392891>,  <39.174423, 42.461765, 51.380604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309875, 42.264023, 51.392891>,  <39.535625, 41.934452, 51.413368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309875, 42.264023, 51.392891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524768, 0.310204, -0.792712,
		-0.637258, -0.474253, -0.607443,
		-0.564377, 0.823928, -0.051193,
		39.140564, 42.511200, 51.377533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400227, 42.043579, 50.699810>,  <39.535625, 41.934452, 51.413368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400227, 42.043579, 50.699810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358521, 42.390617, 50.894299>,  <39.333496, 42.598839, 51.010990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358521, 42.390617, 50.894299>,  <39.400227, 42.043579, 50.699810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358521, 42.390617, 50.894299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430189, 0.480125, -0.764471,
		-0.896697, 0.129459, -0.423290,
		-0.104265, 0.867594, 0.486219,
		39.327240, 42.650894, 51.040165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271946, 42.515736, 50.165722>,  <39.400227, 42.043579, 50.699810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271946, 42.515736, 50.165722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362045, 42.746758, 50.479584>,  <39.416103, 42.885372, 50.667900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362045, 42.746758, 50.479584>,  <39.271946, 42.515736, 50.165722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362045, 42.746758, 50.479584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531704, 0.601989, -0.595735,
		-0.816428, 0.551394, -0.171493,
		0.225247, 0.577558, 0.784659,
		39.429619, 42.920025, 50.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880791, 43.222935, 50.042526>,  <39.271946, 42.515736, 50.165722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880791, 43.222935, 50.042526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185020, 43.281677, 50.295494>,  <39.367558, 43.316921, 50.447273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185020, 43.281677, 50.295494>,  <38.880791, 43.222935, 50.042526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185020, 43.281677, 50.295494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388530, 0.677457, -0.624577,
		-0.520158, 0.720754, 0.458203,
		0.760579, 0.146853, 0.632419,
		39.413193, 43.325733, 50.485218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976776, 44.014198, 50.093761>,  <38.880791, 43.222935, 50.042526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976776, 44.014198, 50.093761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318237, 43.841942, 50.210941>,  <39.523113, 43.738586, 50.281250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318237, 43.841942, 50.210941>,  <38.976776, 44.014198, 50.093761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318237, 43.841942, 50.210941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517172, 0.634275, -0.574656,
		0.061662, 0.642062, 0.764169,
		0.853658, -0.430641, 0.292946,
		39.574333, 43.712749, 50.298824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463955, 44.594677, 50.363140>,  <38.976776, 44.014198, 50.093761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463955, 44.594677, 50.363140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661789, 44.268730, 50.242218>,  <39.780487, 44.073162, 50.169666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661789, 44.268730, 50.242218>,  <39.463955, 44.594677, 50.363140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661789, 44.268730, 50.242218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574815, 0.567562, -0.589458,
		0.651903, 0.117768, 0.749102,
		0.494581, -0.814864, -0.302301,
		39.810162, 44.024269, 50.151527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123676, 44.902695, 50.219025>,  <39.463955, 44.594677, 50.363140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123676, 44.902695, 50.219025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136482, 44.541809, 50.046986>,  <40.144165, 44.325279, 49.943764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136482, 44.541809, 50.046986>,  <40.123676, 44.902695, 50.219025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136482, 44.541809, 50.046986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548542, 0.375577, -0.747023,
		0.835510, -0.212012, 0.506926,
		0.032011, -0.902216, -0.430096,
		40.146084, 44.271145, 49.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746750, 44.795017, 50.024910>,  <40.123676, 44.902695, 50.219025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746750, 44.795017, 50.024910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542725, 44.554138, 49.779243>,  <40.420311, 44.409611, 49.631844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542725, 44.554138, 49.779243>,  <40.746750, 44.795017, 50.024910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542725, 44.554138, 49.779243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587985, 0.277027, -0.759954,
		0.627781, -0.748743, 0.212781,
		-0.510064, -0.602196, -0.614162,
		40.389706, 44.373478, 49.594994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211105, 44.417309, 49.638187>,  <40.746750, 44.795017, 50.024910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211105, 44.417309, 49.638187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878677, 44.395607, 49.416779>,  <40.679222, 44.382587, 49.283936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878677, 44.395607, 49.416779>,  <41.211105, 44.417309, 49.638187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878677, 44.395607, 49.416779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517360, 0.289852, -0.805186,
		0.204122, -0.955533, -0.212818,
		-0.831067, -0.054253, -0.553520,
		40.629356, 44.379330, 49.250721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365177, 43.985729, 49.052807>,  <41.211105, 44.417309, 49.638187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365177, 43.985729, 49.052807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066032, 44.221260, 48.930176>,  <40.886547, 44.362579, 48.856598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066032, 44.221260, 48.930176>,  <41.365177, 43.985729, 49.052807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066032, 44.221260, 48.930176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505027, 0.204891, -0.838432,
		-0.430877, -0.781858, -0.450604,
		-0.747859, 0.588828, -0.306576,
		40.841675, 44.397907, 48.838203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278015, 43.808662, 48.381836>,  <41.365177, 43.985729, 49.052807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278015, 43.808662, 48.381836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.119793, 44.174393, 48.416588>,  <41.024860, 44.393829, 48.437439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.119793, 44.174393, 48.416588>,  <41.278015, 43.808662, 48.381836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119793, 44.174393, 48.416588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412724, 0.261461, -0.872524,
		-0.820486, -0.309270, -0.480785,
		-0.395552, 0.914325, 0.086882,
		41.001129, 44.448689, 48.442654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188316, 43.961742, 47.740128>,  <41.278015, 43.808662, 48.381836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188316, 43.961742, 47.740128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145138, 44.325493, 47.900818>,  <41.119232, 44.543743, 47.997231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145138, 44.325493, 47.900818>,  <41.188316, 43.961742, 47.740128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145138, 44.325493, 47.900818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542883, 0.392438, -0.742476,
		-0.832842, 0.137945, -0.536046,
		-0.107944, 0.909376, 0.401727,
		41.112755, 44.598305, 48.021336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067825, 44.365967, 47.133858>,  <41.188316, 43.961742, 47.740128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067825, 44.365967, 47.133858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190498, 44.623108, 47.414623>,  <41.264103, 44.777393, 47.583084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190498, 44.623108, 47.414623>,  <41.067825, 44.365967, 47.133858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190498, 44.623108, 47.414623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585459, 0.454036, -0.671632,
		-0.750454, 0.616923, -0.237116,
		0.306686, 0.642851, 0.701916,
		41.282505, 44.815964, 47.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022694, 45.081249, 46.780472>,  <41.067825, 44.365967, 47.133858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022694, 45.081249, 46.780472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.269062, 45.079437, 47.095589>,  <41.416885, 45.078350, 47.284660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.269062, 45.079437, 47.095589>,  <41.022694, 45.081249, 46.780472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269062, 45.079437, 47.095589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732112, 0.372593, -0.570252,
		-0.290945, 0.927984, 0.232803,
		0.615925, -0.004526, 0.787792,
		41.453838, 45.078079, 47.331924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.294716, 44.772343, 53.574230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.425884, 44.395988, 53.608162>,  <41.504585, 44.170174, 53.628521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.425884, 44.395988, 53.608162>,  <41.294716, 44.772343, 53.574230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425884, 44.395988, 53.608162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807650, -0.232631, 0.541834,
		-0.490071, -0.246193, -0.836193,
		0.327921, -0.940889, 0.084832,
		41.524261, 44.113724, 53.633610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667297, 44.304321, 53.466518>,  <41.294716, 44.772343, 53.574230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667297, 44.304321, 53.466518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.930031, 44.058052, 53.640648>,  <41.087673, 43.910290, 53.745125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.930031, 44.058052, 53.640648>,  <40.667297, 44.304321, 53.466518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930031, 44.058052, 53.640648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662579, -0.195680, 0.722979,
		-0.359936, -0.763318, -0.536463,
		0.656838, -0.615675, 0.435326,
		41.127083, 43.873348, 53.771244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288944, 43.612793, 53.633469>,  <40.667297, 44.304321, 53.466518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288944, 43.612793, 53.633469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617371, 43.609337, 53.861778>,  <40.814426, 43.607265, 53.998764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617371, 43.609337, 53.861778>,  <40.288944, 43.612793, 53.633469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617371, 43.609337, 53.861778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531772, -0.375103, 0.759287,
		0.207541, -0.926943, -0.312575,
		0.821063, -0.008635, 0.570772,
		40.863689, 43.606747, 54.033009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292183, 42.911819, 53.937401>,  <40.288944, 43.612793, 53.633469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292183, 42.911819, 53.937401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.529419, 43.145241, 54.159286>,  <40.671761, 43.285294, 54.292419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.529419, 43.145241, 54.159286>,  <40.292183, 42.911819, 53.937401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529419, 43.145241, 54.159286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402037, -0.382283, 0.832001,
		0.697574, -0.716469, 0.007881,
		0.593091, 0.583551, 0.554718,
		40.707348, 43.320305, 54.325703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622307, 42.536255, 54.455406>,  <40.292183, 42.911819, 53.937401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622307, 42.536255, 54.455406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.615982, 42.899269, 54.623276>,  <40.612186, 43.117077, 54.723999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.615982, 42.899269, 54.623276>,  <40.622307, 42.536255, 54.455406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615982, 42.899269, 54.623276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541204, -0.360699, 0.759601,
		0.840742, -0.215117, 0.496867,
		-0.015816, 0.907535, 0.419678,
		40.611237, 43.171528, 54.749180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755737, 42.327770, 55.135757>,  <40.622307, 42.536255, 54.455406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755737, 42.327770, 55.135757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.604599, 42.697388, 55.159004>,  <40.513916, 42.919159, 55.172955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.604599, 42.697388, 55.159004>,  <40.755737, 42.327770, 55.135757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604599, 42.697388, 55.159004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567434, -0.280715, 0.774092,
		0.731609, 0.259507, 0.630400,
		-0.377845, 0.924043, 0.058120,
		40.491245, 42.974602, 55.176441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732483, 42.492466, 55.777752>,  <40.755737, 42.327770, 55.135757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732483, 42.492466, 55.777752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.471046, 42.740959, 55.604828>,  <40.314186, 42.890057, 55.501072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.471046, 42.740959, 55.604828>,  <40.732483, 42.492466, 55.777752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471046, 42.740959, 55.604828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648051, -0.164289, 0.743666,
		0.390965, 0.766211, 0.509968,
		-0.653587, 0.621232, -0.432312,
		40.274971, 42.927330, 55.475136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561714, 42.908627, 56.336201>,  <40.732483, 42.492466, 55.777752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561714, 42.908627, 56.336201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280106, 42.931160, 56.053024>,  <40.111141, 42.944679, 55.883118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280106, 42.931160, 56.053024>,  <40.561714, 42.908627, 56.336201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280106, 42.931160, 56.053024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695529, -0.256111, 0.671302,
		-0.143494, 0.965005, 0.219490,
		-0.704023, 0.056334, -0.707939,
		40.068897, 42.948059, 55.840641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118690, 43.238075, 56.628471>,  <40.561714, 42.908627, 56.336201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118690, 43.238075, 56.628471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932304, 43.051537, 56.327702>,  <39.820473, 42.939613, 56.147240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932304, 43.051537, 56.327702>,  <40.118690, 43.238075, 56.628471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932304, 43.051537, 56.327702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675700, -0.361100, 0.642679,
		-0.571235, 0.807543, -0.146853,
		-0.465962, -0.466349, -0.751929,
		39.792515, 42.911633, 56.102123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453468, 43.254158, 56.843777>,  <40.118690, 43.238075, 56.628471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453468, 43.254158, 56.843777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422043, 42.989044, 56.545906>,  <39.403187, 42.829975, 56.367184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422043, 42.989044, 56.545906>,  <39.453468, 43.254158, 56.843777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422043, 42.989044, 56.545906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614092, -0.556266, 0.559874,
		-0.785315, 0.501286, -0.363309,
		-0.078561, -0.662783, -0.744679,
		39.398476, 42.790211, 56.322502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704845, 43.203110, 56.658226>,  <39.453468, 43.254158, 56.843777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704845, 43.203110, 56.658226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853466, 42.847282, 56.551937>,  <38.942638, 42.633785, 56.488163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853466, 42.847282, 56.551937>,  <38.704845, 43.203110, 56.658226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853466, 42.847282, 56.551937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719701, -0.456786, 0.522855,
		-0.586496, -0.003026, -0.809946,
		0.371554, -0.889572, -0.265726,
		38.964931, 42.580410, 56.472221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256485, 42.834839, 56.090160>,  <38.704845, 43.203110, 56.658226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256485, 42.834839, 56.090160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466805, 42.577667, 56.312935>,  <38.592995, 42.423363, 56.446602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466805, 42.577667, 56.312935>,  <38.256485, 42.834839, 56.090160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466805, 42.577667, 56.312935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837342, -0.276025, 0.471878,
		-0.149655, -0.714460, -0.683484,
		0.525797, -0.642928, 0.556939,
		38.624542, 42.384789, 56.480015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915413, 42.214573, 56.033024>,  <38.256485, 42.834839, 56.090160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915413, 42.214573, 56.033024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129734, 42.252617, 56.368614>,  <38.258327, 42.275444, 56.569969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129734, 42.252617, 56.368614>,  <37.915413, 42.214573, 56.033024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129734, 42.252617, 56.368614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837280, -0.068430, 0.542475,
		0.109005, -0.993112, 0.042968,
		0.535798, 0.095108, 0.838972,
		38.290474, 42.281151, 56.620304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645939, 41.667114, 56.448372>,  <37.915413, 42.214573, 56.033024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645939, 41.667114, 56.448372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836803, 41.931396, 56.680161>,  <37.951321, 42.089966, 56.819233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836803, 41.931396, 56.680161>,  <37.645939, 41.667114, 56.448372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836803, 41.931396, 56.680161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669756, -0.153515, 0.726540,
		0.568987, -0.734779, 0.369261,
		0.477159, 0.660707, 0.579470,
		37.979950, 42.129608, 56.854000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109177, 41.213982, 56.717442>,  <37.645939, 41.667114, 56.448372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109177, 41.213982, 56.717442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810215, 41.055420, 56.504181>,  <36.630840, 40.960281, 56.376225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810215, 41.055420, 56.504181>,  <37.109177, 41.213982, 56.717442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810215, 41.055420, 56.504181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495627, 0.201736, -0.844782,
		0.442432, -0.895637, 0.045691,
		-0.747401, -0.396404, -0.533156,
		36.585995, 40.936497, 56.344234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390728, 40.939724, 56.167000>,  <37.109177, 41.213982, 56.717442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390728, 40.939724, 56.167000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027973, 40.973358, 56.001839>,  <36.810322, 40.993538, 55.902740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027973, 40.973358, 56.001839>,  <37.390728, 40.939724, 56.167000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027973, 40.973358, 56.001839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414151, 0.358557, -0.836610,
		0.077703, -0.929713, -0.359994,
		-0.906885, 0.084084, -0.412903,
		36.755909, 40.998585, 55.877968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486542, 40.739719, 55.531315>,  <37.390728, 40.939724, 56.167000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486542, 40.739719, 55.531315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136414, 40.930031, 55.496803>,  <36.926338, 41.044220, 55.476097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136414, 40.930031, 55.496803>,  <37.486542, 40.739719, 55.531315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136414, 40.930031, 55.496803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269183, 0.331244, -0.904333,
		-0.401687, -0.814806, -0.418017,
		-0.875322, 0.475782, -0.086275,
		36.873817, 41.072765, 55.470921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134830, 40.515717, 54.945415>,  <37.486542, 40.739719, 55.531315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134830, 40.515717, 54.945415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985641, 40.873947, 55.042439>,  <36.896130, 41.088886, 55.100651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985641, 40.873947, 55.042439>,  <37.134830, 40.515717, 54.945415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985641, 40.873947, 55.042439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300606, 0.363951, -0.881576,
		-0.877797, -0.255890, -0.404960,
		-0.372972, 0.895578, 0.242553,
		36.873749, 41.142620, 55.115204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814301, 40.610249, 54.394699>,  <37.134830, 40.515717, 54.945415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814301, 40.610249, 54.394699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851799, 40.970360, 54.564735>,  <36.874298, 41.186428, 54.666759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851799, 40.970360, 54.564735>,  <36.814301, 40.610249, 54.394699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851799, 40.970360, 54.564735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210153, 0.399461, -0.892338,
		-0.973164, 0.172988, -0.151749,
		0.093746, 0.900281, 0.425095,
		36.879921, 41.240444, 54.692265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495644, 41.023708, 53.989433>,  <36.814301, 40.610249, 54.394699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495644, 41.023708, 53.989433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727440, 41.286423, 54.182446>,  <36.866516, 41.444050, 54.298252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.727440, 41.286423, 54.182446>,  <36.495644, 41.023708, 53.989433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727440, 41.286423, 54.182446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275184, 0.399612, -0.874405,
		-0.767116, 0.639491, 0.050835,
		0.579488, 0.656781, 0.482526,
		36.901287, 41.483456, 54.327202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347057, 41.661625, 53.613571>,  <36.495644, 41.023708, 53.989433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347057, 41.661625, 53.613571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676620, 41.784302, 53.804195>,  <36.874359, 41.857910, 53.918568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676620, 41.784302, 53.804195>,  <36.347057, 41.661625, 53.613571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676620, 41.784302, 53.804195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339320, 0.406544, -0.848283,
		-0.453907, 0.860616, 0.230888,
		0.823911, 0.306696, 0.476557,
		36.923794, 41.876312, 53.947163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531094, 42.297386, 53.252789>,  <36.347057, 41.661625, 53.613571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531094, 42.297386, 53.252789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869408, 42.209900, 53.447445>,  <37.072395, 42.157410, 53.564240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869408, 42.209900, 53.447445>,  <36.531094, 42.297386, 53.252789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869408, 42.209900, 53.447445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533295, 0.373525, -0.758997,
		-0.015768, 0.901467, 0.432560,
		0.845783, -0.218714, 0.486637,
		37.123142, 42.144287, 53.593437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894497, 42.845997, 53.179138>,  <36.531094, 42.297386, 53.252789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894497, 42.845997, 53.179138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164574, 42.563004, 53.262638>,  <37.326618, 42.393208, 53.312740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164574, 42.563004, 53.262638>,  <36.894497, 42.845997, 53.179138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164574, 42.563004, 53.262638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596295, 0.356908, -0.719061,
		0.434220, 0.609983, 0.662852,
		0.675193, -0.707486, 0.208754,
		37.367130, 42.350758, 53.325264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455715, 43.131378, 53.374889>,  <36.894497, 42.845997, 53.179138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455715, 43.131378, 53.374889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567009, 42.777924, 53.224281>,  <37.633785, 42.565849, 53.133915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567009, 42.777924, 53.224281>,  <37.455715, 43.131378, 53.374889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567009, 42.777924, 53.224281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717484, 0.451822, -0.530163,
		0.638594, -0.122641, 0.759708,
		0.278233, -0.883638, -0.376524,
		37.650478, 42.512833, 53.111324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199406, 43.186367, 53.258827>,  <37.455715, 43.131378, 53.374889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199406, 43.186367, 53.258827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103348, 42.841583, 53.080231>,  <38.045715, 42.634712, 52.973072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103348, 42.841583, 53.080231>,  <38.199406, 43.186367, 53.258827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103348, 42.841583, 53.080231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762987, 0.116761, -0.635781,
		0.600153, -0.493340, 0.629628,
		-0.240141, -0.861964, -0.446486,
		38.031307, 42.582993, 52.946285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790775, 42.917427, 53.014286>,  <38.199406, 43.186367, 53.258827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790775, 42.917427, 53.014286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555664, 42.679260, 52.795197>,  <38.414597, 42.536362, 52.663742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555664, 42.679260, 52.795197>,  <38.790775, 42.917427, 53.014286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555664, 42.679260, 52.795197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734863, -0.109775, -0.669272,
		0.338369, -0.795884, 0.502072,
		-0.587777, -0.595415, -0.547721,
		38.379330, 42.500637, 52.630878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358463, 42.456402, 52.714592>,  <38.790775, 42.917427, 53.014286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358463, 42.456402, 52.714592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058392, 42.468811, 52.450386>,  <38.878349, 42.476257, 52.291862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058392, 42.468811, 52.450386>,  <39.358463, 42.456402, 52.714592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058392, 42.468811, 52.450386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661225, 0.028725, -0.749637,
		-0.004280, -0.999106, -0.042060,
		-0.750175, 0.031019, -0.660511,
		38.833340, 42.478115, 52.252232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502773, 42.090206, 52.203381>,  <39.358463, 42.456402, 52.714592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502773, 42.090206, 52.203381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227005, 42.293053, 51.996483>,  <39.061543, 42.414761, 51.872345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227005, 42.293053, 51.996483>,  <39.502773, 42.090206, 52.203381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227005, 42.293053, 51.996483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650342, 0.118872, -0.750283,
		-0.318991, -0.853643, -0.411749,
		-0.689420, 0.507112, -0.517241,
		39.020180, 42.445187, 51.841309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553226, 41.321434, 52.052143>,  <39.502773, 42.090206, 52.203381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553226, 41.321434, 52.052143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.819595, 41.028564, 51.994926>,  <39.979416, 40.852840, 51.960598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.819595, 41.028564, 51.994926>,  <39.553226, 41.321434, 52.052143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819595, 41.028564, 51.994926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336203, -0.465707, 0.818587,
		-0.665966, -0.497026, -0.556286,
		0.665925, -0.732176, -0.143043,
		40.019375, 40.808910, 51.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148331, 40.564854, 51.953861>,  <39.553226, 41.321434, 52.052143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148331, 40.564854, 51.953861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.522934, 40.560753, 52.094063>,  <39.747696, 40.558292, 52.178185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.522934, 40.560753, 52.094063>,  <39.148331, 40.564854, 51.953861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522934, 40.560753, 52.094063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310055, -0.491096, 0.814058,
		0.163787, -0.871045, -0.463092,
		0.936504, -0.010252, 0.350507,
		39.803886, 40.557678, 52.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187305, 39.850639, 52.236130>,  <39.148331, 40.564854, 51.953861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187305, 39.850639, 52.236130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491100, 40.051537, 52.401505>,  <39.673378, 40.172073, 52.500729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491100, 40.051537, 52.401505>,  <39.187305, 39.850639, 52.236130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491100, 40.051537, 52.401505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111936, -0.525172, 0.843602,
		0.640822, -0.686982, -0.342641,
		0.759485, 0.502245, 0.413439,
		39.718945, 40.202209, 52.525536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640839, 39.367447, 52.622166>,  <39.187305, 39.850639, 52.236130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640839, 39.367447, 52.622166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739914, 39.719536, 52.784088>,  <39.799358, 39.930790, 52.881241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739914, 39.719536, 52.784088>,  <39.640839, 39.367447, 52.622166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739914, 39.719536, 52.784088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018839, -0.422121, 0.906344,
		0.968658, -0.216860, -0.121135,
		0.247684, 0.880219, 0.404805,
		39.814220, 39.983601, 52.905529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018471, 39.161087, 53.099167>,  <39.640839, 39.367447, 52.622166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018471, 39.161087, 53.099167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.969040, 39.541428, 53.212730>,  <39.939381, 39.769634, 53.280869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.969040, 39.541428, 53.212730>,  <40.018471, 39.161087, 53.099167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969040, 39.541428, 53.212730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035468, -0.290154, 0.956323,
		0.991701, 0.108107, 0.069580,
		-0.123575, 0.950854, 0.283911,
		39.931969, 39.826683, 53.297905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417137, 39.306267, 53.862091>,  <40.018471, 39.161087, 53.099167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417137, 39.306267, 53.862091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.152248, 39.600845, 53.806801>,  <39.993317, 39.777592, 53.773628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.152248, 39.600845, 53.806801>,  <40.417137, 39.306267, 53.862091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152248, 39.600845, 53.806801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331279, -0.122292, 0.935574,
		0.672100, 0.665346, 0.324955,
		-0.662220, 0.736450, -0.138223,
		39.953583, 39.821781, 53.765335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509750, 39.783363, 54.410194>,  <40.417137, 39.306267, 53.862091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509750, 39.783363, 54.410194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131126, 39.829323, 54.289650>,  <39.903954, 39.856899, 54.217323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131126, 39.829323, 54.289650>,  <40.509750, 39.783363, 54.410194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131126, 39.829323, 54.289650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321091, -0.247703, 0.914081,
		0.030382, 0.961998, 0.271360,
		-0.946561, 0.114903, -0.301363,
		39.847157, 39.863792, 54.199242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037979, 40.020393, 55.075974>,  <40.509750, 39.783363, 54.410194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037979, 40.020393, 55.075974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146278, 39.638290, 55.123596>,  <41.211258, 39.409027, 55.152172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146278, 39.638290, 55.123596>,  <41.037979, 40.020393, 55.075974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146278, 39.638290, 55.123596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447955, 0.015549, -0.893921,
		0.852074, 0.295364, 0.432123,
		0.270752, -0.955258, 0.119061,
		41.227505, 39.351711, 55.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634090, 40.062981, 54.869514>,  <41.037979, 40.020393, 55.075974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634090, 40.062981, 54.869514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528664, 39.677696, 54.848541>,  <41.465408, 39.446526, 54.835957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528664, 39.677696, 54.848541>,  <41.634090, 40.062981, 54.869514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528664, 39.677696, 54.848541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561282, -0.108922, -0.820425,
		0.784535, -0.245666, 0.569344,
		-0.263565, -0.963215, -0.052435,
		41.449593, 39.388733, 54.832809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204288, 39.705341, 54.897766>,  <41.634090, 40.062981, 54.869514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204288, 39.705341, 54.897766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943542, 39.470810, 54.705391>,  <41.787094, 39.330093, 54.589966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943542, 39.470810, 54.705391>,  <42.204288, 39.705341, 54.897766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943542, 39.470810, 54.705391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642448, -0.090030, -0.761022,
		0.402907, -0.805058, 0.435370,
		-0.651864, -0.586324, -0.480934,
		41.747982, 39.294914, 54.561111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651653, 39.510616, 54.375027>,  <42.204288, 39.705341, 54.897766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651653, 39.510616, 54.375027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.315407, 39.319885, 54.272266>,  <42.113659, 39.205444, 54.210609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.315407, 39.319885, 54.272266>,  <42.651653, 39.510616, 54.375027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315407, 39.319885, 54.272266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431259, -0.302289, -0.850081,
		0.327687, -0.825382, 0.459746,
		-0.840617, -0.476830, -0.256897,
		42.063221, 39.176838, 54.195198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956398, 38.955524, 54.089993>,  <42.651653, 39.510616, 54.375027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956398, 38.955524, 54.089993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.586342, 39.018410, 53.951771>,  <42.364307, 39.056141, 53.868839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.586342, 39.018410, 53.951771>,  <42.956398, 38.955524, 54.089993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586342, 39.018410, 53.951771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304076, -0.238079, -0.922419,
		-0.227271, -0.958440, 0.172456,
		-0.925141, 0.157199, -0.345547,
		42.308800, 39.065575, 53.848106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829861, 38.380280, 53.568035>,  <42.956398, 38.955524, 54.089993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829861, 38.380280, 53.568035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.570518, 38.674889, 53.490906>,  <42.414913, 38.851654, 53.444626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.570518, 38.674889, 53.490906>,  <42.829861, 38.380280, 53.568035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570518, 38.674889, 53.490906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301092, 0.015424, -0.953470,
		-0.699274, -0.676242, -0.231760,
		-0.648351, 0.736518, -0.192826,
		42.376015, 38.895844, 53.433060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515678, 38.104214, 52.980274>,  <42.829861, 38.380280, 53.568035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515678, 38.104214, 52.980274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.435211, 38.494522, 53.014687>,  <42.386932, 38.728706, 53.035336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.435211, 38.494522, 53.014687>,  <42.515678, 38.104214, 52.980274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435211, 38.494522, 53.014687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286049, 0.142515, -0.947557,
		-0.936861, -0.166008, -0.307788,
		-0.201167, 0.975772, 0.086030,
		42.374863, 38.787254, 53.040497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.552692, 41.392548, 57.952946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.264946, 41.391441, 57.675095>,  <41.092297, 41.390778, 57.508385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.264946, 41.391441, 57.675095>,  <41.552692, 41.392548, 57.952946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264946, 41.391441, 57.675095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672619, 0.246979, -0.697556,
		0.173485, -0.969017, -0.175810,
		-0.719365, -0.002762, -0.694626,
		41.049137, 41.390614, 57.466705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856873, 41.077709, 57.342590>,  <41.552692, 41.392548, 57.952946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856873, 41.077709, 57.342590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.538124, 41.283646, 57.216141>,  <41.346874, 41.407207, 57.140270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.538124, 41.283646, 57.216141>,  <41.856873, 41.077709, 57.342590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538124, 41.283646, 57.216141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556337, 0.421320, -0.716225,
		-0.235549, -0.746613, -0.622162,
		-0.796872, 0.514838, -0.316127,
		41.299061, 41.438099, 57.121304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818794, 40.841644, 56.660618>,  <41.856873, 41.077709, 57.342590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818794, 40.841644, 56.660618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.662285, 41.203705, 56.727074>,  <41.568378, 41.420940, 56.766949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.662285, 41.203705, 56.727074>,  <41.818794, 40.841644, 56.660618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662285, 41.203705, 56.727074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627794, 0.394536, -0.670982,
		-0.672889, -0.158236, -0.722622,
		-0.391274, 0.905153, 0.166139,
		41.544903, 41.475250, 56.776917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794659, 41.049904, 56.060108>,  <41.818794, 40.841644, 56.660618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794659, 41.049904, 56.060108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.748894, 41.391380, 56.263329>,  <41.721436, 41.596268, 56.385262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.748894, 41.391380, 56.263329>,  <41.794659, 41.049904, 56.060108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748894, 41.391380, 56.263329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470642, 0.496960, -0.729059,
		-0.874874, 0.155696, -0.458643,
		-0.114416, 0.853692, 0.508055,
		41.714569, 41.647488, 56.415745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700520, 41.605865, 55.557041>,  <41.794659, 41.049904, 56.060108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700520, 41.605865, 55.557041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.827221, 41.759338, 55.904018>,  <41.903244, 41.851421, 56.112206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.827221, 41.759338, 55.904018>,  <41.700520, 41.605865, 55.557041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827221, 41.759338, 55.904018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629227, 0.599323, -0.494859,
		-0.709745, 0.702568, -0.051582,
		0.316757, 0.383680, 0.867441,
		41.922249, 41.874443, 56.164249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595417, 42.274418, 55.451675>,  <41.700520, 41.605865, 55.557041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595417, 42.274418, 55.451675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867584, 42.236549, 55.742348>,  <42.030884, 42.213829, 55.916752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867584, 42.236549, 55.742348>,  <41.595417, 42.274418, 55.451675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867584, 42.236549, 55.742348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592862, 0.653983, -0.469916,
		-0.430753, 0.750562, 0.501107,
		0.680417, -0.094670, 0.726685,
		42.071709, 42.208149, 55.960354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866901, 42.870453, 55.362789>,  <41.595417, 42.274418, 55.451675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866901, 42.870453, 55.362789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.133678, 42.697495, 55.605515>,  <42.293743, 42.593719, 55.751148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.133678, 42.697495, 55.605515>,  <41.866901, 42.870453, 55.362789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133678, 42.697495, 55.605515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739195, 0.486371, -0.465870,
		-0.093695, 0.759260, 0.644007,
		0.666943, -0.432397, 0.606812,
		42.333763, 42.567776, 55.787560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392723, 43.393127, 55.658298>,  <41.866901, 42.870453, 55.362789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392723, 43.393127, 55.658298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.568165, 43.033943, 55.672623>,  <42.673431, 42.818432, 55.681217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.568165, 43.033943, 55.672623>,  <42.392723, 43.393127, 55.658298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568165, 43.033943, 55.672623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842839, 0.397199, -0.363120,
		0.311844, 0.189450, 0.931054,
		0.438606, -0.897965, 0.035812,
		42.699745, 42.764553, 55.683365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057888, 43.472111, 55.917900>,  <42.392723, 43.393127, 55.658298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057888, 43.472111, 55.917900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.102165, 43.108444, 55.757317>,  <43.128731, 42.890244, 55.660965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.102165, 43.108444, 55.757317>,  <43.057888, 43.472111, 55.917900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102165, 43.108444, 55.757317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904024, 0.259925, -0.339380,
		0.412901, -0.325362, 0.850677,
		0.110691, -0.909163, -0.401459,
		43.135372, 42.835693, 55.636879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729042, 43.327637, 56.011208>,  <43.057888, 43.472111, 55.917900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729042, 43.327637, 56.011208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.627846, 43.064560, 55.727394>,  <43.567127, 42.906715, 55.557106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.627846, 43.064560, 55.727394>,  <43.729042, 43.327637, 56.011208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627846, 43.064560, 55.727394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883290, 0.142190, -0.446745,
		0.394709, -0.739747, 0.544959,
		-0.252990, -0.657691, -0.709534,
		43.551949, 42.867252, 55.514534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314320, 42.866005, 55.873482>,  <43.729042, 43.327637, 56.011208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314320, 42.866005, 55.873482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.089386, 42.847504, 55.543236>,  <43.954426, 42.836403, 55.345089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.089386, 42.847504, 55.543236>,  <44.314320, 42.866005, 55.873482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089386, 42.847504, 55.543236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817073, 0.122468, -0.563377,
		0.127173, -0.991394, -0.031070,
		-0.562334, -0.046260, -0.825615,
		43.920685, 42.833630, 55.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643600, 42.414665, 55.358818>,  <44.314320, 42.866005, 55.873482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643600, 42.414665, 55.358818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.400276, 42.668854, 55.168602>,  <44.254284, 42.821365, 55.054470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.400276, 42.668854, 55.168602>,  <44.643600, 42.414665, 55.358818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400276, 42.668854, 55.168602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737891, 0.232088, -0.633760,
		-0.292367, -0.736420, -0.610088,
		-0.608308, 0.635469, -0.475542,
		44.217785, 42.859493, 55.025940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884373, 41.718086, 55.182896>,  <44.643600, 42.414665, 55.358818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884373, 41.718086, 55.182896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.133018, 41.405327, 55.201767>,  <45.282207, 41.217670, 55.213089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.133018, 41.405327, 55.201767>,  <44.884373, 41.718086, 55.182896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133018, 41.405327, 55.201767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538940, -0.383201, 0.750134,
		-0.568455, -0.491717, -0.659601,
		0.621613, -0.781903, 0.047174,
		45.319504, 41.170757, 55.215919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402946, 41.182846, 55.176292>,  <44.884373, 41.718086, 55.182896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402946, 41.182846, 55.176292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.734177, 41.053337, 55.359364>,  <44.932915, 40.975632, 55.469204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.734177, 41.053337, 55.359364>,  <44.402946, 41.182846, 55.176292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734177, 41.053337, 55.359364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559284, -0.420708, 0.714287,
		-0.038721, -0.847452, -0.529458,
		0.828071, -0.323775, 0.457677,
		44.982597, 40.956203, 55.496666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346249, 40.488422, 55.257633>,  <44.402946, 41.182846, 55.176292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346249, 40.488422, 55.257633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.625023, 40.585472, 55.527573>,  <44.792286, 40.643700, 55.689537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.625023, 40.585472, 55.527573>,  <44.346249, 40.488422, 55.257633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625023, 40.585472, 55.527573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516582, -0.482871, 0.707091,
		0.497419, -0.841410, -0.211196,
		0.696934, 0.242621, 0.674847,
		44.834103, 40.658257, 55.730026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419628, 39.863235, 55.649567>,  <44.346249, 40.488422, 55.257633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419628, 39.863235, 55.649567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.559925, 40.152588, 55.887455>,  <44.644104, 40.326199, 56.030190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.559925, 40.152588, 55.887455>,  <44.419628, 39.863235, 55.649567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559925, 40.152588, 55.887455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443003, -0.431347, 0.785931,
		0.825062, -0.539123, 0.169171,
		0.350743, 0.723385, 0.594721,
		44.665150, 40.369602, 56.065872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619873, 39.636040, 56.334286>,  <44.419628, 39.863235, 55.649567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619873, 39.636040, 56.334286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.559563, 40.020897, 56.425110>,  <44.523376, 40.251812, 56.479603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.559563, 40.020897, 56.425110>,  <44.619873, 39.636040, 56.334286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559563, 40.020897, 56.425110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410668, -0.269889, 0.870926,
		0.899231, 0.038072, 0.435813,
		-0.150780, 0.962138, 0.227058,
		44.514328, 40.309540, 56.493229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559383, 39.567944, 56.997570>,  <44.619873, 39.636040, 56.334286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559383, 39.567944, 56.997570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.417755, 39.936172, 56.931625>,  <44.332779, 40.157108, 56.892059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.417755, 39.936172, 56.931625>,  <44.559383, 39.567944, 56.997570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417755, 39.936172, 56.931625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658705, -0.120343, 0.742715,
		0.663884, 0.371567, 0.648996,
		-0.354071, 0.920573, -0.164859,
		44.311535, 40.212345, 56.882168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660015, 39.850163, 57.666111>,  <44.559383, 39.567944, 56.997570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660015, 39.850163, 57.666111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.386978, 40.057892, 57.460442>,  <44.223156, 40.182529, 57.337040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.386978, 40.057892, 57.460442>,  <44.660015, 39.850163, 57.666111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386978, 40.057892, 57.460442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640015, -0.085175, 0.763627,
		0.352773, 0.850324, 0.390513,
		-0.682592, 0.519321, -0.514172,
		44.182201, 40.213688, 57.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455894, 40.382378, 58.075634>,  <44.660015, 39.850163, 57.666111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455894, 40.382378, 58.075634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.154774, 40.359840, 57.813301>,  <43.974102, 40.346317, 57.655903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.154774, 40.359840, 57.813301>,  <44.455894, 40.382378, 58.075634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154774, 40.359840, 57.813301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646605, -0.123233, 0.752805,
		-0.123233, 0.990777, 0.056341,
		-0.752805, -0.056341, -0.655828,
		43.928932, 40.342937, 57.616554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971195, 40.889957, 58.383976>,  <44.455894, 40.382378, 58.075634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971195, 40.889957, 58.383976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.766663, 40.675308, 58.115479>,  <43.643944, 40.546516, 57.954380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.766663, 40.675308, 58.115479>,  <43.971195, 40.889957, 58.383976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766663, 40.675308, 58.115479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713828, -0.169711, 0.679447,
		-0.478527, 0.826578, -0.296280,
		-0.511334, -0.536626, -0.671245,
		43.613262, 40.514320, 57.914104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409302, 41.224247, 58.304317>,  <43.971195, 40.889957, 58.383976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409302, 41.224247, 58.304317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.318733, 40.843529, 58.221539>,  <43.264393, 40.615097, 58.171871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.318733, 40.843529, 58.221539>,  <43.409302, 41.224247, 58.304317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318733, 40.843529, 58.221539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772050, 0.045832, 0.633908,
		-0.593863, 0.303302, -0.745208,
		-0.226419, -0.951792, -0.206946,
		43.250809, 40.557991, 58.159454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709915, 41.194592, 58.188770>,  <43.409302, 41.224247, 58.304317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709915, 41.194592, 58.188770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801918, 40.814354, 58.272171>,  <42.857121, 40.586212, 58.322212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801918, 40.814354, 58.272171>,  <42.709915, 41.194592, 58.188770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801918, 40.814354, 58.272171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810971, -0.068786, 0.581029,
		-0.537980, -0.302728, -0.786723,
		0.230009, -0.950591, 0.208498,
		42.870922, 40.529175, 58.334721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014103, 40.877178, 58.254974>,  <42.709915, 41.194592, 58.188770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014103, 40.877178, 58.254974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.283981, 40.617744, 58.395897>,  <42.445908, 40.462082, 58.480450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.283981, 40.617744, 58.395897>,  <42.014103, 40.877178, 58.254974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283981, 40.617744, 58.395897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688995, -0.382246, 0.615771,
		-0.264712, -0.658197, -0.704772,
		0.674695, -0.648587, 0.352310,
		42.486389, 40.423168, 58.501591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756897, 40.278530, 58.160595>,  <42.014103, 40.877178, 58.254974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756897, 40.278530, 58.160595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.011448, 40.246109, 58.467438>,  <42.164181, 40.226658, 58.651543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.011448, 40.246109, 58.467438>,  <41.756897, 40.278530, 58.160595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011448, 40.246109, 58.467438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771050, -0.095673, 0.629546,
		0.022365, -0.992107, -0.123380,
		0.636382, -0.081052, 0.767104,
		42.202362, 40.221794, 58.697571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500999, 39.700974, 58.525436>,  <41.756897, 40.278530, 58.160595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500999, 39.700974, 58.525436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727596, 39.876617, 58.804367>,  <41.863556, 39.982002, 58.971725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727596, 39.876617, 58.804367>,  <41.500999, 39.700974, 58.525436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727596, 39.876617, 58.804367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747061, -0.083521, 0.659488,
		0.347828, -0.894544, 0.280726,
		0.566494, 0.439108, 0.697330,
		41.897545, 40.008350, 59.013565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004215, 39.256050, 58.110977>,  <41.500999, 39.700974, 58.525436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004215, 39.256050, 58.110977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.606552, 39.293907, 58.090233>,  <41.367954, 39.316620, 58.077785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.606552, 39.293907, 58.090233>,  <42.004215, 39.256050, 58.110977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606552, 39.293907, 58.090233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006507, -0.427086, -0.904188,
		-0.107723, -0.899244, 0.423976,
		-0.994160, 0.094643, -0.051859,
		41.308304, 39.322300, 58.074677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654694, 38.658348, 57.981472>,  <42.004215, 39.256050, 58.110977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654694, 38.658348, 57.981472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.409851, 38.938339, 57.834312>,  <41.262943, 39.106335, 57.746017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.409851, 38.938339, 57.834312>,  <41.654694, 38.658348, 57.981472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409851, 38.938339, 57.834312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059356, -0.504599, -0.861311,
		-0.788544, -0.505378, 0.350417,
		-0.612108, 0.699981, -0.367901,
		41.226219, 39.148335, 57.723942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058174, 38.284325, 57.600925>,  <41.654694, 38.658348, 57.981472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058174, 38.284325, 57.600925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079403, 38.662201, 57.471470>,  <41.092140, 38.888927, 57.393799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079403, 38.662201, 57.471470>,  <41.058174, 38.284325, 57.600925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079403, 38.662201, 57.471470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023994, -0.325207, -0.945339,
		-0.998303, 0.042403, -0.039925,
		0.053069, 0.944692, -0.323637,
		41.095325, 38.945610, 57.374378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658470, 38.288464, 56.932804>,  <41.058174, 38.284325, 57.600925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658470, 38.288464, 56.932804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.866058, 38.628296, 56.895096>,  <40.990612, 38.832195, 56.872471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.866058, 38.628296, 56.895096>,  <40.658470, 38.288464, 56.932804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866058, 38.628296, 56.895096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009823, -0.116206, -0.993176,
		-0.854737, 0.514500, -0.068653,
		0.518968, 0.849580, -0.094272,
		41.021748, 38.883171, 56.866814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236225, 38.673664, 56.461567>,  <40.658470, 38.288464, 56.932804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236225, 38.673664, 56.461567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606728, 38.823830, 56.448181>,  <40.829029, 38.913929, 56.440147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606728, 38.823830, 56.448181>,  <40.236225, 38.673664, 56.461567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606728, 38.823830, 56.448181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040889, 0.011819, -0.999094,
		-0.374677, 0.926782, 0.026298,
		0.926253, 0.375413, -0.033467,
		40.884605, 38.936455, 56.438141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206894, 39.099758, 55.918903>,  <40.236225, 38.673664, 56.461567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206894, 39.099758, 55.918903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.603493, 39.099106, 55.970940>,  <40.841454, 39.098713, 56.002159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.603493, 39.099106, 55.970940>,  <40.206894, 39.099758, 55.918903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603493, 39.099106, 55.970940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129920, 0.064484, -0.989425,
		-0.006772, 0.997917, 0.064149,
		0.991501, -0.001633, 0.130086,
		40.900944, 39.098618, 56.009964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473515, 39.653355, 55.475231>,  <40.206894, 39.099758, 55.918903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473515, 39.653355, 55.475231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783463, 39.405998, 55.527649>,  <40.969433, 39.257584, 55.559097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783463, 39.405998, 55.527649>,  <40.473515, 39.653355, 55.475231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783463, 39.405998, 55.527649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208513, 0.054347, -0.976508,
		0.596741, 0.783990, 0.171055,
		0.774869, -0.618390, 0.131041,
		41.015923, 39.220482, 55.566959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064163, 40.028297, 55.072697>,  <40.473515, 39.653355, 55.475231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064163, 40.028297, 55.072697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.786652, 39.918198, 54.806488>,  <39.620144, 39.852139, 54.646763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.786652, 39.918198, 54.806488>,  <40.064163, 40.028297, 55.072697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786652, 39.918198, 54.806488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638960, -0.191096, 0.745126,
		-0.332272, 0.942189, -0.043295,
		-0.693776, -0.275249, -0.665517,
		39.578518, 39.835625, 54.606834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434441, 40.395306, 55.243214>,  <40.064163, 40.028297, 55.072697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434441, 40.395306, 55.243214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327698, 40.068024, 55.039516>,  <39.263653, 39.871655, 54.917297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327698, 40.068024, 55.039516>,  <39.434441, 40.395306, 55.243214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327698, 40.068024, 55.039516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766218, -0.140376, 0.627060,
		-0.584548, 0.557528, -0.589462,
		-0.266858, -0.818203, -0.509245,
		39.247639, 39.822563, 54.886742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692825, 40.462074, 55.067326>,  <39.434441, 40.395306, 55.243214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692825, 40.462074, 55.067326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.787491, 40.074524, 55.038315>,  <38.844292, 39.841991, 55.020908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.787491, 40.074524, 55.038315>,  <38.692825, 40.462074, 55.067326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787491, 40.074524, 55.038315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784100, -0.234547, 0.574608,
		-0.573738, -0.079120, -0.815208,
		0.236668, -0.968879, -0.072531,
		38.858490, 39.783859, 55.016556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058598, 40.176388, 54.994778>,  <38.692825, 40.462074, 55.067326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058598, 40.176388, 54.994778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290215, 39.867653, 55.099838>,  <38.429184, 39.682411, 55.162876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290215, 39.867653, 55.099838>,  <38.058598, 40.176388, 54.994778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290215, 39.867653, 55.099838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643337, -0.234650, 0.728737,
		-0.500831, -0.590942, -0.632420,
		0.579039, -0.771833, 0.262655,
		38.463924, 39.636105, 55.178635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689888, 39.555885, 54.923767>,  <38.058598, 40.176388, 54.994778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689888, 39.555885, 54.923767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.983269, 39.459969, 55.178185>,  <38.159298, 39.402416, 55.330833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.983269, 39.459969, 55.178185>,  <37.689888, 39.555885, 54.923767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983269, 39.459969, 55.178185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679726, -0.252605, 0.688595,
		-0.004454, -0.937384, -0.348269,
		0.733452, -0.239794, 0.636040,
		38.203304, 39.388031, 55.368996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493031, 38.908123, 55.158287>,  <37.689888, 39.555885, 54.923767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493031, 38.908123, 55.158287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751358, 39.049767, 55.428848>,  <37.906353, 39.134754, 55.591187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751358, 39.049767, 55.428848>,  <37.493031, 38.908123, 55.158287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751358, 39.049767, 55.428848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676641, -0.144922, 0.721910,
		0.353664, -0.923906, 0.146015,
		0.645816, 0.354113, 0.676406,
		37.945103, 39.156002, 55.631771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276623, 38.534126, 55.782230>,  <37.493031, 38.908123, 55.158287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276623, 38.534126, 55.782230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533325, 38.794594, 55.944283>,  <37.687347, 38.950874, 56.041515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533325, 38.794594, 55.944283>,  <37.276623, 38.534126, 55.782230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533325, 38.794594, 55.944283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571718, 0.054109, 0.818664,
		0.511167, -0.757002, 0.407009,
		0.641754, 0.651168, 0.405133,
		37.725853, 38.989944, 56.065823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532757, 38.217724, 56.445827>,  <37.276623, 38.534126, 55.782230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532757, 38.217724, 56.445827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.543339, 38.616745, 56.419952>,  <37.549690, 38.856159, 56.404427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.543339, 38.616745, 56.419952>,  <37.532757, 38.217724, 56.445827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543339, 38.616745, 56.419952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694352, 0.064895, 0.716704,
		0.719150, 0.025957, 0.694371,
		0.026457, 0.997555, -0.064692,
		37.551277, 38.916012, 56.400543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735935, 38.335045, 57.100685>,  <37.532757, 38.217724, 56.445827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735935, 38.335045, 57.100685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595734, 38.691261, 56.984699>,  <37.511612, 38.904991, 56.915108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595734, 38.691261, 56.984699>,  <37.735935, 38.335045, 57.100685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595734, 38.691261, 56.984699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628384, 0.005959, 0.777881,
		0.694465, 0.454857, 0.557515,
		-0.350502, 0.890545, -0.289963,
		37.490582, 38.958424, 56.897709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<46.859173, 42.753384, 44.497570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.751732, 43.123276, 44.605446>,  <46.687267, 43.345211, 44.670170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.751732, 43.123276, 44.605446>,  <46.859173, 42.753384, 44.497570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751732, 43.123276, 44.605446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575009, -0.378552, 0.725302,
		0.772797, 0.039745, 0.633407,
		-0.268605, 0.924726, 0.269690,
		46.671150, 43.400692, 44.686352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908661, 42.843704, 45.321777>,  <46.859173, 42.753384, 44.497570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908661, 42.843704, 45.321777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.648827, 43.087097, 45.139442>,  <46.492924, 43.233131, 45.030041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.648827, 43.087097, 45.139442>,  <46.908661, 42.843704, 45.321777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648827, 43.087097, 45.139442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742118, -0.377171, 0.554077,
		0.165214, 0.698210, 0.696568,
		-0.649588, 0.608478, -0.455840,
		46.453949, 43.269642, 45.002689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579082, 43.137001, 45.887390>,  <46.908661, 42.843704, 45.321777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579082, 43.137001, 45.887390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.350700, 43.189346, 45.563198>,  <46.213669, 43.220753, 45.368683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.350700, 43.189346, 45.563198>,  <46.579082, 43.137001, 45.887390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350700, 43.189346, 45.563198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803435, -0.292071, 0.518832,
		-0.168821, 0.947401, 0.271902,
		-0.570957, 0.130866, -0.810483,
		46.179413, 43.228607, 45.320053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033939, 43.655571, 46.085213>,  <46.579082, 43.137001, 45.887390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033939, 43.655571, 46.085213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.927605, 43.411507, 45.786674>,  <45.863804, 43.265068, 45.607552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.927605, 43.411507, 45.786674>,  <46.033939, 43.655571, 46.085213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927605, 43.411507, 45.786674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758276, -0.345711, 0.552722,
		-0.595271, 0.712869, -0.370771,
		-0.265838, -0.610166, -0.746343,
		45.847855, 43.228458, 45.562771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433781, 43.576973, 46.258587>,  <46.033939, 43.655571, 46.085213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433781, 43.576973, 46.258587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.425880, 43.293037, 45.976952>,  <45.421139, 43.122677, 45.807972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.425880, 43.293037, 45.976952>,  <45.433781, 43.576973, 46.258587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425880, 43.293037, 45.976952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832489, -0.378321, 0.404765,
		-0.553689, 0.594140, -0.583461,
		-0.019751, -0.709839, -0.704087,
		45.419956, 43.080086, 45.765724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794739, 43.552044, 45.900764>,  <45.433781, 43.576973, 46.258587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794739, 43.552044, 45.900764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.947086, 43.188156, 45.834602>,  <45.038494, 42.969826, 45.794903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.947086, 43.188156, 45.834602>,  <44.794739, 43.552044, 45.900764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947086, 43.188156, 45.834602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860151, -0.414223, 0.297589,
		-0.339237, 0.028934, -0.940256,
		0.380865, -0.909715, -0.165407,
		45.061344, 42.915241, 45.784981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228630, 43.153854, 45.560638>,  <44.794739, 43.552044, 45.900764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228630, 43.153854, 45.560638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.479691, 42.895805, 45.734936>,  <44.630329, 42.740978, 45.839516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.479691, 42.895805, 45.734936>,  <44.228630, 43.153854, 45.560638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479691, 42.895805, 45.734936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776524, -0.558593, 0.291522,
		0.055337, -0.521340, -0.851553,
		0.627653, -0.645119, 0.435744,
		44.667988, 42.702271, 45.865658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104343, 42.514515, 45.252483>,  <44.228630, 43.153854, 45.560638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104343, 42.514515, 45.252483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.277622, 42.419968, 45.600384>,  <44.381588, 42.363239, 45.809124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.277622, 42.419968, 45.600384>,  <44.104343, 42.514515, 45.252483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277622, 42.419968, 45.600384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812663, -0.519752, 0.263508,
		0.389772, -0.820968, -0.417240,
		0.433194, -0.236367, 0.869755,
		44.407581, 42.349056, 45.861309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011993, 41.810162, 45.316292>,  <44.104343, 42.514515, 45.252483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011993, 41.810162, 45.316292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.071423, 41.940224, 45.689857>,  <44.107082, 42.018261, 45.913998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.071423, 41.940224, 45.689857>,  <44.011993, 41.810162, 45.316292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071423, 41.940224, 45.689857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802055, -0.512819, 0.306144,
		0.578475, -0.794537, 0.184603,
		0.148575, 0.325159, 0.933915,
		44.115993, 42.037769, 45.970032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715832, 41.296299, 45.726944>,  <44.011993, 41.810162, 45.316292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715832, 41.296299, 45.726944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.798508, 41.556564, 46.019222>,  <43.848114, 41.712723, 46.194592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.798508, 41.556564, 46.019222>,  <43.715832, 41.296299, 45.726944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798508, 41.556564, 46.019222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575070, -0.523416, 0.628753,
		0.791564, -0.550160, 0.265991,
		0.206691, 0.650661, 0.730697,
		43.860516, 41.751762, 46.238430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016575, 40.925613, 46.281895>,  <43.715832, 41.296299, 45.726944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016575, 40.925613, 46.281895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.872414, 41.254021, 46.459000>,  <43.785915, 41.451065, 46.565262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.872414, 41.254021, 46.459000>,  <44.016575, 40.925613, 46.281895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872414, 41.254021, 46.459000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411933, -0.565957, 0.714146,
		0.836912, 0.074989, 0.542176,
		-0.360401, 0.821017, 0.442766,
		43.764294, 41.500324, 46.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213890, 40.959396, 47.094753>,  <44.016575, 40.925613, 46.281895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213890, 40.959396, 47.094753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.892830, 41.192894, 47.045780>,  <43.700191, 41.332993, 47.016396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.892830, 41.192894, 47.045780>,  <44.213890, 40.959396, 47.094753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892830, 41.192894, 47.045780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415058, -0.399248, 0.817513,
		0.428338, 0.706996, 0.562745,
		-0.802653, 0.583745, -0.122432,
		43.652035, 41.368019, 47.009052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818264, 41.162899, 47.484943>,  <44.213890, 40.959396, 47.094753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818264, 41.162899, 47.484943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.032364, 40.855263, 47.624664>,  <45.160824, 40.670681, 47.708496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.032364, 40.855263, 47.624664>,  <44.818264, 41.162899, 47.484943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032364, 40.855263, 47.624664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775658, 0.283774, -0.563762,
		0.334458, 0.572694, 0.748438,
		0.535251, -0.769086, 0.349304,
		45.192940, 40.624538, 47.729454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511875, 41.479202, 47.419601>,  <44.818264, 41.162899, 47.484943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511875, 41.479202, 47.419601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.582458, 41.088554, 47.468704>,  <45.624809, 40.854164, 47.498165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.582458, 41.088554, 47.468704>,  <45.511875, 41.479202, 47.419601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582458, 41.088554, 47.468704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872731, 0.097556, -0.478355,
		0.455197, 0.191545, 0.869544,
		0.176456, -0.976623, 0.122760,
		45.635395, 40.795567, 47.505531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212685, 41.527550, 47.550198>,  <45.511875, 41.479202, 47.419601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212685, 41.527550, 47.550198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.100288, 41.168762, 47.413673>,  <46.032848, 40.953491, 47.331760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.100288, 41.168762, 47.413673>,  <46.212685, 41.527550, 47.550198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100288, 41.168762, 47.413673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822150, -0.041517, -0.567755,
		0.495089, -0.440140, 0.749108,
		-0.280993, -0.896969, -0.341307,
		46.015991, 40.899673, 47.311283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829659, 41.168869, 47.688736>,  <46.212685, 41.527550, 47.550198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829659, 41.168869, 47.688736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.609352, 41.000763, 47.400284>,  <46.477169, 40.899899, 47.227211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.609352, 41.000763, 47.400284>,  <46.829659, 41.168869, 47.688736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609352, 41.000763, 47.400284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803530, -0.033223, -0.594337,
		0.225821, -0.906793, 0.355995,
		-0.550767, -0.420266, -0.721132,
		46.444122, 40.874683, 47.183945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.163624, 40.504311, 47.448658>,  <46.829659, 41.168869, 47.688736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.163624, 40.504311, 47.448658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.926071, 40.614594, 47.146324>,  <46.783539, 40.680763, 46.964924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.926071, 40.614594, 47.146324>,  <47.163624, 40.504311, 47.448658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926071, 40.614594, 47.146324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702196, -0.280934, -0.654215,
		-0.392711, -0.919272, -0.026758,
		-0.593884, 0.275707, -0.755835,
		46.747906, 40.697304, 46.919575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134411, 39.959049, 47.141232>,  <47.163624, 40.504311, 47.448658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134411, 39.959049, 47.141232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.034187, 40.247231, 46.882565>,  <46.974052, 40.420139, 46.727364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.034187, 40.247231, 46.882565>,  <47.134411, 39.959049, 47.141232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034187, 40.247231, 46.882565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699185, -0.327343, -0.635600,
		-0.669599, -0.611390, -0.421711,
		-0.250555, 0.720451, -0.646663,
		46.959023, 40.463367, 46.688564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198509, 39.585888, 46.588173>,  <47.134411, 39.959049, 47.141232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198509, 39.585888, 46.588173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.152931, 39.954903, 46.440697>,  <47.125584, 40.176311, 46.352211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.152931, 39.954903, 46.440697>,  <47.198509, 39.585888, 46.588173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152931, 39.954903, 46.440697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690081, -0.193480, -0.697391,
		-0.714706, -0.333893, -0.614582,
		-0.113944, 0.922541, -0.368695,
		47.118748, 40.231667, 46.330090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189034, 39.526451, 45.804356>,  <47.198509, 39.585888, 46.588173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189034, 39.526451, 45.804356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.288544, 39.904213, 45.890350>,  <47.348248, 40.130871, 45.941948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.288544, 39.904213, 45.890350>,  <47.189034, 39.526451, 45.804356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288544, 39.904213, 45.890350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880290, -0.127880, -0.456877,
		-0.403983, 0.302910, -0.863159,
		0.248773, 0.944400, 0.214987,
		47.363174, 40.187534, 45.954845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375904, 39.791103, 45.167213>,  <47.189034, 39.526451, 45.804356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375904, 39.791103, 45.167213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.544960, 40.013435, 45.453552>,  <47.646393, 40.146835, 45.625355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.544960, 40.013435, 45.453552>,  <47.375904, 39.791103, 45.167213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.544960, 40.013435, 45.453552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895265, -0.133172, -0.425165,
		-0.140987, 0.820563, -0.553895,
		0.422638, 0.555825, 0.715846,
		47.671753, 40.180183, 45.668304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875008, 40.260540, 44.820499>,  <47.375904, 39.791103, 45.167213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875008, 40.260540, 44.820499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.005051, 40.238525, 45.198128>,  <48.083076, 40.225315, 45.424706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.005051, 40.238525, 45.198128>,  <47.875008, 40.260540, 44.820499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.005051, 40.238525, 45.198128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889566, 0.356558, -0.285550,
		-0.320901, 0.932651, 0.164878,
		0.325107, -0.055037, 0.944074,
		48.102581, 40.222015, 45.481350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.128468, 40.848225, 44.921177>,  <47.875008, 40.260540, 44.820499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.128468, 40.848225, 44.921177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.312416, 40.609398, 45.184093>,  <48.422783, 40.466103, 45.341843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.312416, 40.609398, 45.184093>,  <48.128468, 40.848225, 44.921177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.312416, 40.609398, 45.184093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887718, 0.290912, -0.356828,
		0.021833, 0.747587, 0.663805,
		0.459869, -0.597062, 0.657295,
		48.450378, 40.430279, 45.381283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.823826, 41.133907, 45.047482>,  <48.128468, 40.848225, 44.921177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.823826, 41.133907, 45.047482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.908165, 40.808952, 45.264950>,  <48.958767, 40.613979, 45.395432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.908165, 40.808952, 45.264950>,  <48.823826, 41.133907, 45.047482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.908165, 40.808952, 45.264950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957369, 0.283958, 0.053022,
		-0.197453, 0.509312, 0.837624,
		0.210845, -0.812385, 0.543668,
		48.971420, 40.565235, 45.428051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.396709, 41.311134, 45.473358>,  <48.823826, 41.133907, 45.047482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.396709, 41.311134, 45.473358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.391281, 40.911209, 45.478989>,  <49.388023, 40.671253, 45.482365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.391281, 40.911209, 45.478989>,  <49.396709, 41.311134, 45.473358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.391281, 40.911209, 45.478989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998149, -0.014379, -0.059086,
		0.059277, 0.013246, 0.998154,
		-0.013570, -0.999809, 0.014074,
		49.387211, 40.611267, 45.483212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.904819, 41.114372, 46.009720>,  <49.396709, 41.311134, 45.473358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.904819, 41.114372, 46.009720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.852097, 40.816353, 45.748177>,  <49.820465, 40.637539, 45.591251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.852097, 40.816353, 45.748177>,  <49.904819, 41.114372, 46.009720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.852097, 40.816353, 45.748177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983622, -0.016487, -0.179490,
		0.122949, -0.666804, 0.735021,
		-0.131803, -0.745051, -0.653855,
		49.812557, 40.592838, 45.552021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.420834, 40.586227, 46.077892>,  <49.904819, 41.114372, 46.009720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.420834, 40.586227, 46.077892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.304787, 40.558708, 45.696087>,  <50.235161, 40.542198, 45.467003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.304787, 40.558708, 45.696087>,  <50.420834, 40.586227, 46.077892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.304787, 40.558708, 45.696087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955930, -0.067826, -0.285654,
		-0.045089, -0.995322, 0.085442,
		-0.290113, -0.068797, -0.954516,
		50.217754, 40.538071, 45.409733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.780899, 41.104279, 45.641991>,  <50.420834, 40.586227, 46.077892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.780899, 41.104279, 45.641991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.787292, 41.456619, 45.831238>,  <50.791126, 41.668026, 45.944786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.787292, 41.456619, 45.831238>,  <50.780899, 41.104279, 45.641991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.787292, 41.456619, 45.831238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441295, -0.418382, 0.793861,
		0.897220, -0.221468, 0.382032,
		0.015980, 0.880857, 0.473114,
		50.792088, 41.720875, 45.973171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.962254, 40.950771, 46.352974>,  <50.780899, 41.104279, 45.641991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.962254, 40.950771, 46.352974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.768692, 41.300774, 46.358574>,  <50.652554, 41.510777, 46.361935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.768692, 41.300774, 46.358574>,  <50.962254, 40.950771, 46.352974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.768692, 41.300774, 46.358574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434424, -0.254078, 0.864130,
		0.759680, 0.412071, 0.503074,
		-0.483903, 0.875009, 0.014004,
		50.623520, 41.563278, 46.362774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.143829, 41.247520, 46.870964>,  <50.962254, 40.950771, 46.352974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.143829, 41.247520, 46.870964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.787231, 41.408066, 46.786919>,  <50.573273, 41.504391, 46.736492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.787231, 41.408066, 46.786919>,  <51.143829, 41.247520, 46.870964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.787231, 41.408066, 46.786919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371320, -0.381661, 0.846438,
		0.259537, 0.832613, 0.489282,
		-0.891494, 0.401361, -0.210111,
		50.519783, 41.528473, 46.723885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.016785, 41.748241, 47.351429>,  <51.143829, 41.247520, 46.870964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.016785, 41.748241, 47.351429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.658638, 41.631172, 47.217171>,  <50.443748, 41.560932, 47.136616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.658638, 41.631172, 47.217171>,  <51.016785, 41.748241, 47.351429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.658638, 41.631172, 47.217171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252384, -0.287481, 0.923936,
		-0.366903, 0.911974, 0.183535,
		-0.895368, -0.292673, -0.335646,
		50.390026, 41.543369, 47.116478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.554558, 41.953819, 47.871979>,  <51.016785, 41.748241, 47.351429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.554558, 41.953819, 47.871979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.334091, 41.700264, 47.654945>,  <50.201809, 41.548130, 47.524727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.334091, 41.700264, 47.654945>,  <50.554558, 41.953819, 47.871979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.334091, 41.700264, 47.654945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468162, -0.303334, 0.829948,
		-0.690679, 0.711458, -0.129575,
		-0.551169, -0.633889, -0.542584,
		50.168739, 41.510098, 47.492168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.873226, 42.148685, 47.966358>,  <50.554558, 41.953819, 47.871979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.873226, 42.148685, 47.966358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.870285, 41.761719, 47.865120>,  <49.868519, 41.529541, 47.804379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.870285, 41.761719, 47.865120>,  <49.873226, 42.148685, 47.966358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.870285, 41.761719, 47.865120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604515, -0.197310, 0.771771,
		-0.796560, 0.158676, -0.583365,
		-0.007357, -0.967415, -0.253091,
		49.868076, 41.471493, 47.789192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.167126, 41.956303, 47.780422>,  <49.873226, 42.148685, 47.966358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.167126, 41.956303, 47.780422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.369911, 41.628616, 47.887661>,  <49.491585, 41.432007, 47.952003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.369911, 41.628616, 47.887661>,  <49.167126, 41.956303, 47.780422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.369911, 41.628616, 47.887661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735549, -0.249001, 0.630052,
		-0.449391, -0.516613, -0.728807,
		0.506967, -0.819213, 0.268095,
		49.522003, 41.382854, 47.968090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.557648, 41.496288, 47.794857>,  <49.167126, 41.956303, 47.780422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.557648, 41.496288, 47.794857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.863266, 41.341248, 48.001160>,  <49.046635, 41.248222, 48.124939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.863266, 41.341248, 48.001160>,  <48.557648, 41.496288, 47.794857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.863266, 41.341248, 48.001160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618328, -0.211752, 0.756856,
		-0.184137, -0.897181, -0.401447,
		0.764045, -0.387591, 0.515761,
		49.092480, 41.224964, 48.155884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.251003, 40.918610, 48.203438>,  <48.557648, 41.496288, 47.794857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.251003, 40.918610, 48.203438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.602699, 41.019676, 48.364983>,  <48.813717, 41.080318, 48.461910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.602699, 41.019676, 48.364983>,  <48.251003, 40.918610, 48.203438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.602699, 41.019676, 48.364983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365171, -0.186951, 0.911976,
		0.305932, -0.949319, -0.072106,
		0.879236, 0.252672, 0.403858,
		48.866470, 41.095478, 48.486141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.368809, 40.334778, 48.580627>,  <48.251003, 40.918610, 48.203438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.368809, 40.334778, 48.580627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.561508, 40.659065, 48.713684>,  <48.677128, 40.853638, 48.793518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.561508, 40.659065, 48.713684>,  <48.368809, 40.334778, 48.580627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.561508, 40.659065, 48.713684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397719, -0.135966, 0.907377,
		0.780856, -0.569427, 0.256936,
		0.481750, 0.810720, 0.332642,
		48.706032, 40.902283, 48.813477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.631870, 40.116936, 49.217968>,  <48.368809, 40.334778, 48.580627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.631870, 40.116936, 49.217968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.632668, 40.516808, 49.228138>,  <48.633148, 40.756729, 49.234238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.632668, 40.516808, 49.228138>,  <48.631870, 40.116936, 49.217968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.632668, 40.516808, 49.228138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273834, -0.023904, 0.961480,
		0.961775, -0.008879, 0.273697,
		0.001995, 0.999675, 0.025421,
		48.633266, 40.816711, 49.235764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.947140, 40.321159, 49.821621>,  <48.631870, 40.116936, 49.217968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.947140, 40.321159, 49.821621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.735336, 40.643471, 49.715530>,  <48.608253, 40.836857, 49.651875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.735336, 40.643471, 49.715530>,  <48.947140, 40.321159, 49.821621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.735336, 40.643471, 49.715530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378605, 0.055318, 0.923904,
		0.759134, 0.589628, 0.275780,
		-0.529504, 0.805778, -0.265229,
		48.576485, 40.885204, 49.635963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.073463, 40.703541, 50.322529>,  <48.947140, 40.321159, 49.821621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.073463, 40.703541, 50.322529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.754395, 40.867645, 50.145710>,  <48.562954, 40.966106, 50.039619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.754395, 40.867645, 50.145710>,  <49.073463, 40.703541, 50.322529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.754395, 40.867645, 50.145710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371062, 0.243961, 0.895989,
		0.475433, 0.878731, -0.042367,
		-0.797669, 0.410262, -0.442051,
		48.515095, 40.990723, 50.013096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.015652, 41.343380, 50.612629>,  <49.073463, 40.703541, 50.322529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.015652, 41.343380, 50.612629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.656464, 41.270615, 50.452351>,  <48.440952, 41.226955, 50.356182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.656464, 41.270615, 50.452351>,  <49.015652, 41.343380, 50.612629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.656464, 41.270615, 50.452351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440030, 0.360965, 0.822239,
		-0.004942, 0.914664, -0.404184,
		-0.897969, -0.181916, -0.400696,
		48.387074, 41.216042, 50.332142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.578964, 41.982937, 50.536415>,  <49.015652, 41.343380, 50.612629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.578964, 41.982937, 50.536415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.318367, 41.679825, 50.550961>,  <48.162010, 41.497955, 50.559689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.318367, 41.679825, 50.550961>,  <48.578964, 41.982937, 50.536415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.318367, 41.679825, 50.550961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430046, 0.408361, 0.805172,
		-0.624995, 0.508926, -0.591926,
		-0.651492, -0.757784, 0.036362,
		48.122921, 41.452488, 50.561871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996288, 42.263721, 50.930134>,  <48.578964, 41.982937, 50.536415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996288, 42.263721, 50.930134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.912529, 41.872589, 50.929207>,  <47.862274, 41.637909, 50.928650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.912529, 41.872589, 50.929207>,  <47.996288, 42.263721, 50.930134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.912529, 41.872589, 50.929207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534251, 0.112425, 0.837817,
		-0.818979, 0.176678, -0.545947,
		-0.209402, -0.977827, -0.002316,
		47.849709, 41.579243, 50.928513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452984, 42.225346, 51.299385>,  <47.996288, 42.263721, 50.930134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452984, 42.225346, 51.299385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.512596, 41.829811, 51.298965>,  <47.548363, 41.592491, 51.298714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.512596, 41.829811, 51.298965>,  <47.452984, 42.225346, 51.299385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512596, 41.829811, 51.298965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692394, -0.105113, 0.713822,
		-0.705961, -0.105651, -0.700327,
		0.149030, -0.988832, -0.001053,
		47.557304, 41.533161, 51.298649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788395, 41.913074, 51.402332>,  <47.452984, 42.225346, 51.299385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788395, 41.913074, 51.402332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.033112, 41.610794, 51.495823>,  <47.179943, 41.429424, 51.551918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.033112, 41.610794, 51.495823>,  <46.788395, 41.913074, 51.402332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.033112, 41.610794, 51.495823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620751, -0.275529, 0.733997,
		-0.490287, -0.594135, -0.637669,
		0.611790, -0.755703, 0.233722,
		47.216648, 41.384083, 51.565941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350517, 41.421272, 51.554867>,  <46.788395, 41.913074, 51.402332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350517, 41.421272, 51.554867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.700874, 41.327957, 51.723812>,  <46.911087, 41.271969, 51.825180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.700874, 41.327957, 51.723812>,  <46.350517, 41.421272, 51.554867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700874, 41.327957, 51.723812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458061, -0.126916, 0.879814,
		-0.151663, -0.964085, -0.218033,
		0.875887, -0.233308, 0.422361,
		46.963642, 41.257973, 51.850521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221924, 40.760593, 51.829704>,  <46.350517, 41.421272, 51.554867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221924, 40.760593, 51.829704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.526863, 40.935966, 52.020115>,  <46.709827, 41.041191, 52.134361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.526863, 40.935966, 52.020115>,  <46.221924, 40.760593, 51.829704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526863, 40.935966, 52.020115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478096, -0.114198, 0.870852,
		0.436173, -0.891478, 0.122555,
		0.762350, 0.438435, 0.476022,
		46.755569, 41.067497, 52.162922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414471, 40.329437, 52.402645>,  <46.221924, 40.760593, 51.829704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414471, 40.329437, 52.402645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.552208, 40.688721, 52.511940>,  <46.634850, 40.904289, 52.577518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.552208, 40.688721, 52.511940>,  <46.414471, 40.329437, 52.402645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552208, 40.688721, 52.511940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331996, -0.155734, 0.930336,
		0.878184, -0.411066, 0.244575,
		0.344341, 0.898204, 0.273236,
		46.655510, 40.958183, 52.593910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697723, 40.196060, 53.046787>,  <46.414471, 40.329437, 52.402645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697723, 40.196060, 53.046787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.649422, 40.592949, 53.058868>,  <46.620441, 40.831081, 53.066116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.649422, 40.592949, 53.058868>,  <46.697723, 40.196060, 53.046787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649422, 40.592949, 53.058868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332785, -0.069122, 0.940466,
		0.935240, 0.103513, 0.338543,
		-0.120752, 0.992223, 0.030198,
		46.613197, 40.890617, 53.067928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150814, 40.419018, 53.568863>,  <46.697723, 40.196060, 53.046787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150814, 40.419018, 53.568863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.874023, 40.701981, 53.511250>,  <46.707951, 40.871758, 53.476681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.874023, 40.701981, 53.511250>,  <47.150814, 40.419018, 53.568863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874023, 40.701981, 53.511250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391216, -0.199771, 0.898355,
		0.606730, 0.677987, 0.414985,
		-0.691975, 0.707407, -0.144032,
		46.666431, 40.914204, 53.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138332, 40.887653, 54.223942>,  <47.150814, 40.419018, 53.568863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138332, 40.887653, 54.223942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.788109, 40.951439, 54.041531>,  <46.577972, 40.989712, 53.932083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.788109, 40.951439, 54.041531>,  <47.138332, 40.887653, 54.223942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788109, 40.951439, 54.041531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432351, 0.162521, 0.886938,
		0.215551, 0.973734, -0.073352,
		-0.875563, 0.159467, -0.456027,
		46.525440, 40.999279, 53.904724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891167, 41.510906, 54.570389>,  <47.138332, 40.887653, 54.223942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891167, 41.510906, 54.570389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.570763, 41.347458, 54.395386>,  <46.378521, 41.249390, 54.290382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.570763, 41.347458, 54.395386>,  <46.891167, 41.510906, 54.570389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570763, 41.347458, 54.395386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522453, 0.120347, 0.844132,
		-0.292278, 0.904735, -0.309885,
		-0.801009, -0.408622, -0.437507,
		46.330460, 41.224873, 54.264133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320393, 41.946884, 54.860008>,  <46.891167, 41.510906, 54.570389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320393, 41.946884, 54.860008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.145126, 41.617973, 54.714752>,  <46.039967, 41.420628, 54.627598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.145126, 41.617973, 54.714752>,  <46.320393, 41.946884, 54.860008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145126, 41.617973, 54.714752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506157, -0.108149, 0.855633,
		-0.742841, 0.558716, -0.368814,
		-0.438169, -0.822278, -0.363136,
		46.013676, 41.371288, 54.605812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509674, 41.980312, 54.858208>,  <46.320393, 41.946884, 54.860008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509674, 41.980312, 54.858208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.589928, 41.588539, 54.866737>,  <45.638081, 41.353474, 54.871857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.589928, 41.588539, 54.866737>,  <45.509674, 41.980312, 54.858208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589928, 41.588539, 54.866737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468438, -0.076797, 0.880152,
		-0.860413, -0.186581, -0.474212,
		0.200638, -0.979434, 0.021324,
		45.650120, 41.294708, 54.873135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931320, 42.412617, 54.692101>,  <45.509674, 41.980312, 54.858208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931320, 42.412617, 54.692101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.666992, 42.712662, 54.681915>,  <44.508396, 42.892689, 54.675804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.666992, 42.712662, 54.681915>,  <44.931320, 42.412617, 54.692101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666992, 42.712662, 54.681915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488485, 0.404084, -0.773368,
		-0.569825, -0.523495, -0.633445,
		-0.660819, 0.750113, -0.025463,
		44.468746, 42.937695, 54.674278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718884, 42.530231, 53.987534>,  <44.931320, 42.412617, 54.692101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718884, 42.530231, 53.987534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.642403, 42.875435, 54.174576>,  <44.596516, 43.082558, 54.286800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.642403, 42.875435, 54.174576>,  <44.718884, 42.530231, 53.987534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642403, 42.875435, 54.174576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460572, 0.499577, -0.733686,
		-0.866784, 0.075083, -0.492999,
		-0.191204, 0.863009, 0.467607,
		44.585041, 43.134338, 54.314857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704304, 42.879742, 53.502602>,  <44.718884, 42.530231, 53.987534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704304, 42.879742, 53.502602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.748268, 43.180145, 53.763035>,  <44.774647, 43.360386, 53.919296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.748268, 43.180145, 53.763035>,  <44.704304, 42.879742, 53.502602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748268, 43.180145, 53.763035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415174, 0.560479, -0.716585,
		-0.903078, 0.349072, -0.250197,
		0.109909, 0.751008, 0.651082,
		44.781242, 43.405449, 53.958359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371075, 43.466976, 53.325832>,  <44.704304, 42.879742, 53.502602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371075, 43.466976, 53.325832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.657005, 43.629921, 53.553192>,  <44.828564, 43.727688, 53.689606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.657005, 43.629921, 53.553192>,  <44.371075, 43.466976, 53.325832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657005, 43.629921, 53.553192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265784, 0.593550, -0.759643,
		-0.646821, 0.694086, 0.316017,
		0.714830, 0.407361, 0.568397,
		44.871452, 43.752129, 53.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601524, 44.044933, 52.991489>,  <44.371075, 43.466976, 53.325832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601524, 44.044933, 52.991489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.901428, 43.974213, 53.246552>,  <45.081371, 43.931782, 53.399590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.901428, 43.974213, 53.246552>,  <44.601524, 44.044933, 52.991489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901428, 43.974213, 53.246552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656070, 0.324227, -0.681505,
		-0.086254, 0.929310, 0.359086,
		0.749755, -0.176803, 0.637658,
		45.126354, 43.921173, 53.437847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
