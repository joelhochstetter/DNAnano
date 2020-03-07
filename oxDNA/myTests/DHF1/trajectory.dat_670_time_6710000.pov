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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.064762, 1.935185, 5.171135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.208847, 1.562393, 5.187445>,  <2.295298, 1.338718, 5.197231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.208847, 1.562393, 5.187445>,  <2.064762, 1.935185, 5.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.208847, 1.562393, 5.187445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741112, 0.259349, -0.619266,
		0.566568, 0.253286, 0.784122,
		0.360213, -0.931979, 0.040775,
		2.316911, 1.282799, 5.199677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.750185, 1.928716, 5.362806>,  <2.064762, 1.935185, 5.171135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.750185, 1.928716, 5.362806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.668982, 1.624119, 5.116581>,  <2.620260, 1.441361, 4.968846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.668982, 1.624119, 5.116581>,  <2.750185, 1.928716, 5.362806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.668982, 1.624119, 5.116581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700612, 0.326215, -0.634607,
		0.684054, -0.560100, 0.467287,
		-0.203007, -0.761492, -0.615562,
		2.608079, 1.395671, 4.931912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.416768, 1.618620, 5.156110>,  <2.750185, 1.928716, 5.362806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.416768, 1.618620, 5.156110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.129208, 1.562347, 4.883820>,  <2.956671, 1.528584, 4.720445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.129208, 1.562347, 4.883820>,  <3.416768, 1.618620, 5.156110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.129208, 1.562347, 4.883820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628264, 0.287528, -0.722919,
		0.297430, -0.947384, -0.118318,
		-0.718901, -0.140683, -0.680727,
		2.913537, 1.520143, 4.679602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.548789, 1.290491, 4.503047>,  <3.416768, 1.618620, 5.156110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.548789, 1.290491, 4.503047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.257589, 1.540138, 4.389561>,  <3.082870, 1.689927, 4.321469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.257589, 1.540138, 4.389561>,  <3.548789, 1.290491, 4.503047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.257589, 1.540138, 4.389561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477070, 0.163970, -0.863434,
		-0.492365, -0.763930, -0.417119,
		-0.727998, 0.624119, -0.283715,
		3.039190, 1.727374, 4.304446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433707, 1.054167, 3.846626>,  <3.548789, 1.290491, 4.503047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433707, 1.054167, 3.846626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.261250, 1.413998, 3.874557>,  <3.157775, 1.629896, 3.891317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.261250, 1.413998, 3.874557>,  <3.433707, 1.054167, 3.846626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.261250, 1.413998, 3.874557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459449, 0.285491, -0.841071,
		-0.776544, -0.330540, -0.536398,
		-0.431144, 0.899577, 0.069830,
		3.131906, 1.683871, 3.895506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.131583, 1.165571, 3.082736>,  <3.433707, 1.054167, 3.846626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.131583, 1.165571, 3.082736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.153921, 1.512749, 3.280140>,  <3.167324, 1.721056, 3.398582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.153921, 1.512749, 3.280140>,  <3.131583, 1.165571, 3.082736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.153921, 1.512749, 3.280140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456973, 0.417254, -0.785541,
		-0.887726, 0.269389, -0.373326,
		0.055844, 0.867945, 0.493511,
		3.170674, 1.773132, 3.428193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024810, 1.651124, 2.591218>,  <3.131583, 1.165571, 3.082736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024810, 1.651124, 2.591218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.212408, 1.841614, 2.888742>,  <3.324967, 1.955908, 3.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.212408, 1.841614, 2.888742>,  <3.024810, 1.651124, 2.591218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.212408, 1.841614, 2.888742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450397, 0.595478, -0.665243,
		-0.759728, 0.647006, 0.064786,
		0.468995, 0.476224, 0.743811,
		3.353106, 1.984481, 3.111886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.888520, 2.334044, 2.538073>,  <3.024810, 1.651124, 2.591218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.888520, 2.334044, 2.538073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.227417, 2.304977, 2.748558>,  <3.430755, 2.287538, 2.874849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.227417, 2.304977, 2.748558>,  <2.888520, 2.334044, 2.538073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.227417, 2.304977, 2.748558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428615, 0.678691, -0.596379,
		-0.313799, 0.730820, 0.606161,
		0.847242, -0.072666, 0.526213,
		3.481590, 2.283178, 2.906422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.231244, 2.572876, 1.811372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488861, 2.659300, 2.104910>,  <4.643431, 2.711154, 2.281033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488861, 2.659300, 2.104910>,  <4.231244, 2.572876, 1.811372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488861, 2.659300, 2.104910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686954, -0.258755, 0.679073,
		0.336607, -0.941469, -0.018226,
		0.644042, 0.216060, 0.733844,
		4.682074, 2.724118, 2.325063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.260028, 2.012832, 2.294668>,  <4.231244, 2.572876, 1.811372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.260028, 2.012832, 2.294668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.364754, 2.354708, 2.473982>,  <4.427589, 2.559833, 2.581570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.364754, 2.354708, 2.473982>,  <4.260028, 2.012832, 2.294668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.364754, 2.354708, 2.473982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576089, -0.234264, 0.783098,
		0.774322, -0.463278, 0.431043,
		0.261814, 0.854689, 0.448285,
		4.443298, 2.611115, 2.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.559187, 1.943304, 3.024518>,  <4.260028, 2.012832, 2.294668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.559187, 1.943304, 3.024518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330666, 2.267771, 2.974524>,  <4.193553, 2.462451, 2.944527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330666, 2.267771, 2.974524>,  <4.559187, 1.943304, 3.024518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.330666, 2.267771, 2.974524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600843, -0.309618, 0.736970,
		0.559107, 0.496131, 0.664269,
		-0.571303, 0.811166, -0.124987,
		4.159275, 2.511121, 2.937027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.449294, 2.342390, 3.676714>,  <4.559187, 1.943304, 3.024518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.449294, 2.342390, 3.676714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.135513, 2.362991, 3.429496>,  <3.947245, 2.375352, 3.281165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.135513, 2.362991, 3.429496>,  <4.449294, 2.342390, 3.676714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.135513, 2.362991, 3.429496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568072, -0.459540, 0.682727,
		-0.248854, 0.886662, 0.389746,
		-0.784452, 0.051504, -0.618047,
		3.900177, 2.378443, 3.244082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.975455, 2.634362, 4.038739>,  <4.449294, 2.342390, 3.676714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.975455, 2.634362, 4.038739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.771988, 2.434473, 3.758302>,  <3.649908, 2.314539, 3.590039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.771988, 2.434473, 3.758302>,  <3.975455, 2.634362, 4.038739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.771988, 2.434473, 3.758302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648356, -0.313445, 0.693820,
		-0.566473, 0.807483, -0.164560,
		-0.508668, -0.499724, -0.701094,
		3.619388, 2.284556, 3.547973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203486, 2.930805, 4.082055>,  <3.975455, 2.634362, 4.038739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203486, 2.930805, 4.082055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.238033, 2.571856, 3.908959>,  <3.258762, 2.356486, 3.805102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.238033, 2.571856, 3.908959>,  <3.203486, 2.930805, 4.082055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.238033, 2.571856, 3.908959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690959, -0.366872, 0.622880,
		-0.717716, 0.245207, -0.651735,
		0.086369, -0.897373, -0.432738,
		3.263944, 2.302644, 3.779138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.440125, 2.834149, 3.943457>,  <3.203486, 2.930805, 4.082055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.440125, 2.834149, 3.943457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643764, 2.490690, 3.919647>,  <2.765948, 2.284615, 3.905361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643764, 2.490690, 3.919647>,  <2.440125, 2.834149, 3.943457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.643764, 2.490690, 3.919647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688176, -0.447611, 0.571015,
		-0.516945, -0.249738, -0.818778,
		0.509099, -0.858648, -0.059526,
		2.796494, 2.233096, 3.901790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.975507, 2.217340, 3.810741>,  <2.440125, 2.834149, 3.943457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.975507, 2.217340, 3.810741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.310207, 2.071733, 3.974369>,  <2.511028, 1.984369, 4.072546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.310207, 2.071733, 3.974369>,  <1.975507, 2.217340, 3.810741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.310207, 2.071733, 3.974369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545652, -0.491605, 0.678667,
		-0.045945, -0.791085, -0.609978,
		0.836752, -0.364017, 0.409070,
		2.561233, 1.962528, 4.097090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
