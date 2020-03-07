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
	<36.467247, 52.598927, 50.244759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238441, 52.613842, 49.917000>,  <36.101158, 52.622791, 49.720345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238441, 52.613842, 49.917000>,  <36.467247, 52.598927, 50.244759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238441, 52.613842, 49.917000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719623, 0.502202, -0.479515,
		0.393622, -0.863946, -0.314100,
		-0.572017, 0.037286, -0.819394,
		36.066837, 52.625027, 49.671181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865189, 52.250179, 49.733177>,  <36.467247, 52.598927, 50.244759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865189, 52.250179, 49.733177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594254, 52.516289, 49.607559>,  <36.431694, 52.675953, 49.532188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594254, 52.516289, 49.607559>,  <36.865189, 52.250179, 49.733177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594254, 52.516289, 49.607559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725389, 0.532842, -0.435763,
		-0.122568, -0.522962, -0.843497,
		-0.677338, 0.665275, -0.314042,
		36.391052, 52.715870, 49.513348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116833, 51.609566, 49.912010>,  <36.865189, 52.250179, 49.733177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116833, 51.609566, 49.912010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387909, 51.452858, 49.663094>,  <37.550556, 51.358833, 49.513744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387909, 51.452858, 49.663094>,  <37.116833, 51.609566, 49.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387909, 51.452858, 49.663094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734800, 0.328276, 0.593551,
		-0.028250, -0.859507, 0.510342,
		0.677695, -0.391767, -0.622292,
		37.591217, 51.335327, 49.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624161, 51.515202, 50.310997>,  <37.116833, 51.609566, 49.912010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624161, 51.515202, 50.310997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806957, 51.469959, 49.958096>,  <37.916634, 51.442814, 49.746357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806957, 51.469959, 49.958096>,  <37.624161, 51.515202, 50.310997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806957, 51.469959, 49.958096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889427, 0.048029, 0.454547,
		-0.009038, -0.992422, 0.122548,
		0.456988, -0.113106, -0.882252,
		37.944054, 51.436028, 49.693420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210411, 50.876274, 50.263378>,  <37.624161, 51.515202, 50.310997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210411, 50.876274, 50.263378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269211, 51.189751, 50.021976>,  <38.304489, 51.377838, 49.877136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269211, 51.189751, 50.021976>,  <38.210411, 50.876274, 50.263378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269211, 51.189751, 50.021976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928581, 0.100866, 0.357160,
		0.340776, -0.612906, -0.712894,
		0.146999, 0.783691, -0.603506,
		38.313309, 51.424858, 49.840923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914276, 50.868729, 49.758827>,  <38.210411, 50.876274, 50.263378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914276, 50.868729, 49.758827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840504, 51.248657, 49.859886>,  <38.796238, 51.476612, 49.920521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840504, 51.248657, 49.859886>,  <38.914276, 50.868729, 49.758827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840504, 51.248657, 49.859886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927646, 0.083293, 0.364053,
		0.324740, 0.301510, -0.896457,
		-0.184435, 0.949818, 0.252646,
		38.785172, 51.533604, 49.935680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466728, 51.330387, 49.501144>,  <38.914276, 50.868729, 49.758827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466728, 51.330387, 49.501144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310448, 51.485237, 49.835205>,  <39.216679, 51.578148, 50.035641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310448, 51.485237, 49.835205>,  <39.466728, 51.330387, 49.501144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310448, 51.485237, 49.835205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920344, 0.181830, 0.346272,
		-0.017804, 0.903919, -0.427334,
		-0.390704, 0.387129, 0.835154,
		39.193237, 51.601376, 50.085751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003136, 51.882698, 49.645679>,  <39.466728, 51.330387, 49.501144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003136, 51.882698, 49.645679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818382, 51.869396, 50.000206>,  <39.707531, 51.861416, 50.212921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818382, 51.869396, 50.000206>,  <40.003136, 51.882698, 49.645679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818382, 51.869396, 50.000206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881302, 0.095274, 0.462849,
		-0.099833, 0.994896, -0.014703,
		-0.461887, -0.033250, 0.886315,
		39.679817, 51.859421, 50.266102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969650, 52.492294, 49.933445>,  <40.003136, 51.882698, 49.645679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969650, 52.492294, 49.933445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984367, 52.210529, 50.216980>,  <39.993198, 52.041470, 50.387100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984367, 52.210529, 50.216980>,  <39.969650, 52.492294, 49.933445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984367, 52.210529, 50.216980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960299, 0.221207, 0.169981,
		-0.276536, 0.674444, 0.684582,
		0.036792, -0.704409, 0.708840,
		39.995403, 51.999207, 50.429630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411713, 52.796978, 50.391594>,  <39.969650, 52.492294, 49.933445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411713, 52.796978, 50.391594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386593, 52.411301, 50.494659>,  <40.371521, 52.179893, 50.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386593, 52.411301, 50.494659>,  <40.411713, 52.796978, 50.391594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386593, 52.411301, 50.494659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977591, -0.007449, 0.210380,
		-0.200928, 0.265100, 0.943053,
		-0.062797, -0.964192, 0.257663,
		40.367752, 52.122044, 50.571957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800915, 52.767288, 51.032459>,  <40.411713, 52.796978, 50.391594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800915, 52.767288, 51.032459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778641, 52.409187, 50.855633>,  <40.765274, 52.194328, 50.749535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778641, 52.409187, 50.855633>,  <40.800915, 52.767288, 51.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778641, 52.409187, 50.855633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870232, -0.260580, 0.418085,
		-0.489486, -0.361421, 0.793586,
		-0.055687, -0.895250, -0.442070,
		40.761936, 52.140614, 50.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698383, 52.239212, 51.630215>,  <40.800915, 52.767288, 51.032459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698383, 52.239212, 51.630215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507401, 52.209335, 51.980404>,  <40.392811, 52.191410, 52.190517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507401, 52.209335, 51.980404>,  <40.698383, 52.239212, 51.630215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507401, 52.209335, 51.980404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280855, -0.957082, 0.071518,
		0.832561, 0.280029, 0.477939,
		-0.477454, -0.074689, 0.875477,
		40.364166, 52.186928, 52.243046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109905, 51.913559, 52.058304>,  <40.698383, 52.239212, 51.630215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109905, 51.913559, 52.058304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749390, 51.833031, 52.211739>,  <40.533081, 51.784714, 52.303799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749390, 51.833031, 52.211739>,  <41.109905, 51.913559, 52.058304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749390, 51.833031, 52.211739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263777, -0.957427, 0.117278,
		0.343646, 0.206883, 0.916028,
		-0.901293, -0.201325, 0.383587,
		40.479000, 51.772633, 52.326813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758160, 52.242939, 52.184971>,  <41.109905, 51.913559, 52.058304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758160, 52.242939, 52.184971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104942, 52.136589, 52.353584>,  <42.313011, 52.072781, 52.454754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104942, 52.136589, 52.353584>,  <41.758160, 52.242939, 52.184971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104942, 52.136589, 52.353584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498348, 0.471441, -0.727594,
		-0.005279, 0.840865, 0.541218,
		0.866961, -0.265874, 0.421532,
		42.365032, 52.056828, 52.480045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232765, 52.927704, 52.170853>,  <41.758160, 52.242939, 52.184971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232765, 52.927704, 52.170853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420849, 52.575363, 52.192776>,  <42.533699, 52.363960, 52.205929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420849, 52.575363, 52.192776>,  <42.232765, 52.927704, 52.170853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420849, 52.575363, 52.192776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642986, 0.299371, -0.704944,
		0.604544, 0.366709, 0.707143,
		0.470207, -0.880853, 0.054806,
		42.561913, 52.311108, 52.209217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959393, 53.080429, 52.172340>,  <42.232765, 52.927704, 52.170853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959393, 53.080429, 52.172340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881794, 52.724365, 52.007427>,  <42.835236, 52.510727, 51.908478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881794, 52.724365, 52.007427>,  <42.959393, 53.080429, 52.172340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881794, 52.724365, 52.007427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656519, 0.194475, -0.728809,
		0.728937, -0.412056, 0.546682,
		-0.193994, -0.890163, -0.412282,
		42.823597, 52.457317, 51.883743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618916, 53.711010, 52.006824>,  <42.959393, 53.080429, 52.172340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618916, 53.711010, 52.006824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438568, 53.719128, 51.649879>,  <42.330360, 53.723999, 51.435715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438568, 53.719128, 51.649879>,  <42.618916, 53.711010, 52.006824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438568, 53.719128, 51.649879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889192, -0.076936, -0.451019,
		-0.077812, -0.996829, 0.016635,
		-0.450868, 0.020303, -0.892359,
		42.303307, 53.725216, 51.382172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367699, 53.768154, 52.080864>,  <42.618916, 53.711010, 52.006824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367699, 53.768154, 52.080864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706036, 53.590771, 51.962276>,  <43.909039, 53.484341, 51.891125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706036, 53.590771, 51.962276>,  <43.367699, 53.768154, 52.080864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706036, 53.590771, 51.962276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485925, -0.411294, -0.771177,
		0.220048, 0.796357, -0.563378,
		0.845846, -0.443456, -0.296466,
		43.959789, 53.457733, 51.873337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584118, 53.828835, 51.376862>,  <43.367699, 53.768154, 52.080864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584118, 53.828835, 51.376862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711304, 53.483727, 51.534103>,  <43.787617, 53.276661, 51.628448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711304, 53.483727, 51.534103>,  <43.584118, 53.828835, 51.376862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711304, 53.483727, 51.534103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635864, -0.501606, -0.586573,
		0.703261, -0.063455, -0.708095,
		0.317964, -0.862766, 0.393108,
		43.806694, 53.224895, 51.652035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495533, 53.486588, 50.741192>,  <43.584118, 53.828835, 51.376862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495533, 53.486588, 50.741192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567028, 53.222755, 51.033222>,  <43.609924, 53.064457, 51.208439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567028, 53.222755, 51.033222>,  <43.495533, 53.486588, 50.741192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567028, 53.222755, 51.033222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724449, -0.590314, -0.355954,
		0.665753, -0.465281, -0.583341,
		0.178735, -0.659578, 0.730076,
		43.620647, 53.024883, 51.252243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190609, 53.763618, 50.852520>,  <43.495533, 53.486588, 50.741192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190609, 53.763618, 50.852520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560837, 53.631481, 50.926483>,  <44.782974, 53.552200, 50.970860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560837, 53.631481, 50.926483>,  <44.190609, 53.763618, 50.852520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560837, 53.631481, 50.926483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272027, -0.920040, -0.282009,
		0.263280, 0.210720, -0.941425,
		0.925573, -0.330340, 0.184907,
		44.838509, 53.532379, 50.981956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421211, 53.298691, 50.332775>,  <44.190609, 53.763618, 50.852520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421211, 53.298691, 50.332775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674400, 53.203968, 50.627602>,  <44.826313, 53.147137, 50.804497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674400, 53.203968, 50.627602>,  <44.421211, 53.298691, 50.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674400, 53.203968, 50.627602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084286, -0.967490, -0.238452,
		0.769572, 0.088809, -0.632354,
		0.632973, -0.236805, 0.737067,
		44.864292, 53.132927, 50.848721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745579, 52.608982, 50.229031>,  <44.421211, 53.298691, 50.332775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745579, 52.608982, 50.229031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851112, 52.681885, 50.607906>,  <44.914433, 52.725628, 50.835232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851112, 52.681885, 50.607906>,  <44.745579, 52.608982, 50.229031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851112, 52.681885, 50.607906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039725, -0.979100, 0.199460,
		0.963751, -0.090250, -0.251075,
		0.263829, 0.182256, 0.947194,
		44.930260, 52.736561, 50.892063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460289, 52.266998, 50.468822>,  <44.745579, 52.608982, 50.229031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460289, 52.266998, 50.468822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191765, 52.263725, 50.765274>,  <45.030651, 52.261761, 50.943146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191765, 52.263725, 50.765274>,  <45.460289, 52.266998, 50.468822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191765, 52.263725, 50.765274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276620, -0.930454, 0.240285,
		0.687618, 0.366317, 0.626891,
		-0.671314, -0.008186, 0.741128,
		44.990372, 52.261269, 50.987614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191299, 52.021954, 50.678780>,  <45.460289, 52.266998, 50.468822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191299, 52.021954, 50.678780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580894, 52.081581, 50.610516>,  <46.814651, 52.117359, 50.569557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580894, 52.081581, 50.610516>,  <46.191299, 52.021954, 50.678780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580894, 52.081581, 50.610516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073033, 0.506453, 0.859169,
		0.214509, -0.849284, 0.482392,
		0.973988, 0.149069, -0.170664,
		46.873093, 52.126301, 50.559315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708988, 51.773754, 51.228401>,  <46.191299, 52.021954, 50.678780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708988, 51.773754, 51.228401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879150, 52.079811, 51.035080>,  <46.981247, 52.263447, 50.919086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879150, 52.079811, 51.035080>,  <46.708988, 51.773754, 51.228401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879150, 52.079811, 51.035080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130647, 0.476522, 0.869401,
		0.895522, -0.432991, 0.102752,
		0.425407, 0.765144, -0.483305,
		47.006771, 52.309353, 50.890087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315876, 51.898552, 51.466198>,  <46.708988, 51.773754, 51.228401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315876, 51.898552, 51.466198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165798, 52.251152, 51.351528>,  <47.075752, 52.462711, 51.282726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165798, 52.251152, 51.351528>,  <47.315876, 51.898552, 51.466198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.165798, 52.251152, 51.351528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319147, 0.413204, 0.852882,
		0.870273, 0.228504, -0.436360,
		-0.375193, 0.881503, -0.286674,
		47.053242, 52.515602, 51.265526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290886, 51.374737, 51.995518>,  <47.315876, 51.898552, 51.466198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290886, 51.374737, 51.995518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680172, 51.414085, 51.912399>,  <47.913742, 51.437695, 51.862530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680172, 51.414085, 51.912399>,  <47.290886, 51.374737, 51.995518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680172, 51.414085, 51.912399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222512, -0.175683, 0.958970,
		0.057833, -0.979519, -0.192867,
		0.973213, 0.098375, -0.207794,
		47.972137, 51.443600, 51.850060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657959, 50.794720, 52.243889>,  <47.290886, 51.374737, 51.995518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657959, 50.794720, 52.243889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927811, 51.084965, 52.189690>,  <48.089722, 51.259113, 52.157169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927811, 51.084965, 52.189690>,  <47.657959, 50.794720, 52.243889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.927811, 51.084965, 52.189690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383210, -0.187384, 0.904454,
		0.630895, -0.662095, -0.404478,
		0.674627, 0.725615, -0.135502,
		48.130199, 51.302650, 52.149040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.440765, 50.595661, 52.182034>,  <47.657959, 50.794720, 52.243889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.440765, 50.595661, 52.182034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.363937, 50.951900, 52.346931>,  <48.317841, 51.165642, 52.445869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.363937, 50.951900, 52.346931>,  <48.440765, 50.595661, 52.182034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.363937, 50.951900, 52.346931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441153, -0.296879, 0.846904,
		0.876637, 0.344530, -0.335867,
		-0.192072, 0.890596, 0.412245,
		48.306316, 51.219078, 52.470604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.012096, 50.785023, 52.561176>,  <48.440765, 50.595661, 52.182034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.012096, 50.785023, 52.561176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.722157, 51.004951, 52.727203>,  <48.548191, 51.136909, 52.826820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.722157, 51.004951, 52.727203>,  <49.012096, 50.785023, 52.561176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.722157, 51.004951, 52.727203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359983, -0.211406, 0.908691,
		0.587368, 0.808085, -0.044690,
		-0.724852, 0.549824, 0.415070,
		48.504700, 51.169899, 52.851723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.213703, 51.379444, 52.848419>,  <49.012096, 50.785023, 52.561176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.213703, 51.379444, 52.848419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.917912, 51.218044, 53.063957>,  <48.740437, 51.121204, 53.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.917912, 51.218044, 53.063957>,  <49.213703, 51.379444, 52.848419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.917912, 51.218044, 53.063957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581119, 0.021426, 0.813537,
		-0.339809, 0.914728, 0.218638,
		-0.739480, -0.403502, 0.538846,
		48.696068, 51.096992, 53.225613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.002686, 51.918324, 53.379326>,  <49.213703, 51.379444, 52.848419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.002686, 51.918324, 53.379326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.947208, 51.532768, 53.470268>,  <48.913921, 51.301437, 53.524834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.947208, 51.532768, 53.470268>,  <49.002686, 51.918324, 53.379326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.947208, 51.532768, 53.470268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633212, 0.090202, 0.768704,
		-0.761451, 0.250575, 0.597834,
		-0.138692, -0.963886, 0.227352,
		48.905602, 51.243603, 53.538475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.623627, 52.122559, 52.931614>,  <49.002686, 51.918324, 53.379326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.623627, 52.122559, 52.931614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.933094, 52.106003, 52.678719>,  <50.118774, 52.096069, 52.526981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.933094, 52.106003, 52.678719>,  <49.623627, 52.122559, 52.931614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.933094, 52.106003, 52.678719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488369, 0.674682, 0.553444,
		0.403657, -0.736947, 0.542190,
		0.773664, -0.041387, -0.632242,
		50.165192, 52.093586, 52.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.050789, 51.761608, 53.219975>,  <49.623627, 52.122559, 52.931614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.050789, 51.761608, 53.219975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.203068, 52.051414, 52.990143>,  <50.294437, 52.225300, 52.852242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.203068, 52.051414, 52.990143>,  <50.050789, 51.761608, 53.219975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.203068, 52.051414, 52.990143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564177, 0.310329, 0.765114,
		0.732647, -0.615444, -0.290614,
		0.380699, 0.724517, -0.574581,
		50.317276, 52.268768, 52.817768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.837460, 51.768169, 53.072037>,  <50.050789, 51.761608, 53.219975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.837460, 51.768169, 53.072037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.645927, 52.113613, 53.135147>,  <50.531010, 52.320881, 53.173016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.645927, 52.113613, 53.135147>,  <50.837460, 51.768169, 53.072037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.645927, 52.113613, 53.135147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624226, 0.208550, 0.752894,
		0.617304, 0.458998, -0.638950,
		-0.478829, 0.863613, 0.157780,
		50.502277, 52.372696, 53.182480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.315712, 52.310352, 53.186409>,  <50.837460, 51.768169, 53.072037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.315712, 52.310352, 53.186409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.995625, 52.480370, 53.355637>,  <50.803570, 52.582378, 53.457172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.995625, 52.480370, 53.355637>,  <51.315712, 52.310352, 53.186409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.995625, 52.480370, 53.355637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590206, 0.433134, 0.681213,
		0.106299, 0.794818, -0.597466,
		-0.800223, 0.425040, 0.423064,
		50.755558, 52.607883, 53.482555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.350456, 53.051552, 53.329273>,  <51.315712, 52.310352, 53.186409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.350456, 53.051552, 53.329273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.091331, 52.933048, 53.610008>,  <50.935856, 52.861946, 53.778450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.091331, 52.933048, 53.610008>,  <51.350456, 53.051552, 53.329273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.091331, 52.933048, 53.610008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622774, 0.324638, 0.711873,
		-0.438744, 0.898242, -0.025799,
		-0.647809, -0.296263, 0.701834,
		50.896988, 52.844170, 53.820557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.244411, 53.596745, 53.642784>,  <51.350456, 53.051552, 53.329273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.244411, 53.596745, 53.642784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.174088, 53.291641, 53.891716>,  <51.131893, 53.108582, 54.041077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.174088, 53.291641, 53.891716>,  <51.244411, 53.596745, 53.642784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.174088, 53.291641, 53.891716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720351, 0.331195, 0.609429,
		-0.670958, 0.555439, 0.491226,
		-0.175809, -0.762757, 0.622329,
		51.121346, 53.062813, 54.078415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.114311, 53.803177, 54.412945>,  <51.244411, 53.596745, 53.642784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.114311, 53.803177, 54.412945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.249981, 53.427185, 54.397926>,  <51.331383, 53.201591, 54.388916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.249981, 53.427185, 54.397926>,  <51.114311, 53.803177, 54.412945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.249981, 53.427185, 54.397926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822768, 0.277057, 0.496279,
		-0.456088, -0.199212, 0.867351,
		0.339170, -0.939976, -0.037543,
		51.351730, 53.145191, 54.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.351913, 53.600853, 55.088238>,  <51.114311, 53.803177, 54.412945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.351913, 53.600853, 55.088238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.547192, 53.410263, 54.795765>,  <51.664360, 53.295910, 54.620281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.547192, 53.410263, 54.795765>,  <51.351913, 53.600853, 55.088238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.547192, 53.410263, 54.795765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872330, 0.291892, 0.392225,
		0.026542, -0.829319, 0.558146,
		0.488197, -0.476477, -0.731186,
		51.693649, 53.267319, 54.576408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.874058, 53.051289, 55.285225>,  <51.351913, 53.600853, 55.088238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.874058, 53.051289, 55.285225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.975662, 53.231556, 54.942909>,  <52.036625, 53.339714, 54.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.975662, 53.231556, 54.942909>,  <51.874058, 53.051289, 55.285225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.975662, 53.231556, 54.942909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812075, 0.381245, 0.441799,
		0.525371, -0.807187, -0.269136,
		0.254008, 0.450667, -0.855792,
		52.051865, 53.366756, 54.686172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.580742, 52.919548, 55.091412>,  <51.874058, 53.051289, 55.285225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.580742, 52.919548, 55.091412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.473740, 53.273540, 54.938969>,  <52.409538, 53.485935, 54.847504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.473740, 53.273540, 54.938969>,  <52.580742, 52.919548, 55.091412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.473740, 53.273540, 54.938969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721047, 0.446224, 0.530072,
		0.639165, -0.132998, -0.757483,
		-0.267508, 0.884983, -0.381108,
		52.393486, 53.539036, 54.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.162498, 53.355194, 54.695728>,  <52.580742, 52.919548, 55.091412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.162498, 53.355194, 54.695728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.875797, 53.576435, 54.865593>,  <52.703777, 53.709179, 54.967514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.875797, 53.576435, 54.865593>,  <53.162498, 53.355194, 54.695728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.875797, 53.576435, 54.865593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671439, 0.383025, 0.634398,
		0.188229, 0.739846, -0.645909,
		-0.716756, 0.553101, 0.424665,
		52.660770, 53.742367, 54.992992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.272869, 54.164806, 54.576828>,  <53.162498, 53.355194, 54.695728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.272869, 54.164806, 54.576828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.097393, 54.041031, 54.914299>,  <52.992107, 53.966766, 55.116783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.097393, 54.041031, 54.914299>,  <53.272869, 54.164806, 54.576828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.097393, 54.041031, 54.914299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675376, 0.505799, 0.536688,
		-0.592806, 0.805242, -0.012900,
		-0.438689, -0.309439, 0.843682,
		52.965786, 53.948200, 55.167404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.045120, 54.771248, 54.995869>,  <53.272869, 54.164806, 54.576828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.045120, 54.771248, 54.995869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.084118, 54.461037, 55.245361>,  <53.107517, 54.274910, 55.395058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.084118, 54.461037, 55.245361>,  <53.045120, 54.771248, 54.995869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.084118, 54.461037, 55.245361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686718, 0.506043, 0.521862,
		-0.720357, 0.377454, 0.581905,
		0.097490, -0.775531, 0.623736,
		53.113365, 54.228378, 55.432484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.015171, 54.913975, 55.651264>,  <53.045120, 54.771248, 54.995869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.015171, 54.913975, 55.651264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.259811, 54.598381, 55.674759>,  <53.406593, 54.409023, 55.688854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.259811, 54.598381, 55.674759>,  <53.015171, 54.913975, 55.651264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.259811, 54.598381, 55.674759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655534, 0.546917, 0.520727,
		-0.442970, -0.279973, 0.851700,
		0.611599, -0.788984, 0.058736,
		53.443291, 54.361687, 55.692379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.116589, 54.727985, 56.493351>,  <53.015171, 54.913975, 55.651264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.116589, 54.727985, 56.493351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.405582, 54.643456, 56.230034>,  <53.578979, 54.592739, 56.072044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.405582, 54.643456, 56.230034>,  <53.116589, 54.727985, 56.493351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.405582, 54.643456, 56.230034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655166, 0.513390, 0.554246,
		0.220836, -0.831729, 0.509371,
		0.722488, -0.211325, -0.658295,
		53.622330, 54.580059, 56.032547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.756310, 54.578121, 56.934998>,  <53.116589, 54.727985, 56.493351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.756310, 54.578121, 56.934998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.842804, 54.715267, 56.569336>,  <53.894703, 54.797554, 56.349937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.842804, 54.715267, 56.569336>,  <53.756310, 54.578121, 56.934998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.842804, 54.715267, 56.569336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723397, 0.572549, 0.385854,
		0.655696, -0.744737, -0.124219,
		0.216238, 0.342863, -0.914159,
		53.907677, 54.818127, 56.295090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.326477, 54.428226, 56.650078>,  <53.756310, 54.578121, 56.934998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.326477, 54.428226, 56.650078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.276550, 54.782089, 56.470390>,  <54.246593, 54.994408, 56.362576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.276550, 54.782089, 56.470390>,  <54.326477, 54.428226, 56.650078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.276550, 54.782089, 56.470390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828912, 0.341805, 0.442802,
		0.545275, -0.317095, -0.775968,
		-0.124820, 0.884658, -0.449221,
		54.239105, 55.047485, 56.335625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.940472, 54.629387, 56.424946>,  <54.326477, 54.428226, 56.650078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.940472, 54.629387, 56.424946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.734810, 54.971169, 56.454765>,  <54.611412, 55.176239, 56.472656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.734810, 54.971169, 56.454765>,  <54.940472, 54.629387, 56.424946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.734810, 54.971169, 56.454765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743158, 0.400413, 0.536083,
		0.428209, 0.331027, -0.840867,
		-0.514153, 0.854453, 0.074545,
		54.580563, 55.227505, 56.477127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.314251, 55.232285, 56.187160>,  <54.940472, 54.629387, 56.424946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.314251, 55.232285, 56.187160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070976, 55.343834, 56.484436>,  <54.925011, 55.410763, 56.662804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070976, 55.343834, 56.484436>,  <55.314251, 55.232285, 56.187160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.070976, 55.343834, 56.484436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776378, 0.404017, 0.483743,
		-0.165360, 0.871206, -0.462230,
		-0.608189, 0.278873, 0.743193,
		54.888519, 55.427494, 56.707394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.326412, 55.937836, 56.252098>,  <55.314251, 55.232285, 56.187160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.326412, 55.937836, 56.252098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259796, 55.722828, 56.582756>,  <55.219826, 55.593822, 56.781151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259796, 55.722828, 56.582756>,  <55.326412, 55.937836, 56.252098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.259796, 55.722828, 56.582756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970578, 0.058492, 0.233576,
		-0.173903, 0.841222, 0.511960,
		-0.166543, -0.537516, 0.826644,
		55.209831, 55.561573, 56.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.508270, 56.442917, 56.725548>,  <55.326412, 55.937836, 56.252098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.508270, 56.442917, 56.725548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.523247, 56.052521, 56.811378>,  <55.532234, 55.818283, 56.862877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.523247, 56.052521, 56.811378>,  <55.508270, 56.442917, 56.725548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.523247, 56.052521, 56.811378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986309, 0.070600, 0.149029,
		-0.160599, 0.206057, 0.965271,
		0.037440, -0.975990, 0.214574,
		55.534477, 55.759724, 56.875751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.690697, 56.217667, 57.448795>,  <55.508270, 56.442917, 56.725548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.690697, 56.217667, 57.448795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.834320, 55.977806, 57.162720>,  <55.920494, 55.833893, 56.991074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.834320, 55.977806, 57.162720>,  <55.690697, 56.217667, 57.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.834320, 55.977806, 57.162720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933093, 0.213963, 0.289062,
		-0.020310, -0.771131, 0.636352,
		0.359061, -0.599647, -0.715192,
		55.942039, 55.797913, 56.948162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.275833, 56.279392, 57.631649>,  <55.690697, 56.217667, 57.448795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.275833, 56.279392, 57.631649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.310326, 56.060722, 57.298492>,  <56.331020, 55.929520, 57.098598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.310326, 56.060722, 57.298492>,  <56.275833, 56.279392, 57.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.310326, 56.060722, 57.298492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996271, 0.049706, 0.070522,
		0.002847, -0.835866, 0.548926,
		0.086231, -0.546678, -0.832891,
		56.336197, 55.896717, 57.048626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.788303, 55.761383, 57.785988>,  <56.275833, 56.279392, 57.631649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.788303, 55.761383, 57.785988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.776802, 55.838303, 57.393623>,  <56.769901, 55.884453, 57.158203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.776802, 55.838303, 57.393623>,  <56.788303, 55.761383, 57.785988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.776802, 55.838303, 57.393623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999586, 0.006377, -0.028054,
		0.000860, -0.981315, -0.192403,
		-0.028756, 0.192300, -0.980915,
		56.768177, 55.895992, 57.099350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.059433, 55.231060, 57.420902>,  <56.788303, 55.761383, 57.785988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.059433, 55.231060, 57.420902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.105034, 55.566544, 57.207893>,  <57.132397, 55.767834, 57.080090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.105034, 55.566544, 57.207893>,  <57.059433, 55.231060, 57.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.105034, 55.566544, 57.207893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993472, -0.098398, 0.057714,
		-0.003994, -0.535622, -0.844449,
		0.114005, 0.838706, -0.532518,
		57.139236, 55.818157, 57.048138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.682549, 55.227818, 57.071136>,  <57.059433, 55.231060, 57.420902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.682549, 55.227818, 57.071136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.588638, 55.614777, 57.109123>,  <57.532291, 55.846954, 57.131916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.588638, 55.614777, 57.109123>,  <57.682549, 55.227818, 57.071136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.588638, 55.614777, 57.109123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971906, 0.231935, 0.040053,
		0.016722, 0.101702, -0.994674,
		-0.234774, 0.967400, 0.094967,
		57.518208, 55.904995, 57.137611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.886116, 55.650421, 56.515385>,  <57.682549, 55.227818, 57.071136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.886116, 55.650421, 56.515385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.874512, 55.875610, 56.845772>,  <57.867550, 56.010723, 57.044003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.874512, 55.875610, 56.845772>,  <57.886116, 55.650421, 56.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.874512, 55.875610, 56.845772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922967, 0.332347, -0.194107,
		-0.383784, 0.756705, -0.529251,
		-0.029013, 0.562976, 0.825963,
		57.865807, 56.044502, 57.093559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.150883, 56.308334, 56.355515>,  <57.886116, 55.650421, 56.515385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.150883, 56.308334, 56.355515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.208931, 56.240177, 56.745369>,  <58.243759, 56.199284, 56.979282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.208931, 56.240177, 56.745369>,  <58.150883, 56.308334, 56.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.208931, 56.240177, 56.745369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958812, 0.267315, -0.096031,
		-0.244171, 0.948425, 0.202163,
		0.145120, -0.170389, 0.974632,
		58.252468, 56.189060, 57.037758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.659389, 56.712452, 56.819908>,  <58.150883, 56.308334, 56.355515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.659389, 56.712452, 56.819908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.933075, 56.969238, 56.681503>,  <59.097286, 57.123310, 56.598461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.933075, 56.969238, 56.681503>,  <58.659389, 56.712452, 56.819908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.933075, 56.969238, 56.681503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729129, -0.611849, 0.306615,
		-0.014869, -0.462077, -0.886715,
		0.684215, 0.641971, -0.346011,
		59.138340, 57.161831, 56.577702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.137661, 56.376949, 56.415459>,  <58.659389, 56.712452, 56.819908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.137661, 56.376949, 56.415459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.341774, 56.671703, 56.592819>,  <59.464241, 56.848557, 56.699238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.341774, 56.671703, 56.592819>,  <59.137661, 56.376949, 56.415459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.341774, 56.671703, 56.592819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771889, -0.619772, 0.141670,
		0.379204, 0.269967, -0.885055,
		0.510286, 0.736886, 0.443404,
		59.494862, 56.892769, 56.725842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.677212, 56.376694, 56.995888>,  <59.137661, 56.376949, 56.415459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.677212, 56.376694, 56.995888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.758194, 56.253849, 57.367844>,  <59.806782, 56.180141, 57.591019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.758194, 56.253849, 57.367844>,  <59.677212, 56.376694, 56.995888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.758194, 56.253849, 57.367844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195474, 0.943117, 0.268924,
		-0.959585, 0.127325, 0.250970,
		0.202453, -0.307113, 0.929889,
		59.818932, 56.161716, 57.646809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.322742, 56.849197, 57.423164>,  <59.677212, 56.376694, 56.995888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.322742, 56.849197, 57.423164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.638016, 56.678028, 57.600098>,  <59.827179, 56.575325, 57.706257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.638016, 56.678028, 57.600098>,  <59.322742, 56.849197, 57.423164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.638016, 56.678028, 57.600098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346030, 0.902480, 0.256502,
		-0.508957, -0.049110, 0.859390,
		0.788179, -0.427923, 0.442330,
		59.874470, 56.549652, 57.732796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.346275, 57.086803, 58.189411>,  <59.322742, 56.849197, 57.423164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.346275, 57.086803, 58.189411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.703789, 56.978481, 58.046402>,  <59.918297, 56.913486, 57.960598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.703789, 56.978481, 58.046402>,  <59.346275, 57.086803, 58.189411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.703789, 56.978481, 58.046402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402183, 0.836741, 0.371635,
		0.198510, -0.475948, 0.856777,
		0.893780, -0.270808, -0.357520,
		59.971924, 56.897240, 57.939144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.720741, 57.154728, 58.852707>,  <59.346275, 57.086803, 58.189411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.720741, 57.154728, 58.852707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.928795, 57.203568, 58.514580>,  <60.053627, 57.232872, 58.311703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.928795, 57.203568, 58.514580>,  <59.720741, 57.154728, 58.852707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.928795, 57.203568, 58.514580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400928, 0.839001, 0.367879,
		0.754137, -0.530255, 0.387437,
		0.520129, 0.122097, -0.845315,
		60.084835, 57.240196, 58.260986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.439735, 57.134518, 59.098068>,  <59.720741, 57.154728, 58.852707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.439735, 57.134518, 59.098068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.320076, 57.348118, 58.781754>,  <60.248280, 57.476280, 58.591965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.320076, 57.348118, 58.781754>,  <60.439735, 57.134518, 59.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.320076, 57.348118, 58.781754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510260, 0.789821, 0.340321,
		0.806315, -0.301702, -0.508755,
		-0.299150, 0.534003, -0.790791,
		60.230331, 57.508320, 58.544518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.778625, 57.692104, 58.734665>,  <60.439735, 57.134518, 59.098068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.778625, 57.692104, 58.734665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.032547, 57.526993, 58.473396>,  <61.184902, 57.427925, 58.316635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.032547, 57.526993, 58.473396>,  <60.778625, 57.692104, 58.734665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.032547, 57.526993, 58.473396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128919, 0.890079, -0.437194,
		0.761839, 0.193328, 0.618244,
		0.634809, -0.412775, -0.653173,
		61.222988, 57.403160, 58.277443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.607441, 57.929008, 58.727112>,  <60.778625, 57.692104, 58.734665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.607441, 57.929008, 58.727112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.451462, 57.856712, 58.365944>,  <61.357872, 57.813335, 58.149242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.451462, 57.856712, 58.365944>,  <61.607441, 57.929008, 58.727112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.451462, 57.856712, 58.365944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143127, 0.956735, -0.253322,
		0.909644, -0.228016, -0.347212,
		-0.389952, -0.180738, -0.902924,
		61.334476, 57.802490, 58.095066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.394554, 58.149643, 58.915485>,  <61.607441, 57.929008, 58.727112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.394554, 58.149643, 58.915485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.535309, 57.986649, 58.578407>,  <62.619762, 57.888851, 58.376160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.535309, 57.986649, 58.578407>,  <62.394554, 58.149643, 58.915485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.535309, 57.986649, 58.578407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717204, 0.695880, -0.037006,
		0.601491, -0.591359, 0.537125,
		0.351891, -0.407487, -0.842691,
		62.640877, 57.864403, 58.325600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.187656, 58.004101, 59.078434>,  <62.394554, 58.149643, 58.915485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.187656, 58.004101, 59.078434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.091324, 58.077286, 58.697166>,  <63.033524, 58.121197, 58.468407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.091324, 58.077286, 58.697166>,  <63.187656, 58.004101, 59.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.091324, 58.077286, 58.697166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680948, 0.731648, -0.031617,
		0.691597, -0.656671, -0.300792,
		-0.240836, 0.182958, -0.953165,
		63.019073, 58.132172, 58.411217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.727600, 57.735069, 58.744083>,  <63.187656, 58.004101, 59.078434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.727600, 57.735069, 58.744083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.504219, 58.035530, 58.603287>,  <63.370190, 58.215809, 58.518810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.504219, 58.035530, 58.603287>,  <63.727600, 57.735069, 58.744083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.504219, 58.035530, 58.603287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804785, 0.593476, -0.010353,
		0.201119, -0.289056, -0.935948,
		-0.558455, 0.751155, -0.351987,
		63.336681, 58.260876, 58.497692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.080177, 58.049824, 58.218544>,  <63.727600, 57.735069, 58.744083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.080177, 58.049824, 58.218544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.825577, 58.315048, 58.376129>,  <63.672813, 58.474182, 58.470680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.825577, 58.315048, 58.376129>,  <64.080177, 58.049824, 58.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.825577, 58.315048, 58.376129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764068, 0.611741, 0.204874,
		-0.105160, 0.431419, -0.896002,
		-0.636508, 0.663061, 0.393964,
		63.634624, 58.513966, 58.494320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.330536, 58.119781, 58.945484>,  <64.080177, 58.049824, 58.218544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.330536, 58.119781, 58.945484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.725204, 58.129734, 58.881172>,  <64.962006, 58.135708, 58.842583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.725204, 58.129734, 58.881172>,  <64.330536, 58.119781, 58.945484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.725204, 58.129734, 58.881172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160734, 0.003963, 0.986990,
		0.025208, -0.999682, -0.000091,
		0.986676, 0.024895, -0.160783,
		65.021210, 58.137199, 58.832939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.758026, 57.458378, 59.136532>,  <64.330536, 58.119781, 58.945484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.758026, 57.458378, 59.136532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.878746, 57.837662, 59.176178>,  <64.951180, 58.065231, 59.199966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.878746, 57.837662, 59.176178>,  <64.758026, 57.458378, 59.136532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.878746, 57.837662, 59.176178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215309, -0.169070, 0.961799,
		0.928741, -0.268927, -0.255182,
		0.301797, 0.948206, 0.099120,
		64.969284, 58.122124, 59.205914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.287712, 57.508839, 59.514351>,  <64.758026, 57.458378, 59.136532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.287712, 57.508839, 59.514351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.125870, 57.871353, 59.563240>,  <65.028763, 58.088860, 59.592571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.125870, 57.871353, 59.563240>,  <65.287712, 57.508839, 59.514351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.125870, 57.871353, 59.563240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013046, -0.139355, 0.990156,
		0.914395, 0.399034, 0.068209,
		-0.404612, 0.906285, 0.122220,
		65.004486, 58.143238, 59.599907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.702599, 58.081299, 59.888233>,  <65.287712, 57.508839, 59.514351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.702599, 58.081299, 59.888233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.311981, 58.117725, 59.966263>,  <65.077606, 58.139580, 60.013081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.311981, 58.117725, 59.966263>,  <65.702599, 58.081299, 59.888233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.311981, 58.117725, 59.966263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187855, -0.082100, 0.978759,
		0.105148, 0.992455, 0.063068,
		-0.976552, 0.091066, 0.195070,
		65.019012, 58.145046, 60.024784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.640541, 58.836948, 59.812714>,  <65.702599, 58.081299, 59.888233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.640541, 58.836948, 59.812714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.812843, 58.769341, 59.458115>,  <65.916222, 58.728775, 59.245354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.812843, 58.769341, 59.458115>,  <65.640541, 58.836948, 59.812714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.812843, 58.769341, 59.458115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509963, 0.856027, 0.084588,
		0.744571, -0.488519, 0.454933,
		0.430758, -0.169017, -0.886500,
		65.942070, 58.718636, 59.192165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.402390, 58.884953, 59.938854>,  <65.640541, 58.836948, 59.812714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.402390, 58.884953, 59.938854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.241943, 58.999977, 59.590965>,  <66.145676, 59.068993, 59.382233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.241943, 58.999977, 59.590965>,  <66.402390, 58.884953, 59.938854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.241943, 58.999977, 59.590965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688896, 0.720487, -0.079497,
		0.603763, -0.631035, -0.487099,
		-0.401114, 0.287563, -0.869721,
		66.121613, 59.086246, 59.330048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.858276, 58.840679, 59.440338>,  <66.402390, 58.884953, 59.938854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.858276, 58.840679, 59.440338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.581451, 59.128639, 59.419205>,  <66.415352, 59.301414, 59.406525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.581451, 59.128639, 59.419205>,  <66.858276, 58.840679, 59.440338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.581451, 59.128639, 59.419205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717654, 0.678350, -0.157526,
		-0.077565, -0.146932, -0.986101,
		-0.692067, 0.719898, -0.052830,
		66.373833, 59.344608, 59.403355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.940437, 59.266781, 58.795155>,  <66.858276, 58.840679, 59.440338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.940437, 59.266781, 58.795155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.814400, 59.437973, 59.133987>,  <66.738777, 59.540688, 59.337288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.814400, 59.437973, 59.133987>,  <66.940437, 59.266781, 58.795155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.814400, 59.437973, 59.133987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863347, 0.499931, 0.068559,
		-0.394141, 0.752928, -0.527022,
		-0.315094, 0.427981, 0.847082,
		66.719872, 59.566368, 59.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.246834, 59.981537, 58.722172>,  <66.940437, 59.266781, 58.795155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.246834, 59.981537, 58.722172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.131775, 59.928886, 59.101631>,  <67.062737, 59.897297, 59.329308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.131775, 59.928886, 59.101631>,  <67.246834, 59.981537, 58.722172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.131775, 59.928886, 59.101631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828099, 0.463436, 0.315403,
		-0.481152, 0.876300, -0.024309,
		-0.287653, -0.131627, 0.948646,
		67.045479, 59.889397, 59.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.133904, 60.592033, 59.223774>,  <67.246834, 59.981537, 58.722172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.133904, 60.592033, 59.223774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242355, 60.283146, 59.453613>,  <67.307426, 60.097813, 59.591518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.242355, 60.283146, 59.453613>,  <67.133904, 60.592033, 59.223774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.242355, 60.283146, 59.453613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745864, 0.545892, 0.381691,
		-0.608419, 0.325086, 0.723979,
		0.271132, -0.772218, 0.574601,
		67.323692, 60.051479, 59.625992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.203896, 60.900963, 59.934578>,  <67.133904, 60.592033, 59.223774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.203896, 60.900963, 59.934578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.420601, 60.570450, 59.872948>,  <67.550629, 60.372143, 59.835972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.420601, 60.570450, 59.872948>,  <67.203896, 60.900963, 59.934578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.420601, 60.570450, 59.872948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611262, 0.261500, 0.746978,
		-0.576926, -0.498869, 0.646750,
		0.541770, -0.826285, -0.154074,
		67.583130, 60.322563, 59.826725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.564781, 61.054146, 60.437794>,  <67.203896, 60.900963, 59.934578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.564781, 61.054146, 60.437794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.724289, 60.708641, 60.314568>,  <67.819992, 60.501339, 60.240631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.724289, 60.708641, 60.314568>,  <67.564781, 61.054146, 60.437794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.724289, 60.708641, 60.314568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660941, 0.037831, 0.749484,
		-0.635720, -0.502481, 0.585980,
		0.398770, -0.863760, -0.308061,
		67.843918, 60.449512, 60.222149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.533463, 60.470455, 60.950768>,  <67.564781, 61.054146, 60.437794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.533463, 60.470455, 60.950768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.853683, 60.461678, 60.711220>,  <68.045815, 60.456409, 60.567493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.853683, 60.461678, 60.711220>,  <67.533463, 60.470455, 60.950768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.853683, 60.461678, 60.711220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592736, 0.176129, 0.785902,
		0.088230, -0.984122, 0.154009,
		0.800550, -0.021947, -0.598865,
		68.093849, 60.455093, 60.531559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.998260, 59.967789, 61.244316>,  <67.533463, 60.470455, 60.950768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.998260, 59.967789, 61.244316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.221771, 60.224533, 61.034256>,  <68.355881, 60.378578, 60.908218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.221771, 60.224533, 61.034256>,  <67.998260, 59.967789, 61.244316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.221771, 60.224533, 61.034256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687614, -0.004563, 0.726062,
		0.463632, -0.766810, -0.443900,
		0.558778, 0.641858, -0.525154,
		68.389404, 60.417091, 60.876709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.675095, 59.744263, 61.264545>,  <67.998260, 59.967789, 61.244316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.675095, 59.744263, 61.264545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.682106, 60.139000, 61.200256>,  <68.686317, 60.375843, 61.161682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.682106, 60.139000, 61.200256>,  <68.675095, 59.744263, 61.264545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.682106, 60.139000, 61.200256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757231, 0.091862, 0.646655,
		0.652912, -0.133041, -0.745658,
		0.017534, 0.986844, -0.160721,
		68.687363, 60.435055, 61.152039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.398636, 60.000217, 61.060692>,  <68.675095, 59.744263, 61.264545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.398636, 60.000217, 61.060692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.182045, 60.297245, 61.218376>,  <69.052094, 60.475460, 61.312988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.182045, 60.297245, 61.218376>,  <69.398636, 60.000217, 61.060692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.182045, 60.297245, 61.218376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610244, 0.024620, 0.791831,
		0.578282, 0.669318, -0.466479,
		-0.541471, 0.742568, 0.394210,
		69.019600, 60.520016, 61.336639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.674011, 59.577606, 61.663769>,  <69.398636, 60.000217, 61.060692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.674011, 59.577606, 61.663769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.801407, 59.239807, 61.835999>,  <69.877846, 59.037128, 61.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.801407, 59.239807, 61.835999>,  <69.674011, 59.577606, 61.663769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.801407, 59.239807, 61.835999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895369, 0.118853, -0.429171,
		0.311257, 0.522209, 0.793987,
		0.318485, -0.844495, 0.430577,
		69.896950, 58.986458, 61.965172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.298805, 59.573235, 62.068363>,  <69.674011, 59.577606, 61.663769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.298805, 59.573235, 62.068363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.273109, 59.236164, 61.854530>,  <70.257690, 59.033924, 61.726231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.273109, 59.236164, 61.854530>,  <70.298805, 59.573235, 62.068363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.273109, 59.236164, 61.854530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930136, 0.143527, -0.338005,
		0.361554, -0.518942, 0.774582,
		-0.064231, -0.842674, -0.534580,
		70.253838, 58.983360, 61.694157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.838348, 58.997837, 62.117310>,  <70.298805, 59.573235, 62.068363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.838348, 58.997837, 62.117310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.705376, 58.942757, 61.744102>,  <70.625587, 58.909706, 61.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.705376, 58.942757, 61.744102>,  <70.838348, 58.997837, 62.117310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.705376, 58.942757, 61.744102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916071, 0.188111, -0.354160,
		0.224281, -0.972446, 0.063612,
		-0.332435, -0.137704, -0.933019,
		70.605644, 58.901447, 61.464195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.179031, 58.430363, 61.727776>,  <70.838348, 58.997837, 62.117310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.179031, 58.430363, 61.727776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.085945, 58.739933, 61.492188>,  <71.030090, 58.925674, 61.350834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.085945, 58.739933, 61.492188>,  <71.179031, 58.430363, 61.727776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.085945, 58.739933, 61.492188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939360, 0.022035, -0.342223,
		-0.251876, -0.632897, -0.732120,
		-0.232724, 0.773923, -0.588968,
		71.016129, 58.972111, 61.315498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.132408, 58.165810, 61.122738>,  <71.179031, 58.430363, 61.727776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.132408, 58.165810, 61.122738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.274315, 58.539238, 61.143120>,  <71.359459, 58.763294, 61.155350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.274315, 58.539238, 61.143120>,  <71.132408, 58.165810, 61.122738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.274315, 58.539238, 61.143120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811795, -0.280535, -0.512142,
		-0.463823, 0.223055, -0.857388,
		0.354763, 0.933567, 0.050956,
		71.380745, 58.819309, 61.158405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.142113, 58.609978, 60.507492>,  <71.132408, 58.165810, 61.122738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.142113, 58.609978, 60.507492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.436615, 58.620029, 60.777985>,  <71.613319, 58.626060, 60.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.436615, 58.620029, 60.777985>,  <71.142113, 58.609978, 60.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.436615, 58.620029, 60.777985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636140, -0.366474, -0.678987,
		0.230763, 0.930089, -0.285802,
		0.736257, 0.025125, 0.676235,
		71.657494, 58.627567, 60.980854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.862640, 58.916523, 60.280178>,  <71.142113, 58.609978, 60.507492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.862640, 58.916523, 60.280178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.924538, 58.648624, 60.570694>,  <71.961678, 58.487885, 60.745003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.924538, 58.648624, 60.570694>,  <71.862640, 58.916523, 60.280178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.924538, 58.648624, 60.570694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721291, -0.425778, -0.546308,
		0.675126, 0.608399, 0.417199,
		0.154739, -0.669749, 0.726287,
		71.970963, 58.447701, 60.788582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.469093, 59.082680, 60.441616>,  <71.862640, 58.916523, 60.280178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.469093, 59.082680, 60.441616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.376457, 58.703529, 60.529167>,  <72.320877, 58.476040, 60.581699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.376457, 58.703529, 60.529167>,  <72.469093, 59.082680, 60.441616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.376457, 58.703529, 60.529167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753287, -0.317098, -0.576202,
		0.615571, 0.031439, 0.787454,
		-0.231585, -0.947872, 0.218879,
		72.306984, 58.419167, 60.594830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.010345, 58.739944, 60.679340>,  <72.469093, 59.082680, 60.441616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.010345, 58.739944, 60.679340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.788612, 58.456230, 60.505157>,  <72.655571, 58.286003, 60.400646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.788612, 58.456230, 60.505157>,  <73.010345, 58.739944, 60.679340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.788612, 58.456230, 60.505157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816603, -0.362400, -0.449251,
		0.160839, -0.604631, 0.780097,
		-0.554339, -0.709287, -0.435456,
		72.622314, 58.243443, 60.374519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.170517, 57.987167, 60.750050>,  <73.010345, 58.739944, 60.679340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.170517, 57.987167, 60.750050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.032722, 58.051872, 60.380150>,  <72.950050, 58.090694, 60.158211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.032722, 58.051872, 60.380150>,  <73.170517, 57.987167, 60.750050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.032722, 58.051872, 60.380150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870336, -0.314226, -0.379179,
		-0.351919, -0.935464, -0.032546,
		-0.344482, 0.161766, -0.924751,
		72.929375, 58.100403, 60.102726>
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
