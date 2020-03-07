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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<37.065456, 52.705204, 49.913776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153038, 53.060108, 49.751377>,  <37.205585, 53.273048, 49.653938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153038, 53.060108, 49.751377>,  <37.065456, 52.705204, 49.913776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153038, 53.060108, 49.751377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569472, 0.221678, 0.791555,
		0.792314, -0.404517, -0.456731,
		0.218950, 0.887256, -0.406000,
		37.218723, 53.326286, 49.629578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808620, 52.750603, 49.758835>,  <37.065456, 52.705204, 49.913776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808620, 52.750603, 49.758835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611008, 53.083366, 49.859917>,  <37.492439, 53.283024, 49.920567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611008, 53.083366, 49.859917>,  <37.808620, 52.750603, 49.758835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611008, 53.083366, 49.859917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505842, 0.038621, 0.861761,
		0.707144, 0.553571, -0.439893,
		-0.494036, 0.831906, 0.252708,
		37.462795, 53.332939, 49.935730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231415, 53.208466, 50.137547>,  <37.808620, 52.750603, 49.758835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231415, 53.208466, 50.137547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892353, 53.383980, 50.256851>,  <37.688915, 53.489288, 50.328434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892353, 53.383980, 50.256851>,  <38.231415, 53.208466, 50.137547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892353, 53.383980, 50.256851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403590, 0.168367, 0.899315,
		0.344387, 0.882679, -0.319805,
		-0.847651, 0.438782, 0.298257,
		37.638058, 53.515614, 50.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891495, 53.124790, 50.370293>,  <38.231415, 53.208466, 50.137547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891495, 53.124790, 50.370293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748203, 53.137344, 50.743534>,  <38.662228, 53.144878, 50.967480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748203, 53.137344, 50.743534>,  <38.891495, 53.124790, 50.370293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748203, 53.137344, 50.743534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926281, -0.113248, 0.359414,
		0.116953, 0.993071, 0.011497,
		-0.358225, 0.031385, 0.933107,
		38.640736, 53.146759, 51.023468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279694, 53.639420, 50.802876>,  <38.891495, 53.124790, 50.370293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279694, 53.639420, 50.802876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142735, 53.342270, 51.032974>,  <39.060558, 53.163982, 51.171032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142735, 53.342270, 51.032974>,  <39.279694, 53.639420, 50.802876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142735, 53.342270, 51.032974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932005, -0.191080, 0.307986,
		-0.118875, 0.641586, 0.757783,
		-0.342397, -0.742870, 0.575247,
		39.040016, 53.119408, 51.205547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360222, 53.773087, 51.486767>,  <39.279694, 53.639420, 50.802876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360222, 53.773087, 51.486767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394714, 53.391426, 51.372112>,  <39.415409, 53.162430, 51.303322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394714, 53.391426, 51.372112>,  <39.360222, 53.773087, 51.486767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394714, 53.391426, 51.372112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949714, -0.008196, 0.313010,
		-0.301008, -0.299211, 0.905465,
		0.086235, -0.954152, -0.286633,
		39.420586, 53.105179, 51.286121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554840, 53.355087, 52.003128>,  <39.360222, 53.773087, 51.486767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554840, 53.355087, 52.003128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762520, 53.177116, 51.711243>,  <39.887127, 53.070335, 51.536114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762520, 53.177116, 51.711243>,  <39.554840, 53.355087, 52.003128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762520, 53.177116, 51.711243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854644, 0.266372, 0.445680,
		-0.003919, -0.855038, 0.518551,
		0.519200, -0.444923, -0.729709,
		39.918282, 53.043640, 51.492329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090965, 52.884872, 52.316139>,  <39.554840, 53.355087, 52.003128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090965, 52.884872, 52.316139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185692, 53.046654, 51.962795>,  <40.242527, 53.143723, 51.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185692, 53.046654, 51.962795>,  <40.090965, 52.884872, 52.316139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185692, 53.046654, 51.962795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903310, 0.243088, 0.353467,
		0.357697, -0.881659, -0.307783,
		0.236819, 0.404458, -0.883363,
		40.256737, 53.167992, 51.697784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786888, 52.629219, 52.156910>,  <40.090965, 52.884872, 52.316139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786888, 52.629219, 52.156910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729572, 52.986755, 51.986961>,  <40.695183, 53.201279, 51.884991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729572, 52.986755, 51.986961>,  <40.786888, 52.629219, 52.156910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729572, 52.986755, 51.986961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807927, 0.353594, 0.471408,
		0.571596, -0.275717, -0.772825,
		-0.143291, 0.893841, -0.424872,
		40.686584, 53.254910, 51.859501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461918, 52.768631, 52.017548>,  <40.786888, 52.629219, 52.156910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461918, 52.768631, 52.017548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234825, 53.095249, 52.059380>,  <41.098568, 53.291218, 52.084476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234825, 53.095249, 52.059380>,  <41.461918, 52.768631, 52.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234825, 53.095249, 52.059380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741547, 0.452105, 0.495690,
		0.357472, 0.358969, -0.862180,
		-0.567733, 0.816543, 0.104577,
		41.064507, 53.340214, 52.090752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648090, 53.226822, 51.594055>,  <41.461918, 52.768631, 52.017548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648090, 53.226822, 51.594055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533051, 53.460716, 51.897469>,  <41.464027, 53.601055, 52.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533051, 53.460716, 51.897469>,  <41.648090, 53.226822, 51.594055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533051, 53.460716, 51.897469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930104, 0.359438, 0.075565,
		-0.228459, 0.727246, -0.647240,
		-0.287597, 0.584738, 0.758531,
		41.446770, 53.636139, 52.125027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763069, 53.986099, 51.388111>,  <41.648090, 53.226822, 51.594055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763069, 53.986099, 51.388111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767113, 53.925819, 51.783524>,  <41.769539, 53.889652, 52.020771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767113, 53.925819, 51.783524>,  <41.763069, 53.986099, 51.388111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767113, 53.925819, 51.783524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949031, 0.312884, 0.037996,
		-0.315020, 0.937760, 0.146182,
		0.010107, -0.150701, 0.988528,
		41.770145, 53.880608, 52.080082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043289, 54.529564, 51.763435>,  <41.763069, 53.986099, 51.388111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043289, 54.529564, 51.763435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101871, 54.238743, 52.031750>,  <42.137020, 54.064251, 52.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101871, 54.238743, 52.031750>,  <42.043289, 54.529564, 51.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101871, 54.238743, 52.031750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947847, 0.297190, 0.115175,
		-0.283088, 0.618930, 0.732657,
		0.146453, -0.727051, 0.670782,
		42.145809, 54.020626, 52.232983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502121, 54.848892, 52.210892>,  <42.043289, 54.529564, 51.763435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502121, 54.848892, 52.210892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539722, 54.450855, 52.223263>,  <42.562283, 54.212032, 52.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539722, 54.450855, 52.223263>,  <42.502121, 54.848892, 52.210892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539722, 54.450855, 52.223263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994446, 0.092373, -0.050445,
		0.047340, 0.035496, 0.998248,
		0.094002, -0.995092, 0.030925,
		42.567924, 54.152328, 52.232540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968407, 54.645741, 52.741924>,  <42.502121, 54.848892, 52.210892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968407, 54.645741, 52.741924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966034, 54.322361, 52.506508>,  <42.964611, 54.128334, 52.365257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966034, 54.322361, 52.506508>,  <42.968407, 54.645741, 52.741924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966034, 54.322361, 52.506508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989140, -0.091176, 0.115275,
		-0.146855, -0.581464, 0.800208,
		-0.005932, -0.808447, -0.588539,
		42.964256, 54.079826, 52.329945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313625, 53.947594, 53.111073>,  <42.968407, 54.645741, 52.741924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313625, 53.947594, 53.111073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335445, 54.031540, 52.720589>,  <43.348537, 54.081909, 52.486298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335445, 54.031540, 52.720589>,  <43.313625, 53.947594, 53.111073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335445, 54.031540, 52.720589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993866, 0.082776, 0.073336,
		0.096197, -0.974219, -0.204066,
		0.054554, 0.209869, -0.976206,
		43.351810, 54.094501, 52.427727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015514, 54.132542, 52.967476>,  <43.313625, 53.947594, 53.111073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015514, 54.132542, 52.967476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926014, 54.235729, 52.591522>,  <43.872314, 54.297642, 52.365948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926014, 54.235729, 52.591522>,  <44.015514, 54.132542, 52.967476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926014, 54.235729, 52.591522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937788, 0.319672, -0.135508,
		0.265499, -0.911735, -0.313448,
		-0.223748, 0.257971, -0.939887,
		43.858891, 54.313122, 52.309555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682350, 53.958740, 52.568607>,  <44.015514, 54.132542, 52.967476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682350, 53.958740, 52.568607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466679, 54.257248, 52.412472>,  <44.337276, 54.436352, 52.318790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466679, 54.257248, 52.412472>,  <44.682350, 53.958740, 52.568607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466679, 54.257248, 52.412472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841137, 0.500335, -0.205313,
		0.042083, -0.439032, -0.897485,
		-0.539182, 0.746268, -0.390342,
		44.304924, 54.481129, 52.295368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829315, 54.176136, 51.828945>,  <44.682350, 53.958740, 52.568607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829315, 54.176136, 51.828945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719250, 54.528538, 51.982891>,  <44.653210, 54.739979, 52.075260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719250, 54.528538, 51.982891>,  <44.829315, 54.176136, 51.828945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719250, 54.528538, 51.982891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825277, 0.421796, -0.375507,
		-0.493157, 0.214294, -0.843134,
		-0.275162, 0.881003, 0.384864,
		44.636700, 54.792839, 52.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811039, 54.661148, 51.331013>,  <44.829315, 54.176136, 51.828945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811039, 54.661148, 51.331013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899750, 54.847557, 51.673622>,  <44.952976, 54.959404, 51.879189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899750, 54.847557, 51.673622>,  <44.811039, 54.661148, 51.331013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899750, 54.847557, 51.673622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732039, 0.500699, -0.461973,
		-0.644152, 0.729465, -0.230105,
		0.221781, 0.466027, 0.856523,
		44.966286, 54.987366, 51.930580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967369, 55.388027, 51.190258>,  <44.811039, 54.661148, 51.331013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967369, 55.388027, 51.190258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154053, 55.318016, 51.537025>,  <45.266064, 55.276009, 51.745087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154053, 55.318016, 51.537025>,  <44.967369, 55.388027, 51.190258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154053, 55.318016, 51.537025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786967, 0.529473, -0.316768,
		-0.403567, 0.830075, 0.384849,
		0.466708, -0.175027, 0.866920,
		45.294064, 55.265507, 51.797100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251091, 56.022156, 51.673290>,  <44.967369, 55.388027, 51.190258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251091, 56.022156, 51.673290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475788, 55.691235, 51.674805>,  <45.610607, 55.492683, 51.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475788, 55.691235, 51.674805>,  <45.251091, 56.022156, 51.673290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475788, 55.691235, 51.674805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780627, 0.528527, -0.333588,
		0.273977, 0.190347, 0.942711,
		0.561746, -0.827301, 0.003786,
		45.644310, 55.443043, 51.675941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662308, 56.031555, 52.314953>,  <45.251091, 56.022156, 51.673290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662308, 56.031555, 52.314953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829750, 55.847439, 52.001801>,  <45.930214, 55.736969, 51.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829750, 55.847439, 52.001801>,  <45.662308, 56.031555, 52.314953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829750, 55.847439, 52.001801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783615, 0.618791, 0.055179,
		0.459042, -0.636576, 0.619719,
		0.418602, -0.460291, -0.782882,
		45.955330, 55.709351, 51.766937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441441, 56.029396, 52.500046>,  <45.662308, 56.031555, 52.314953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441441, 56.029396, 52.500046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425117, 55.992619, 52.102074>,  <46.415321, 55.970554, 51.863293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425117, 55.992619, 52.102074>,  <46.441441, 56.029396, 52.500046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.425117, 55.992619, 52.102074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577763, 0.810230, -0.098572,
		0.815184, -0.578855, 0.020054,
		-0.040811, -0.091941, -0.994928,
		46.412872, 55.965034, 51.803596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084122, 55.899525, 52.034851>,  <46.441441, 56.029396, 52.500046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084122, 55.899525, 52.034851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841278, 56.110767, 51.797356>,  <46.695572, 56.237511, 51.654858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841278, 56.110767, 51.797356>,  <47.084122, 55.899525, 52.034851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841278, 56.110767, 51.797356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702293, 0.706175, -0.090004,
		0.371750, -0.471619, -0.799611,
		-0.607113, 0.528103, -0.593735,
		46.659145, 56.269199, 51.619236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365997, 56.148190, 51.391701>,  <47.084122, 55.899525, 52.034851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365997, 56.148190, 51.391701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074535, 56.390594, 51.519333>,  <46.899658, 56.536037, 51.595913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074535, 56.390594, 51.519333>,  <47.365997, 56.148190, 51.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074535, 56.390594, 51.519333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633474, 0.773442, -0.022336,
		-0.260327, 0.185855, -0.947464,
		-0.728657, 0.606009, 0.319082,
		46.855938, 56.572395, 51.615059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.041519, 55.918709, 51.322319>,  <47.365997, 56.148190, 51.391701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.041519, 55.918709, 51.322319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.210220, 55.732460, 51.633530>,  <48.311440, 55.620712, 51.820255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.210220, 55.732460, 51.633530>,  <48.041519, 55.918709, 51.322319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.210220, 55.732460, 51.633530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880719, 0.006387, -0.473596,
		0.215548, 0.884960, 0.412777,
		0.421750, -0.465623, 0.778024,
		48.336746, 55.592773, 51.866936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.585285, 56.291264, 51.532787>,  <48.041519, 55.918709, 51.322319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.585285, 56.291264, 51.532787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.636036, 55.903294, 51.615883>,  <48.666485, 55.670513, 51.665741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.636036, 55.903294, 51.615883>,  <48.585285, 56.291264, 51.532787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.636036, 55.903294, 51.615883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951459, 0.059798, -0.301909,
		0.280406, 0.235960, 0.930428,
		0.126877, -0.969921, 0.207739,
		48.674099, 55.612316, 51.678204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.045925, 56.257282, 52.053391>,  <48.585285, 56.291264, 51.532787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.045925, 56.257282, 52.053391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.089306, 55.934574, 51.821060>,  <49.115334, 55.740948, 51.681664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.089306, 55.934574, 51.821060>,  <49.045925, 56.257282, 52.053391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.089306, 55.934574, 51.821060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985733, 0.162927, -0.042258,
		0.128725, -0.567957, 0.812930,
		0.108447, -0.806771, -0.580827,
		49.121841, 55.692543, 51.646812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.704071, 56.369057, 51.962017>,  <49.045925, 56.257282, 52.053391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.704071, 56.369057, 51.962017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.647606, 56.018463, 51.777908>,  <49.613728, 55.808105, 51.667442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.647606, 56.018463, 51.777908>,  <49.704071, 56.369057, 51.962017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.647606, 56.018463, 51.777908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981808, -0.064304, -0.178656,
		0.126993, -0.477113, 0.869618,
		-0.141159, -0.876486, -0.460267,
		49.605259, 55.755516, 51.639828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.026157, 55.856934, 52.314899>,  <49.704071, 56.369057, 51.962017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.026157, 55.856934, 52.314899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.020073, 55.774048, 51.923630>,  <50.016422, 55.724316, 51.688866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.020073, 55.774048, 51.923630>,  <50.026157, 55.856934, 52.314899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.020073, 55.774048, 51.923630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999098, 0.035651, -0.023091,
		0.039657, -0.977645, 0.206488,
		-0.015213, -0.207218, -0.978177,
		50.015511, 55.711884, 51.630177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.351894, 55.118896, 52.250721>,  <50.026157, 55.856934, 52.314899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.351894, 55.118896, 52.250721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.376652, 55.396538, 51.963837>,  <50.391506, 55.563122, 51.791706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.376652, 55.396538, 51.963837>,  <50.351894, 55.118896, 52.250721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.376652, 55.396538, 51.963837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997365, -0.070250, 0.018084,
		-0.037832, -0.716441, -0.696621,
		0.061894, 0.694102, -0.717211,
		50.395222, 55.604767, 51.748672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.637630, 54.818531, 51.522186>,  <50.351894, 55.118896, 52.250721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.637630, 54.818531, 51.522186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.711555, 55.185593, 51.662899>,  <50.755909, 55.405830, 51.747326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.711555, 55.185593, 51.662899>,  <50.637630, 54.818531, 51.522186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.711555, 55.185593, 51.662899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965936, -0.235583, 0.107086,
		0.181143, 0.320012, -0.929935,
		0.184808, 0.917656, 0.351785,
		50.766998, 55.460888, 51.768436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.924480, 55.284569, 51.080524>,  <50.637630, 54.818531, 51.522186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.924480, 55.284569, 51.080524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.067711, 55.378109, 51.442097>,  <51.153648, 55.434235, 51.659039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.067711, 55.378109, 51.442097>,  <50.924480, 55.284569, 51.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.067711, 55.378109, 51.442097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929044, -0.185701, -0.319987,
		0.093032, 0.954373, -0.283754,
		0.358080, 0.233851, 0.903932,
		51.175137, 55.448265, 51.713276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.239506, 55.907730, 50.874584>,  <50.924480, 55.284569, 51.080524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.239506, 55.907730, 50.874584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411045, 55.724422, 51.185989>,  <51.513969, 55.614437, 51.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411045, 55.724422, 51.185989>,  <51.239506, 55.907730, 50.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.411045, 55.724422, 51.185989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834440, -0.129230, -0.535732,
		0.346116, 0.879369, 0.326978,
		0.428851, -0.458269, 0.778509,
		51.539700, 55.586941, 51.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.086464, 56.117985, 50.998409>,  <51.239506, 55.907730, 50.874584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.086464, 56.117985, 50.998409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.977993, 55.742317, 51.082726>,  <51.912910, 55.516918, 51.133316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.977993, 55.742317, 51.082726>,  <52.086464, 56.117985, 50.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.977993, 55.742317, 51.082726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772103, -0.343008, -0.534979,
		0.574736, 0.017679, 0.818148,
		-0.271174, -0.939166, 0.210789,
		51.896641, 55.460567, 51.145962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.649971, 55.811897, 51.404415>,  <52.086464, 56.117985, 50.998409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.649971, 55.811897, 51.404415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.455627, 55.518829, 51.213779>,  <52.339024, 55.342987, 51.099400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.455627, 55.518829, 51.213779>,  <52.649971, 55.811897, 51.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.455627, 55.518829, 51.213779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873036, -0.380677, -0.304784,
		0.041880, -0.564160, 0.824602,
		-0.485855, -0.732672, -0.476589,
		52.309872, 55.299026, 51.070801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.695309, 55.191620, 51.705078>,  <52.649971, 55.811897, 51.404415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.695309, 55.191620, 51.705078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.692162, 55.128159, 51.310158>,  <52.690273, 55.090080, 51.073204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.692162, 55.128159, 51.310158>,  <52.695309, 55.191620, 51.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.692162, 55.128159, 51.310158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928244, -0.368348, 0.051794,
		-0.371888, -0.916051, 0.150168,
		-0.007868, -0.158654, -0.987303,
		52.689800, 55.080563, 51.013966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.827930, 54.408833, 51.467541>,  <52.695309, 55.191620, 51.705078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.827930, 54.408833, 51.467541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.955585, 54.695221, 51.219173>,  <53.032181, 54.867054, 51.070152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.955585, 54.695221, 51.219173>,  <52.827930, 54.408833, 51.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.955585, 54.695221, 51.219173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930658, -0.360482, 0.062679,
		-0.178953, -0.597865, -0.781367,
		0.319142, 0.715969, -0.620917,
		53.051327, 54.910011, 51.032898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.430344, 54.081909, 51.040405>,  <52.827930, 54.408833, 51.467541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.430344, 54.081909, 51.040405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.465542, 54.480335, 51.044533>,  <53.486660, 54.719391, 51.047009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.465542, 54.480335, 51.044533>,  <53.430344, 54.081909, 51.040405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.465542, 54.480335, 51.044533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993359, -0.088518, 0.073504,
		0.074128, 0.003785, -0.997241,
		0.087995, 0.996067, 0.010321,
		53.491940, 54.779156, 51.047630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.713657, 53.793091, 51.631950>,  <53.430344, 54.081909, 51.040405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.713657, 53.793091, 51.631950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.003189, 53.938049, 51.866810>,  <54.176907, 54.025024, 52.007725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.003189, 53.938049, 51.866810>,  <53.713657, 53.793091, 51.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.003189, 53.938049, 51.866810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393892, -0.915704, 0.079598,
		0.566499, 0.173657, -0.805557,
		0.723829, 0.362395, 0.587147,
		54.220337, 54.046768, 52.042953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.307217, 53.529644, 51.452518>,  <53.713657, 53.793091, 51.631950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.307217, 53.529644, 51.452518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.424278, 53.634155, 51.820450>,  <54.494514, 53.696861, 52.041210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.424278, 53.634155, 51.820450>,  <54.307217, 53.529644, 51.452518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.424278, 53.634155, 51.820450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500583, -0.861462, 0.085436,
		0.814721, 0.435448, -0.382902,
		0.292653, 0.261281, 0.919830,
		54.512074, 53.712540, 52.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.980507, 53.742104, 51.590828>,  <54.307217, 53.529644, 51.452518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.980507, 53.742104, 51.590828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.836639, 53.537350, 51.902885>,  <54.750320, 53.414497, 52.090118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.836639, 53.537350, 51.902885>,  <54.980507, 53.742104, 51.590828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.836639, 53.537350, 51.902885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710460, -0.692244, -0.126667,
		0.604887, 0.508701, 0.612646,
		-0.359665, -0.511880, 0.780141,
		54.728741, 53.383785, 52.136929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.434967, 53.561607, 52.252125>,  <54.980507, 53.742104, 51.590828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.434967, 53.561607, 52.252125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.158852, 53.301147, 52.125946>,  <54.993183, 53.144871, 52.050240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.158852, 53.301147, 52.125946>,  <55.434967, 53.561607, 52.252125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.158852, 53.301147, 52.125946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706440, -0.700761, -0.099377,
		-0.156342, -0.291442, 0.943726,
		-0.690289, -0.651149, -0.315445,
		54.951763, 53.105804, 52.031311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.925003, 53.648026, 52.753658>,  <55.434967, 53.561607, 52.252125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.925003, 53.648026, 52.753658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.268906, 53.446732, 52.718857>,  <55.475246, 53.325954, 52.697975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.268906, 53.446732, 52.718857>,  <54.925003, 53.648026, 52.753658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.268906, 53.446732, 52.718857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243705, 0.254566, 0.935844,
		-0.448806, -0.825801, 0.341506,
		0.859757, -0.503238, -0.087001,
		55.526833, 53.295761, 52.692757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.107841, 52.973442, 53.207184>,  <54.925003, 53.648026, 52.753658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.107841, 52.973442, 53.207184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.408302, 53.221458, 53.116566>,  <55.588577, 53.370270, 53.062195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.408302, 53.221458, 53.116566>,  <55.107841, 52.973442, 53.207184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.408302, 53.221458, 53.116566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059740, 0.277927, 0.958743,
		0.657424, -0.733692, 0.171724,
		0.751149, 0.620042, -0.226547,
		55.633648, 53.407471, 53.048603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.669392, 52.865364, 53.678879>,  <55.107841, 52.973442, 53.207184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.669392, 52.865364, 53.678879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.730148, 53.235886, 53.540958>,  <55.766602, 53.458199, 53.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.730148, 53.235886, 53.540958>,  <55.669392, 52.865364, 53.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.730148, 53.235886, 53.540958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036814, 0.353912, 0.934554,
		0.987712, -0.129256, 0.087856,
		0.151890, 0.926304, -0.344805,
		55.775715, 53.513779, 53.437515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.299629, 52.726971, 54.077358>,  <55.669392, 52.865364, 53.678879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.299629, 52.726971, 54.077358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.115852, 53.081081, 54.048523>,  <56.005589, 53.293549, 54.031223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.115852, 53.081081, 54.048523>,  <56.299629, 52.726971, 54.077358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.115852, 53.081081, 54.048523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100608, 0.132504, 0.986063,
		0.882493, 0.445784, -0.149944,
		-0.459439, 0.885279, -0.072084,
		55.978020, 53.346664, 54.026897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.761215, 53.314079, 54.320004>,  <56.299629, 52.726971, 54.077358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.761215, 53.314079, 54.320004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.368370, 53.351299, 54.385487>,  <56.132664, 53.373631, 54.424778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.368370, 53.351299, 54.385487>,  <56.761215, 53.314079, 54.320004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.368370, 53.351299, 54.385487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171746, 0.086150, 0.981367,
		0.077211, 0.991928, -0.100589,
		-0.982111, 0.093048, 0.163708,
		56.073738, 53.379215, 54.434601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.582474, 53.930035, 54.809647>,  <56.761215, 53.314079, 54.320004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.582474, 53.930035, 54.809647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.315445, 53.632660, 54.825863>,  <56.155228, 53.454235, 54.835594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.315445, 53.632660, 54.825863>,  <56.582474, 53.930035, 54.809647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.315445, 53.632660, 54.825863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213467, -0.138947, 0.967019,
		-0.713284, 0.654214, 0.251457,
		-0.667576, -0.743437, 0.040544,
		56.115173, 53.409630, 54.838028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.177620, 54.434052, 54.858330>,  <56.582474, 53.930035, 54.809647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.177620, 54.434052, 54.858330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.251381, 54.368935, 55.246040>,  <57.295639, 54.329865, 55.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.251381, 54.368935, 55.246040>,  <57.177620, 54.434052, 54.858330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.251381, 54.368935, 55.246040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926731, -0.299672, -0.226643,
		0.327361, 0.940050, 0.095606,
		0.184405, -0.162795, 0.969274,
		57.306702, 54.320095, 55.536823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.688492, 54.834110, 55.070663>,  <57.177620, 54.434052, 54.858330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.688492, 54.834110, 55.070663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.695076, 54.495556, 55.283592>,  <57.699028, 54.292423, 55.411350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.695076, 54.495556, 55.283592>,  <57.688492, 54.834110, 55.070663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.695076, 54.495556, 55.283592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966474, -0.122969, -0.225405,
		0.256238, 0.518186, 0.815982,
		0.016461, -0.846382, 0.532322,
		57.700016, 54.241642, 55.443287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.233902, 54.875408, 55.484985>,  <57.688492, 54.834110, 55.070663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.233902, 54.875408, 55.484985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.169235, 54.483528, 55.437576>,  <58.130436, 54.248402, 55.409130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.169235, 54.483528, 55.437576>,  <58.233902, 54.875408, 55.484985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.169235, 54.483528, 55.437576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900218, -0.097206, -0.424451,
		0.404314, -0.175318, 0.897660,
		-0.161671, -0.979701, -0.118522,
		58.120735, 54.189617, 55.402020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.783787, 54.395657, 55.825397>,  <58.233902, 54.875408, 55.484985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.783787, 54.395657, 55.825397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.624390, 54.193218, 55.519440>,  <58.528751, 54.071754, 55.335865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.624390, 54.193218, 55.519440>,  <58.783787, 54.395657, 55.825397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.624390, 54.193218, 55.519440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917019, -0.204614, -0.342359,
		0.016759, -0.837852, 0.545640,
		-0.398492, -0.506100, -0.764897,
		58.504841, 54.041389, 55.289970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.937748, 53.608032, 55.857689>,  <58.783787, 54.395657, 55.825397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.937748, 53.608032, 55.857689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.913101, 53.744061, 55.482338>,  <58.898315, 53.825680, 55.257126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.913101, 53.744061, 55.482338>,  <58.937748, 53.608032, 55.857689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.913101, 53.744061, 55.482338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993602, -0.068263, -0.089978,
		-0.094656, -0.937918, -0.333692,
		-0.061613, 0.340073, -0.938378,
		58.894619, 53.846081, 55.200825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.205280, 53.107742, 55.419994>,  <58.937748, 53.608032, 55.857689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.205280, 53.107742, 55.419994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.245041, 53.474003, 55.264198>,  <59.268898, 53.693760, 55.170723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.245041, 53.474003, 55.264198>,  <59.205280, 53.107742, 55.419994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.245041, 53.474003, 55.264198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988744, -0.134879, -0.064754,
		-0.111826, -0.378667, -0.918753,
		0.099400, 0.915652, -0.389488,
		59.274860, 53.748699, 55.147350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.582458, 53.122391, 54.767109>,  <59.205280, 53.107742, 55.419994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.582458, 53.122391, 54.767109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.646339, 53.475254, 54.944332>,  <59.684669, 53.686970, 55.050667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.646339, 53.475254, 54.944332>,  <59.582458, 53.122391, 54.767109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.646339, 53.475254, 54.944332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973901, -0.214125, 0.075287,
		0.161284, 0.419469, -0.893327,
		0.159703, 0.882154, 0.443056,
		59.694252, 53.739899, 55.077248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.055099, 53.550228, 54.445454>,  <59.582458, 53.122391, 54.767109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.055099, 53.550228, 54.445454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.085052, 53.648170, 54.832119>,  <60.103024, 53.706936, 55.064117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.085052, 53.648170, 54.832119>,  <60.055099, 53.550228, 54.445454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.085052, 53.648170, 54.832119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919521, -0.392037, 0.028069,
		0.385840, 0.886766, -0.254507,
		0.074885, 0.244855, 0.966663,
		60.107517, 53.721626, 55.122116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.327763, 54.334099, 54.423206>,  <60.055099, 53.550228, 54.445454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.327763, 54.334099, 54.423206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.103439, 54.618874, 54.254143>,  <59.968845, 54.789738, 54.152706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.103439, 54.618874, 54.254143>,  <60.327763, 54.334099, 54.423206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.103439, 54.618874, 54.254143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826585, 0.452197, -0.335075,
		-0.047425, -0.537277, -0.842071,
		-0.560810, 0.711934, -0.422660,
		59.935196, 54.832455, 54.127346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.937206, 53.895073, 54.491859>,  <60.327763, 54.334099, 54.423206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.937206, 53.895073, 54.491859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.830620, 53.658482, 54.796268>,  <60.766666, 53.516525, 54.978912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.830620, 53.658482, 54.796268>,  <60.937206, 53.895073, 54.491859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.830620, 53.658482, 54.796268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723837, -0.398558, -0.563215,
		0.636440, -0.700931, -0.321932,
		-0.266467, -0.591478, 0.761018,
		60.750679, 53.481037, 55.024574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.851818, 53.199772, 54.236584>,  <60.937206, 53.895073, 54.491859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.851818, 53.199772, 54.236584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.633369, 53.225796, 54.570656>,  <60.502300, 53.241409, 54.771099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.633369, 53.225796, 54.570656>,  <60.851818, 53.199772, 54.236584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.633369, 53.225796, 54.570656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779089, -0.405832, -0.477829,
		0.307852, -0.911629, 0.272323,
		-0.546120, 0.065064, 0.835176,
		60.469532, 53.245316, 54.821209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.712116, 52.559795, 53.790779>,  <60.851818, 53.199772, 54.236584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.712116, 52.559795, 53.790779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.526276, 52.835869, 53.568863>,  <60.414772, 53.001514, 53.435711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.526276, 52.835869, 53.568863>,  <60.712116, 52.559795, 53.790779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.526276, 52.835869, 53.568863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768527, 0.625507, 0.134565,
		0.439901, -0.363854, -0.821034,
		-0.464600, 0.690183, -0.554792,
		60.386894, 53.042923, 53.402424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.124714, 52.859440, 53.189827>,  <60.712116, 52.559795, 53.790779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.124714, 52.859440, 53.189827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.870850, 53.119019, 53.357674>,  <60.718533, 53.274765, 53.458382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.870850, 53.119019, 53.357674>,  <61.124714, 52.859440, 53.189827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.870850, 53.119019, 53.357674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772649, 0.543359, 0.328291,
		-0.014959, 0.532569, -0.846254,
		-0.634658, 0.648946, 0.419617,
		60.680450, 53.313702, 53.483559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.276196, 53.698059, 53.129883>,  <61.124714, 52.859440, 53.189827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.276196, 53.698059, 53.129883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.081497, 53.623398, 53.471230>,  <60.964680, 53.578602, 53.676037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.081497, 53.623398, 53.471230>,  <61.276196, 53.698059, 53.129883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.081497, 53.623398, 53.471230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744150, 0.423051, 0.516981,
		-0.457516, 0.886672, -0.067018,
		-0.486745, -0.186656, 0.853369,
		60.935474, 53.567402, 53.727242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.736534, 53.636177, 52.575718>,  <61.276196, 53.698059, 53.129883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.736534, 53.636177, 52.575718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.830833, 53.987400, 52.409130>,  <61.887413, 54.198132, 52.309177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.830833, 53.987400, 52.409130>,  <61.736534, 53.636177, 52.575718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.830833, 53.987400, 52.409130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816213, 0.053696, 0.575251,
		0.527463, -0.475541, -0.704019,
		0.235753, 0.878053, -0.416465,
		61.901558, 54.250816, 52.284191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.414394, 53.727642, 52.542110>,  <61.736534, 53.636177, 52.575718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.414394, 53.727642, 52.542110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.307686, 54.112991, 52.553009>,  <62.243660, 54.344200, 52.559547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.307686, 54.112991, 52.553009>,  <62.414394, 53.727642, 52.542110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.307686, 54.112991, 52.553009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880020, 0.231970, 0.414433,
		0.392933, 0.134538, -0.909672,
		-0.266773, 0.963374, 0.027248,
		62.227654, 54.402004, 52.561184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.064705, 54.051109, 52.161686>,  <62.414394, 53.727642, 52.542110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.064705, 54.051109, 52.161686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.869568, 54.309006, 52.397079>,  <62.752487, 54.463745, 52.538315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.869568, 54.309006, 52.397079>,  <63.064705, 54.051109, 52.161686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.869568, 54.309006, 52.397079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869100, 0.295638, 0.396565,
		0.081704, 0.704914, -0.704571,
		-0.487842, 0.644744, 0.588486,
		62.723217, 54.502430, 52.573624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.372868, 54.782520, 52.280590>,  <63.064705, 54.051109, 52.161686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.372868, 54.782520, 52.280590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.135910, 54.736561, 52.599556>,  <62.993736, 54.708984, 52.790936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.135910, 54.736561, 52.599556>,  <63.372868, 54.782520, 52.280590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.135910, 54.736561, 52.599556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742551, 0.306109, 0.595747,
		-0.312546, 0.945037, -0.096019,
		-0.592396, -0.114899, 0.797412,
		62.958191, 54.702091, 52.838779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.302814, 55.361965, 52.713413>,  <63.372868, 54.782520, 52.280590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.302814, 55.361965, 52.713413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.288681, 55.010605, 52.904060>,  <63.280201, 54.799789, 53.018448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.288681, 55.010605, 52.904060>,  <63.302814, 55.361965, 52.713413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.288681, 55.010605, 52.904060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836485, 0.234966, 0.495060,
		-0.546849, 0.416178, 0.726465,
		-0.035338, -0.878400, 0.476618,
		63.278080, 54.747086, 53.047047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.178719, 55.583035, 53.332626>,  <63.302814, 55.361965, 52.713413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.178719, 55.583035, 53.332626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.961227, 55.454399, 53.642708>,  <62.830734, 55.377220, 53.828758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.961227, 55.454399, 53.642708>,  <63.178719, 55.583035, 53.332626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.961227, 55.454399, 53.642708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813263, -0.430016, 0.392034,
		0.207277, 0.843604, 0.495346,
		-0.543728, -0.321587, 0.775204,
		62.798107, 55.357922, 53.875271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.533401, 55.669838, 53.932022>,  <63.178719, 55.583035, 53.332626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.533401, 55.669838, 53.932022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.258354, 55.403946, 54.048862>,  <63.093327, 55.244411, 54.118969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.258354, 55.403946, 54.048862>,  <63.533401, 55.669838, 53.932022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.258354, 55.403946, 54.048862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683791, -0.457567, 0.568386,
		-0.244164, 0.590569, 0.769163,
		-0.687615, -0.664726, 0.292104,
		63.052071, 55.204529, 54.136494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.838886, 56.245182, 53.878696>,  <63.533401, 55.669838, 53.932022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.838886, 56.245182, 53.878696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.193237, 56.343178, 53.721115>,  <64.405846, 56.401978, 53.626568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.193237, 56.343178, 53.721115>,  <63.838886, 56.245182, 53.878696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.193237, 56.343178, 53.721115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237684, 0.489574, 0.838942,
		0.398400, -0.836837, 0.375473,
		0.885880, 0.244990, -0.393950,
		64.459000, 56.416676, 53.602928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.453171, 56.068237, 54.323322>,  <63.838886, 56.245182, 53.878696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.453171, 56.068237, 54.323322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.512482, 56.396996, 54.103325>,  <64.548073, 56.594250, 53.971325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.512482, 56.396996, 54.103325>,  <64.453171, 56.068237, 54.323322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.512482, 56.396996, 54.103325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414652, 0.453222, 0.789084,
		0.897817, -0.345065, -0.273596,
		0.148286, 0.821900, -0.549993,
		64.556969, 56.643566, 53.938328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.238914, 56.262753, 54.146713>,  <64.453171, 56.068237, 54.323322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.238914, 56.262753, 54.146713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.974373, 56.560600, 54.182846>,  <64.815651, 56.739307, 54.204525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.974373, 56.560600, 54.182846>,  <65.238914, 56.262753, 54.146713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.974373, 56.560600, 54.182846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598849, 0.451654, 0.661354,
		0.451654, 0.491485, -0.744615,
		-0.661354, 0.744615, 0.090333,
		64.775970, 56.783985, 54.209946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.516891, 56.976524, 54.034706>,  <65.238914, 56.262753, 54.146713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.516891, 56.976524, 54.034706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.222794, 57.032211, 54.300049>,  <65.046333, 57.065624, 54.459255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.222794, 57.032211, 54.300049>,  <65.516891, 56.976524, 54.034706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.222794, 57.032211, 54.300049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572146, 0.652211, 0.497263,
		-0.363422, 0.745144, -0.559182,
		-0.735237, 0.139217, 0.663359,
		65.002220, 57.073978, 54.499058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.521790, 57.682674, 54.097637>,  <65.516891, 56.976524, 54.034706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.521790, 57.682674, 54.097637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.367149, 57.528839, 54.432930>,  <65.274368, 57.436539, 54.634106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.367149, 57.528839, 54.432930>,  <65.521790, 57.682674, 54.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.367149, 57.528839, 54.432930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726346, 0.433104, 0.533706,
		-0.568297, 0.815178, 0.111902,
		-0.386600, -0.384584, 0.838234,
		65.251167, 57.413464, 54.684399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.397888, 58.225105, 54.661121>,  <65.521790, 57.682674, 54.097637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.397888, 58.225105, 54.661121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.498581, 57.871475, 54.818619>,  <65.558998, 57.659298, 54.913116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.498581, 57.871475, 54.818619>,  <65.397888, 58.225105, 54.661121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.498581, 57.871475, 54.818619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791881, 0.422052, 0.441359,
		-0.556377, 0.200697, 0.806328,
		0.251732, -0.884078, 0.393748,
		65.574104, 57.606251, 54.936745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.316391, 58.213394, 55.483894>,  <65.397888, 58.225105, 54.661121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.316391, 58.213394, 55.483894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.595093, 57.998810, 55.293427>,  <65.762314, 57.870060, 55.179146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.595093, 57.998810, 55.293427>,  <65.316391, 58.213394, 55.483894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.595093, 57.998810, 55.293427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715393, 0.568121, 0.406757,
		0.052310, -0.624058, 0.779625,
		0.696761, -0.536461, -0.476165,
		65.804123, 57.837872, 55.150578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.008148, 57.944790, 55.634689>,  <65.316391, 58.213394, 55.483894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.008148, 57.944790, 55.634689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.189819, 57.708580, 55.901527>,  <66.298820, 57.566856, 56.061630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.189819, 57.708580, 55.901527>,  <66.008148, 57.944790, 55.634689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.189819, 57.708580, 55.901527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888801, 0.248793, -0.384882,
		0.061314, 0.767714, 0.637852,
		0.454173, -0.590523, 0.667091,
		66.326073, 57.531422, 56.101654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.403915, 58.407768, 55.143509>,  <66.008148, 57.944790, 55.634689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.403915, 58.407768, 55.143509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.418648, 58.597164, 55.495522>,  <66.427483, 58.710800, 55.706730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.418648, 58.597164, 55.495522>,  <66.403915, 58.407768, 55.143509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.418648, 58.597164, 55.495522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995295, 0.061593, -0.074788,
		-0.089615, 0.878645, -0.468990,
		0.036826, 0.473486, 0.880031,
		66.429695, 58.739208, 55.759529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.860153, 59.006264, 55.070457>,  <66.403915, 58.407768, 55.143509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.860153, 59.006264, 55.070457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.891563, 58.803596, 55.413879>,  <66.910408, 58.681995, 55.619934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.891563, 58.803596, 55.413879>,  <66.860153, 59.006264, 55.070457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.891563, 58.803596, 55.413879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996822, 0.051465, -0.060798,
		-0.013381, 0.860605, 0.509098,
		0.078524, -0.506666, 0.858559,
		66.915123, 58.651596, 55.671448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.018845, 59.517117, 55.622536>,  <66.860153, 59.006264, 55.070457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.018845, 59.517117, 55.622536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.161232, 59.143326, 55.620049>,  <67.246666, 58.919052, 55.618557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.161232, 59.143326, 55.620049>,  <67.018845, 59.517117, 55.622536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.161232, 59.143326, 55.620049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922650, 0.352501, -0.156397,
		0.148342, 0.049933, 0.987675,
		0.355966, -0.934478, -0.006220,
		67.268021, 58.862984, 55.618183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.439590, 59.129906, 56.173016>,  <67.018845, 59.517117, 55.622536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.439590, 59.129906, 56.173016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.529419, 59.104801, 55.784042>,  <67.583321, 59.089741, 55.550659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.529419, 59.104801, 55.784042>,  <67.439590, 59.129906, 56.173016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.529419, 59.104801, 55.784042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896052, 0.405478, 0.180770,
		0.382955, -0.911948, 0.147296,
		0.224578, -0.062758, -0.972433,
		67.596794, 59.085976, 55.492313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.223015, 58.798637, 56.068565>,  <67.439590, 59.129906, 56.173016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.223015, 58.798637, 56.068565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.084229, 59.015018, 55.762108>,  <68.000954, 59.144848, 55.578232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.084229, 59.015018, 55.762108>,  <68.223015, 58.798637, 56.068565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.084229, 59.015018, 55.762108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863605, 0.502879, -0.036044,
		0.365781, -0.674155, -0.641654,
		-0.346973, 0.540952, -0.766147,
		67.980133, 59.177303, 55.532265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.711166, 58.795212, 55.425056>,  <68.223015, 58.798637, 56.068565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.711166, 58.795212, 55.425056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.515541, 59.142578, 55.457687>,  <68.398163, 59.350998, 55.477268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.515541, 59.142578, 55.457687>,  <68.711166, 58.795212, 55.425056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.515541, 59.142578, 55.457687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872213, 0.486135, 0.054006,
		0.007242, 0.097568, -0.995202,
		-0.489072, 0.868420, 0.081580,
		68.368820, 59.403103, 55.482162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.189384, 58.235149, 55.711113>,  <68.711166, 58.795212, 55.425056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.189384, 58.235149, 55.711113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.497772, 58.363564, 55.491096>,  <69.682808, 58.440613, 55.359089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.497772, 58.363564, 55.491096>,  <69.189384, 58.235149, 55.711113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.497772, 58.363564, 55.491096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587365, -0.692269, 0.419245,
		-0.246183, -0.646298, -0.722283,
		0.770971, 0.321033, -0.550038,
		69.729065, 58.459873, 55.326084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.260475, 57.698074, 55.343906>,  <69.189384, 58.235149, 55.711113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.260475, 57.698074, 55.343906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.555038, 57.953354, 55.433716>,  <69.731773, 58.106522, 55.487602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.555038, 57.953354, 55.433716>,  <69.260475, 57.698074, 55.343906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.555038, 57.953354, 55.433716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554811, -0.759594, 0.339413,
		0.387158, -0.125379, -0.913449,
		0.736406, 0.638198, 0.224521,
		69.775963, 58.144814, 55.501072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.881035, 57.633362, 55.009930>,  <69.260475, 57.698074, 55.343906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.881035, 57.633362, 55.009930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.998962, 57.786034, 55.360336>,  <70.069717, 57.877636, 55.570580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.998962, 57.786034, 55.360336>,  <69.881035, 57.633362, 55.009930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.998962, 57.786034, 55.360336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644192, -0.756500, 0.112802,
		0.705759, 0.531066, -0.468906,
		0.294822, 0.381677, 0.876015,
		70.087410, 57.900536, 55.623142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.613029, 57.519367, 55.035530>,  <69.881035, 57.633362, 55.009930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.613029, 57.519367, 55.035530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.432297, 57.510651, 55.392265>,  <70.323860, 57.505421, 55.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.432297, 57.510651, 55.392265>,  <70.613029, 57.519367, 55.035530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.432297, 57.510651, 55.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568589, -0.777376, 0.269061,
		0.687430, 0.628659, 0.363631,
		-0.451826, -0.021796, 0.891840,
		70.296745, 57.504112, 55.659817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.019745, 57.543892, 55.681705>,  <70.613029, 57.519367, 55.035530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.019745, 57.543892, 55.681705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.684570, 57.327660, 55.711731>,  <70.483467, 57.197918, 55.729744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.684570, 57.327660, 55.711731>,  <71.019745, 57.543892, 55.681705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.684570, 57.327660, 55.711731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541612, -0.806703, 0.236405,
		-0.067244, 0.238746, 0.968751,
		-0.837935, -0.540584, 0.075062,
		70.433189, 57.165485, 55.734249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.997948, 57.208252, 56.347710>,  <71.019745, 57.543892, 55.681705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.997948, 57.208252, 56.347710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.798210, 57.002880, 56.068558>,  <70.678368, 56.879658, 55.901066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.798210, 57.002880, 56.068558>,  <70.997948, 57.208252, 56.347710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.798210, 57.002880, 56.068558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580677, -0.796138, 0.170232,
		-0.643013, -0.320239, 0.695688,
		-0.499348, -0.513431, -0.697882,
		70.648407, 56.848850, 55.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.095146, 57.205605, 57.038589>,  <70.997948, 57.208252, 56.347710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.095146, 57.205605, 57.038589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.763794, 57.295288, 56.833260>,  <70.564980, 57.349098, 56.710060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.763794, 57.295288, 56.833260>,  <71.095146, 57.205605, 57.038589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.763794, 57.295288, 56.833260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426597, -0.341382, -0.837540,
		-0.363028, -0.912790, 0.187147,
		-0.828387, 0.224214, -0.513325,
		70.515274, 57.362549, 56.679264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.853264, 56.861607, 57.064873>,  <71.095146, 57.205605, 57.038589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.853264, 56.861607, 57.064873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.783600, 57.202785, 57.261711>,  <71.741798, 57.407494, 57.379814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.783600, 57.202785, 57.261711>,  <71.853264, 56.861607, 57.064873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.783600, 57.202785, 57.261711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984663, 0.156064, 0.077993,
		-0.010275, 0.498129, -0.867042,
		-0.174165, 0.852943, 0.492093,
		71.731354, 57.458668, 57.409340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.345497, 57.418213, 56.676716>,  <71.853264, 56.861607, 57.064873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.345497, 57.418213, 56.676716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.261986, 57.496216, 57.060043>,  <72.211876, 57.543018, 57.290039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.261986, 57.496216, 57.060043>,  <72.345497, 57.418213, 56.676716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.261986, 57.496216, 57.060043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977203, 0.080218, 0.196571,
		-0.038542, 0.977516, -0.207311,
		-0.208781, 0.195009, 0.958323,
		72.199348, 57.554718, 57.347542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.661552, 58.062374, 57.009560>,  <72.345497, 57.418213, 56.676716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.661552, 58.062374, 57.009560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.588631, 57.787586, 57.290939>,  <72.544876, 57.622715, 57.459766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.588631, 57.787586, 57.290939>,  <72.661552, 58.062374, 57.009560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.588631, 57.787586, 57.290939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970074, -0.008975, 0.242645,
		-0.160375, 0.726633, 0.668045,
		-0.182310, -0.686967, 0.703449,
		72.533936, 57.581497, 57.501972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.864723, 58.121456, 57.772190>,  <72.661552, 58.062374, 57.009560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.864723, 58.121456, 57.772190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.865166, 57.727196, 57.704674>,  <72.865433, 57.490639, 57.664165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.865166, 57.727196, 57.704674>,  <72.864723, 58.121456, 57.772190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.865166, 57.727196, 57.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972643, -0.038149, 0.229154,
		-0.232305, -0.164425, 0.958644,
		0.001107, -0.985652, -0.168789,
		72.865501, 57.431499, 57.654037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.246468, 57.773193, 58.286373>,  <72.864723, 58.121456, 57.772190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.246468, 57.773193, 58.286373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.295105, 57.565876, 57.947769>,  <73.324287, 57.441486, 57.744606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.295105, 57.565876, 57.947769>,  <73.246468, 57.773193, 58.286373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.295105, 57.565876, 57.947769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992258, 0.085213, 0.090358,
		0.025302, -0.850946, 0.524644,
		0.121596, -0.518295, -0.846513,
		73.331581, 57.410389, 57.693817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.410255, 58.087830, 58.993885>,  <73.246468, 57.773193, 58.286373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.410255, 58.087830, 58.993885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.431351, 58.127827, 59.391319>,  <73.444008, 58.151825, 59.629780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.431351, 58.127827, 59.391319>,  <73.410255, 58.087830, 58.993885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.431351, 58.127827, 59.391319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793788, 0.607897, -0.019038,
		-0.605903, -0.787695, 0.111437,
		0.052746, 0.099993, 0.993589,
		73.447174, 58.157825, 59.689396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.690926, 57.927959, 59.299133>,  <73.410255, 58.087830, 58.993885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.690926, 57.927959, 59.299133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.913162, 58.191063, 59.502571>,  <73.046501, 58.348927, 59.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.913162, 58.191063, 59.502571>,  <72.690926, 57.927959, 59.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.913162, 58.191063, 59.502571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736536, 0.673169, -0.066017,
		-0.385796, -0.337924, 0.858469,
		0.555586, 0.657762, 0.508599,
		73.079842, 58.388393, 59.655151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.381638, 58.165321, 59.909084>,  <72.690926, 57.927959, 59.299133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.381638, 58.165321, 59.909084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.609375, 58.447422, 59.740105>,  <72.746017, 58.616684, 59.638718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.609375, 58.447422, 59.740105>,  <72.381638, 58.165321, 59.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.609375, 58.447422, 59.740105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814751, 0.552608, -0.175513,
		0.109668, 0.444119, 0.889231,
		0.569345, 0.705253, -0.422449,
		72.780182, 58.658997, 59.613369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
