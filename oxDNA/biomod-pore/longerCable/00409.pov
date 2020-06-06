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
	<24.545443, 35.115883, 35.086567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402599, 34.744644, 35.044388>,  <24.316893, 34.521900, 35.019081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402599, 34.744644, 35.044388>,  <24.545443, 35.115883, 35.086567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402599, 34.744644, 35.044388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613533, 0.147945, 0.775687,
		-0.704309, 0.341698, -0.622247,
		-0.357109, -0.928092, -0.105444,
		24.295467, 34.466217, 35.012756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286488, 35.696724, 35.517105>,  <24.545443, 35.115883, 35.086567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286488, 35.696724, 35.517105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506874, 35.699242, 35.183304>,  <24.639107, 35.700752, 34.983025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506874, 35.699242, 35.183304>,  <24.286488, 35.696724, 35.517105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506874, 35.699242, 35.183304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544941, 0.754626, 0.365485,
		0.632039, -0.656125, 0.412343,
		0.550968, 0.006298, -0.834503,
		24.672165, 35.701130, 34.932953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983076, 35.537586, 35.555668>,  <24.286488, 35.696724, 35.517105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983076, 35.537586, 35.555668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983120, 35.772991, 35.232273>,  <24.983147, 35.914234, 35.038235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983120, 35.772991, 35.232273>,  <24.983076, 35.537586, 35.555668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983120, 35.772991, 35.232273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607344, 0.642256, 0.467590,
		0.794439, -0.491083, -0.357358,
		0.000110, 0.588510, -0.808490,
		24.983152, 35.949543, 34.989727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687931, 35.773369, 35.371414>,  <24.983076, 35.537586, 35.555668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687931, 35.773369, 35.371414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431202, 36.043571, 35.226219>,  <25.277164, 36.205692, 35.139103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431202, 36.043571, 35.226219>,  <25.687931, 35.773369, 35.371414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431202, 36.043571, 35.226219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446798, 0.714107, 0.538908,
		0.623248, 0.183700, -0.760142,
		-0.641821, 0.675503, -0.362989,
		25.238655, 36.246223, 35.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124281, 36.263565, 35.139797>,  <25.687931, 35.773369, 35.371414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124281, 36.263565, 35.139797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765703, 36.415421, 35.231243>,  <25.550556, 36.506535, 35.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765703, 36.415421, 35.231243>,  <26.124281, 36.263565, 35.139797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765703, 36.415421, 35.231243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441390, 0.718820, 0.537097,
		0.039571, 0.582385, -0.811949,
		-0.896443, 0.379640, 0.228614,
		25.496771, 36.529312, 35.299828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155226, 36.945801, 34.974239>,  <26.124281, 36.263565, 35.139797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155226, 36.945801, 34.974239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853539, 36.917030, 35.235310>,  <25.672525, 36.899769, 35.391953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853539, 36.917030, 35.235310>,  <26.155226, 36.945801, 34.974239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853539, 36.917030, 35.235310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347659, 0.799487, 0.489850,
		-0.557035, 0.596362, -0.577983,
		-0.754218, -0.071922, 0.652673,
		25.627274, 36.895454, 35.431110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817432, 37.535641, 34.952484>,  <26.155226, 36.945801, 34.974239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817432, 37.535641, 34.952484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717169, 37.404415, 35.316799>,  <25.657011, 37.325680, 35.535389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717169, 37.404415, 35.316799>,  <25.817432, 37.535641, 34.952484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717169, 37.404415, 35.316799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196860, 0.903896, 0.379762,
		-0.947849, 0.274488, -0.161984,
		-0.250657, -0.328068, 0.910792,
		25.641972, 37.305996, 35.590038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310141, 37.998981, 35.376564>,  <25.817432, 37.535641, 34.952484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310141, 37.998981, 35.376564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525784, 37.773548, 35.626919>,  <25.655169, 37.638287, 35.777130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525784, 37.773548, 35.626919>,  <25.310141, 37.998981, 35.376564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525784, 37.773548, 35.626919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253143, 0.817189, 0.517804,
		-0.803296, -0.120712, 0.583219,
		0.539105, -0.563588, 0.625887,
		25.687515, 37.604473, 35.814686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276382, 38.423443, 35.953629>,  <25.310141, 37.998981, 35.376564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276382, 38.423443, 35.953629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592695, 38.181973, 35.994102>,  <25.782482, 38.037090, 36.018387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592695, 38.181973, 35.994102>,  <25.276382, 38.423443, 35.953629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592695, 38.181973, 35.994102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455118, 0.690427, 0.562298,
		-0.409306, -0.398605, 0.820721,
		0.790782, -0.603676, 0.101184,
		25.829929, 38.000870, 36.024456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476339, 38.549824, 36.608700>,  <25.276382, 38.423443, 35.953629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476339, 38.549824, 36.608700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805426, 38.379074, 36.458542>,  <26.002878, 38.276627, 36.368446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805426, 38.379074, 36.458542>,  <25.476339, 38.549824, 36.608700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805426, 38.379074, 36.458542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565724, 0.679477, 0.467191,
		0.055641, -0.596735, 0.800507,
		0.822715, -0.426871, -0.375394,
		26.052240, 38.251011, 36.345924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868052, 38.272987, 37.171909>,  <25.476339, 38.549824, 36.608700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868052, 38.272987, 37.171909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086723, 38.423225, 36.872559>,  <26.217926, 38.513367, 36.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086723, 38.423225, 36.872559>,  <25.868052, 38.272987, 37.171909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086723, 38.423225, 36.872559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454149, 0.617881, 0.641850,
		0.703482, -0.690763, 0.167209,
		0.546682, 0.375592, -0.748378,
		26.250729, 38.535904, 36.648045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629820, 38.202389, 37.316143>,  <25.868052, 38.272987, 37.171909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629820, 38.202389, 37.316143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526554, 38.532578, 37.115364>,  <26.464596, 38.730690, 36.994896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526554, 38.532578, 37.115364>,  <26.629820, 38.202389, 37.316143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526554, 38.532578, 37.115364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262330, 0.559936, 0.785910,
		0.929804, 0.071216, -0.361100,
		-0.258163, 0.825469, -0.501948,
		26.449106, 38.780220, 36.964779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151316, 38.725460, 37.456150>,  <26.629820, 38.202389, 37.316143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151316, 38.725460, 37.456150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850046, 38.951874, 37.322083>,  <26.669285, 39.087723, 37.241642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850046, 38.951874, 37.322083>,  <27.151316, 38.725460, 37.456150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850046, 38.951874, 37.322083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447458, 0.814309, 0.369704,
		0.482194, 0.128478, -0.866592,
		-0.753173, 0.566033, -0.335167,
		26.624094, 39.121685, 37.221531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222918, 39.259174, 36.997723>,  <27.151316, 38.725460, 37.456150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222918, 39.259174, 36.997723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917042, 39.430473, 37.190331>,  <26.733517, 39.533253, 37.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917042, 39.430473, 37.190331>,  <27.222918, 39.259174, 36.997723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917042, 39.430473, 37.190331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480092, 0.877042, -0.017581,
		-0.429839, 0.217729, -0.876260,
		-0.764689, 0.428243, 0.481517,
		26.687635, 39.558945, 37.334785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698233, 39.785843, 36.618084>,  <27.222918, 39.259174, 36.997723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698233, 39.785843, 36.618084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731037, 39.866165, 37.008560>,  <26.750719, 39.914356, 37.242847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731037, 39.866165, 37.008560>,  <26.698233, 39.785843, 36.618084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731037, 39.866165, 37.008560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503798, 0.836779, -0.214449,
		-0.859920, 0.509391, -0.032540,
		0.082010, 0.200803, 0.976193,
		26.755640, 39.926407, 37.301418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814466, 39.303745, 35.931770>,  <26.698233, 39.785843, 36.618084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814466, 39.303745, 35.931770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782206, 39.058090, 36.245796>,  <26.762850, 38.910698, 36.434212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782206, 39.058090, 36.245796>,  <26.814466, 39.303745, 35.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782206, 39.058090, 36.245796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498710, -0.657091, -0.565261,
		0.863009, -0.437109, -0.253283,
		-0.080651, -0.614140, 0.785065,
		26.758011, 38.873848, 36.481316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208105, 38.780983, 35.716583>,  <26.814466, 39.303745, 35.931770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208105, 38.780983, 35.716583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896887, 38.700809, 35.954735>,  <26.710155, 38.652706, 36.097626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896887, 38.700809, 35.954735>,  <27.208105, 38.780983, 35.716583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896887, 38.700809, 35.954735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186533, -0.831284, -0.523615,
		0.599877, -0.518453, 0.609388,
		-0.778044, -0.200434, 0.595377,
		26.663473, 38.640678, 36.133347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127378, 37.956432, 35.736233>,  <27.208105, 38.780983, 35.716583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127378, 37.956432, 35.736233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784777, 38.051224, 35.919640>,  <26.579216, 38.108101, 36.029682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784777, 38.051224, 35.919640>,  <27.127378, 37.956432, 35.736233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784777, 38.051224, 35.919640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428082, -0.822462, -0.374569,
		0.288348, -0.517104, 0.805890,
		-0.856505, 0.236981, 0.458518,
		26.527824, 38.122318, 36.057194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922091, 37.375645, 36.037560>,  <27.127378, 37.956432, 35.736233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922091, 37.375645, 36.037560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569668, 37.562557, 36.066936>,  <26.358215, 37.674706, 36.084560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569668, 37.562557, 36.066936>,  <26.922091, 37.375645, 36.037560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569668, 37.562557, 36.066936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472935, -0.867399, -0.154763,
		-0.008617, -0.171087, 0.985218,
		-0.881055, 0.467278, 0.073439,
		26.305351, 37.702740, 36.088966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486872, 36.955849, 36.539429>,  <26.922091, 37.375645, 36.037560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486872, 36.955849, 36.539429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220978, 37.157059, 36.318489>,  <26.061441, 37.277786, 36.185925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220978, 37.157059, 36.318489>,  <26.486872, 36.955849, 36.539429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220978, 37.157059, 36.318489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492729, -0.850944, -0.181970,
		-0.561556, 0.151198, 0.813507,
		-0.664735, 0.503025, -0.552353,
		26.021557, 37.307968, 36.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827278, 36.766766, 36.791615>,  <26.486872, 36.955849, 36.539429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827278, 36.766766, 36.791615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794868, 36.901924, 36.416538>,  <25.775423, 36.983021, 36.191494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794868, 36.901924, 36.416538>,  <25.827278, 36.766766, 36.791615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794868, 36.901924, 36.416538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618859, -0.754525, -0.218416,
		-0.781312, 0.562600, 0.270245,
		-0.081025, 0.337895, -0.937690,
		25.770561, 37.003292, 36.135231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121614, 36.962715, 36.807930>,  <25.827278, 36.766766, 36.791615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121614, 36.962715, 36.807930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248968, 37.046345, 36.438084>,  <25.325380, 37.096523, 36.216175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248968, 37.046345, 36.438084>,  <25.121614, 36.962715, 36.807930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248968, 37.046345, 36.438084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238087, -0.926476, -0.291473,
		-0.917576, 0.312941, -0.245199,
		0.318385, 0.209070, -0.924619,
		25.344484, 37.109066, 36.160698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732977, 36.560257, 36.361511>,  <25.121614, 36.962715, 36.807930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732977, 36.560257, 36.361511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048849, 36.674564, 36.144348>,  <25.238373, 36.743149, 36.014050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048849, 36.674564, 36.144348>,  <24.732977, 36.560257, 36.361511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048849, 36.674564, 36.144348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046723, -0.854320, -0.517643,
		-0.611737, 0.434138, -0.661287,
		0.789680, 0.285765, -0.542904,
		25.285753, 36.760292, 35.981476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580654, 36.560898, 35.625038>,  <24.732977, 36.560257, 36.361511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580654, 36.560898, 35.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950481, 36.423836, 35.691685>,  <25.172379, 36.341599, 35.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950481, 36.423836, 35.691685>,  <24.580654, 36.560898, 35.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950481, 36.423836, 35.691685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112551, -0.663391, -0.739760,
		0.364013, 0.665207, -0.651916,
		0.924569, -0.342656, 0.166613,
		25.227852, 36.321037, 35.741669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.399677, 37.285984, 35.390896>,  <24.580654, 36.560898, 35.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.399677, 37.285984, 35.390896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706827, 37.034386, 35.342346>,  <24.891117, 36.883427, 35.313217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706827, 37.034386, 35.342346>,  <24.399677, 37.285984, 35.390896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706827, 37.034386, 35.342346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473874, -0.430242, -0.768333,
		0.431062, 0.647497, -0.628437,
		0.767873, -0.628999, -0.121371,
		24.937189, 36.845688, 35.305935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515059, 37.185070, 34.682358>,  <24.399677, 37.285984, 35.390896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515059, 37.185070, 34.682358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723963, 36.882481, 34.839836>,  <24.849304, 36.700928, 34.934322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723963, 36.882481, 34.839836>,  <24.515059, 37.185070, 34.682358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723963, 36.882481, 34.839836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371489, -0.617362, -0.693441,
		0.767620, 0.215903, -0.603445,
		0.522260, -0.756472, 0.393694,
		24.880640, 36.655540, 34.957943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760250, 36.805157, 34.080265>,  <24.515059, 37.185070, 34.682358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760250, 36.805157, 34.080265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840244, 36.554623, 34.381653>,  <24.888241, 36.404301, 34.562485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840244, 36.554623, 34.381653>,  <24.760250, 36.805157, 34.080265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840244, 36.554623, 34.381653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343984, -0.764934, -0.544565,
		0.917431, -0.150275, -0.368425,
		0.199986, -0.626334, 0.753466,
		24.900240, 36.366722, 34.607693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073698, 36.498158, 33.498421>,  <24.760250, 36.805157, 34.080265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073698, 36.498158, 33.498421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232164, 36.347012, 33.163692>,  <25.327244, 36.256325, 32.962856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232164, 36.347012, 33.163692>,  <25.073698, 36.498158, 33.498421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232164, 36.347012, 33.163692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516723, 0.845123, -0.136982,
		0.758978, -0.378138, 0.530060,
		0.396168, -0.377860, -0.836823,
		25.351015, 36.233654, 32.912647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844635, 36.562759, 33.498463>,  <25.073698, 36.498158, 33.498421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844635, 36.562759, 33.498463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703375, 36.563606, 33.124237>,  <25.618620, 36.564114, 32.899700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703375, 36.563606, 33.124237>,  <25.844635, 36.562759, 33.498463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703375, 36.563606, 33.124237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588319, 0.778038, -0.220312,
		0.727438, -0.628214, -0.276010,
		-0.353149, 0.002118, -0.935565,
		25.597429, 36.564243, 32.843567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346197, 36.338924, 32.915611>,  <25.844635, 36.562759, 33.498463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346197, 36.338924, 32.915611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093563, 36.625340, 32.796692>,  <25.941982, 36.797188, 32.725342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093563, 36.625340, 32.796692>,  <26.346197, 36.338924, 32.915611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093563, 36.625340, 32.796692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749635, 0.661849, 0.001527,
		0.197858, -0.221899, -0.954784,
		-0.631584, 0.716042, -0.297296,
		25.904087, 36.840153, 32.707504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634199, 36.846416, 32.540810>,  <26.346197, 36.338924, 32.915611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634199, 36.846416, 32.540810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325848, 37.084389, 32.631855>,  <26.140837, 37.227173, 32.686481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325848, 37.084389, 32.631855>,  <26.634199, 36.846416, 32.540810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325848, 37.084389, 32.631855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616222, 0.787002, 0.029986,
		-0.161292, 0.163375, -0.973290,
		-0.770880, 0.594926, 0.227612,
		26.094584, 37.262867, 32.700138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030186, 37.065445, 31.906389>,  <26.634199, 36.846416, 32.540810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030186, 37.065445, 31.906389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153467, 36.686256, 31.938299>,  <27.227436, 36.458744, 31.957445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153467, 36.686256, 31.938299>,  <27.030186, 37.065445, 31.906389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153467, 36.686256, 31.938299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271481, -0.168013, -0.947665,
		0.911760, 0.270419, -0.309139,
		0.308206, -0.947969, 0.079774,
		27.245930, 36.401867, 31.962231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445246, 36.852642, 31.309998>,  <27.030186, 37.065445, 31.906389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445246, 36.852642, 31.309998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310450, 36.512360, 31.471359>,  <27.229572, 36.308189, 31.568176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310450, 36.512360, 31.471359>,  <27.445246, 36.852642, 31.309998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310450, 36.512360, 31.471359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070160, -0.404585, -0.911805,
		0.938891, -0.335571, 0.076655,
		-0.336989, -0.850707, 0.403405,
		27.209352, 36.257149, 31.592381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792114, 36.269344, 30.884596>,  <27.445246, 36.852642, 31.309998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792114, 36.269344, 30.884596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495935, 36.066143, 31.060631>,  <27.318228, 35.944221, 31.166252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495935, 36.066143, 31.060631>,  <27.792114, 36.269344, 30.884596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495935, 36.066143, 31.060631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296832, -0.340299, -0.892237,
		0.603019, -0.791284, 0.101181,
		-0.740444, -0.508003, 0.440085,
		27.273802, 35.913742, 31.192656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730968, 35.554291, 30.620741>,  <27.792114, 36.269344, 30.884596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730968, 35.554291, 30.620741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385681, 35.698898, 30.761686>,  <27.178509, 35.785664, 30.846254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385681, 35.698898, 30.761686>,  <27.730968, 35.554291, 30.620741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385681, 35.698898, 30.761686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482367, -0.384751, -0.786949,
		-0.148924, -0.849277, 0.506508,
		-0.863217, 0.361518, 0.352364,
		27.126717, 35.807354, 30.867395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849535, 35.305920, 31.257183>,  <27.730968, 35.554291, 30.620741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849535, 35.305920, 31.257183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454618, 35.259514, 31.300631>,  <27.217669, 35.231670, 31.326698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454618, 35.259514, 31.300631>,  <27.849535, 35.305920, 31.257183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454618, 35.259514, 31.300631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121504, 0.110486, -0.986423,
		0.102419, -0.987086, -0.123176,
		-0.987293, -0.115995, 0.108619,
		27.158432, 35.224709, 31.333216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465809, 34.727428, 30.927094>,  <27.849535, 35.305920, 31.257183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465809, 34.727428, 30.927094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222775, 35.041561, 30.974579>,  <27.076954, 35.230042, 31.003071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222775, 35.041561, 30.974579>,  <27.465809, 34.727428, 30.927094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222775, 35.041561, 30.974579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209047, -0.013923, -0.977806,
		-0.766250, -0.618918, 0.172631,
		-0.607586, 0.785332, 0.118714,
		27.040499, 35.277161, 31.010193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863136, 34.532124, 30.490150>,  <27.465809, 34.727428, 30.927094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863136, 34.532124, 30.490150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777447, 34.915649, 30.564741>,  <26.726032, 35.145767, 30.609495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777447, 34.915649, 30.564741>,  <26.863136, 34.532124, 30.490150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777447, 34.915649, 30.564741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357380, 0.100733, -0.928511,
		-0.909058, -0.265554, 0.321083,
		-0.214226, 0.958819, 0.186476,
		26.713179, 35.203297, 30.620684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119953, 34.596951, 30.461792>,  <26.863136, 34.532124, 30.490150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119953, 34.596951, 30.461792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274622, 34.963810, 30.423176>,  <26.367424, 35.183926, 30.400005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274622, 34.963810, 30.423176>,  <26.119953, 34.596951, 30.461792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274622, 34.963810, 30.423176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257451, 0.006829, -0.966267,
		-0.885552, 0.398485, 0.238761,
		0.386674, 0.917149, -0.096543,
		26.390625, 35.238956, 30.394213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580999, 35.004383, 30.246199>,  <26.119953, 34.596951, 30.461792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580999, 35.004383, 30.246199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926456, 35.182583, 30.151831>,  <26.133730, 35.289501, 30.095209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926456, 35.182583, 30.151831>,  <25.580999, 35.004383, 30.246199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926456, 35.182583, 30.151831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296321, 0.070022, -0.952518,
		-0.407823, 0.892542, 0.192483,
		0.863640, 0.445495, -0.235922,
		26.185549, 35.316231, 30.081055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850849, 34.960964, 29.500940>,  <25.580999, 35.004383, 30.246199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850849, 34.960964, 29.500940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978622, 35.329483, 29.412233>,  <26.055286, 35.550594, 29.359009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978622, 35.329483, 29.412233>,  <25.850849, 34.960964, 29.500940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978622, 35.329483, 29.412233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047629, 0.218122, 0.974759,
		0.946411, -0.321933, 0.025795,
		0.319433, 0.921294, -0.221766,
		26.074453, 35.605869, 29.345703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651796, 35.211987, 29.722012>,  <25.850849, 34.960964, 29.500940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651796, 35.211987, 29.722012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395189, 35.518120, 29.701136>,  <26.241224, 35.701797, 29.688610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395189, 35.518120, 29.701136>,  <26.651796, 35.211987, 29.722012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395189, 35.518120, 29.701136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052773, 0.111904, 0.992317,
		0.765291, 0.633834, -0.112177,
		-0.641518, 0.765331, -0.052190,
		26.202734, 35.747719, 29.685478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011606, 35.816250, 29.792574>,  <26.651796, 35.211987, 29.722012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011606, 35.816250, 29.792574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634832, 35.812809, 29.926849>,  <26.408768, 35.810745, 30.007414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634832, 35.812809, 29.926849>,  <27.011606, 35.816250, 29.792574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634832, 35.812809, 29.926849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334999, -0.092920, 0.937625,
		0.023129, 0.995637, 0.090405,
		-0.941935, -0.008599, 0.335687,
		26.352253, 35.810230, 30.027555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770672, 36.455112, 30.322983>,  <27.011606, 35.816250, 29.792574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770672, 36.455112, 30.322983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635643, 36.080029, 30.355829>,  <26.554626, 35.854977, 30.375538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635643, 36.080029, 30.355829>,  <26.770672, 36.455112, 30.322983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635643, 36.080029, 30.355829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339602, -0.039960, 0.939720,
		-0.877905, 0.345109, 0.331938,
		-0.337570, -0.937712, 0.082118,
		26.534372, 35.798714, 30.380465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342503, 36.415085, 30.945271>,  <26.770672, 36.455112, 30.322983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342503, 36.415085, 30.945271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460194, 36.046917, 30.842302>,  <26.530809, 35.826015, 30.780521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460194, 36.046917, 30.842302>,  <26.342503, 36.415085, 30.945271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460194, 36.046917, 30.842302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317589, -0.159877, 0.934653,
		-0.901425, -0.356755, 0.245274,
		0.294229, -0.920416, -0.257419,
		26.548462, 35.770794, 30.765076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022291, 35.942444, 31.358761>,  <26.342503, 36.415085, 30.945271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022291, 35.942444, 31.358761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366007, 35.774361, 31.242109>,  <26.572235, 35.673512, 31.172117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366007, 35.774361, 31.242109>,  <26.022291, 35.942444, 31.358761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366007, 35.774361, 31.242109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279326, -0.092118, 0.955767,
		-0.428487, -0.902739, 0.038219,
		0.859288, -0.420210, -0.291630,
		26.623793, 35.648296, 31.154621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221357, 35.573532, 31.841230>,  <26.022291, 35.942444, 31.358761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221357, 35.573532, 31.841230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567226, 35.609745, 31.643585>,  <26.774748, 35.631474, 31.524998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567226, 35.609745, 31.643585>,  <26.221357, 35.573532, 31.841230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567226, 35.609745, 31.643585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491319, 0.052486, 0.869397,
		0.104643, -0.994509, 0.000903,
		0.864671, 0.090532, -0.494114,
		26.826628, 35.636906, 31.495352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721865, 35.143131, 32.112732>,  <26.221357, 35.573532, 31.841230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721865, 35.143131, 32.112732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894829, 35.460529, 31.941437>,  <26.998608, 35.650967, 31.838659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894829, 35.460529, 31.941437>,  <26.721865, 35.143131, 32.112732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894829, 35.460529, 31.941437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372158, 0.275537, 0.886328,
		0.821292, -0.542630, -0.176160,
		0.432410, 0.793494, -0.428241,
		27.024551, 35.698578, 31.812965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469963, 35.092567, 32.176109>,  <26.721865, 35.143131, 32.112732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469963, 35.092567, 32.176109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340937, 35.469254, 32.137905>,  <27.263521, 35.695267, 32.114983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340937, 35.469254, 32.137905>,  <27.469963, 35.092567, 32.176109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340937, 35.469254, 32.137905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402824, 0.227887, 0.886454,
		0.856554, 0.247463, -0.452854,
		-0.322564, 0.941716, -0.095513,
		27.244167, 35.751770, 32.109253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994055, 35.576794, 32.212967>,  <27.469963, 35.092567, 32.176109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994055, 35.576794, 32.212967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641146, 35.707203, 32.348793>,  <27.429401, 35.785450, 32.430290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641146, 35.707203, 32.348793>,  <27.994055, 35.576794, 32.212967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641146, 35.707203, 32.348793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441964, 0.325337, 0.835957,
		0.162066, 0.887618, -0.431125,
		-0.882271, 0.326022, 0.339569,
		27.376465, 35.805008, 32.450665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832232, 35.531574, 31.904678>,  <27.994055, 35.576794, 32.212967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832232, 35.531574, 31.904678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566154, 35.823265, 31.840502>,  <28.406507, 35.998280, 31.801996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566154, 35.823265, 31.840502>,  <28.832232, 35.531574, 31.904678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566154, 35.823265, 31.840502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692654, 0.522417, -0.497303,
		-0.278832, -0.441932, -0.852613,
		-0.665194, 0.729230, -0.160439,
		28.366596, 36.042034, 31.792370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827564, 35.751438, 32.681614>,  <28.832232, 35.531574, 31.904678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827564, 35.751438, 32.681614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915016, 36.042545, 32.941628>,  <28.967487, 36.217209, 33.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915016, 36.042545, 32.941628>,  <28.827564, 35.751438, 32.681614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915016, 36.042545, 32.941628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798536, -0.516304, 0.309469,
		0.560839, 0.451418, -0.694033,
		0.218632, 0.727772, 0.650037,
		28.980606, 36.260876, 33.136639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501535, 35.843956, 32.647758>,  <28.827564, 35.751438, 32.681614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501535, 35.843956, 32.647758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404007, 35.960083, 33.017899>,  <29.345490, 36.029758, 33.239983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404007, 35.960083, 33.017899>,  <29.501535, 35.843956, 32.647758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404007, 35.960083, 33.017899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761993, -0.532886, 0.367966,
		0.599933, 0.794825, -0.091294,
		-0.243819, 0.290320, 0.925347,
		29.330862, 36.047180, 33.295502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988199, 36.146217, 33.209156>,  <29.501535, 35.843956, 32.647758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988199, 36.146217, 33.209156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692650, 35.934669, 33.376186>,  <29.515320, 35.807739, 33.476402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692650, 35.934669, 33.376186>,  <29.988199, 36.146217, 33.209156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692650, 35.934669, 33.376186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644693, -0.735117, 0.209699,
		0.196062, 0.424147, 0.884115,
		-0.738871, -0.528869, 0.417573,
		29.470989, 35.776009, 33.501457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065226, 35.933723, 33.914833>,  <29.988199, 36.146217, 33.209156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065226, 35.933723, 33.914833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828211, 35.666077, 33.735420>,  <29.686001, 35.505489, 33.627773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828211, 35.666077, 33.735420>,  <30.065226, 35.933723, 33.914833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828211, 35.666077, 33.735420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713230, -0.694600, 0.093982,
		-0.374433, -0.264216, 0.888814,
		-0.592539, -0.669119, -0.448528,
		29.650450, 35.465340, 33.600861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958145, 35.259087, 34.370689>,  <30.065226, 35.933723, 33.914833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958145, 35.259087, 34.370689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953667, 35.201725, 33.974850>,  <29.950979, 35.167309, 33.737347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953667, 35.201725, 33.974850>,  <29.958145, 35.259087, 34.370689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953667, 35.201725, 33.974850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721620, -0.686245, 0.091280,
		-0.692198, -0.713094, 0.111166,
		-0.011196, -0.143404, -0.989601,
		29.950308, 35.158703, 33.677971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819397, 34.618706, 34.228889>,  <29.958145, 35.259087, 34.370689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819397, 34.618706, 34.228889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008852, 34.710159, 33.888680>,  <30.122524, 34.765030, 33.684551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008852, 34.710159, 33.888680>,  <29.819397, 34.618706, 34.228889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008852, 34.710159, 33.888680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391845, -0.919574, -0.028983,
		-0.788749, -0.319548, -0.525132,
		0.473637, 0.228631, -0.850527,
		30.150944, 34.778748, 33.633522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720829, 33.984245, 33.905010>,  <29.819397, 34.618706, 34.228889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720829, 33.984245, 33.905010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025087, 34.208061, 33.773357>,  <30.207644, 34.342350, 33.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025087, 34.208061, 33.773357>,  <29.720829, 33.984245, 33.905010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025087, 34.208061, 33.773357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602796, -0.796981, 0.038196,
		-0.240940, -0.227453, -0.943511,
		0.760648, 0.559541, -0.329132,
		30.253283, 34.375923, 33.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087767, 33.624977, 33.350269>,  <29.720829, 33.984245, 33.905010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087767, 33.624977, 33.350269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344887, 33.890682, 33.502876>,  <30.499159, 34.050106, 33.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344887, 33.890682, 33.502876>,  <30.087767, 33.624977, 33.350269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344887, 33.890682, 33.502876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679857, -0.724199, 0.115457,
		0.352991, 0.185164, -0.917121,
		0.642800, 0.664267, 0.381521,
		30.537727, 34.089962, 33.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737907, 33.489807, 33.038975>,  <30.087767, 33.624977, 33.350269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737907, 33.489807, 33.038975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830290, 33.692982, 33.370918>,  <30.885719, 33.814884, 33.570084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830290, 33.692982, 33.370918>,  <30.737907, 33.489807, 33.038975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830290, 33.692982, 33.370918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744545, -0.641332, 0.185330,
		0.626349, 0.575063, -0.526298,
		0.230955, 0.507933, 0.829858,
		30.899576, 33.845360, 33.619877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398134, 33.822388, 33.050488>,  <30.737907, 33.489807, 33.038975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398134, 33.822388, 33.050488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262529, 33.726742, 33.414444>,  <31.181166, 33.669353, 33.632816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262529, 33.726742, 33.414444>,  <31.398134, 33.822388, 33.050488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262529, 33.726742, 33.414444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687762, -0.722904, 0.066278,
		0.641914, 0.648256, 0.409526,
		-0.339013, -0.239112, 0.909888,
		31.160826, 33.655006, 33.687408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917706, 33.747425, 32.564827>,  <31.398134, 33.822388, 33.050488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917706, 33.747425, 32.564827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203854, 33.967278, 32.737408>,  <32.375542, 34.099190, 32.840958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203854, 33.967278, 32.737408>,  <31.917706, 33.747425, 32.564827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203854, 33.967278, 32.737408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698745, -0.564073, -0.439973,
		0.001549, 0.616220, -0.787572,
		0.715369, 0.549631, 0.431455,
		32.418465, 34.132168, 32.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347401, 34.073093, 32.055359>,  <31.917706, 33.747425, 32.564827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347401, 34.073093, 32.055359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543842, 33.945148, 32.379459>,  <32.661709, 33.868382, 32.573917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543842, 33.945148, 32.379459>,  <32.347401, 34.073093, 32.055359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543842, 33.945148, 32.379459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718559, -0.377055, -0.584382,
		0.492429, 0.869206, 0.044665,
		0.491107, -0.319861, 0.810249,
		32.691174, 33.849190, 32.622536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928715, 34.436459, 32.290485>,  <32.347401, 34.073093, 32.055359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928715, 34.436459, 32.290485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996201, 34.043415, 32.321487>,  <33.036694, 33.807587, 32.340088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996201, 34.043415, 32.321487>,  <32.928715, 34.436459, 32.290485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996201, 34.043415, 32.321487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821674, 0.096781, -0.561681,
		0.544414, 0.158449, 0.823715,
		0.168719, -0.982612, 0.077505,
		33.046818, 33.748631, 32.344738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666065, 34.281921, 32.432171>,  <32.928715, 34.436459, 32.290485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666065, 34.281921, 32.432171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552288, 33.959984, 32.223820>,  <33.484020, 33.766819, 32.098808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552288, 33.959984, 32.223820>,  <33.666065, 34.281921, 32.432171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552288, 33.959984, 32.223820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841122, 0.051185, -0.538417,
		0.460005, -0.591269, 0.662417,
		-0.284444, -0.804848, -0.520875,
		33.466953, 33.718529, 32.067558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169090, 33.795433, 32.308434>,  <33.666065, 34.281921, 32.432171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169090, 33.795433, 32.308434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901154, 33.763664, 32.013138>,  <33.740391, 33.744602, 31.835960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901154, 33.763664, 32.013138>,  <34.169090, 33.795433, 32.308434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901154, 33.763664, 32.013138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736406, 0.056087, -0.674211,
		0.094953, -0.995262, 0.020918,
		-0.669843, -0.079422, -0.738242,
		33.700199, 33.739838, 31.791666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303947, 33.257439, 31.802858>,  <34.169090, 33.795433, 32.308434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303947, 33.257439, 31.802858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160763, 33.607067, 31.671490>,  <34.074852, 33.816845, 31.592669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160763, 33.607067, 31.671490>,  <34.303947, 33.257439, 31.802858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160763, 33.607067, 31.671490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524536, -0.102747, -0.845166,
		-0.772481, -0.474805, -0.421703,
		-0.357960, 0.874073, -0.328422,
		34.053375, 33.869289, 31.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914410, 33.200184, 31.115160>,  <34.303947, 33.257439, 31.802858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914410, 33.200184, 31.115160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093941, 33.550385, 31.186766>,  <34.201660, 33.760506, 31.229729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093941, 33.550385, 31.186766>,  <33.914410, 33.200184, 31.115160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093941, 33.550385, 31.186766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560368, -0.119702, -0.819548,
		-0.696089, 0.468149, -0.544331,
		0.448828, 0.875504, 0.179013,
		34.228588, 33.813034, 31.240469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987366, 33.461983, 30.487215>,  <33.914410, 33.200184, 31.115160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987366, 33.461983, 30.487215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251133, 33.669209, 30.705128>,  <34.409393, 33.793545, 30.835875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251133, 33.669209, 30.705128>,  <33.987366, 33.461983, 30.487215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251133, 33.669209, 30.705128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541825, 0.174844, -0.822104,
		-0.521152, 0.837282, -0.165404,
		0.659414, 0.518062, 0.544781,
		34.448956, 33.824627, 30.868563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997875, 34.119102, 30.222654>,  <33.987366, 33.461983, 30.487215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997875, 34.119102, 30.222654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336159, 34.023869, 30.413689>,  <34.539127, 33.966728, 30.528309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336159, 34.023869, 30.413689>,  <33.997875, 34.119102, 30.222654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336159, 34.023869, 30.413689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495210, 0.016650, -0.868614,
		0.198855, 0.971101, 0.131985,
		0.845709, -0.238089, 0.477588,
		34.589870, 33.952442, 30.556965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438377, 34.564533, 29.952446>,  <33.997875, 34.119102, 30.222654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438377, 34.564533, 29.952446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664284, 34.273533, 30.108286>,  <34.799828, 34.098934, 30.201790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664284, 34.273533, 30.108286>,  <34.438377, 34.564533, 29.952446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664284, 34.273533, 30.108286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664152, 0.120449, -0.737831,
		0.489844, 0.675453, 0.551195,
		0.564762, -0.727499, 0.389602,
		34.833714, 34.055283, 30.225166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020996, 34.851166, 30.063259>,  <34.438377, 34.564533, 29.952446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020996, 34.851166, 30.063259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116520, 34.463139, 30.045639>,  <35.173836, 34.230324, 30.035067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116520, 34.463139, 30.045639>,  <35.020996, 34.851166, 30.063259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116520, 34.463139, 30.045639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733134, 0.209855, -0.646896,
		0.636777, 0.122191, 0.761305,
		0.238808, -0.970067, -0.044048,
		35.188164, 34.172119, 30.032425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733009, 34.748550, 30.038868>,  <35.020996, 34.851166, 30.063259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733009, 34.748550, 30.038868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578671, 34.418938, 29.872934>,  <35.486065, 34.221169, 29.773375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578671, 34.418938, 29.872934>,  <35.733009, 34.748550, 30.038868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578671, 34.418938, 29.872934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705363, 0.026317, -0.708357,
		0.594627, -0.565929, 0.571089,
		-0.385851, -0.824034, -0.414834,
		35.462914, 34.171726, 29.748484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387085, 34.425880, 29.813908>,  <35.733009, 34.748550, 30.038868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387085, 34.425880, 29.813908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107929, 34.247410, 29.589808>,  <35.940437, 34.140327, 29.455347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107929, 34.247410, 29.589808>,  <36.387085, 34.425880, 29.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107929, 34.247410, 29.589808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583059, 0.100346, -0.806209,
		0.415930, -0.889302, 0.190116,
		-0.697886, -0.446175, -0.560253,
		35.898563, 34.113556, 29.421732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848724, 33.920906, 29.481915>,  <36.387085, 34.425880, 29.813908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848724, 33.920906, 29.481915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505871, 33.972870, 29.282539>,  <36.300159, 34.004047, 29.162914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505871, 33.972870, 29.282539>,  <36.848724, 33.920906, 29.481915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505871, 33.972870, 29.282539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514169, 0.273563, -0.812892,
		0.030750, -0.953040, -0.301277,
		-0.857137, 0.129911, -0.498436,
		36.248730, 34.011845, 29.133009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894470, 33.433666, 28.994493>,  <36.848724, 33.920906, 29.481915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894470, 33.433666, 28.994493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647537, 33.727417, 28.881647>,  <36.499378, 33.903667, 28.813938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647537, 33.727417, 28.881647>,  <36.894470, 33.433666, 28.994493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647537, 33.727417, 28.881647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514931, 0.106079, -0.850643,
		-0.594766, -0.670400, -0.443640,
		-0.617332, 0.734378, -0.282117,
		36.462337, 33.947731, 28.797012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722218, 33.315323, 28.272253>,  <36.894470, 33.433666, 28.994493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722218, 33.315323, 28.272253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624298, 33.697285, 28.339462>,  <36.565548, 33.926460, 28.379787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624298, 33.697285, 28.339462>,  <36.722218, 33.315323, 28.272253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624298, 33.697285, 28.339462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447101, 0.264945, -0.854344,
		-0.860335, -0.134017, -0.491797,
		-0.244795, 0.954905, 0.168022,
		36.550858, 33.983757, 28.389870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499485, 33.560635, 27.610792>,  <36.722218, 33.315323, 28.272253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499485, 33.560635, 27.610792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602547, 33.876881, 27.832979>,  <36.664383, 34.066628, 27.966291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602547, 33.876881, 27.832979>,  <36.499485, 33.560635, 27.610792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602547, 33.876881, 27.832979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531755, 0.363966, -0.764699,
		-0.806753, 0.492400, -0.326636,
		0.257653, 0.790614, 0.555467,
		36.679844, 34.114063, 27.999619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746956, 33.941792, 27.104679>,  <36.499485, 33.560635, 27.610792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746956, 33.941792, 27.104679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863533, 34.189915, 27.395958>,  <36.933479, 34.338791, 27.570726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863533, 34.189915, 27.395958>,  <36.746956, 33.941792, 27.104679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863533, 34.189915, 27.395958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465126, 0.573303, -0.674523,
		-0.835892, 0.535292, -0.121435,
		0.291447, 0.620311, 0.728198,
		36.950966, 34.376007, 27.614418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536098, 34.606197, 26.947290>,  <36.746956, 33.941792, 27.104679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536098, 34.606197, 26.947290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840042, 34.631401, 27.206100>,  <37.022408, 34.646523, 27.361387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840042, 34.631401, 27.206100>,  <36.536098, 34.606197, 26.947290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840042, 34.631401, 27.206100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482831, 0.611752, -0.626604,
		-0.435299, 0.788536, 0.434426,
		0.759861, 0.063006, 0.647025,
		37.068001, 34.650303, 27.400208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853779, 35.237240, 26.789803>,  <36.536098, 34.606197, 26.947290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853779, 35.237240, 26.789803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140816, 35.051483, 26.997417>,  <37.313038, 34.940029, 27.121986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140816, 35.051483, 26.997417>,  <36.853779, 35.237240, 26.789803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140816, 35.051483, 26.997417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687669, 0.354379, -0.633662,
		0.110334, 0.811636, 0.573650,
		0.717592, -0.464395, 0.519037,
		37.356094, 34.912163, 27.153128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311077, 35.743198, 27.148350>,  <36.853779, 35.237240, 26.789803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311077, 35.743198, 27.148350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490570, 35.396645, 27.060698>,  <37.598267, 35.188713, 27.008106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490570, 35.396645, 27.060698>,  <37.311077, 35.743198, 27.148350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490570, 35.396645, 27.060698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552277, 0.461627, -0.694184,
		0.702585, 0.190484, 0.685631,
		0.448737, -0.866381, -0.219132,
		37.625191, 35.136730, 26.994959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045834, 35.915600, 27.131618>,  <37.311077, 35.743198, 27.148350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045834, 35.915600, 27.131618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013378, 35.565788, 26.940363>,  <37.993904, 35.355900, 26.825609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013378, 35.565788, 26.940363>,  <38.045834, 35.915600, 27.131618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013378, 35.565788, 26.940363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666048, 0.309308, -0.678755,
		0.741482, -0.373537, 0.557381,
		-0.081138, -0.874528, -0.478140,
		37.989037, 35.303429, 26.796921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602959, 35.900120, 26.774073>,  <38.045834, 35.915600, 27.131618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602959, 35.900120, 26.774073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390621, 35.602551, 26.611700>,  <38.263218, 35.424007, 26.514277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390621, 35.602551, 26.611700>,  <38.602959, 35.900120, 26.774073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390621, 35.602551, 26.611700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494945, 0.116669, -0.861056,
		0.687920, -0.658001, 0.306269,
		-0.530843, -0.743924, -0.405933,
		38.231369, 35.379372, 26.489920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104927, 35.344921, 26.597685>,  <38.602959, 35.900120, 26.774073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104927, 35.344921, 26.597685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777828, 35.336071, 26.367622>,  <38.581570, 35.330761, 26.229584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777828, 35.336071, 26.367622>,  <39.104927, 35.344921, 26.597685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777828, 35.336071, 26.367622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560739, 0.194851, -0.804739,
		0.129871, -0.980583, -0.146935,
		-0.817744, -0.022120, -0.575157,
		38.532505, 35.329433, 26.195076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217407, 34.858166, 26.028923>,  <39.104927, 35.344921, 26.597685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217407, 34.858166, 26.028923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905460, 35.078487, 25.909983>,  <38.718292, 35.210678, 25.838619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905460, 35.078487, 25.909983>,  <39.217407, 34.858166, 26.028923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905460, 35.078487, 25.909983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335379, -0.033406, -0.941491,
		-0.528508, -0.833967, -0.158675,
		-0.779872, 0.550801, -0.297351,
		38.671497, 35.243729, 25.820778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991814, 34.513805, 25.380806>,  <39.217407, 34.858166, 26.028923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991814, 34.513805, 25.380806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825069, 34.877155, 25.367645>,  <38.725021, 35.095165, 25.359749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825069, 34.877155, 25.367645>,  <38.991814, 34.513805, 25.380806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825069, 34.877155, 25.367645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187645, 0.050583, -0.980933,
		-0.889392, -0.415085, -0.191538,
		-0.416859, 0.908375, -0.032900,
		38.700012, 35.149670, 25.357775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601913, 34.627571, 24.741966>,  <38.991814, 34.513805, 25.380806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601913, 34.627571, 24.741966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644302, 35.010204, 24.850567>,  <38.669735, 35.239784, 24.915728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644302, 35.010204, 24.850567>,  <38.601913, 34.627571, 24.741966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644302, 35.010204, 24.850567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134460, 0.256744, -0.957080,
		-0.985237, 0.137925, -0.101416,
		0.105968, 0.956587, 0.271499,
		38.676094, 35.297180, 24.932016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115227, 34.967121, 24.375732>,  <38.601913, 34.627571, 24.741966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115227, 34.967121, 24.375732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405987, 35.229382, 24.457447>,  <38.580444, 35.386738, 24.506475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405987, 35.229382, 24.457447>,  <38.115227, 34.967121, 24.375732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405987, 35.229382, 24.457447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007426, 0.289952, -0.957013,
		-0.686699, 0.697173, 0.205898,
		0.726904, 0.655650, 0.204287,
		38.624058, 35.426075, 24.518734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897743, 35.554424, 24.056808>,  <38.115227, 34.967121, 24.375732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897743, 35.554424, 24.056808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292927, 35.589756, 24.107622>,  <38.530037, 35.610954, 24.138111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292927, 35.589756, 24.107622>,  <37.897743, 35.554424, 24.056808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292927, 35.589756, 24.107622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095658, 0.296619, -0.950193,
		-0.121611, 0.950902, 0.284597,
		0.987958, 0.088330, 0.127034,
		38.589314, 35.616257, 24.145733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121712, 36.208023, 23.631598>,  <37.897743, 35.554424, 24.056808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121712, 36.208023, 23.631598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469830, 36.027435, 23.710356>,  <38.678699, 35.919083, 23.757610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469830, 36.027435, 23.710356>,  <38.121712, 36.208023, 23.631598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469830, 36.027435, 23.710356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361866, 0.314895, -0.877436,
		0.334136, 0.834874, 0.437422,
		0.870291, -0.451471, 0.196895,
		38.730915, 35.891994, 23.769424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562649, 36.686878, 23.283792>,  <38.121712, 36.208023, 23.631598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562649, 36.686878, 23.283792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782059, 36.355362, 23.328012>,  <38.913704, 36.156452, 23.354544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782059, 36.355362, 23.328012>,  <38.562649, 36.686878, 23.283792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782059, 36.355362, 23.328012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395206, 0.140476, -0.907788,
		0.736840, 0.541634, 0.404599,
		0.548525, -0.828794, 0.110548,
		38.946617, 36.106724, 23.361177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269154, 36.839302, 23.057369>,  <38.562649, 36.686878, 23.283792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269154, 36.839302, 23.057369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223553, 36.442257, 23.040800>,  <39.196190, 36.204029, 23.030859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223553, 36.442257, 23.040800>,  <39.269154, 36.839302, 23.057369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223553, 36.442257, 23.040800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457886, -0.015497, -0.888876,
		0.881670, -0.120304, 0.456272,
		-0.114006, -0.992616, -0.041423,
		39.189350, 36.144470, 23.028374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874840, 36.557560, 22.911495>,  <39.269154, 36.839302, 23.057369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874840, 36.557560, 22.911495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627323, 36.258808, 22.814119>,  <39.478813, 36.079556, 22.755693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627323, 36.258808, 22.814119>,  <39.874840, 36.557560, 22.911495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627323, 36.258808, 22.814119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445508, -0.078418, -0.891837,
		0.647008, -0.660315, 0.381267,
		-0.618792, -0.746883, -0.243438,
		39.441685, 36.034744, 22.741087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263409, 36.145550, 22.528637>,  <39.874840, 36.557560, 22.911495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263409, 36.145550, 22.528637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898716, 36.037785, 22.404596>,  <39.679901, 35.973125, 22.330172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898716, 36.037785, 22.404596>,  <40.263409, 36.145550, 22.528637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898716, 36.037785, 22.404596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337178, -0.059603, -0.939552,
		0.234648, -0.961177, 0.145184,
		-0.911730, -0.269417, -0.310102,
		39.625198, 35.956959, 22.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299755, 35.683361, 22.060720>,  <40.263409, 36.145550, 22.528637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299755, 35.683361, 22.060720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937473, 35.836315, 21.987534>,  <39.720104, 35.928085, 21.943621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937473, 35.836315, 21.987534>,  <40.299755, 35.683361, 22.060720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937473, 35.836315, 21.987534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254299, 0.144786, -0.956226,
		-0.339152, -0.912590, -0.228373,
		-0.905708, 0.382382, -0.182966,
		39.665760, 35.951031, 21.932644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768951, 35.336246, 21.474537>,  <40.299755, 35.683361, 22.060720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768951, 35.336246, 21.474537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708649, 35.727100, 21.534504>,  <39.672466, 35.961613, 21.570484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708649, 35.727100, 21.534504>,  <39.768951, 35.336246, 21.474537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708649, 35.727100, 21.534504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213185, 0.180218, -0.960247,
		-0.965311, -0.112800, -0.235480,
		-0.150754, 0.977137, 0.149919,
		39.663422, 36.020241, 21.579479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518753, 35.609669, 20.818581>,  <39.768951, 35.336246, 21.474537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518753, 35.609669, 20.818581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607445, 35.952145, 21.005243>,  <39.660660, 36.157631, 21.117241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607445, 35.952145, 21.005243>,  <39.518753, 35.609669, 20.818581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607445, 35.952145, 21.005243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246091, 0.413942, -0.876408,
		-0.943543, 0.309168, -0.118918,
		0.221732, 0.856193, 0.466656,
		39.673965, 36.209003, 21.145241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251667, 36.044373, 20.389580>,  <39.518753, 35.609669, 20.818581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251667, 36.044373, 20.389580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503483, 36.254398, 20.618658>,  <39.654572, 36.380413, 20.756105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503483, 36.254398, 20.618658>,  <39.251667, 36.044373, 20.389580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503483, 36.254398, 20.618658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343038, 0.473525, -0.811233,
		-0.697139, 0.707161, 0.117986,
		0.629542, 0.525068, 0.572696,
		39.692345, 36.411919, 20.790466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256504, 36.651535, 20.058485>,  <39.251667, 36.044373, 20.389580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256504, 36.651535, 20.058485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600197, 36.634480, 20.262405>,  <39.806412, 36.624245, 20.384758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600197, 36.634480, 20.262405>,  <39.256504, 36.651535, 20.058485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600197, 36.634480, 20.262405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462651, 0.490063, -0.738778,
		-0.218331, 0.870643, 0.440808,
		0.859235, -0.042642, 0.509800,
		39.857967, 36.621685, 20.415346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566555, 37.357922, 19.894262>,  <39.256504, 36.651535, 20.058485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566555, 37.357922, 19.894262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860504, 37.120884, 20.026197>,  <40.036873, 36.978661, 20.105358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860504, 37.120884, 20.026197>,  <39.566555, 37.357922, 19.894262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860504, 37.120884, 20.026197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563908, 0.263702, -0.782604,
		0.376791, 0.761110, 0.527958,
		0.734871, -0.592598, 0.329836,
		40.080967, 36.943104, 20.125149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136620, 37.747883, 19.768457>,  <39.566555, 37.357922, 19.894262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136620, 37.747883, 19.768457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295395, 37.381805, 19.796349>,  <40.390659, 37.162159, 19.813084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295395, 37.381805, 19.796349>,  <40.136620, 37.747883, 19.768457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295395, 37.381805, 19.796349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553852, 0.178254, -0.813310,
		0.731905, 0.361457, 0.577637,
		0.396942, -0.915191, 0.069729,
		40.414478, 37.107246, 19.817266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859402, 37.858631, 19.908569>,  <40.136620, 37.747883, 19.768457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859402, 37.858631, 19.908569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824432, 37.497147, 19.740923>,  <40.803452, 37.280254, 19.640335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824432, 37.497147, 19.740923>,  <40.859402, 37.858631, 19.908569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824432, 37.497147, 19.740923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686599, 0.250169, -0.682640,
		0.721762, -0.347439, 0.598620,
		-0.087419, -0.903715, -0.419114,
		40.798206, 37.226032, 19.615189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519047, 37.569977, 19.792850>,  <40.859402, 37.858631, 19.908569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519047, 37.569977, 19.792850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284573, 37.374306, 19.534521>,  <41.143887, 37.256905, 19.379524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284573, 37.374306, 19.534521>,  <41.519047, 37.569977, 19.792850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284573, 37.374306, 19.534521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711596, 0.070212, -0.699071,
		0.387315, -0.869353, 0.306940,
		-0.586189, -0.489178, -0.645823,
		41.108715, 37.227551, 19.340775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985916, 37.208801, 19.279430>,  <41.519047, 37.569977, 19.792850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985916, 37.208801, 19.279430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637924, 37.204449, 19.082245>,  <41.429127, 37.201836, 18.963934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637924, 37.204449, 19.082245>,  <41.985916, 37.208801, 19.279430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637924, 37.204449, 19.082245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484506, 0.166801, -0.858738,
		0.091568, -0.985931, -0.139843,
		-0.869982, -0.010878, -0.492963,
		41.376930, 37.201183, 18.934357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164062, 36.880692, 18.652615>,  <41.985916, 37.208801, 19.279430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164062, 36.880692, 18.652615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823563, 37.076359, 18.576632>,  <41.619263, 37.193760, 18.531042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823563, 37.076359, 18.576632>,  <42.164062, 36.880692, 18.652615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823563, 37.076359, 18.576632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354401, 0.268955, -0.895580,
		-0.386999, -0.829686, -0.402310,
		-0.851253, 0.489167, -0.189956,
		41.568188, 37.223110, 18.519644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879311, 36.609299, 18.050354>,  <42.164062, 36.880692, 18.652615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879311, 36.609299, 18.050354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699581, 36.966274, 18.066628>,  <41.591743, 37.180458, 18.076391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699581, 36.966274, 18.066628>,  <41.879311, 36.609299, 18.050354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699581, 36.966274, 18.066628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276194, 0.182078, -0.943697,
		-0.849601, -0.412793, -0.328299,
		-0.449328, 0.892440, 0.040683,
		41.564781, 37.234005, 18.078833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631565, 36.664249, 17.360470>,  <41.879311, 36.609299, 18.050354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631565, 36.664249, 17.360470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642040, 37.024200, 17.534609>,  <41.648327, 37.240173, 17.639091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642040, 37.024200, 17.534609>,  <41.631565, 36.664249, 17.360470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642040, 37.024200, 17.534609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267095, 0.413365, -0.870511,
		-0.963314, 0.139076, -0.229528,
		0.026189, 0.899882, 0.435347,
		41.649899, 37.294167, 17.665213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171501, 37.015858, 17.001614>,  <41.631565, 36.664249, 17.360470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171501, 37.015858, 17.001614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430199, 37.276352, 17.160414>,  <41.585419, 37.432648, 17.255693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430199, 37.276352, 17.160414>,  <41.171501, 37.015858, 17.001614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430199, 37.276352, 17.160414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073975, 0.464504, -0.882476,
		-0.759109, 0.600107, 0.252241,
		0.646747, 0.651235, 0.397002,
		41.624222, 37.471722, 17.279514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062466, 37.784916, 16.944252>,  <41.171501, 37.015858, 17.001614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062466, 37.784916, 16.944252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455242, 37.709393, 16.939329>,  <41.690907, 37.664078, 16.936375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455242, 37.709393, 16.939329>,  <41.062466, 37.784916, 16.944252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455242, 37.709393, 16.939329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073876, 0.442467, -0.893737,
		0.174191, 0.876684, 0.448423,
		0.981937, -0.188809, -0.012308,
		41.749825, 37.652748, 16.935637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615414, 38.433086, 16.933540>,  <41.062466, 37.784916, 16.944252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615414, 38.433086, 16.933540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715309, 38.103615, 16.729900>,  <41.775246, 37.905933, 16.607716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715309, 38.103615, 16.729900>,  <41.615414, 38.433086, 16.933540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715309, 38.103615, 16.729900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028375, 0.531759, -0.846420,
		0.967898, 0.196938, 0.156173,
		0.249739, -0.823679, -0.509100,
		41.790230, 37.856510, 16.577169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320271, 38.387672, 16.655828>,  <41.615414, 38.433086, 16.933540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320271, 38.387672, 16.655828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039650, 38.205742, 16.436392>,  <41.871277, 38.096584, 16.304729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039650, 38.205742, 16.436392>,  <42.320271, 38.387672, 16.655828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039650, 38.205742, 16.436392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111429, 0.690340, -0.714852,
		0.703863, -0.562629, -0.433620,
		-0.701542, -0.454840, -0.548598,
		41.829185, 38.069294, 16.271814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779381, 38.020115, 17.174404>,  <42.320271, 38.387672, 16.655828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779381, 38.020115, 17.174404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435356, 37.973000, 16.975840>,  <42.228943, 37.944729, 16.856701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435356, 37.973000, 16.975840>,  <42.779381, 38.020115, 17.174404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435356, 37.973000, 16.975840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089144, -0.992711, 0.081107,
		-0.502347, 0.025505, 0.864290,
		-0.860058, -0.117790, -0.496412,
		42.177338, 37.937664, 16.826916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295124, 38.595222, 16.959269>,  <42.779381, 38.020115, 17.174404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295124, 38.595222, 16.959269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519333, 38.546570, 17.286932>,  <43.653858, 38.517380, 17.483530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519333, 38.546570, 17.286932>,  <43.295124, 38.595222, 16.959269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519333, 38.546570, 17.286932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622572, -0.590382, -0.513666,
		0.546092, 0.797907, -0.255202,
		0.560524, -0.121627, 0.819158,
		43.687489, 38.510082, 17.532679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667240, 37.835434, 17.020433>,  <43.295124, 38.595222, 16.959269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667240, 37.835434, 17.020433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622356, 37.701641, 16.646154>,  <43.595428, 37.621365, 16.421587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622356, 37.701641, 16.646154>,  <43.667240, 37.835434, 17.020433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622356, 37.701641, 16.646154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921495, 0.317331, -0.223937,
		0.371829, -0.887370, 0.272613,
		-0.112206, -0.334478, -0.935700,
		43.588696, 37.601299, 16.365444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923771, 37.153446, 16.857553>,  <43.667240, 37.835434, 17.020433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923771, 37.153446, 16.857553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226349, 37.370655, 17.003384>,  <44.407894, 37.500980, 17.090881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226349, 37.370655, 17.003384>,  <43.923771, 37.153446, 16.857553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226349, 37.370655, 17.003384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614942, 0.400604, 0.679236,
		0.222791, -0.737998, 0.636963,
		0.756446, 0.543024, 0.364576,
		44.453281, 37.533562, 17.112757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915695, 37.179768, 17.571882>,  <43.923771, 37.153446, 16.857553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915695, 37.179768, 17.571882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127510, 37.498241, 17.454800>,  <44.254601, 37.689327, 17.384550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127510, 37.498241, 17.454800>,  <43.915695, 37.179768, 17.571882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127510, 37.498241, 17.454800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504615, 0.573019, 0.645765,
		0.681877, -0.194251, 0.705202,
		0.529535, 0.796188, -0.292707,
		44.286369, 37.737099, 17.366987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182949, 37.518181, 18.179152>,  <43.915695, 37.179768, 17.571882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182949, 37.518181, 18.179152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137070, 37.806534, 17.905752>,  <44.109543, 37.979546, 17.741713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137070, 37.806534, 17.905752>,  <44.182949, 37.518181, 18.179152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137070, 37.806534, 17.905752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703269, 0.427017, 0.568391,
		0.701610, 0.545874, 0.458001,
		-0.114696, 0.720887, -0.683496,
		44.102661, 38.022800, 17.700703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288071, 38.181919, 18.637230>,  <44.182949, 37.518181, 18.179152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288071, 38.181919, 18.637230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077538, 38.251110, 18.304232>,  <43.951218, 38.292625, 18.104433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077538, 38.251110, 18.304232>,  <44.288071, 38.181919, 18.637230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077538, 38.251110, 18.304232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631762, 0.575730, 0.519049,
		0.569079, 0.799132, -0.193743,
		-0.526333, 0.172980, -0.832497,
		43.919640, 38.303005, 18.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257080, 38.840389, 18.485592>,  <44.288071, 38.181919, 18.637230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257080, 38.840389, 18.485592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927029, 38.683830, 18.322634>,  <43.728996, 38.589897, 18.224859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927029, 38.683830, 18.322634>,  <44.257080, 38.840389, 18.485592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927029, 38.683830, 18.322634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564868, 0.583277, 0.583706,
		0.009163, 0.711757, -0.702366,
		-0.825131, -0.391395, -0.407393,
		43.679489, 38.566410, 18.200417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827805, 39.396400, 18.359657>,  <44.257080, 38.840389, 18.485592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827805, 39.396400, 18.359657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606308, 39.067123, 18.409801>,  <43.473412, 38.869556, 18.439888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606308, 39.067123, 18.409801>,  <43.827805, 39.396400, 18.359657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606308, 39.067123, 18.409801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601911, 0.499744, 0.622864,
		-0.575389, 0.269450, -0.772221,
		-0.553743, -0.823197, 0.125362,
		43.440186, 38.820164, 18.447411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204662, 39.679848, 18.402731>,  <43.827805, 39.396400, 18.359657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204662, 39.679848, 18.402731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135128, 39.307522, 18.531328>,  <43.093407, 39.084126, 18.608486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135128, 39.307522, 18.531328>,  <43.204662, 39.679848, 18.402731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135128, 39.307522, 18.531328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609707, 0.358101, 0.707122,
		-0.773329, -0.073092, -0.629778,
		-0.173839, -0.930818, 0.321495,
		43.082977, 39.028278, 18.627777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519306, 39.711132, 18.583252>,  <43.204662, 39.679848, 18.402731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519306, 39.711132, 18.583252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699482, 39.404823, 18.766859>,  <42.807587, 39.221039, 18.877024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699482, 39.404823, 18.766859>,  <42.519306, 39.711132, 18.583252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699482, 39.404823, 18.766859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489311, 0.218294, 0.844348,
		-0.746778, -0.604932, -0.276371,
		0.450443, -0.765771, 0.459017,
		42.834614, 39.175091, 18.904564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001434, 39.298786, 18.843828>,  <42.519306, 39.711132, 18.583252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001434, 39.298786, 18.843828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324265, 39.208912, 19.062241>,  <42.517963, 39.154987, 19.193289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324265, 39.208912, 19.062241>,  <42.001434, 39.298786, 18.843828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324265, 39.208912, 19.062241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427678, 0.415139, 0.802964,
		-0.407091, -0.881577, 0.238956,
		0.807074, -0.224683, 0.546031,
		42.566387, 39.141506, 19.226049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802433, 38.999100, 19.388485>,  <42.001434, 39.298786, 18.843828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802433, 38.999100, 19.388485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164326, 39.125706, 19.502527>,  <42.381462, 39.201668, 19.570951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164326, 39.125706, 19.502527>,  <41.802433, 38.999100, 19.388485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164326, 39.125706, 19.502527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386336, 0.327683, 0.862188,
		0.179469, -0.890194, 0.418744,
		0.904730, 0.316511, 0.285105,
		42.435745, 39.220661, 19.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865829, 38.674862, 20.000292>,  <41.802433, 38.999100, 19.388485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865829, 38.674862, 20.000292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104881, 38.995571, 20.000715>,  <42.248310, 39.187996, 20.000969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104881, 38.995571, 20.000715>,  <41.865829, 38.674862, 20.000292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104881, 38.995571, 20.000715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395723, 0.293814, 0.870102,
		0.697314, -0.520415, 0.492871,
		0.597626, 0.801775, 0.001060,
		42.284168, 39.236103, 20.001034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252487, 38.643291, 20.631685>,  <41.865829, 38.674862, 20.000292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252487, 38.643291, 20.631685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303505, 39.023499, 20.518375>,  <42.334114, 39.251625, 20.450390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303505, 39.023499, 20.518375>,  <42.252487, 38.643291, 20.631685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303505, 39.023499, 20.518375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203691, 0.304620, 0.930439,
		0.970692, -0.060971, 0.232465,
		0.127543, 0.950520, -0.283273,
		42.341766, 39.308655, 20.433393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709084, 38.879044, 21.101456>,  <42.252487, 38.643291, 20.631685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709084, 38.879044, 21.101456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518425, 39.194302, 20.945694>,  <42.404030, 39.383457, 20.852236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518425, 39.194302, 20.945694>,  <42.709084, 38.879044, 21.101456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518425, 39.194302, 20.945694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106994, 0.387658, 0.915573,
		0.872559, 0.478069, -0.100450,
		-0.476647, 0.788144, -0.389406,
		42.375431, 39.430744, 20.828873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989086, 39.450794, 21.523571>,  <42.709084, 38.879044, 21.101456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989086, 39.450794, 21.523571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651375, 39.584339, 21.355892>,  <42.448746, 39.664467, 21.255285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651375, 39.584339, 21.355892>,  <42.989086, 39.450794, 21.523571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651375, 39.584339, 21.355892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346408, 0.256838, 0.902239,
		0.408892, 0.906955, -0.101190,
		-0.844280, 0.333865, -0.419196,
		42.398090, 39.684498, 21.230133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770065, 40.118103, 21.785105>,  <42.989086, 39.450794, 21.523571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770065, 40.118103, 21.785105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440739, 39.930836, 21.656744>,  <42.243145, 39.818478, 21.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440739, 39.930836, 21.656744>,  <42.770065, 40.118103, 21.785105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440739, 39.930836, 21.656744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454114, 0.204164, 0.867236,
		-0.340494, 0.859731, -0.380692,
		-0.823313, -0.468166, -0.320900,
		42.193745, 39.790386, 21.560474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277935, 40.483871, 22.202744>,  <42.770065, 40.118103, 21.785105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277935, 40.483871, 22.202744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082054, 40.160477, 22.072180>,  <41.964527, 39.966442, 21.993841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082054, 40.160477, 22.072180>,  <42.277935, 40.483871, 22.202744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082054, 40.160477, 22.072180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529127, -0.021973, 0.848258,
		-0.692976, 0.588107, -0.417031,
		-0.489703, -0.808485, -0.326410,
		41.935143, 39.917931, 21.974257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531750, 40.599339, 22.397074>,  <42.277935, 40.483871, 22.202744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531750, 40.599339, 22.397074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576271, 40.210590, 22.314051>,  <41.602985, 39.977341, 22.264236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576271, 40.210590, 22.314051>,  <41.531750, 40.599339, 22.397074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576271, 40.210590, 22.314051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613453, -0.231505, 0.755037,
		-0.781849, 0.043288, -0.621964,
		0.111304, -0.971870, -0.207557,
		41.609661, 39.919029, 22.251783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848583, 40.250191, 22.105940>,  <41.531750, 40.599339, 22.397074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848583, 40.250191, 22.105940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087982, 39.980820, 22.279514>,  <41.231621, 39.819195, 22.383659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087982, 39.980820, 22.279514>,  <40.848583, 40.250191, 22.105940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087982, 39.980820, 22.279514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750202, -0.281075, 0.598493,
		-0.281075, -0.683733, -0.673429,
		-0.598493, 0.673429, -0.433935,
		41.267529, 39.778790, 22.409695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441952, 39.754471, 22.393894>,  <40.848583, 40.250191, 22.105940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441952, 39.754471, 22.393894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774380, 39.656593, 22.593672>,  <40.973839, 39.597866, 22.713539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774380, 39.656593, 22.593672>,  <40.441952, 39.754471, 22.393894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774380, 39.656593, 22.593672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554937, -0.424449, 0.715464,
		0.036922, -0.871762, -0.488536,
		0.831073, -0.244691, 0.499444,
		41.023701, 39.583187, 22.743505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405285, 38.996365, 22.528650>,  <40.441952, 39.754471, 22.393894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405285, 38.996365, 22.528650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660675, 39.138618, 22.801668>,  <40.813911, 39.223972, 22.965479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660675, 39.138618, 22.801668>,  <40.405285, 38.996365, 22.528650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660675, 39.138618, 22.801668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504990, -0.475663, 0.720229,
		0.580803, -0.804529, -0.124106,
		0.638478, 0.355639, 0.682545,
		40.852219, 39.245312, 23.006432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475277, 38.396049, 23.025248>,  <40.405285, 38.996365, 22.528650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475277, 38.396049, 23.025248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635799, 38.704365, 23.223169>,  <40.732113, 38.889355, 23.341923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635799, 38.704365, 23.223169>,  <40.475277, 38.396049, 23.025248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635799, 38.704365, 23.223169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284674, -0.408501, 0.867230,
		0.870581, -0.488887, 0.055488,
		0.401310, 0.770790, 0.494806,
		40.756191, 38.935600, 23.371611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843845, 38.072025, 23.609587>,  <40.475277, 38.396049, 23.025248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843845, 38.072025, 23.609587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772526, 38.454807, 23.701197>,  <40.729733, 38.684475, 23.756163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772526, 38.454807, 23.701197>,  <40.843845, 38.072025, 23.609587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772526, 38.454807, 23.701197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402723, -0.283341, 0.870363,
		0.897787, 0.062954, 0.435906,
		-0.178303, 0.956950, 0.229027,
		40.719036, 38.741894, 23.769905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156548, 38.248447, 24.213982>,  <40.843845, 38.072025, 23.609587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156548, 38.248447, 24.213982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866577, 38.523849, 24.205559>,  <40.692593, 38.689091, 24.200504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866577, 38.523849, 24.205559>,  <41.156548, 38.248447, 24.213982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866577, 38.523849, 24.205559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329787, -0.320071, 0.888141,
		0.604746, 0.650785, 0.459088,
		-0.724930, 0.688501, -0.021059,
		40.649097, 38.730400, 24.199242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162560, 38.718830, 24.877470>,  <41.156548, 38.248447, 24.213982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162560, 38.718830, 24.877470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790173, 38.708260, 24.731808>,  <40.566742, 38.701916, 24.644411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790173, 38.708260, 24.731808>,  <41.162560, 38.718830, 24.877470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790173, 38.708260, 24.731808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360179, -0.096954, 0.927832,
		-0.059829, 0.994938, 0.080741,
		-0.930963, -0.026430, -0.364156,
		40.510883, 38.700329, 24.622561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794769, 39.213352, 25.301109>,  <41.162560, 38.718830, 24.877470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794769, 39.213352, 25.301109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515694, 38.982090, 25.131893>,  <40.348248, 38.843334, 25.030363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515694, 38.982090, 25.131893>,  <40.794769, 39.213352, 25.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515694, 38.982090, 25.131893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474339, -0.069718, 0.877577,
		-0.536870, 0.812942, -0.225600,
		-0.697691, -0.578156, -0.423040,
		40.306385, 38.808643, 25.004982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106155, 39.497150, 25.443697>,  <40.794769, 39.213352, 25.301109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106155, 39.497150, 25.443697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067787, 39.104156, 25.379795>,  <40.044765, 38.868359, 25.341454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067787, 39.104156, 25.379795>,  <40.106155, 39.497150, 25.443697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067787, 39.104156, 25.379795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496208, -0.091933, 0.863323,
		-0.862889, 0.162080, -0.478699,
		-0.095920, -0.982486, -0.159753,
		40.039013, 38.809410, 25.331869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473858, 39.454117, 25.691044>,  <40.106155, 39.497150, 25.443697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473858, 39.454117, 25.691044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598206, 39.079411, 25.626749>,  <39.672813, 38.854588, 25.588173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598206, 39.079411, 25.626749>,  <39.473858, 39.454117, 25.691044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598206, 39.079411, 25.626749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504841, -0.306030, 0.807144,
		-0.805292, -0.169773, -0.568052,
		0.310872, -0.936762, -0.160736,
		39.691467, 38.798382, 25.578527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848381, 39.055756, 25.646439>,  <39.473858, 39.454117, 25.691044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848381, 39.055756, 25.646439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140190, 38.800549, 25.745012>,  <39.315277, 38.647427, 25.804157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140190, 38.800549, 25.745012>,  <38.848381, 39.055756, 25.646439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140190, 38.800549, 25.745012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613846, -0.451864, 0.647312,
		-0.301640, -0.623503, -0.721289,
		0.729525, -0.638015, 0.246435,
		39.359047, 38.609142, 25.818943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535954, 38.451950, 25.751480>,  <38.848381, 39.055756, 25.646439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535954, 38.451950, 25.751480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872753, 38.374454, 25.952875>,  <39.074833, 38.327957, 26.073713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872753, 38.374454, 25.952875>,  <38.535954, 38.451950, 25.751480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872753, 38.374454, 25.952875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536634, -0.396472, 0.744872,
		0.055310, -0.897372, -0.437795,
		0.842000, -0.193737, 0.503489,
		39.125355, 38.316334, 26.103922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534721, 37.684658, 25.918724>,  <38.535954, 38.451950, 25.751480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534721, 37.684658, 25.918724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805355, 37.847286, 26.164303>,  <38.967735, 37.944862, 26.311649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805355, 37.847286, 26.164303>,  <38.534721, 37.684658, 25.918724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805355, 37.847286, 26.164303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468959, -0.404898, 0.784943,
		0.567723, -0.818996, -0.083280,
		0.676585, 0.406575, 0.613946,
		39.008331, 37.969257, 26.348486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814114, 37.095341, 26.304489>,  <38.534721, 37.684658, 25.918724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814114, 37.095341, 26.304489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913338, 37.417221, 26.520239>,  <38.972870, 37.610348, 26.649689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913338, 37.417221, 26.520239>,  <38.814114, 37.095341, 26.304489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913338, 37.417221, 26.520239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271359, -0.476767, 0.836096,
		0.929964, -0.353763, 0.100098,
		0.248056, 0.804702, 0.539373,
		38.987755, 37.658630, 26.682051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048992, 36.811050, 27.002583>,  <38.814114, 37.095341, 26.304489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048992, 36.811050, 27.002583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999832, 37.202988, 27.065584>,  <38.970337, 37.438148, 27.103384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999832, 37.202988, 27.065584>,  <39.048992, 36.811050, 27.002583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999832, 37.202988, 27.065584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415347, -0.194923, 0.888534,
		0.901322, 0.043785, 0.430930,
		-0.122902, 0.979841, 0.157502,
		38.962963, 37.496941, 27.112835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419563, 37.012920, 27.644581>,  <39.048992, 36.811050, 27.002583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419563, 37.012920, 27.644581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125042, 37.274906, 27.576601>,  <38.948330, 37.432098, 27.535814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125042, 37.274906, 27.576601>,  <39.419563, 37.012920, 27.644581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125042, 37.274906, 27.576601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402177, -0.221618, 0.888335,
		0.544165, 0.722430, 0.426590,
		-0.736300, 0.654965, -0.169948,
		38.904152, 37.471397, 27.525618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231106, 37.194702, 28.300358>,  <39.419563, 37.012920, 27.644581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231106, 37.194702, 28.300358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925266, 37.313408, 28.071508>,  <38.741764, 37.384632, 27.934198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925266, 37.313408, 28.071508>,  <39.231106, 37.194702, 28.300358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925266, 37.313408, 28.071508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633090, -0.179449, 0.752991,
		0.120796, 0.937938, 0.325086,
		-0.764595, 0.296767, -0.572122,
		38.695889, 37.402439, 27.899872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783909, 37.579865, 28.773804>,  <39.231106, 37.194702, 28.300358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783909, 37.579865, 28.773804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565727, 37.496658, 28.449038>,  <38.434818, 37.446732, 28.254179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565727, 37.496658, 28.449038>,  <38.783909, 37.579865, 28.773804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565727, 37.496658, 28.449038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801757, -0.152808, 0.577785,
		-0.244258, 0.966115, -0.083431,
		-0.545457, -0.208020, -0.811914,
		38.402092, 37.434254, 28.205463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110161, 37.888184, 28.881096>,  <38.783909, 37.579865, 28.773804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110161, 37.888184, 28.881096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056755, 37.599766, 28.609135>,  <38.024712, 37.426716, 28.445957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056755, 37.599766, 28.609135>,  <38.110161, 37.888184, 28.881096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056755, 37.599766, 28.609135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818177, -0.306938, 0.486184,
		-0.559248, 0.621196, -0.548960,
		-0.133519, -0.721044, -0.679903,
		38.016701, 37.383453, 28.405165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427101, 37.991413, 28.710623>,  <38.110161, 37.888184, 28.881096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427101, 37.991413, 28.710623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526772, 37.619228, 28.603180>,  <37.586575, 37.395916, 28.538713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526772, 37.619228, 28.603180>,  <37.427101, 37.991413, 28.710623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526772, 37.619228, 28.603180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788274, -0.355985, 0.501896,
		-0.562616, 0.086679, -0.822162,
		0.249173, -0.930463, -0.268609,
		37.601524, 37.340088, 28.522596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815655, 37.787815, 28.286329>,  <37.427101, 37.991413, 28.710623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815655, 37.787815, 28.286329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007832, 37.466331, 28.426746>,  <37.123138, 37.273441, 28.510996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007832, 37.466331, 28.426746>,  <36.815655, 37.787815, 28.286329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007832, 37.466331, 28.426746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813975, -0.259606, 0.519663,
		-0.326525, -0.535407, -0.778923,
		0.480444, -0.803707, 0.351040,
		37.151966, 37.225220, 28.532059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352135, 37.210480, 28.305553>,  <36.815655, 37.787815, 28.286329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352135, 37.210480, 28.305553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634701, 37.064289, 28.548010>,  <36.804241, 36.976574, 28.693483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634701, 37.064289, 28.548010>,  <36.352135, 37.210480, 28.305553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634701, 37.064289, 28.548010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706650, -0.412960, 0.574552,
		0.040328, -0.834201, -0.549983,
		0.706413, -0.365475, 0.606142,
		36.846626, 36.954647, 28.729853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209503, 36.458286, 28.455738>,  <36.352135, 37.210480, 28.305553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209503, 36.458286, 28.455738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428436, 36.589119, 28.763878>,  <36.559795, 36.667618, 28.948763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428436, 36.589119, 28.763878>,  <36.209503, 36.458286, 28.455738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428436, 36.589119, 28.763878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692769, -0.339382, 0.636310,
		0.469569, -0.881951, 0.040837,
		0.547335, 0.327082, 0.770352,
		36.592636, 36.687244, 28.994984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212471, 35.930462, 29.016235>,  <36.209503, 36.458286, 28.455738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212471, 35.930462, 29.016235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322021, 36.257992, 29.218033>,  <36.387753, 36.454510, 29.339111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322021, 36.257992, 29.218033>,  <36.212471, 35.930462, 29.016235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322021, 36.257992, 29.218033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612737, -0.255760, 0.747756,
		0.741313, -0.513916, 0.431679,
		0.273878, 0.818827, 0.504494,
		36.404186, 36.503639, 29.369381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431953, 35.568325, 29.787510>,  <36.212471, 35.930462, 29.016235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431953, 35.568325, 29.787510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427673, 35.962284, 29.856628>,  <36.425106, 36.198662, 29.898100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427673, 35.962284, 29.856628>,  <36.431953, 35.568325, 29.787510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427673, 35.962284, 29.856628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319619, -0.167111, 0.932694,
		0.947486, -0.045245, 0.316582,
		-0.010704, 0.984900, 0.172797,
		36.424461, 36.257755, 29.908468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719524, 35.588928, 30.504679>,  <36.431953, 35.568325, 29.787510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719524, 35.588928, 30.504679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541611, 35.934105, 30.408768>,  <36.434864, 36.141212, 30.351221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541611, 35.934105, 30.408768>,  <36.719524, 35.588928, 30.504679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541611, 35.934105, 30.408768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426070, 0.031615, 0.904137,
		0.787803, 0.504305, 0.353614,
		-0.444782, 0.862946, -0.239776,
		36.408176, 36.192989, 30.336834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844791, 36.177166, 31.013592>,  <36.719524, 35.588928, 30.504679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844791, 36.177166, 31.013592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494465, 36.284599, 30.853191>,  <36.284267, 36.349060, 30.756952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494465, 36.284599, 30.853191>,  <36.844791, 36.177166, 31.013592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494465, 36.284599, 30.853191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336017, 0.257091, 0.906089,
		0.346455, 0.928314, -0.134916,
		-0.875820, 0.268585, -0.401000,
		36.231720, 36.365173, 30.732891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423489, 36.293137, 30.579004>,  <36.844791, 36.177166, 31.013592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423489, 36.293137, 30.579004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624638, 36.192703, 30.909840>,  <37.745327, 36.132442, 31.108341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624638, 36.192703, 30.909840>,  <37.423489, 36.293137, 30.579004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624638, 36.192703, 30.909840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767547, 0.569739, -0.293716,
		-0.397480, 0.782532, 0.479222,
		0.502874, -0.251079, 0.827090,
		37.775501, 36.117378, 31.157967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639183, 36.888580, 30.894566>,  <37.423489, 36.293137, 30.579004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639183, 36.888580, 30.894566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890194, 36.620171, 31.052523>,  <38.040798, 36.459126, 31.147297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890194, 36.620171, 31.052523>,  <37.639183, 36.888580, 30.894566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890194, 36.620171, 31.052523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778449, 0.530770, -0.335114,
		0.015273, 0.517694, 0.855429,
		0.627522, -0.671026, 0.394892,
		38.078449, 36.418861, 31.170990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210457, 37.322601, 31.180645>,  <37.639183, 36.888580, 30.894566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210457, 37.322601, 31.180645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358101, 36.953838, 31.133570>,  <38.446686, 36.732582, 31.105324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358101, 36.953838, 31.133570>,  <38.210457, 37.322601, 31.180645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358101, 36.953838, 31.133570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818187, 0.382396, -0.429352,
		0.440825, 0.062187, 0.895436,
		0.369111, -0.921903, -0.117689,
		38.468834, 36.677269, 31.098263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866261, 37.371120, 31.349615>,  <38.210457, 37.322601, 31.180645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866261, 37.371120, 31.349615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879635, 37.035774, 31.131983>,  <38.887661, 36.834568, 31.001404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879635, 37.035774, 31.131983>,  <38.866261, 37.371120, 31.349615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879635, 37.035774, 31.131983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870067, 0.292294, -0.396922,
		0.491797, -0.460114, 0.739209,
		0.033437, -0.838367, -0.544080,
		38.889668, 36.784264, 30.968760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513485, 37.275021, 31.297686>,  <38.866261, 37.371120, 31.349615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513485, 37.275021, 31.297686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375286, 37.021339, 31.021011>,  <39.292366, 36.869133, 30.855007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375286, 37.021339, 31.021011>,  <39.513485, 37.275021, 31.297686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375286, 37.021339, 31.021011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765104, 0.236418, -0.598935,
		0.543371, -0.736137, 0.403547,
		-0.345493, -0.634199, -0.691684,
		39.271637, 36.831081, 30.813507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059437, 36.768433, 31.077255>,  <39.513485, 37.275021, 31.297686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059437, 36.768433, 31.077255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801708, 36.774506, 30.771414>,  <39.647072, 36.778149, 30.587908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801708, 36.774506, 30.771414>,  <40.059437, 36.768433, 31.077255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801708, 36.774506, 30.771414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750439, 0.205107, -0.628310,
		0.147284, -0.978622, -0.143552,
		-0.644321, 0.015187, -0.764604,
		39.608414, 36.779060, 30.542032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429253, 36.285217, 30.582306>,  <40.059437, 36.768433, 31.077255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429253, 36.285217, 30.582306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151741, 36.523476, 30.420382>,  <39.985233, 36.666431, 30.323227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151741, 36.523476, 30.420382>,  <40.429253, 36.285217, 30.582306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151741, 36.523476, 30.420382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648244, 0.271602, -0.711345,
		-0.313764, -0.755934, -0.574558,
		-0.693781, 0.595648, -0.404811,
		39.943607, 36.702171, 30.298939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347744, 36.082275, 29.887695>,  <40.429253, 36.285217, 30.582306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347744, 36.082275, 29.887695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220398, 36.461292, 29.876270>,  <40.143990, 36.688702, 29.869415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220398, 36.461292, 29.876270>,  <40.347744, 36.082275, 29.887695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220398, 36.461292, 29.876270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653672, 0.197608, -0.730523,
		-0.686554, -0.251243, -0.682290,
		-0.318364, 0.947538, -0.028562,
		40.124889, 36.745552, 29.867702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389008, 36.227051, 29.225077>,  <40.347744, 36.082275, 29.887695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389008, 36.227051, 29.225077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355736, 36.596516, 29.374702>,  <40.335773, 36.818195, 29.464478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355736, 36.596516, 29.374702>,  <40.389008, 36.227051, 29.225077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355736, 36.596516, 29.374702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594770, 0.347192, -0.725056,
		-0.799581, 0.162172, -0.578248,
		-0.083180, 0.923665, 0.374063,
		40.330780, 36.873615, 29.486921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312202, 36.669613, 28.600712>,  <40.389008, 36.227051, 29.225077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312202, 36.669613, 28.600712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443634, 36.904915, 28.896276>,  <40.522491, 37.046097, 29.073616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443634, 36.904915, 28.896276>,  <40.312202, 36.669613, 28.600712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443634, 36.904915, 28.896276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641916, 0.434788, -0.631588,
		-0.692805, 0.681846, -0.234748,
		0.328580, 0.588256, 0.738912,
		40.542210, 37.081390, 29.117950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464050, 37.195160, 28.231756>,  <40.312202, 36.669613, 28.600712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464050, 37.195160, 28.231756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665310, 37.265350, 28.570234>,  <40.786068, 37.307465, 28.773321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665310, 37.265350, 28.570234>,  <40.464050, 37.195160, 28.231756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665310, 37.265350, 28.570234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723195, 0.450550, -0.523444,
		-0.473105, 0.875336, 0.099793,
		0.503151, 0.175474, 0.846196,
		40.816254, 37.317993, 28.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671154, 37.938614, 28.205893>,  <40.464050, 37.195160, 28.231756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671154, 37.938614, 28.205893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915379, 37.760170, 28.467644>,  <41.061913, 37.653103, 28.624695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915379, 37.760170, 28.467644>,  <40.671154, 37.938614, 28.205893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915379, 37.760170, 28.467644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791946, 0.350463, -0.499997,
		-0.006282, 0.823508, 0.567270,
		0.610558, -0.446106, 0.654376,
		41.098545, 37.626339, 28.663956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085361, 38.444237, 28.405020>,  <40.671154, 37.938614, 28.205893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085361, 38.444237, 28.405020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290211, 38.103237, 28.446930>,  <41.413120, 37.898640, 28.472076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290211, 38.103237, 28.446930>,  <41.085361, 38.444237, 28.405020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290211, 38.103237, 28.446930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743819, 0.379193, -0.550405,
		0.429487, 0.359813, 0.828297,
		0.512127, -0.852495, 0.104778,
		41.443848, 37.847488, 28.478363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843861, 38.656906, 28.601467>,  <41.085361, 38.444237, 28.405020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843861, 38.656906, 28.601467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848099, 38.281776, 28.462692>,  <41.850643, 38.056698, 28.379427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848099, 38.281776, 28.462692>,  <41.843861, 38.656906, 28.601467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848099, 38.281776, 28.462692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542802, 0.296784, -0.785675,
		0.839794, -0.179993, 0.512200,
		0.010597, -0.937828, -0.346938,
		41.851276, 38.000427, 28.358610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489235, 38.491608, 28.445816>,  <41.843861, 38.656906, 28.601467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489235, 38.491608, 28.445816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276234, 38.236675, 28.223017>,  <42.148434, 38.083717, 28.089338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276234, 38.236675, 28.223017>,  <42.489235, 38.491608, 28.445816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276234, 38.236675, 28.223017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562857, 0.224847, -0.795384,
		0.632163, -0.737056, 0.238994,
		-0.532506, -0.637332, -0.556997,
		42.116482, 38.045475, 28.055918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999207, 38.037346, 28.082067>,  <42.489235, 38.491608, 28.445816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999207, 38.037346, 28.082067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668781, 38.053555, 27.857218>,  <42.470528, 38.063282, 27.722307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668781, 38.053555, 27.857218>,  <42.999207, 38.037346, 28.082067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668781, 38.053555, 27.857218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562668, 0.116095, -0.818490,
		0.032091, -0.992411, -0.118703,
		-0.826060, 0.040524, -0.562124,
		42.420963, 38.065712, 27.688581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180435, 37.714233, 27.410891>,  <42.999207, 38.037346, 28.082067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180435, 37.714233, 27.410891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835339, 37.896816, 27.323879>,  <42.628281, 38.006367, 27.271673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835339, 37.896816, 27.323879>,  <43.180435, 37.714233, 27.410891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835339, 37.896816, 27.323879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243788, -0.001397, -0.969828,
		-0.442991, -0.889743, -0.110073,
		-0.862743, 0.456460, -0.217527,
		42.576515, 38.033752, 27.258621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796539, 37.442528, 26.843063>,  <43.180435, 37.714233, 27.410891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796539, 37.442528, 26.843063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664700, 37.820004, 26.831640>,  <42.585594, 38.046490, 26.824785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664700, 37.820004, 26.831640>,  <42.796539, 37.442528, 26.843063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664700, 37.820004, 26.831640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200257, 0.040318, -0.978913,
		-0.922638, -0.328368, -0.202269,
		-0.329599, 0.943689, -0.028559,
		42.565819, 38.103111, 26.823072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425602, 37.454334, 26.213778>,  <42.796539, 37.442528, 26.843063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425602, 37.454334, 26.213778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487034, 37.837116, 26.312284>,  <42.523891, 38.066788, 26.371387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487034, 37.837116, 26.312284>,  <42.425602, 37.454334, 26.213778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487034, 37.837116, 26.312284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156334, 0.222553, -0.962305,
		-0.975691, 0.186291, -0.115424,
		0.153581, 0.956956, 0.246266,
		42.533108, 38.124203, 26.386164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040466, 37.823284, 25.663723>,  <42.425602, 37.454334, 26.213778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040466, 37.823284, 25.663723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300743, 38.077091, 25.830572>,  <42.456909, 38.229374, 25.930681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300743, 38.077091, 25.830572>,  <42.040466, 37.823284, 25.663723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300743, 38.077091, 25.830572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253077, 0.336699, -0.906965,
		-0.715931, 0.695716, 0.058503,
		0.650688, 0.634518, 0.417123,
		42.495949, 38.267448, 25.955709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944450, 38.426296, 25.266914>,  <42.040466, 37.823284, 25.663723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944450, 38.426296, 25.266914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309235, 38.418793, 25.430857>,  <42.528103, 38.414291, 25.529222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309235, 38.418793, 25.430857>,  <41.944450, 38.426296, 25.266914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309235, 38.418793, 25.430857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385014, 0.384297, -0.839094,
		-0.141762, 0.923019, 0.357687,
		0.911958, -0.018763, 0.409854,
		42.582821, 38.413162, 25.553814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163593, 38.944721, 24.998110>,  <41.944450, 38.426296, 25.266914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163593, 38.944721, 24.998110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482143, 38.748394, 25.139462>,  <42.673275, 38.630596, 25.224274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482143, 38.748394, 25.139462>,  <42.163593, 38.944721, 24.998110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482143, 38.748394, 25.139462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562848, 0.387646, -0.730023,
		0.221321, 0.780274, 0.584969,
		0.796379, -0.490818, 0.353381,
		42.721058, 38.601147, 25.245476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702347, 39.511688, 25.143431>,  <42.163593, 38.944721, 24.998110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702347, 39.511688, 25.143431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844959, 39.142048, 25.088404>,  <42.930527, 38.920265, 25.055387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844959, 39.142048, 25.088404>,  <42.702347, 39.511688, 25.143431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844959, 39.142048, 25.088404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507238, 0.315114, -0.802130,
		0.784597, 0.216206, 0.581087,
		0.356534, -0.924099, -0.137569,
		42.951920, 38.864819, 25.047132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406231, 39.612095, 24.871584>,  <42.702347, 39.511688, 25.143431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406231, 39.612095, 24.871584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362190, 39.225571, 24.778534>,  <43.335766, 38.993656, 24.722704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362190, 39.225571, 24.778534>,  <43.406231, 39.612095, 24.871584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362190, 39.225571, 24.778534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477492, 0.153846, -0.865062,
		0.871710, -0.206322, 0.444468,
		-0.110102, -0.966314, -0.232626,
		43.329159, 38.935677, 24.708746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020531, 39.410130, 24.552078>,  <43.406231, 39.612095, 24.871584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020531, 39.410130, 24.552078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746651, 39.144032, 24.432989>,  <43.582325, 38.984371, 24.361536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746651, 39.144032, 24.432989>,  <44.020531, 39.410130, 24.552078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746651, 39.144032, 24.432989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392575, 0.007541, -0.919689,
		0.614064, -0.746586, 0.255995,
		-0.684697, -0.665246, -0.297722,
		43.541241, 38.944458, 24.343672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337349, 39.056831, 24.088593>,  <44.020531, 39.410130, 24.552078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337349, 39.056831, 24.088593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966690, 38.941216, 23.992445>,  <43.744293, 38.871845, 23.934757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966690, 38.941216, 23.992445>,  <44.337349, 39.056831, 24.088593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966690, 38.941216, 23.992445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340437, -0.374021, -0.862677,
		0.159445, -0.881229, 0.444986,
		-0.926650, -0.289040, -0.240367,
		43.688694, 38.854504, 23.920334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383652, 38.371948, 23.975513>,  <44.337349, 39.056831, 24.088593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383652, 38.371948, 23.975513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053246, 38.471989, 23.773466>,  <43.855003, 38.532013, 23.652237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053246, 38.471989, 23.773466>,  <44.383652, 38.371948, 23.975513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053246, 38.471989, 23.773466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342841, -0.488382, -0.802461,
		-0.447391, -0.836020, 0.317665,
		-0.826015, 0.250105, -0.505120,
		43.805439, 38.547020, 23.621931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160961, 37.746979, 23.751345>,  <44.383652, 38.371948, 23.975513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160961, 37.746979, 23.751345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029644, 38.041016, 23.514071>,  <43.950855, 38.217438, 23.371706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029644, 38.041016, 23.514071>,  <44.160961, 37.746979, 23.751345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029644, 38.041016, 23.514071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328567, -0.499906, -0.801335,
		-0.885589, -0.457974, -0.077410,
		-0.328294, 0.735087, -0.593186,
		43.931156, 38.261543, 23.336115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760666, 37.375206, 23.201958>,  <44.160961, 37.746979, 23.751345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760666, 37.375206, 23.201958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837284, 37.734440, 23.043587>,  <43.883255, 37.949978, 22.948565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837284, 37.734440, 23.043587>,  <43.760666, 37.375206, 23.201958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837284, 37.734440, 23.043587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239998, -0.434008, -0.868354,
		-0.951688, 0.071309, -0.298671,
		0.191547, 0.898082, -0.395927,
		43.894749, 38.003864, 22.924809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607643, 37.342186, 22.472107>,  <43.760666, 37.375206, 23.201958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607643, 37.342186, 22.472107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798840, 37.693352, 22.460840>,  <43.913555, 37.904053, 22.454081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798840, 37.693352, 22.460840>,  <43.607643, 37.342186, 22.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798840, 37.693352, 22.460840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302871, -0.194829, -0.932904,
		-0.824498, 0.437387, -0.359021,
		0.477988, 0.877915, -0.028164,
		43.942234, 37.956726, 22.452391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500023, 37.617622, 21.793056>,  <43.607643, 37.342186, 22.472107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500023, 37.617622, 21.793056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836735, 37.792591, 21.919590>,  <44.038761, 37.897572, 21.995510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836735, 37.792591, 21.919590>,  <43.500023, 37.617622, 21.793056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836735, 37.792591, 21.919590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440301, -0.217320, -0.871153,
		-0.312316, 0.872601, -0.375533,
		0.841780, 0.437423, 0.316334,
		44.089268, 37.923817, 22.014490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805428, 38.091000, 21.295675>,  <43.500023, 37.617622, 21.793056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805428, 38.091000, 21.295675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106846, 37.970257, 21.529274>,  <44.287697, 37.897812, 21.669434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106846, 37.970257, 21.529274>,  <43.805428, 38.091000, 21.295675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106846, 37.970257, 21.529274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554903, -0.184270, -0.811251,
		0.352498, 0.935374, 0.028649,
		0.753544, -0.301861, 0.583996,
		44.332909, 37.879700, 21.704473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369999, 38.217979, 20.889847>,  <43.805428, 38.091000, 21.295675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369999, 38.217979, 20.889847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565346, 38.004860, 21.166288>,  <44.682552, 37.876987, 21.332153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565346, 38.004860, 21.166288>,  <44.369999, 38.217979, 20.889847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565346, 38.004860, 21.166288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492743, -0.485267, -0.722303,
		0.720212, 0.693283, 0.025546,
		0.488363, -0.532799, 0.691105,
		44.711853, 37.845020, 21.373619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982826, 38.404789, 20.779110>,  <44.369999, 38.217979, 20.889847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982826, 38.404789, 20.779110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989414, 38.057789, 20.977976>,  <44.993366, 37.849590, 21.097296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989414, 38.057789, 20.977976>,  <44.982826, 38.404789, 20.779110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989414, 38.057789, 20.977976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458426, -0.435342, -0.774805,
		0.888580, 0.240672, 0.390515,
		0.016467, -0.867499, 0.497167,
		44.994354, 37.797539, 21.127127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681179, 38.153957, 20.805822>,  <44.982826, 38.404789, 20.779110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681179, 38.153957, 20.805822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473770, 37.816952, 20.864208>,  <45.349323, 37.614750, 20.899239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473770, 37.816952, 20.864208>,  <45.681179, 38.153957, 20.805822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473770, 37.816952, 20.864208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329823, -0.354570, -0.874927,
		0.788890, -0.405530, 0.461733,
		-0.518526, -0.842511, 0.145964,
		45.318211, 37.564198, 20.907997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131531, 37.705688, 20.686941>,  <45.681179, 38.153957, 20.805822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131531, 37.705688, 20.686941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790619, 37.500164, 20.647717>,  <45.586071, 37.376850, 20.624182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790619, 37.500164, 20.647717>,  <46.131531, 37.705688, 20.686941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790619, 37.500164, 20.647717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357928, -0.436138, -0.825634,
		0.381449, -0.738772, 0.555619,
		-0.852282, -0.513809, -0.098063,
		45.534935, 37.346020, 20.618298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248989, 37.005928, 20.573687>,  <46.131531, 37.705688, 20.686941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248989, 37.005928, 20.573687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872982, 37.035522, 20.440489>,  <45.647377, 37.053280, 20.360571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872982, 37.035522, 20.440489>,  <46.248989, 37.005928, 20.573687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872982, 37.035522, 20.440489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254728, -0.497006, -0.829517,
		-0.226874, -0.864587, 0.448350,
		-0.940023, 0.073989, -0.332992,
		45.590977, 37.057720, 20.340591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096561, 36.256744, 20.416967>,  <46.248989, 37.005928, 20.573687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096561, 36.256744, 20.416967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855114, 36.508057, 20.220638>,  <45.710247, 36.658844, 20.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855114, 36.508057, 20.220638>,  <46.096561, 36.256744, 20.416967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855114, 36.508057, 20.220638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254138, -0.431885, -0.865384,
		-0.755687, -0.647095, 0.101021,
		-0.603615, 0.628286, -0.490821,
		45.674030, 36.696541, 20.073391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265953, 35.971405, 19.746479>,  <46.096561, 36.256744, 20.416967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265953, 35.971405, 19.746479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483517, 35.647121, 19.833117>,  <46.614056, 35.452553, 19.885099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483517, 35.647121, 19.833117>,  <46.265953, 35.971405, 19.746479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483517, 35.647121, 19.833117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254343, 0.086703, 0.963220,
		-0.799672, -0.578992, -0.159040,
		0.543907, -0.810710, 0.216596,
		46.646690, 35.403908, 19.898096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977310, 35.546291, 20.222109>,  <46.265953, 35.971405, 19.746479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977310, 35.546291, 20.222109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343731, 35.399982, 20.287909>,  <46.563583, 35.312199, 20.327389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343731, 35.399982, 20.287909>,  <45.977310, 35.546291, 20.222109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343731, 35.399982, 20.287909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154884, 0.055695, 0.986362,
		-0.369943, -0.929037, -0.005632,
		0.916053, -0.365770, 0.164497,
		46.618546, 35.290253, 20.337257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935123, 34.949436, 20.779020>,  <45.977310, 35.546291, 20.222109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935123, 34.949436, 20.779020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311687, 35.081203, 20.750084>,  <46.537624, 35.160263, 20.732723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311687, 35.081203, 20.750084>,  <45.935123, 34.949436, 20.779020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311687, 35.081203, 20.750084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054034, 0.064401, 0.996460,
		0.332908, -0.941986, 0.042828,
		0.941410, 0.329415, -0.072339,
		46.594112, 35.180027, 20.728382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228832, 34.502380, 21.228172>,  <45.935123, 34.949436, 20.779020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228832, 34.502380, 21.228172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499027, 34.794781, 21.189484>,  <46.661144, 34.970219, 21.166271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499027, 34.794781, 21.189484>,  <46.228832, 34.502380, 21.228172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499027, 34.794781, 21.189484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135401, 0.005974, 0.990773,
		0.724831, -0.682353, -0.094943,
		0.675490, 0.730999, -0.096722,
		46.701675, 35.014080, 21.160467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742134, 34.329868, 21.663754>,  <46.228832, 34.502380, 21.228172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742134, 34.329868, 21.663754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757824, 34.725758, 21.608738>,  <46.767239, 34.963291, 21.575729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757824, 34.725758, 21.608738>,  <46.742134, 34.329868, 21.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757824, 34.725758, 21.608738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096114, 0.133270, 0.986408,
		0.994597, -0.051912, -0.089898,
		0.039226, 0.989719, -0.137539,
		46.769592, 35.022675, 21.567476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157356, 34.503284, 22.165812>,  <46.742134, 34.329868, 21.663754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157356, 34.503284, 22.165812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975773, 34.841206, 22.052513>,  <46.866821, 35.043957, 21.984533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975773, 34.841206, 22.052513>,  <47.157356, 34.503284, 22.165812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975773, 34.841206, 22.052513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062304, 0.287016, 0.955898,
		0.888843, 0.451584, -0.077658,
		-0.453957, 0.844804, -0.283248,
		46.839584, 35.094646, 21.967539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441795, 34.927040, 22.657526>,  <47.157356, 34.503284, 22.165812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441795, 34.927040, 22.657526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102184, 35.096813, 22.531660>,  <46.898418, 35.198677, 22.456141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102184, 35.096813, 22.531660>,  <47.441795, 34.927040, 22.657526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102184, 35.096813, 22.531660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238568, 0.223433, 0.945073,
		0.471426, 0.877460, -0.088444,
		-0.849025, 0.424432, -0.314665,
		46.847477, 35.224144, 22.437260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299328, 35.364113, 23.152348>,  <47.441795, 34.927040, 22.657526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299328, 35.364113, 23.152348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932930, 35.394093, 22.994698>,  <46.713093, 35.412079, 22.900108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932930, 35.394093, 22.994698>,  <47.299328, 35.364113, 23.152348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932930, 35.394093, 22.994698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363752, 0.259229, 0.894698,
		0.169223, 0.962904, -0.210191,
		-0.915996, 0.074946, -0.394125,
		46.658131, 35.416576, 22.876459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122719, 36.021702, 23.318520>,  <47.299328, 35.364113, 23.152348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122719, 36.021702, 23.318520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806366, 35.786766, 23.249784>,  <46.616554, 35.645805, 23.208544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806366, 35.786766, 23.249784>,  <47.122719, 36.021702, 23.318520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806366, 35.786766, 23.249784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314447, 0.149136, 0.937487,
		-0.524998, 0.795479, -0.302637,
		-0.790886, -0.587342, -0.171840,
		46.569099, 35.610565, 23.198233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518040, 36.434570, 23.570957>,  <47.122719, 36.021702, 23.318520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518040, 36.434570, 23.570957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373596, 36.063217, 23.535852>,  <46.286930, 35.840405, 23.514790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373596, 36.063217, 23.535852>,  <46.518040, 36.434570, 23.570957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373596, 36.063217, 23.535852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396904, 0.067850, 0.915349,
		-0.843841, 0.365375, -0.392981,
		-0.361109, -0.928384, -0.087764,
		46.265263, 35.784702, 23.509523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752449, 36.392300, 23.840633>,  <46.518040, 36.434570, 23.570957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752449, 36.392300, 23.840633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888535, 36.016163, 23.840185>,  <45.970188, 35.790482, 23.839916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888535, 36.016163, 23.840185>,  <45.752449, 36.392300, 23.840633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888535, 36.016163, 23.840185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398859, -0.145386, 0.905414,
		-0.851566, -0.307590, -0.424528,
		0.340217, -0.940346, -0.001121,
		45.990601, 35.734058, 23.839849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187893, 35.914711, 23.815413>,  <45.752449, 36.392300, 23.840633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187893, 35.914711, 23.815413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491653, 35.728020, 23.996733>,  <45.673908, 35.616005, 24.105526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491653, 35.728020, 23.996733>,  <45.187893, 35.914711, 23.815413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491653, 35.728020, 23.996733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582116, -0.176189, 0.793787,
		-0.290614, -0.866674, -0.405487,
		0.759397, -0.466726, 0.453302,
		45.719471, 35.588001, 24.132723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771313, 35.534744, 24.337767>,  <45.187893, 35.914711, 23.815413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771313, 35.534744, 24.337767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144791, 35.537075, 24.480978>,  <45.368877, 35.538475, 24.566904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144791, 35.537075, 24.480978>,  <44.771313, 35.534744, 24.337767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144791, 35.537075, 24.480978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355992, -0.092587, 0.929891,
		0.038572, -0.995688, -0.084372,
		0.933693, 0.005832, 0.358028,
		45.424900, 35.538826, 24.588387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815117, 35.039921, 24.919823>,  <44.771313, 35.534744, 24.337767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815117, 35.039921, 24.919823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116833, 35.294693, 24.983526>,  <45.297863, 35.447556, 25.021748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116833, 35.294693, 24.983526>,  <44.815117, 35.039921, 24.919823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116833, 35.294693, 24.983526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202459, -0.005093, 0.979277,
		0.624546, -0.770902, 0.125112,
		0.754290, 0.636934, 0.159257,
		45.343121, 35.485771, 25.031303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130951, 34.854187, 25.583551>,  <44.815117, 35.039921, 24.919823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130951, 34.854187, 25.583551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284470, 35.222202, 25.551960>,  <45.376579, 35.443012, 25.533005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284470, 35.222202, 25.551960>,  <45.130951, 34.854187, 25.583551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284470, 35.222202, 25.551960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384380, 0.236940, 0.892251,
		0.839615, -0.312083, 0.444579,
		0.383795, 0.920035, -0.078980,
		45.399609, 35.498211, 25.528265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537239, 34.924221, 26.150803>,  <45.130951, 34.854187, 25.583551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537239, 34.924221, 26.150803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460358, 35.296738, 26.027023>,  <45.414227, 35.520248, 25.952757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460358, 35.296738, 26.027023>,  <45.537239, 34.924221, 26.150803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460358, 35.296738, 26.027023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501910, 0.177677, 0.846474,
		0.843293, 0.318011, 0.433273,
		-0.192206, 0.931289, -0.309447,
		45.402695, 35.576126, 25.934189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783463, 35.428226, 26.640610>,  <45.537239, 34.924221, 26.150803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783463, 35.428226, 26.640610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494865, 35.633568, 26.454742>,  <45.321709, 35.756775, 26.343222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494865, 35.633568, 26.454742>,  <45.783463, 35.428226, 26.640610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494865, 35.633568, 26.454742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450563, 0.161502, 0.878015,
		0.525778, 0.842843, 0.114777,
		-0.721492, 0.513355, -0.464668,
		45.278419, 35.787575, 26.315342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681572, 36.159218, 27.036549>,  <45.783463, 35.428226, 26.640610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681572, 36.159218, 27.036549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357643, 36.056351, 26.825626>,  <45.163284, 35.994629, 26.699074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357643, 36.056351, 26.825626>,  <45.681572, 36.159218, 27.036549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357643, 36.056351, 26.825626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572389, 0.149205, 0.806293,
		-0.128675, 0.954779, -0.268030,
		-0.809823, -0.257168, -0.527306,
		45.114697, 35.979202, 26.667435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245934, 36.592575, 27.275427>,  <45.681572, 36.159218, 27.036549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245934, 36.592575, 27.275427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999634, 36.339676, 27.087336>,  <44.851852, 36.187935, 26.974480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999634, 36.339676, 27.087336>,  <45.245934, 36.592575, 27.275427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999634, 36.339676, 27.087336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723784, 0.217972, 0.654694,
		-0.311433, 0.743472, -0.591827,
		-0.615749, -0.632248, -0.470230,
		44.814911, 36.150002, 26.946266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529514, 37.024097, 27.240755>,  <45.245934, 36.592575, 27.275427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529514, 37.024097, 27.240755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441719, 36.640697, 27.167973>,  <44.389042, 36.410660, 27.124304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441719, 36.640697, 27.167973>,  <44.529514, 37.024097, 27.240755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441719, 36.640697, 27.167973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752703, 0.047713, 0.656628,
		-0.620695, 0.281083, -0.731936,
		-0.219490, -0.958497, -0.181957,
		44.375874, 36.353149, 27.113386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709061, 36.937828, 27.090336>,  <44.529514, 37.024097, 27.240755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709061, 36.937828, 27.090336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826698, 36.573563, 27.206400>,  <43.897282, 36.355003, 27.276039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826698, 36.573563, 27.206400>,  <43.709061, 36.937828, 27.090336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826698, 36.573563, 27.206400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611873, 0.053832, 0.789122,
		-0.734248, -0.409618, -0.541381,
		0.294095, -0.910667, 0.290160,
		43.914928, 36.300362, 27.293447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102879, 36.523399, 27.215240>,  <43.709061, 36.937828, 27.090336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102879, 36.523399, 27.215240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399525, 36.334404, 27.405718>,  <43.577511, 36.221004, 27.520004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399525, 36.334404, 27.405718>,  <43.102879, 36.523399, 27.215240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399525, 36.334404, 27.405718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528650, 0.025354, 0.848461,
		-0.412965, -0.880970, -0.230981,
		0.741612, -0.472493, 0.476195,
		43.622009, 36.192657, 27.548576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851128, 35.812229, 27.425570>,  <43.102879, 36.523399, 27.215240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851128, 35.812229, 27.425570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179348, 35.888603, 27.641068>,  <43.376278, 35.934429, 27.770367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179348, 35.888603, 27.641068>,  <42.851128, 35.812229, 27.425570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179348, 35.888603, 27.641068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553771, 0.032135, 0.832049,
		0.141557, -0.981076, 0.132104,
		0.820548, 0.190938, 0.538742,
		43.425514, 35.945885, 27.802691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749958, 35.431873, 27.982237>,  <42.851128, 35.812229, 27.425570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749958, 35.431873, 27.982237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050335, 35.668919, 28.098778>,  <43.230560, 35.811146, 28.168703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050335, 35.668919, 28.098778>,  <42.749958, 35.431873, 27.982237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050335, 35.668919, 28.098778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336907, -0.035649, 0.940863,
		0.567957, -0.804696, 0.172886,
		0.750945, 0.592616, 0.291355,
		43.275620, 35.846703, 28.186184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246418, 35.075283, 28.501719>,  <42.749958, 35.431873, 27.982237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246418, 35.075283, 28.501719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270214, 35.466850, 28.579887>,  <43.284492, 35.701790, 28.626789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270214, 35.466850, 28.579887>,  <43.246418, 35.075283, 28.501719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270214, 35.466850, 28.579887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268393, -0.172874, 0.947671,
		0.961471, -0.108827, 0.252449,
		0.059491, 0.978913, 0.195421,
		43.288063, 35.760525, 28.638514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560394, 35.183609, 29.237534>,  <43.246418, 35.075283, 28.501719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560394, 35.183609, 29.237534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363312, 35.516460, 29.135710>,  <43.245064, 35.716171, 29.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363312, 35.516460, 29.135710>,  <43.560394, 35.183609, 29.237534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363312, 35.516460, 29.135710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325938, 0.094761, 0.940630,
		0.806848, 0.546426, 0.224534,
		-0.492707, 0.832129, -0.254558,
		43.215500, 35.766098, 29.059341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819611, 35.569637, 29.667820>,  <43.560394, 35.183609, 29.237534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819611, 35.569637, 29.667820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480938, 35.756058, 29.565111>,  <43.277733, 35.867908, 29.503487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480938, 35.756058, 29.565111>,  <43.819611, 35.569637, 29.667820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480938, 35.756058, 29.565111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333975, -0.089779, 0.938297,
		0.414239, 0.880193, 0.231662,
		-0.846680, 0.466048, -0.256772,
		43.226933, 35.895874, 29.488079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713482, 35.998596, 30.221313>,  <43.819611, 35.569637, 29.667820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713482, 35.998596, 30.221313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357658, 35.987686, 30.038914>,  <43.144165, 35.981140, 29.929474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357658, 35.987686, 30.038914>,  <43.713482, 35.998596, 30.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357658, 35.987686, 30.038914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453126, -0.073915, 0.888377,
		-0.057939, 0.996891, 0.053391,
		-0.889562, -0.027279, -0.456000,
		43.090790, 35.979504, 29.902113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301594, 36.462669, 30.604881>,  <43.713482, 35.998596, 30.221313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301594, 36.462669, 30.604881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024769, 36.245255, 30.414885>,  <42.858673, 36.114807, 30.300886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024769, 36.245255, 30.414885>,  <43.301594, 36.462669, 30.604881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024769, 36.245255, 30.414885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517185, -0.085675, 0.851574,
		-0.503559, 0.835000, -0.221818,
		-0.692061, -0.543539, -0.474992,
		42.817150, 36.082191, 30.272387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706711, 36.812737, 30.680820>,  <43.301594, 36.462669, 30.604881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706711, 36.812737, 30.680820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630573, 36.425854, 30.613564>,  <42.584888, 36.193722, 30.573210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630573, 36.425854, 30.613564>,  <42.706711, 36.812737, 30.680820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630573, 36.425854, 30.613564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527758, -0.043603, 0.848275,
		-0.827792, 0.250205, -0.502153,
		-0.190347, -0.967210, -0.168142,
		42.573467, 36.135689, 30.563122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055077, 36.778210, 30.971563>,  <42.706711, 36.812737, 30.680820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055077, 36.778210, 30.971563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137348, 36.390995, 30.914137>,  <42.186710, 36.158669, 30.879681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137348, 36.390995, 30.914137>,  <42.055077, 36.778210, 30.971563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137348, 36.390995, 30.914137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527125, -0.233188, 0.817167,
		-0.824522, -0.092395, -0.558236,
		0.205677, -0.968032, -0.143565,
		42.199051, 36.100586, 30.871067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372295, 36.355946, 31.010271>,  <42.055077, 36.778210, 30.971563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372295, 36.355946, 31.010271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690315, 36.126373, 31.088747>,  <41.881126, 35.988628, 31.135832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690315, 36.126373, 31.088747>,  <41.372295, 36.355946, 31.010271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690315, 36.126373, 31.088747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381208, -0.221240, 0.897626,
		-0.471776, -0.788448, -0.394687,
		0.795052, -0.573936, 0.196187,
		41.928829, 35.954193, 31.147604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148590, 35.701599, 31.239536>,  <41.372295, 36.355946, 31.010271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148590, 35.701599, 31.239536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516411, 35.723969, 31.395119>,  <41.737103, 35.737389, 31.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516411, 35.723969, 31.395119>,  <41.148590, 35.701599, 31.239536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516411, 35.723969, 31.395119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302760, -0.530171, 0.791995,
		0.250505, -0.846045, -0.470590,
		0.919556, 0.055923, 0.388959,
		41.792278, 35.740746, 31.511806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314957, 34.995998, 31.465181>,  <41.148590, 35.701599, 31.239536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314957, 34.995998, 31.465181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577164, 35.227806, 31.658861>,  <41.734489, 35.366890, 31.775070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577164, 35.227806, 31.658861>,  <41.314957, 34.995998, 31.465181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577164, 35.227806, 31.658861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424421, -0.247617, 0.870950,
		0.624627, -0.776431, 0.083641,
		0.655521, 0.579518, 0.484201,
		41.773819, 35.401661, 31.804121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687386, 34.577919, 31.869963>,  <41.314957, 34.995998, 31.465181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687386, 34.577919, 31.869963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719028, 34.936699, 32.043964>,  <41.738014, 35.151966, 32.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719028, 34.936699, 32.043964>,  <41.687386, 34.577919, 31.869963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719028, 34.936699, 32.043964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063187, -0.430982, 0.900146,
		0.994862, -0.098692, 0.022583,
		0.079104, 0.896947, 0.435003,
		41.742760, 35.205784, 32.174465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117535, 34.476833, 32.400505>,  <41.687386, 34.577919, 31.869963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117535, 34.476833, 32.400505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931652, 34.810669, 32.518837>,  <41.820122, 35.010971, 32.589836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931652, 34.810669, 32.518837>,  <42.117535, 34.476833, 32.400505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931652, 34.810669, 32.518837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064962, -0.365324, 0.928611,
		0.883081, 0.412310, 0.223983,
		-0.464702, 0.834589, 0.295826,
		41.792240, 35.061047, 32.607586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559826, 34.710243, 32.909630>,  <42.117535, 34.476833, 32.400505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559826, 34.710243, 32.909630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202129, 34.879456, 32.968105>,  <41.987511, 34.980984, 33.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202129, 34.879456, 32.968105>,  <42.559826, 34.710243, 32.909630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202129, 34.879456, 32.968105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091913, -0.493232, 0.865028,
		0.438043, 0.760108, 0.479952,
		-0.894243, 0.423033, 0.146193,
		41.933857, 35.006367, 33.011963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623466, 34.988655, 33.650913>,  <42.559826, 34.710243, 32.909630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623466, 34.988655, 33.650913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239628, 34.943058, 33.548012>,  <42.009323, 34.915699, 33.486271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239628, 34.943058, 33.548012>,  <42.623466, 34.988655, 33.650913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239628, 34.943058, 33.548012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171478, -0.487956, 0.855859,
		-0.223093, 0.865392, 0.448694,
		-0.959596, -0.113995, -0.257255,
		41.951748, 34.908859, 33.470837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261383, 35.346203, 34.186810>,  <42.623466, 34.988655, 33.650913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261383, 35.346203, 34.186810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008343, 35.088612, 34.014717>,  <41.856518, 34.934055, 33.911461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008343, 35.088612, 34.014717>,  <42.261383, 35.346203, 34.186810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008343, 35.088612, 34.014717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100065, -0.482895, 0.869942,
		-0.767984, 0.593379, 0.241041,
		-0.632603, -0.643982, -0.430233,
		41.818562, 34.895416, 33.885647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776051, 35.212963, 34.698677>,  <42.261383, 35.346203, 34.186810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776051, 35.212963, 34.698677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706322, 34.917339, 34.438396>,  <41.664482, 34.739967, 34.282230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706322, 34.917339, 34.438396>,  <41.776051, 35.212963, 34.698677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706322, 34.917339, 34.438396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244796, -0.607543, 0.755623,
		-0.953775, 0.291012, -0.075008,
		-0.174324, -0.739056, -0.650697,
		41.654026, 34.695621, 34.243187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163208, 34.856876, 34.972694>,  <41.776051, 35.212963, 34.698677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163208, 34.856876, 34.972694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387192, 34.617371, 34.743637>,  <41.521584, 34.473667, 34.606201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387192, 34.617371, 34.743637>,  <41.163208, 34.856876, 34.972694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387192, 34.617371, 34.743637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053312, -0.663697, 0.746099,
		-0.826804, -0.448313, -0.339721,
		0.559958, -0.598767, -0.572648,
		41.555180, 34.437740, 34.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140423, 34.243332, 35.410358>,  <41.163208, 34.856876, 34.972694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140423, 34.243332, 35.410358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388828, 34.143097, 35.113293>,  <41.537872, 34.082954, 34.935055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388828, 34.143097, 35.113293>,  <41.140423, 34.243332, 35.410358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388828, 34.143097, 35.113293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325574, -0.779432, 0.535246,
		-0.712979, -0.574187, -0.402454,
		0.621017, -0.250590, -0.742659,
		41.575134, 34.067921, 34.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052212, 33.482018, 35.271564>,  <41.140423, 34.243332, 35.410358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052212, 33.482018, 35.271564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422817, 33.582581, 35.159592>,  <41.645180, 33.642918, 35.092407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422817, 33.582581, 35.159592>,  <41.052212, 33.482018, 35.271564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422817, 33.582581, 35.159592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372870, -0.713094, 0.593687,
		-0.050357, -0.654438, -0.754437,
		0.926516, 0.251411, -0.279929,
		41.700771, 33.658005, 35.075611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462753, 32.906147, 34.937725>,  <41.052212, 33.482018, 35.271564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462753, 32.906147, 34.937725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714542, 33.162685, 35.113197>,  <41.865616, 33.316608, 35.218479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714542, 33.162685, 35.113197>,  <41.462753, 32.906147, 34.937725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714542, 33.162685, 35.113197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475696, -0.764475, 0.435075,
		0.614395, -0.065188, -0.786301,
		0.629469, 0.641348, 0.438681,
		41.903381, 33.355091, 35.244801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242615, 32.632191, 34.798508>,  <41.462753, 32.906147, 34.937725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242615, 32.632191, 34.798508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169182, 32.836002, 35.134762>,  <42.125122, 32.958290, 35.336514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169182, 32.836002, 35.134762>,  <42.242615, 32.632191, 34.798508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169182, 32.836002, 35.134762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405405, -0.739814, 0.536956,
		0.895513, 0.439376, -0.070749,
		-0.183585, 0.509533, 0.840638,
		42.114105, 32.988861, 35.386951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871090, 32.935978, 35.227585>,  <42.242615, 32.632191, 34.798508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871090, 32.935978, 35.227585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564960, 32.868919, 35.476158>,  <42.381283, 32.828686, 35.625301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564960, 32.868919, 35.476158>,  <42.871090, 32.935978, 35.227585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564960, 32.868919, 35.476158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573697, -0.615398, 0.540516,
		0.291813, 0.770182, 0.567155,
		-0.765322, -0.167645, 0.621432,
		42.335365, 32.818626, 35.662586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121380, 32.893776, 35.801403>,  <42.871090, 32.935978, 35.227585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121380, 32.893776, 35.801403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776066, 32.701988, 35.864449>,  <42.568878, 32.586914, 35.902275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776066, 32.701988, 35.864449>,  <43.121380, 32.893776, 35.801403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776066, 32.701988, 35.864449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451081, -0.592880, 0.667098,
		-0.226409, 0.646993, 0.728106,
		-0.863287, -0.479472, 0.157612,
		42.517078, 32.558147, 35.911732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228443, 32.709076, 36.506165>,  <43.121380, 32.893776, 35.801403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228443, 32.709076, 36.506165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905575, 32.506580, 36.384708>,  <42.711853, 32.385082, 36.311836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905575, 32.506580, 36.384708>,  <43.228443, 32.709076, 36.506165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905575, 32.506580, 36.384708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237265, -0.749210, 0.618376,
		-0.540534, 0.427094, 0.724854,
		-0.807173, -0.506236, -0.303639,
		42.663422, 32.354710, 36.293617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755127, 32.392811, 37.078903>,  <43.228443, 32.709076, 36.506165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755127, 32.392811, 37.078903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754032, 32.158199, 36.754932>,  <42.753376, 32.017433, 36.560551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754032, 32.158199, 36.754932>,  <42.755127, 32.392811, 37.078903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754032, 32.158199, 36.754932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232381, -0.788127, 0.569961,
		-0.972621, -0.186649, 0.138458,
		-0.002740, -0.586531, -0.809922,
		42.753212, 31.982241, 36.511955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199829, 31.858006, 37.128460>,  <42.755127, 32.392811, 37.078903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199829, 31.858006, 37.128460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491245, 31.729656, 36.886379>,  <42.666096, 31.652647, 36.741131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491245, 31.729656, 36.886379>,  <42.199829, 31.858006, 37.128460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491245, 31.729656, 36.886379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023342, -0.871358, 0.490092,
		-0.684603, -0.371180, -0.627332,
		0.728543, -0.320875, -0.605199,
		42.709808, 31.633394, 36.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059746, 31.207405, 37.074455>,  <42.199829, 31.858006, 37.128460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059746, 31.207405, 37.074455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435444, 31.217047, 36.937492>,  <42.660862, 31.222832, 36.855312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435444, 31.217047, 36.937492>,  <42.059746, 31.207405, 37.074455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435444, 31.217047, 36.937492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143186, -0.934114, 0.326999,
		-0.311968, -0.356159, -0.880810,
		0.939241, 0.024106, -0.342411,
		42.717216, 31.224279, 36.834770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199074, 30.494862, 36.898998>,  <42.059746, 31.207405, 37.074455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199074, 30.494862, 36.898998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560196, 30.666138, 36.883015>,  <42.776867, 30.768904, 36.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560196, 30.666138, 36.883015>,  <42.199074, 30.494862, 36.898998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560196, 30.666138, 36.883015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427276, -0.882551, 0.196313,
		0.048794, -0.194306, -0.979727,
		0.902804, 0.428192, -0.039959,
		42.831036, 30.794596, 36.871025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638268, 30.257280, 36.248726>,  <42.199074, 30.494862, 36.898998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638268, 30.257280, 36.248726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838196, 30.358139, 36.580170>,  <42.958153, 30.418655, 36.779037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838196, 30.358139, 36.580170>,  <42.638268, 30.257280, 36.248726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838196, 30.358139, 36.580170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427868, -0.903683, 0.016900,
		0.753064, 0.346089, -0.559569,
		0.499825, 0.252149, 0.828611,
		42.988144, 30.433784, 36.828754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966869, 29.670818, 36.382092>,  <42.638268, 30.257280, 36.248726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966869, 29.670818, 36.382092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120869, 29.814417, 36.722187>,  <43.213268, 29.900576, 36.926243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120869, 29.814417, 36.722187>,  <42.966869, 29.670818, 36.382092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120869, 29.814417, 36.722187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233643, -0.929149, 0.286520,
		0.892854, 0.088342, -0.441597,
		0.384998, 0.358996, 0.850234,
		43.236366, 29.922115, 36.977257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594902, 29.327736, 36.399635>,  <42.966869, 29.670818, 36.382092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594902, 29.327736, 36.399635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484959, 29.460793, 36.760479>,  <43.418995, 29.540627, 36.976986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484959, 29.460793, 36.760479>,  <43.594902, 29.327736, 36.399635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484959, 29.460793, 36.760479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070407, -0.928766, 0.363919,
		0.958905, 0.163539, 0.231855,
		-0.274855, 0.332640, 0.902112,
		43.402504, 29.560585, 37.031113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013901, 28.991468, 36.746582>,  <43.594902, 29.327736, 36.399635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013901, 28.991468, 36.746582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764050, 29.115011, 37.033482>,  <43.614140, 29.189137, 37.205624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764050, 29.115011, 37.033482>,  <44.013901, 28.991468, 36.746582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764050, 29.115011, 37.033482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237579, -0.799775, 0.551287,
		0.743908, 0.514752, 0.426182,
		-0.624625, 0.308855, 0.717253,
		43.576660, 29.207668, 37.248657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401821, 28.951870, 37.383057>,  <44.013901, 28.991468, 36.746582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401821, 28.951870, 37.383057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011509, 28.919432, 37.464317>,  <43.777321, 28.899969, 37.513073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011509, 28.919432, 37.464317>,  <44.401821, 28.951870, 37.383057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011509, 28.919432, 37.464317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167125, -0.875599, 0.453206,
		0.141129, 0.476183, 0.867947,
		-0.975783, -0.081096, 0.203155,
		43.718773, 28.895103, 37.525265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470627, 28.709534, 38.014023>,  <44.401821, 28.951870, 37.383057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470627, 28.709534, 38.014023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101513, 28.618227, 37.889854>,  <43.880043, 28.563442, 37.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101513, 28.618227, 37.889854>,  <44.470627, 28.709534, 38.014023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101513, 28.618227, 37.889854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054168, -0.874483, 0.482021,
		-0.381489, 0.427987, 0.819325,
		-0.922785, -0.228267, -0.310422,
		43.824677, 28.549747, 37.796726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017525, 28.525702, 38.615604>,  <44.470627, 28.709534, 38.014023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017525, 28.525702, 38.615604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818199, 28.370806, 38.305321>,  <43.698605, 28.277868, 38.119148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818199, 28.370806, 38.305321>,  <44.017525, 28.525702, 38.615604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818199, 28.370806, 38.305321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093668, -0.865429, 0.492198,
		-0.861923, 0.317928, 0.394982,
		-0.498312, -0.387239, -0.775713,
		43.668705, 28.254635, 38.072605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484306, 28.151970, 38.810677>,  <44.017525, 28.525702, 38.615604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484306, 28.151970, 38.810677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550304, 27.993958, 38.449184>,  <43.589901, 27.899149, 38.232288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550304, 27.993958, 38.449184>,  <43.484306, 28.151970, 38.810677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550304, 27.993958, 38.449184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058338, -0.910775, 0.408762,
		-0.984568, -0.120164, -0.127224,
		0.164991, -0.395032, -0.903730,
		43.599800, 27.875448, 38.178066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103374, 27.500818, 38.767746>,  <43.484306, 28.151970, 38.810677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103374, 27.500818, 38.767746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433525, 27.495245, 38.541981>,  <43.631615, 27.491901, 38.406521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433525, 27.495245, 38.541981>,  <43.103374, 27.500818, 38.767746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433525, 27.495245, 38.541981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256228, -0.881568, 0.396465,
		-0.503092, -0.471851, -0.724055,
		0.825376, -0.013935, -0.564411,
		43.681137, 27.491064, 38.372658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288815, 26.882500, 38.468361>,  <43.103374, 27.500818, 38.767746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288815, 26.882500, 38.468361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646267, 27.061628, 38.480270>,  <43.860737, 27.169106, 38.487415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646267, 27.061628, 38.480270>,  <43.288815, 26.882500, 38.468361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646267, 27.061628, 38.480270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402740, -0.829407, 0.387149,
		0.198071, -0.333975, -0.921536,
		0.893626, 0.447823, 0.029776,
		43.914356, 27.195974, 38.489204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751015, 26.448103, 38.187336>,  <43.288815, 26.882500, 38.468361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751015, 26.448103, 38.187336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910553, 26.694723, 38.458858>,  <44.006275, 26.842695, 38.621773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910553, 26.694723, 38.458858>,  <43.751015, 26.448103, 38.187336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910553, 26.694723, 38.458858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568808, -0.746964, 0.344241,
		0.719289, 0.248812, -0.648626,
		0.398849, 0.616552, 0.678810,
		44.030209, 26.879688, 38.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452549, 26.502317, 38.126972>,  <43.751015, 26.448103, 38.187336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452549, 26.502317, 38.126972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381298, 26.532547, 38.519413>,  <44.338547, 26.550684, 38.754879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381298, 26.532547, 38.519413>,  <44.452549, 26.502317, 38.126972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381298, 26.532547, 38.519413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531422, -0.831753, 0.160553,
		0.828168, 0.549978, 0.107995,
		-0.178126, 0.075574, 0.981101,
		44.327862, 26.555220, 38.813744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900154, 26.925127, 37.683647>,  <44.452549, 26.502317, 38.126972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900154, 26.925127, 37.683647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606552, 27.103004, 37.888973>,  <43.430393, 27.209730, 38.012169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606552, 27.103004, 37.888973>,  <43.900154, 26.925127, 37.683647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606552, 27.103004, 37.888973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186893, 0.594382, -0.782164,
		-0.652927, -0.670044, -0.353167,
		-0.734001, 0.444692, 0.513315,
		43.386353, 27.236412, 38.042969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443813, 27.276844, 37.218693>,  <43.900154, 26.925127, 37.683647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443813, 27.276844, 37.218693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351879, 27.491583, 37.543400>,  <43.296719, 27.620426, 37.738224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351879, 27.491583, 37.543400>,  <43.443813, 27.276844, 37.218693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351879, 27.491583, 37.543400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117020, 0.843292, -0.524562,
		-0.966169, -0.025570, -0.256639,
		-0.229835, 0.536848, 0.811770,
		43.282928, 27.652637, 37.786930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967194, 27.872108, 36.981106>,  <43.443813, 27.276844, 37.218693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967194, 27.872108, 36.981106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155151, 27.979013, 37.317623>,  <43.267925, 28.043158, 37.519531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155151, 27.979013, 37.317623>,  <42.967194, 27.872108, 36.981106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155151, 27.979013, 37.317623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027566, 0.957041, -0.288640,
		-0.882294, 0.112438, 0.457073,
		0.469891, 0.267265, 0.841292,
		43.296120, 28.059193, 37.570011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591156, 28.347490, 37.255569>,  <42.967194, 27.872108, 36.981106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591156, 28.347490, 37.255569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929760, 28.403805, 37.460938>,  <43.132923, 28.437593, 37.584156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929760, 28.403805, 37.460938>,  <42.591156, 28.347490, 37.255569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929760, 28.403805, 37.460938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104730, 0.989593, -0.098683,
		-0.521968, 0.029766, 0.852445,
		0.846511, 0.140786, 0.513419,
		43.183712, 28.446041, 37.614964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469357, 28.806854, 37.898289>,  <42.591156, 28.347490, 37.255569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469357, 28.806854, 37.898289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844471, 28.819605, 37.759995>,  <43.069542, 28.827255, 37.677017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844471, 28.819605, 37.759995>,  <42.469357, 28.806854, 37.898289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844471, 28.819605, 37.759995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073687, 0.991365, -0.108467,
		0.339292, 0.127195, 0.932042,
		0.937790, 0.031877, -0.345735,
		43.125809, 28.829168, 37.656273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793171, 29.369925, 38.250404>,  <42.469357, 28.806854, 37.898289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793171, 29.369925, 38.250404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012123, 29.307108, 37.921597>,  <43.143494, 29.269419, 37.724312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012123, 29.307108, 37.921597>,  <42.793171, 29.369925, 38.250404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012123, 29.307108, 37.921597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010412, 0.980882, -0.194324,
		0.836818, 0.114929, 0.535283,
		0.547383, -0.157040, -0.822016,
		43.176338, 29.259996, 37.674992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159435, 29.966856, 38.286175>,  <42.793171, 29.369925, 38.250404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159435, 29.966856, 38.286175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208038, 29.834551, 37.911831>,  <43.237202, 29.755167, 37.687225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208038, 29.834551, 37.911831>,  <43.159435, 29.966856, 38.286175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208038, 29.834551, 37.911831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022433, 0.941689, -0.335736,
		0.992337, 0.061789, 0.107002,
		0.121507, -0.330762, -0.935859,
		43.244492, 29.735323, 37.631073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801170, 30.440493, 38.007050>,  <43.159435, 29.966856, 38.286175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801170, 30.440493, 38.007050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579433, 30.288862, 37.710670>,  <43.446392, 30.197884, 37.532845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579433, 30.288862, 37.710670>,  <43.801170, 30.440493, 38.007050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579433, 30.288862, 37.710670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062627, 0.868733, -0.491306,
		0.829929, -0.318755, -0.457835,
		-0.554343, -0.379076, -0.740949,
		43.413132, 30.175140, 37.488384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914303, 30.918791, 37.452995>,  <43.801170, 30.440493, 38.007050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914303, 30.918791, 37.452995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668709, 30.721329, 37.206638>,  <43.521351, 30.602852, 37.058823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668709, 30.721329, 37.206638>,  <43.914303, 30.918791, 37.452995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668709, 30.721329, 37.206638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101268, 0.823105, -0.558787,
		0.782791, -0.280718, -0.555369,
		-0.613989, -0.493655, -0.615892,
		43.484512, 30.573233, 37.021870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112423, 31.103487, 36.784191>,  <43.914303, 30.918791, 37.452995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112423, 31.103487, 36.784191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729080, 30.989481, 36.776970>,  <43.499077, 30.921078, 36.772636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729080, 30.989481, 36.776970>,  <44.112423, 31.103487, 36.784191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729080, 30.989481, 36.776970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194574, 0.697915, -0.689243,
		0.209047, -0.657024, -0.724306,
		-0.958353, -0.285015, -0.018057,
		43.441574, 30.903976, 36.771553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818203, 31.406763, 36.290981>,  <44.112423, 31.103487, 36.784191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818203, 31.406763, 36.290981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486107, 31.243214, 36.442516>,  <43.286850, 31.145084, 36.533436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486107, 31.243214, 36.442516>,  <43.818203, 31.406763, 36.290981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486107, 31.243214, 36.442516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556617, 0.644152, -0.524639,
		-0.029519, -0.646446, -0.762389,
		-0.830244, -0.408872, 0.378837,
		43.237034, 31.120552, 36.556168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404728, 31.121004, 35.779953>,  <43.818203, 31.406763, 36.290981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404728, 31.121004, 35.779953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197403, 31.282211, 36.081661>,  <43.073006, 31.378935, 36.262688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197403, 31.282211, 36.081661>,  <43.404728, 31.121004, 35.779953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197403, 31.282211, 36.081661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380847, 0.680926, -0.625536,
		-0.765706, -0.611487, -0.199446,
		-0.518315, 0.403018, 0.754272,
		43.041908, 31.403116, 36.307941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899101, 31.202404, 35.480030>,  <43.404728, 31.121004, 35.779953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899101, 31.202404, 35.480030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848209, 31.457645, 35.783775>,  <42.817673, 31.610790, 35.966022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848209, 31.457645, 35.783775>,  <42.899101, 31.202404, 35.480030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848209, 31.457645, 35.783775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298119, 0.705586, -0.642863,
		-0.946011, -0.308174, 0.100458,
		-0.127231, 0.638104, 0.759365,
		42.810040, 31.649076, 36.011585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229843, 31.562031, 35.442997>,  <42.899101, 31.202404, 35.480030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229843, 31.562031, 35.442997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465752, 31.805353, 35.655464>,  <42.607296, 31.951345, 35.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465752, 31.805353, 35.655464>,  <42.229843, 31.562031, 35.442997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465752, 31.805353, 35.655464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194527, 0.745376, -0.637632,
		-0.783794, 0.272729, 0.557930,
		0.589768, 0.608304, 0.531168,
		42.642681, 31.987844, 35.814816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805820, 32.114376, 35.749863>,  <42.229843, 31.562031, 35.442997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805820, 32.114376, 35.749863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184330, 32.223976, 35.681168>,  <42.411434, 32.289738, 35.639950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184330, 32.223976, 35.681168>,  <41.805820, 32.114376, 35.749863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184330, 32.223976, 35.681168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321100, 0.733260, -0.599354,
		-0.038295, 0.622296, 0.781844,
		0.946271, 0.274003, -0.171739,
		42.468212, 32.306175, 35.629646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780872, 32.751038, 36.082996>,  <41.805820, 32.114376, 35.749863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780872, 32.751038, 36.082996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172699, 32.819344, 36.125504>,  <42.407795, 32.860329, 36.151009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172699, 32.819344, 36.125504>,  <41.780872, 32.751038, 36.082996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172699, 32.819344, 36.125504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064390, 0.766796, -0.638653,
		-0.190546, 0.618759, 0.762121,
		0.979564, 0.170766, 0.106269,
		42.466568, 32.870575, 36.157383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906578, 33.459938, 36.332062>,  <41.780872, 32.751038, 36.082996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906578, 33.459938, 36.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220345, 33.316097, 36.129925>,  <42.408604, 33.229790, 36.008644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220345, 33.316097, 36.129925>,  <41.906578, 33.459938, 36.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220345, 33.316097, 36.129925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167400, 0.661776, -0.730773,
		0.597214, 0.657826, 0.458912,
		0.784419, -0.359607, -0.505342,
		42.455669, 33.208214, 35.978321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538368, 33.898289, 36.105938>,  <41.906578, 33.459938, 36.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538368, 33.898289, 36.105938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484085, 33.614906, 35.828903>,  <42.451515, 33.444878, 35.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484085, 33.614906, 35.828903>,  <42.538368, 33.898289, 36.105938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484085, 33.614906, 35.828903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130061, 0.705744, -0.696426,
		0.982175, -0.004431, -0.187917,
		-0.135707, -0.708453, -0.692588,
		42.443375, 33.402370, 35.621128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783813, 34.156647, 35.482777>,  <42.538368, 33.898289, 36.105938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783813, 34.156647, 35.482777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540607, 33.851303, 35.395504>,  <42.394684, 33.668095, 35.343140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540607, 33.851303, 35.395504>,  <42.783813, 34.156647, 35.482777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540607, 33.851303, 35.395504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284857, 0.466263, -0.837529,
		0.741066, -0.447078, -0.500942,
		-0.608012, -0.763361, -0.218178,
		42.358204, 33.622295, 35.330051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915131, 34.069881, 34.714962>,  <42.783813, 34.156647, 35.482777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915131, 34.069881, 34.714962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548241, 33.940079, 34.807392>,  <42.328106, 33.862198, 34.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548241, 33.940079, 34.807392>,  <42.915131, 34.069881, 34.714962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548241, 33.940079, 34.807392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391076, 0.622992, -0.677452,
		0.075876, -0.711744, -0.698329,
		-0.917225, -0.324502, 0.231076,
		42.273071, 33.842728, 34.876717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578148, 33.853024, 34.158962>,  <42.915131, 34.069881, 34.714962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578148, 33.853024, 34.158962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254883, 33.906918, 34.388294>,  <42.060921, 33.939255, 34.525894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254883, 33.906918, 34.388294>,  <42.578148, 33.853024, 34.158962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254883, 33.906918, 34.388294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458332, 0.467460, -0.755919,
		-0.369862, -0.873686, -0.316031,
		-0.808167, 0.134739, 0.573334,
		42.012432, 33.947338, 34.560295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950695, 33.502556, 33.787498>,  <42.578148, 33.853024, 34.158962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950695, 33.502556, 33.787498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858799, 33.807858, 34.029045>,  <41.803661, 33.991039, 34.173973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858799, 33.807858, 34.029045>,  <41.950695, 33.502556, 33.787498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858799, 33.807858, 34.029045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404025, 0.489685, -0.772640,
		-0.885428, -0.421486, 0.195874,
		-0.229741, 0.763256, 0.603871,
		41.789875, 34.036835, 34.210205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475899, 33.512993, 33.139835>,  <41.950695, 33.502556, 33.787498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475899, 33.512993, 33.139835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504784, 33.158215, 32.957359>,  <42.522114, 32.945347, 32.847874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504784, 33.158215, 32.957359>,  <42.475899, 33.512993, 33.139835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504784, 33.158215, 32.957359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576705, 0.336042, -0.744639,
		0.813755, 0.316855, -0.487243,
		0.072208, -0.886949, -0.456187,
		42.526447, 32.892128, 32.820503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036278, 32.944031, 33.416431>,  <42.475899, 33.512993, 33.139835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036278, 32.944031, 33.416431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996647, 32.642338, 33.676067>,  <42.972870, 32.461323, 33.831848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996647, 32.642338, 33.676067>,  <43.036278, 32.944031, 33.416431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996647, 32.642338, 33.676067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078033, -0.656183, -0.750556,
		0.992016, -0.023711, 0.123866,
		-0.099075, -0.754229, 0.649094,
		42.966923, 32.416069, 33.870796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239799, 32.796566, 32.783588>,  <43.036278, 32.944031, 33.416431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239799, 32.796566, 32.783588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933926, 32.553280, 32.868748>,  <42.750401, 32.407307, 32.919846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933926, 32.553280, 32.868748>,  <43.239799, 32.796566, 32.783588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933926, 32.553280, 32.868748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570249, -0.484816, 0.663151,
		-0.300123, 0.628508, 0.717568,
		-0.764684, -0.608220, 0.212901,
		42.704521, 32.370815, 32.932617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640728, 33.137371, 32.222046>,  <43.239799, 32.796566, 32.783588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640728, 33.137371, 32.222046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398743, 33.392990, 32.032040>,  <43.253551, 33.546364, 31.918037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398743, 33.392990, 32.032040>,  <43.640728, 33.137371, 32.222046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398743, 33.392990, 32.032040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441661, 0.765684, 0.467614,
		0.662539, 0.073094, -0.745453,
		-0.604961, 0.639050, -0.475013,
		43.217255, 33.584705, 31.889536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909451, 33.565048, 31.681967>,  <43.640728, 33.137371, 32.222046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909451, 33.565048, 31.681967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636879, 33.751469, 31.907694>,  <43.473335, 33.863319, 32.043129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636879, 33.751469, 31.907694>,  <43.909451, 33.565048, 31.681967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636879, 33.751469, 31.907694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652446, 0.736184, 0.179852,
		-0.331622, 0.490742, -0.805729,
		-0.681426, 0.466052, 0.564318,
		43.432449, 33.891285, 32.076988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833492, 34.252457, 31.419636>,  <43.909451, 33.565048, 31.681967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833492, 34.252457, 31.419636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735733, 34.266869, 31.807238>,  <43.677078, 34.275517, 32.039799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735733, 34.266869, 31.807238>,  <43.833492, 34.252457, 31.419636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735733, 34.266869, 31.807238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525669, 0.844651, 0.101178,
		-0.814826, 0.534104, -0.225371,
		-0.244399, 0.036028, 0.969005,
		43.662415, 34.277676, 32.097939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583721, 34.890686, 31.547506>,  <43.833492, 34.252457, 31.419636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583721, 34.890686, 31.547506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766296, 34.736927, 31.868479>,  <43.875843, 34.644672, 32.061062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766296, 34.736927, 31.868479>,  <43.583721, 34.890686, 31.547506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766296, 34.736927, 31.868479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613941, 0.788831, 0.028662,
		-0.644002, 0.479564, 0.596053,
		0.456440, -0.384400, 0.802433,
		43.903229, 34.621609, 32.109207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772182, 35.530338, 31.922665>,  <43.583721, 34.890686, 31.547506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772182, 35.530338, 31.922665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978855, 35.251862, 32.122005>,  <44.102859, 35.084778, 32.241611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978855, 35.251862, 32.122005>,  <43.772182, 35.530338, 31.922665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978855, 35.251862, 32.122005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704653, 0.676403, 0.214346,
		-0.486313, 0.240417, 0.840059,
		0.516686, -0.696189, 0.498354,
		44.133862, 35.043003, 32.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817146, 35.830051, 32.617905>,  <43.772182, 35.530338, 31.922665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817146, 35.830051, 32.617905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099087, 35.559238, 32.533222>,  <44.268250, 35.396751, 32.482414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099087, 35.559238, 32.533222>,  <43.817146, 35.830051, 32.617905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099087, 35.559238, 32.533222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694158, 0.719762, 0.009322,
		0.146067, -0.153529, 0.977289,
		0.704847, -0.677031, -0.211707,
		44.310539, 35.356129, 32.469711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464588, 36.058582, 32.927067>,  <43.817146, 35.830051, 32.617905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464588, 36.058582, 32.927067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597572, 35.777054, 32.675953>,  <44.677364, 35.608139, 32.525284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597572, 35.777054, 32.675953>,  <44.464588, 36.058582, 32.927067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597572, 35.777054, 32.675953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880177, 0.470642, -0.061521,
		0.338760, -0.532106, 0.775954,
		0.332461, -0.703818, -0.627782,
		44.697311, 35.565910, 32.487617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941158, 35.559513, 33.180939>,  <44.464588, 36.058582, 32.927067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941158, 35.559513, 33.180939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998837, 35.658352, 32.797657>,  <45.033443, 35.717655, 32.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998837, 35.658352, 32.797657>,  <44.941158, 35.559513, 33.180939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998837, 35.658352, 32.797657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953193, 0.225382, 0.201562,
		0.265767, -0.942414, -0.203034,
		0.144194, 0.247099, -0.958201,
		45.042095, 35.732483, 32.510197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433357, 35.108196, 32.777477>,  <44.941158, 35.559513, 33.180939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433357, 35.108196, 32.777477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398502, 35.494781, 32.680855>,  <45.377590, 35.726734, 32.622879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398502, 35.494781, 32.680855>,  <45.433357, 35.108196, 32.777477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398502, 35.494781, 32.680855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819746, 0.207345, 0.533876,
		0.566059, -0.151498, -0.810324,
		-0.087136, 0.966466, -0.241560,
		45.372360, 35.784721, 32.608387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109779, 35.205124, 32.478310>,  <45.433357, 35.108196, 32.777477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109779, 35.205124, 32.478310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944122, 35.500759, 32.690815>,  <45.844727, 35.678139, 32.818317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944122, 35.500759, 32.690815>,  <46.109779, 35.205124, 32.478310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944122, 35.500759, 32.690815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744143, -0.061182, 0.665213,
		0.524153, 0.670827, -0.524648,
		-0.414144, 0.739086, 0.531259,
		45.819878, 35.722485, 32.850193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470215, 35.785748, 32.509529>,  <46.109779, 35.205124, 32.478310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470215, 35.785748, 32.509529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236187, 35.806591, 32.833252>,  <46.095772, 35.819096, 33.027485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236187, 35.806591, 32.833252>,  <46.470215, 35.785748, 32.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236187, 35.806591, 32.833252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810810, 0.058293, 0.582399,
		-0.016831, 0.996939, -0.076353,
		-0.585067, 0.052106, 0.809309,
		46.060665, 35.822224, 33.076046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683006, 36.339031, 32.964840>,  <46.470215, 35.785748, 32.509529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683006, 36.339031, 32.964840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524151, 36.019428, 33.145447>,  <46.428837, 35.827667, 33.253811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524151, 36.019428, 33.145447>,  <46.683006, 36.339031, 32.964840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.524151, 36.019428, 33.145447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810605, -0.074682, 0.580811,
		-0.430351, 0.596667, 0.677338,
		-0.397136, -0.799006, 0.451522,
		46.405010, 35.779728, 33.280903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752773, 36.449596, 33.615643>,  <46.683006, 36.339031, 32.964840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752773, 36.449596, 33.615643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718597, 36.051300, 33.601822>,  <46.698093, 35.812321, 33.593529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718597, 36.051300, 33.601822>,  <46.752773, 36.449596, 33.615643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718597, 36.051300, 33.601822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680010, -0.083623, 0.728419,
		-0.728208, 0.038737, 0.684260,
		-0.085436, -0.995744, -0.034554,
		46.692966, 35.752575, 33.591457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481834, 36.240532, 34.236435>,  <46.752773, 36.449596, 33.615643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481834, 36.240532, 34.236435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684666, 35.938599, 34.070015>,  <46.806362, 35.757439, 33.970161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684666, 35.938599, 34.070015>,  <46.481834, 36.240532, 34.236435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684666, 35.938599, 34.070015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572953, -0.065411, 0.816974,
		-0.643895, -0.652645, 0.399317,
		0.507074, -0.754835, -0.416053,
		46.836788, 35.712147, 33.945198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593491, 35.631355, 34.719711>,  <46.481834, 36.240532, 34.236435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593491, 35.631355, 34.719711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896996, 35.565132, 34.467720>,  <47.079098, 35.525398, 34.316525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896996, 35.565132, 34.467720>,  <46.593491, 35.631355, 34.719711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896996, 35.565132, 34.467720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575340, -0.283096, 0.767359,
		-0.305392, -0.944693, -0.119545,
		0.758761, -0.165567, -0.629975,
		47.124626, 35.515465, 34.278728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834358, 34.959064, 34.821144>,  <46.593491, 35.631355, 34.719711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834358, 34.959064, 34.821144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120388, 35.175182, 34.643719>,  <47.292007, 35.304855, 34.537262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120388, 35.175182, 34.643719>,  <46.834358, 34.959064, 34.821144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120388, 35.175182, 34.643719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681017, -0.395247, 0.616438,
		0.157743, -0.742873, -0.650582,
		0.715075, 0.540296, -0.443562,
		47.334911, 35.337273, 34.510651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.247360, 34.571800, 34.411472>,  <46.834358, 34.959064, 34.821144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.247360, 34.571800, 34.411472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360027, 34.877003, 34.644188>,  <47.427628, 35.060123, 34.783817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360027, 34.877003, 34.644188>,  <47.247360, 34.571800, 34.411472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.360027, 34.877003, 34.644188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355065, -0.646182, 0.675557,
		0.891398, 0.016289, -0.452927,
		0.281669, 0.763009, 0.581789,
		47.444527, 35.105907, 34.818726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.032566, 34.624142, 34.582203>,  <47.247360, 34.571800, 34.411472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.032566, 34.624142, 34.582203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812096, 34.798401, 34.866856>,  <47.679813, 34.902958, 35.037647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812096, 34.798401, 34.866856>,  <48.032566, 34.624142, 34.582203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812096, 34.798401, 34.866856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372135, -0.635009, 0.676964,
		0.746810, 0.637946, 0.187879,
		-0.551171, 0.435647, 0.711633,
		47.646744, 34.929096, 35.080345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.803398, 32.599106, 23.472179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457813, 32.773804, 23.371912>,  <40.250462, 32.878620, 23.311752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457813, 32.773804, 23.371912>,  <40.803398, 32.599106, 23.472179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457813, 32.773804, 23.371912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342535, -0.144816, 0.928277,
		0.369115, 0.887855, 0.274714,
		-0.863958, 0.436740, -0.250667,
		40.198627, 32.904827, 23.296711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631275, 33.147110, 23.950195>,  <40.803398, 32.599106, 23.472179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631275, 33.147110, 23.950195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.259281, 33.120243, 23.805628>,  <40.036087, 33.104122, 23.718887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.259281, 33.120243, 23.805628>,  <40.631275, 33.147110, 23.950195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259281, 33.120243, 23.805628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362553, 0.330091, 0.871548,
		0.060761, 0.941556, -0.331331,
		-0.929980, -0.067169, -0.361420,
		39.980286, 33.100094, 23.697201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331779, 33.670444, 24.134682>,  <40.631275, 33.147110, 23.950195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331779, 33.670444, 24.134682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013798, 33.432789, 24.085629>,  <39.823009, 33.290195, 24.056196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013798, 33.432789, 24.085629>,  <40.331779, 33.670444, 24.134682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013798, 33.432789, 24.085629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318734, 0.237040, 0.917726,
		-0.516187, 0.768642, -0.377809,
		-0.794959, -0.594139, -0.122635,
		39.775311, 33.254547, 24.048838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705761, 34.008461, 24.342447>,  <40.331779, 33.670444, 24.134682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705761, 34.008461, 24.342447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646893, 33.613766, 24.369816>,  <39.611572, 33.376949, 24.386238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646893, 33.613766, 24.369816>,  <39.705761, 34.008461, 24.342447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646893, 33.613766, 24.369816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319910, 0.112944, 0.940692,
		-0.935947, 0.116555, -0.332291,
		-0.147173, -0.986741, 0.068423,
		39.602741, 33.317741, 24.390343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112514, 33.877697, 24.780567>,  <39.705761, 34.008461, 24.342447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112514, 33.877697, 24.780567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280384, 33.514923, 24.795212>,  <39.381107, 33.297256, 24.803999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280384, 33.514923, 24.795212>,  <39.112514, 33.877697, 24.780567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280384, 33.514923, 24.795212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240892, -0.072398, 0.967848,
		-0.875126, -0.414999, -0.248858,
		0.419673, -0.906937, 0.036613,
		39.406284, 33.242844, 24.806196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628876, 33.394932, 25.031031>,  <39.112514, 33.877697, 24.780567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628876, 33.394932, 25.031031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952930, 33.170986, 25.100571>,  <39.147362, 33.036617, 25.142294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952930, 33.170986, 25.100571>,  <38.628876, 33.394932, 25.031031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952930, 33.170986, 25.100571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296934, -0.136184, 0.945137,
		-0.505476, -0.817314, -0.276572,
		0.810138, -0.559868, 0.173851,
		39.195972, 33.003025, 25.152725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408997, 32.850727, 25.471821>,  <38.628876, 33.394932, 25.031031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408997, 32.850727, 25.471821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802135, 32.843899, 25.545265>,  <39.038021, 32.839802, 25.589331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802135, 32.843899, 25.545265>,  <38.408997, 32.850727, 25.471821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802135, 32.843899, 25.545265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182181, 0.064162, 0.981169,
		-0.028528, -0.997793, 0.059952,
		0.982851, -0.017069, 0.183609,
		39.096992, 32.838779, 25.600348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585209, 32.276691, 25.851084>,  <38.408997, 32.850727, 25.471821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585209, 32.276691, 25.851084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888748, 32.527199, 25.922560>,  <39.070873, 32.677505, 25.965445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888748, 32.527199, 25.922560>,  <38.585209, 32.276691, 25.851084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888748, 32.527199, 25.922560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281750, 0.068325, 0.957052,
		0.587165, -0.776606, 0.228300,
		0.758851, 0.626271, 0.178691,
		39.116402, 32.715080, 25.976168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961914, 31.996819, 26.461073>,  <38.585209, 32.276691, 25.851084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961914, 31.996819, 26.461073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102539, 32.371181, 26.452349>,  <39.186916, 32.595798, 26.447115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102539, 32.371181, 26.452349>,  <38.961914, 31.996819, 26.461073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102539, 32.371181, 26.452349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015874, 0.017333, 0.999724,
		0.936029, -0.351814, -0.008763,
		0.351565, 0.935910, -0.021809,
		39.208008, 32.651955, 26.445807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592663, 32.029564, 26.883505>,  <38.961914, 31.996819, 26.461073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592663, 32.029564, 26.883505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468670, 32.409309, 26.863050>,  <39.394276, 32.637157, 26.850777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468670, 32.409309, 26.863050>,  <39.592663, 32.029564, 26.883505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468670, 32.409309, 26.863050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008028, 0.051172, 0.998658,
		0.950710, 0.309972, -0.008241,
		-0.309978, 0.949367, -0.051138,
		39.375675, 32.694118, 26.847710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137390, 32.460621, 27.234940>,  <39.592663, 32.029564, 26.883505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137390, 32.460621, 27.234940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792320, 32.662735, 27.226208>,  <39.585278, 32.784004, 27.220968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792320, 32.662735, 27.226208>,  <40.137390, 32.460621, 27.234940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792320, 32.662735, 27.226208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088414, 0.193164, 0.977175,
		0.497972, 0.841054, -0.211312,
		-0.862674, 0.505288, -0.021829,
		39.533520, 32.814320, 27.219660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259281, 32.778820, 27.798847>,  <40.137390, 32.460621, 27.234940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259281, 32.778820, 27.798847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871330, 32.842793, 27.725344>,  <39.638561, 32.881176, 27.681242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871330, 32.842793, 27.725344>,  <40.259281, 32.778820, 27.798847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871330, 32.842793, 27.725344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172912, 0.079406, 0.981731,
		0.171602, 0.983929, -0.049359,
		-0.969873, 0.159932, -0.183759,
		39.580368, 32.890774, 27.670216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093739, 33.324280, 28.209688>,  <40.259281, 32.778820, 27.798847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093739, 33.324280, 28.209688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.734119, 33.179714, 28.110817>,  <39.518349, 33.092976, 28.051495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.734119, 33.179714, 28.110817>,  <40.093739, 33.324280, 28.209688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734119, 33.179714, 28.110817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291891, 0.073927, 0.953590,
		-0.326366, 0.929471, -0.171957,
		-0.899047, -0.361412, -0.247177,
		39.464405, 33.071289, 28.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600163, 33.891895, 28.394543>,  <40.093739, 33.324280, 28.209688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600163, 33.891895, 28.394543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385975, 33.554188, 28.403406>,  <39.257462, 33.351562, 28.408724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385975, 33.554188, 28.403406>,  <39.600163, 33.891895, 28.394543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385975, 33.554188, 28.403406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288720, 0.207646, 0.934625,
		-0.793674, 0.494061, -0.354944,
		-0.535464, -0.844267, 0.022158,
		39.225334, 33.300907, 28.410053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984329, 34.077183, 28.607426>,  <39.600163, 33.891895, 28.394543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984329, 34.077183, 28.607426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008297, 33.688408, 28.698410>,  <39.022678, 33.455143, 28.753000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008297, 33.688408, 28.698410>,  <38.984329, 34.077183, 28.607426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008297, 33.688408, 28.698410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339198, 0.194485, 0.920391,
		-0.938805, -0.132304, -0.318027,
		0.059920, -0.971942, 0.227461,
		39.026272, 33.396824, 28.766649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404980, 33.914692, 29.021158>,  <38.984329, 34.077183, 28.607426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404980, 33.914692, 29.021158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647766, 33.606014, 29.097137>,  <38.793438, 33.420807, 29.142725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647766, 33.606014, 29.097137>,  <38.404980, 33.914692, 29.021158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647766, 33.606014, 29.097137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175456, 0.102991, 0.979085,
		-0.775115, -0.627602, -0.072886,
		0.606969, -0.771692, 0.189947,
		38.829857, 33.374508, 29.154121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039360, 33.471672, 29.479658>,  <38.404980, 33.914692, 29.021158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039360, 33.471672, 29.479658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427025, 33.391121, 29.536463>,  <38.659626, 33.342793, 29.570545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427025, 33.391121, 29.536463>,  <38.039360, 33.471672, 29.479658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427025, 33.391121, 29.536463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190572, -0.247201, 0.950039,
		-0.156207, -0.947808, -0.277955,
		0.969165, -0.201373, 0.142012,
		38.717773, 33.330708, 29.579065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049500, 32.925724, 29.837759>,  <38.039360, 33.471672, 29.479658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049500, 32.925724, 29.837759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402473, 33.088696, 29.931829>,  <38.614258, 33.186478, 29.988272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402473, 33.088696, 29.931829>,  <38.049500, 32.925724, 29.837759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402473, 33.088696, 29.931829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156585, -0.217019, 0.963527,
		0.443610, -0.887074, -0.127708,
		0.882435, 0.407433, 0.235174,
		38.667206, 33.210926, 30.002382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225834, 32.615475, 30.468758>,  <38.049500, 32.925724, 29.837759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225834, 32.615475, 30.468758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485428, 32.918026, 30.435995>,  <38.641186, 33.099556, 30.416338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485428, 32.918026, 30.435995>,  <38.225834, 32.615475, 30.468758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485428, 32.918026, 30.435995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072868, 0.045364, 0.996309,
		0.757304, -0.652557, -0.025675,
		0.648984, 0.756380, -0.081905,
		38.680122, 33.144939, 30.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723938, 32.433968, 30.963665>,  <38.225834, 32.615475, 30.468758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723938, 32.433968, 30.963665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736053, 32.823471, 30.873444>,  <38.743324, 33.057175, 30.819311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736053, 32.823471, 30.873444>,  <38.723938, 32.433968, 30.963665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736053, 32.823471, 30.873444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160895, 0.217965, 0.962603,
		0.986507, -0.065447, -0.150071,
		0.030289, 0.973760, -0.225554,
		38.745140, 33.115601, 30.805777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318352, 32.645088, 31.206898>,  <38.723938, 32.433968, 30.963665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318352, 32.645088, 31.206898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085499, 32.968071, 31.168692>,  <38.945786, 33.161861, 31.145767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085499, 32.968071, 31.168692>,  <39.318352, 32.645088, 31.206898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085499, 32.968071, 31.168692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054540, 0.155988, 0.986252,
		0.811260, 0.568923, -0.134845,
		-0.582136, 0.807461, -0.095518,
		38.910858, 33.210308, 31.140036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677551, 33.252556, 31.459263>,  <39.318352, 32.645088, 31.206898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677551, 33.252556, 31.459263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280628, 33.299473, 31.475080>,  <39.042473, 33.327621, 31.484571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280628, 33.299473, 31.475080>,  <39.677551, 33.252556, 31.459263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280628, 33.299473, 31.475080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075080, 0.316389, 0.945654,
		0.098406, 0.941351, -0.322762,
		-0.992310, 0.117291, 0.039542,
		38.982937, 33.334660, 31.486942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075912, 33.577347, 32.131733>,  <39.677551, 33.252556, 31.459263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075912, 33.577347, 32.131733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337875, 33.323418, 32.295731>,  <40.495052, 33.171062, 32.394131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337875, 33.323418, 32.295731>,  <40.075912, 33.577347, 32.131733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337875, 33.323418, 32.295731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641799, 0.180792, -0.745258,
		0.398981, 0.751211, 0.525829,
		0.654911, -0.634820, 0.409993,
		40.534348, 33.132973, 32.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676659, 33.936882, 32.347469>,  <40.075912, 33.577347, 32.131733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676659, 33.936882, 32.347469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767159, 33.556946, 32.261101>,  <40.821457, 33.328983, 32.209282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767159, 33.556946, 32.261101>,  <40.676659, 33.936882, 32.347469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767159, 33.556946, 32.261101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627870, 0.311678, -0.713187,
		0.744709, 0.025786, 0.666890,
		0.226245, -0.949838, -0.215919,
		40.835033, 33.271996, 32.196323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363312, 33.921288, 31.939402>,  <40.676659, 33.936882, 32.347469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363312, 33.921288, 31.939402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261974, 33.535904, 31.904625>,  <41.201172, 33.304672, 31.883759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261974, 33.535904, 31.904625>,  <41.363312, 33.921288, 31.939402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261974, 33.535904, 31.904625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502257, -0.054193, -0.863019,
		0.826774, -0.262306, 0.497635,
		-0.253343, -0.963462, -0.086940,
		41.185970, 33.246864, 31.878542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015343, 33.538956, 31.779903>,  <41.363312, 33.921288, 31.939402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015343, 33.538956, 31.779903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.697208, 33.322807, 31.670040>,  <41.506329, 33.193119, 31.604122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.697208, 33.322807, 31.670040>,  <42.015343, 33.538956, 31.779903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697208, 33.322807, 31.670040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427571, -0.178935, -0.886096,
		0.429676, -0.822181, 0.373361,
		-0.795338, -0.540372, -0.274656,
		41.458607, 33.160694, 31.587643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285828, 32.970036, 31.228060>,  <42.015343, 33.538956, 31.779903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285828, 32.970036, 31.228060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.896297, 32.915783, 31.155104>,  <41.662579, 32.883232, 31.111330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.896297, 32.915783, 31.155104>,  <42.285828, 32.970036, 31.228060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896297, 32.915783, 31.155104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181140, 0.021622, -0.983220,
		0.137296, -0.990524, 0.003512,
		-0.973827, -0.135628, -0.182392,
		41.604149, 32.875095, 31.100386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207573, 32.381771, 30.849384>,  <42.285828, 32.970036, 31.228060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207573, 32.381771, 30.849384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.898869, 32.625584, 30.776878>,  <41.713646, 32.771873, 30.733376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.898869, 32.625584, 30.776878>,  <42.207573, 32.381771, 30.849384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898869, 32.625584, 30.776878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162424, -0.086648, -0.982909,
		-0.614824, -0.788009, -0.032132,
		-0.771758, 0.609535, -0.181265,
		41.667339, 32.808445, 30.722498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860809, 32.059696, 30.243231>,  <42.207573, 32.381771, 30.849384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860809, 32.059696, 30.243231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725742, 32.434216, 30.281874>,  <41.644703, 32.658928, 30.305059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725742, 32.434216, 30.281874>,  <41.860809, 32.059696, 30.243231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725742, 32.434216, 30.281874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004346, 0.101082, -0.994868,
		-0.941255, -0.336357, -0.030064,
		-0.337670, 0.936294, 0.096606,
		41.624443, 32.715103, 30.310856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232174, 32.061665, 29.704556>,  <41.860809, 32.059696, 30.243231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232174, 32.061665, 29.704556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351295, 32.430389, 29.803812>,  <41.422768, 32.651627, 29.863365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351295, 32.430389, 29.803812>,  <41.232174, 32.061665, 29.704556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351295, 32.430389, 29.803812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128976, 0.296403, -0.946314,
		-0.945876, 0.249807, 0.207160,
		0.297799, 0.921814, 0.248141,
		41.440636, 32.706932, 29.878254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712585, 32.620323, 29.415894>,  <41.232174, 32.061665, 29.704556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712585, 32.620323, 29.415894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.052876, 32.820583, 29.479919>,  <41.257050, 32.940739, 29.518335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.052876, 32.820583, 29.479919>,  <40.712585, 32.620323, 29.415894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052876, 32.820583, 29.479919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054588, 0.387040, -0.920445,
		-0.522773, 0.774306, 0.356593,
		0.850722, 0.500650, 0.160066,
		41.308094, 32.970779, 29.527939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551224, 33.268730, 29.164068>,  <40.712585, 32.620323, 29.415894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551224, 33.268730, 29.164068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.945057, 33.200768, 29.147413>,  <41.181355, 33.159988, 29.137421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.945057, 33.200768, 29.147413>,  <40.551224, 33.268730, 29.164068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945057, 33.200768, 29.147413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000113, 0.238645, -0.971107,
		0.174933, 0.956128, 0.234984,
		0.984580, -0.169905, -0.041639,
		41.240433, 33.149796, 29.134922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753693, 33.762074, 28.612417>,  <40.551224, 33.268730, 29.164068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753693, 33.762074, 28.612417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.059261, 33.512466, 28.678173>,  <41.242603, 33.362701, 28.717627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.059261, 33.512466, 28.678173>,  <40.753693, 33.762074, 28.612417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059261, 33.512466, 28.678173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143077, -0.084620, -0.986088,
		0.629250, 0.776812, 0.024640,
		0.763920, -0.624021, 0.164391,
		41.288437, 33.325260, 28.727489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252647, 34.041203, 28.244417>,  <40.753693, 33.762074, 28.612417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252647, 34.041203, 28.244417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.384823, 33.666527, 28.290747>,  <41.464127, 33.441719, 28.318544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.384823, 33.666527, 28.290747>,  <41.252647, 34.041203, 28.244417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384823, 33.666527, 28.290747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348586, 0.007080, -0.937250,
		0.877096, 0.350078, 0.328858,
		0.330439, -0.936694, 0.115822,
		41.483955, 33.385517, 28.325493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910114, 34.029156, 28.081387>,  <41.252647, 34.041203, 28.244417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910114, 34.029156, 28.081387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.764347, 33.660336, 28.029202>,  <41.676888, 33.439041, 27.997890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.764347, 33.660336, 28.029202>,  <41.910114, 34.029156, 28.081387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764347, 33.660336, 28.029202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433142, -0.043806, -0.900261,
		0.824372, -0.384578, 0.415343,
		-0.364414, -0.922053, -0.130464,
		41.655022, 33.383720, 27.990063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448822, 33.795902, 27.674969>,  <41.910114, 34.029156, 28.081387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448822, 33.795902, 27.674969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.152039, 33.529827, 27.641455>,  <41.973969, 33.370182, 27.621346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.152039, 33.529827, 27.641455>,  <42.448822, 33.795902, 27.674969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152039, 33.529827, 27.641455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203206, -0.104027, -0.973594,
		0.638907, -0.739394, 0.212354,
		-0.741960, -0.665188, -0.083786,
		41.929451, 33.330269, 27.616320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672901, 33.260574, 27.119596>,  <42.448822, 33.795902, 27.674969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672901, 33.260574, 27.119596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282070, 33.178764, 27.143234>,  <42.047573, 33.129677, 27.157417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282070, 33.178764, 27.143234>,  <42.672901, 33.260574, 27.119596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282070, 33.178764, 27.143234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035170, -0.118689, -0.992308,
		0.209970, -0.971638, 0.108775,
		-0.977075, -0.204529, 0.059094,
		41.988949, 33.117405, 27.160963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553970, 32.482403, 26.976080>,  <42.672901, 33.260574, 27.119596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553970, 32.482403, 26.976080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.203995, 32.661907, 26.903311>,  <41.994011, 32.769608, 26.859650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.203995, 32.661907, 26.903311>,  <42.553970, 32.482403, 26.976080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203995, 32.661907, 26.903311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062775, -0.267411, -0.961536,
		-0.480148, -0.852705, 0.205798,
		-0.874938, 0.448760, -0.181925,
		41.941513, 32.796535, 26.848734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281487, 31.971556, 26.633877>,  <42.553970, 32.482403, 26.976080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281487, 31.971556, 26.633877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.098457, 32.323277, 26.581026>,  <41.988640, 32.534309, 26.549316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.098457, 32.323277, 26.581026>,  <42.281487, 31.971556, 26.633877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098457, 32.323277, 26.581026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014190, -0.155796, -0.987687,
		-0.889060, -0.450062, 0.083765,
		-0.457571, 0.879302, -0.132126,
		41.961185, 32.587067, 26.541388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768333, 31.922537, 26.111841>,  <42.281487, 31.971556, 26.633877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768333, 31.922537, 26.111841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.882996, 32.305706, 26.117704>,  <41.951794, 32.535606, 26.121222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.882996, 32.305706, 26.117704>,  <41.768333, 31.922537, 26.111841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882996, 32.305706, 26.117704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059608, 0.033102, -0.997673,
		-0.956178, 0.285113, 0.066589,
		0.286654, 0.957922, 0.014656,
		41.968990, 32.593082, 26.122101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.256657, 32.277607, 25.574667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560848, 32.532738, 25.623404>,  <41.743362, 32.685818, 25.652645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560848, 32.532738, 25.623404>,  <41.256657, 32.277607, 25.574667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560848, 32.532738, 25.623404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135394, 0.027766, -0.990403,
		-0.635089, 0.769679, -0.065242,
		0.760481, 0.637827, 0.121844,
		41.788994, 32.724087, 25.659956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200027, 32.786015, 25.093962>,  <41.256657, 32.277607, 25.574667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200027, 32.786015, 25.093962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.591522, 32.815723, 25.170441>,  <41.826420, 32.833549, 25.216328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.591522, 32.815723, 25.170441>,  <41.200027, 32.786015, 25.093962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591522, 32.815723, 25.170441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174015, 0.192811, -0.965683,
		-0.108588, 0.978421, 0.175787,
		0.978738, 0.074273, 0.191197,
		41.885143, 32.838005, 25.227800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385853, 33.239326, 24.610151>,  <41.200027, 32.786015, 25.093962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385853, 33.239326, 24.610151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.740036, 33.083611, 24.711681>,  <41.952545, 32.990181, 24.772598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.740036, 33.083611, 24.711681>,  <41.385853, 33.239326, 24.610151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740036, 33.083611, 24.711681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332101, 0.147982, -0.931563,
		0.325085, 0.909152, 0.260314,
		0.885454, -0.389288, 0.253824,
		42.005672, 32.966824, 24.787828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981400, 33.616722, 24.340609>,  <41.385853, 33.239326, 24.610151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981400, 33.616722, 24.340609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187866, 33.282597, 24.416306>,  <42.311749, 33.082119, 24.461723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187866, 33.282597, 24.416306>,  <41.981400, 33.616722, 24.340609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187866, 33.282597, 24.416306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437965, 0.067540, -0.896451,
		0.736040, 0.545603, 0.400702,
		0.516169, -0.835318, 0.189243,
		42.342716, 33.032001, 24.473078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738323, 33.791424, 24.201990>,  <41.981400, 33.616722, 24.340609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738323, 33.791424, 24.201990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.661846, 33.400921, 24.161255>,  <42.615959, 33.166618, 24.136814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.661846, 33.400921, 24.161255>,  <42.738323, 33.791424, 24.201990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661846, 33.400921, 24.161255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369585, 0.024513, -0.928874,
		0.909314, -0.215231, 0.356122,
		-0.191193, -0.976256, -0.101836,
		42.604488, 33.108044, 24.130705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337585, 33.457996, 23.887711>,  <42.738323, 33.791424, 24.201990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337585, 33.457996, 23.887711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.051792, 33.186966, 23.817959>,  <42.880318, 33.024349, 23.776108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.051792, 33.186966, 23.817959>,  <43.337585, 33.457996, 23.887711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051792, 33.186966, 23.817959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393845, -0.183499, -0.900674,
		0.578275, -0.712195, 0.397966,
		-0.714482, -0.677574, -0.174381,
		42.837448, 32.983692, 23.765644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722485, 32.871956, 23.569868>,  <43.337585, 33.457996, 23.887711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722485, 32.871956, 23.569868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.338875, 32.818859, 23.469751>,  <43.108707, 32.787003, 23.409681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.338875, 32.818859, 23.469751>,  <43.722485, 32.871956, 23.569868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338875, 32.818859, 23.469751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281203, -0.338384, -0.898010,
		0.034506, -0.931599, 0.361846,
		-0.959028, -0.132739, -0.250292,
		43.051167, 32.779037, 23.394663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796253, 32.351921, 23.089630>,  <43.722485, 32.871956, 23.569868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796253, 32.351921, 23.089630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429478, 32.486217, 23.003368>,  <43.209412, 32.566795, 22.951612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429478, 32.486217, 23.003368>,  <43.796253, 32.351921, 23.089630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429478, 32.486217, 23.003368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147503, -0.216974, -0.964969,
		-0.370773, -0.916624, 0.149428,
		-0.916935, 0.335743, -0.215653,
		43.154396, 32.586941, 22.938673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460361, 31.897356, 22.611145>,  <43.796253, 32.351921, 23.089630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460361, 31.897356, 22.611145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.302876, 32.262794, 22.570498>,  <43.208382, 32.482059, 22.546108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.302876, 32.262794, 22.570498>,  <43.460361, 31.897356, 22.611145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302876, 32.262794, 22.570498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237404, -0.005738, -0.971394,
		-0.888046, -0.406580, -0.214632,
		-0.393718, 0.913597, -0.101620,
		43.184761, 32.536873, 22.540012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228470, 31.709982, 21.975082>,  <43.460361, 31.897356, 22.611145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228470, 31.709982, 21.975082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.228081, 32.107929, 22.015543>,  <43.227848, 32.346699, 22.039820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.228081, 32.107929, 22.015543>,  <43.228470, 31.709982, 21.975082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228081, 32.107929, 22.015543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225482, 0.098765, -0.969228,
		-0.974247, 0.021868, -0.224421,
		-0.000970, 0.994871, 0.101153,
		43.227791, 32.406391, 22.045889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113426, 32.011887, 21.235674>,  <43.228470, 31.709982, 21.975082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113426, 32.011887, 21.235674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223106, 32.332138, 21.448769>,  <43.288914, 32.524288, 21.576626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223106, 32.332138, 21.448769>,  <43.113426, 32.011887, 21.235674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223106, 32.332138, 21.448769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455452, 0.379787, -0.805186,
		-0.846982, 0.463416, -0.260512,
		0.274197, 0.800629, 0.532737,
		43.305367, 32.572327, 21.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833599, 32.591686, 20.813051>,  <43.113426, 32.011887, 21.235674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833599, 32.591686, 20.813051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.133621, 32.730213, 21.038433>,  <43.313633, 32.813328, 21.173662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.133621, 32.730213, 21.038433>,  <42.833599, 32.591686, 20.813051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133621, 32.730213, 21.038433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438425, 0.377498, -0.815646,
		-0.495176, 0.858812, 0.131310,
		0.750056, 0.346319, 0.563453,
		43.358639, 32.834110, 21.207468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872845, 33.279594, 20.804087>,  <42.833599, 32.591686, 20.813051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872845, 33.279594, 20.804087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251633, 33.188335, 20.894588>,  <43.478905, 33.133579, 20.948889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251633, 33.188335, 20.894588>,  <42.872845, 33.279594, 20.804087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251633, 33.188335, 20.894588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308771, 0.451327, -0.837236,
		0.088902, 0.862700, 0.497840,
		0.946972, -0.228151, 0.226253,
		43.535725, 33.119888, 20.962465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243694, 33.833271, 20.657705>,  <42.872845, 33.279594, 20.804087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243694, 33.833271, 20.657705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.542397, 33.569317, 20.690971>,  <43.721619, 33.410946, 20.710930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.542397, 33.569317, 20.690971>,  <43.243694, 33.833271, 20.657705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542397, 33.569317, 20.690971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464622, 0.428097, -0.775151,
		0.475905, 0.617486, 0.626279,
		0.746753, -0.659881, 0.083164,
		43.766422, 33.371353, 20.715921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859299, 34.124882, 20.775452>,  <43.243694, 33.833271, 20.657705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859299, 34.124882, 20.775452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.956814, 33.779079, 20.599632>,  <44.015324, 33.571598, 20.494141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.956814, 33.779079, 20.599632>,  <43.859299, 34.124882, 20.775452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956814, 33.779079, 20.599632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531112, 0.498223, -0.685343,
		0.811474, -0.066373, 0.580607,
		0.243783, -0.864505, -0.439546,
		44.029949, 33.519730, 20.467768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479050, 34.291088, 20.529911>,  <43.859299, 34.124882, 20.775452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479050, 34.291088, 20.529911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.372040, 33.951427, 20.347761>,  <44.307835, 33.747631, 20.238470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.372040, 33.951427, 20.347761>,  <44.479050, 34.291088, 20.529911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372040, 33.951427, 20.347761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442204, 0.311694, -0.841013,
		0.856088, -0.426360, 0.292114,
		-0.267524, -0.849155, -0.455376,
		44.291782, 33.696682, 20.211149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096916, 33.930119, 20.297338>,  <44.479050, 34.291088, 20.529911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096916, 33.930119, 20.297338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.789230, 33.801643, 20.076380>,  <44.604618, 33.724560, 19.943804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.789230, 33.801643, 20.076380>,  <45.096916, 33.930119, 20.297338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789230, 33.801643, 20.076380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452475, 0.336627, -0.825802,
		0.451189, -0.885167, -0.113611,
		-0.769217, -0.321186, -0.552398,
		44.558464, 33.705288, 19.910660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380539, 33.576218, 19.778938>,  <45.096916, 33.930119, 20.297338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380539, 33.576218, 19.778938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.026249, 33.643520, 19.605879>,  <44.813675, 33.683903, 19.502043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.026249, 33.643520, 19.605879>,  <45.380539, 33.576218, 19.778938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026249, 33.643520, 19.605879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464213, 0.323257, -0.824628,
		0.001110, -0.931234, -0.364422,
		-0.885723, 0.168253, -0.432649,
		44.760532, 33.693996, 19.476084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527126, 33.210850, 19.168524>,  <45.380539, 33.576218, 19.778938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527126, 33.210850, 19.168524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.204319, 33.436329, 19.098135>,  <45.010635, 33.571617, 19.055902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.204319, 33.436329, 19.098135>,  <45.527126, 33.210850, 19.168524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204319, 33.436329, 19.098135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242228, 0.044227, -0.969211,
		-0.538559, -0.824796, -0.172235,
		-0.807019, 0.563697, -0.175970,
		44.962212, 33.605438, 19.045343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107426, 32.901917, 18.521044>,  <45.527126, 33.210850, 19.168524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107426, 32.901917, 18.521044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.992256, 33.280064, 18.582209>,  <44.923153, 33.506950, 18.618908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.992256, 33.280064, 18.582209>,  <45.107426, 32.901917, 18.521044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992256, 33.280064, 18.582209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489406, 0.282503, -0.825029,
		-0.823153, -0.162711, -0.544008,
		-0.287926, 0.945366, 0.152911,
		44.905880, 33.563675, 18.628082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807480, 33.182133, 17.894348>,  <45.107426, 32.901917, 18.521044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807480, 33.182133, 17.894348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.907265, 33.509785, 18.100958>,  <44.967136, 33.706375, 18.224924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.907265, 33.509785, 18.100958>,  <44.807480, 33.182133, 17.894348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907265, 33.509785, 18.100958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353768, 0.419434, -0.836016,
		-0.901453, 0.391282, -0.185150,
		0.249460, 0.819130, 0.516523,
		44.982101, 33.755524, 18.255915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574203, 33.802902, 17.555473>,  <44.807480, 33.182133, 17.894348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574203, 33.802902, 17.555473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868584, 33.968021, 17.770126>,  <45.045212, 34.067093, 17.898918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868584, 33.968021, 17.770126>,  <44.574203, 33.802902, 17.555473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868584, 33.968021, 17.770126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381978, 0.401261, -0.832516,
		-0.558993, 0.817671, 0.137627,
		0.735948, 0.412800, 0.536634,
		45.089367, 34.091862, 17.931116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526287, 34.477337, 17.510696>,  <44.574203, 33.802902, 17.555473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526287, 34.477337, 17.510696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899643, 34.340370, 17.553650>,  <45.123657, 34.258190, 17.579422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899643, 34.340370, 17.553650>,  <44.526287, 34.477337, 17.510696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899643, 34.340370, 17.553650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258613, 0.434369, -0.862811,
		0.248797, 0.833111, 0.493990,
		0.933391, -0.342417, 0.107384,
		45.179661, 34.237644, 17.585865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546394, 34.735107, 16.818684>,  <44.526287, 34.477337, 17.510696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546394, 34.735107, 16.818684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301392, 34.932926, 16.572020>,  <44.154392, 35.051617, 16.424021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301392, 34.932926, 16.572020>,  <44.546394, 34.735107, 16.818684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301392, 34.932926, 16.572020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460021, 0.411396, 0.786851,
		0.642822, 0.765624, -0.024481,
		-0.612503, 0.494543, -0.616658,
		44.117641, 35.081287, 16.387022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556416, 35.502865, 16.920643>,  <44.546394, 34.735107, 16.818684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556416, 35.502865, 16.920643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.192520, 35.395176, 16.794212>,  <43.974182, 35.330563, 16.718353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.192520, 35.395176, 16.794212>,  <44.556416, 35.502865, 16.920643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192520, 35.395176, 16.794212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373327, 0.197281, 0.906481,
		-0.181685, 0.942657, -0.279979,
		-0.909735, -0.269218, -0.316076,
		43.919601, 35.314411, 16.699389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045128, 36.009762, 17.125000>,  <44.556416, 35.502865, 16.920643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045128, 36.009762, 17.125000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.808155, 35.692051, 17.071119>,  <43.665970, 35.501423, 17.038790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.808155, 35.692051, 17.071119>,  <44.045128, 36.009762, 17.125000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808155, 35.692051, 17.071119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453656, 0.190737, 0.870526,
		-0.665746, 0.576838, -0.473328,
		-0.592434, -0.794277, -0.134703,
		43.630424, 35.453766, 17.030708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396038, 36.289349, 17.231815>,  <44.045128, 36.009762, 17.125000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396038, 36.289349, 17.231815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.317135, 35.898777, 17.266861>,  <43.269794, 35.664433, 17.287888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.317135, 35.898777, 17.266861>,  <43.396038, 36.289349, 17.231815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317135, 35.898777, 17.266861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730994, 0.206045, 0.650533,
		-0.653252, 0.064277, -0.754408,
		-0.197256, -0.976429, 0.087613,
		43.257957, 35.605846, 17.293144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695587, 36.178753, 17.287022>,  <43.396038, 36.289349, 17.231815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695587, 36.178753, 17.287022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820793, 35.832794, 17.443977>,  <42.895916, 35.625217, 17.538151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820793, 35.832794, 17.443977>,  <42.695587, 36.178753, 17.287022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820793, 35.832794, 17.443977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704577, 0.065571, 0.706591,
		-0.636859, -0.497645, -0.588863,
		0.313020, -0.864899, 0.392389,
		42.914700, 35.573326, 17.561695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148560, 35.686249, 17.293131>,  <42.695587, 36.178753, 17.287022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148560, 35.686249, 17.293131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.404819, 35.553040, 17.569872>,  <42.558575, 35.473114, 17.735916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.404819, 35.553040, 17.569872>,  <42.148560, 35.686249, 17.293131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404819, 35.553040, 17.569872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738530, -0.020722, 0.673902,
		-0.210088, -0.942691, -0.259222,
		0.640653, -0.333022, 0.691852,
		42.597015, 35.453133, 17.777428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754066, 35.314640, 17.648024>,  <42.148560, 35.686249, 17.293131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754066, 35.314640, 17.648024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070148, 35.269192, 17.888908>,  <42.259800, 35.241924, 18.033440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070148, 35.269192, 17.888908>,  <41.754066, 35.314640, 17.648024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070148, 35.269192, 17.888908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612553, -0.176411, 0.770492,
		0.018694, -0.977737, -0.208999,
		0.790209, -0.113620, 0.602213,
		42.307213, 35.235104, 18.069572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640411, 34.748013, 17.879995>,  <41.754066, 35.314640, 17.648024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640411, 34.748013, 17.879995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888760, 34.920692, 18.141727>,  <42.037769, 35.024300, 18.298767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888760, 34.920692, 18.141727>,  <41.640411, 34.748013, 17.879995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888760, 34.920692, 18.141727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547379, -0.358759, 0.756088,
		0.561153, -0.827601, 0.013562,
		0.620873, 0.431704, 0.654330,
		42.075020, 35.050205, 18.338026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892536, 34.239338, 18.337273>,  <41.640411, 34.748013, 17.879995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892536, 34.239338, 18.337273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.963905, 34.569683, 18.551233>,  <42.006729, 34.767891, 18.679609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.963905, 34.569683, 18.551233>,  <41.892536, 34.239338, 18.337273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963905, 34.569683, 18.551233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492429, -0.395701, 0.775200,
		0.851868, -0.401716, 0.336075,
		0.178425, 0.825861, 0.534901,
		42.017433, 34.817440, 18.711704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230152, 34.004951, 18.997656>,  <41.892536, 34.239338, 18.337273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230152, 34.004951, 18.997656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.064358, 34.364342, 19.055536>,  <41.964882, 34.579979, 19.090263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.064358, 34.364342, 19.055536>,  <42.230152, 34.004951, 18.997656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064358, 34.364342, 19.055536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315885, -0.291153, 0.903021,
		0.853477, 0.328577, 0.404494,
		-0.414482, 0.898481, 0.144700,
		41.940014, 34.633884, 19.098946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623512, 34.340008, 19.578022>,  <42.230152, 34.004951, 18.997656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623512, 34.340008, 19.578022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.250629, 34.483646, 19.559965>,  <42.026901, 34.569828, 19.549131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.250629, 34.483646, 19.559965>,  <42.623512, 34.340008, 19.578022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250629, 34.483646, 19.559965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232718, -0.499212, 0.834643,
		0.277182, 0.788566, 0.548938,
		-0.932208, 0.359096, -0.045141,
		41.970966, 34.591373, 19.546423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423882, 34.337090, 20.275169>,  <42.623512, 34.340008, 19.578022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423882, 34.337090, 20.275169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071236, 34.413204, 20.102406>,  <41.859650, 34.458874, 19.998747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071236, 34.413204, 20.102406>,  <42.423882, 34.337090, 20.275169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071236, 34.413204, 20.102406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471444, -0.398182, 0.786887,
		-0.022248, 0.897354, 0.440751,
		-0.881615, 0.190283, -0.431911,
		41.806751, 34.470287, 19.972832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992905, 34.570229, 20.764835>,  <42.423882, 34.337090, 20.275169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992905, 34.570229, 20.764835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.694717, 34.493656, 20.509449>,  <41.515804, 34.447712, 20.356218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.694717, 34.493656, 20.509449>,  <41.992905, 34.570229, 20.764835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694717, 34.493656, 20.509449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614226, -0.174709, 0.769547,
		-0.258860, 0.965832, 0.012658,
		-0.745464, -0.191430, -0.638465,
		41.471077, 34.436226, 20.317909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495796, 34.951939, 21.109095>,  <41.992905, 34.570229, 20.764835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495796, 34.951939, 21.109095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361233, 34.668533, 20.860954>,  <41.280495, 34.498489, 20.712070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361233, 34.668533, 20.860954>,  <41.495796, 34.951939, 21.109095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361233, 34.668533, 20.860954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553061, -0.384530, 0.739094,
		-0.762203, 0.591731, -0.262491,
		-0.336409, -0.708513, -0.620353,
		41.260311, 34.455978, 20.674849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801907, 34.894924, 21.309317>,  <41.495796, 34.951939, 21.109095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801907, 34.894924, 21.309317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899063, 34.549263, 21.133020>,  <40.957355, 34.341866, 21.027243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899063, 34.549263, 21.133020>,  <40.801907, 34.894924, 21.309317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899063, 34.549263, 21.133020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333326, -0.501029, 0.798664,
		-0.910988, -0.047075, -0.409737,
		0.242887, -0.864149, -0.440740,
		40.971928, 34.290020, 21.000799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172527, 34.436554, 21.299692>,  <40.801907, 34.894924, 21.309317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172527, 34.436554, 21.299692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489185, 34.196739, 21.252609>,  <40.679180, 34.052849, 21.224360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489185, 34.196739, 21.252609>,  <40.172527, 34.436554, 21.299692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489185, 34.196739, 21.252609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360261, -0.613641, 0.702607,
		-0.493469, -0.513809, -0.701775,
		0.791644, -0.599537, -0.117708,
		40.726677, 34.016876, 21.217297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952328, 33.746189, 21.249563>,  <40.172527, 34.436554, 21.299692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952328, 33.746189, 21.249563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316589, 33.678722, 21.400433>,  <40.535145, 33.638241, 21.490953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316589, 33.678722, 21.400433>,  <39.952328, 33.746189, 21.249563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316589, 33.678722, 21.400433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382757, -0.688139, 0.616410,
		0.155579, -0.705702, -0.691216,
		0.910655, -0.168667, 0.377172,
		40.589787, 33.628120, 21.513584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951206, 33.062420, 21.416864>,  <39.952328, 33.746189, 21.249563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951206, 33.062420, 21.416864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246872, 33.231709, 21.626444>,  <40.424271, 33.333282, 21.752192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246872, 33.231709, 21.626444>,  <39.951206, 33.062420, 21.416864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246872, 33.231709, 21.626444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267939, -0.528943, 0.805250,
		0.617935, -0.735599, -0.277580,
		0.739165, 0.423218, 0.523948,
		40.468620, 33.358673, 21.783628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370647, 32.568272, 21.590498>,  <39.951206, 33.062420, 21.416864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370647, 32.568272, 21.590498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.404099, 32.877041, 21.842573>,  <40.424168, 33.062302, 21.993818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.404099, 32.877041, 21.842573>,  <40.370647, 32.568272, 21.590498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404099, 32.877041, 21.842573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486368, -0.520345, 0.701917,
		0.869743, -0.365201, 0.331927,
		0.083624, 0.771926, 0.630189,
		40.429184, 33.108620, 22.031630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415386, 32.240910, 22.142170>,  <40.370647, 32.568272, 21.590498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415386, 32.240910, 22.142170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364456, 32.609249, 22.289591>,  <40.333897, 32.830254, 22.378044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364456, 32.609249, 22.289591>,  <40.415386, 32.240910, 22.142170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364456, 32.609249, 22.289591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450125, -0.384755, 0.805823,
		0.883841, -0.063292, 0.463486,
		-0.127327, 0.920846, 0.368552,
		40.326260, 32.885502, 22.400156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487099, 32.182819, 22.853252>,  <40.415386, 32.240910, 22.142170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487099, 32.182819, 22.853252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341873, 32.555325, 22.865492>,  <40.254738, 32.778828, 22.872835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341873, 32.555325, 22.865492>,  <40.487099, 32.182819, 22.853252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341873, 32.555325, 22.865492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385835, -0.180153, 0.904807,
		0.848126, 0.316695, 0.424720,
		-0.363063, 0.931262, 0.030600,
		40.232956, 32.834702, 22.874672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.802963, 32.163017, 28.503004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.665981, 32.531025, 28.426807>,  <41.583794, 32.751831, 28.381088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.665981, 32.531025, 28.426807>,  <41.802963, 32.163017, 28.503004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665981, 32.531025, 28.426807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046686, 0.219165, 0.974570,
		0.938374, 0.324853, -0.118006,
		-0.342455, 0.920020, -0.190493,
		41.563244, 32.807030, 28.369659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360355, 32.592182, 28.907192>,  <41.802963, 32.163017, 28.503004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360355, 32.592182, 28.907192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037567, 32.822002, 28.852497>,  <41.843895, 32.959892, 28.819681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037567, 32.822002, 28.852497>,  <42.360355, 32.592182, 28.907192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037567, 32.822002, 28.852497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043760, 0.172721, 0.983998,
		0.588971, 0.800039, -0.114238,
		-0.806969, 0.574547, -0.136737,
		41.795475, 32.994366, 28.811476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565273, 33.242931, 29.148943>,  <42.360355, 32.592182, 28.907192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565273, 33.242931, 29.148943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169315, 33.187016, 29.158480>,  <41.931740, 33.153465, 29.164202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169315, 33.187016, 29.158480>,  <42.565273, 33.242931, 29.148943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169315, 33.187016, 29.158480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004352, 0.197987, 0.980195,
		-0.141742, 0.970185, -0.196595,
		-0.989894, -0.139791, 0.023841,
		41.872349, 33.145077, 29.165632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336418, 33.727665, 29.656410>,  <42.565273, 33.242931, 29.148943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336418, 33.727665, 29.656410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031898, 33.470818, 29.620417>,  <41.849186, 33.316708, 29.598820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031898, 33.470818, 29.620417>,  <42.336418, 33.727665, 29.656410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031898, 33.470818, 29.620417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087042, -0.036316, 0.995543,
		-0.642528, 0.765742, -0.028244,
		-0.761303, -0.642122, -0.089986,
		41.803509, 33.278179, 29.593420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782368, 33.949287, 30.068094>,  <42.336418, 33.727665, 29.656410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782368, 33.949287, 30.068094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721725, 33.556580, 30.022221>,  <41.685341, 33.320957, 29.994696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721725, 33.556580, 30.022221>,  <41.782368, 33.949287, 30.068094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721725, 33.556580, 30.022221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392535, -0.046685, 0.918551,
		-0.907156, 0.184276, -0.378300,
		-0.151606, -0.981765, -0.114686,
		41.676243, 33.262051, 29.987816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164551, 33.879215, 30.301334>,  <41.782368, 33.949287, 30.068094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164551, 33.879215, 30.301334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322365, 33.512028, 30.317730>,  <41.417053, 33.291714, 30.327568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322365, 33.512028, 30.317730>,  <41.164551, 33.879215, 30.301334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322365, 33.512028, 30.317730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368851, -0.117356, 0.922050,
		-0.841603, -0.378896, -0.384894,
		0.394530, -0.917968, 0.040989,
		41.440723, 33.236637, 30.330027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593311, 33.536282, 30.513258>,  <41.164551, 33.879215, 30.301334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593311, 33.536282, 30.513258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928497, 33.330357, 30.585669>,  <41.129608, 33.206802, 30.629116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928497, 33.330357, 30.585669>,  <40.593311, 33.536282, 30.513258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928497, 33.330357, 30.585669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344715, -0.242187, 0.906927,
		-0.423061, -0.822379, -0.380411,
		0.837968, -0.514818, 0.181027,
		41.179890, 33.175911, 30.639977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382858, 32.904808, 30.839617>,  <40.593311, 33.536282, 30.513258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382858, 32.904808, 30.839617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766876, 32.928505, 30.949020>,  <40.997288, 32.942722, 31.014664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766876, 32.928505, 30.949020>,  <40.382858, 32.904808, 30.839617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766876, 32.928505, 30.949020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235294, -0.358227, 0.903499,
		0.151508, -0.931753, -0.329973,
		0.960043, 0.059247, 0.273511,
		41.054890, 32.946278, 31.031073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456486, 32.385952, 31.320244>,  <40.382858, 32.904808, 30.839617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456486, 32.385952, 31.320244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.763485, 32.635006, 31.381260>,  <40.947685, 32.784439, 31.417870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.763485, 32.635006, 31.381260>,  <40.456486, 32.385952, 31.320244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763485, 32.635006, 31.381260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071994, -0.152732, 0.985642,
		0.636996, -0.767460, -0.072396,
		0.767498, 0.622638, 0.152542,
		40.993732, 32.821796, 31.427023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957172, 31.993353, 31.644615>,  <40.456486, 32.385952, 31.320244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957172, 31.993353, 31.644615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012951, 32.380997, 31.725983>,  <41.046417, 32.613583, 31.774803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012951, 32.380997, 31.725983>,  <40.957172, 31.993353, 31.644615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012951, 32.380997, 31.725983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001743, -0.205186, 0.978721,
		0.990229, -0.136829, -0.026922,
		0.139442, 0.969111, 0.203420,
		41.054783, 32.671730, 31.787008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340126, 32.020733, 32.203590>,  <40.957172, 31.993353, 31.644615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340126, 32.020733, 32.203590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150146, 32.372486, 32.190300>,  <41.036160, 32.583538, 32.182323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150146, 32.372486, 32.190300>,  <41.340126, 32.020733, 32.203590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150146, 32.372486, 32.190300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281633, -0.116120, 0.952470,
		0.833729, 0.461735, 0.302815,
		-0.474952, 0.879384, -0.033228,
		41.007660, 32.636303, 32.180332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350258, 32.265640, 32.899452>,  <41.340126, 32.020733, 32.203590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350258, 32.265640, 32.899452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078732, 32.507858, 32.733307>,  <40.915813, 32.653187, 32.633621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078732, 32.507858, 32.733307>,  <41.350258, 32.265640, 32.899452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078732, 32.507858, 32.733307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490354, 0.047237, 0.870242,
		0.546588, 0.794411, 0.264864,
		-0.678818, 0.605541, -0.415362,
		40.875088, 32.689522, 32.608700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289223, 33.037884, 33.248894>,  <41.350258, 32.265640, 32.899452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289223, 33.037884, 33.248894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960213, 32.877041, 33.088017>,  <40.762806, 32.780533, 32.991489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960213, 32.877041, 33.088017>,  <41.289223, 33.037884, 33.248894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960213, 32.877041, 33.088017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492028, 0.148443, 0.857830,
		-0.285239, 0.903478, -0.319947,
		-0.822525, -0.402109, -0.402195,
		40.713455, 32.756409, 32.967358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653351, 33.419323, 33.485046>,  <41.289223, 33.037884, 33.248894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653351, 33.419323, 33.485046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568657, 33.037846, 33.399590>,  <40.517841, 32.808960, 33.348316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568657, 33.037846, 33.399590>,  <40.653351, 33.419323, 33.485046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568657, 33.037846, 33.399590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357594, -0.127843, 0.925085,
		-0.909558, 0.272267, -0.313966,
		-0.211732, -0.953691, -0.213642,
		40.505138, 32.751740, 33.335499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327892, 33.723289, 33.473705>,  <40.653351, 33.419323, 33.485046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327892, 33.723289, 33.473705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433338, 34.031754, 33.705502>,  <41.496605, 34.216831, 33.844582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433338, 34.031754, 33.705502>,  <41.327892, 33.723289, 33.473705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433338, 34.031754, 33.705502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289175, 0.636293, -0.715199,
		-0.920263, 0.020964, 0.390739,
		0.263618, 0.771163, 0.579494,
		41.512424, 34.263103, 33.879349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028011, 34.240566, 33.083057>,  <41.327892, 33.723289, 33.473705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028011, 34.240566, 33.083057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.241035, 34.428818, 33.364449>,  <41.368851, 34.541771, 33.533283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.241035, 34.428818, 33.364449>,  <41.028011, 34.240566, 33.083057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241035, 34.428818, 33.364449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082913, 0.798146, -0.596732,
		-0.842320, 0.376125, 0.386041,
		0.532563, 0.470631, 0.703480,
		41.400803, 34.570007, 33.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665794, 34.811665, 33.287132>,  <41.028011, 34.240566, 33.083057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665794, 34.811665, 33.287132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057945, 34.874290, 33.335060>,  <41.293236, 34.911865, 33.363815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057945, 34.874290, 33.335060>,  <40.665794, 34.811665, 33.287132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057945, 34.874290, 33.335060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033468, 0.731092, -0.681458,
		-0.194287, 0.664073, 0.721983,
		0.980374, 0.156562, 0.119816,
		41.352058, 34.921261, 33.371006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771648, 35.479553, 33.065735>,  <40.665794, 34.811665, 33.287132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771648, 35.479553, 33.065735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157528, 35.376671, 33.088345>,  <41.389057, 35.314941, 33.101910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157528, 35.376671, 33.088345>,  <40.771648, 35.479553, 33.065735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157528, 35.376671, 33.088345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207938, 0.612275, -0.762811,
		0.161597, 0.747638, 0.644146,
		0.964701, -0.257210, 0.056520,
		41.446938, 35.299507, 33.105301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205296, 36.142250, 33.001362>,  <40.771648, 35.479553, 33.065735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205296, 36.142250, 33.001362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384331, 35.805363, 32.881134>,  <41.491753, 35.603230, 32.808998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384331, 35.805363, 32.881134>,  <41.205296, 36.142250, 33.001362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384331, 35.805363, 32.881134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408618, 0.491597, -0.769002,
		0.795425, 0.221374, 0.564175,
		0.447584, -0.842215, -0.300571,
		41.518604, 35.552700, 32.790962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966354, 36.303513, 32.825802>,  <41.205296, 36.142250, 33.001362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966354, 36.303513, 32.825802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.872826, 35.973541, 32.619957>,  <41.816708, 35.775558, 32.496452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.872826, 35.973541, 32.619957>,  <41.966354, 36.303513, 32.825802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872826, 35.973541, 32.619957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422849, 0.390326, -0.817829,
		0.875515, -0.408826, 0.257554,
		-0.233820, -0.824928, -0.514608,
		41.802681, 35.726063, 32.465576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580460, 36.221478, 32.372055>,  <41.966354, 36.303513, 32.825802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580460, 36.221478, 32.372055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322083, 35.962414, 32.210419>,  <42.167057, 35.806976, 32.113438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322083, 35.962414, 32.210419>,  <42.580460, 36.221478, 32.372055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322083, 35.962414, 32.210419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435190, 0.122480, -0.891969,
		0.627188, -0.752018, 0.202741,
		-0.645945, -0.647663, -0.404089,
		42.128300, 35.768116, 32.089191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967045, 35.591583, 31.995817>,  <42.580460, 36.221478, 32.372055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967045, 35.591583, 31.995817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603001, 35.641792, 31.837856>,  <42.384575, 35.671917, 31.743080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603001, 35.641792, 31.837856>,  <42.967045, 35.591583, 31.995817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603001, 35.641792, 31.837856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409594, 0.128203, -0.903215,
		-0.062747, -0.983773, -0.168092,
		-0.910107, 0.125523, -0.394903,
		42.329967, 35.679447, 31.719385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980549, 35.248833, 31.317423>,  <42.967045, 35.591583, 31.995817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980549, 35.248833, 31.317423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648449, 35.464874, 31.262314>,  <42.449188, 35.594498, 31.229248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648449, 35.464874, 31.262314>,  <42.980549, 35.248833, 31.317423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648449, 35.464874, 31.262314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160534, -0.004999, -0.987018,
		-0.533778, -0.841585, -0.082555,
		-0.830247, 0.540102, -0.137771,
		42.399376, 35.626904, 31.220982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597965, 34.905346, 30.910313>,  <42.980549, 35.248833, 31.317423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597965, 34.905346, 30.910313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498413, 35.291065, 30.874142>,  <42.438683, 35.522499, 30.852438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498413, 35.291065, 30.874142>,  <42.597965, 34.905346, 30.910313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498413, 35.291065, 30.874142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132965, -0.058465, -0.989395,
		-0.959363, -0.258268, -0.113668,
		-0.248884, 0.964303, -0.090429,
		42.423748, 35.580357, 30.847013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125248, 34.939114, 30.405247>,  <42.597965, 34.905346, 30.910313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125248, 34.939114, 30.405247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275070, 35.308037, 30.443295>,  <42.364964, 35.529392, 30.466124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275070, 35.308037, 30.443295>,  <42.125248, 34.939114, 30.405247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275070, 35.308037, 30.443295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153447, 0.039512, -0.987367,
		-0.914419, 0.384421, -0.126726,
		0.374557, 0.922312, 0.095119,
		42.387436, 35.584732, 30.471830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083530, 35.230003, 29.720745>,  <42.125248, 34.939114, 30.405247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083530, 35.230003, 29.720745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282341, 35.537880, 29.881018>,  <42.401627, 35.722607, 29.977180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282341, 35.537880, 29.881018>,  <42.083530, 35.230003, 29.720745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282341, 35.537880, 29.881018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340801, 0.251501, -0.905871,
		-0.798012, 0.586790, -0.137310,
		0.497022, 0.769691, 0.400680,
		42.431446, 35.768787, 30.001221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889507, 35.797779, 29.365969>,  <42.083530, 35.230003, 29.720745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889507, 35.797779, 29.365969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.251057, 35.870247, 29.520988>,  <42.467987, 35.913727, 29.614000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.251057, 35.870247, 29.520988>,  <41.889507, 35.797779, 29.365969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251057, 35.870247, 29.520988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275790, 0.445771, -0.851603,
		-0.327046, 0.876621, 0.352953,
		0.903870, 0.181172, 0.387551,
		42.522217, 35.924599, 29.637253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105438, 36.452141, 29.034969>,  <41.889507, 35.797779, 29.365969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105438, 36.452141, 29.034969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439255, 36.286861, 29.180744>,  <42.639545, 36.187695, 29.268209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439255, 36.286861, 29.180744>,  <42.105438, 36.452141, 29.034969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439255, 36.286861, 29.180744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489568, 0.252728, -0.834537,
		0.252728, 0.874868, 0.413201,
		0.834537, -0.413201, 0.364436,
		42.689617, 36.162903, 29.290075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831642, 37.016865, 29.555780>,  <42.105438, 36.452141, 29.034969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831642, 37.016865, 29.555780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618435, 37.205189, 29.274574>,  <41.490509, 37.318184, 29.105850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618435, 37.205189, 29.274574>,  <41.831642, 37.016865, 29.555780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618435, 37.205189, 29.274574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763808, 0.089691, 0.639181,
		0.363985, 0.877666, 0.311799,
		-0.533021, 0.470806, -0.703015,
		41.458527, 37.346432, 29.063669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567375, 37.544708, 29.857994>,  <41.831642, 37.016865, 29.555780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567375, 37.544708, 29.857994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328350, 37.463531, 29.547709>,  <41.184937, 37.414825, 29.361538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328350, 37.463531, 29.547709>,  <41.567375, 37.544708, 29.857994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328350, 37.463531, 29.547709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791053, -0.008806, 0.611684,
		-0.130969, 0.979151, -0.155277,
		-0.597563, -0.202944, -0.775714,
		41.149082, 37.402649, 29.314995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010872, 37.803238, 30.030497>,  <41.567375, 37.544708, 29.857994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010872, 37.803238, 30.030497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861965, 37.580330, 29.733614>,  <40.772621, 37.446587, 29.555485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861965, 37.580330, 29.733614>,  <41.010872, 37.803238, 30.030497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861965, 37.580330, 29.733614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882155, -0.036104, 0.469574,
		-0.288475, 0.829548, -0.478155,
		-0.372271, -0.557267, -0.742205,
		40.750282, 37.413151, 29.510952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382446, 38.069931, 29.918514>,  <41.010872, 37.803238, 30.030497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382446, 38.069931, 29.918514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361210, 37.693195, 29.785778>,  <40.348469, 37.467155, 29.706137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361210, 37.693195, 29.785778>,  <40.382446, 38.069931, 29.918514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361210, 37.693195, 29.785778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882297, -0.111393, 0.457323,
		-0.467690, 0.317063, -0.825068,
		-0.053094, -0.941840, -0.331841,
		40.345284, 37.410645, 29.686226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708229, 37.936100, 29.760296>,  <40.382446, 38.069931, 29.918514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708229, 37.936100, 29.760296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835342, 37.558735, 29.798210>,  <39.911610, 37.332317, 29.820959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835342, 37.558735, 29.798210>,  <39.708229, 37.936100, 29.760296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835342, 37.558735, 29.798210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753467, -0.190581, 0.629259,
		-0.575587, -0.271387, -0.771394,
		0.317786, -0.943413, 0.094785,
		39.930679, 37.275711, 29.826645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202976, 37.442703, 29.501856>,  <39.708229, 37.936100, 29.760296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202976, 37.442703, 29.501856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418484, 37.240105, 29.771132>,  <39.547791, 37.118546, 29.932697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418484, 37.240105, 29.771132>,  <39.202976, 37.442703, 29.501856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418484, 37.240105, 29.771132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837911, -0.405021, 0.365872,
		0.087343, -0.761195, -0.642614,
		0.538773, -0.506497, 0.673190,
		39.580116, 37.088154, 29.973089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760788, 36.884899, 29.587425>,  <39.202976, 37.442703, 29.501856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760788, 36.884899, 29.587425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035561, 36.845261, 29.875399>,  <39.200424, 36.821476, 30.048183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035561, 36.845261, 29.875399>,  <38.760788, 36.884899, 29.587425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035561, 36.845261, 29.875399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638558, -0.555254, 0.532857,
		0.346940, -0.825756, -0.444702,
		0.686932, -0.099098, 0.719933,
		39.241642, 36.815533, 30.091379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633259, 36.236332, 29.920246>,  <38.760788, 36.884899, 29.587425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633259, 36.236332, 29.920246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877136, 36.401062, 30.191149>,  <39.023464, 36.499901, 30.353691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877136, 36.401062, 30.191149>,  <38.633259, 36.236332, 29.920246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877136, 36.401062, 30.191149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441965, -0.532652, 0.721767,
		0.657983, -0.739381, -0.142743,
		0.609693, 0.411823, 0.677257,
		39.060043, 36.524609, 30.394325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936398, 35.706116, 30.265896>,  <38.633259, 36.236332, 29.920246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936398, 35.706116, 30.265896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925266, 36.035477, 30.492607>,  <38.918587, 36.233093, 30.628633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925266, 36.035477, 30.492607>,  <38.936398, 35.706116, 30.265896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925266, 36.035477, 30.492607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630878, -0.454280, 0.628986,
		0.775383, -0.340063, 0.532108,
		-0.027831, 0.823400, 0.566779,
		38.916916, 36.282497, 30.662642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947735, 35.404419, 30.921942>,  <38.936398, 35.706116, 30.265896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947735, 35.404419, 30.921942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.816566, 35.779671, 30.966454>,  <38.737865, 36.004822, 30.993160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.816566, 35.779671, 30.966454>,  <38.947735, 35.404419, 30.921942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816566, 35.779671, 30.966454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677015, -0.315518, 0.664906,
		0.658878, 0.142698, 0.738592,
		-0.327920, 0.938129, 0.111279,
		38.718189, 36.061108, 30.999838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881046, 35.531441, 31.611061>,  <38.947735, 35.404419, 30.921942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881046, 35.531441, 31.611061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628990, 35.793636, 31.444565>,  <38.477757, 35.950954, 31.344667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628990, 35.793636, 31.444565>,  <38.881046, 35.531441, 31.611061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628990, 35.793636, 31.444565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753253, -0.385893, 0.532632,
		0.188511, 0.649167, 0.736917,
		-0.630137, 0.655492, -0.416242,
		38.439949, 35.990284, 31.319693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386822, 35.551029, 32.119095>,  <38.881046, 35.531441, 31.611061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386822, 35.551029, 32.119095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185837, 35.725224, 31.820328>,  <38.065247, 35.829739, 31.641068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185837, 35.725224, 31.820328>,  <38.386822, 35.551029, 32.119095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185837, 35.725224, 31.820328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864568, -0.260430, 0.429765,
		-0.007363, 0.861701, 0.507363,
		-0.502461, 0.435486, -0.746917,
		38.035099, 35.855869, 31.596252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.786724, 38.556923, 26.053802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417492, 38.524166, 25.903482>,  <43.195953, 38.504513, 25.813292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417492, 38.524166, 25.903482>,  <43.786724, 38.556923, 26.053802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417492, 38.524166, 25.903482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361235, -0.150901, 0.920184,
		-0.132061, 0.985151, 0.109713,
		-0.923076, -0.081888, -0.375799,
		43.140568, 38.499599, 25.790743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437435, 38.887848, 26.580677>,  <43.786724, 38.556923, 26.053802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437435, 38.887848, 26.580677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140266, 38.710361, 26.380205>,  <42.961964, 38.603870, 26.259922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140266, 38.710361, 26.380205>,  <43.437435, 38.887848, 26.580677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140266, 38.710361, 26.380205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514052, -0.101367, 0.851748,
		-0.428740, 0.890414, -0.152788,
		-0.742921, -0.443720, -0.501180,
		42.917389, 38.577244, 26.229851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804970, 39.353920, 26.636551>,  <43.437435, 38.887848, 26.580677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804970, 39.353920, 26.636551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700043, 38.975567, 26.560137>,  <42.637085, 38.748554, 26.514288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700043, 38.975567, 26.560137>,  <42.804970, 39.353920, 26.636551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700043, 38.975567, 26.560137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461980, -0.050707, 0.885440,
		-0.847209, 0.320523, -0.423678,
		-0.262320, -0.945883, -0.191034,
		42.621346, 38.691803, 26.502827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103199, 39.299458, 26.931162>,  <42.804970, 39.353920, 26.636551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103199, 39.299458, 26.931162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260372, 38.932961, 26.899929>,  <42.354675, 38.713062, 26.881189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260372, 38.932961, 26.899929>,  <42.103199, 39.299458, 26.931162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260372, 38.932961, 26.899929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593415, -0.317520, 0.739621,
		-0.702466, -0.244290, -0.668479,
		0.392937, -0.916244, -0.078082,
		42.378254, 38.658089, 26.876505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559425, 38.811256, 26.963306>,  <42.103199, 39.299458, 26.931162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559425, 38.811256, 26.963306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856377, 38.556652, 27.046947>,  <42.034546, 38.403889, 27.097132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856377, 38.556652, 27.046947>,  <41.559425, 38.811256, 26.963306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856377, 38.556652, 27.046947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568520, -0.433353, 0.699279,
		-0.354483, -0.638011, -0.683582,
		0.742379, -0.636512, 0.209105,
		42.079090, 38.365696, 27.109678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323040, 37.965290, 27.037451>,  <41.559425, 38.811256, 26.963306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323040, 37.965290, 27.037451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667343, 38.018105, 27.234089>,  <41.873924, 38.049793, 27.352072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667343, 38.018105, 27.234089>,  <41.323040, 37.965290, 27.037451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667343, 38.018105, 27.234089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404117, -0.409961, 0.817693,
		0.309499, -0.902496, -0.299519,
		0.860755, 0.132034, 0.491596,
		41.925571, 38.057716, 27.381567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426785, 37.288292, 27.341896>,  <41.323040, 37.965290, 27.037451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426785, 37.288292, 27.341896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620476, 37.548111, 27.576366>,  <41.736691, 37.704002, 27.717049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620476, 37.548111, 27.576366>,  <41.426785, 37.288292, 27.341896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620476, 37.548111, 27.576366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428432, -0.408115, 0.806156,
		0.762868, -0.641503, 0.080666,
		0.484230, 0.649551, 0.586178,
		41.765743, 37.742977, 27.752220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852383, 36.858337, 27.741516>,  <41.426785, 37.288292, 27.341896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852383, 36.858337, 27.741516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813046, 37.203587, 27.939648>,  <41.789444, 37.410736, 28.058527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813046, 37.203587, 27.939648>,  <41.852383, 36.858337, 27.741516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813046, 37.203587, 27.939648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281191, -0.501559, 0.818150,
		0.954599, -0.058820, 0.292028,
		-0.098346, 0.863121, 0.495328,
		41.783543, 37.462524, 28.088245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195374, 36.791809, 28.355307>,  <41.852383, 36.858337, 27.741516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195374, 36.791809, 28.355307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941387, 37.096851, 28.404697>,  <41.788994, 37.279877, 28.434332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941387, 37.096851, 28.404697>,  <42.195374, 36.791809, 28.355307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941387, 37.096851, 28.404697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294546, -0.386743, 0.873883,
		0.714183, 0.518519, 0.470192,
		-0.634969, 0.762606, 0.123478,
		41.750896, 37.325634, 28.441740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712666, 36.897198, 28.880779>,  <42.195374, 36.791809, 28.355307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712666, 36.897198, 28.880779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856277, 36.526112, 28.921677>,  <42.942444, 36.303459, 28.946215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856277, 36.526112, 28.921677>,  <42.712666, 36.897198, 28.880779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856277, 36.526112, 28.921677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589496, 0.140467, -0.795464,
		0.723599, 0.345864, 0.597313,
		0.359025, -0.927711, 0.102244,
		42.963985, 36.247799, 28.952351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344273, 37.027115, 28.733191>,  <42.712666, 36.897198, 28.880779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344273, 37.027115, 28.733191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330601, 36.627678, 28.716993>,  <43.322399, 36.388016, 28.707275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330601, 36.627678, 28.716993>,  <43.344273, 37.027115, 28.733191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330601, 36.627678, 28.716993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638227, 0.009368, -0.769791,
		0.769089, -0.052155, 0.637010,
		-0.034181, -0.998595, -0.040492,
		43.320347, 36.328098, 28.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050957, 36.756676, 28.478830>,  <43.344273, 37.027115, 28.733191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050957, 36.756676, 28.478830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809769, 36.443268, 28.418810>,  <43.665054, 36.255222, 28.382797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809769, 36.443268, 28.418810>,  <44.050957, 36.756676, 28.478830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809769, 36.443268, 28.418810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643676, -0.366713, -0.671716,
		0.471281, -0.501610, 0.725453,
		-0.602973, -0.783524, -0.150049,
		43.628876, 36.208210, 28.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495647, 36.044048, 28.465248>,  <44.050957, 36.756676, 28.478830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495647, 36.044048, 28.465248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152981, 36.022083, 28.260073>,  <43.947380, 36.008904, 28.136967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152981, 36.022083, 28.260073>,  <44.495647, 36.044048, 28.465248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152981, 36.022083, 28.260073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501183, -0.324175, -0.802325,
		-0.122221, -0.944402, 0.305233,
		-0.856667, -0.054917, -0.512939,
		43.895981, 36.005608, 28.106192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626465, 35.481823, 28.013414>,  <44.495647, 36.044048, 28.465248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626465, 35.481823, 28.013414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312523, 35.679665, 27.864082>,  <44.124157, 35.798370, 27.774483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312523, 35.679665, 27.864082>,  <44.626465, 35.481823, 28.013414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312523, 35.679665, 27.864082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335345, -0.167615, -0.927065,
		-0.521102, -0.852805, -0.034309,
		-0.784855, 0.494600, -0.373328,
		44.077068, 35.828045, 27.752085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446739, 35.125835, 27.426258>,  <44.626465, 35.481823, 28.013414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446739, 35.125835, 27.426258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264515, 35.479408, 27.384071>,  <44.155178, 35.691551, 27.358759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264515, 35.479408, 27.384071>,  <44.446739, 35.125835, 27.426258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264515, 35.479408, 27.384071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370106, 0.080317, -0.925511,
		-0.809618, -0.460665, -0.363739,
		-0.455565, 0.883933, -0.105468,
		44.127846, 35.744587, 27.352430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135296, 35.086594, 26.827232>,  <44.446739, 35.125835, 27.426258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135296, 35.086594, 26.827232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214783, 35.463440, 26.935247>,  <44.262474, 35.689548, 27.000055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214783, 35.463440, 26.935247>,  <44.135296, 35.086594, 26.827232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214783, 35.463440, 26.935247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474549, 0.148581, -0.867598,
		-0.857504, 0.300555, -0.417556,
		0.198721, 0.942120, 0.270037,
		44.274399, 35.746075, 27.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160778, 35.318253, 26.237440>,  <44.135296, 35.086594, 26.827232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160778, 35.318253, 26.237440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332371, 35.595512, 26.469137>,  <44.435326, 35.761868, 26.608154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332371, 35.595512, 26.469137>,  <44.160778, 35.318253, 26.237440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332371, 35.595512, 26.469137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669038, 0.187045, -0.719307,
		-0.606933, 0.696101, -0.383506,
		0.428977, 0.693151, 0.579241,
		44.461063, 35.803459, 26.642910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173328, 35.906666, 25.825737>,  <44.160778, 35.318253, 26.237440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173328, 35.906666, 25.825737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451698, 35.953194, 26.109190>,  <44.618721, 35.981110, 26.279263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451698, 35.953194, 26.109190>,  <44.173328, 35.906666, 25.825737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451698, 35.953194, 26.109190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673161, 0.237987, -0.700154,
		-0.250089, 0.964278, 0.087317,
		0.695924, 0.116323, 0.708632,
		44.660477, 35.988091, 26.321779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462574, 36.545750, 25.692867>,  <44.173328, 35.906666, 25.825737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462574, 36.545750, 25.692867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708096, 36.291740, 25.880478>,  <44.855408, 36.139336, 25.993044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708096, 36.291740, 25.880478>,  <44.462574, 36.545750, 25.692867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708096, 36.291740, 25.880478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649950, 0.069258, -0.756814,
		0.448111, 0.769382, 0.455245,
		0.613808, -0.635024, 0.469025,
		44.892239, 36.101234, 26.021185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030922, 36.773453, 25.544670>,  <44.462574, 36.545750, 25.692867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030922, 36.773453, 25.544670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147930, 36.411736, 25.669044>,  <45.218136, 36.194706, 25.743670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147930, 36.411736, 25.669044>,  <45.030922, 36.773453, 25.544670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147930, 36.411736, 25.669044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643279, -0.054500, -0.763690,
		0.707546, 0.423416, 0.565771,
		0.292524, -0.904295, 0.310935,
		45.235687, 36.140446, 25.762325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696880, 36.753712, 25.501341>,  <45.030922, 36.773453, 25.544670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696880, 36.753712, 25.501341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592556, 36.367573, 25.505085>,  <45.529961, 36.135891, 25.507332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592556, 36.367573, 25.505085>,  <45.696880, 36.753712, 25.501341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592556, 36.367573, 25.505085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438108, -0.126995, -0.889907,
		0.860255, -0.227997, 0.456046,
		-0.260811, -0.965344, 0.009361,
		45.514313, 36.077969, 25.507893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350010, 36.225529, 25.374893>,  <45.696880, 36.753712, 25.501341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350010, 36.225529, 25.374893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026310, 36.017845, 25.264956>,  <45.832088, 35.893234, 25.198992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026310, 36.017845, 25.264956>,  <46.350010, 36.225529, 25.374893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026310, 36.017845, 25.264956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450359, -0.247889, -0.857746,
		0.377215, -0.817910, 0.434433,
		-0.809250, -0.519205, -0.274846,
		45.783535, 35.862083, 25.182501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640339, 35.635612, 25.051487>,  <46.350010, 36.225529, 25.374893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640339, 35.635612, 25.051487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268742, 35.603470, 24.906979>,  <46.045784, 35.584183, 24.820274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268742, 35.603470, 24.906979>,  <46.640339, 35.635612, 25.051487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268742, 35.603470, 24.906979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367286, -0.320291, -0.873221,
		-0.045544, -0.943905, 0.327061,
		-0.928992, -0.080355, -0.361270,
		45.990044, 35.579365, 24.798597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.379169, 35.633423, 22.077848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765228, 35.711987, 22.147038>,  <38.996864, 35.759125, 22.188551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765228, 35.711987, 22.147038>,  <38.379169, 35.633423, 22.077848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765228, 35.711987, 22.147038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118240, -0.262398, 0.957688,
		0.233487, -0.944759, -0.230029,
		0.965144, 0.196409, 0.172975,
		39.054771, 35.770908, 22.198931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632591, 35.071823, 22.502222>,  <38.379169, 35.633423, 22.077848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632591, 35.071823, 22.502222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869610, 35.391056, 22.545940>,  <39.011822, 35.582596, 22.572170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869610, 35.391056, 22.545940>,  <38.632591, 35.071823, 22.502222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869610, 35.391056, 22.545940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122515, -0.044811, 0.991455,
		0.796163, -0.600876, 0.071225,
		0.592549, 0.798085, 0.109293,
		39.047375, 35.630482, 22.578728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045959, 34.820320, 22.957960>,  <38.632591, 35.071823, 22.502222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045959, 34.820320, 22.957960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058147, 35.219559, 22.979385>,  <39.065460, 35.459103, 22.992241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058147, 35.219559, 22.979385>,  <39.045959, 34.820320, 22.957960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058147, 35.219559, 22.979385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095017, -0.050451, 0.994196,
		0.995009, -0.035383, 0.093299,
		0.030470, 0.998100, 0.053561,
		39.067287, 35.518990, 22.995453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627934, 35.027744, 23.301729>,  <39.045959, 34.820320, 22.957960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627934, 35.027744, 23.301729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392830, 35.347633, 23.350695>,  <39.251766, 35.539566, 23.380074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392830, 35.347633, 23.350695>,  <39.627934, 35.027744, 23.301729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392830, 35.347633, 23.350695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024403, -0.168762, 0.985355,
		0.808668, 0.576164, 0.118707,
		-0.587759, 0.799721, 0.122412,
		39.216503, 35.587551, 23.387419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 35.492794, 23.860855>,  <39.627934, 35.027744, 23.301729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922943, 35.492794, 23.860855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541538, 35.612263, 23.844776>,  <39.312695, 35.683945, 23.835129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541538, 35.612263, 23.844776>,  <39.922943, 35.492794, 23.860855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541538, 35.612263, 23.844776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079181, -0.119598, 0.989660,
		0.290772, 0.946834, 0.137686,
		-0.953510, 0.298667, -0.040195,
		39.255486, 35.701862, 23.832718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848331, 35.975327, 24.392998>,  <39.922943, 35.492794, 23.860855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848331, 35.975327, 24.392998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480640, 35.836620, 24.318419>,  <39.260025, 35.753395, 24.273670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480640, 35.836620, 24.318419>,  <39.848331, 35.975327, 24.392998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480640, 35.836620, 24.318419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201393, 0.007217, 0.979484,
		-0.338309, 0.937923, -0.076471,
		-0.919232, -0.346769, -0.186450,
		39.204872, 35.732590, 24.262484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485798, 36.327286, 24.875977>,  <39.848331, 35.975327, 24.392998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485798, 36.327286, 24.875977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234615, 36.036915, 24.763771>,  <39.083904, 35.862690, 24.696447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234615, 36.036915, 24.763771>,  <39.485798, 36.327286, 24.875977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234615, 36.036915, 24.763771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341489, -0.066869, 0.937504,
		-0.699322, 0.684508, -0.205906,
		-0.627961, -0.725932, -0.280515,
		39.046227, 35.819134, 24.679617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971226, 36.483421, 25.350199>,  <39.485798, 36.327286, 24.875977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971226, 36.483421, 25.350199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878361, 36.128468, 25.190872>,  <38.822643, 35.915497, 25.095276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878361, 36.128468, 25.190872>,  <38.971226, 36.483421, 25.350199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878361, 36.128468, 25.190872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593083, -0.195432, 0.781063,
		-0.770944, 0.417566, -0.480919,
		-0.232158, -0.887381, -0.398319,
		38.808712, 35.862255, 25.071377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305603, 36.408928, 25.323227>,  <38.971226, 36.483421, 25.350199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305603, 36.408928, 25.323227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412102, 36.023449, 25.315285>,  <38.476002, 35.792160, 25.310520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412102, 36.023449, 25.315285>,  <38.305603, 36.408928, 25.323227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412102, 36.023449, 25.315285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695356, -0.206292, 0.688421,
		-0.667527, -0.169482, -0.725040,
		0.266245, -0.963701, -0.019855,
		38.491974, 35.734337, 25.309328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705009, 35.977749, 25.356009>,  <38.305603, 36.408928, 25.323227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705009, 35.977749, 25.356009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990200, 35.738121, 25.501760>,  <38.161316, 35.594345, 25.589212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990200, 35.738121, 25.501760>,  <37.705009, 35.977749, 25.356009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990200, 35.738121, 25.501760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591265, -0.234316, 0.771687,
		-0.376917, -0.765642, -0.521273,
		0.712979, -0.599072, 0.364380,
		38.204094, 35.558399, 25.611074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451740, 35.249119, 25.382843>,  <37.705009, 35.977749, 25.356009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451740, 35.249119, 25.382843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756664, 35.299046, 25.636869>,  <37.939617, 35.329002, 25.789286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756664, 35.299046, 25.636869>,  <37.451740, 35.249119, 25.382843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756664, 35.299046, 25.636869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537638, -0.424157, 0.728722,
		0.360326, -0.896946, -0.256230,
		0.762306, 0.124819, 0.635067,
		37.985355, 35.336491, 25.827389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583527, 34.511692, 25.766224>,  <37.451740, 35.249119, 25.382843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583527, 34.511692, 25.766224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.757442, 34.790226, 25.994637>,  <37.861794, 34.957348, 26.131683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.757442, 34.790226, 25.994637>,  <37.583527, 34.511692, 25.766224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757442, 34.790226, 25.994637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334922, -0.463580, 0.820318,
		0.835935, -0.547915, 0.031659,
		0.434788, 0.696335, 0.571031,
		37.887878, 34.999126, 26.165945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870182, 34.085880, 26.301880>,  <37.583527, 34.511692, 25.766224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870182, 34.085880, 26.301880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895329, 34.456909, 26.449207>,  <37.910416, 34.679527, 26.537603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895329, 34.456909, 26.449207>,  <37.870182, 34.085880, 26.301880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895329, 34.456909, 26.449207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249491, -0.342726, 0.905700,
		0.966334, -0.148831, 0.209875,
		0.062867, 0.927571, 0.368320,
		37.914188, 34.735180, 26.559704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266987, 34.057793, 26.822628>,  <37.870182, 34.085880, 26.301880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266987, 34.057793, 26.822628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088326, 34.408684, 26.893030>,  <37.981129, 34.619217, 26.935272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088326, 34.408684, 26.893030>,  <38.266987, 34.057793, 26.822628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088326, 34.408684, 26.893030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208736, -0.293459, 0.932905,
		0.870019, 0.379942, 0.314182,
		-0.446649, 0.877226, 0.176007,
		37.954330, 34.671852, 26.945833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966297, 33.914921, 26.621614>,  <38.266987, 34.057793, 26.822628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966297, 33.914921, 26.621614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097012, 33.546669, 26.707079>,  <39.175438, 33.325718, 26.758358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097012, 33.546669, 26.707079>,  <38.966297, 33.914921, 26.621614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097012, 33.546669, 26.707079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390976, -0.074135, -0.917411,
		0.860437, 0.383329, 0.335719,
		0.326782, -0.920632, 0.213661,
		39.195045, 33.270481, 26.771177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592457, 33.873394, 26.354095>,  <38.966297, 33.914921, 26.621614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592457, 33.873394, 26.354095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480988, 33.490765, 26.388273>,  <39.414104, 33.261185, 26.408781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480988, 33.490765, 26.388273>,  <39.592457, 33.873394, 26.354095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480988, 33.490765, 26.388273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258561, -0.160415, -0.952582,
		0.924925, -0.243369, 0.292038,
		-0.278676, -0.956576, 0.085446,
		39.397385, 33.203793, 26.413908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162273, 33.393139, 26.302799>,  <39.592457, 33.873394, 26.354095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162273, 33.393139, 26.302799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.832420, 33.211044, 26.168493>,  <39.634506, 33.101788, 26.087910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.832420, 33.211044, 26.168493>,  <40.162273, 33.393139, 26.302799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832420, 33.211044, 26.168493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471687, -0.225755, -0.852377,
		0.312231, -0.861276, 0.400894,
		-0.824636, -0.455234, -0.335765,
		39.585030, 33.074474, 26.067764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332874, 32.830124, 25.921919>,  <40.162273, 33.393139, 26.302799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332874, 32.830124, 25.921919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952240, 32.854694, 25.801449>,  <39.723858, 32.869434, 25.729166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952240, 32.854694, 25.801449>,  <40.332874, 32.830124, 25.921919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952240, 32.854694, 25.801449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283467, -0.203505, -0.937140,
		-0.118851, -0.977146, 0.176242,
		-0.951589, 0.061422, -0.301175,
		39.666763, 32.873123, 25.711096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274780, 32.321835, 25.426947>,  <40.332874, 32.830124, 25.921919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274780, 32.321835, 25.426947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947632, 32.538391, 25.348986>,  <39.751343, 32.668324, 25.302208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947632, 32.538391, 25.348986>,  <40.274780, 32.321835, 25.426947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947632, 32.538391, 25.348986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137315, -0.145301, -0.979812,
		-0.558778, -0.828123, 0.044497,
		-0.817870, 0.541387, -0.194904,
		39.702271, 32.700806, 25.290514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982075, 32.065929, 24.748840>,  <40.274780, 32.321835, 25.426947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982075, 32.065929, 24.748840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797306, 32.419922, 24.772314>,  <39.686447, 32.632317, 24.786398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797306, 32.419922, 24.772314>,  <39.982075, 32.065929, 24.748840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797306, 32.419922, 24.772314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015741, 0.057976, -0.998194,
		-0.886783, -0.462007, -0.012850,
		-0.461918, 0.884979, 0.058685,
		39.658730, 32.685417, 24.789919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353573, 32.083351, 24.436218>,  <39.982075, 32.065929, 24.748840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353573, 32.083351, 24.436218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.421516, 32.477070, 24.417027>,  <39.462284, 32.713303, 24.405512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.421516, 32.477070, 24.417027>,  <39.353573, 32.083351, 24.436218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421516, 32.477070, 24.417027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172117, -0.018305, -0.984907,
		-0.970321, 0.175556, 0.166305,
		0.169862, 0.984299, -0.047978,
		39.472473, 32.772358, 24.402634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815334, 32.386311, 23.956818>,  <39.353573, 32.083351, 24.436218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815334, 32.386311, 23.956818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110912, 32.655510, 23.969662>,  <39.288261, 32.817028, 23.977369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110912, 32.655510, 23.969662>,  <38.815334, 32.386311, 23.956818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110912, 32.655510, 23.969662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005546, 0.041583, -0.999119,
		-0.673738, 0.738476, 0.026996,
		0.738949, 0.672996, 0.032112,
		39.332596, 32.857410, 23.979296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794498, 32.794785, 23.346331>,  <38.815334, 32.386311, 23.956818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794498, 32.794785, 23.346331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170849, 32.863998, 23.462816>,  <39.396660, 32.905525, 23.532707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170849, 32.863998, 23.462816>,  <38.794498, 32.794785, 23.346331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170849, 32.863998, 23.462816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244990, 0.246117, -0.937767,
		-0.233938, 0.953670, 0.189175,
		0.940879, 0.173033, 0.291215,
		39.453114, 32.915909, 23.550180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038822, 33.306320, 22.899637>,  <38.794498, 32.794785, 23.346331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038822, 33.306320, 22.899637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391838, 33.185207, 23.043547>,  <39.603649, 33.112537, 23.129892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391838, 33.185207, 23.043547>,  <39.038822, 33.306320, 22.899637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391838, 33.185207, 23.043547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463645, 0.432733, -0.773160,
		0.078415, 0.849155, 0.522290,
		0.882544, -0.302785, 0.359774,
		39.656601, 33.094372, 23.151480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484642, 33.887138, 22.795563>,  <39.038822, 33.306320, 22.899637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484642, 33.887138, 22.795563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730774, 33.573814, 22.830894>,  <39.878452, 33.385818, 22.852093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730774, 33.573814, 22.830894>,  <39.484642, 33.887138, 22.795563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730774, 33.573814, 22.830894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628772, 0.420149, -0.654309,
		0.475415, 0.458151, 0.751051,
		0.615326, -0.783309, 0.088328,
		39.915371, 33.338821, 22.857393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193684, 34.121235, 22.877872>,  <39.484642, 33.887138, 22.795563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193684, 34.121235, 22.877872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240482, 33.756256, 22.721031>,  <40.268562, 33.537270, 22.626926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240482, 33.756256, 22.721031>,  <40.193684, 34.121235, 22.877872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240482, 33.756256, 22.721031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593021, 0.380888, -0.709401,
		0.796641, -0.149529, 0.585665,
		0.116996, -0.912450, -0.392105,
		40.275581, 33.482521, 22.603399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887577, 34.117546, 22.674641>,  <40.193684, 34.121235, 22.877872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887577, 34.117546, 22.674641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.722282, 33.805073, 22.487453>,  <40.623104, 33.617588, 22.375141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.722282, 33.805073, 22.487453>,  <40.887577, 34.117546, 22.674641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722282, 33.805073, 22.487453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571169, 0.177892, -0.801324,
		0.709226, -0.598425, 0.372674,
		-0.413237, -0.781180, -0.467968,
		40.598312, 33.570721, 22.347063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547047, 33.751881, 22.421423>,  <40.887577, 34.117546, 22.674641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547047, 33.751881, 22.421423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.213902, 33.658901, 22.220503>,  <41.014015, 33.603115, 22.099951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.213902, 33.658901, 22.220503>,  <41.547047, 33.751881, 22.421423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213902, 33.658901, 22.220503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440021, 0.272426, -0.855667,
		0.335740, -0.933676, -0.124610,
		-0.832863, -0.232451, -0.502301,
		40.964043, 33.589169, 22.069813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951199, 33.083572, 22.645653>,  <41.547047, 33.751881, 22.421423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951199, 33.083572, 22.645653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.318047, 32.944881, 22.724304>,  <42.538155, 32.861668, 22.771496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.318047, 32.944881, 22.724304>,  <41.951199, 33.083572, 22.645653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318047, 32.944881, 22.724304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281062, -0.212729, 0.935816,
		-0.282649, -0.913523, -0.292551,
		0.917123, -0.346732, 0.196629,
		42.593185, 32.840862, 22.783293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823509, 32.549980, 23.031988>,  <41.951199, 33.083572, 22.645653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823509, 32.549980, 23.031988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.203552, 32.623379, 23.132887>,  <42.431580, 32.667416, 23.193426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.203552, 32.623379, 23.132887>,  <41.823509, 32.549980, 23.031988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203552, 32.623379, 23.132887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232878, -0.120737, 0.964982,
		0.207524, -0.975578, -0.071981,
		0.950106, 0.183494, 0.252247,
		42.488583, 32.678425, 23.208561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012421, 31.990175, 23.461733>,  <41.823509, 32.549980, 23.031988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012421, 31.990175, 23.461733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.243439, 32.306160, 23.544104>,  <42.382050, 32.495750, 23.593527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.243439, 32.306160, 23.544104>,  <42.012421, 31.990175, 23.461733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243439, 32.306160, 23.544104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197745, -0.109367, 0.974133,
		0.792048, -0.603326, 0.093047,
		0.577543, 0.789960, 0.205929,
		42.416702, 32.543148, 23.605883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396385, 31.817162, 24.122492>,  <42.012421, 31.990175, 23.461733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396385, 31.817162, 24.122492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.400925, 32.216640, 24.102602>,  <42.403648, 32.456329, 24.090668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.400925, 32.216640, 24.102602>,  <42.396385, 31.817162, 24.122492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400925, 32.216640, 24.102602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257717, 0.050970, 0.964875,
		0.966154, 0.001864, 0.257960,
		0.011350, 0.998698, -0.049725,
		42.404331, 32.516251, 24.087685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818218, 31.880968, 24.668968>,  <42.396385, 31.817162, 24.122492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818218, 31.880968, 24.668968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.654079, 32.239536, 24.601982>,  <42.555595, 32.454678, 24.561790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.654079, 32.239536, 24.601982>,  <42.818218, 31.880968, 24.668968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654079, 32.239536, 24.601982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172372, 0.104085, 0.979517,
		0.895489, 0.430812, 0.111806,
		-0.410350, 0.896419, -0.167467,
		42.530975, 32.508461, 24.551743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054882, 32.301075, 25.159723>,  <42.818218, 31.880968, 24.668968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054882, 32.301075, 25.159723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.728241, 32.499386, 25.041489>,  <42.532257, 32.618370, 24.970549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.728241, 32.499386, 25.041489>,  <43.054882, 32.301075, 25.159723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728241, 32.499386, 25.041489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221880, 0.203127, 0.953682,
		0.532853, 0.844361, -0.055871,
		-0.816601, 0.495775, -0.295584,
		42.483261, 32.648117, 24.952814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144909, 32.853298, 25.569159>,  <43.054882, 32.301075, 25.159723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144909, 32.853298, 25.569159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.756916, 32.878639, 25.475243>,  <42.524120, 32.893845, 25.418894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.756916, 32.878639, 25.475243>,  <43.144909, 32.853298, 25.569159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756916, 32.878639, 25.475243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215975, 0.219334, 0.951445,
		0.111778, 0.973590, -0.199066,
		-0.969980, 0.063357, -0.234788,
		42.465923, 32.897648, 25.404806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841110, 33.443829, 25.849449>,  <43.144909, 32.853298, 25.569159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841110, 33.443829, 25.849449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.508045, 33.231949, 25.784824>,  <42.308208, 33.104820, 25.746050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.508045, 33.231949, 25.784824>,  <42.841110, 33.443829, 25.849449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508045, 33.231949, 25.784824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284780, 0.159349, 0.945256,
		-0.474954, 0.833084, -0.283530,
		-0.832658, -0.529697, -0.161563,
		42.258247, 33.073040, 25.736355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279354, 33.832737, 26.159378>,  <42.841110, 33.443829, 25.849449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279354, 33.832737, 26.159378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.158264, 33.452221, 26.136017>,  <42.085609, 33.223911, 26.122000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.158264, 33.452221, 26.136017>,  <42.279354, 33.832737, 26.159378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158264, 33.452221, 26.136017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355057, 0.055697, 0.933184,
		-0.884471, 0.303239, -0.354622,
		-0.302729, -0.951285, -0.058405,
		42.067444, 33.166836, 26.118496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526142, 33.785126, 26.251942>,  <42.279354, 33.832737, 26.159378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526142, 33.785126, 26.251942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.657158, 33.420464, 26.351219>,  <41.735767, 33.201668, 26.410786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.657158, 33.420464, 26.351219>,  <41.526142, 33.785126, 26.251942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657158, 33.420464, 26.351219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495579, 0.057888, 0.866632,
		-0.804438, -0.406855, -0.432838,
		0.327537, -0.911657, 0.248196,
		41.755421, 33.146965, 26.425678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822807, 33.438984, 26.581125>,  <41.526142, 33.785126, 26.251942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822807, 33.438984, 26.581125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.160728, 33.242004, 26.664846>,  <41.363480, 33.123817, 26.715078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.160728, 33.242004, 26.664846>,  <40.822807, 33.438984, 26.581125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160728, 33.242004, 26.664846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282624, -0.078514, 0.956012,
		-0.454357, -0.866791, -0.205507,
		0.844798, -0.492452, 0.209302,
		41.414169, 33.094269, 26.727636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712849, 33.012905, 27.155996>,  <40.822807, 33.438984, 26.581125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712849, 33.012905, 27.155996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110569, 33.055183, 27.161467>,  <41.349201, 33.080551, 27.164749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110569, 33.055183, 27.161467>,  <40.712849, 33.012905, 27.155996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110569, 33.055183, 27.161467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004117, -0.166301, 0.986066,
		0.106499, -0.980394, -0.165789,
		0.994304, 0.105698, 0.013674,
		41.408859, 33.086891, 27.165569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011395, 32.437424, 27.440460>,  <40.712849, 33.012905, 27.155996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011395, 32.437424, 27.440460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.268723, 32.738869, 27.494444>,  <41.423119, 32.919735, 27.526834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.268723, 32.738869, 27.494444>,  <41.011395, 32.437424, 27.440460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268723, 32.738869, 27.494444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036768, -0.206489, 0.977758,
		0.764715, -0.624048, -0.160547,
		0.643319, 0.753609, 0.134961,
		41.461720, 32.964951, 27.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374428, 32.137352, 27.902620>,  <41.011395, 32.437424, 27.440460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374428, 32.137352, 27.902620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444172, 32.530663, 27.923643>,  <41.486019, 32.766651, 27.936256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444172, 32.530663, 27.923643>,  <41.374428, 32.137352, 27.902620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444172, 32.530663, 27.923643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037443, -0.059956, 0.997499,
		0.983970, -0.171957, -0.047271,
		0.174361, 0.983278, 0.052556,
		41.496479, 32.825645, 27.939409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<46.712692, 34.859062, 24.471777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.381100, 35.052299, 24.359055>,  <46.182144, 35.168243, 24.291422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.381100, 35.052299, 24.359055>,  <46.712692, 34.859062, 24.471777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381100, 35.052299, 24.359055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315543, -0.012021, -0.948835,
		-0.461764, -0.875486, -0.142471,
		-0.828979, 0.483094, -0.281805,
		46.132404, 35.197227, 24.274513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621441, 34.584515, 23.877293>,  <46.712692, 34.859062, 24.471777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621441, 34.584515, 23.877293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.402210, 34.919041, 23.871805>,  <46.270672, 35.119755, 23.868513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.402210, 34.919041, 23.871805>,  <46.621441, 34.584515, 23.877293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402210, 34.919041, 23.871805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168904, 0.094597, -0.981083,
		-0.819195, -0.540028, -0.193103,
		-0.548079, 0.836314, -0.013720,
		46.237785, 35.169933, 23.867689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101006, 34.528801, 23.412981>,  <46.621441, 34.584515, 23.877293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101006, 34.528801, 23.412981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.106606, 34.927578, 23.443726>,  <46.109966, 35.166843, 23.462172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.106606, 34.927578, 23.443726>,  <46.101006, 34.528801, 23.412981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106606, 34.927578, 23.443726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164412, 0.073528, -0.983647,
		-0.986292, 0.026408, -0.162880,
		0.014000, 0.996943, 0.076862,
		46.110806, 35.226662, 23.466784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616070, 34.717667, 22.978476>,  <46.101006, 34.528801, 23.412981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616070, 34.717667, 22.978476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.879890, 35.013683, 23.031128>,  <46.038185, 35.191292, 23.062719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.879890, 35.013683, 23.031128>,  <45.616070, 34.717667, 22.978476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879890, 35.013683, 23.031128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215214, -0.018136, -0.976398,
		-0.720188, 0.672317, -0.171229,
		0.659555, 0.740041, 0.131630,
		46.077759, 35.235695, 23.070618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532391, 35.206505, 22.341137>,  <45.616070, 34.717667, 22.978476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532391, 35.206505, 22.341137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.886250, 35.287949, 22.508921>,  <46.098564, 35.336815, 22.609591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.886250, 35.287949, 22.508921>,  <45.532391, 35.206505, 22.341137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886250, 35.287949, 22.508921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384767, 0.189347, -0.903384,
		-0.263360, 0.960568, 0.089163,
		0.884645, 0.203608, 0.419461,
		46.151642, 35.349030, 22.634760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722839, 35.690792, 21.930216>,  <45.532391, 35.206505, 22.341137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722839, 35.690792, 21.930216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.067520, 35.564114, 22.088799>,  <46.274326, 35.488106, 22.183949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.067520, 35.564114, 22.088799>,  <45.722839, 35.690792, 21.930216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067520, 35.564114, 22.088799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449023, 0.112013, -0.886471,
		0.236334, 0.941890, 0.238726,
		0.861699, -0.316697, 0.396458,
		46.326031, 35.469105, 22.207735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224087, 36.173538, 21.631807>,  <45.722839, 35.690792, 21.930216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224087, 36.173538, 21.631807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.428207, 35.843113, 21.727482>,  <46.550682, 35.644859, 21.784887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.428207, 35.843113, 21.727482>,  <46.224087, 36.173538, 21.631807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428207, 35.843113, 21.727482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535711, 0.087765, -0.839828,
		0.672758, 0.556703, 0.487318,
		0.510305, -0.826062, 0.239187,
		46.581299, 35.595295, 21.799238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881237, 36.299347, 21.425890>,  <46.224087, 36.173538, 21.631807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881237, 36.299347, 21.425890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.869087, 35.901798, 21.468390>,  <46.861797, 35.663269, 21.493889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.869087, 35.901798, 21.468390>,  <46.881237, 36.299347, 21.425890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869087, 35.901798, 21.468390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398833, -0.109520, -0.910460,
		0.916520, 0.014718, 0.399717,
		-0.030377, -0.993876, 0.106247,
		46.859974, 35.603634, 21.500263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469543, 36.038052, 21.127731>,  <46.881237, 36.299347, 21.425890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469543, 36.038052, 21.127731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.232391, 35.715965, 21.132046>,  <47.090099, 35.522713, 21.134634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.232391, 35.715965, 21.132046>,  <47.469543, 36.038052, 21.127731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.232391, 35.715965, 21.132046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228995, -0.181418, -0.956373,
		0.772044, -0.564547, 0.291951,
		-0.592882, -0.805217, 0.010784,
		47.054527, 35.474400, 21.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.840214, 35.500259, 20.706970>,  <47.469543, 36.038052, 21.127731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.840214, 35.500259, 20.706970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.456440, 35.389412, 20.727743>,  <47.226177, 35.322903, 20.740208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.456440, 35.389412, 20.727743>,  <47.840214, 35.500259, 20.706970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456440, 35.389412, 20.727743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024862, -0.266641, -0.963475,
		0.280842, -0.923098, 0.262713,
		-0.959432, -0.277116, 0.051934,
		47.168610, 35.306278, 20.743322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.803261, 34.805866, 20.365377>,  <47.840214, 35.500259, 20.706970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.803261, 34.805866, 20.365377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.438477, 34.969242, 20.349882>,  <47.219604, 35.067268, 20.340586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.438477, 34.969242, 20.349882>,  <47.803261, 34.805866, 20.365377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.438477, 34.969242, 20.349882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129005, -0.375106, -0.917961,
		-0.389471, -0.832146, 0.394773,
		-0.911959, 0.408447, -0.038742,
		47.164886, 35.091774, 20.338261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364796, 34.299213, 19.985542>,  <47.803261, 34.805866, 20.365377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364796, 34.299213, 19.985542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.166859, 34.645660, 19.957342>,  <47.048096, 34.853531, 19.940422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.166859, 34.645660, 19.957342>,  <47.364796, 34.299213, 19.985542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166859, 34.645660, 19.957342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154850, -0.167717, -0.973598,
		-0.855077, -0.470856, 0.217111,
		-0.494838, 0.866121, -0.070499,
		47.018406, 34.905499, 19.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887772, 34.149529, 19.521652>,  <47.364796, 34.299213, 19.985542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887772, 34.149529, 19.521652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.932175, 34.547054, 19.521235>,  <46.958817, 34.785572, 19.520985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.932175, 34.547054, 19.521235>,  <46.887772, 34.149529, 19.521652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932175, 34.547054, 19.521235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066109, -0.008432, -0.997777,
		-0.991618, 0.110696, -0.066636,
		0.111012, 0.993818, -0.001043,
		46.965477, 34.845200, 19.520922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450314, 34.428516, 18.911131>,  <46.887772, 34.149529, 19.521652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450314, 34.428516, 18.911131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.787209, 34.628712, 18.991283>,  <46.989346, 34.748829, 19.039375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.787209, 34.628712, 18.991283>,  <46.450314, 34.428516, 18.911131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787209, 34.628712, 18.991283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311159, -0.147757, -0.938801,
		-0.440255, 0.853039, -0.280178,
		0.842233, 0.500491, 0.200380,
		47.039879, 34.778858, 19.051397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913418, 34.764008, 18.614544>,  <46.450314, 34.428516, 18.911131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913418, 34.764008, 18.614544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.018520, 34.754002, 19.000359>,  <46.081581, 34.747997, 19.231848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.018520, 34.754002, 19.000359>,  <45.913418, 34.764008, 18.614544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018520, 34.754002, 19.000359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876573, 0.423944, -0.227798,
		-0.403213, 0.905343, 0.133317,
		0.262754, -0.025011, 0.964539,
		46.097347, 34.746498, 19.289721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227970, 34.848064, 18.912296>,  <45.913418, 34.764008, 18.614544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227970, 34.848064, 18.912296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.145912, 34.520393, 18.698055>,  <45.096676, 34.323792, 18.569511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.145912, 34.520393, 18.698055>,  <45.227970, 34.848064, 18.912296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145912, 34.520393, 18.698055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651259, -0.294247, 0.699485,
		-0.730599, 0.492314, -0.473130,
		-0.205149, -0.819174, -0.535601,
		45.084366, 34.274643, 18.537374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403809, 34.812469, 18.663677>,  <45.227970, 34.848064, 18.912296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403809, 34.812469, 18.663677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.566345, 34.447083, 18.672209>,  <44.663868, 34.227848, 18.677328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.566345, 34.447083, 18.672209>,  <44.403809, 34.812469, 18.663677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566345, 34.447083, 18.672209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625122, -0.260900, 0.735632,
		-0.666413, -0.312255, -0.677046,
		0.406345, -0.913471, 0.021330,
		44.688248, 34.173042, 18.678608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898315, 34.434689, 18.936724>,  <44.403809, 34.812469, 18.663677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898315, 34.434689, 18.936724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.202915, 34.176006, 18.954100>,  <44.385674, 34.020798, 18.964525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.202915, 34.176006, 18.954100>,  <43.898315, 34.434689, 18.936724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202915, 34.176006, 18.954100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462100, -0.494678, 0.736042,
		-0.454515, -0.580569, -0.675541,
		0.761499, -0.646709, 0.043442,
		44.431366, 33.981995, 18.967133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556728, 33.793236, 18.964863>,  <43.898315, 34.434689, 18.936724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556728, 33.793236, 18.964863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.921024, 33.752178, 19.124872>,  <44.139603, 33.727543, 19.220879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.921024, 33.752178, 19.124872>,  <43.556728, 33.793236, 18.964863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921024, 33.752178, 19.124872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407830, -0.376049, 0.832023,
		0.065028, -0.920897, -0.384343,
		0.910739, -0.102642, 0.400023,
		44.194244, 33.721386, 19.244879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705734, 33.122833, 19.142248>,  <43.556728, 33.793236, 18.964863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705734, 33.122833, 19.142248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.945168, 33.323284, 19.392231>,  <44.088829, 33.443554, 19.542221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.945168, 33.323284, 19.392231>,  <43.705734, 33.122833, 19.142248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945168, 33.323284, 19.392231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326297, -0.559978, 0.761548,
		0.731592, -0.659773, -0.171679,
		0.598585, 0.501124, 0.624957,
		44.124744, 33.473621, 19.579718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030804, 32.586357, 19.508303>,  <43.705734, 33.122833, 19.142248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030804, 32.586357, 19.508303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.101967, 32.926842, 19.705803>,  <44.144665, 33.131130, 19.824303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.101967, 32.926842, 19.705803>,  <44.030804, 32.586357, 19.508303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101967, 32.926842, 19.705803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148591, -0.472766, 0.868569,
		0.972764, -0.227890, 0.042374,
		0.177906, 0.851210, 0.493752,
		44.155338, 33.182205, 19.853930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477287, 32.378872, 20.021221>,  <44.030804, 32.586357, 19.508303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477287, 32.378872, 20.021221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.314838, 32.719727, 20.153234>,  <44.217369, 32.924240, 20.232443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.314838, 32.719727, 20.153234>,  <44.477287, 32.378872, 20.021221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314838, 32.719727, 20.153234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092462, -0.397624, 0.912878,
		0.909127, 0.340229, 0.240276,
		-0.406127, 0.852138, 0.330032,
		44.193001, 32.975368, 20.252245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648930, 32.435455, 20.731953>,  <44.477287, 32.378872, 20.021221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648930, 32.435455, 20.731953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.376598, 32.728432, 20.732393>,  <44.213200, 32.904217, 20.732656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.376598, 32.728432, 20.732393>,  <44.648930, 32.435455, 20.731953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376598, 32.728432, 20.732393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292753, -0.273498, 0.916239,
		0.671394, 0.623478, 0.400630,
		-0.680827, 0.732443, 0.001100,
		44.172352, 32.948166, 20.732723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700565, 32.874001, 21.393780>,  <44.648930, 32.435455, 20.731953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700565, 32.874001, 21.393780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.331623, 32.943417, 21.255714>,  <44.110256, 32.985065, 21.172876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.331623, 32.943417, 21.255714>,  <44.700565, 32.874001, 21.393780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331623, 32.943417, 21.255714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365220, -0.100374, 0.925494,
		0.125962, 0.979699, 0.155960,
		-0.922360, 0.173537, -0.345162,
		44.054916, 32.995476, 21.152166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394714, 33.331722, 21.853849>,  <44.700565, 32.874001, 21.393780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394714, 33.331722, 21.853849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.086365, 33.155529, 21.669792>,  <43.901356, 33.049812, 21.559357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.086365, 33.155529, 21.669792>,  <44.394714, 33.331722, 21.853849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086365, 33.155529, 21.669792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421960, -0.188036, 0.886900,
		-0.477189, 0.877848, -0.040915,
		-0.770870, -0.440483, -0.460145,
		43.855103, 33.023384, 21.531748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908577, 33.439346, 22.330448>,  <44.394714, 33.331722, 21.853849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908577, 33.439346, 22.330448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.670319, 33.222206, 22.093630>,  <43.527363, 33.091923, 21.951538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.670319, 33.222206, 22.093630>,  <43.908577, 33.439346, 22.330448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670319, 33.222206, 22.093630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610888, -0.172439, 0.772710,
		-0.521559, 0.821935, -0.228910,
		-0.595644, -0.542852, -0.592047,
		43.491627, 33.059349, 21.916016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157867, 33.760735, 22.161263>,  <43.908577, 33.439346, 22.330448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157867, 33.760735, 22.161263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.172264, 33.361778, 22.136202>,  <43.180901, 33.122406, 22.121164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.172264, 33.361778, 22.136202>,  <43.157867, 33.760735, 22.161263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172264, 33.361778, 22.136202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655928, -0.070874, 0.751489,
		-0.753965, 0.014051, -0.656764,
		0.035988, -0.997386, -0.062652,
		43.183060, 33.062561, 22.117407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455662, 33.490028, 22.255327>,  <43.157867, 33.760735, 22.161263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455662, 33.490028, 22.255327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.699238, 33.186371, 22.347311>,  <42.845383, 33.004173, 22.402502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.699238, 33.186371, 22.347311>,  <42.455662, 33.490028, 22.255327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699238, 33.186371, 22.347311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583944, -0.232829, 0.777689,
		-0.536841, -0.607852, -0.585080,
		0.608943, -0.759149, 0.229959,
		42.881920, 32.958626, 22.416298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852093, 33.524902, 21.791241>,  <42.455662, 33.490028, 22.255327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852093, 33.524902, 21.791241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460880, 33.548836, 21.711372>,  <41.226151, 33.563198, 21.663450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460880, 33.548836, 21.711372>,  <41.852093, 33.524902, 21.791241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460880, 33.548836, 21.711372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208417, 0.264869, -0.941492,
		-0.003449, -0.962426, -0.271522,
		-0.978034, 0.059837, -0.199672,
		41.167469, 33.566788, 21.651470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781555, 33.219894, 21.098974>,  <41.852093, 33.524902, 21.791241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781555, 33.219894, 21.098974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462486, 33.454830, 21.153757>,  <41.271046, 33.595791, 21.186626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462486, 33.454830, 21.153757>,  <41.781555, 33.219894, 21.098974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462486, 33.454830, 21.153757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132841, 0.392619, -0.910057,
		-0.588283, -0.707731, -0.391203,
		-0.797669, 0.587339, 0.136955,
		41.223186, 33.631031, 21.194843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342976, 33.170361, 20.474840>,  <41.781555, 33.219894, 21.098974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342976, 33.170361, 20.474840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207039, 33.512726, 20.630751>,  <41.125477, 33.718143, 20.724297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207039, 33.512726, 20.630751>,  <41.342976, 33.170361, 20.474840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207039, 33.512726, 20.630751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164730, 0.462208, -0.871337,
		-0.925943, -0.231910, -0.298072,
		-0.339843, 0.855910, 0.389776,
		41.105087, 33.769497, 20.747683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077084, 33.441734, 19.927217>,  <41.342976, 33.170361, 20.474840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077084, 33.441734, 19.927217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.094067, 33.768204, 20.157713>,  <41.104256, 33.964085, 20.296011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.094067, 33.768204, 20.157713>,  <41.077084, 33.441734, 19.927217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094067, 33.768204, 20.157713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181835, 0.560815, -0.807727,
		-0.982412, 0.139073, -0.124600,
		0.042456, 0.816177, 0.576240,
		41.106804, 34.013058, 20.330585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548302, 33.966675, 19.606760>,  <41.077084, 33.441734, 19.927217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548302, 33.966675, 19.606760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.833252, 34.137260, 19.829706>,  <41.004223, 34.239613, 19.963474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.833252, 34.137260, 19.829706>,  <40.548302, 33.966675, 19.606760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833252, 34.137260, 19.829706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305249, 0.526854, -0.793252,
		-0.631942, 0.735225, 0.245139,
		0.712371, 0.426461, 0.557368,
		41.046963, 34.265198, 19.996916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749138, 34.487095, 19.237488>,  <40.548302, 33.966675, 19.606760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749138, 34.487095, 19.237488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.026482, 34.549236, 19.518946>,  <41.192886, 34.586521, 19.687820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.026482, 34.549236, 19.518946>,  <40.749138, 34.487095, 19.237488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026482, 34.549236, 19.518946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458941, 0.657618, -0.597421,
		-0.555542, 0.737159, 0.384668,
		0.693359, 0.155352, 0.703647,
		41.234489, 34.595840, 19.730040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839077, 35.217571, 19.399366>,  <40.749138, 34.487095, 19.237488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839077, 35.217571, 19.399366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.184483, 35.029682, 19.472803>,  <41.391727, 34.916950, 19.516865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.184483, 35.029682, 19.472803>,  <40.839077, 35.217571, 19.399366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184483, 35.029682, 19.472803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452994, 0.562403, -0.691737,
		0.221670, 0.680491, 0.698423,
		0.863515, -0.469719, 0.183590,
		41.443539, 34.888767, 19.527880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964149, 35.940434, 19.899065>,  <40.839077, 35.217571, 19.399366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964149, 35.940434, 19.899065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.789291, 36.299721, 19.880720>,  <40.684376, 36.515293, 19.869713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.789291, 36.299721, 19.880720>,  <40.964149, 35.940434, 19.899065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789291, 36.299721, 19.880720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517083, -0.209278, 0.829956,
		0.735887, 0.386524, 0.555940,
		-0.437144, 0.898222, -0.045860,
		40.658150, 36.569187, 19.866962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059719, 36.198868, 20.485550>,  <40.964149, 35.940434, 19.899065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059719, 36.198868, 20.485550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.752285, 36.430176, 20.376097>,  <40.567825, 36.568962, 20.310425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.752285, 36.430176, 20.376097>,  <41.059719, 36.198868, 20.485550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752285, 36.430176, 20.376097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443522, -0.173392, 0.879331,
		0.461048, 0.797204, 0.389743,
		-0.768585, 0.578274, -0.273635,
		40.521709, 36.603657, 20.294006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966766, 36.616554, 21.077484>,  <41.059719, 36.198868, 20.485550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966766, 36.616554, 21.077484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622486, 36.605495, 20.874138>,  <40.415920, 36.598862, 20.752131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622486, 36.605495, 20.874138>,  <40.966766, 36.616554, 21.077484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622486, 36.605495, 20.874138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495812, -0.181268, 0.849301,
		-0.115630, 0.983045, 0.142309,
		-0.860697, -0.027646, -0.508366,
		40.364277, 36.597202, 20.721628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589954, 37.067547, 21.485653>,  <40.966766, 36.616554, 21.077484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589954, 37.067547, 21.485653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315807, 36.886501, 21.257473>,  <40.151318, 36.777874, 21.120565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315807, 36.886501, 21.257473>,  <40.589954, 37.067547, 21.485653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315807, 36.886501, 21.257473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589254, -0.115547, 0.799643,
		-0.427842, 0.884189, -0.187513,
		-0.685369, -0.452614, -0.570448,
		40.110195, 36.750717, 21.086338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890942, 37.286842, 21.760969>,  <40.589954, 37.067547, 21.485653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890942, 37.286842, 21.760969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831715, 36.942192, 21.566782>,  <39.796177, 36.735401, 21.450270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831715, 36.942192, 21.566782>,  <39.890942, 37.286842, 21.760969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831715, 36.942192, 21.566782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607790, -0.307956, 0.731952,
		-0.780171, 0.403441, -0.478089,
		-0.148070, -0.861625, -0.485466,
		39.787292, 36.683704, 21.421143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196407, 37.221092, 21.754566>,  <39.890942, 37.286842, 21.760969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196407, 37.221092, 21.754566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354439, 36.855503, 21.717539>,  <39.449257, 36.636150, 21.695322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354439, 36.855503, 21.717539>,  <39.196407, 37.221092, 21.754566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354439, 36.855503, 21.717539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673074, -0.356572, 0.647941,
		-0.625206, -0.193685, -0.756045,
		0.395081, -0.913971, -0.092567,
		39.472961, 36.581310, 21.689768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724857, 36.744545, 22.081575>,  <39.196407, 37.221092, 21.754566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724857, 36.744545, 22.081575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026890, 36.489540, 22.020348>,  <39.208111, 36.336536, 21.983610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026890, 36.489540, 22.020348>,  <38.724857, 36.744545, 22.081575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026890, 36.489540, 22.020348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356269, -0.594964, 0.720479,
		-0.550381, -0.489490, -0.676373,
		0.755085, -0.637508, -0.153067,
		39.253414, 36.298286, 21.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.745529, 37.351505, 19.370703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.016724, 37.130119, 19.564201>,  <45.179440, 36.997288, 19.680302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.016724, 37.130119, 19.564201>,  <44.745529, 37.351505, 19.370703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016724, 37.130119, 19.564201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541227, 0.069450, 0.838004,
		-0.497404, -0.829970, -0.252465,
		0.677984, -0.553467, 0.483747,
		45.220119, 36.964081, 19.709326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333576, 37.058392, 19.943855>,  <44.745529, 37.351505, 19.370703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333576, 37.058392, 19.943855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.708340, 37.039715, 20.082428>,  <44.933197, 37.028511, 20.165571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.708340, 37.039715, 20.082428>,  <44.333576, 37.058392, 19.943855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708340, 37.039715, 20.082428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342050, 0.081907, 0.936105,
		-0.072083, -0.995546, 0.060769,
		0.936913, -0.046691, 0.346431,
		44.989414, 37.025707, 20.186357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344814, 36.710758, 20.489050>,  <44.333576, 37.058392, 19.943855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344814, 36.710758, 20.489050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.705914, 36.870682, 20.552555>,  <44.922573, 36.966637, 20.590658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.705914, 36.870682, 20.552555>,  <44.344814, 36.710758, 20.489050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705914, 36.870682, 20.552555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262543, 0.219710, 0.939574,
		0.340766, -0.889878, 0.303308,
		0.902745, 0.399807, 0.158761,
		44.976738, 36.990623, 20.600183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644646, 36.462257, 21.161850>,  <44.344814, 36.710758, 20.489050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644646, 36.462257, 21.161850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.861427, 36.786263, 21.072256>,  <44.991497, 36.980667, 21.018499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.861427, 36.786263, 21.072256>,  <44.644646, 36.462257, 21.161850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861427, 36.786263, 21.072256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324809, 0.447690, 0.833111,
		0.775106, -0.378752, 0.505725,
		0.541950, 0.810013, -0.223985,
		45.024014, 37.029266, 21.005060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973923, 36.577370, 21.718159>,  <44.644646, 36.462257, 21.161850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973923, 36.577370, 21.718159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.981045, 36.936024, 21.541195>,  <44.985317, 37.151215, 21.435017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.981045, 36.936024, 21.541195>,  <44.973923, 36.577370, 21.718159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981045, 36.936024, 21.541195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368675, 0.417189, 0.830682,
		0.929388, 0.148316, 0.337995,
		0.017804, 0.896636, -0.442411,
		44.986385, 37.205013, 21.408472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162060, 37.017113, 22.251114>,  <44.973923, 36.577370, 21.718159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162060, 37.017113, 22.251114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.015903, 37.280685, 21.988115>,  <44.928211, 37.438828, 21.830317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.015903, 37.280685, 21.988115>,  <45.162060, 37.017113, 22.251114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015903, 37.280685, 21.988115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468266, 0.480342, 0.741619,
		0.804497, 0.578865, 0.133041,
		-0.365392, 0.658929, -0.657496,
		44.906284, 37.478363, 21.790867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406940, 37.721752, 22.326595>,  <45.162060, 37.017113, 22.251114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406940, 37.721752, 22.326595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.062355, 37.772705, 22.129961>,  <44.855602, 37.803276, 22.011980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.062355, 37.772705, 22.129961>,  <45.406940, 37.721752, 22.326595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062355, 37.772705, 22.129961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308102, 0.638404, 0.705347,
		0.403678, 0.759088, -0.510714,
		-0.861462, 0.127381, -0.491586,
		44.803917, 37.810921, 21.982485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249935, 38.433464, 22.393009>,  <45.406940, 37.721752, 22.326595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249935, 38.433464, 22.393009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.891975, 38.296185, 22.278910>,  <44.677200, 38.213818, 22.210449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.891975, 38.296185, 22.278910>,  <45.249935, 38.433464, 22.393009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891975, 38.296185, 22.278910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437418, 0.547932, 0.713047,
		-0.088422, 0.762879, -0.640466,
		-0.894900, -0.343200, -0.285248,
		44.623505, 38.193226, 22.193335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739441, 38.989151, 22.377361>,  <45.249935, 38.433464, 22.393009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739441, 38.989151, 22.377361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.496742, 38.672424, 22.405296>,  <44.351124, 38.482388, 22.422058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.496742, 38.672424, 22.405296>,  <44.739441, 38.989151, 22.377361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496742, 38.672424, 22.405296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536666, 0.472867, 0.698846,
		-0.586385, 0.386543, -0.711854,
		-0.606747, -0.791821, 0.069838,
		44.314716, 38.434879, 22.426249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028812, 39.170578, 22.359381>,  <44.739441, 38.989151, 22.377361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028812, 39.170578, 22.359381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.996376, 38.821857, 22.552622>,  <43.976913, 38.612625, 22.668566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.996376, 38.821857, 22.552622>,  <44.028812, 39.170578, 22.359381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996376, 38.821857, 22.552622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473564, 0.460194, 0.750972,
		-0.877019, -0.167884, -0.450170,
		-0.081089, -0.871801, 0.483102,
		43.972050, 38.560318, 22.697552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361687, 39.135502, 22.558516>,  <44.028812, 39.170578, 22.359381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361687, 39.135502, 22.558516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.556061, 38.879234, 22.796307>,  <43.672684, 38.725471, 22.938982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.556061, 38.879234, 22.796307>,  <43.361687, 39.135502, 22.558516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556061, 38.879234, 22.796307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599621, 0.250475, 0.760077,
		-0.635863, -0.725809, -0.262447,
		0.485934, -0.640674, 0.594478,
		43.701839, 38.687031, 22.974649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792179, 38.964752, 22.929541>,  <43.361687, 39.135502, 22.558516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792179, 38.964752, 22.929541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.099316, 38.820839, 23.141569>,  <43.283596, 38.734489, 23.268785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.099316, 38.820839, 23.141569>,  <42.792179, 38.964752, 22.929541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099316, 38.820839, 23.141569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511581, 0.153697, 0.845377,
		-0.385625, -0.920289, -0.066045,
		0.767840, -0.359786, 0.530072,
		43.329666, 38.712902, 23.300591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117004, 38.895210, 22.781301>,  <42.792179, 38.964752, 22.929541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117004, 38.895210, 22.781301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.825108, 39.145916, 22.672020>,  <41.649971, 39.296341, 22.606451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.825108, 39.145916, 22.672020>,  <42.117004, 38.895210, 22.781301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825108, 39.145916, 22.672020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349920, -0.000930, -0.936779,
		-0.587396, -0.779206, -0.218640,
		-0.729741, 0.626767, -0.273206,
		41.606186, 39.333946, 22.590057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818241, 38.661674, 22.089628>,  <42.117004, 38.895210, 22.781301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818241, 38.661674, 22.089628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.740280, 39.052155, 22.127659>,  <41.693504, 39.286442, 22.150476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.740280, 39.052155, 22.127659>,  <41.818241, 38.661674, 22.089628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740280, 39.052155, 22.127659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201077, 0.134642, -0.970278,
		-0.959991, -0.169988, -0.222534,
		-0.194898, 0.976205, 0.095074,
		41.681812, 39.345016, 22.156181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317265, 38.868958, 21.513308>,  <41.818241, 38.661674, 22.089628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317265, 38.868958, 21.513308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.523563, 39.183281, 21.649839>,  <41.647343, 39.371876, 21.731758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.523563, 39.183281, 21.649839>,  <41.317265, 38.868958, 21.513308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523563, 39.183281, 21.649839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199614, 0.277224, -0.939841,
		-0.833163, 0.552853, -0.013882,
		0.515746, 0.785812, 0.341331,
		41.678288, 39.419025, 21.752239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016949, 39.511055, 21.187365>,  <41.317265, 38.868958, 21.513308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016949, 39.511055, 21.187365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.394009, 39.593338, 21.292511>,  <41.620243, 39.642708, 21.355598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.394009, 39.593338, 21.292511>,  <41.016949, 39.511055, 21.187365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394009, 39.593338, 21.292511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177630, 0.357593, -0.916829,
		-0.282597, 0.910940, 0.300545,
		0.942649, 0.205707, 0.262865,
		41.676804, 39.655048, 21.371370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249020, 40.039307, 20.700392>,  <41.016949, 39.511055, 21.187365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249020, 40.039307, 20.700392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.596794, 39.947300, 20.875284>,  <41.805458, 39.892097, 20.980219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.596794, 39.947300, 20.875284>,  <41.249020, 40.039307, 20.700392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596794, 39.947300, 20.875284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468372, 0.102201, -0.877601,
		0.157178, 0.967805, 0.196591,
		0.869438, -0.230017, 0.437229,
		41.857624, 39.878296, 21.006453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807598, 40.488567, 20.363173>,  <41.249020, 40.039307, 20.700392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807598, 40.488567, 20.363173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995689, 40.167511, 20.509954>,  <42.108543, 39.974876, 20.598024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995689, 40.167511, 20.509954>,  <41.807598, 40.488567, 20.363173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995689, 40.167511, 20.509954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461246, -0.130983, -0.877551,
		0.752422, 0.581904, 0.308622,
		0.470226, -0.802640, 0.366956,
		42.136757, 39.926720, 20.620041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450584, 40.532730, 20.050539>,  <41.807598, 40.488567, 20.363173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450584, 40.532730, 20.050539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.405571, 40.156517, 20.178745>,  <42.378563, 39.930790, 20.255669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.405571, 40.156517, 20.178745>,  <42.450584, 40.532730, 20.050539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405571, 40.156517, 20.178745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491719, -0.333011, -0.804559,
		0.863451, 0.067062, 0.499955,
		-0.112535, -0.940535, 0.320514,
		42.371811, 39.874355, 20.274900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121902, 40.205009, 20.027205>,  <42.450584, 40.532730, 20.050539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121902, 40.205009, 20.027205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865700, 39.897839, 20.029879>,  <42.711979, 39.713535, 20.031483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865700, 39.897839, 20.029879>,  <43.121902, 40.205009, 20.027205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865700, 39.897839, 20.029879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524449, -0.443759, -0.726658,
		0.560984, -0.461923, 0.686967,
		-0.640508, -0.767923, 0.006686,
		42.673546, 39.667461, 20.031885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580589, 39.617321, 20.078081>,  <43.121902, 40.205009, 20.027205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580589, 39.617321, 20.078081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230186, 39.500069, 19.924883>,  <43.019943, 39.429718, 19.832964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230186, 39.500069, 19.924883>,  <43.580589, 39.617321, 20.078081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230186, 39.500069, 19.924883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481797, -0.495786, -0.722543,
		0.021914, -0.817479, 0.575541,
		-0.876009, -0.293127, -0.382994,
		42.967384, 39.412132, 19.809984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701115, 38.837975, 19.870867>,  <43.580589, 39.617321, 20.078081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701115, 38.837975, 19.870867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.352253, 38.917412, 19.692020>,  <43.142937, 38.965076, 19.584713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.352253, 38.917412, 19.692020>,  <43.701115, 38.837975, 19.870867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352253, 38.917412, 19.692020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227302, -0.644791, -0.729779,
		-0.433224, -0.738109, 0.517216,
		-0.872153, 0.198594, -0.447113,
		43.090607, 38.976990, 19.557886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374050, 38.187054, 19.570551>,  <43.701115, 38.837975, 19.870867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374050, 38.187054, 19.570551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.222927, 38.481720, 19.346201>,  <43.132252, 38.658520, 19.211592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.222927, 38.481720, 19.346201>,  <43.374050, 38.187054, 19.570551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222927, 38.481720, 19.346201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153024, -0.547761, -0.822521,
		-0.913152, -0.396582, 0.094220,
		-0.377807, 0.736669, -0.560876,
		43.109585, 38.702721, 19.177938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140324, 37.833649, 19.114811>,  <43.374050, 38.187054, 19.570551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140324, 37.833649, 19.114811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.091145, 38.200123, 18.962238>,  <43.061638, 38.420006, 18.870695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.091145, 38.200123, 18.962238>,  <43.140324, 37.833649, 19.114811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091145, 38.200123, 18.962238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206361, -0.352345, -0.912835,
		-0.970721, -0.190946, -0.145743,
		-0.122951, 0.916184, -0.381433,
		43.054260, 38.474979, 18.847809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723270, 37.725822, 18.554497>,  <43.140324, 37.833649, 19.114811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723270, 37.725822, 18.554497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.925900, 38.066601, 18.501490>,  <43.047478, 38.271069, 18.469687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.925900, 38.066601, 18.501490>,  <42.723270, 37.725822, 18.554497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925900, 38.066601, 18.501490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380699, -0.358922, -0.852199,
		-0.773594, 0.381255, -0.506159,
		0.506576, 0.851950, -0.132517,
		43.077873, 38.322186, 18.461735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628582, 37.838535, 17.843237>,  <42.723270, 37.725822, 18.554497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628582, 37.838535, 17.843237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.932972, 38.074013, 17.952309>,  <43.115604, 38.215298, 18.017752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.932972, 38.074013, 17.952309>,  <42.628582, 37.838535, 17.843237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932972, 38.074013, 17.952309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469353, -0.209364, -0.857831,
		-0.447911, 0.780772, -0.435627,
		0.760975, 0.588695, 0.272681,
		43.161266, 38.250622, 18.034113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298515, 38.426403, 17.747784>,  <42.628582, 37.838535, 17.843237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298515, 38.426403, 17.747784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.076469, 38.124680, 17.607576>,  <41.943241, 37.943645, 17.523453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.076469, 38.124680, 17.607576>,  <42.298515, 38.426403, 17.747784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076469, 38.124680, 17.607576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220554, -0.272837, 0.936438,
		-0.801998, 0.597141, -0.014910,
		-0.555118, -0.754309, -0.350516,
		41.909935, 37.898388, 17.502422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724144, 38.515049, 18.135759>,  <42.298515, 38.426403, 17.747784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724144, 38.515049, 18.135759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.651936, 38.151730, 17.984810>,  <41.608612, 37.933739, 17.894241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.651936, 38.151730, 17.984810>,  <41.724144, 38.515049, 18.135759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651936, 38.151730, 17.984810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511800, -0.240897, 0.824639,
		-0.839925, 0.342002, -0.421380,
		-0.180519, -0.908297, -0.377372,
		41.597778, 37.879242, 17.871599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981396, 38.341629, 18.208189>,  <41.724144, 38.515049, 18.135759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981396, 38.341629, 18.208189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.160782, 37.985973, 18.171721>,  <41.268414, 37.772579, 18.149839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.160782, 37.985973, 18.171721>,  <40.981396, 38.341629, 18.208189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160782, 37.985973, 18.171721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522673, -0.343629, 0.780213,
		-0.725047, -0.302244, -0.618834,
		0.448464, -0.889139, -0.091172,
		41.295322, 37.719231, 18.144369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456192, 37.861847, 18.269997>,  <40.981396, 38.341629, 18.208189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456192, 37.861847, 18.269997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.787552, 37.650074, 18.343170>,  <40.986366, 37.523010, 18.387075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.787552, 37.650074, 18.343170>,  <40.456192, 37.861847, 18.269997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787552, 37.650074, 18.343170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444992, -0.423660, 0.788983,
		-0.340202, -0.734998, -0.586549,
		0.828398, -0.529424, 0.182939,
		41.036072, 37.491245, 18.398050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302147, 37.141331, 18.290337>,  <40.456192, 37.861847, 18.269997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302147, 37.141331, 18.290337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.640099, 37.169380, 18.502472>,  <40.842869, 37.186211, 18.629753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.640099, 37.169380, 18.502472>,  <40.302147, 37.141331, 18.290337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640099, 37.169380, 18.502472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483821, -0.322803, 0.813459,
		0.228241, -0.943864, -0.238801,
		0.844880, 0.070128, 0.530339,
		40.893562, 37.190418, 18.661573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233513, 36.530342, 18.664928>,  <40.302147, 37.141331, 18.290337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233513, 36.530342, 18.664928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.533516, 36.716595, 18.852837>,  <40.713516, 36.828346, 18.965582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.533516, 36.716595, 18.852837>,  <40.233513, 36.530342, 18.664928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533516, 36.716595, 18.852837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339526, -0.338496, 0.877577,
		0.567641, -0.817686, -0.095780,
		0.750004, 0.465629, 0.469770,
		40.758518, 36.856285, 18.993767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663021, 36.052059, 19.078360>,  <40.233513, 36.530342, 18.664928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663021, 36.052059, 19.078360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.674999, 36.413937, 19.248360>,  <40.682186, 36.631065, 19.350359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.674999, 36.413937, 19.248360>,  <40.663021, 36.052059, 19.078360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674999, 36.413937, 19.248360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338361, -0.390913, 0.855978,
		0.940540, -0.169437, 0.294408,
		0.029946, 0.904698, 0.425000,
		40.683983, 36.685345, 19.375860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350254, 35.777718, 19.222233>,  <40.663021, 36.052059, 19.078360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350254, 35.777718, 19.222233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.571117, 35.444237, 19.225431>,  <41.703636, 35.244148, 19.227350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.571117, 35.444237, 19.225431>,  <41.350254, 35.777718, 19.222233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571117, 35.444237, 19.225431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675037, 0.441404, -0.591175,
		0.489333, 0.331821, 0.806503,
		0.552158, -0.833701, 0.007998,
		41.736763, 35.194126, 19.227831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157112, 35.928013, 19.373705>,  <41.350254, 35.777718, 19.222233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157112, 35.928013, 19.373705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101585, 35.591824, 19.164200>,  <42.068268, 35.390110, 19.038496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101585, 35.591824, 19.164200>,  <42.157112, 35.928013, 19.373705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101585, 35.591824, 19.164200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695178, 0.293968, -0.655980,
		0.705306, -0.455172, 0.543472,
		-0.138820, -0.840477, -0.523763,
		42.059940, 35.339680, 19.007071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793285, 35.716900, 19.253418>,  <42.157112, 35.928013, 19.373705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793285, 35.716900, 19.253418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.579590, 35.532650, 18.969891>,  <42.451374, 35.422100, 18.799774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.579590, 35.532650, 18.969891>,  <42.793285, 35.716900, 19.253418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579590, 35.532650, 18.969891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770905, 0.078565, -0.632086,
		0.346840, -0.884113, 0.313122,
		-0.534235, -0.460620, -0.708817,
		42.419319, 35.394463, 18.757246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304615, 35.330524, 18.892004>,  <42.793285, 35.716900, 19.253418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304615, 35.330524, 18.892004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.992817, 35.306030, 18.642643>,  <42.805737, 35.291332, 18.493027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.992817, 35.306030, 18.642643>,  <43.304615, 35.330524, 18.892004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992817, 35.306030, 18.642643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619402, -0.223732, -0.752519,
		-0.093392, -0.972725, 0.212331,
		-0.779499, -0.061239, -0.623402,
		42.758968, 35.287659, 18.455622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436878, 34.766567, 18.502598>,  <43.304615, 35.330524, 18.892004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436878, 34.766567, 18.502598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.180603, 34.985924, 18.287642>,  <43.026840, 35.117538, 18.158669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.180603, 34.985924, 18.287642>,  <43.436878, 34.766567, 18.502598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180603, 34.985924, 18.287642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497503, -0.236601, -0.834572,
		-0.584821, -0.802051, -0.121241,
		-0.640684, 0.548393, -0.537392,
		42.988400, 35.150440, 18.126425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344872, 34.406235, 17.878153>,  <43.436878, 34.766567, 18.502598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344872, 34.406235, 17.878153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194508, 34.757504, 17.759829>,  <43.104290, 34.968266, 17.688835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194508, 34.757504, 17.759829>,  <43.344872, 34.406235, 17.878153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194508, 34.757504, 17.759829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540733, -0.051359, -0.839625,
		-0.752529, -0.475578, -0.455551,
		-0.375910, 0.878173, -0.295809,
		43.081734, 35.020954, 17.671085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035450, 34.274578, 17.253635>,  <43.344872, 34.406235, 17.878153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035450, 34.274578, 17.253635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.094383, 34.669853, 17.270512>,  <43.129742, 34.907017, 17.280638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.094383, 34.669853, 17.270512>,  <43.035450, 34.274578, 17.253635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094383, 34.669853, 17.270512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390087, -0.018856, -0.920585,
		-0.908915, 0.152088, -0.388257,
		0.147331, 0.988187, 0.042189,
		43.138584, 34.966309, 17.283169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718994, 34.564095, 16.697805>,  <43.035450, 34.274578, 17.253635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718994, 34.564095, 16.697805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.004990, 34.820740, 16.808887>,  <43.176586, 34.974728, 16.875536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.004990, 34.820740, 16.808887>,  <42.718994, 34.564095, 16.697805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004990, 34.820740, 16.808887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436402, -0.099255, -0.894261,
		-0.546204, 0.760581, -0.350967,
		0.714993, 0.641611, 0.277705,
		43.219486, 35.013222, 16.892199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801502, 34.960701, 16.133320>,  <42.718994, 34.564095, 16.697805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801502, 34.960701, 16.133320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.144672, 35.055290, 16.315763>,  <43.350574, 35.112045, 16.425230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.144672, 35.055290, 16.315763>,  <42.801502, 34.960701, 16.133320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144672, 35.055290, 16.315763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473152, -0.017707, -0.880803,
		-0.200211, 0.971477, -0.127079,
		0.857930, 0.236474, 0.456111,
		43.402050, 35.126232, 16.452597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.878963, 33.864979, 31.412922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244011, 33.703175, 31.436575>,  <38.463039, 33.606094, 31.450768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244011, 33.703175, 31.436575>,  <37.878963, 33.864979, 31.412922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244011, 33.703175, 31.436575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063207, -0.003291, -0.997995,
		0.403892, 0.914528, 0.022565,
		0.912620, -0.404509, 0.059134,
		38.517796, 33.581821, 31.454315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263775, 34.291798, 30.887745>,  <37.878963, 33.864979, 31.412922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263775, 34.291798, 30.887745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478065, 33.965679, 30.975645>,  <38.606640, 33.770008, 31.028385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478065, 33.965679, 30.975645>,  <38.263775, 34.291798, 30.887745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478065, 33.965679, 30.975645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149546, -0.164520, -0.974971,
		0.831045, 0.555178, 0.033787,
		0.535724, -0.815298, 0.219748,
		38.638783, 33.721088, 31.041569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881630, 34.402225, 30.535379>,  <38.263775, 34.291798, 30.887745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881630, 34.402225, 30.535379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.860985, 34.013462, 30.627234>,  <38.848598, 33.780205, 30.682346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.860985, 34.013462, 30.627234>,  <38.881630, 34.402225, 30.535379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860985, 34.013462, 30.627234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292658, -0.234565, -0.927001,
		0.954823, 0.019362, 0.296542,
		-0.051610, -0.971908, 0.229635,
		38.845501, 33.721889, 30.696123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461361, 34.146294, 30.223892>,  <38.881630, 34.402225, 30.535379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461361, 34.146294, 30.223892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199749, 33.848366, 30.276802>,  <39.042782, 33.669609, 30.308548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199749, 33.848366, 30.276802>,  <39.461361, 34.146294, 30.223892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199749, 33.848366, 30.276802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264252, -0.388787, -0.882618,
		0.708814, -0.542304, 0.451097,
		-0.654028, -0.744816, 0.132273,
		39.003540, 33.624920, 30.316484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877911, 33.537098, 30.165234>,  <39.461361, 34.146294, 30.223892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877911, 33.537098, 30.165234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.493946, 33.435444, 30.117933>,  <39.263569, 33.374451, 30.089554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.493946, 33.435444, 30.117933>,  <39.877911, 33.537098, 30.165234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493946, 33.435444, 30.117933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200610, -0.328245, -0.923044,
		0.195764, -0.909764, 0.366069,
		-0.959913, -0.254136, -0.118249,
		39.205971, 33.359203, 30.082458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923244, 32.952877, 29.678827>,  <39.877911, 33.537098, 30.165234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923244, 32.952877, 29.678827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539764, 33.064522, 29.656986>,  <39.309677, 33.131508, 29.643883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539764, 33.064522, 29.656986>,  <39.923244, 32.952877, 29.678827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539764, 33.064522, 29.656986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052337, -0.361847, -0.930767,
		-0.279545, -0.889473, 0.361513,
		-0.958705, 0.279112, -0.054600,
		39.252151, 33.148254, 29.640606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595043, 32.366707, 29.390896>,  <39.923244, 32.952877, 29.678827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595043, 32.366707, 29.390896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350422, 32.675045, 29.319561>,  <39.203648, 32.860046, 29.276760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350422, 32.675045, 29.319561>,  <39.595043, 32.366707, 29.390896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350422, 32.675045, 29.319561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008366, -0.231685, -0.972755,
		-0.791160, -0.593399, 0.148136,
		-0.611553, 0.770844, -0.178336,
		39.166958, 32.906300, 29.266060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077858, 32.111588, 28.982637>,  <39.595043, 32.366707, 29.390896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077858, 32.111588, 28.982637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071583, 32.506073, 28.916742>,  <39.067818, 32.742764, 28.877205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071583, 32.506073, 28.916742>,  <39.077858, 32.111588, 28.982637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071583, 32.506073, 28.916742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007863, -0.164875, -0.986283,
		-0.999846, -0.014175, 0.010341,
		-0.015685, 0.986213, -0.164738,
		39.066875, 32.801937, 28.867321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734776, 32.106213, 28.399137>,  <39.077858, 32.111588, 28.982637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734776, 32.106213, 28.399137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.889812, 32.474396, 28.419260>,  <38.982834, 32.695305, 28.431334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.889812, 32.474396, 28.419260>,  <38.734776, 32.106213, 28.399137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889812, 32.474396, 28.419260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000840, 0.054220, -0.998529,
		-0.921832, 0.387061, 0.020242,
		0.387589, 0.920458, 0.050307,
		39.006088, 32.750534, 28.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314735, 32.417561, 27.927469>,  <38.734776, 32.106213, 28.399137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314735, 32.417561, 27.927469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648373, 32.636692, 27.953314>,  <38.848557, 32.768169, 27.968821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648373, 32.636692, 27.953314>,  <38.314735, 32.417561, 27.927469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648373, 32.636692, 27.953314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004896, 0.109769, -0.993945,
		-0.551604, 0.829358, 0.088875,
		0.834092, 0.547829, 0.064609,
		38.898602, 32.801041, 27.972696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315868, 32.878578, 27.428024>,  <38.314735, 32.417561, 27.927469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315868, 32.878578, 27.428024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703121, 32.935040, 27.510782>,  <38.935471, 32.968918, 27.560436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703121, 32.935040, 27.510782>,  <38.315868, 32.878578, 27.428024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703121, 32.935040, 27.510782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169451, 0.239150, -0.956082,
		-0.184433, 0.960668, 0.207610,
		0.968127, 0.141154, 0.206893,
		38.993561, 32.977386, 27.572849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542255, 33.594173, 27.339149>,  <38.315868, 32.878578, 27.428024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542255, 33.594173, 27.339149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839859, 33.330963, 27.292749>,  <39.018421, 33.173038, 27.264910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839859, 33.330963, 27.292749>,  <38.542255, 33.594173, 27.339149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839859, 33.330963, 27.292749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084639, 0.265024, -0.960520,
		0.662788, 0.704817, 0.252874,
		0.744008, -0.658024, -0.116000,
		39.063061, 33.133556, 27.257950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243961, 34.129948, 27.713301>,  <38.542255, 33.594173, 27.339149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243961, 34.129948, 27.713301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972332, 34.365532, 27.538034>,  <37.809353, 34.506882, 27.432875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972332, 34.365532, 27.538034>,  <38.243961, 34.129948, 27.713301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972332, 34.365532, 27.538034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621461, -0.143561, 0.770179,
		0.390699, 0.795311, 0.463503,
		-0.679073, 0.588957, -0.438166,
		37.768612, 34.542221, 27.406584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118412, 34.722347, 28.228226>,  <38.243961, 34.129948, 27.713301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118412, 34.722347, 28.228226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800858, 34.701622, 27.985882>,  <37.610325, 34.689186, 27.840475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800858, 34.701622, 27.985882>,  <38.118412, 34.722347, 28.228226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800858, 34.701622, 27.985882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584782, -0.208045, 0.784058,
		-0.166670, 0.976746, 0.134864,
		-0.793883, -0.051813, -0.605859,
		37.562691, 34.686077, 27.804125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470577, 34.968521, 28.606174>,  <38.118412, 34.722347, 28.228226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470577, 34.968521, 28.606174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294239, 34.795750, 28.291443>,  <37.188438, 34.692089, 28.102604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294239, 34.795750, 28.291443>,  <37.470577, 34.968521, 28.606174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294239, 34.795750, 28.291443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584410, -0.527222, 0.616848,
		-0.681265, 0.731764, -0.019999,
		-0.440843, -0.431925, -0.786828,
		37.161987, 34.666172, 28.055395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775284, 35.198483, 28.654036>,  <37.470577, 34.968521, 28.606174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775284, 35.198483, 28.654036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783077, 34.857685, 28.444761>,  <36.787754, 34.653206, 28.319197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783077, 34.857685, 28.444761>,  <36.775284, 35.198483, 28.654036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783077, 34.857685, 28.444761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708036, -0.381220, 0.594437,
		-0.705907, 0.358853, -0.610672,
		0.019485, -0.851996, -0.523187,
		36.788921, 34.602085, 28.287806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997265, 35.138668, 28.537191>,  <36.775284, 35.198483, 28.654036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997265, 35.138668, 28.537191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198341, 34.793873, 28.511032>,  <36.318985, 34.586994, 28.495337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198341, 34.793873, 28.511032>,  <35.997265, 35.138668, 28.537191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198341, 34.793873, 28.511032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700895, -0.450684, 0.552839,
		-0.506016, -0.232068, -0.830718,
		0.502688, -0.861991, -0.065398,
		36.349148, 34.535275, 28.491413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545536, 34.710491, 28.190228>,  <35.997265, 35.138668, 28.537191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545536, 34.710491, 28.190228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809265, 34.502258, 28.407219>,  <35.967503, 34.377319, 28.537415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809265, 34.502258, 28.407219>,  <35.545536, 34.710491, 28.190228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809265, 34.502258, 28.407219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750299, -0.501991, 0.430181,
		0.048376, -0.690652, -0.721568,
		0.659326, -0.520582, 0.542480,
		36.007065, 34.346085, 28.569963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105381, 34.124390, 28.419622>,  <35.545536, 34.710491, 28.190228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105381, 34.124390, 28.419622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443619, 34.065659, 28.624914>,  <35.646561, 34.030418, 28.748089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443619, 34.065659, 28.624914>,  <35.105381, 34.124390, 28.419622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443619, 34.065659, 28.624914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522002, -0.428615, 0.737430,
		0.111702, -0.891477, -0.439081,
		0.845598, -0.146828, 0.513229,
		35.697300, 34.021610, 28.778883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934521, 33.562046, 28.792088>,  <35.105381, 34.124390, 28.419622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934521, 33.562046, 28.792088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244030, 33.740688, 28.971783>,  <35.429737, 33.847874, 29.079599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244030, 33.740688, 28.971783>,  <34.934521, 33.562046, 28.792088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244030, 33.740688, 28.971783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398203, -0.208611, 0.893261,
		0.492648, -0.870074, 0.016420,
		0.773778, 0.446602, 0.449238,
		35.476162, 33.874668, 29.106554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114922, 33.054195, 29.354965>,  <34.934521, 33.562046, 28.792088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114922, 33.054195, 29.354965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215111, 33.433395, 29.433504>,  <35.275223, 33.660915, 29.480627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215111, 33.433395, 29.433504>,  <35.114922, 33.054195, 29.354965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215111, 33.433395, 29.433504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444006, -0.067742, 0.893459,
		0.860304, -0.310964, 0.403952,
		0.250469, 0.948004, 0.196349,
		35.290253, 33.717796, 29.492409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359432, 32.933655, 30.014595>,  <35.114922, 33.054195, 29.354965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359432, 32.933655, 30.014595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294853, 33.328407, 30.015514>,  <35.256107, 33.565258, 30.016066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294853, 33.328407, 30.015514>,  <35.359432, 32.933655, 30.014595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294853, 33.328407, 30.015514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502284, -0.084176, 0.860596,
		0.849497, 0.137785, 0.509284,
		-0.161446, 0.986879, 0.002300,
		35.246418, 33.624470, 30.016205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572590, 33.105515, 30.708445>,  <35.359432, 32.933655, 30.014595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572590, 33.105515, 30.708445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362167, 33.419872, 30.578436>,  <35.235912, 33.608486, 30.500431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362167, 33.419872, 30.578436>,  <35.572590, 33.105515, 30.708445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362167, 33.419872, 30.578436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530990, -0.004989, 0.847364,
		0.664312, 0.618347, 0.419924,
		-0.526060, 0.785890, -0.325021,
		35.204350, 33.655640, 30.480930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672878, 33.701107, 31.293037>,  <35.572590, 33.105515, 30.708445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672878, 33.701107, 31.293037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369678, 33.809601, 31.055763>,  <35.187759, 33.874699, 30.913399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369678, 33.809601, 31.055763>,  <35.672878, 33.701107, 31.293037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369678, 33.809601, 31.055763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520145, 0.297368, 0.800638,
		0.393554, 0.915426, -0.084324,
		-0.758000, 0.271233, -0.593185,
		35.142277, 33.890972, 30.877808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397579, 34.261868, 31.669626>,  <35.672878, 33.701107, 31.293037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397579, 34.261868, 31.669626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112946, 34.157478, 31.408693>,  <34.942165, 34.094845, 31.252132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112946, 34.157478, 31.408693>,  <35.397579, 34.261868, 31.669626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112946, 34.157478, 31.408693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701375, 0.318673, 0.637589,
		0.041485, 0.911229, -0.409806,
		-0.711584, -0.260977, -0.652334,
		34.899471, 34.079185, 31.212994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043575, 34.764530, 31.476770>,  <35.397579, 34.261868, 31.669626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043575, 34.764530, 31.476770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772709, 34.477543, 31.411419>,  <34.610191, 34.305351, 31.372208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772709, 34.477543, 31.411419>,  <35.043575, 34.764530, 31.476770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772709, 34.477543, 31.411419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539593, 0.333212, 0.773181,
		-0.500292, 0.611728, -0.612778,
		-0.677162, -0.717467, -0.163380,
		34.569561, 34.262302, 31.362404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852436, 35.434666, 31.179054>,  <35.043575, 34.764530, 31.476770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852436, 35.434666, 31.179054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680191, 35.663406, 31.458357>,  <34.576843, 35.800652, 31.625938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680191, 35.663406, 31.458357>,  <34.852436, 35.434666, 31.179054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680191, 35.663406, 31.458357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392393, 0.578094, -0.715427,
		-0.812773, -0.582063, -0.024545,
		-0.430613, 0.571848, 0.698256,
		34.551006, 35.834961, 31.667833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249481, 35.925930, 30.694311>,  <34.852436, 35.434666, 31.179054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249481, 35.925930, 30.694311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366131, 36.297501, 30.785578>,  <35.436119, 36.520443, 30.840338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366131, 36.297501, 30.785578>,  <35.249481, 35.925930, 30.694311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366131, 36.297501, 30.785578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657123, -0.021218, -0.753484,
		-0.695088, 0.369664, -0.616605,
		0.291619, 0.928923, 0.228166,
		35.453617, 36.576176, 30.854027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147114, 36.524250, 30.073244>,  <35.249481, 35.925930, 30.694311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147114, 36.524250, 30.073244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482231, 36.509964, 30.291172>,  <35.683300, 36.501392, 30.421928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482231, 36.509964, 30.291172>,  <35.147114, 36.524250, 30.073244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482231, 36.509964, 30.291172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537900, 0.225127, -0.812393,
		-0.093639, 0.973675, 0.207821,
		0.837792, -0.035715, 0.544820,
		35.733570, 36.499249, 30.454618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533131, 37.158218, 30.024799>,  <35.147114, 36.524250, 30.073244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533131, 37.158218, 30.024799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788368, 36.859676, 30.100485>,  <35.941509, 36.680553, 30.145897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788368, 36.859676, 30.100485>,  <35.533131, 37.158218, 30.024799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788368, 36.859676, 30.100485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572267, 0.295303, -0.765053,
		0.515123, 0.596453, 0.615542,
		0.638090, -0.746351, 0.189213,
		35.979794, 36.635773, 30.157249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156208, 37.516663, 30.047434>,  <35.533131, 37.158218, 30.024799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156208, 37.516663, 30.047434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257931, 37.135899, 29.979095>,  <36.318966, 36.907440, 29.938091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257931, 37.135899, 29.979095>,  <36.156208, 37.516663, 30.047434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257931, 37.135899, 29.979095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476669, 0.277077, -0.834275,
		0.841495, 0.130724, 0.524211,
		0.254306, -0.951913, -0.170847,
		36.334221, 36.850323, 29.927841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831181, 37.387836, 30.218819>,  <36.156208, 37.516663, 30.047434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831181, 37.387836, 30.218819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705833, 37.131580, 29.938425>,  <36.630623, 36.977825, 29.770189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705833, 37.131580, 29.938425>,  <36.831181, 37.387836, 30.218819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705833, 37.131580, 29.938425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805231, 0.212035, -0.553754,
		0.503390, -0.737986, 0.449417,
		-0.313370, -0.640639, -0.700986,
		36.611824, 36.939388, 29.728128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457787, 37.056152, 29.912745>,  <36.831181, 37.387836, 30.218819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457787, 37.056152, 29.912745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201256, 36.924789, 29.635372>,  <37.047337, 36.845970, 29.468948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201256, 36.924789, 29.635372>,  <37.457787, 37.056152, 29.912745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201256, 36.924789, 29.635372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676779, 0.183668, -0.712907,
		0.361488, -0.926506, 0.104471,
		-0.641324, -0.328411, -0.693433,
		37.008858, 36.826267, 29.427341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807537, 36.571129, 29.533653>,  <37.457787, 37.056152, 29.912745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807537, 36.571129, 29.533653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509682, 36.678802, 29.289343>,  <37.330967, 36.743408, 29.142757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509682, 36.678802, 29.289343>,  <37.807537, 36.571129, 29.533653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509682, 36.678802, 29.289343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649221, 0.079629, -0.756420,
		-0.154981, -0.959792, -0.234055,
		-0.744643, 0.269184, -0.610776,
		37.286289, 36.759556, 29.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861633, 36.184341, 28.911259>,  <37.807537, 36.571129, 29.533653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861633, 36.184341, 28.911259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663322, 36.522003, 28.829678>,  <37.544334, 36.724602, 28.780729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663322, 36.522003, 28.829678>,  <37.861633, 36.184341, 28.911259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663322, 36.522003, 28.829678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522561, 0.102400, -0.846430,
		-0.693637, -0.526222, -0.491893,
		-0.495780, 0.844159, -0.203955,
		37.514587, 36.775249, 28.768492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831070, 36.082245, 28.215521>,  <37.861633, 36.184341, 28.911259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831070, 36.082245, 28.215521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767876, 36.469582, 28.292824>,  <37.729958, 36.701984, 28.339205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767876, 36.469582, 28.292824>,  <37.831070, 36.082245, 28.215521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767876, 36.469582, 28.292824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586523, 0.249475, -0.770554,
		-0.794374, -0.008388, -0.607370,
		-0.157988, 0.968345, 0.193257,
		37.720478, 36.760086, 28.350801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591408, 36.461750, 27.547274>,  <37.831070, 36.082245, 28.215521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591408, 36.461750, 27.547274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.732864, 36.749554, 27.786352>,  <37.817738, 36.922237, 27.929800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.732864, 36.749554, 27.786352>,  <37.591408, 36.461750, 27.547274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732864, 36.749554, 27.786352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571002, 0.340055, -0.747208,
		-0.740874, 0.605530, -0.290585,
		0.353642, 0.719511, 0.597697,
		37.838959, 36.965408, 27.965662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608696, 37.094151, 27.217606>,  <37.591408, 36.461750, 27.547274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608696, 37.094151, 27.217606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848801, 37.204491, 27.517897>,  <37.992863, 37.270695, 27.698071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848801, 37.204491, 27.517897>,  <37.608696, 37.094151, 27.217606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848801, 37.204491, 27.517897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547255, 0.542857, -0.637039,
		-0.583262, 0.793231, 0.174900,
		0.600264, 0.275846, 0.750728,
		38.028881, 37.287243, 27.743114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662117, 37.746262, 27.193604>,  <37.608696, 37.094151, 27.217606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662117, 37.746262, 27.193604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977287, 37.629890, 27.410688>,  <38.166389, 37.560070, 27.540939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977287, 37.629890, 27.410688>,  <37.662117, 37.746262, 27.193604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977287, 37.629890, 27.410688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589827, 0.609707, -0.529492,
		-0.176853, 0.737306, 0.651999,
		0.787926, -0.290925, 0.542711,
		38.213665, 37.542614, 27.573502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967880, 38.362080, 27.246250>,  <37.662117, 37.746262, 27.193604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967880, 38.362080, 27.246250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247189, 38.087677, 27.328033>,  <38.414776, 37.923035, 27.377104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247189, 38.087677, 27.328033>,  <37.967880, 38.362080, 27.246250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247189, 38.087677, 27.328033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669686, 0.525156, -0.525101,
		0.252852, 0.503588, 0.826114,
		0.698274, -0.686010, 0.204459,
		38.456669, 37.881874, 27.389372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598026, 38.733074, 27.301550>,  <37.967880, 38.362080, 27.246250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598026, 38.733074, 27.301550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702827, 38.352863, 27.234789>,  <38.765709, 38.124737, 27.194733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702827, 38.352863, 27.234789>,  <38.598026, 38.733074, 27.301550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702827, 38.352863, 27.234789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644123, 0.301020, -0.703201,
		0.718652, 0.076734, 0.691123,
		0.262001, -0.950526, -0.166902,
		38.781429, 38.067707, 27.184719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332561, 38.707489, 27.340733>,  <38.598026, 38.733074, 27.301550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332561, 38.707489, 27.340733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.209652, 38.388226, 27.133455>,  <39.135906, 38.196667, 27.009089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.209652, 38.388226, 27.133455>,  <39.332561, 38.707489, 27.340733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209652, 38.388226, 27.133455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611736, 0.251445, -0.750036,
		0.728946, -0.547462, 0.411002,
		-0.307272, -0.798161, -0.518192,
		39.117470, 38.148777, 26.977997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943390, 38.432896, 27.131092>,  <39.332561, 38.707489, 27.340733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943390, 38.432896, 27.131092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.658257, 38.304813, 26.881504>,  <39.487175, 38.227966, 26.731752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.658257, 38.304813, 26.881504>,  <39.943390, 38.432896, 27.131092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658257, 38.304813, 26.881504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557921, 0.280187, -0.781165,
		0.424960, -0.904966, -0.021079,
		-0.712835, -0.320204, -0.623968,
		39.444405, 38.208752, 26.694313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306911, 38.092987, 26.598919>,  <39.943390, 38.432896, 27.131092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306911, 38.092987, 26.598919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.940346, 38.142998, 26.446838>,  <39.720406, 38.173004, 26.355591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.940346, 38.142998, 26.446838>,  <40.306911, 38.092987, 26.598919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940346, 38.142998, 26.446838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389055, 0.055380, -0.919548,
		-0.093909, -0.990607, -0.099392,
		-0.916415, 0.125023, -0.380200,
		39.665421, 38.180504, 26.332779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272518, 37.657593, 26.030777>,  <40.306911, 38.092987, 26.598919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272518, 37.657593, 26.030777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.994362, 37.939491, 25.974545>,  <39.827469, 38.108631, 25.940805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.994362, 37.939491, 25.974545>,  <40.272518, 37.657593, 26.030777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994362, 37.939491, 25.974545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394979, 0.211394, -0.894038,
		-0.600352, -0.677233, -0.425362,
		-0.695391, 0.704747, -0.140582,
		39.785744, 38.150917, 25.932369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214462, 37.621162, 25.381805>,  <40.272518, 37.657593, 26.030777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214462, 37.621162, 25.381805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.012444, 37.962566, 25.433090>,  <39.891232, 38.167408, 25.463861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.012444, 37.962566, 25.433090>,  <40.214462, 37.621162, 25.381805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012444, 37.962566, 25.433090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285887, 0.305600, -0.908227,
		-0.814366, -0.422047, -0.398352,
		-0.505052, 0.853513, 0.128212,
		39.860928, 38.218620, 25.471554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729805, 37.628677, 24.898663>,  <40.214462, 37.621162, 25.381805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729805, 37.628677, 24.898663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.818237, 37.997299, 25.026320>,  <39.871296, 38.218472, 25.102913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.818237, 37.997299, 25.026320>,  <39.729805, 37.628677, 24.898663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818237, 37.997299, 25.026320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162976, 0.287726, -0.943744,
		-0.961540, 0.260660, -0.086581,
		0.221085, 0.921559, 0.319141,
		39.884563, 38.273766, 25.122063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432686, 38.088417, 24.455133>,  <39.729805, 37.628677, 24.898663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432686, 38.088417, 24.455133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716141, 38.305119, 24.635948>,  <39.886215, 38.435139, 24.744436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716141, 38.305119, 24.635948>,  <39.432686, 38.088417, 24.455133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716141, 38.305119, 24.635948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350893, 0.285226, -0.891919,
		-0.612132, 0.790664, 0.012025,
		0.708638, 0.541752, 0.452035,
		39.928734, 38.467644, 24.771559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360851, 38.796764, 24.111965>,  <39.432686, 38.088417, 24.455133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360851, 38.796764, 24.111965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.715256, 38.757931, 24.293316>,  <39.927898, 38.734631, 24.402126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.715256, 38.757931, 24.293316>,  <39.360851, 38.796764, 24.111965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715256, 38.757931, 24.293316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460048, 0.305832, -0.833561,
		-0.057733, 0.947123, 0.315634,
		0.886015, -0.097083, 0.453378,
		39.981060, 38.728806, 24.429329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676208, 39.511810, 24.040375>,  <39.360851, 38.796764, 24.111965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676208, 39.511810, 24.040375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.995022, 39.278912, 24.104548>,  <40.186310, 39.139172, 24.143051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.995022, 39.278912, 24.104548>,  <39.676208, 39.511810, 24.040375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995022, 39.278912, 24.104548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427349, 0.356006, -0.831043,
		0.426753, 0.730927, 0.532568,
		0.797029, -0.582242, 0.160434,
		40.234131, 39.104240, 24.152678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415543, 39.923965, 24.083277>,  <39.676208, 39.511810, 24.040375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415543, 39.923965, 24.083277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.527832, 39.555042, 23.977041>,  <40.595207, 39.333687, 23.913300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.527832, 39.555042, 23.977041>,  <40.415543, 39.923965, 24.083277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527832, 39.555042, 23.977041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511760, 0.377933, -0.771536,
		0.811971, 0.080671, 0.578096,
		0.280722, -0.922311, -0.265587,
		40.612049, 39.278347, 23.897366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145027, 39.928226, 24.113087>,  <40.415543, 39.923965, 24.083277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145027, 39.928226, 24.113087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054920, 39.624775, 23.868551>,  <41.000854, 39.442703, 23.721830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054920, 39.624775, 23.868551>,  <41.145027, 39.928226, 24.113087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054920, 39.624775, 23.868551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525229, 0.433928, -0.732012,
		0.820602, -0.485995, 0.300702,
		-0.225271, -0.758628, -0.611341,
		40.987339, 39.397186, 23.685148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740463, 39.908058, 23.709557>,  <41.145027, 39.928226, 24.113087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740463, 39.908058, 23.709557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.475536, 39.673588, 23.522913>,  <41.316578, 39.532906, 23.410927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.475536, 39.673588, 23.522913>,  <41.740463, 39.908058, 23.709557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475536, 39.673588, 23.522913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495397, 0.124581, -0.859686,
		0.562061, -0.800546, 0.207878,
		-0.662321, -0.586179, -0.466611,
		41.276840, 39.497734, 23.382929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079269, 39.333218, 23.404963>,  <41.740463, 39.908058, 23.709557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079269, 39.333218, 23.404963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.742672, 39.416908, 23.205717>,  <41.540714, 39.467121, 23.086170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.742672, 39.416908, 23.205717>,  <42.079269, 39.333218, 23.404963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742672, 39.416908, 23.205717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520332, 0.065675, -0.851435,
		-0.145429, -0.975659, -0.164132,
		-0.841489, 0.209227, -0.498116,
		41.490227, 39.479675, 23.056282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451290, 38.677235, 23.541319>,  <42.079269, 39.333218, 23.404963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451290, 38.677235, 23.541319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.829388, 38.734322, 23.658728>,  <43.056244, 38.768574, 23.729174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.829388, 38.734322, 23.658728>,  <42.451290, 38.677235, 23.541319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829388, 38.734322, 23.658728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281302, -0.099806, 0.954415,
		0.165505, -0.984719, -0.054195,
		0.945239, 0.142715, 0.293522,
		43.112961, 38.777138, 23.746784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653854, 38.037205, 24.033392>,  <42.451290, 38.677235, 23.541319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653854, 38.037205, 24.033392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.899292, 38.342060, 24.116003>,  <43.046555, 38.524971, 24.165569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.899292, 38.342060, 24.116003>,  <42.653854, 38.037205, 24.033392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899292, 38.342060, 24.116003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157755, -0.137959, 0.977794,
		0.773703, -0.632548, 0.035580,
		0.613593, 0.762136, 0.206527,
		43.083370, 38.570702, 24.177961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112309, 37.695229, 24.433470>,  <42.653854, 38.037205, 24.033392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112309, 37.695229, 24.433470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.190338, 38.078537, 24.517056>,  <43.237156, 38.308521, 24.567207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.190338, 38.078537, 24.517056>,  <43.112309, 37.695229, 24.433470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190338, 38.078537, 24.517056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192741, -0.171449, 0.966155,
		0.961664, -0.228747, 0.151253,
		0.195073, 0.958269, 0.208966,
		43.248859, 38.366016, 24.579744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586891, 37.743092, 24.983883>,  <43.112309, 37.695229, 24.433470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586891, 37.743092, 24.983883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.376141, 38.082741, 24.998816>,  <43.249691, 38.286530, 25.007774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.376141, 38.082741, 24.998816>,  <43.586891, 37.743092, 24.983883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376141, 38.082741, 24.998816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294093, -0.223341, 0.929316,
		0.797437, 0.478660, 0.367394,
		-0.526880, 0.849119, 0.037330,
		43.218075, 38.337475, 25.010015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813251, 38.013760, 25.596815>,  <43.586891, 37.743092, 24.983883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813251, 38.013760, 25.596815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.482525, 38.217285, 25.500912>,  <43.284088, 38.339401, 25.443369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.482525, 38.217285, 25.500912>,  <43.813251, 38.013760, 25.596815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482525, 38.217285, 25.500912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336954, -0.106747, 0.935450,
		0.450378, 0.854232, 0.259707,
		-0.826814, 0.508815, -0.239760,
		43.234482, 38.369930, 25.428984>
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
