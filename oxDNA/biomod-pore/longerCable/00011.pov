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
	<24.222794, 35.364220, 34.965519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147583, 34.974678, 34.914516>,  <24.102457, 34.740952, 34.883915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147583, 34.974678, 34.914516>,  <24.222794, 35.364220, 34.965519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.147583, 34.974678, 34.914516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062182, -0.117757, 0.991094,
		-0.980194, 0.194279, -0.038415,
		-0.188025, -0.973853, -0.127505,
		24.091175, 34.682522, 34.876266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873705, 35.391659, 35.249084>,  <24.222794, 35.364220, 34.965519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873705, 35.391659, 35.249084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602617, 35.648201, 35.105221>,  <24.439964, 35.802128, 35.018902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602617, 35.648201, 35.105221>,  <24.873705, 35.391659, 35.249084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602617, 35.648201, 35.105221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538381, 0.765949, 0.351379,
		0.500839, 0.044504, -0.864395,
		-0.677721, 0.641359, -0.359657,
		24.399302, 35.840611, 34.997322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228144, 35.939037, 34.859577>,  <24.873705, 35.391659, 35.249084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228144, 35.939037, 34.859577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895668, 36.063778, 35.043697>,  <24.696182, 36.138622, 35.154167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895668, 36.063778, 35.043697>,  <25.228144, 35.939037, 34.859577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895668, 36.063778, 35.043697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517385, 0.736958, 0.434978,
		-0.203570, 0.599699, -0.773899,
		-0.831187, 0.311856, 0.460298,
		24.646313, 36.157333, 35.181786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008661, 36.741882, 34.824051>,  <25.228144, 35.939037, 34.859577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008661, 36.741882, 34.824051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920013, 36.551186, 35.164310>,  <24.866825, 36.436768, 35.368465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920013, 36.551186, 35.164310>,  <25.008661, 36.741882, 34.824051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920013, 36.551186, 35.164310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525929, 0.676150, 0.515966,
		-0.821148, 0.561728, 0.100885,
		-0.221619, -0.476742, 0.850648,
		24.853527, 36.408161, 35.419506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689638, 37.158466, 35.301884>,  <25.008661, 36.741882, 34.824051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689638, 37.158466, 35.301884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889614, 36.888275, 35.518692>,  <25.009600, 36.726162, 35.648777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889614, 36.888275, 35.518692>,  <24.689638, 37.158466, 35.301884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889614, 36.888275, 35.518692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431343, 0.736906, 0.520493,
		-0.751003, -0.026416, 0.659770,
		0.499938, -0.675479, 0.542024,
		25.039595, 36.685631, 35.681297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651314, 37.259602, 36.040882>,  <24.689638, 37.158466, 35.301884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651314, 37.259602, 36.040882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028690, 37.152870, 35.962173>,  <25.255117, 37.088833, 35.914948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028690, 37.152870, 35.962173>,  <24.651314, 37.259602, 36.040882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028690, 37.152870, 35.962173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323741, 0.869392, 0.373296,
		0.071467, -0.415887, 0.906604,
		0.943443, -0.266826, -0.196772,
		25.311724, 37.072823, 35.903141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031918, 37.361259, 36.580341>,  <24.651314, 37.259602, 36.040882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031918, 37.361259, 36.580341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295471, 37.374237, 36.279724>,  <25.453604, 37.382023, 36.099354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295471, 37.374237, 36.279724>,  <25.031918, 37.361259, 36.580341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295471, 37.374237, 36.279724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258388, 0.928521, 0.266617,
		0.706476, -0.369860, 0.603404,
		0.658884, 0.032446, -0.751545,
		25.493135, 37.383972, 36.054260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733906, 37.416294, 36.917011>,  <25.031918, 37.361259, 36.580341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733906, 37.416294, 36.917011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687275, 37.559025, 36.546265>,  <25.659296, 37.644665, 36.323814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687275, 37.559025, 36.546265>,  <25.733906, 37.416294, 36.917011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687275, 37.559025, 36.546265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313441, 0.898757, 0.306580,
		0.942425, -0.254779, -0.216618,
		-0.116577, 0.356825, -0.926869,
		25.652302, 37.666073, 36.268204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182739, 37.809635, 36.863705>,  <25.733906, 37.416294, 36.917011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182739, 37.809635, 36.863705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988598, 37.947132, 36.542141>,  <25.872112, 38.029629, 36.349201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988598, 37.947132, 36.542141>,  <26.182739, 37.809635, 36.863705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988598, 37.947132, 36.542141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310753, 0.927258, 0.208867,
		0.817229, -0.148444, -0.556867,
		-0.485354, 0.343740, -0.803912,
		25.842991, 38.050255, 36.300968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593172, 38.237061, 36.530197>,  <26.182739, 37.809635, 36.863705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593172, 38.237061, 36.530197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246128, 38.347969, 36.365093>,  <26.037901, 38.414513, 36.266029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246128, 38.347969, 36.365093>,  <26.593172, 38.237061, 36.530197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246128, 38.347969, 36.365093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254181, 0.960755, 0.111093,
		0.427367, -0.008531, -0.904038,
		-0.867611, 0.277267, -0.412764,
		25.985846, 38.431149, 36.241264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789236, 38.742325, 36.109245>,  <26.593172, 38.237061, 36.530197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789236, 38.742325, 36.109245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396269, 38.797501, 36.159565>,  <26.160488, 38.830605, 36.189758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396269, 38.797501, 36.159565>,  <26.789236, 38.742325, 36.109245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396269, 38.797501, 36.159565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164283, 0.958845, 0.231576,
		-0.088682, 0.248172, -0.964648,
		-0.982419, 0.137939, 0.125803,
		26.101543, 38.838882, 36.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665749, 39.371559, 35.832726>,  <26.789236, 38.742325, 36.109245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665749, 39.371559, 35.832726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399342, 39.276878, 36.115681>,  <26.239498, 39.220070, 36.285454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399342, 39.276878, 36.115681>,  <26.665749, 39.371559, 35.832726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399342, 39.276878, 36.115681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223049, 0.841737, 0.491659,
		-0.711807, 0.485235, -0.507816,
		-0.666018, -0.236698, 0.707386,
		26.199535, 39.205868, 36.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546270, 39.609058, 36.540279>,  <26.665749, 39.371559, 35.832726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546270, 39.609058, 36.540279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212358, 39.819115, 36.474098>,  <26.012012, 39.945148, 36.434391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212358, 39.819115, 36.474098>,  <26.546270, 39.609058, 36.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212358, 39.819115, 36.474098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546757, -0.826041, 0.136794,
		-0.064834, 0.204655, 0.976685,
		-0.834778, 0.525140, -0.165451,
		25.961926, 39.976658, 36.424461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056087, 39.416035, 37.081940>,  <26.546270, 39.609058, 36.540279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056087, 39.416035, 37.081940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896698, 39.519085, 36.729839>,  <25.801064, 39.580914, 36.518578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896698, 39.519085, 36.729839>,  <26.056087, 39.416035, 37.081940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896698, 39.519085, 36.729839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529341, -0.848365, -0.008669,
		-0.749010, 0.462500, 0.474424,
		-0.398476, 0.257625, -0.880254,
		25.777155, 39.596371, 36.465763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281172, 39.194935, 36.959965>,  <26.056087, 39.416035, 37.081940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281172, 39.194935, 36.959965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463783, 39.249664, 36.608315>,  <25.573351, 39.282501, 36.397324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463783, 39.249664, 36.608315>,  <25.281172, 39.194935, 36.959965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463783, 39.249664, 36.608315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274696, -0.918154, -0.285544,
		-0.846240, 0.371852, -0.381581,
		0.456530, 0.136820, -0.879125,
		25.600742, 39.290710, 36.344578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824768, 38.930283, 36.337448>,  <25.281172, 39.194935, 36.959965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824768, 38.930283, 36.337448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219694, 38.917728, 36.275192>,  <25.456650, 38.910194, 36.237839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219694, 38.917728, 36.275192>,  <24.824768, 38.930283, 36.337448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219694, 38.917728, 36.275192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081267, -0.942028, -0.325544,
		-0.136399, 0.334063, -0.932629,
		0.987315, -0.031388, -0.155640,
		25.515888, 38.908314, 36.228500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867405, 38.677582, 35.674892>,  <24.824768, 38.930283, 36.337448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867405, 38.677582, 35.674892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227211, 38.622932, 35.840885>,  <25.443094, 38.590141, 35.940479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227211, 38.622932, 35.840885>,  <24.867405, 38.677582, 35.674892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227211, 38.622932, 35.840885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015244, -0.939452, -0.342342,
		0.436624, 0.314268, -0.842968,
		0.899515, -0.136624, 0.414977,
		25.497066, 38.581944, 35.965378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150131, 38.257008, 35.218201>,  <24.867405, 38.677582, 35.674892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150131, 38.257008, 35.218201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375090, 38.215996, 35.546394>,  <25.510065, 38.191391, 35.743313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375090, 38.215996, 35.546394>,  <25.150131, 38.257008, 35.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375090, 38.215996, 35.546394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061466, -0.984354, -0.165135,
		0.824580, 0.143303, -0.547296,
		0.562397, -0.102527, 0.820486,
		25.543808, 38.185238, 35.792542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727461, 37.782784, 35.057117>,  <25.150131, 38.257008, 35.218201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727461, 37.782784, 35.057117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862307, 37.778282, 35.433678>,  <25.943214, 37.775581, 35.659615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862307, 37.778282, 35.433678>,  <25.727461, 37.782784, 35.057117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862307, 37.778282, 35.433678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029801, -0.999555, -0.001276,
		0.940992, -0.027624, -0.337301,
		0.337115, -0.011253, 0.941396,
		25.963442, 37.774906, 35.716095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241570, 37.387554, 35.099983>,  <25.727461, 37.782784, 35.057117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241570, 37.387554, 35.099983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072783, 37.383507, 35.462605>,  <25.971510, 37.381077, 35.680176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072783, 37.383507, 35.462605>,  <26.241570, 37.387554, 35.099983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072783, 37.383507, 35.462605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206162, -0.972670, -0.106817,
		0.882859, -0.231970, 0.408350,
		-0.421968, -0.010119, 0.906554,
		25.946192, 37.380470, 35.734570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518801, 36.780170, 35.423653>,  <26.241570, 37.387554, 35.099983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518801, 36.780170, 35.423653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159029, 36.868324, 35.574627>,  <25.943167, 36.921215, 35.665211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159029, 36.868324, 35.574627>,  <26.518801, 36.780170, 35.423653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159029, 36.868324, 35.574627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283824, -0.951218, -0.120945,
		0.332373, -0.215907, 0.918102,
		-0.899429, 0.220381, 0.377439,
		25.889200, 36.934437, 35.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249966, 36.180367, 35.895725>,  <26.518801, 36.780170, 35.423653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249966, 36.180367, 35.895725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951746, 36.408585, 35.757954>,  <25.772814, 36.545517, 35.675289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951746, 36.408585, 35.757954>,  <26.249966, 36.180367, 35.895725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951746, 36.408585, 35.757954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553080, -0.818032, -0.157882,
		-0.371837, 0.072790, 0.925440,
		-0.745547, 0.570548, -0.344433,
		25.728083, 36.579750, 35.654625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634649, 36.035629, 36.305828>,  <26.249966, 36.180367, 35.895725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634649, 36.035629, 36.305828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574322, 36.149662, 35.927204>,  <25.538126, 36.218082, 35.700027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574322, 36.149662, 35.927204>,  <25.634649, 36.035629, 36.305828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574322, 36.149662, 35.927204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397744, -0.894093, -0.205908,
		-0.905016, 0.345434, 0.248237,
		-0.150819, 0.285084, -0.946562,
		25.529076, 36.235188, 35.643234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405952, 36.068359, 36.623299>,  <25.634649, 36.035629, 36.305828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405952, 36.068359, 36.623299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675674, 36.207439, 36.883888>,  <26.837507, 36.290890, 37.040241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675674, 36.207439, 36.883888>,  <26.405952, 36.068359, 36.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675674, 36.207439, 36.883888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468971, 0.479836, -0.741501,
		-0.570423, 0.805519, 0.160492,
		0.674303, 0.347703, 0.651474,
		26.877966, 36.311749, 37.079330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523216, 36.833778, 36.595718>,  <26.405952, 36.068359, 36.623299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523216, 36.833778, 36.595718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874834, 36.692230, 36.723503>,  <27.085806, 36.607304, 36.800175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874834, 36.692230, 36.723503>,  <26.523216, 36.833778, 36.595718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874834, 36.692230, 36.723503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441097, 0.349492, -0.826613,
		0.180861, 0.867545, 0.463309,
		0.879046, -0.353866, 0.319462,
		27.138548, 36.586071, 36.819344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057848, 37.441868, 36.693481>,  <26.523216, 36.833778, 36.595718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057848, 37.441868, 36.693481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268900, 37.104843, 36.650230>,  <27.395531, 36.902626, 36.624279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268900, 37.104843, 36.650230>,  <27.057848, 37.441868, 36.693481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268900, 37.104843, 36.650230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436072, 0.377886, -0.816727,
		0.729005, 0.383779, 0.566803,
		0.527630, -0.842565, -0.108125,
		27.427189, 36.852074, 36.617794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769367, 37.629997, 36.466858>,  <27.057848, 37.441868, 36.693481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769367, 37.629997, 36.466858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655554, 37.257889, 36.374226>,  <27.587267, 37.034622, 36.318645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655554, 37.257889, 36.374226>,  <27.769367, 37.629997, 36.466858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655554, 37.257889, 36.374226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228907, 0.168649, -0.958728,
		0.930937, -0.325799, 0.164960,
		-0.284532, -0.930275, -0.231579,
		27.570194, 36.978806, 36.304752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479418, 37.653461, 36.282700>,  <27.769367, 37.629997, 36.466858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479418, 37.653461, 36.282700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269709, 37.652111, 35.942081>,  <28.143883, 37.651302, 35.737709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269709, 37.652111, 35.942081>,  <28.479418, 37.653461, 36.282700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269709, 37.652111, 35.942081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198009, -0.972099, 0.125763,
		-0.828209, 0.234547, 0.508976,
		-0.524273, -0.003377, -0.851544,
		28.112427, 37.651096, 35.686619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237780, 37.112976, 36.780682>,  <28.479418, 37.653461, 36.282700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237780, 37.112976, 36.780682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343096, 36.727108, 36.784504>,  <28.406286, 36.495586, 36.786797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343096, 36.727108, 36.784504>,  <28.237780, 37.112976, 36.780682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343096, 36.727108, 36.784504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268191, 0.063673, -0.961259,
		0.926689, 0.255654, 0.275480,
		0.263291, -0.964669, 0.009559,
		28.422083, 36.437706, 36.787373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951590, 37.045517, 36.494770>,  <28.237780, 37.112976, 36.780682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951590, 37.045517, 36.494770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728979, 36.718376, 36.436264>,  <28.595413, 36.522091, 36.401161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728979, 36.718376, 36.436264>,  <28.951590, 37.045517, 36.494770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728979, 36.718376, 36.436264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336896, -0.061215, -0.939550,
		0.759460, -0.572161, 0.309600,
		-0.556526, -0.817853, -0.146268,
		28.562021, 36.473019, 36.392384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335699, 36.599415, 36.272068>,  <28.951590, 37.045517, 36.494770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335699, 36.599415, 36.272068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965429, 36.538998, 36.133324>,  <28.743267, 36.502747, 36.050076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965429, 36.538998, 36.133324>,  <29.335699, 36.599415, 36.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965429, 36.538998, 36.133324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358316, -0.055807, -0.931931,
		0.121404, -0.986951, 0.105780,
		-0.925673, -0.151043, -0.346865,
		28.687727, 36.493687, 36.029263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330055, 36.052910, 35.960171>,  <29.335699, 36.599415, 36.272068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330055, 36.052910, 35.960171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038700, 36.271828, 35.795288>,  <28.863886, 36.403179, 35.696358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038700, 36.271828, 35.795288>,  <29.330055, 36.052910, 35.960171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038700, 36.271828, 35.795288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386679, -0.168290, -0.906729,
		-0.565623, -0.819842, -0.089048,
		-0.728389, 0.547300, -0.412204,
		28.820183, 36.436016, 35.671627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058710, 35.670708, 35.350513>,  <29.330055, 36.052910, 35.960171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058710, 35.670708, 35.350513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032267, 36.069813, 35.354671>,  <29.016401, 36.309277, 35.357166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032267, 36.069813, 35.354671>,  <29.058710, 35.670708, 35.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032267, 36.069813, 35.354671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350897, 0.033001, -0.935833,
		-0.934078, -0.058217, -0.352292,
		-0.066108, 0.997759, 0.010397,
		29.012434, 36.369141, 35.357792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733971, 35.826336, 34.788040>,  <29.058710, 35.670708, 35.350513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733971, 35.826336, 34.788040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938568, 36.157532, 34.879959>,  <29.061327, 36.356251, 34.935112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938568, 36.157532, 34.879959>,  <28.733971, 35.826336, 34.788040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938568, 36.157532, 34.879959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114861, 0.199148, -0.973215,
		-0.851577, 0.524186, 0.006758,
		0.511492, 0.827991, 0.229798,
		29.092016, 36.405930, 34.948898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510153, 36.515606, 34.313755>,  <28.733971, 35.826336, 34.788040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510153, 36.515606, 34.313755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894142, 36.554714, 34.418747>,  <29.124535, 36.578178, 34.481743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894142, 36.554714, 34.418747>,  <28.510153, 36.515606, 34.313755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894142, 36.554714, 34.418747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247193, 0.144978, -0.958059,
		-0.131720, 0.984593, 0.115007,
		0.959972, 0.097766, 0.262481,
		29.182133, 36.584045, 34.497490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194189, 37.101978, 34.734516>,  <28.510153, 36.515606, 34.313755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194189, 37.101978, 34.734516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344320, 36.796913, 34.945221>,  <28.434399, 36.613873, 35.071644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344320, 36.796913, 34.945221>,  <28.194189, 37.101978, 34.734516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344320, 36.796913, 34.945221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631991, 0.205147, 0.747330,
		-0.678024, -0.613401, -0.404998,
		0.375329, -0.762663, 0.526758,
		28.456919, 36.568115, 35.103249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730930, 37.042465, 35.237530>,  <28.194189, 37.101978, 34.734516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730930, 37.042465, 35.237530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058687, 36.853188, 35.366947>,  <28.255342, 36.739620, 35.444595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058687, 36.853188, 35.366947>,  <27.730930, 37.042465, 35.237530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058687, 36.853188, 35.366947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394676, -0.056382, 0.917089,
		-0.415724, -0.879150, -0.232959,
		0.819393, -0.473199, 0.323540,
		28.304504, 36.711227, 35.464008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518534, 36.448822, 35.475464>,  <27.730930, 37.042465, 35.237530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518534, 36.448822, 35.475464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870970, 36.469936, 35.663460>,  <28.082432, 36.482605, 35.776257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870970, 36.469936, 35.663460>,  <27.518534, 36.448822, 35.475464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870970, 36.469936, 35.663460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449437, -0.215949, 0.866817,
		0.147254, -0.974977, -0.166545,
		0.881091, 0.052790, 0.469990,
		28.135298, 36.485771, 35.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578268, 35.891754, 35.884460>,  <27.518534, 36.448822, 35.475464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578268, 35.891754, 35.884460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785128, 36.204967, 36.022690>,  <27.909243, 36.392895, 36.105629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785128, 36.204967, 36.022690>,  <27.578268, 35.891754, 35.884460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785128, 36.204967, 36.022690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333256, -0.187680, 0.923968,
		0.788351, -0.592994, 0.163890,
		0.517149, 0.783029, 0.345576,
		27.940271, 36.439877, 36.126362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062113, 35.727810, 36.379639>,  <27.578268, 35.891754, 35.884460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062113, 35.727810, 36.379639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875807, 36.074413, 36.451443>,  <27.764023, 36.282375, 36.494526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875807, 36.074413, 36.451443>,  <28.062113, 35.727810, 36.379639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875807, 36.074413, 36.451443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345629, -0.364885, 0.864523,
		0.814619, 0.340618, 0.469441,
		-0.465764, 0.866509, 0.179515,
		27.736078, 36.334366, 36.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269529, 35.951706, 37.139511>,  <28.062113, 35.727810, 36.379639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269529, 35.951706, 37.139511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925333, 36.127869, 37.037067>,  <27.718815, 36.233566, 36.975601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925333, 36.127869, 37.037067>,  <28.269529, 35.951706, 37.139511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925333, 36.127869, 37.037067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403217, -0.281457, 0.870745,
		0.311397, 0.852540, 0.419771,
		-0.860493, 0.440406, -0.256114,
		27.667185, 36.259991, 36.960232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069052, 36.553478, 37.563046>,  <28.269529, 35.951706, 37.139511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069052, 36.553478, 37.563046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766537, 36.342377, 37.408379>,  <27.585028, 36.215717, 37.315578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766537, 36.342377, 37.408379>,  <28.069052, 36.553478, 37.563046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766537, 36.342377, 37.408379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411251, -0.076165, 0.908334,
		-0.508824, 0.845978, -0.159435,
		-0.756287, -0.527750, -0.386664,
		27.539650, 36.184052, 37.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492023, 36.854622, 37.647678>,  <28.069052, 36.553478, 37.563046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492023, 36.854622, 37.647678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429285, 36.459824, 37.633656>,  <27.391642, 36.222942, 37.625244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429285, 36.459824, 37.633656>,  <27.492023, 36.854622, 37.647678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429285, 36.459824, 37.633656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293081, 0.012621, 0.956004,
		-0.943134, 0.160221, -0.291251,
		-0.156848, -0.987000, -0.035055,
		27.382231, 36.163723, 37.623138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755104, 36.704399, 37.828278>,  <27.492023, 36.854622, 37.647678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755104, 36.704399, 37.828278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065083, 36.475895, 37.936440>,  <27.251070, 36.338791, 38.001335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065083, 36.475895, 37.936440>,  <26.755104, 36.704399, 37.828278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065083, 36.475895, 37.936440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309494, 0.030037, 0.950427,
		-0.551066, -0.820218, -0.153525,
		0.774945, -0.571262, 0.270405,
		27.297565, 36.304516, 38.017563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516819, 36.026760, 38.248482>,  <26.755104, 36.704399, 37.828278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516819, 36.026760, 38.248482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880783, 36.172081, 38.328560>,  <27.099161, 36.259274, 38.376606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880783, 36.172081, 38.328560>,  <26.516819, 36.026760, 38.248482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880783, 36.172081, 38.328560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203659, -0.029175, 0.978607,
		0.361374, -0.931213, 0.047444,
		0.909908, 0.363305, 0.200193,
		27.153755, 36.281071, 38.388618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675894, 35.899437, 38.914932>,  <26.516819, 36.026760, 38.248482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675894, 35.899437, 38.914932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031858, 36.064892, 38.838028>,  <27.245438, 36.164165, 38.791885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031858, 36.064892, 38.838028>,  <26.675894, 35.899437, 38.914932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031858, 36.064892, 38.838028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269678, -0.137185, 0.953128,
		0.367871, -0.900048, -0.233630,
		0.889912, 0.413634, -0.192257,
		27.298832, 36.188980, 38.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252014, 35.359379, 39.080967>,  <26.675894, 35.899437, 38.914932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252014, 35.359379, 39.080967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375572, 35.737583, 39.122139>,  <27.449707, 35.964504, 39.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375572, 35.737583, 39.122139>,  <27.252014, 35.359379, 39.080967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375572, 35.737583, 39.122139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528084, -0.260510, 0.808246,
		0.791019, -0.195307, -0.579779,
		0.308894, 0.945510, 0.102930,
		27.468241, 36.021236, 39.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943357, 35.411045, 39.056458>,  <27.252014, 35.359379, 39.080967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943357, 35.411045, 39.056458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818077, 35.727890, 39.266014>,  <27.742908, 35.917999, 39.391747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818077, 35.727890, 39.266014>,  <27.943357, 35.411045, 39.056458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818077, 35.727890, 39.266014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493726, -0.335422, 0.802325,
		0.811258, 0.509948, -0.286033,
		-0.313202, 0.792114, 0.523888,
		27.724117, 35.965523, 39.423180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556808, 35.894199, 39.341782>,  <27.943357, 35.411045, 39.056458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556808, 35.894199, 39.341782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218134, 35.873138, 39.553574>,  <28.014929, 35.860500, 39.680649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218134, 35.873138, 39.553574>,  <28.556808, 35.894199, 39.341782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218134, 35.873138, 39.553574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497247, -0.432484, 0.752133,
		0.189390, 0.900103, 0.392359,
		-0.846686, -0.052653, 0.529481,
		27.964128, 35.857342, 39.712418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653790, 36.138653, 40.061108>,  <28.556808, 35.894199, 39.341782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653790, 36.138653, 40.061108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384422, 35.843395, 40.077347>,  <28.222801, 35.666241, 40.087090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384422, 35.843395, 40.077347>,  <28.653790, 36.138653, 40.061108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384422, 35.843395, 40.077347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485695, -0.400374, 0.777046,
		-0.557320, 0.542995, 0.628133,
		-0.673420, -0.738144, 0.040593,
		28.182396, 35.621952, 40.089523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336035, 36.100426, 40.785202>,  <28.653790, 36.138653, 40.061108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336035, 36.100426, 40.785202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312489, 35.754162, 40.586338>,  <28.298361, 35.546402, 40.467022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312489, 35.754162, 40.586338>,  <28.336035, 36.100426, 40.785202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312489, 35.754162, 40.586338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497466, -0.457215, 0.737212,
		-0.865484, -0.203922, 0.457552,
		-0.058866, -0.865662, -0.497156,
		28.294828, 35.494465, 40.437191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034506, 36.258556, 41.168144>,  <28.336035, 36.100426, 40.785202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034506, 36.258556, 41.168144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015051, 36.547977, 40.892723>,  <29.003378, 36.721630, 40.727470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015051, 36.547977, 40.892723>,  <29.034506, 36.258556, 41.168144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015051, 36.547977, 40.892723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844676, 0.397713, 0.358257,
		0.533065, -0.564182, -0.630508,
		-0.048639, 0.723549, -0.688557,
		29.000460, 36.765041, 40.686157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645596, 36.532181, 41.592636>,  <29.034506, 36.258556, 41.168144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645596, 36.532181, 41.592636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907017, 36.325127, 41.813515>,  <30.063869, 36.200893, 41.946041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907017, 36.325127, 41.813515>,  <29.645596, 36.532181, 41.592636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907017, 36.325127, 41.813515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358625, -0.430684, -0.828191,
		0.666524, 0.739298, -0.095837,
		0.653555, -0.517640, 0.552192,
		30.103083, 36.169834, 41.979172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313965, 36.595249, 41.335957>,  <29.645596, 36.532181, 41.592636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313965, 36.595249, 41.335957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270679, 36.237259, 41.509075>,  <30.244707, 36.022465, 41.612946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270679, 36.237259, 41.509075>,  <30.313965, 36.595249, 41.335957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270679, 36.237259, 41.509075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173237, -0.445668, -0.878276,
		0.978917, -0.020066, 0.203270,
		-0.108214, -0.894974, 0.432796,
		30.238214, 35.968765, 41.638912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726568, 37.140377, 41.859612>,  <30.313965, 36.595249, 41.335957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726568, 37.140377, 41.859612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548857, 36.796650, 41.960960>,  <30.442230, 36.590416, 42.021770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548857, 36.796650, 41.960960>,  <30.726568, 37.140377, 41.859612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548857, 36.796650, 41.960960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616808, -0.088281, 0.782147,
		-0.649743, 0.503771, 0.569253,
		-0.444277, -0.859315, 0.253370,
		30.415573, 36.538857, 42.036972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650967, 37.218075, 42.561520>,  <30.726568, 37.140377, 41.859612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650967, 37.218075, 42.561520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629484, 36.819649, 42.533340>,  <30.616594, 36.580593, 42.516434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629484, 36.819649, 42.533340>,  <30.650967, 37.218075, 42.561520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629484, 36.819649, 42.533340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447510, -0.087079, 0.890029,
		-0.892665, 0.016272, 0.450428,
		-0.053706, -0.996068, -0.070450,
		30.613373, 36.520828, 42.512207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301395, 36.976028, 43.224113>,  <30.650967, 37.218075, 42.561520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301395, 36.976028, 43.224113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562052, 36.716011, 43.067749>,  <30.718445, 36.560001, 42.973930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562052, 36.716011, 43.067749>,  <30.301395, 36.976028, 43.224113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562052, 36.716011, 43.067749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557588, 0.061114, 0.827865,
		-0.514256, -0.757438, 0.402279,
		0.651641, -0.650041, -0.390910,
		30.757544, 36.521000, 42.950478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334282, 36.457932, 43.823219>,  <30.301395, 36.976028, 43.224113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334282, 36.457932, 43.823219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632835, 36.366821, 43.573090>,  <30.811968, 36.312157, 43.423012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632835, 36.366821, 43.573090>,  <30.334282, 36.457932, 43.823219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632835, 36.366821, 43.573090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576582, -0.247930, 0.778514,
		-0.332361, -0.941621, -0.053721,
		0.746384, -0.227773, -0.625324,
		30.856750, 36.298489, 43.385494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631405, 35.800716, 43.972904>,  <30.334282, 36.457932, 43.823219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631405, 35.800716, 43.972904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892708, 36.059677, 43.815868>,  <31.049490, 36.215054, 43.721645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892708, 36.059677, 43.815868>,  <30.631405, 35.800716, 43.972904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892708, 36.059677, 43.815868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591046, -0.111977, 0.798828,
		0.473199, -0.753880, -0.455792,
		0.653259, 0.647399, -0.392590,
		31.088686, 36.253899, 43.698090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356524, 35.477573, 43.895435>,  <30.631405, 35.800716, 43.972904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356524, 35.477573, 43.895435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413572, 35.873432, 43.901909>,  <31.447802, 36.110947, 43.905792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413572, 35.873432, 43.901909>,  <31.356524, 35.477573, 43.895435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413572, 35.873432, 43.901909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774642, -0.121786, 0.620563,
		0.616108, -0.075969, -0.783990,
		0.142622, 0.989645, 0.016185,
		31.456360, 36.170326, 43.906765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919178, 35.146370, 43.392757>,  <31.356524, 35.477573, 43.895435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919178, 35.146370, 43.392757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229591, 35.022388, 43.612469>,  <32.415840, 34.947998, 43.744293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229591, 35.022388, 43.612469>,  <31.919178, 35.146370, 43.392757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229591, 35.022388, 43.612469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558334, -0.067414, -0.826873,
		0.293324, 0.948358, 0.120744,
		0.776031, -0.309957, 0.549274,
		32.462402, 34.929401, 43.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492222, 35.559345, 43.348701>,  <31.919178, 35.146370, 43.392757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492222, 35.559345, 43.348701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574577, 35.170727, 43.395519>,  <32.623989, 34.937553, 43.423611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574577, 35.170727, 43.395519>,  <32.492222, 35.559345, 43.348701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574577, 35.170727, 43.395519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634436, 0.041457, -0.771863,
		0.745052, 0.233175, 0.624922,
		0.205887, -0.971551, 0.117047,
		32.636345, 34.879261, 43.430634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165077, 35.431721, 43.500992>,  <32.492222, 35.559345, 43.348701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165077, 35.431721, 43.500992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038681, 35.089230, 43.337521>,  <32.962841, 34.883736, 43.239437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038681, 35.089230, 43.337521>,  <33.165077, 35.431721, 43.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038681, 35.089230, 43.337521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611835, 0.145308, -0.777524,
		0.725124, -0.495735, 0.477956,
		-0.315995, -0.856231, -0.408675,
		32.943882, 34.832359, 43.214916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775761, 35.154591, 43.212639>,  <33.165077, 35.431721, 43.500992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775761, 35.154591, 43.212639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450390, 34.990528, 43.047665>,  <33.255165, 34.892090, 42.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450390, 34.990528, 43.047665>,  <33.775761, 35.154591, 43.212639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450390, 34.990528, 43.047665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413706, 0.090477, -0.905903,
		0.408877, -0.907517, 0.096087,
		-0.813429, -0.410155, -0.412440,
		33.206360, 34.867481, 42.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081913, 34.774040, 42.746288>,  <33.775761, 35.154591, 43.212639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081913, 34.774040, 42.746288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703556, 34.836407, 42.632465>,  <33.476540, 34.873829, 42.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703556, 34.836407, 42.632465>,  <34.081913, 34.774040, 42.746288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703556, 34.836407, 42.632465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312400, 0.200634, -0.928522,
		-0.087683, -0.967179, -0.238488,
		-0.945896, 0.155919, -0.284554,
		33.419788, 34.883183, 42.547100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207108, 34.647720, 42.039913>,  <34.081913, 34.774040, 42.746288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207108, 34.647720, 42.039913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885960, 34.879887, 42.094357>,  <33.693272, 35.019184, 42.127022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885960, 34.879887, 42.094357>,  <34.207108, 34.647720, 42.039913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885960, 34.879887, 42.094357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050566, 0.293794, -0.954530,
		-0.594009, -0.759478, -0.265227,
		-0.802867, 0.580411, 0.136113,
		33.645100, 35.054008, 42.135189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231419, 35.275276, 41.610588>,  <34.207108, 34.647720, 42.039913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231419, 35.275276, 41.610588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936806, 35.500145, 41.460133>,  <33.760036, 35.635067, 41.369858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936806, 35.500145, 41.460133>,  <34.231419, 35.275276, 41.610588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936806, 35.500145, 41.460133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188416, -0.704602, -0.684131,
		-0.649623, -0.433018, 0.624888,
		-0.736539, 0.562167, -0.376138,
		33.715843, 35.668797, 41.347290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690521, 34.792782, 41.513226>,  <34.231419, 35.275276, 41.610588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690521, 34.792782, 41.513226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665630, 35.094677, 41.251999>,  <33.650696, 35.275814, 41.095261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665630, 35.094677, 41.251999>,  <33.690521, 34.792782, 41.513226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665630, 35.094677, 41.251999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217834, -0.648833, -0.729085,
		-0.974000, 0.096894, 0.204780,
		-0.062224, 0.754737, -0.653070,
		33.646961, 35.321098, 41.056076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024864, 34.758408, 41.163902>,  <33.690521, 34.792782, 41.513226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024864, 34.758408, 41.163902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248032, 34.969318, 40.907558>,  <33.381931, 35.095867, 40.753754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248032, 34.969318, 40.907558>,  <33.024864, 34.758408, 41.163902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248032, 34.969318, 40.907558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255146, -0.625835, -0.737042,
		-0.789700, 0.574723, -0.214632,
		0.557919, 0.527280, -0.640860,
		33.415409, 35.127502, 40.715302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568436, 34.813530, 40.528999>,  <33.024864, 34.758408, 41.163902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568436, 34.813530, 40.528999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942028, 34.889500, 40.407936>,  <33.166183, 34.935081, 40.335297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942028, 34.889500, 40.407936>,  <32.568436, 34.813530, 40.528999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942028, 34.889500, 40.407936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131533, -0.604808, -0.785434,
		-0.332223, 0.773393, -0.539900,
		0.933985, 0.189925, -0.302657,
		33.222225, 34.946476, 40.317139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588379, 35.007374, 39.818733>,  <32.568436, 34.813530, 40.528999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588379, 35.007374, 39.818733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966335, 34.901009, 39.895126>,  <33.193108, 34.837189, 39.940960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966335, 34.901009, 39.895126>,  <32.588379, 35.007374, 39.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966335, 34.901009, 39.895126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008349, -0.602721, -0.797908,
		0.327285, 0.752340, -0.571725,
		0.944889, -0.265917, 0.190980,
		33.249802, 34.821232, 39.952419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912979, 35.196289, 39.238926>,  <32.588379, 35.007374, 39.818733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912979, 35.196289, 39.238926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164860, 34.931984, 39.402325>,  <33.315987, 34.773399, 39.500366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164860, 34.931984, 39.402325>,  <32.912979, 35.196289, 39.238926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164860, 34.931984, 39.402325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044355, -0.494411, -0.868096,
		0.775573, 0.564757, -0.282021,
		0.629697, -0.660763, 0.408501,
		33.353767, 34.733753, 39.524876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483829, 35.264832, 38.874535>,  <32.912979, 35.196289, 39.238926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483829, 35.264832, 38.874535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484619, 34.900169, 39.038914>,  <33.485092, 34.681374, 39.137543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484619, 34.900169, 39.038914>,  <33.483829, 35.264832, 38.874535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484619, 34.900169, 39.038914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237814, -0.398734, -0.885695,
		0.971309, 0.099479, 0.216017,
		0.001974, -0.911655, 0.410951,
		33.485210, 34.626675, 39.162201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123421, 35.003197, 38.673180>,  <33.483829, 35.264832, 38.874535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123421, 35.003197, 38.673180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914726, 34.687840, 38.803551>,  <33.789509, 34.498627, 38.881771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914726, 34.687840, 38.803551>,  <34.123421, 35.003197, 38.673180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914726, 34.687840, 38.803551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321904, -0.535736, -0.780618,
		0.790044, -0.302360, 0.533300,
		-0.521736, -0.788394, 0.325924,
		33.758205, 34.451321, 38.901329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582085, 34.437912, 38.552364>,  <34.123421, 35.003197, 38.673180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582085, 34.437912, 38.552364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233440, 34.250271, 38.609249>,  <34.024254, 34.137684, 38.643379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233440, 34.250271, 38.609249>,  <34.582085, 34.437912, 38.552364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233440, 34.250271, 38.609249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215649, -0.627498, -0.748159,
		0.440207, -0.621438, 0.648099,
		-0.871615, -0.469107, 0.142216,
		33.971954, 34.109539, 38.651913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686104, 33.735527, 38.453701>,  <34.582085, 34.437912, 38.552364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686104, 33.735527, 38.453701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293076, 33.763771, 38.384926>,  <34.057259, 33.780716, 38.343662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293076, 33.763771, 38.384926>,  <34.686104, 33.735527, 38.453701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293076, 33.763771, 38.384926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102781, -0.564338, -0.819121,
		-0.154870, -0.822519, 0.547247,
		-0.982574, 0.070611, -0.171938,
		33.998302, 33.784954, 38.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509022, 33.040771, 38.285389>,  <34.686104, 33.735527, 38.453701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509022, 33.040771, 38.285389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221596, 33.284935, 38.152084>,  <34.049141, 33.431431, 38.072102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221596, 33.284935, 38.152084>,  <34.509022, 33.040771, 38.285389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221596, 33.284935, 38.152084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025464, -0.501973, -0.864508,
		-0.694990, -0.612722, 0.376245,
		-0.718568, 0.610406, -0.333264,
		34.006023, 33.468056, 38.052105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116051, 32.589680, 38.020222>,  <34.509022, 33.040771, 38.285389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116051, 32.589680, 38.020222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013309, 32.927940, 37.833073>,  <33.951664, 33.130898, 37.720783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013309, 32.927940, 37.833073>,  <34.116051, 32.589680, 38.020222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013309, 32.927940, 37.833073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135861, -0.510899, -0.848837,
		-0.956854, -0.154457, 0.246115,
		-0.256849, 0.845651, -0.467872,
		33.936256, 33.181637, 37.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759869, 32.354797, 37.439571>,  <34.116051, 32.589680, 38.020222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759869, 32.354797, 37.439571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788830, 32.727051, 37.296078>,  <33.806206, 32.950401, 37.209984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788830, 32.727051, 37.296078>,  <33.759869, 32.354797, 37.439571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788830, 32.727051, 37.296078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082260, -0.352876, -0.932047,
		-0.993978, 0.096988, 0.051006,
		0.072399, 0.930630, -0.358730,
		33.810551, 33.006241, 37.188457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101826, 32.538734, 37.043800>,  <33.759869, 32.354797, 37.439571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101826, 32.538734, 37.043800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417130, 32.745251, 36.909882>,  <33.606312, 32.869160, 36.829533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417130, 32.745251, 36.909882>,  <33.101826, 32.538734, 37.043800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417130, 32.745251, 36.909882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099308, -0.430206, -0.897251,
		-0.607274, 0.740516, -0.287843,
		0.788261, 0.516293, -0.334793,
		33.653606, 32.900139, 36.809444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777218, 32.840069, 36.469006>,  <33.101826, 32.538734, 37.043800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777218, 32.840069, 36.469006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174858, 32.848167, 36.426399>,  <33.413445, 32.853027, 36.400833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174858, 32.848167, 36.426399>,  <32.777218, 32.840069, 36.469006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174858, 32.848167, 36.426399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102899, -0.133492, -0.985693,
		-0.034178, 0.990843, -0.130622,
		0.994104, 0.020248, -0.106519,
		33.473091, 32.854240, 36.394444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933399, 33.273335, 35.888718>,  <32.777218, 32.840069, 36.469006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933399, 33.273335, 35.888718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275452, 33.068954, 35.923771>,  <33.480682, 32.946327, 35.944805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275452, 33.068954, 35.923771>,  <32.933399, 33.273335, 35.888718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275452, 33.068954, 35.923771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066244, -0.275360, -0.959056,
		0.514158, 0.814315, -0.269317,
		0.855133, -0.510947, 0.087635,
		33.531990, 32.915668, 35.950062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345230, 33.541878, 35.316669>,  <32.933399, 33.273335, 35.888718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345230, 33.541878, 35.316669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480221, 33.178665, 35.415936>,  <33.561214, 32.960735, 35.475494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480221, 33.178665, 35.415936>,  <33.345230, 33.541878, 35.316669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480221, 33.178665, 35.415936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107518, -0.224726, -0.968472,
		0.935175, 0.353515, 0.021791,
		0.337472, -0.908034, 0.248168,
		33.581463, 32.906254, 35.490387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836803, 33.406353, 34.742249>,  <33.345230, 33.541878, 35.316669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836803, 33.406353, 34.742249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792641, 33.039585, 34.895645>,  <33.766144, 32.819523, 34.987682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792641, 33.039585, 34.895645>,  <33.836803, 33.406353, 34.742249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792641, 33.039585, 34.895645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008850, -0.386742, -0.922145,
		0.993847, -0.098417, 0.050814,
		-0.110406, -0.916921, 0.383491,
		33.759518, 32.764507, 35.010693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327335, 33.034538, 34.351784>,  <33.836803, 33.406353, 34.742249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327335, 33.034538, 34.351784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107033, 32.754642, 34.533791>,  <33.974850, 32.586704, 34.642994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107033, 32.754642, 34.533791>,  <34.327335, 33.034538, 34.351784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107033, 32.754642, 34.533791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013097, -0.552323, -0.833528,
		0.834564, -0.453110, 0.313359,
		-0.550755, -0.699736, 0.455014,
		33.941807, 32.544720, 34.670296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575001, 32.341557, 34.213287>,  <34.327335, 33.034538, 34.351784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575001, 32.341557, 34.213287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199436, 32.275749, 34.334206>,  <33.974098, 32.236263, 34.406757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199436, 32.275749, 34.334206>,  <34.575001, 32.341557, 34.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199436, 32.275749, 34.334206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202002, -0.447702, -0.871067,
		0.278647, -0.878917, 0.387118,
		-0.938909, -0.164522, 0.302293,
		33.917763, 32.226391, 34.424892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498375, 31.607439, 34.106037>,  <34.575001, 32.341557, 34.213287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498375, 31.607439, 34.106037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127529, 31.756638, 34.120674>,  <33.905022, 31.846157, 34.129456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127529, 31.756638, 34.120674>,  <34.498375, 31.607439, 34.106037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127529, 31.756638, 34.120674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168375, -0.327292, -0.929801,
		-0.334861, -0.868180, 0.366240,
		-0.927102, 0.373019, 0.036582,
		33.849396, 31.868536, 34.131653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137886, 31.116098, 33.888142>,  <34.498375, 31.607439, 34.106037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137886, 31.116098, 33.888142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882046, 31.420845, 33.847214>,  <33.728542, 31.603693, 33.822655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882046, 31.420845, 33.847214>,  <34.137886, 31.116098, 33.888142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882046, 31.420845, 33.847214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202134, -0.295115, -0.933836,
		-0.741656, -0.576598, 0.342755,
		-0.639600, 0.761867, -0.102324,
		33.690166, 31.649405, 33.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532833, 30.899744, 33.600876>,  <34.137886, 31.116098, 33.888142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532833, 30.899744, 33.600876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523685, 31.286940, 33.500896>,  <33.518196, 31.519257, 33.440907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523685, 31.286940, 33.500896>,  <33.532833, 30.899744, 33.600876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523685, 31.286940, 33.500896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165509, -0.250232, -0.953934,
		-0.985943, 0.019550, 0.165934,
		-0.022873, 0.967988, -0.249951,
		33.516823, 31.577335, 33.425911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897831, 31.076246, 33.202248>,  <33.532833, 30.899744, 33.600876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897831, 31.076246, 33.202248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153568, 31.369125, 33.108330>,  <33.307011, 31.544853, 33.051979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153568, 31.369125, 33.108330>,  <32.897831, 31.076246, 33.202248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153568, 31.369125, 33.108330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258881, -0.082556, -0.962375,
		-0.724031, 0.676072, 0.136771,
		0.639343, 0.732197, -0.234796,
		33.345371, 31.588785, 33.037891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576141, 31.464945, 32.611565>,  <32.897831, 31.076246, 33.202248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576141, 31.464945, 32.611565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959614, 31.577148, 32.592606>,  <33.189697, 31.644470, 32.581230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959614, 31.577148, 32.592606>,  <32.576141, 31.464945, 32.611565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959614, 31.577148, 32.592606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054241, 0.016662, -0.998389,
		-0.279267, 0.959707, 0.031189,
		0.958680, 0.280509, -0.047402,
		33.247219, 31.661301, 32.578384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620487, 31.942007, 32.020649>,  <32.576141, 31.464945, 32.611565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620487, 31.942007, 32.020649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002560, 31.834162, 32.069530>,  <33.231804, 31.769455, 32.098862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002560, 31.834162, 32.069530>,  <32.620487, 31.942007, 32.020649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002560, 31.834162, 32.069530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113158, -0.048911, -0.992372,
		0.273536, 0.961725, -0.016210,
		0.955182, -0.269615, 0.122206,
		33.289116, 31.753277, 32.106194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004250, 32.250080, 31.553839>,  <32.620487, 31.942007, 32.020649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004250, 32.250080, 31.553839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237621, 31.936678, 31.639383>,  <33.377644, 31.748636, 31.690710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237621, 31.936678, 31.639383>,  <33.004250, 32.250080, 31.553839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237621, 31.936678, 31.639383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034856, -0.238922, -0.970413,
		0.811418, 0.573619, -0.112084,
		0.583426, -0.783504, 0.213859,
		33.412651, 31.701628, 31.703541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654633, 32.404526, 31.208454>,  <33.004250, 32.250080, 31.553839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654633, 32.404526, 31.208454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601315, 32.013409, 31.273134>,  <33.569324, 31.778738, 31.311943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601315, 32.013409, 31.273134>,  <33.654633, 32.404526, 31.208454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601315, 32.013409, 31.273134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221856, -0.188455, -0.956695,
		0.965926, -0.091645, 0.242050,
		-0.133292, -0.977796, 0.161701,
		33.561329, 31.720070, 31.321644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874702, 32.149620, 30.581062>,  <33.654633, 32.404526, 31.208454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874702, 32.149620, 30.581062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740753, 31.819035, 30.762087>,  <33.660381, 31.620682, 30.870701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740753, 31.819035, 30.762087>,  <33.874702, 32.149620, 30.581062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740753, 31.819035, 30.762087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095254, -0.507524, -0.856356,
		0.937435, -0.243666, 0.248682,
		-0.334877, -0.826466, 0.452560,
		33.640289, 31.571095, 30.897856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406181, 31.566381, 30.792431>,  <33.874702, 32.149620, 30.581062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406181, 31.566381, 30.792431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040932, 31.440329, 30.688976>,  <33.821781, 31.364697, 30.626904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040932, 31.440329, 30.688976>,  <34.406181, 31.566381, 30.792431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040932, 31.440329, 30.688976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382015, -0.439874, -0.812758,
		0.142360, -0.840953, 0.522046,
		-0.913126, -0.315133, -0.258636,
		33.766994, 31.345789, 30.611385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525513, 30.917629, 30.538404>,  <34.406181, 31.566381, 30.792431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525513, 30.917629, 30.538404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148048, 30.988773, 30.426790>,  <33.921570, 31.031460, 30.359821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148048, 30.988773, 30.426790>,  <34.525513, 30.917629, 30.538404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148048, 30.988773, 30.426790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159869, -0.493262, -0.855064,
		-0.289720, -0.851504, 0.437040,
		-0.943665, 0.177860, -0.279037,
		33.864948, 31.042131, 30.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357277, 30.342392, 30.104088>,  <34.525513, 30.917629, 30.538404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357277, 30.342392, 30.104088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072876, 30.603659, 29.999897>,  <33.902233, 30.760418, 29.937382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072876, 30.603659, 29.999897>,  <34.357277, 30.342392, 30.104088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072876, 30.603659, 29.999897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273138, -0.084811, -0.958229,
		-0.647973, -0.752451, -0.118103,
		-0.711004, 0.653165, -0.260478,
		33.859573, 30.799608, 29.921753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999195, 29.965660, 29.589996>,  <34.357277, 30.342392, 30.104088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999195, 29.965660, 29.589996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939537, 30.358204, 29.541519>,  <33.903744, 30.593731, 29.512432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939537, 30.358204, 29.541519>,  <33.999195, 29.965660, 29.589996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939537, 30.358204, 29.541519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083377, -0.109647, -0.990467,
		-0.985294, -0.157829, -0.065469,
		-0.149146, 0.981360, -0.121194,
		33.894794, 30.652613, 29.505161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493210, 30.088570, 28.995262>,  <33.999195, 29.965660, 29.589996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493210, 30.088570, 28.995262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695656, 30.431293, 29.034718>,  <33.817123, 30.636929, 29.058392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695656, 30.431293, 29.034718>,  <33.493210, 30.088570, 28.995262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695656, 30.431293, 29.034718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133909, 0.034916, -0.990378,
		-0.852009, 0.514450, -0.097064,
		0.506111, 0.856809, 0.098638,
		33.847488, 30.688335, 29.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340199, 30.382277, 28.476410>,  <33.493210, 30.088570, 28.995262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340199, 30.382277, 28.476410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673157, 30.589794, 28.554348>,  <33.872932, 30.714306, 28.601110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673157, 30.589794, 28.554348>,  <33.340199, 30.382277, 28.476410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673157, 30.589794, 28.554348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180096, 0.079274, -0.980449,
		-0.524099, 0.851215, -0.027446,
		0.832398, 0.518795, 0.194847,
		33.922874, 30.745432, 28.612803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403511, 30.808786, 27.875736>,  <33.340199, 30.382277, 28.476410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403511, 30.808786, 27.875736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755505, 30.864815, 28.057291>,  <33.966702, 30.898432, 28.166224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755505, 30.864815, 28.057291>,  <33.403511, 30.808786, 27.875736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755505, 30.864815, 28.057291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430714, 0.167633, -0.886784,
		-0.200297, 0.975848, 0.087184,
		0.879981, 0.140069, 0.453887,
		34.019501, 30.906836, 28.193457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499294, 31.465380, 27.670465>,  <33.403511, 30.808786, 27.875736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499294, 31.465380, 27.670465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859020, 31.314699, 27.759300>,  <34.074856, 31.224291, 27.812601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859020, 31.314699, 27.759300>,  <33.499294, 31.465380, 27.670465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859020, 31.314699, 27.759300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338204, 0.277210, -0.899318,
		0.277210, 0.883883, 0.376702,
		0.899318, -0.376702, 0.222087,
		34.128815, 31.201689, 27.825926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945747, 32.070744, 27.638935>,  <33.499294, 31.465380, 27.670465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945747, 32.070744, 27.638935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133038, 31.721336, 27.585672>,  <34.245411, 31.511692, 27.553715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133038, 31.721336, 27.585672>,  <33.945747, 32.070744, 27.638935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133038, 31.721336, 27.585672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225609, 0.263887, -0.937798,
		0.854323, 0.409057, 0.320632,
		0.468223, -0.873520, -0.133158,
		34.273506, 31.459280, 27.545725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446980, 32.225319, 27.158157>,  <33.945747, 32.070744, 27.638935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446980, 32.225319, 27.158157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414089, 31.827879, 27.127190>,  <34.394356, 31.589415, 27.108608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414089, 31.827879, 27.127190>,  <34.446980, 32.225319, 27.158157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414089, 31.827879, 27.127190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323766, 0.046838, -0.944977,
		0.942557, -0.102767, 0.317843,
		-0.082226, -0.993602, -0.077420,
		34.389423, 31.529799, 27.103964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906498, 32.086082, 26.741209>,  <34.446980, 32.225319, 27.158157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906498, 32.086082, 26.741209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701050, 31.743490, 26.720659>,  <34.577782, 31.537935, 26.708328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701050, 31.743490, 26.720659>,  <34.906498, 32.086082, 26.741209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701050, 31.743490, 26.720659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271968, -0.105721, -0.956481,
		0.813776, -0.505237, 0.287235,
		-0.513617, -0.856480, -0.051375,
		34.546967, 31.486546, 26.705246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338028, 31.508724, 26.447340>,  <34.906498, 32.086082, 26.741209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338028, 31.508724, 26.447340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954762, 31.412533, 26.385263>,  <34.724800, 31.354818, 26.348017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954762, 31.412533, 26.385263>,  <35.338028, 31.508724, 26.447340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954762, 31.412533, 26.385263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168363, -0.035106, -0.985100,
		0.231449, -0.970019, 0.074125,
		-0.958168, -0.240480, -0.155191,
		34.667313, 31.340389, 26.338707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411819, 31.052364, 25.844019>,  <35.338028, 31.508724, 26.447340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411819, 31.052364, 25.844019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021187, 31.136368, 25.862740>,  <34.786808, 31.186769, 25.873972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021187, 31.136368, 25.862740>,  <35.411819, 31.052364, 25.844019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021187, 31.136368, 25.862740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061205, -0.062607, -0.996160,
		-0.206271, -0.975693, 0.073995,
		-0.976579, 0.210007, 0.046803,
		34.728214, 31.199369, 25.876781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979141, 30.594252, 25.393768>,  <35.411819, 31.052364, 25.844019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979141, 30.594252, 25.393768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762447, 30.929125, 25.423828>,  <34.632431, 31.130049, 25.441864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762447, 30.929125, 25.423828>,  <34.979141, 30.594252, 25.393768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762447, 30.929125, 25.423828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038489, 0.064606, -0.997168,
		-0.839667, -0.543095, -0.002777,
		-0.541737, 0.837182, 0.075151,
		34.599926, 31.180279, 25.446373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448891, 30.486130, 24.990955>,  <34.979141, 30.594252, 25.393768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448891, 30.486130, 24.990955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527279, 30.875551, 25.037933>,  <34.574310, 31.109203, 25.066120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527279, 30.875551, 25.037933>,  <34.448891, 30.486130, 24.990955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527279, 30.875551, 25.037933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130806, 0.144649, -0.980799,
		-0.971847, 0.176842, 0.155693,
		0.195967, 0.973552, 0.117445,
		34.586067, 31.167618, 25.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896561, 30.809084, 24.727104>,  <34.448891, 30.486130, 24.990955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896561, 30.809084, 24.727104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181149, 31.089773, 24.712149>,  <34.351902, 31.258186, 24.703175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181149, 31.089773, 24.712149>,  <33.896561, 30.809084, 24.727104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181149, 31.089773, 24.712149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500172, 0.468309, -0.728365,
		-0.493601, 0.536909, 0.684169,
		0.711468, 0.701723, -0.037389,
		34.394588, 31.300291, 24.700932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516006, 31.508991, 24.787262>,  <33.896561, 30.809084, 24.727104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516006, 31.508991, 24.787262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831474, 31.536585, 24.542889>,  <34.020756, 31.553141, 24.396265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831474, 31.536585, 24.542889>,  <33.516006, 31.508991, 24.787262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831474, 31.536585, 24.542889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528546, 0.583671, -0.616415,
		0.314061, 0.809055, 0.496785,
		0.788673, 0.068982, -0.610931,
		34.068077, 31.557280, 24.359610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582882, 32.322926, 24.467934>,  <33.516006, 31.508991, 24.787262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582882, 32.322926, 24.467934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777184, 32.060604, 24.236776>,  <33.893764, 31.903210, 24.098082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777184, 32.060604, 24.236776>,  <33.582882, 32.322926, 24.467934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777184, 32.060604, 24.236776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161850, 0.582219, -0.796759,
		0.858981, 0.480560, 0.176673,
		0.485753, -0.655807, -0.577894,
		33.922909, 31.863863, 24.063408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112484, 32.649540, 24.133661>,  <33.582882, 32.322926, 24.467934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112484, 32.649540, 24.133661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029728, 32.323120, 23.917788>,  <33.980076, 32.127270, 23.788263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029728, 32.323120, 23.917788>,  <34.112484, 32.649540, 24.133661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029728, 32.323120, 23.917788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000222, 0.551660, -0.834069,
		0.978364, -0.172442, -0.114314,
		-0.206892, -0.816049, -0.539686,
		33.967659, 32.078304, 23.755882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653240, 32.597225, 23.618658>,  <34.112484, 32.649540, 24.133661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653240, 32.597225, 23.618658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299408, 32.442261, 23.514790>,  <34.087109, 32.349281, 23.452469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299408, 32.442261, 23.514790>,  <34.653240, 32.597225, 23.618658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299408, 32.442261, 23.514790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046421, 0.480873, -0.875561,
		0.464066, -0.786560, -0.407388,
		-0.884583, -0.387407, -0.259670,
		34.034035, 32.326038, 23.436888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630909, 32.448986, 22.961021>,  <34.653240, 32.597225, 23.618658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630909, 32.448986, 22.961021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250652, 32.546761, 23.037481>,  <34.022499, 32.605427, 23.083357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250652, 32.546761, 23.037481>,  <34.630909, 32.448986, 22.961021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250652, 32.546761, 23.037481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005516, 0.602604, -0.798021,
		-0.310252, -0.759683, -0.571510,
		-0.950638, 0.244436, 0.191149,
		33.965462, 32.620090, 23.094826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323086, 32.659325, 23.048973>,  <34.630909, 32.448986, 22.961021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323086, 32.659325, 23.048973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698765, 32.793602, 23.077845>,  <35.924171, 32.874168, 23.095167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698765, 32.793602, 23.077845>,  <35.323086, 32.659325, 23.048973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698765, 32.793602, 23.077845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151456, 0.216365, 0.964493,
		0.308160, -0.916785, 0.254053,
		0.939201, 0.335696, 0.072178,
		35.980526, 32.894310, 23.099499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695980, 32.457214, 23.667936>,  <35.323086, 32.659325, 23.048973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695980, 32.457214, 23.667936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898460, 32.784992, 23.560406>,  <36.019947, 32.981659, 23.495888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898460, 32.784992, 23.560406>,  <35.695980, 32.457214, 23.667936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898460, 32.784992, 23.560406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128339, 0.379818, 0.916116,
		0.852816, -0.429233, 0.297429,
		0.506196, 0.819449, -0.268827,
		36.050320, 33.030827, 23.479757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264824, 32.529274, 24.085546>,  <35.695980, 32.457214, 23.667936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264824, 32.529274, 24.085546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082726, 32.865726, 23.968763>,  <35.973465, 33.067600, 23.898693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082726, 32.865726, 23.968763>,  <36.264824, 32.529274, 24.085546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082726, 32.865726, 23.968763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028113, 0.314165, 0.948952,
		0.889920, 0.440218, -0.119377,
		-0.455249, 0.841135, -0.291958,
		35.946152, 33.118069, 23.881176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698162, 33.127262, 24.082520>,  <36.264824, 32.529274, 24.085546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698162, 33.127262, 24.082520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328529, 33.265072, 24.148695>,  <36.106750, 33.347755, 24.188400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328529, 33.265072, 24.148695>,  <36.698162, 33.127262, 24.082520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328529, 33.265072, 24.148695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267283, 0.273174, 0.924086,
		0.273174, 0.898154, -0.344521,
		-0.924086, 0.344521, 0.165437,
		36.051304, 33.368427, 24.198326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546165, 33.887589, 24.229418>,  <36.698162, 33.127262, 24.082520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546165, 33.887589, 24.229418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295708, 33.635540, 24.413109>,  <36.145432, 33.484310, 24.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295708, 33.635540, 24.413109>,  <36.546165, 33.887589, 24.229418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295708, 33.635540, 24.413109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370065, 0.278244, 0.886359,
		-0.686290, 0.724934, 0.058963,
		-0.626146, -0.630119, 0.459229,
		36.107864, 33.446503, 24.550877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392097, 34.283432, 24.842487>,  <36.546165, 33.887589, 24.229418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392097, 34.283432, 24.842487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282261, 33.904366, 24.907637>,  <36.216358, 33.676926, 24.946726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282261, 33.904366, 24.907637>,  <36.392097, 34.283432, 24.842487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282261, 33.904366, 24.907637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258692, 0.090333, 0.961727,
		-0.926110, 0.306213, 0.220350,
		-0.274588, -0.947668, 0.162873,
		36.199886, 33.620064, 24.956499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951900, 34.395798, 25.328135>,  <36.392097, 34.283432, 24.842487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951900, 34.395798, 25.328135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075668, 34.017509, 25.367876>,  <36.149929, 33.790535, 25.391720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075668, 34.017509, 25.367876>,  <35.951900, 34.395798, 25.328135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075668, 34.017509, 25.367876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248333, 0.181215, 0.951573,
		-0.917928, -0.269760, 0.290925,
		0.309417, -0.945722, 0.099352,
		36.168495, 33.733791, 25.397682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579960, 34.170605, 25.975145>,  <35.951900, 34.395798, 25.328135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579960, 34.170605, 25.975145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900314, 33.941406, 25.905567>,  <36.092529, 33.803886, 25.863821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900314, 33.941406, 25.905567>,  <35.579960, 34.170605, 25.975145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900314, 33.941406, 25.905567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314994, 0.156077, 0.936173,
		-0.509271, -0.804561, 0.305489,
		0.800888, -0.572993, -0.173946,
		36.140579, 33.769508, 25.853384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565880, 33.597149, 26.499605>,  <35.579960, 34.170605, 25.975145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565880, 33.597149, 26.499605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942181, 33.575603, 26.365686>,  <36.167961, 33.562675, 26.285336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942181, 33.575603, 26.365686>,  <35.565880, 33.597149, 26.499605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942181, 33.575603, 26.365686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331423, -0.062882, 0.941384,
		-0.071776, -0.996565, -0.041298,
		0.940748, -0.053882, -0.334798,
		36.224407, 33.559444, 26.265247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885639, 33.106899, 26.913954>,  <35.565880, 33.597149, 26.499605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885639, 33.106899, 26.913954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173340, 33.341778, 26.765429>,  <36.345959, 33.482704, 26.676313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173340, 33.341778, 26.765429>,  <35.885639, 33.106899, 26.913954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173340, 33.341778, 26.765429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441417, 0.026473, 0.896911,
		0.536497, -0.809008, -0.240160,
		0.719251, 0.587201, -0.371313,
		36.389114, 33.517937, 26.654036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549339, 32.833714, 27.171574>,  <35.885639, 33.106899, 26.913954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549339, 32.833714, 27.171574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639797, 33.209583, 27.068911>,  <36.694073, 33.435104, 27.007313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639797, 33.209583, 27.068911>,  <36.549339, 32.833714, 27.171574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639797, 33.209583, 27.068911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456055, 0.130685, 0.880304,
		0.860740, -0.316126, -0.398989,
		0.226145, 0.939673, -0.256657,
		36.707642, 33.491486, 26.991913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218193, 33.022068, 27.498547>,  <36.549339, 32.833714, 27.171574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218193, 33.022068, 27.498547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066059, 33.376736, 27.393353>,  <36.974777, 33.589535, 27.330236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066059, 33.376736, 27.393353>,  <37.218193, 33.022068, 27.498547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066059, 33.376736, 27.393353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259807, 0.375338, 0.889731,
		0.887605, 0.270075, -0.373119,
		-0.380340, 0.886669, -0.262984,
		36.951958, 33.642735, 27.314457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592392, 33.563080, 27.801168>,  <37.218193, 33.022068, 27.498547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592392, 33.563080, 27.801168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251049, 33.757065, 27.724653>,  <37.046242, 33.873455, 27.678743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251049, 33.757065, 27.724653>,  <37.592392, 33.563080, 27.801168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251049, 33.757065, 27.724653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038747, 0.306910, 0.950949,
		0.519882, 0.818913, -0.243114,
		-0.853359, 0.484961, -0.191288,
		36.995041, 33.902554, 27.667267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781590, 34.267689, 27.949711>,  <37.592392, 33.563080, 27.801168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781590, 34.267689, 27.949711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392223, 34.185242, 27.989664>,  <37.158604, 34.135773, 28.013636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392223, 34.185242, 27.989664>,  <37.781590, 34.267689, 27.949711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392223, 34.185242, 27.989664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019667, 0.359268, 0.933027,
		-0.228197, 0.910188, -0.345664,
		-0.973416, -0.206115, 0.099884,
		37.100197, 34.123405, 28.019629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585945, 34.788834, 28.392061>,  <37.781590, 34.267689, 27.949711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585945, 34.788834, 28.392061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290134, 34.520760, 28.417198>,  <37.112648, 34.359917, 28.432280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290134, 34.520760, 28.417198>,  <37.585945, 34.788834, 28.392061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290134, 34.520760, 28.417198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216009, 0.324701, 0.920820,
		-0.637525, 0.667398, -0.384891,
		-0.739528, -0.670186, 0.062840,
		37.068275, 34.319702, 28.436050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015305, 35.226570, 28.656860>,  <37.585945, 34.788834, 28.392061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015305, 35.226570, 28.656860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906441, 34.846828, 28.719667>,  <36.841122, 34.618984, 28.757353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906441, 34.846828, 28.719667>,  <37.015305, 35.226570, 28.656860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906441, 34.846828, 28.719667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255101, 0.228526, 0.939521,
		-0.927820, 0.215647, -0.304377,
		-0.272163, -0.949354, 0.157019,
		36.824791, 34.562023, 28.766773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363930, 35.236034, 28.898642>,  <37.015305, 35.226570, 28.656860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363930, 35.236034, 28.898642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503922, 34.882736, 29.023476>,  <36.587917, 34.670757, 29.098377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503922, 34.882736, 29.023476>,  <36.363930, 35.236034, 28.898642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503922, 34.882736, 29.023476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288340, 0.215410, 0.932984,
		-0.891278, -0.416510, -0.179286,
		0.349977, -0.883243, 0.312087,
		36.608913, 34.617764, 29.117102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819340, 34.863720, 29.300997>,  <36.363930, 35.236034, 28.898642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819340, 34.863720, 29.300997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174873, 34.714649, 29.407639>,  <36.388195, 34.625206, 29.471624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174873, 34.714649, 29.407639>,  <35.819340, 34.863720, 29.300997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174873, 34.714649, 29.407639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253593, 0.084527, 0.963611,
		-0.381655, -0.924102, -0.019379,
		0.888837, -0.372681, 0.266606,
		36.441525, 34.602844, 29.487619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577221, 34.373127, 29.779539>,  <35.819340, 34.863720, 29.300997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577221, 34.373127, 29.779539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966663, 34.365719, 29.870539>,  <36.200329, 34.361275, 29.925138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966663, 34.365719, 29.870539>,  <35.577221, 34.373127, 29.779539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966663, 34.365719, 29.870539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226609, 0.040993, 0.973123,
		-0.027352, -0.998988, 0.035713,
		0.973601, -0.018524, 0.227501,
		36.258743, 34.360165, 29.938789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614292, 33.844204, 30.371088>,  <35.577221, 34.373127, 29.779539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614292, 33.844204, 30.371088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953129, 34.054916, 30.399200>,  <36.156429, 34.181343, 30.416069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953129, 34.054916, 30.399200>,  <35.614292, 33.844204, 30.371088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953129, 34.054916, 30.399200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063501, -0.030972, 0.997501,
		0.527645, -0.849434, 0.007215,
		0.847088, 0.526785, 0.070282,
		36.207256, 34.212952, 30.420284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050568, 33.468853, 30.923000>,  <35.614292, 33.844204, 30.371088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050568, 33.468853, 30.923000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160019, 33.852009, 30.888193>,  <36.225689, 34.081902, 30.867308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160019, 33.852009, 30.888193>,  <36.050568, 33.468853, 30.923000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160019, 33.852009, 30.888193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111520, 0.058267, 0.992053,
		0.955349, -0.281158, -0.090880,
		0.273628, 0.957891, -0.087020,
		36.242107, 34.139378, 30.862087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619347, 33.473820, 31.361637>,  <36.050568, 33.468853, 30.923000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619347, 33.473820, 31.361637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509350, 33.857243, 31.331844>,  <36.443352, 34.087296, 31.313969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509350, 33.857243, 31.331844>,  <36.619347, 33.473820, 31.361637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509350, 33.857243, 31.331844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036298, 0.087765, 0.995480,
		0.960761, 0.271046, -0.058928,
		-0.274992, 0.958557, -0.074483,
		36.426853, 34.144810, 31.309500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120224, 33.763546, 31.729876>,  <36.619347, 33.473820, 31.361637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120224, 33.763546, 31.729876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803570, 34.007534, 31.715685>,  <36.613579, 34.153927, 31.707170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803570, 34.007534, 31.715685>,  <37.120224, 33.763546, 31.729876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803570, 34.007534, 31.715685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084948, 0.167378, 0.982226,
		0.605064, 0.774548, -0.184318,
		-0.791632, 0.609967, -0.035478,
		36.566082, 34.190525, 31.705042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244480, 34.255653, 32.264107>,  <37.120224, 33.763546, 31.729876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244480, 34.255653, 32.264107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857506, 34.318153, 32.184448>,  <36.625320, 34.355652, 32.136654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857506, 34.318153, 32.184448>,  <37.244480, 34.255653, 32.264107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857506, 34.318153, 32.184448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117505, 0.419620, 0.900062,
		0.224196, 0.894151, -0.387594,
		-0.967434, 0.156246, -0.199145,
		36.567276, 34.365028, 32.124706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063477, 34.887909, 32.538513>,  <37.244480, 34.255653, 32.264107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063477, 34.887909, 32.538513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704205, 34.719887, 32.486622>,  <36.488644, 34.619072, 32.455486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704205, 34.719887, 32.486622>,  <37.063477, 34.887909, 32.538513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704205, 34.719887, 32.486622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305014, 0.382880, 0.871991,
		-0.316613, 0.822773, -0.472017,
		-0.898177, -0.420056, -0.129732,
		36.434750, 34.593868, 32.447701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637787, 35.387138, 32.732601>,  <37.063477, 34.887909, 32.538513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637787, 35.387138, 32.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412327, 35.057529, 32.755527>,  <36.277050, 34.859764, 32.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412327, 35.057529, 32.755527>,  <36.637787, 35.387138, 32.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412327, 35.057529, 32.755527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397819, 0.331615, 0.855436,
		-0.723903, 0.459369, -0.514728,
		-0.563653, -0.824021, 0.057311,
		36.243233, 34.810322, 32.772720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020020, 35.594994, 32.838875>,  <36.637787, 35.387138, 32.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020020, 35.594994, 32.838875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994846, 35.219429, 32.974213>,  <35.979744, 34.994091, 33.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994846, 35.219429, 32.974213>,  <36.020020, 35.594994, 32.838875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994846, 35.219429, 32.974213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293912, 0.341420, 0.892776,
		-0.953759, -0.043261, -0.297444,
		-0.062930, -0.938915, 0.338347,
		35.975967, 34.937756, 33.075718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355579, 35.560047, 33.166702>,  <36.020020, 35.594994, 32.838875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355579, 35.560047, 33.166702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606022, 35.277435, 33.298649>,  <35.756287, 35.107868, 33.377815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606022, 35.277435, 33.298649>,  <35.355579, 35.560047, 33.166702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606022, 35.277435, 33.298649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249623, 0.219161, 0.943216,
		-0.738704, -0.672893, -0.039148,
		0.626104, -0.706529, 0.329864,
		35.793854, 35.065475, 33.397610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948566, 35.329437, 33.713829>,  <35.355579, 35.560047, 33.166702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948566, 35.329437, 33.713829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296295, 35.147789, 33.791855>,  <35.504932, 35.038799, 33.838669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296295, 35.147789, 33.791855>,  <34.948566, 35.329437, 33.713829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296295, 35.147789, 33.791855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152936, 0.128141, 0.979893,
		-0.469982, -0.881679, 0.041945,
		0.869326, -0.454117, 0.195064,
		35.557095, 35.011555, 33.850372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788296, 34.747715, 34.184921>,  <34.948566, 35.329437, 33.713829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788296, 34.747715, 34.184921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166809, 34.876289, 34.198956>,  <35.393917, 34.953434, 34.207375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166809, 34.876289, 34.198956>,  <34.788296, 34.747715, 34.184921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166809, 34.876289, 34.198956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119493, 0.246816, 0.961667,
		0.300462, -0.914198, 0.271967,
		0.946279, 0.321442, 0.035082,
		35.450695, 34.972721, 34.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835144, 34.693069, 34.857647>,  <34.788296, 34.747715, 34.184921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835144, 34.693069, 34.857647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162575, 34.912121, 34.788322>,  <35.359032, 35.043552, 34.746727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162575, 34.912121, 34.788322>,  <34.835144, 34.693069, 34.857647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162575, 34.912121, 34.788322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064420, 0.387349, 0.919680,
		0.570779, -0.741660, 0.352352,
		0.818574, 0.547632, -0.173312,
		35.408146, 35.076408, 34.736328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329628, 34.638035, 35.458046>,  <34.835144, 34.693069, 34.857647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329628, 34.638035, 35.458046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426468, 34.971909, 35.260181>,  <35.484573, 35.172234, 35.141460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426468, 34.971909, 35.260181>,  <35.329628, 34.638035, 35.458046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426468, 34.971909, 35.260181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080159, 0.490883, 0.867530,
		0.966934, -0.249684, 0.051937,
		0.242103, 0.834681, -0.494666,
		35.499100, 35.222313, 35.111782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948132, 34.872952, 35.895729>,  <35.329628, 34.638035, 35.458046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948132, 34.872952, 35.895729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799007, 35.191223, 35.704769>,  <35.709534, 35.382187, 35.590195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799007, 35.191223, 35.704769>,  <35.948132, 34.872952, 35.895729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799007, 35.191223, 35.704769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085912, 0.482684, 0.871571,
		0.923922, 0.365945, -0.111592,
		-0.372811, 0.795676, -0.477401,
		35.687164, 35.429928, 35.561550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193932, 35.344265, 36.184196>,  <35.948132, 34.872952, 35.895729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193932, 35.344265, 36.184196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901676, 35.546772, 36.000954>,  <35.726322, 35.668278, 35.891006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901676, 35.546772, 36.000954>,  <36.193932, 35.344265, 36.184196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901676, 35.546772, 36.000954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139314, 0.546295, 0.825926,
		0.668403, 0.667272, -0.328612,
		-0.730636, 0.506271, -0.458106,
		35.682484, 35.698654, 35.863522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347332, 36.155094, 36.226807>,  <36.193932, 35.344265, 36.184196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347332, 36.155094, 36.226807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953472, 36.090984, 36.199169>,  <35.717155, 36.052517, 36.182587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953472, 36.090984, 36.199169>,  <36.347332, 36.155094, 36.226807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953472, 36.090984, 36.199169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157195, 0.642324, 0.750140,
		-0.075848, 0.749488, -0.657659,
		-0.984651, -0.160277, -0.069097,
		35.658077, 36.042900, 36.178440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014809, 36.788578, 36.268368>,  <36.347332, 36.155094, 36.226807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014809, 36.788578, 36.268368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729851, 36.525269, 36.365665>,  <35.558876, 36.367283, 36.424046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729851, 36.525269, 36.365665>,  <36.014809, 36.788578, 36.268368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729851, 36.525269, 36.365665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273172, 0.579389, 0.767910,
		-0.646426, 0.480610, -0.592576,
		-0.712398, -0.658272, 0.243243,
		35.516132, 36.327785, 36.438637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379791, 37.201260, 36.401062>,  <36.014809, 36.788578, 36.268368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379791, 37.201260, 36.401062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339550, 36.855095, 36.597401>,  <35.315403, 36.647396, 36.715206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339550, 36.855095, 36.597401>,  <35.379791, 37.201260, 36.401062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339550, 36.855095, 36.597401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172237, 0.501054, 0.848103,
		-0.979905, 0.000782, -0.199466,
		-0.100607, -0.865416, 0.490850,
		35.309368, 36.595470, 36.744656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939468, 37.378086, 36.844959>,  <35.379791, 37.201260, 36.401062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939468, 37.378086, 36.844959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066498, 37.023270, 36.979008>,  <35.142715, 36.810379, 37.059437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066498, 37.023270, 36.979008>,  <34.939468, 37.378086, 36.844959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066498, 37.023270, 36.979008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330489, 0.227718, 0.915927,
		-0.888778, -0.401626, -0.220841,
		0.317570, -0.887041, 0.335124,
		35.161770, 36.757156, 37.079544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348297, 37.139111, 37.251385>,  <34.939468, 37.378086, 36.844959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348297, 37.139111, 37.251385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663258, 36.915768, 37.355873>,  <34.852234, 36.781761, 37.418568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663258, 36.915768, 37.355873>,  <34.348297, 37.139111, 37.251385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663258, 36.915768, 37.355873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331393, -0.026102, 0.943132,
		-0.519788, -0.829188, -0.205589,
		0.787400, -0.558360, 0.261220,
		34.899479, 36.748260, 37.434238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131176, 36.631920, 37.903198>,  <34.348297, 37.139111, 37.251385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131176, 36.631920, 37.903198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531155, 36.632481, 37.907143>,  <34.771141, 36.632816, 37.909508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531155, 36.632481, 37.907143>,  <34.131176, 36.631920, 37.903198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531155, 36.632481, 37.907143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009908, 0.038502, 0.999209,
		0.001012, -0.999258, 0.038514,
		0.999950, 0.001393, 0.009862,
		34.831139, 36.632900, 37.910103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310593, 36.025318, 38.321548>,  <34.131176, 36.631920, 37.903198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310593, 36.025318, 38.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616333, 36.283192, 38.326580>,  <34.799778, 36.437916, 38.329597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616333, 36.283192, 38.326580>,  <34.310593, 36.025318, 38.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616333, 36.283192, 38.326580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015066, -0.001646, 0.999885,
		0.644628, -0.764450, 0.008454,
		0.764348, 0.644681, 0.012579,
		34.845638, 36.476597, 38.330353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852650, 35.698174, 38.744991>,  <34.310593, 36.025318, 38.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852650, 35.698174, 38.744991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909996, 36.094021, 38.749020>,  <34.944405, 36.331528, 38.751434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909996, 36.094021, 38.749020>,  <34.852650, 35.698174, 38.744991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909996, 36.094021, 38.749020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163655, -0.033738, 0.985941,
		0.976045, -0.139703, -0.166793,
		0.143366, 0.989619, 0.010067,
		34.953007, 36.390907, 38.752041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451134, 35.706886, 39.012325>,  <34.852650, 35.698174, 38.744991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451134, 35.706886, 39.012325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297905, 36.072567, 39.065231>,  <35.205967, 36.291973, 39.096973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297905, 36.072567, 39.065231>,  <35.451134, 35.706886, 39.012325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297905, 36.072567, 39.065231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257995, -0.031599, 0.965629,
		0.886957, 0.404032, -0.223754,
		-0.383074, 0.914199, 0.132265,
		35.182983, 36.346828, 39.104912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790024, 35.070908, 38.750404>,  <35.451134, 35.706886, 39.012325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790024, 35.070908, 38.750404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133419, 35.007881, 38.945614>,  <36.339455, 34.970066, 39.062740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133419, 35.007881, 38.945614>,  <35.790024, 35.070908, 38.750404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133419, 35.007881, 38.945614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457261, -0.195672, -0.867540,
		0.232190, 0.967928, -0.095932,
		0.858487, -0.157568, 0.488029,
		36.390965, 34.960609, 39.092022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276096, 35.363724, 38.313663>,  <35.790024, 35.070908, 38.750404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276096, 35.363724, 38.313663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510170, 35.150654, 38.558228>,  <36.650616, 35.022812, 38.704964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510170, 35.150654, 38.558228>,  <36.276096, 35.363724, 38.313663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510170, 35.150654, 38.558228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652671, -0.138056, -0.744957,
		0.481228, 0.834984, 0.266873,
		0.585184, -0.532675, 0.611406,
		36.685726, 34.990852, 38.741650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941212, 35.581139, 38.245609>,  <36.276096, 35.363724, 38.313663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941212, 35.581139, 38.245609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971279, 35.210629, 38.393322>,  <36.989319, 34.988323, 38.481949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971279, 35.210629, 38.393322>,  <36.941212, 35.581139, 38.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971279, 35.210629, 38.393322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744556, -0.194208, -0.638686,
		0.663315, 0.322958, 0.675064,
		0.075166, -0.926273, 0.369281,
		36.993828, 34.932747, 38.504105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689667, 35.503937, 38.260021>,  <36.941212, 35.581139, 38.245609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689667, 35.503937, 38.260021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514034, 35.144581, 38.264141>,  <37.408653, 34.928967, 38.266613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514034, 35.144581, 38.264141>,  <37.689667, 35.503937, 38.260021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514034, 35.144581, 38.264141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697294, -0.347985, -0.626648,
		0.566556, -0.267971, 0.779234,
		-0.439085, -0.898386, 0.010298,
		37.382309, 34.875065, 38.267231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263493, 34.913704, 38.316105>,  <37.689667, 35.503937, 38.260021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263493, 34.913704, 38.316105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926365, 34.792542, 38.138157>,  <37.724091, 34.719845, 38.031387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926365, 34.792542, 38.138157>,  <38.263493, 34.913704, 38.316105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926365, 34.792542, 38.138157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537385, -0.428088, -0.726607,
		0.029651, -0.851462, 0.523577,
		-0.842815, -0.302907, -0.444870,
		37.673519, 34.701668, 38.004696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485226, 34.460918, 37.930119>,  <38.263493, 34.913704, 38.316105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485226, 34.460918, 37.930119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136684, 34.509331, 37.739918>,  <37.927559, 34.538376, 37.625797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136684, 34.509331, 37.739918>,  <38.485226, 34.460918, 37.930119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136684, 34.509331, 37.739918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451300, -0.182627, -0.873485,
		-0.192568, -0.975703, 0.104506,
		-0.871347, 0.121041, -0.475503,
		37.875278, 34.545639, 37.597267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549084, 33.928444, 37.390743>,  <38.485226, 34.460918, 37.930119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549084, 33.928444, 37.390743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279495, 34.201469, 37.277702>,  <38.117741, 34.365284, 37.209877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279495, 34.201469, 37.277702>,  <38.549084, 33.928444, 37.390743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279495, 34.201469, 37.277702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126228, -0.270507, -0.954407,
		-0.727890, -0.678918, 0.096156,
		-0.673975, 0.682565, -0.282598,
		38.077301, 34.406239, 37.192924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315296, 33.512203, 36.808777>,  <38.549084, 33.928444, 37.390743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315296, 33.512203, 36.808777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154396, 33.874996, 36.758854>,  <38.057858, 34.092670, 36.728901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154396, 33.874996, 36.758854>,  <38.315296, 33.512203, 36.808777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154396, 33.874996, 36.758854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113266, -0.085978, -0.989838,
		-0.908496, -0.412300, -0.068146,
		-0.402251, 0.906982, -0.124810,
		38.033722, 34.147091, 36.721413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770660, 33.447334, 36.197681>,  <38.315296, 33.512203, 36.808777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770660, 33.447334, 36.197681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886127, 33.829395, 36.224091>,  <37.955406, 34.058632, 36.239937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886127, 33.829395, 36.224091>,  <37.770660, 33.447334, 36.197681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886127, 33.829395, 36.224091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255551, -0.010410, -0.966739,
		-0.922694, 0.295937, -0.247095,
		0.288667, 0.955151, 0.066022,
		37.972729, 34.115940, 36.243896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528385, 33.741711, 35.640308>,  <37.770660, 33.447334, 36.197681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528385, 33.741711, 35.640308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780773, 34.036709, 35.736629>,  <37.932205, 34.213707, 35.794422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780773, 34.036709, 35.736629>,  <37.528385, 33.741711, 35.640308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780773, 34.036709, 35.736629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234851, 0.114251, -0.965293,
		-0.739410, 0.665619, -0.101113,
		0.630965, 0.737495, 0.240800,
		37.970062, 34.257957, 35.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370869, 34.327148, 35.292351>,  <37.528385, 33.741711, 35.640308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370869, 34.327148, 35.292351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761822, 34.339249, 35.376072>,  <37.996395, 34.346508, 35.426304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761822, 34.339249, 35.376072>,  <37.370869, 34.327148, 35.292351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761822, 34.339249, 35.376072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200931, 0.175825, -0.963697,
		-0.065955, 0.983957, 0.165770,
		0.977383, 0.030252, 0.209304,
		38.055038, 34.348324, 35.438862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661804, 35.022099, 34.949398>,  <37.370869, 34.327148, 35.292351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661804, 35.022099, 34.949398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974777, 34.780399, 35.009640>,  <38.162563, 34.635380, 35.045784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974777, 34.780399, 35.009640>,  <37.661804, 35.022099, 34.949398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974777, 34.780399, 35.009640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371727, 0.259164, -0.891433,
		0.499614, 0.753472, 0.427394,
		0.782435, -0.604246, 0.150604,
		38.209507, 34.599125, 35.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084808, 35.356174, 34.540253>,  <37.661804, 35.022099, 34.949398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084808, 35.356174, 34.540253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256676, 35.002914, 34.615555>,  <38.359795, 34.790958, 34.660736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256676, 35.002914, 34.615555>,  <38.084808, 35.356174, 34.540253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256676, 35.002914, 34.615555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556719, 0.094934, -0.825258,
		0.710952, 0.459391, 0.532454,
		0.429664, -0.883146, 0.188258,
		38.385574, 34.737972, 34.672031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859158, 35.373039, 34.604397>,  <38.084808, 35.356174, 34.540253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859158, 35.373039, 34.604397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763317, 34.998047, 34.503418>,  <38.705814, 34.773052, 34.442829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763317, 34.998047, 34.503418>,  <38.859158, 35.373039, 34.604397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763317, 34.998047, 34.503418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580743, 0.069981, -0.811074,
		0.778029, -0.340940, 0.527665,
		-0.239601, -0.937477, -0.252446,
		38.691437, 34.716805, 34.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397564, 35.213772, 34.192829>,  <38.859158, 35.373039, 34.604397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397564, 35.213772, 34.192829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173244, 34.888840, 34.128807>,  <39.038654, 34.693878, 34.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173244, 34.888840, 34.128807>,  <39.397564, 35.213772, 34.192829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173244, 34.888840, 34.128807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212623, 0.045534, -0.976073,
		0.800185, -0.581412, 0.147185,
		-0.560799, -0.812334, -0.160057,
		39.005005, 34.645138, 34.080791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798012, 34.776733, 33.808964>,  <39.397564, 35.213772, 34.192829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798012, 34.776733, 33.808964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424694, 34.655571, 33.731808>,  <39.200703, 34.582874, 33.685516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424694, 34.655571, 33.731808>,  <39.798012, 34.776733, 33.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424694, 34.655571, 33.731808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199873, 0.008085, -0.979788,
		0.298344, -0.952986, 0.052997,
		-0.933296, -0.302907, -0.192888,
		39.144707, 34.564697, 33.673943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862862, 34.339951, 33.315361>,  <39.798012, 34.776733, 33.808964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862862, 34.339951, 33.315361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471664, 34.410233, 33.270348>,  <39.236946, 34.452400, 33.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471664, 34.410233, 33.270348>,  <39.862862, 34.339951, 33.315361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471664, 34.410233, 33.270348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087126, -0.146165, -0.985416,
		-0.189592, -0.973531, 0.127640,
		-0.977989, 0.175706, -0.112531,
		39.178268, 34.462944, 33.236588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477592, 33.776356, 32.943851>,  <39.862862, 34.339951, 33.315361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477592, 33.776356, 32.943851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258823, 34.106518, 32.887863>,  <39.127563, 34.304615, 32.854271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258823, 34.106518, 32.887863>,  <39.477592, 33.776356, 32.943851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258823, 34.106518, 32.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088224, -0.223082, -0.970799,
		-0.832522, -0.518602, 0.194829,
		-0.546921, 0.825401, -0.139967,
		39.094746, 34.354137, 32.845875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056694, 33.574627, 32.355606>,  <39.477592, 33.776356, 32.943851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056694, 33.574627, 32.355606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989082, 33.966438, 32.399334>,  <38.948517, 34.201527, 32.425571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989082, 33.966438, 32.399334>,  <39.056694, 33.574627, 32.355606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989082, 33.966438, 32.399334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183055, 0.077785, -0.980020,
		-0.968463, -0.185660, 0.166161,
		-0.169025, 0.979530, 0.109318,
		38.938374, 34.260296, 32.432129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413902, 33.649326, 32.120911>,  <39.056694, 33.574627, 32.355606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413902, 33.649326, 32.120911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600746, 33.999249, 32.069489>,  <38.712852, 34.209202, 32.038635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600746, 33.999249, 32.069489>,  <38.413902, 33.649326, 32.120911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600746, 33.999249, 32.069489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318154, 0.030641, -0.947544,
		-0.824974, 0.483511, 0.292635,
		0.467114, 0.874802, -0.128553,
		38.740879, 34.261688, 32.030922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959751, 34.121811, 31.797829>,  <38.413902, 33.649326, 32.120911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959751, 34.121811, 31.797829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319721, 34.264137, 31.697014>,  <38.535706, 34.349533, 31.636526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319721, 34.264137, 31.697014>,  <37.959751, 34.121811, 31.797829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319721, 34.264137, 31.697014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249006, -0.055122, -0.966932,
		-0.357942, 0.932929, 0.038994,
		0.899930, 0.355815, -0.252035,
		38.589699, 34.370880, 31.621403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917465, 34.623512, 31.287968>,  <37.959751, 34.121811, 31.797829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917465, 34.623512, 31.287968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283737, 34.472851, 31.231873>,  <38.503498, 34.382454, 31.198215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283737, 34.472851, 31.231873>,  <37.917465, 34.623512, 31.287968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283737, 34.472851, 31.231873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158764, -0.018425, -0.987145,
		0.369227, 0.926171, -0.076670,
		0.915678, -0.376653, -0.140240,
		38.558441, 34.359856, 31.189800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222664, 34.997643, 30.741581>,  <37.917465, 34.623512, 31.287968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222664, 34.997643, 30.741581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440350, 34.662067, 30.743069>,  <38.570961, 34.460720, 30.743961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440350, 34.662067, 30.743069>,  <38.222664, 34.997643, 30.741581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440350, 34.662067, 30.743069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059283, 0.034031, -0.997661,
		0.836852, 0.543158, 0.068255,
		0.544210, -0.838941, 0.003721,
		38.603611, 34.410385, 30.744184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602627, 35.067978, 30.159893>,  <38.222664, 34.997643, 30.741581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602627, 35.067978, 30.159893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649330, 34.675449, 30.221050>,  <38.677353, 34.439934, 30.257744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649330, 34.675449, 30.221050>,  <38.602627, 35.067978, 30.159893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649330, 34.675449, 30.221050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025073, -0.156810, -0.987311,
		0.992844, 0.111439, -0.042913,
		0.116754, -0.981322, 0.152893,
		38.684357, 34.381054, 30.266918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080608, 34.844963, 29.680513>,  <38.602627, 35.067978, 30.159893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080608, 34.844963, 29.680513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907036, 34.498611, 29.780075>,  <38.802891, 34.290802, 29.839813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907036, 34.498611, 29.780075>,  <39.080608, 34.844963, 29.680513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907036, 34.498611, 29.780075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007024, -0.273013, -0.961985,
		0.900917, -0.419188, 0.112389,
		-0.433936, -0.865878, 0.248907,
		38.776855, 34.238850, 29.854748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475422, 34.319359, 29.501081>,  <39.080608, 34.844963, 29.680513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475422, 34.319359, 29.501081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125267, 34.127003, 29.520885>,  <38.915176, 34.011589, 29.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125267, 34.127003, 29.520885>,  <39.475422, 34.319359, 29.501081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125267, 34.127003, 29.520885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243906, -0.527760, -0.813621,
		0.417391, -0.700154, 0.579284,
		-0.875383, -0.480889, 0.049510,
		38.862652, 33.982735, 29.535738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651649, 33.703793, 29.600683>,  <39.475422, 34.319359, 29.501081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651649, 33.703793, 29.600683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283669, 33.696419, 29.444040>,  <39.062881, 33.691994, 29.350054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283669, 33.696419, 29.444040>,  <39.651649, 33.703793, 29.600683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283669, 33.696419, 29.444040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324896, -0.594883, -0.735226,
		-0.219406, -0.803601, 0.553251,
		-0.919948, -0.018435, -0.391607,
		39.007683, 33.690887, 29.326557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632301, 33.023960, 29.305214>,  <39.651649, 33.703793, 29.600683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632301, 33.023960, 29.305214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313293, 33.207466, 29.148500>,  <39.121887, 33.317570, 29.054472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313293, 33.207466, 29.148500>,  <39.632301, 33.023960, 29.305214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313293, 33.207466, 29.148500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008992, -0.658378, -0.752634,
		-0.603219, -0.596721, 0.529198,
		-0.797525, 0.458762, -0.391780,
		39.074036, 33.345097, 29.030966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243748, 32.419113, 29.177114>,  <39.632301, 33.023960, 29.305214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243748, 32.419113, 29.177114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082176, 32.719917, 28.968758>,  <38.985233, 32.900398, 28.843744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082176, 32.719917, 28.968758>,  <39.243748, 32.419113, 29.177114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082176, 32.719917, 28.968758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014383, -0.574561, -0.818336,
		-0.914678, -0.323056, 0.242897,
		-0.403927, 0.752007, -0.520892,
		38.960999, 32.945518, 28.812490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507877, 32.211308, 28.974781>,  <39.243748, 32.419113, 29.177114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507877, 32.211308, 28.974781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672626, 32.475624, 28.723795>,  <38.771477, 32.634216, 28.573204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672626, 32.475624, 28.723795>,  <38.507877, 32.211308, 28.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672626, 32.475624, 28.723795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247970, -0.581322, -0.774968,
		-0.876853, 0.474781, -0.075574,
		0.411873, 0.660794, -0.627465,
		38.796188, 32.673862, 28.535555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037205, 32.213902, 28.509747>,  <38.507877, 32.211308, 28.974781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037205, 32.213902, 28.509747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350384, 32.396664, 28.340878>,  <38.538292, 32.506321, 28.239555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350384, 32.396664, 28.340878>,  <38.037205, 32.213902, 28.509747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350384, 32.396664, 28.340878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217195, -0.435161, -0.873763,
		-0.582941, 0.775804, -0.241470,
		0.782947, 0.456906, -0.422174,
		38.585266, 32.533737, 28.214226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800682, 32.566402, 27.849873>,  <38.037205, 32.213902, 28.509747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800682, 32.566402, 27.849873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188721, 32.473236, 27.822578>,  <38.421543, 32.417336, 27.806202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188721, 32.473236, 27.822578>,  <37.800682, 32.566402, 27.849873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188721, 32.473236, 27.822578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176503, -0.484057, -0.857051,
		0.166595, 0.843467, -0.510694,
		0.970099, -0.232920, -0.068233,
		38.479752, 32.403358, 27.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862106, 32.453918, 27.109480>,  <37.800682, 32.566402, 27.849873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862106, 32.453918, 27.109480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202301, 32.329460, 27.279118>,  <38.406418, 32.254784, 27.380899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202301, 32.329460, 27.279118>,  <37.862106, 32.453918, 27.109480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202301, 32.329460, 27.279118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196069, -0.560628, -0.804520,
		0.488084, 0.767387, -0.415801,
		0.850489, -0.311148, 0.424094,
		38.457447, 32.236115, 27.406345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302727, 32.573910, 26.616190>,  <37.862106, 32.453918, 27.109480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302727, 32.573910, 26.616190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454388, 32.283566, 26.845751>,  <38.545383, 32.109360, 26.983488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454388, 32.283566, 26.845751>,  <38.302727, 32.573910, 26.616190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454388, 32.283566, 26.845751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274344, -0.504148, -0.818884,
		0.883730, 0.467928, 0.007988,
		0.379152, -0.725864, 0.573904,
		38.568134, 32.065807, 27.017921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938034, 32.452095, 26.335407>,  <38.302727, 32.573910, 26.616190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938034, 32.452095, 26.335407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883888, 32.120060, 26.551788>,  <38.851402, 31.920839, 26.681618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883888, 32.120060, 26.551788>,  <38.938034, 32.452095, 26.335407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883888, 32.120060, 26.551788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385445, -0.547089, -0.743051,
		0.912748, 0.107925, 0.394010,
		-0.135365, -0.830088, 0.540954,
		38.843277, 31.871033, 26.714075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493000, 32.065292, 26.140285>,  <38.938034, 32.452095, 26.335407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493000, 32.065292, 26.140285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265881, 31.793434, 26.326054>,  <39.129608, 31.630320, 26.437513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265881, 31.793434, 26.326054>,  <39.493000, 32.065292, 26.140285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265881, 31.793434, 26.326054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346035, -0.708984, -0.614492,
		0.746904, -0.188203, 0.637742,
		-0.567798, -0.679647, 0.464418,
		39.095543, 31.589540, 26.465380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909595, 31.507568, 26.491858>,  <39.493000, 32.065292, 26.140285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909595, 31.507568, 26.491858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548573, 31.370054, 26.388157>,  <39.331959, 31.287546, 26.325937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548573, 31.370054, 26.388157>,  <39.909595, 31.507568, 26.491858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548573, 31.370054, 26.388157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428455, -0.657328, -0.619956,
		0.042718, -0.670621, 0.740570,
		-0.902553, -0.343784, -0.259251,
		39.277805, 31.266918, 26.310381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866123, 30.669609, 26.550739>,  <39.909595, 31.507568, 26.491858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866123, 30.669609, 26.550739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591927, 30.800232, 26.290445>,  <39.427406, 30.878605, 26.134270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591927, 30.800232, 26.290445>,  <39.866123, 30.669609, 26.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591927, 30.800232, 26.290445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381257, -0.600433, -0.702939,
		-0.620276, -0.729958, 0.287090,
		-0.685493, 0.326561, -0.650735,
		39.386276, 30.898199, 26.095224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539253, 30.064116, 26.631388>,  <39.866123, 30.669609, 26.550739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539253, 30.064116, 26.631388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857109, 29.991556, 26.399651>,  <40.047825, 29.948021, 26.260609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857109, 29.991556, 26.399651>,  <39.539253, 30.064116, 26.631388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857109, 29.991556, 26.399651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583699, 0.490586, 0.647009,
		0.166853, -0.852303, 0.495722,
		0.794641, -0.181397, -0.579344,
		40.095501, 29.937138, 26.225847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078667, 29.707178, 27.020243>,  <39.539253, 30.064116, 26.631388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078667, 29.707178, 27.020243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296146, 29.857779, 26.720207>,  <40.426636, 29.948139, 26.540186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296146, 29.857779, 26.720207>,  <40.078667, 29.707178, 27.020243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296146, 29.857779, 26.720207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684413, 0.318382, 0.655905,
		0.485765, -0.869988, -0.084578,
		0.543701, 0.376502, -0.750090,
		40.459255, 29.970728, 26.495180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687374, 29.587345, 27.182634>,  <40.078667, 29.707178, 27.020243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687374, 29.587345, 27.182634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780437, 29.866470, 26.911659>,  <40.836277, 30.033945, 26.749073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780437, 29.866470, 26.911659>,  <40.687374, 29.587345, 27.182634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780437, 29.866470, 26.911659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785283, 0.276140, 0.554145,
		0.573758, -0.660910, -0.483735,
		0.232661, 0.697814, -0.677439,
		40.850235, 30.075815, 26.708427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352787, 29.454784, 27.034191>,  <40.687374, 29.587345, 27.182634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352787, 29.454784, 27.034191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269337, 29.836029, 26.946505>,  <41.219265, 30.064775, 26.893892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269337, 29.836029, 26.946505>,  <41.352787, 29.454784, 27.034191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269337, 29.836029, 26.946505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525388, 0.298281, 0.796866,
		0.824890, 0.051074, -0.562982,
		-0.208626, 0.953111, -0.219215,
		41.206749, 30.121962, 26.880739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928398, 29.864454, 27.197329>,  <41.352787, 29.454784, 27.034191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928398, 29.864454, 27.197329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624268, 30.124273, 27.197458>,  <41.441792, 30.280165, 27.197536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624268, 30.124273, 27.197458>,  <41.928398, 29.864454, 27.197329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624268, 30.124273, 27.197458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350852, 0.410268, 0.841774,
		0.546637, 0.640134, -0.539830,
		-0.760323, 0.649545, 0.000324,
		41.396172, 30.319138, 27.197556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258450, 30.424852, 27.577221>,  <41.928398, 29.864454, 27.197329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258450, 30.424852, 27.577221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868950, 30.514174, 27.559530>,  <41.635250, 30.567766, 27.548916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868950, 30.514174, 27.559530>,  <42.258450, 30.424852, 27.577221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868950, 30.514174, 27.559530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069160, 0.475293, 0.877105,
		0.216881, 0.851018, -0.478258,
		-0.973745, 0.223304, -0.044226,
		41.576828, 30.581165, 27.546263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193798, 31.067350, 28.007795>,  <42.258450, 30.424852, 27.577221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193798, 31.067350, 28.007795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817692, 30.932602, 27.988155>,  <41.592026, 30.851753, 27.976372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817692, 30.932602, 27.988155>,  <42.193798, 31.067350, 28.007795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817692, 30.932602, 27.988155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166043, 0.327910, 0.930002,
		-0.297189, 0.882606, -0.364259,
		-0.940270, -0.336869, -0.049100,
		41.535610, 30.831541, 27.973425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871788, 31.557211, 28.409378>,  <42.193798, 31.067350, 28.007795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871788, 31.557211, 28.409378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621994, 31.246523, 28.376577>,  <41.472118, 31.060110, 28.356897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621994, 31.246523, 28.376577>,  <41.871788, 31.557211, 28.409378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621994, 31.246523, 28.376577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356263, 0.189847, 0.914896,
		-0.695051, 0.600552, -0.395273,
		-0.624484, -0.776721, -0.082001,
		41.434650, 31.013506, 28.351976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110958, 31.775425, 28.425045>,  <41.871788, 31.557211, 28.409378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110958, 31.775425, 28.425045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106457, 31.391050, 28.535664>,  <41.103756, 31.160425, 28.602036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106457, 31.391050, 28.535664>,  <41.110958, 31.775425, 28.425045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106457, 31.391050, 28.535664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454937, 0.251205, 0.854359,
		-0.890453, -0.116197, -0.439991,
		-0.011254, -0.960934, 0.276548,
		41.103081, 31.102770, 28.618628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484798, 31.690498, 28.678972>,  <41.110958, 31.775425, 28.425045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484798, 31.690498, 28.678972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705627, 31.395420, 28.834417>,  <40.838123, 31.218372, 28.927685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705627, 31.395420, 28.834417>,  <40.484798, 31.690498, 28.678972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705627, 31.395420, 28.834417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372504, 0.198763, 0.906495,
		-0.745959, -0.645213, -0.165063,
		0.552074, -0.737695, 0.388614,
		40.871250, 31.174112, 28.951002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169182, 31.491735, 29.154175>,  <40.484798, 31.690498, 28.678972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169182, 31.491735, 29.154175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495533, 31.284311, 29.256498>,  <40.691345, 31.159857, 29.317892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495533, 31.284311, 29.256498>,  <40.169182, 31.491735, 29.154175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495533, 31.284311, 29.256498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178940, 0.194252, 0.964493,
		-0.549839, -0.832683, 0.065694,
		0.815878, -0.518561, 0.255807,
		40.740295, 31.128742, 29.333241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998013, 30.965979, 29.641405>,  <40.169182, 31.491735, 29.154175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998013, 30.965979, 29.641405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375763, 31.084291, 29.698914>,  <40.602413, 31.155279, 29.733419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375763, 31.084291, 29.698914>,  <39.998013, 30.965979, 29.641405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375763, 31.084291, 29.698914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148243, -0.007381, 0.988923,
		0.293569, -0.955226, 0.036878,
		0.944374, 0.295784, 0.143773,
		40.659077, 31.173027, 29.742046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154217, 30.717234, 30.299707>,  <39.998013, 30.965979, 29.641405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154217, 30.717234, 30.299707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457928, 30.970991, 30.241690>,  <40.640156, 31.123245, 30.206879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457928, 30.970991, 30.241690>,  <40.154217, 30.717234, 30.299707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457928, 30.970991, 30.241690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033825, 0.261053, 0.964732,
		0.649884, -0.727595, 0.219671,
		0.759280, 0.634394, -0.145043,
		40.685711, 31.161310, 30.198177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613258, 30.591370, 30.772240>,  <40.154217, 30.717234, 30.299707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613258, 30.591370, 30.772240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609539, 30.970247, 30.644028>,  <40.607307, 31.197573, 30.567101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609539, 30.970247, 30.644028>,  <40.613258, 30.591370, 30.772240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609539, 30.970247, 30.644028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023732, 0.320665, 0.946895,
		0.999675, 0.001201, -0.025461,
		-0.009302, 0.947192, -0.320532,
		40.606747, 31.254404, 30.547869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100765, 30.887133, 31.240650>,  <40.613258, 30.591370, 30.772240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100765, 30.887133, 31.240650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884876, 31.191154, 31.095863>,  <40.755344, 31.373568, 31.008991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884876, 31.191154, 31.095863>,  <41.100765, 30.887133, 31.240650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884876, 31.191154, 31.095863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136047, 0.503067, 0.853472,
		0.830779, 0.411392, -0.374918,
		-0.539720, 0.760053, -0.361968,
		40.722961, 31.419170, 30.987272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425457, 31.491413, 31.529406>,  <41.100765, 30.887133, 31.240650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425457, 31.491413, 31.529406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080128, 31.657263, 31.414333>,  <40.872929, 31.756773, 31.345289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080128, 31.657263, 31.414333>,  <41.425457, 31.491413, 31.529406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080128, 31.657263, 31.414333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082709, 0.446102, 0.891152,
		0.497828, 0.793146, -0.350837,
		-0.863323, 0.414623, -0.287682,
		40.821129, 31.781651, 31.328028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429916, 32.142895, 31.789854>,  <41.425457, 31.491413, 31.529406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429916, 32.142895, 31.789854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041893, 32.089691, 31.708569>,  <40.809078, 32.057770, 31.659798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041893, 32.089691, 31.708569>,  <41.429916, 32.142895, 31.789854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041893, 32.089691, 31.708569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238625, 0.366130, 0.899448,
		-0.045234, 0.921009, -0.386908,
		-0.970058, -0.133011, -0.203214,
		40.750877, 32.049789, 31.647604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123161, 32.711895, 31.932928>,  <41.429916, 32.142895, 31.789854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123161, 32.711895, 31.932928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834587, 32.435982, 31.957365>,  <40.661442, 32.270435, 31.972027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834587, 32.435982, 31.957365>,  <41.123161, 32.711895, 31.932928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834587, 32.435982, 31.957365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258204, 0.349809, 0.900536,
		-0.642544, 0.633904, -0.430469,
		-0.721435, -0.689783, 0.061091,
		40.618156, 32.229046, 31.975693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454975, 33.031609, 31.930801>,  <41.123161, 32.711895, 31.932928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454975, 33.031609, 31.930801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412113, 32.669289, 32.094776>,  <40.386395, 32.451897, 32.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412113, 32.669289, 32.094776>,  <40.454975, 33.031609, 31.930801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412113, 32.669289, 32.094776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161768, 0.422698, 0.891716,
		-0.980994, 0.029238, -0.191824,
		-0.107156, -0.905799, 0.409935,
		40.379967, 32.397549, 32.217758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983315, 33.237312, 32.516357>,  <40.454975, 33.031609, 31.930801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983315, 33.237312, 32.516357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143085, 32.873592, 32.563046>,  <40.238949, 32.655361, 32.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143085, 32.873592, 32.563046>,  <39.983315, 33.237312, 32.516357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143085, 32.873592, 32.563046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097550, 0.084442, 0.991642,
		-0.911559, -0.407478, -0.054974,
		0.399430, -0.909303, 0.116723,
		40.262913, 32.600803, 32.598061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534149, 32.877457, 32.900242>,  <39.983315, 33.237312, 32.516357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534149, 32.877457, 32.900242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894558, 32.720863, 32.974964>,  <40.110806, 32.626907, 33.019798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894558, 32.720863, 32.974964>,  <39.534149, 32.877457, 32.900242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894558, 32.720863, 32.974964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089087, 0.254458, 0.962972,
		-0.424523, -0.884302, 0.194397,
		0.901024, -0.391485, 0.186803,
		40.164864, 32.603416, 33.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371166, 32.612328, 33.551422>,  <39.534149, 32.877457, 32.900242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371166, 32.612328, 33.551422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768757, 32.596729, 33.510448>,  <40.007313, 32.587372, 33.485867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768757, 32.596729, 33.510448>,  <39.371166, 32.612328, 33.551422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768757, 32.596729, 33.510448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108426, 0.213309, 0.970950,
		-0.016011, -0.976206, 0.216251,
		0.993976, -0.038993, -0.102430,
		40.066948, 32.585033, 33.479721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591553, 32.261002, 34.140831>,  <39.371166, 32.612328, 33.551422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591553, 32.261002, 34.140831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915970, 32.457016, 34.013035>,  <40.110619, 32.574623, 33.936359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915970, 32.457016, 34.013035>,  <39.591553, 32.261002, 34.140831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915970, 32.457016, 34.013035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171637, 0.322772, 0.930784,
		0.559241, -0.809742, 0.177674,
		0.811043, 0.490037, -0.319489,
		40.159283, 32.604027, 33.917187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181744, 31.980930, 34.480236>,  <39.591553, 32.261002, 34.140831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181744, 31.980930, 34.480236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324753, 32.337959, 34.370335>,  <40.410557, 32.552177, 34.304394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324753, 32.337959, 34.370335>,  <40.181744, 31.980930, 34.480236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324753, 32.337959, 34.370335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130923, 0.243395, 0.961050,
		0.924681, -0.379570, -0.029839,
		0.357524, 0.892572, -0.274757,
		40.432011, 32.605732, 34.287907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690128, 32.125000, 34.910137>,  <40.181744, 31.980930, 34.480236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690128, 32.125000, 34.910137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623558, 32.495155, 34.773926>,  <40.583618, 32.717247, 34.692200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623558, 32.495155, 34.773926>,  <40.690128, 32.125000, 34.910137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623558, 32.495155, 34.773926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142479, 0.364291, 0.920321,
		0.975706, 0.104644, -0.192475,
		-0.166423, 0.925387, -0.340532,
		40.573631, 32.772770, 34.671764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146214, 32.700886, 35.150810>,  <40.690128, 32.125000, 34.910137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146214, 32.700886, 35.150810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800217, 32.879913, 35.060055>,  <40.592621, 32.987328, 35.005604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800217, 32.879913, 35.060055>,  <41.146214, 32.700886, 35.150810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800217, 32.879913, 35.060055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054593, 0.533411, 0.844093,
		0.498810, 0.717746, -0.485829,
		-0.864990, 0.447565, -0.226886,
		40.540718, 33.014183, 34.991989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220810, 33.403900, 35.191055>,  <41.146214, 32.700886, 35.150810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220810, 33.403900, 35.191055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833595, 33.327892, 35.256542>,  <40.601265, 33.282288, 35.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833595, 33.327892, 35.256542>,  <41.220810, 33.403900, 35.191055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833595, 33.327892, 35.256542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108647, 0.270626, 0.956534,
		-0.226062, 0.943745, -0.241331,
		-0.968035, -0.190016, 0.163713,
		40.543186, 33.270889, 35.305656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110287, 33.875404, 35.647987>,  <41.220810, 33.403900, 35.191055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110287, 33.875404, 35.647987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777946, 33.663784, 35.717030>,  <40.578545, 33.536812, 35.758457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777946, 33.663784, 35.717030>,  <41.110287, 33.875404, 35.647987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777946, 33.663784, 35.717030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035731, 0.360246, 0.932173,
		-0.555353, 0.768325, -0.318213,
		-0.830847, -0.529055, 0.172610,
		40.528694, 33.505066, 35.768814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571785, 34.364922, 35.933235>,  <41.110287, 33.875404, 35.647987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571785, 34.364922, 35.933235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502239, 33.983639, 36.032158>,  <40.460510, 33.754868, 36.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502239, 33.983639, 36.032158>,  <40.571785, 34.364922, 35.933235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502239, 33.983639, 36.032158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073990, 0.263067, 0.961936,
		-0.981986, 0.148950, -0.116266,
		-0.173866, -0.953210, 0.247307,
		40.450081, 33.697678, 36.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231792, 34.431190, 36.496990>,  <40.571785, 34.364922, 35.933235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231792, 34.431190, 36.496990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307674, 34.041397, 36.544994>,  <40.353203, 33.807522, 36.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307674, 34.041397, 36.544994>,  <40.231792, 34.431190, 36.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307674, 34.041397, 36.544994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081620, 0.106156, 0.990994,
		-0.978443, -0.197790, -0.059399,
		0.189703, -0.974479, 0.120012,
		40.364586, 33.749054, 36.580997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732002, 34.175922, 37.054050>,  <40.231792, 34.431190, 36.496990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732002, 34.175922, 37.054050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989723, 33.872032, 37.018948>,  <40.144356, 33.689697, 36.997887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989723, 33.872032, 37.018948>,  <39.732002, 34.175922, 37.054050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989723, 33.872032, 37.018948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102981, -0.199887, 0.974392,
		-0.757807, -0.618764, -0.207024,
		0.644300, -0.759721, -0.087755,
		40.183014, 33.644115, 36.992622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412243, 33.599072, 37.419273>,  <39.732002, 34.175922, 37.054050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412243, 33.599072, 37.419273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810753, 33.569542, 37.401474>,  <40.049858, 33.551823, 37.390793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810753, 33.569542, 37.401474>,  <39.412243, 33.599072, 37.419273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810753, 33.569542, 37.401474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028457, -0.205641, 0.978214,
		-0.081366, -0.975839, -0.202775,
		0.996278, -0.073823, -0.044501,
		40.109634, 33.547394, 37.388123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530239, 33.060661, 37.826805>,  <39.412243, 33.599072, 37.419273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530239, 33.060661, 37.826805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875526, 33.255844, 37.775043>,  <40.082699, 33.372955, 37.743984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875526, 33.255844, 37.775043>,  <39.530239, 33.060661, 37.826805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875526, 33.255844, 37.775043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250382, -0.191244, 0.949070,
		0.438358, -0.851659, -0.287262,
		0.863221, 0.487958, -0.129407,
		40.134491, 33.402233, 37.736221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192646, 32.614998, 37.967476>,  <39.530239, 33.060661, 37.826805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192646, 32.614998, 37.967476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312881, 32.992046, 38.025593>,  <40.385025, 33.218277, 38.060463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312881, 32.992046, 38.025593>,  <40.192646, 32.614998, 37.967476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312881, 32.992046, 38.025593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304974, -0.239335, 0.921797,
		0.903679, -0.232775, -0.359418,
		0.300592, 0.942621, 0.145292,
		40.403061, 33.274834, 38.069180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825886, 32.534294, 38.310947>,  <40.192646, 32.614998, 37.967476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825886, 32.534294, 38.310947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724323, 32.913368, 38.388336>,  <40.663383, 33.140812, 38.434769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724323, 32.913368, 38.388336>,  <40.825886, 32.534294, 38.310947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724323, 32.913368, 38.388336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412156, -0.074946, 0.908026,
		0.875019, 0.310295, -0.371563,
		-0.253909, 0.947681, 0.193470,
		40.648151, 33.197674, 38.446377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440269, 32.848541, 38.768276>,  <40.825886, 32.534294, 38.310947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440269, 32.848541, 38.768276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128437, 33.095375, 38.811092>,  <40.941338, 33.243477, 38.836781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128437, 33.095375, 38.811092>,  <41.440269, 32.848541, 38.768276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128437, 33.095375, 38.811092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242914, 0.140386, 0.959836,
		0.577271, 0.774274, -0.259341,
		-0.779584, 0.617083, 0.107041,
		40.894562, 33.280499, 38.843204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703445, 33.419815, 39.121784>,  <41.440269, 32.848541, 38.768276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703445, 33.419815, 39.121784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308880, 33.423889, 39.187363>,  <41.072140, 33.426334, 39.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308880, 33.423889, 39.187363>,  <41.703445, 33.419815, 39.121784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308880, 33.423889, 39.187363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164087, 0.015216, 0.986328,
		0.007549, 0.999832, -0.016680,
		-0.986417, 0.010182, 0.163944,
		41.012955, 33.426945, 39.236546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373600, 34.013435, 39.356903>,  <41.703445, 33.419815, 39.121784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373600, 34.013435, 39.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162487, 33.709343, 39.508430>,  <41.035820, 33.526886, 39.599346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162487, 33.709343, 39.508430>,  <41.373600, 34.013435, 39.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162487, 33.709343, 39.508430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259160, 0.280591, 0.924178,
		-0.808879, 0.585935, 0.048931,
		-0.527779, -0.760229, 0.378815,
		41.004154, 33.481274, 39.622074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770695, 34.598087, 39.032162>,  <41.373600, 34.013435, 39.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770695, 34.598087, 39.032162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692303, 34.461094, 39.399704>,  <41.645267, 34.378899, 39.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692303, 34.461094, 39.399704>,  <41.770695, 34.598087, 39.032162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692303, 34.461094, 39.399704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266171, 0.883268, 0.385992,
		-0.943793, 0.320219, -0.081944,
		-0.195981, -0.342486, 0.918855,
		41.633507, 34.358349, 39.675362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393429, 34.883343, 38.979164>,  <41.770695, 34.598087, 39.032162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393429, 34.883343, 38.979164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700039, 35.117573, 39.084648>,  <42.884007, 35.258110, 39.147938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700039, 35.117573, 39.084648>,  <42.393429, 34.883343, 38.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700039, 35.117573, 39.084648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566918, 0.424046, 0.706251,
		0.301736, -0.690861, 0.657013,
		0.766525, 0.585574, 0.263711,
		42.929996, 35.293243, 39.163761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347691, 34.985878, 39.782967>,  <42.393429, 34.883343, 38.979164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347691, 34.985878, 39.782967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578785, 35.284679, 39.651394>,  <42.717442, 35.463963, 39.572449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578785, 35.284679, 39.651394>,  <42.347691, 34.985878, 39.782967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578785, 35.284679, 39.651394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403945, 0.611860, 0.680041,
		0.709258, -0.260014, 0.655245,
		0.577739, 0.747007, -0.328935,
		42.752106, 35.508781, 39.552715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642498, 35.253574, 40.336628>,  <42.347691, 34.985878, 39.782967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642498, 35.253574, 40.336628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644901, 35.523693, 40.041618>,  <42.646343, 35.685764, 39.864613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644901, 35.523693, 40.041618>,  <42.642498, 35.253574, 40.336628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644901, 35.523693, 40.041618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374993, 0.685233, 0.624369,
		0.927008, 0.272813, 0.257350,
		0.006008, 0.675299, -0.737519,
		42.646706, 35.726284, 39.820362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876007, 35.911682, 40.611362>,  <42.642498, 35.253574, 40.336628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876007, 35.911682, 40.611362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657291, 35.997875, 40.287735>,  <42.526062, 36.049591, 40.093559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657291, 35.997875, 40.287735>,  <42.876007, 35.911682, 40.611362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657291, 35.997875, 40.287735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508119, 0.682618, 0.525212,
		0.665458, 0.698282, -0.263757,
		-0.546791, 0.215486, -0.809064,
		42.493256, 36.062523, 40.045017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894444, 36.619598, 40.586811>,  <42.876007, 35.911682, 40.611362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894444, 36.619598, 40.586811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584805, 36.501137, 40.363003>,  <42.399021, 36.430058, 40.228718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584805, 36.501137, 40.363003>,  <42.894444, 36.619598, 40.586811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584805, 36.501137, 40.363003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605386, 0.604790, 0.517433,
		0.185152, 0.739270, -0.647456,
		-0.774098, -0.296157, -0.559521,
		42.352573, 36.412289, 40.195145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602367, 37.274799, 40.581039>,  <42.894444, 36.619598, 40.586811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602367, 37.274799, 40.581039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322948, 37.017803, 40.455036>,  <42.155296, 36.863605, 40.379436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322948, 37.017803, 40.455036>,  <42.602367, 37.274799, 40.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322948, 37.017803, 40.455036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699773, 0.521423, 0.488299,
		-0.149478, 0.561534, -0.813840,
		-0.698551, -0.642494, -0.315005,
		42.113384, 36.825054, 40.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018631, 37.697678, 40.282619>,  <42.602367, 37.274799, 40.581039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018631, 37.697678, 40.282619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854004, 37.343208, 40.367767>,  <41.755226, 37.130527, 40.418858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854004, 37.343208, 40.367767>,  <42.018631, 37.697678, 40.282619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854004, 37.343208, 40.367767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791566, 0.463339, 0.398421,
		-0.451700, -0.004523, -0.892158,
		-0.411570, -0.886170, 0.212871,
		41.730534, 37.077358, 40.431629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206535, 37.690346, 39.999466>,  <42.018631, 37.697678, 40.282619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206535, 37.690346, 39.999466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286190, 37.438969, 40.300240>,  <41.333984, 37.288143, 40.480705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286190, 37.438969, 40.300240>,  <41.206535, 37.690346, 39.999466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286190, 37.438969, 40.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630894, 0.504929, 0.589083,
		-0.749877, -0.591702, -0.295928,
		0.199139, -0.628439, 0.751936,
		41.345932, 37.250439, 40.525822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566509, 37.705296, 40.374069>,  <41.206535, 37.690346, 39.999466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566509, 37.705296, 40.374069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806801, 37.523663, 40.637260>,  <40.950974, 37.414684, 40.795177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806801, 37.523663, 40.637260>,  <40.566509, 37.705296, 40.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806801, 37.523663, 40.637260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505480, 0.421904, 0.752653,
		-0.619370, -0.784735, 0.023920,
		0.600725, -0.454080, 0.657982,
		40.987019, 37.387440, 40.834656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134872, 37.781734, 40.876480>,  <40.566509, 37.705296, 40.374069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134872, 37.781734, 40.876480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467396, 37.633331, 41.042023>,  <40.666908, 37.544289, 41.141350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467396, 37.633331, 41.042023>,  <40.134872, 37.781734, 40.876480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467396, 37.633331, 41.042023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286010, 0.352908, 0.890873,
		-0.476577, -0.858957, 0.187262,
		0.831308, -0.371010, 0.413859,
		40.716789, 37.522030, 41.166180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983685, 37.220524, 41.328770>,  <40.134872, 37.781734, 40.876480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983685, 37.220524, 41.328770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309696, 37.432850, 41.421688>,  <40.505302, 37.560246, 41.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309696, 37.432850, 41.421688>,  <39.983685, 37.220524, 41.328770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309696, 37.432850, 41.421688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507434, 0.460355, 0.728412,
		0.279715, -0.711552, 0.644557,
		0.815028, 0.530817, 0.232298,
		40.554203, 37.592094, 41.491379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806053, 37.370888, 42.041260>,  <39.983685, 37.220524, 41.328770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806053, 37.370888, 42.041260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111057, 37.603649, 41.928146>,  <40.294060, 37.743305, 41.860279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111057, 37.603649, 41.928146>,  <39.806053, 37.370888, 42.041260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111057, 37.603649, 41.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257703, 0.674093, 0.692234,
		0.593432, -0.454964, 0.663962,
		0.762514, 0.581899, -0.282783,
		40.339813, 37.778217, 41.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369255, 37.485302, 42.588036>,  <39.806053, 37.370888, 42.041260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369255, 37.485302, 42.588036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292061, 37.788845, 42.339233>,  <40.245743, 37.970970, 42.189953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292061, 37.788845, 42.339233>,  <40.369255, 37.485302, 42.588036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292061, 37.788845, 42.339233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330616, 0.546555, 0.769396,
		0.923822, 0.354129, 0.145412,
		-0.192990, 0.758861, -0.622001,
		40.234165, 38.016502, 42.152634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481937, 38.068119, 42.977051>,  <40.369255, 37.485302, 42.588036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481937, 38.068119, 42.977051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301258, 38.229939, 42.658978>,  <40.192852, 38.327030, 42.468136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301258, 38.229939, 42.658978>,  <40.481937, 38.068119, 42.977051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301258, 38.229939, 42.658978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312140, 0.763296, 0.565639,
		0.835786, 0.503704, -0.218503,
		-0.451697, 0.404550, -0.795179,
		40.165749, 38.351303, 42.420425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621136, 38.799946, 42.915066>,  <40.481937, 38.068119, 42.977051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621136, 38.799946, 42.915066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258686, 38.731983, 42.760109>,  <40.041218, 38.691204, 42.667133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258686, 38.731983, 42.760109>,  <40.621136, 38.799946, 42.915066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258686, 38.731983, 42.760109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359010, 0.793239, 0.491817,
		0.223732, 0.584725, -0.779770,
		-0.906121, -0.169910, -0.387395,
		39.986851, 38.681011, 42.643890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268894, 39.309639, 43.225384>,  <40.621136, 38.799946, 42.915066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268894, 39.309639, 43.225384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961941, 39.130154, 43.042179>,  <39.777767, 39.022461, 42.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961941, 39.130154, 43.042179>,  <40.268894, 39.309639, 43.225384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961941, 39.130154, 43.042179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618761, 0.705506, 0.345538,
		0.168083, 0.548561, -0.819042,
		-0.767387, -0.448712, -0.458011,
		39.731724, 38.995541, 42.904778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864178, 39.733620, 42.861557>,  <40.268894, 39.309639, 43.225384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864178, 39.733620, 42.861557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613640, 39.433556, 42.946369>,  <39.463318, 39.253517, 42.997257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613640, 39.433556, 42.946369>,  <39.864178, 39.733620, 42.861557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613640, 39.433556, 42.946369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644763, 0.651391, 0.399964,
		-0.438153, 0.113803, -0.891668,
		-0.626341, -0.750160, 0.212033,
		39.425739, 39.208508, 43.009979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201199, 39.977497, 42.806362>,  <39.864178, 39.733620, 42.861557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201199, 39.977497, 42.806362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162422, 39.647659, 43.029305>,  <39.139156, 39.449757, 43.163071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162422, 39.647659, 43.029305>,  <39.201199, 39.977497, 42.806362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162422, 39.647659, 43.029305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644501, 0.478739, 0.596177,
		-0.758433, -0.301424, -0.577861,
		-0.096942, -0.824592, 0.557360,
		39.133339, 39.400280, 43.196514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484440, 39.845299, 42.816525>,  <39.201199, 39.977497, 42.806362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484440, 39.845299, 42.816525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633766, 39.673145, 43.145256>,  <38.723362, 39.569851, 43.342495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633766, 39.673145, 43.145256>,  <38.484440, 39.845299, 42.816525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633766, 39.673145, 43.145256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760419, 0.365490, 0.536824,
		-0.531413, -0.825338, -0.190833,
		0.373314, -0.430389, 0.821829,
		38.745762, 39.544029, 43.391804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890610, 39.598988, 43.135674>,  <38.484440, 39.845299, 42.816525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890610, 39.598988, 43.135674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146545, 39.582542, 43.442638>,  <38.300106, 39.572674, 43.626816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146545, 39.582542, 43.442638>,  <37.890610, 39.598988, 43.135674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146545, 39.582542, 43.442638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695084, 0.394994, 0.600698,
		-0.327818, -0.917763, 0.224156,
		0.639839, -0.041112, 0.767408,
		38.338497, 39.570210, 43.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573086, 39.329674, 43.826160>,  <37.890610, 39.598988, 43.135674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573086, 39.329674, 43.826160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875874, 39.581173, 43.897343>,  <38.057545, 39.732075, 43.940052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875874, 39.581173, 43.897343>,  <37.573086, 39.329674, 43.826160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875874, 39.581173, 43.897343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540865, 0.450043, 0.710581,
		0.366691, -0.634138, 0.680739,
		0.756969, 0.628752, 0.177957,
		38.102962, 39.769798, 43.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746895, 39.195847, 44.572929>,  <37.573086, 39.329674, 43.826160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746895, 39.195847, 44.572929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849415, 39.541862, 44.400414>,  <37.910927, 39.749474, 44.296906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849415, 39.541862, 44.400414>,  <37.746895, 39.195847, 44.572929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849415, 39.541862, 44.400414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654065, 0.483738, 0.581546,
		0.711694, 0.133041, 0.689777,
		0.256302, 0.865042, -0.431291,
		37.926304, 39.801376, 44.271027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681313, 39.832611, 45.028618>,  <37.746895, 39.195847, 44.572929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681313, 39.832611, 45.028618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648438, 40.000763, 44.667171>,  <37.628712, 40.101654, 44.450302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648438, 40.000763, 44.667171>,  <37.681313, 39.832611, 45.028618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648438, 40.000763, 44.667171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528983, 0.750027, 0.397035,
		0.844643, 0.510631, 0.160728,
		-0.082189, 0.420375, -0.903620,
		37.623779, 40.126877, 44.396084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929302, 40.557529, 44.979637>,  <37.681313, 39.832611, 45.028618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929302, 40.557529, 44.979637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631721, 40.469154, 44.727375>,  <37.453175, 40.416130, 44.576019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631721, 40.469154, 44.727375>,  <37.929302, 40.557529, 44.979637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631721, 40.469154, 44.727375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554927, 0.730041, 0.398869,
		0.372280, 0.646706, -0.665717,
		-0.743951, -0.220933, -0.630654,
		37.408535, 40.402874, 44.538177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922020, 41.003544, 44.441517>,  <37.929302, 40.557529, 44.979637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922020, 41.003544, 44.441517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562115, 40.867699, 44.551128>,  <37.346172, 40.786190, 44.616898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562115, 40.867699, 44.551128>,  <37.922020, 41.003544, 44.441517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562115, 40.867699, 44.551128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242731, 0.911345, 0.332462,
		-0.362646, 0.232621, -0.902428,
		-0.899761, -0.339614, 0.274032,
		37.292187, 40.765816, 44.633339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554905, 40.734867, 44.386333>,  <37.922020, 41.003544, 44.441517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554905, 40.734867, 44.386333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407608, 40.369743, 44.456963>,  <38.319229, 40.150669, 44.499340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407608, 40.369743, 44.456963>,  <38.554905, 40.734867, 44.386333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407608, 40.369743, 44.456963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778598, -0.406565, -0.478007,
		0.508117, -0.038544, 0.860425,
		-0.368243, -0.912808, 0.176573,
		38.297134, 40.095901, 44.509933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066715, 40.307583, 44.422089>,  <38.554905, 40.734867, 44.386333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066715, 40.307583, 44.422089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761124, 40.069393, 44.322685>,  <38.577770, 39.926479, 44.263042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761124, 40.069393, 44.322685>,  <39.066715, 40.307583, 44.422089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761124, 40.069393, 44.322685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580022, -0.465035, -0.668818,
		0.282698, -0.655100, 0.700661,
		-0.763974, -0.595472, -0.248508,
		38.531933, 39.890751, 44.248135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214474, 39.574654, 44.606930>,  <39.066715, 40.307583, 44.422089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214474, 39.574654, 44.606930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941326, 39.598221, 44.315666>,  <38.777439, 39.612362, 44.140907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941326, 39.598221, 44.315666>,  <39.214474, 39.574654, 44.606930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941326, 39.598221, 44.315666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563914, -0.591148, -0.576667,
		-0.464427, -0.804409, 0.370452,
		-0.682867, 0.058917, -0.728162,
		38.736465, 39.615894, 44.097218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162262, 38.907707, 44.427589>,  <39.214474, 39.574654, 44.606930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162262, 38.907707, 44.427589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016853, 39.088013, 44.101482>,  <38.929607, 39.196198, 43.905819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016853, 39.088013, 44.101482>,  <39.162262, 38.907707, 44.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016853, 39.088013, 44.101482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510275, -0.635831, -0.579083,
		-0.779405, -0.626520, 0.001122,
		-0.363521, 0.450768, -0.815268,
		38.907799, 39.223244, 43.856903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190269, 38.328110, 43.916634>,  <39.162262, 38.907707, 44.427589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190269, 38.328110, 43.916634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152435, 38.657948, 43.693531>,  <39.129734, 38.855850, 43.559669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152435, 38.657948, 43.693531>,  <39.190269, 38.328110, 43.916634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152435, 38.657948, 43.693531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529740, -0.432672, -0.729500,
		-0.842870, -0.364468, -0.395897,
		-0.094586, 0.824596, -0.557760,
		39.124058, 38.905327, 43.526203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075272, 38.026581, 43.238171>,  <39.190269, 38.328110, 43.916634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075272, 38.026581, 43.238171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113243, 38.415005, 43.150509>,  <39.136024, 38.648060, 43.097912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113243, 38.415005, 43.150509>,  <39.075272, 38.026581, 43.238171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113243, 38.415005, 43.150509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331869, -0.238426, -0.912697,
		-0.938537, 0.013907, -0.344898,
		0.094926, 0.971061, -0.219157,
		39.141720, 38.706322, 43.084763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662148, 38.203888, 42.670753>,  <39.075272, 38.026581, 43.238171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662148, 38.203888, 42.670753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988579, 38.428852, 42.723984>,  <39.184437, 38.563831, 42.755920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988579, 38.428852, 42.723984>,  <38.662148, 38.203888, 42.670753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988579, 38.428852, 42.723984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392924, -0.371064, -0.841381,
		-0.423827, 0.738919, -0.523803,
		0.816077, 0.562415, 0.133072,
		39.233402, 38.597576, 42.763905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854549, 38.591106, 42.095757>,  <38.662148, 38.203888, 42.670753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854549, 38.591106, 42.095757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199444, 38.588120, 42.298336>,  <39.406380, 38.586327, 42.419884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199444, 38.588120, 42.298336>,  <38.854549, 38.591106, 42.095757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199444, 38.588120, 42.298336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491639, -0.228146, -0.840381,
		0.121820, 0.973598, -0.193044,
		0.862236, -0.007467, 0.506452,
		39.458115, 38.585880, 42.450272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332676, 38.998726, 41.673199>,  <38.854549, 38.591106, 42.095757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332676, 38.998726, 41.673199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552204, 38.810596, 41.949631>,  <39.683922, 38.697720, 42.115490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552204, 38.810596, 41.949631>,  <39.332676, 38.998726, 41.673199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552204, 38.810596, 41.949631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697105, -0.198746, -0.688872,
		0.461340, 0.859824, 0.218788,
		0.548825, -0.470322, 0.691077,
		39.716850, 38.669498, 42.156956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895584, 38.999523, 41.307800>,  <39.332676, 38.998726, 41.673199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895584, 38.999523, 41.307800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983089, 38.797710, 41.641888>,  <40.035595, 38.676624, 41.842339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983089, 38.797710, 41.641888>,  <39.895584, 38.999523, 41.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983089, 38.797710, 41.641888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747174, -0.463911, -0.475939,
		0.627593, 0.728174, 0.275482,
		0.218768, -0.504529, 0.835219,
		40.048721, 38.646351, 41.892452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659111, 39.018215, 41.529041>,  <39.895584, 38.999523, 41.307800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659111, 39.018215, 41.529041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491573, 38.670765, 41.634911>,  <40.391048, 38.462296, 41.698433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491573, 38.670765, 41.634911>,  <40.659111, 39.018215, 41.529041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491573, 38.670765, 41.634911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680014, -0.493204, -0.542522,
		0.601786, -0.047256, 0.797258,
		-0.418849, -0.868629, 0.264669,
		40.365917, 38.410175, 41.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235641, 38.604301, 41.460007>,  <40.659111, 39.018215, 41.529041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235641, 38.604301, 41.460007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941338, 38.354000, 41.563614>,  <40.764755, 38.203819, 41.625778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941338, 38.354000, 41.563614>,  <41.235641, 38.604301, 41.460007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941338, 38.354000, 41.563614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590700, -0.780019, -0.206504,
		0.331259, 0.001065, 0.943539,
		-0.735759, -0.625755, 0.259018,
		40.720612, 38.166275, 41.641319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645691, 38.071503, 41.737011>,  <41.235641, 38.604301, 41.460007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645691, 38.071503, 41.737011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288303, 37.937649, 41.617191>,  <41.073872, 37.857338, 41.545300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288303, 37.937649, 41.617191>,  <41.645691, 38.071503, 41.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288303, 37.937649, 41.617191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436465, -0.804183, -0.403469,
		-0.105881, -0.491231, 0.864570,
		-0.893469, -0.334635, -0.299553,
		41.020264, 37.837257, 41.527325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554794, 37.380669, 42.022713>,  <41.645691, 38.071503, 41.737011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554794, 37.380669, 42.022713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321457, 37.431156, 41.701771>,  <41.181454, 37.461449, 41.509205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321457, 37.431156, 41.701771>,  <41.554794, 37.380669, 42.022713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321457, 37.431156, 41.701771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466533, -0.756571, -0.458201,
		-0.664872, -0.641615, 0.382458,
		-0.583346, 0.126216, -0.802358,
		41.146454, 37.469021, 41.461063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781952, 36.862373, 41.670853>,  <41.554794, 37.380669, 42.022713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781952, 36.862373, 41.670853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512093, 37.010113, 41.415218>,  <41.350178, 37.098759, 41.261837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512093, 37.010113, 41.415218>,  <41.781952, 36.862373, 41.670853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512093, 37.010113, 41.415218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367920, -0.582317, -0.724943,
		-0.639907, -0.724214, 0.256969,
		-0.674651, 0.369352, -0.639082,
		41.309696, 37.120918, 41.223495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373501, 36.325020, 41.403477>,  <41.781952, 36.862373, 41.670853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373501, 36.325020, 41.403477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364979, 36.616821, 41.130020>,  <41.359867, 36.791904, 40.965946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364979, 36.616821, 41.130020>,  <41.373501, 36.325020, 41.403477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364979, 36.616821, 41.130020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403357, -0.619404, -0.673530,
		-0.914795, -0.290098, -0.281059,
		-0.021301, 0.729508, -0.683640,
		41.358589, 36.835674, 40.924927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291164, 35.934235, 40.799225>,  <41.373501, 36.325020, 41.403477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291164, 35.934235, 40.799225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360153, 36.298096, 40.648075>,  <41.401546, 36.516411, 40.557384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360153, 36.298096, 40.648075>,  <41.291164, 35.934235, 40.799225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360153, 36.298096, 40.648075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603711, -0.400745, -0.689156,
		-0.778323, -0.109269, -0.618283,
		0.172471, 0.909650, -0.377876,
		41.411896, 36.570992, 40.534714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166367, 35.970646, 40.076111>,  <41.291164, 35.934235, 40.799225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166367, 35.970646, 40.076111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459450, 36.233150, 40.148182>,  <41.635300, 36.390652, 40.191425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459450, 36.233150, 40.148182>,  <41.166367, 35.970646, 40.076111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459450, 36.233150, 40.148182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504973, -0.346793, -0.790403,
		-0.456225, 0.670119, -0.585491,
		0.732708, 0.656259, 0.180176,
		41.679264, 36.430027, 40.202236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361797, 36.288486, 39.450092>,  <41.166367, 35.970646, 40.076111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361797, 36.288486, 39.450092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682182, 36.287350, 39.689579>,  <41.874413, 36.286667, 39.833271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682182, 36.287350, 39.689579>,  <41.361797, 36.288486, 39.450092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682182, 36.287350, 39.689579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556447, -0.365543, -0.746154,
		0.220979, 0.930790, -0.291201,
		0.800959, -0.002846, 0.598713,
		41.922470, 36.286495, 39.869194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889381, 36.419586, 38.948544>,  <41.361797, 36.288486, 39.450092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889381, 36.419586, 38.948544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067715, 36.284199, 39.280006>,  <42.174713, 36.202965, 39.478886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067715, 36.284199, 39.280006>,  <41.889381, 36.419586, 38.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067715, 36.284199, 39.280006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786807, -0.293235, -0.543091,
		0.426812, 0.894120, 0.135579,
		0.445832, -0.338472, 0.828656,
		42.201466, 36.182655, 39.528603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553352, 36.762886, 38.974960>,  <41.889381, 36.419586, 38.948544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553352, 36.762886, 38.974960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556900, 36.432510, 39.200436>,  <42.559029, 36.234283, 39.335720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556900, 36.432510, 39.200436>,  <42.553352, 36.762886, 38.974960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556900, 36.432510, 39.200436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673396, -0.411793, -0.613975,
		0.739229, 0.385031, 0.552531,
		0.008871, -0.825940, 0.563688,
		42.559563, 36.184727, 39.369541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260792, 36.556515, 39.071457>,  <42.553352, 36.762886, 38.974960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260792, 36.556515, 39.071457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104206, 36.213684, 39.205429>,  <43.010254, 36.007984, 39.285812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104206, 36.213684, 39.205429>,  <43.260792, 36.556515, 39.071457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104206, 36.213684, 39.205429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614820, -0.514423, -0.597800,
		0.684656, -0.028095, 0.728325,
		-0.391462, -0.857076, 0.334929,
		42.986767, 35.956562, 39.305908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859673, 36.167549, 39.037136>,  <43.260792, 36.556515, 39.071457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859673, 36.167549, 39.037136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558529, 35.904945, 39.055923>,  <43.377842, 35.747383, 39.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558529, 35.904945, 39.055923>,  <43.859673, 36.167549, 39.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558529, 35.904945, 39.055923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433076, -0.547847, -0.715758,
		0.495632, -0.518522, 0.696767,
		-0.752857, -0.656505, 0.046971,
		43.332672, 35.707993, 39.070015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158787, 35.706314, 38.609829>,  <43.859673, 36.167549, 39.037136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158787, 35.706314, 38.609829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788406, 35.560780, 38.650307>,  <43.566177, 35.473457, 38.674595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788406, 35.560780, 38.650307>,  <44.158787, 35.706314, 38.609829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788406, 35.560780, 38.650307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196546, -0.693097, -0.693532,
		0.322475, -0.622284, 0.713283,
		-0.925948, -0.363840, 0.101199,
		43.510620, 35.451630, 38.680668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206631, 35.007233, 38.612930>,  <44.158787, 35.706314, 38.609829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206631, 35.007233, 38.612930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849895, 35.107807, 38.462517>,  <43.635853, 35.168152, 38.372269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849895, 35.107807, 38.462517>,  <44.206631, 35.007233, 38.612930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849895, 35.107807, 38.462517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154846, -0.611375, -0.776043,
		-0.425029, -0.750332, 0.506312,
		-0.891837, 0.251440, -0.376038,
		43.582344, 35.183239, 38.349705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843933, 34.373585, 38.301521>,  <44.206631, 35.007233, 38.612930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843933, 34.373585, 38.301521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753399, 34.700695, 38.089855>,  <43.699078, 34.896961, 37.962856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753399, 34.700695, 38.089855>,  <43.843933, 34.373585, 38.301521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753399, 34.700695, 38.089855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345494, -0.440535, -0.828590,
		-0.910717, -0.370362, -0.182829,
		-0.226336, 0.817778, -0.529161,
		43.685497, 34.946030, 37.931107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296829, 34.293285, 37.817982>,  <43.843933, 34.373585, 38.301521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296829, 34.293285, 37.817982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521610, 34.585087, 37.662014>,  <43.656479, 34.760166, 37.568436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521610, 34.585087, 37.662014>,  <43.296829, 34.293285, 37.817982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521610, 34.585087, 37.662014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039059, -0.494264, -0.868434,
		-0.826244, 0.472792, -0.306249,
		0.561956, 0.729500, -0.389915,
		43.690197, 34.803936, 37.545040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073242, 34.451496, 37.137623>,  <43.296829, 34.293285, 37.817982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073242, 34.451496, 37.137623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461147, 34.548725, 37.128918>,  <43.693890, 34.607063, 37.123695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461147, 34.548725, 37.128918>,  <43.073242, 34.451496, 37.137623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461147, 34.548725, 37.128918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136220, -0.613154, -0.778130,
		-0.202486, 0.751638, -0.627726,
		0.969765, 0.243069, -0.021767,
		43.752075, 34.621647, 37.122387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188770, 34.116882, 36.388748>,  <43.073242, 34.451496, 37.137623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188770, 34.116882, 36.388748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509483, 34.277161, 36.566105>,  <43.701912, 34.373325, 36.672520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509483, 34.277161, 36.566105>,  <43.188770, 34.116882, 36.388748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509483, 34.277161, 36.566105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507612, -0.065049, -0.859127,
		-0.315403, 0.913901, -0.255551,
		0.801780, 0.400691, 0.443391,
		43.750019, 34.397369, 36.699123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381813, 34.798843, 36.104694>,  <43.188770, 34.116882, 36.388748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381813, 34.798843, 36.104694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695503, 34.600071, 36.253315>,  <43.883717, 34.480808, 36.342487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695503, 34.600071, 36.253315>,  <43.381813, 34.798843, 36.104694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695503, 34.600071, 36.253315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428926, 0.001487, -0.903338,
		0.448343, 0.867790, 0.214312,
		0.784226, -0.496930, 0.371551,
		43.930771, 34.450993, 36.364780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944031, 35.180817, 36.052582>,  <43.381813, 34.798843, 36.104694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944031, 35.180817, 36.052582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031643, 34.790554, 36.048077>,  <44.084209, 34.556396, 36.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031643, 34.790554, 36.048077>,  <43.944031, 35.180817, 36.052582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031643, 34.790554, 36.048077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534378, 0.129613, -0.835249,
		0.816373, 0.176927, 0.549756,
		0.219034, -0.975652, -0.011267,
		44.097355, 34.497860, 36.044697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718029, 35.071503, 35.837601>,  <43.944031, 35.180817, 36.052582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718029, 35.071503, 35.837601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480270, 34.762985, 35.746567>,  <44.337616, 34.577873, 35.691944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480270, 34.762985, 35.746567>,  <44.718029, 35.071503, 35.837601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480270, 34.762985, 35.746567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616462, -0.255295, -0.744848,
		0.516394, -0.583037, 0.627220,
		-0.594400, -0.771292, -0.227588,
		44.301949, 34.531597, 35.678291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122288, 35.612396, 35.570972>,  <44.718029, 35.071503, 35.837601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122288, 35.612396, 35.570972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359398, 35.869995, 35.764416>,  <45.501663, 36.024555, 35.880482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359398, 35.869995, 35.764416>,  <45.122288, 35.612396, 35.570972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359398, 35.869995, 35.764416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719977, -0.692838, 0.040113,
		0.360897, 0.324411, -0.874363,
		0.592779, 0.643998, 0.483612,
		45.537231, 36.063194, 35.909500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801083, 35.502663, 35.237476>,  <45.122288, 35.612396, 35.570972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801083, 35.502663, 35.237476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805882, 35.643749, 35.611736>,  <45.808762, 35.728401, 35.836292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805882, 35.643749, 35.611736>,  <45.801083, 35.502663, 35.237476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805882, 35.643749, 35.611736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704465, -0.667049, 0.242434,
		0.709637, 0.656226, -0.256480,
		0.011993, 0.352721, 0.935652,
		45.809479, 35.749565, 35.892433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511765, 35.790268, 35.395844>,  <45.801083, 35.502663, 35.237476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511765, 35.790268, 35.395844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277180, 35.646091, 35.685989>,  <46.136429, 35.559586, 35.860077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277180, 35.646091, 35.685989>,  <46.511765, 35.790268, 35.395844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277180, 35.646091, 35.685989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702519, -0.672088, 0.234019,
		0.403156, 0.646821, 0.647370,
		-0.586458, -0.360443, 0.725360,
		46.101242, 35.537960, 35.903599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908497, 35.715260, 35.965420>,  <46.511765, 35.790268, 35.395844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908497, 35.715260, 35.965420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595940, 35.481731, 36.053581>,  <46.408405, 35.341614, 36.106480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595940, 35.481731, 36.053581>,  <46.908497, 35.715260, 35.965420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595940, 35.481731, 36.053581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624034, -0.729816, 0.279194,
		-0.002144, 0.355701, 0.934597,
		-0.781394, -0.583820, 0.220405,
		46.361523, 35.306587, 36.119701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016285, 35.361523, 36.704124>,  <46.908497, 35.715260, 35.965420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016285, 35.361523, 36.704124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860733, 35.192127, 36.376850>,  <46.767403, 35.090488, 36.180485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860733, 35.192127, 36.376850>,  <47.016285, 35.361523, 36.704124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.860733, 35.192127, 36.376850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670142, -0.739449, 0.064224,
		-0.632206, -0.523326, 0.571354,
		-0.388877, -0.423491, -0.818187,
		46.744068, 35.065079, 36.131393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081474, 34.588951, 36.760380>,  <47.016285, 35.361523, 36.704124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081474, 34.588951, 36.760380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.050148, 34.686440, 36.373707>,  <47.031353, 34.744934, 36.141705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.050148, 34.686440, 36.373707>,  <47.081474, 34.588951, 36.760380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.050148, 34.686440, 36.373707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754047, -0.619815, -0.217356,
		-0.652136, -0.745942, -0.135238,
		-0.078313, 0.243721, -0.966678,
		47.026653, 34.759556, 36.083702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.927746, 34.029747, 36.359570>,  <47.081474, 34.588951, 36.760380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.927746, 34.029747, 36.359570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110149, 34.292530, 36.119415>,  <47.219593, 34.450199, 35.975323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110149, 34.292530, 36.119415>,  <46.927746, 34.029747, 36.359570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110149, 34.292530, 36.119415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704484, -0.678692, -0.207559,
		-0.543834, -0.328314, -0.772304,
		0.456012, 0.656953, -0.600388,
		47.246952, 34.489616, 35.939301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044720, 33.743778, 35.659588>,  <46.927746, 34.029747, 36.359570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044720, 33.743778, 35.659588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324253, 34.026829, 35.701332>,  <47.491974, 34.196659, 35.726379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324253, 34.026829, 35.701332>,  <47.044720, 33.743778, 35.659588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324253, 34.026829, 35.701332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699806, -0.646215, -0.304430,
		-0.147982, 0.285781, -0.946800,
		0.698837, 0.707626, 0.104363,
		47.533905, 34.239117, 35.732639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249027, 34.098072, 34.963421>,  <47.044720, 33.743778, 35.659588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249027, 34.098072, 34.963421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537754, 34.082100, 35.239796>,  <47.710991, 34.072517, 35.405621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537754, 34.082100, 35.239796>,  <47.249027, 34.098072, 34.963421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537754, 34.082100, 35.239796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627566, -0.383152, -0.677758,
		0.291798, 0.922821, -0.251504,
		0.721814, -0.039933, 0.690934,
		47.754299, 34.070122, 35.447075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534916, 34.765549, 35.139160>,  <47.249027, 34.098072, 34.963421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534916, 34.765549, 35.139160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320385, 34.859486, 34.814888>,  <47.191666, 34.915848, 34.620323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320385, 34.859486, 34.814888>,  <47.534916, 34.765549, 35.139160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320385, 34.859486, 34.814888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087986, 0.939718, 0.330437,
		0.839411, 0.248551, -0.483333,
		-0.536327, 0.234846, -0.810679,
		47.159489, 34.929939, 34.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.291706, 34.831383, 34.971024>,  <47.534916, 34.765549, 35.139160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.291706, 34.831383, 34.971024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.967129, 34.997425, 34.806461>,  <47.772381, 35.097050, 34.707726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.967129, 34.997425, 34.806461>,  <48.291706, 34.831383, 34.971024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.967129, 34.997425, 34.806461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470105, 0.881814, -0.037483,
		0.347221, -0.223818, -0.910683,
		-0.811443, 0.415101, -0.411402,
		47.723698, 35.121956, 34.683041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.056087, 30.016333, 33.421104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739208, 30.205082, 33.266308>,  <36.549080, 30.318331, 33.173431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739208, 30.205082, 33.266308>,  <37.056087, 30.016333, 33.421104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739208, 30.205082, 33.266308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215271, 0.377290, 0.900728,
		0.571035, 0.796862, -0.197308,
		-0.792198, 0.471872, -0.386987,
		36.501549, 30.346643, 33.150211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069721, 30.544010, 33.777447>,  <37.056087, 30.016333, 33.421104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069721, 30.544010, 33.777447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697765, 30.549044, 33.630402>,  <36.474590, 30.552063, 33.542175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697765, 30.549044, 33.630402>,  <37.069721, 30.544010, 33.777447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697765, 30.549044, 33.630402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335539, 0.380458, 0.861780,
		0.150704, 0.924713, -0.349564,
		-0.929893, 0.012582, -0.367614,
		36.418797, 30.552818, 33.520119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933250, 31.154490, 33.914818>,  <37.069721, 30.544010, 33.777447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933250, 31.154490, 33.914818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582245, 30.969467, 33.864216>,  <36.371639, 30.858454, 33.833855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582245, 30.969467, 33.864216>,  <36.933250, 31.154490, 33.914818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582245, 30.969467, 33.864216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292469, 0.307168, 0.905599,
		-0.380032, 0.831678, -0.404829,
		-0.877518, -0.462557, -0.126506,
		36.318989, 30.830700, 33.826263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454716, 31.611635, 34.022251>,  <36.933250, 31.154490, 33.914818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454716, 31.611635, 34.022251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238853, 31.278839, 34.073738>,  <36.109337, 31.079161, 34.104630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238853, 31.278839, 34.073738>,  <36.454716, 31.611635, 34.022251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238853, 31.278839, 34.073738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346902, 0.359061, 0.866449,
		-0.767095, 0.422928, -0.482387,
		-0.539652, -0.831990, 0.128720,
		36.076958, 31.029242, 34.112354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864674, 31.869047, 34.212975>,  <36.454716, 31.611635, 34.022251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864674, 31.869047, 34.212975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869278, 31.489107, 34.337975>,  <35.872040, 31.261143, 34.412975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869278, 31.489107, 34.337975>,  <35.864674, 31.869047, 34.212975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869278, 31.489107, 34.337975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421403, 0.278802, 0.862954,
		-0.906801, -0.141617, -0.397061,
		0.011508, -0.949850, 0.312496,
		35.872730, 31.204153, 34.431725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241543, 31.885817, 34.686012>,  <35.864674, 31.869047, 34.212975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241543, 31.885817, 34.686012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451008, 31.557774, 34.778278>,  <35.576687, 31.360949, 34.833637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451008, 31.557774, 34.778278>,  <35.241543, 31.885817, 34.686012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451008, 31.557774, 34.778278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355920, 0.035397, 0.933846,
		-0.774018, -0.571115, -0.273356,
		0.523658, -0.820106, 0.230669,
		35.608105, 31.311741, 34.847481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806770, 31.559649, 35.164406>,  <35.241543, 31.885817, 34.686012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806770, 31.559649, 35.164406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181488, 31.429544, 35.215984>,  <35.406319, 31.351482, 35.246933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181488, 31.429544, 35.215984>,  <34.806770, 31.559649, 35.164406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181488, 31.429544, 35.215984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109042, 0.078789, 0.990910,
		-0.332462, -0.942337, 0.038342,
		0.936792, -0.325259, 0.128949,
		35.462524, 31.331966, 35.254669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665611, 30.958431, 35.609367>,  <34.806770, 31.559649, 35.164406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665611, 30.958431, 35.609367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.030346, 31.121790, 35.626213>,  <35.249187, 31.219805, 35.636322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.030346, 31.121790, 35.626213>,  <34.665611, 30.958431, 35.609367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030346, 31.121790, 35.626213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067825, 0.048673, 0.996509,
		0.404922, -0.911505, 0.072081,
		0.911832, 0.408398, 0.042115,
		35.303894, 31.244308, 35.638847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961647, 30.696257, 36.329506>,  <34.665611, 30.958431, 35.609367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961647, 30.696257, 36.329506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205086, 30.987370, 36.203049>,  <35.351151, 31.162037, 36.127174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205086, 30.987370, 36.203049>,  <34.961647, 30.696257, 36.329506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205086, 30.987370, 36.203049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169286, 0.270164, 0.947815,
		0.775212, -0.630355, 0.041218,
		0.608595, 0.727780, -0.316145,
		35.387665, 31.205704, 36.108204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785179, 30.587830, 36.544708>,  <34.961647, 30.696257, 36.329506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785179, 30.587830, 36.544708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699821, 30.974052, 36.485165>,  <35.648609, 31.205786, 36.449440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699821, 30.974052, 36.485165>,  <35.785179, 30.587830, 36.544708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699821, 30.974052, 36.485165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265694, 0.203983, 0.942230,
		0.940144, 0.161512, -0.300071,
		-0.213391, 0.965559, -0.148860,
		35.635803, 31.263720, 36.440506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197147, 30.877132, 37.024746>,  <35.785179, 30.587830, 36.544708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197147, 30.877132, 37.024746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958820, 31.187038, 36.940140>,  <35.815823, 31.372982, 36.889378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958820, 31.187038, 36.940140>,  <36.197147, 30.877132, 37.024746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958820, 31.187038, 36.940140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046077, 0.295909, 0.954104,
		0.801796, 0.558727, -0.212007,
		-0.595818, 0.774766, -0.211515,
		35.780075, 31.419468, 36.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619473, 31.502237, 37.062447>,  <36.197147, 30.877132, 37.024746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619473, 31.502237, 37.062447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.246597, 31.633554, 37.123432>,  <36.022873, 31.712345, 37.160023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.246597, 31.633554, 37.123432>,  <36.619473, 31.502237, 37.062447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246597, 31.633554, 37.123432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282829, 0.397756, 0.872811,
		0.225894, 0.856747, -0.463635,
		-0.932191, 0.328292, 0.152462,
		35.966942, 31.732042, 37.169170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756092, 32.144382, 37.284710>,  <36.619473, 31.502237, 37.062447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756092, 32.144382, 37.284710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386154, 32.062366, 37.412853>,  <36.164192, 32.013157, 37.489738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386154, 32.062366, 37.412853>,  <36.756092, 32.144382, 37.284710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386154, 32.062366, 37.412853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254479, 0.292418, 0.921809,
		-0.282685, 0.934051, -0.218262,
		-0.924840, -0.205039, 0.320359,
		36.108704, 32.000854, 37.508961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468266, 32.711483, 37.671616>,  <36.756092, 32.144382, 37.284710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468266, 32.711483, 37.671616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189270, 32.453663, 37.796875>,  <36.021873, 32.298969, 37.872032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189270, 32.453663, 37.796875>,  <36.468266, 32.711483, 37.671616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189270, 32.453663, 37.796875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208236, 0.235835, 0.949220,
		-0.685674, 0.727279, -0.030273,
		-0.697488, -0.644552, 0.313152,
		35.980022, 32.260296, 37.890820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986938, 33.044235, 38.083206>,  <36.468266, 32.711483, 37.671616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986938, 33.044235, 38.083206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003750, 32.655449, 38.175735>,  <36.013836, 32.422176, 38.231255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003750, 32.655449, 38.175735>,  <35.986938, 33.044235, 38.083206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003750, 32.655449, 38.175735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296268, 0.233237, 0.926189,
		-0.954180, 0.029609, 0.297766,
		0.042027, -0.971969, 0.231322,
		36.016357, 32.363857, 38.245132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794769, 33.103939, 38.676552>,  <35.986938, 33.044235, 38.083206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794769, 33.103939, 38.676552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941116, 32.731728, 38.670193>,  <36.028927, 32.508400, 38.666378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941116, 32.731728, 38.670193>,  <35.794769, 33.103939, 38.676552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941116, 32.731728, 38.670193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335165, 0.115804, 0.935016,
		-0.868218, -0.347426, 0.354250,
		0.365872, -0.930529, -0.015902,
		36.050877, 32.452568, 38.665421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571056, 32.852585, 39.339767>,  <35.794769, 33.103939, 38.676552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571056, 32.852585, 39.339767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870365, 32.620876, 39.210434>,  <36.049950, 32.481853, 39.132835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870365, 32.620876, 39.210434>,  <35.571056, 32.852585, 39.339767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870365, 32.620876, 39.210434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451100, 0.086922, 0.888231,
		-0.486420, -0.810489, 0.326350,
		0.748268, -0.579269, -0.323330,
		36.094845, 32.447094, 39.113434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664547, 32.518242, 39.919212>,  <35.571056, 32.852585, 39.339767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664547, 32.518242, 39.919212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003685, 32.477058, 39.711155>,  <36.207169, 32.452347, 39.586319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003685, 32.477058, 39.711155>,  <35.664547, 32.518242, 39.919212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003685, 32.477058, 39.711155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511733, -0.098021, 0.853534,
		-0.138870, -0.989844, -0.030416,
		0.847847, -0.102966, -0.520148,
		36.258038, 32.446171, 39.555111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103123, 31.895224, 40.186848>,  <35.664547, 32.518242, 39.919212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103123, 31.895224, 40.186848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347515, 32.154594, 40.005192>,  <36.494152, 32.310215, 39.896198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347515, 32.154594, 40.005192>,  <36.103123, 31.895224, 40.186848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347515, 32.154594, 40.005192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738925, -0.261269, 0.621071,
		0.284064, -0.715041, -0.638767,
		0.610981, 0.648425, -0.454144,
		36.530811, 32.349121, 39.868950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684631, 31.525173, 40.131138>,  <36.103123, 31.895224, 40.186848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684631, 31.525173, 40.131138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771767, 31.915558, 40.128395>,  <36.824047, 32.149788, 40.126747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771767, 31.915558, 40.128395>,  <36.684631, 31.525173, 40.131138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771767, 31.915558, 40.128395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705118, -0.152520, 0.692493,
		0.674799, -0.155690, -0.721392,
		0.217841, 0.975960, -0.006860,
		36.837120, 32.208347, 40.126335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431950, 31.688585, 40.148891>,  <36.684631, 31.525173, 40.131138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431950, 31.688585, 40.148891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232071, 31.979092, 40.337715>,  <37.112144, 32.153397, 40.451008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232071, 31.979092, 40.337715>,  <37.431950, 31.688585, 40.148891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232071, 31.979092, 40.337715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701793, 0.020005, 0.712100,
		0.507731, 0.687121, -0.519686,
		-0.499695, 0.726267, 0.472060,
		37.082161, 32.196972, 40.479332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008362, 32.198406, 40.294395>,  <37.431950, 31.688585, 40.148891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008362, 32.198406, 40.294395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685226, 32.165905, 40.527905>,  <37.491344, 32.146404, 40.668011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685226, 32.165905, 40.527905>,  <38.008362, 32.198406, 40.294395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685226, 32.165905, 40.527905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589339, -0.125674, 0.798051,
		0.008521, 0.988739, 0.149410,
		-0.807841, -0.081253, 0.583773,
		37.442875, 32.141529, 40.703037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760139, 32.045795, 40.374989>,  <38.008362, 32.198406, 40.294395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760139, 32.045795, 40.374989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.838661, 31.685617, 40.530251>,  <38.885773, 31.469511, 40.623405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.838661, 31.685617, 40.530251>,  <38.760139, 32.045795, 40.374989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838661, 31.685617, 40.530251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134837, -0.416881, -0.898905,
		0.971229, 0.124118, -0.203248,
		0.196301, -0.900447, 0.388151,
		38.897552, 31.415483, 40.646694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302895, 31.666061, 39.916843>,  <38.760139, 32.045795, 40.374989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302895, 31.666061, 39.916843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151157, 31.359497, 40.124195>,  <39.060116, 31.175558, 40.248608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151157, 31.359497, 40.124195>,  <39.302895, 31.666061, 39.916843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151157, 31.359497, 40.124195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145547, -0.503851, -0.851440,
		0.913737, -0.398437, 0.079584,
		-0.379343, -0.766409, 0.518379,
		39.037354, 31.129574, 40.279709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527412, 31.162056, 39.565151>,  <39.302895, 31.666061, 39.916843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527412, 31.162056, 39.565151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215363, 31.021126, 39.771942>,  <39.028133, 30.936567, 39.896015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215363, 31.021126, 39.771942>,  <39.527412, 31.162056, 39.565151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215363, 31.021126, 39.771942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232970, -0.603310, -0.762720,
		0.580625, -0.715459, 0.388578,
		-0.780128, -0.352328, 0.516977,
		38.981323, 30.915428, 39.927036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575142, 30.500456, 39.466541>,  <39.527412, 31.162056, 39.565151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575142, 30.500456, 39.466541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192162, 30.546745, 39.572292>,  <38.962372, 30.574520, 39.635742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192162, 30.546745, 39.572292>,  <39.575142, 30.500456, 39.466541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192162, 30.546745, 39.572292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281890, -0.571347, -0.770779,
		0.061852, -0.812509, 0.579659,
		-0.957451, 0.115726, 0.264377,
		38.904926, 30.581463, 39.651604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330223, 29.769716, 39.616985>,  <39.575142, 30.500456, 39.466541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330223, 29.769716, 39.616985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021801, 30.005043, 39.519531>,  <38.836746, 30.146238, 39.461060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021801, 30.005043, 39.519531>,  <39.330223, 29.769716, 39.616985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021801, 30.005043, 39.519531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226261, -0.610770, -0.758792,
		-0.595209, -0.529950, 0.604052,
		-0.771059, 0.588313, -0.243629,
		38.790485, 30.181538, 39.446442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824493, 29.353239, 39.349857>,  <39.330223, 29.769716, 39.616985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824493, 29.353239, 39.349857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683258, 29.700771, 39.211025>,  <38.598518, 29.909290, 39.127728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683258, 29.700771, 39.211025>,  <38.824493, 29.353239, 39.349857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683258, 29.700771, 39.211025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184187, -0.428263, -0.884684,
		-0.917280, -0.248446, 0.311242,
		-0.353090, 0.868830, -0.347077,
		38.577332, 29.961420, 39.106903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382984, 29.150509, 38.947350>,  <38.824493, 29.353239, 39.349857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382984, 29.150509, 38.947350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418465, 29.529345, 38.823963>,  <38.439754, 29.756645, 38.749931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418465, 29.529345, 38.823963>,  <38.382984, 29.150509, 38.947350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418465, 29.529345, 38.823963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226282, -0.282433, -0.932217,
		-0.970015, 0.152491, 0.189257,
		0.088702, 0.947090, -0.308470,
		38.445076, 29.813471, 38.731422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754353, 29.246056, 38.520432>,  <38.382984, 29.150509, 38.947350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754353, 29.246056, 38.520432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027721, 29.520779, 38.421455>,  <38.191742, 29.685612, 38.362068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027721, 29.520779, 38.421455>,  <37.754353, 29.246056, 38.520432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027721, 29.520779, 38.421455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099116, -0.248517, -0.963543,
		-0.723260, 0.683036, -0.101769,
		0.683426, 0.686805, -0.247442,
		38.232750, 29.726820, 38.347221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463509, 29.566591, 38.001652>,  <37.754353, 29.246056, 38.520432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463509, 29.566591, 38.001652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853405, 29.649437, 37.968243>,  <38.087345, 29.699144, 37.948196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853405, 29.649437, 37.968243>,  <37.463509, 29.566591, 38.001652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853405, 29.649437, 37.968243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052832, -0.149530, -0.987345,
		-0.216983, 0.966822, -0.134812,
		0.974745, 0.207114, -0.083524,
		38.145828, 29.711571, 37.943184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525208, 30.054291, 37.443855>,  <37.463509, 29.566591, 38.001652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525208, 30.054291, 37.443855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885273, 29.889965, 37.501724>,  <38.101315, 29.791368, 37.536446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885273, 29.889965, 37.501724>,  <37.525208, 30.054291, 37.443855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885273, 29.889965, 37.501724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001872, -0.328509, -0.944499,
		0.435541, 0.850478, -0.294944,
		0.900167, -0.410816, 0.144671,
		38.155323, 29.766720, 37.545124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083897, 30.322803, 36.897209>,  <37.525208, 30.054291, 37.443855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083897, 30.322803, 36.897209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238155, 29.980150, 37.034298>,  <38.330711, 29.774559, 37.116550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238155, 29.980150, 37.034298>,  <38.083897, 30.322803, 36.897209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238155, 29.980150, 37.034298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124483, -0.319748, -0.939290,
		0.914209, 0.404899, -0.016675,
		0.385649, -0.856632, 0.342719,
		38.353851, 29.723160, 37.137115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704315, 30.174503, 36.443966>,  <38.083897, 30.322803, 36.897209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704315, 30.174503, 36.443966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.609814, 29.822504, 36.608788>,  <38.553112, 29.611305, 36.707680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.609814, 29.822504, 36.608788>,  <38.704315, 30.174503, 36.443966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609814, 29.822504, 36.608788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168922, -0.454798, -0.874428,
		0.956896, -0.136980, 0.256098,
		-0.236252, -0.879998, 0.412055,
		38.538937, 29.558504, 36.732403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188770, 29.881435, 36.173538>,  <38.704315, 30.174503, 36.443966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188770, 29.881435, 36.173538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911839, 29.622002, 36.300037>,  <38.745678, 29.466341, 36.375938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911839, 29.622002, 36.300037>,  <39.188770, 29.881435, 36.173538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911839, 29.622002, 36.300037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060855, -0.384235, -0.921227,
		0.719010, -0.657040, 0.226548,
		-0.692331, -0.648585, 0.316253,
		38.704140, 29.427425, 36.394913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434841, 29.252893, 35.954014>,  <39.188770, 29.881435, 36.173538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434841, 29.252893, 35.954014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039471, 29.217148, 36.003056>,  <38.802250, 29.195702, 36.032482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039471, 29.217148, 36.003056>,  <39.434841, 29.252893, 35.954014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039471, 29.217148, 36.003056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088229, -0.318864, -0.943685,
		0.123426, -0.943578, 0.307289,
		-0.988424, -0.089363, 0.122607,
		38.742943, 29.190338, 36.039837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300358, 28.544138, 35.658588>,  <39.434841, 29.252893, 35.954014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300358, 28.544138, 35.658588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952446, 28.735865, 35.705486>,  <38.743698, 28.850901, 35.733624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952446, 28.735865, 35.705486>,  <39.300358, 28.544138, 35.658588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952446, 28.735865, 35.705486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324937, -0.377539, -0.867110,
		-0.371314, -0.792312, 0.484116,
		-0.869795, 0.479277, 0.117266,
		38.691513, 28.879660, 35.740658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789532, 28.078825, 35.577099>,  <39.300358, 28.544138, 35.658588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789532, 28.078825, 35.577099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604439, 28.429256, 35.522896>,  <38.493382, 28.639515, 35.490372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604439, 28.429256, 35.522896>,  <38.789532, 28.078825, 35.577099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604439, 28.429256, 35.522896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266623, -0.283320, -0.921218,
		-0.845453, -0.390147, 0.364685,
		-0.462732, 0.876080, -0.135511,
		38.465618, 28.692080, 35.482243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111313, 27.907202, 35.415936>,  <38.789532, 28.078825, 35.577099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111313, 27.907202, 35.415936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194218, 28.278460, 35.292267>,  <38.243961, 28.501215, 35.218063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194218, 28.278460, 35.292267>,  <38.111313, 27.907202, 35.415936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194218, 28.278460, 35.292267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208333, -0.266913, -0.940933,
		-0.955846, 0.259428, 0.138043,
		0.207259, 0.928146, -0.309175,
		38.256393, 28.556904, 35.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598156, 28.032263, 34.918522>,  <38.111313, 27.907202, 35.415936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598156, 28.032263, 34.918522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870724, 28.311720, 34.831284>,  <38.034264, 28.479395, 34.778938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870724, 28.311720, 34.831284>,  <37.598156, 28.032263, 34.918522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870724, 28.311720, 34.831284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031381, -0.269827, -0.962397,
		-0.731222, 0.662638, -0.161940,
		0.681417, 0.698644, -0.218098,
		38.075150, 28.521313, 34.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.249214, 28.797932, 34.521603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639996, 28.744984, 34.454613>,  <37.874462, 28.713215, 34.414421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639996, 28.744984, 34.454613>,  <37.249214, 28.797932, 34.521603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639996, 28.744984, 34.454613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157307, 0.083922, -0.983977,
		0.144304, 0.987641, 0.061165,
		0.976950, -0.132371, -0.167473,
		37.933079, 28.705273, 34.404369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415539, 29.210396, 33.944401>,  <37.249214, 28.797932, 34.521603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415539, 29.210396, 33.944401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713242, 28.943237, 33.944149>,  <37.891861, 28.782942, 33.943996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713242, 28.943237, 33.944149>,  <37.415539, 29.210396, 33.944401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713242, 28.943237, 33.944149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038322, 0.043650, -0.998312,
		0.666796, 0.742974, 0.058082,
		0.744254, -0.667896, -0.000633,
		37.936520, 28.742868, 33.943958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712063, 29.447054, 33.437954>,  <37.415539, 29.210396, 33.944401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712063, 29.447054, 33.437954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912045, 29.104464, 33.489323>,  <38.032032, 28.898909, 33.520145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912045, 29.104464, 33.489323>,  <37.712063, 29.447054, 33.437954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912045, 29.104464, 33.489323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089723, -0.096262, -0.991304,
		0.861392, 0.507128, 0.028719,
		0.499954, -0.856478, 0.128421,
		38.062031, 28.847521, 33.527847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437119, 29.515259, 33.155930>,  <37.712063, 29.447054, 33.437954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437119, 29.515259, 33.155930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372173, 29.120829, 33.170326>,  <38.333206, 28.884171, 33.178967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372173, 29.120829, 33.170326>,  <38.437119, 29.515259, 33.155930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372173, 29.120829, 33.170326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381348, -0.096353, -0.919396,
		0.910061, -0.135553, 0.391682,
		-0.162367, -0.986074, 0.035995,
		38.323463, 28.825006, 33.181126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031418, 29.309414, 32.836990>,  <38.437119, 29.515259, 33.155930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031418, 29.309414, 32.836990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766289, 29.010746, 32.814533>,  <38.607212, 28.831545, 32.801060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766289, 29.010746, 32.814533>,  <39.031418, 29.309414, 32.836990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766289, 29.010746, 32.814533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210698, -0.114038, -0.970877,
		0.718520, -0.655349, 0.232909,
		-0.662824, -0.746668, -0.056142,
		38.567440, 28.786745, 32.797691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389317, 28.721922, 32.583412>,  <39.031418, 29.309414, 32.836990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389317, 28.721922, 32.583412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011082, 28.641924, 32.480747>,  <38.784142, 28.593925, 32.419147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011082, 28.641924, 32.480747>,  <39.389317, 28.721922, 32.583412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011082, 28.641924, 32.480747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301109, -0.238901, -0.923179,
		0.123314, -0.950226, 0.286121,
		-0.945583, -0.199995, -0.256662,
		38.727406, 28.581926, 32.403748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506229, 28.335955, 32.027649>,  <39.389317, 28.721922, 32.583412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506229, 28.335955, 32.027649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110481, 28.392258, 32.013020>,  <38.873032, 28.426039, 32.004242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110481, 28.392258, 32.013020>,  <39.506229, 28.335955, 32.027649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110481, 28.392258, 32.013020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008090, -0.197800, -0.980209,
		-0.145201, -0.970085, 0.194558,
		-0.989369, 0.140754, -0.036569,
		38.813671, 28.434484, 32.002048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331905, 27.850195, 31.608200>,  <39.506229, 28.335955, 32.027649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331905, 27.850195, 31.608200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044750, 28.127760, 31.585821>,  <38.872459, 28.294298, 31.572393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044750, 28.127760, 31.585821>,  <39.331905, 27.850195, 31.608200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044750, 28.127760, 31.585821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129728, -0.212300, -0.968555,
		-0.683968, -0.688053, 0.242427,
		-0.717885, 0.693911, -0.055947,
		38.829384, 28.335934, 31.569036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873993, 27.568983, 31.263285>,  <39.331905, 27.850195, 31.608200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873993, 27.568983, 31.263285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755653, 27.947962, 31.214592>,  <38.684650, 28.175348, 31.185375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755653, 27.947962, 31.214592>,  <38.873993, 27.568983, 31.263285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755653, 27.947962, 31.214592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256177, -0.201464, -0.945402,
		-0.920243, -0.248510, 0.302317,
		-0.295848, 0.947447, -0.121733,
		38.666901, 28.232195, 31.178072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280697, 27.562651, 30.944849>,  <38.873993, 27.568983, 31.263285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280697, 27.562651, 30.944849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397774, 27.931698, 30.844360>,  <38.468018, 28.153126, 30.784067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397774, 27.931698, 30.844360>,  <38.280697, 27.562651, 30.944849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397774, 27.931698, 30.844360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324211, -0.151410, -0.933789,
		-0.899567, 0.354759, 0.254806,
		0.292690, 0.922616, -0.251220,
		38.485580, 28.208483, 30.768993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652962, 27.879232, 30.537104>,  <38.280697, 27.562651, 30.944849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652962, 27.879232, 30.537104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996811, 28.068119, 30.459061>,  <38.203121, 28.181450, 30.412235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996811, 28.068119, 30.459061>,  <37.652962, 27.879232, 30.537104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996811, 28.068119, 30.459061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089426, -0.236917, -0.967405,
		-0.503048, 0.849049, -0.161430,
		0.859620, 0.472215, -0.195107,
		38.254696, 28.209784, 30.400528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523293, 28.102800, 29.886219>,  <37.652962, 27.879232, 30.537104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523293, 28.102800, 29.886219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912872, 28.191235, 29.906368>,  <38.146622, 28.244295, 29.918457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912872, 28.191235, 29.906368>,  <37.523293, 28.102800, 29.886219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912872, 28.191235, 29.906368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046573, 0.022367, -0.998664,
		-0.221917, 0.974998, 0.011488,
		0.973953, 0.221085, 0.050372,
		38.205059, 28.257561, 29.921480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601189, 28.514326, 29.352764>,  <37.523293, 28.102800, 29.886219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601189, 28.514326, 29.352764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970348, 28.378193, 29.424801>,  <38.191845, 28.296513, 29.468023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970348, 28.378193, 29.424801>,  <37.601189, 28.514326, 29.352764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970348, 28.378193, 29.424801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168612, -0.063283, -0.983649,
		0.346163, 0.938174, -0.001020,
		0.922898, -0.340331, 0.180094,
		38.247219, 28.276094, 29.478828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871719, 28.896933, 28.973166>,  <37.601189, 28.514326, 29.352764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871719, 28.896933, 28.973166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103004, 28.577269, 29.038902>,  <38.241776, 28.385469, 29.078344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103004, 28.577269, 29.038902>,  <37.871719, 28.896933, 28.973166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103004, 28.577269, 29.038902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115311, -0.119361, -0.986132,
		0.807694, 0.589148, 0.023135,
		0.578216, -0.799161, 0.164343,
		38.276470, 28.337521, 29.088205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457310, 28.997520, 28.532631>,  <37.871719, 28.896933, 28.973166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457310, 28.997520, 28.532631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475494, 28.609524, 28.628170>,  <38.486404, 28.376726, 28.685493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475494, 28.609524, 28.628170>,  <38.457310, 28.997520, 28.532631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475494, 28.609524, 28.628170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100362, -0.233451, -0.967175,
		0.993912, 0.067940, 0.086737,
		0.045462, -0.969992, 0.238848,
		38.489132, 28.318525, 28.699825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060734, 28.692999, 28.228121>,  <38.457310, 28.997520, 28.532631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060734, 28.692999, 28.228121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785942, 28.407360, 28.281984>,  <38.621067, 28.235977, 28.314302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785942, 28.407360, 28.281984>,  <39.060734, 28.692999, 28.228121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785942, 28.407360, 28.281984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166365, -0.334937, -0.927437,
		0.707381, -0.614724, 0.348894,
		-0.686975, -0.714095, 0.134660,
		38.579849, 28.193132, 28.322382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282730, 28.209276, 27.813437>,  <39.060734, 28.692999, 28.228121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282730, 28.209276, 27.813437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.915657, 28.076347, 27.900547>,  <38.695415, 27.996590, 27.952812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.915657, 28.076347, 27.900547>,  <39.282730, 28.209276, 27.813437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915657, 28.076347, 27.900547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067948, -0.408769, -0.910105,
		0.391469, -0.849982, 0.352538,
		-0.917679, -0.332324, 0.217775,
		38.640354, 27.976650, 27.965879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217056, 27.662529, 27.480907>,  <39.282730, 28.209276, 27.813437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217056, 27.662529, 27.480907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830585, 27.732183, 27.556992>,  <38.598701, 27.773975, 27.602642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830585, 27.732183, 27.556992>,  <39.217056, 27.662529, 27.480907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830585, 27.732183, 27.556992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213886, -0.129062, -0.968295,
		-0.144082, -0.976224, 0.161945,
		-0.966175, 0.174152, 0.190205,
		38.540733, 27.784424, 27.614054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812428, 27.215363, 26.953934>,  <39.217056, 27.662529, 27.480907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812428, 27.215363, 26.953934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591366, 27.527916, 27.069874>,  <38.458729, 27.715448, 27.139437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591366, 27.527916, 27.069874>,  <38.812428, 27.215363, 26.953934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591366, 27.527916, 27.069874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163985, 0.239033, -0.957064,
		-0.817120, -0.576454, -0.003966,
		-0.552652, 0.781386, 0.289849,
		38.425571, 27.762331, 27.156828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337826, 27.164330, 26.462662>,  <38.812428, 27.215363, 26.953934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337826, 27.164330, 26.462662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346043, 27.537926, 26.605343>,  <38.350971, 27.762083, 26.690952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346043, 27.537926, 26.605343>,  <38.337826, 27.164330, 26.462662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346043, 27.537926, 26.605343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103561, 0.352872, -0.929923,
		-0.994411, 0.056045, -0.089476,
		0.020543, 0.933992, 0.356703,
		38.352207, 27.818123, 26.712355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680527, 27.492447, 26.359261>,  <38.337826, 27.164330, 26.462662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680527, 27.492447, 26.359261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899551, 27.821579, 26.420082>,  <38.030968, 28.019058, 26.456575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899551, 27.821579, 26.420082>,  <37.680527, 27.492447, 26.359261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899551, 27.821579, 26.420082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403942, 0.419075, -0.813147,
		-0.732804, 0.383830, 0.561847,
		0.547566, 0.822831, 0.152055,
		38.063820, 28.068428, 26.465698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294014, 28.063030, 26.145288>,  <37.680527, 27.492447, 26.359261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294014, 28.063030, 26.145288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657997, 28.226885, 26.119431>,  <37.876385, 28.325197, 26.103916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657997, 28.226885, 26.119431>,  <37.294014, 28.063030, 26.145288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657997, 28.226885, 26.119431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248178, 0.413007, -0.876261,
		-0.332248, 0.813402, 0.477481,
		0.909955, 0.409636, -0.064647,
		37.930984, 28.349775, 26.100037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198181, 28.767136, 25.725063>,  <37.294014, 28.063030, 26.145288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198181, 28.767136, 25.725063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569183, 28.629889, 25.665737>,  <37.791786, 28.547541, 25.630142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569183, 28.629889, 25.665737>,  <37.198181, 28.767136, 25.725063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569183, 28.629889, 25.665737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139953, 0.049158, -0.988937,
		0.346615, 0.938004, -0.002426,
		0.927508, -0.343120, -0.148316,
		37.847435, 28.526953, 25.621243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418026, 28.649332, 25.047779>,  <37.198181, 28.767136, 25.725063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418026, 28.649332, 25.047779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403873, 28.308985, 25.257452>,  <37.395382, 28.104776, 25.383257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403873, 28.308985, 25.257452>,  <37.418026, 28.649332, 25.047779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403873, 28.308985, 25.257452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463973, -0.478542, -0.745471,
		0.885143, 0.216834, 0.411710,
		-0.035377, -0.850870, 0.524184,
		37.393261, 28.053724, 25.414707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651070, 28.740625, 25.032339>,  <37.418026, 28.649332, 25.047779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651070, 28.740625, 25.032339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268547, 28.687807, 25.136683>,  <36.039036, 28.656116, 25.199287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268547, 28.687807, 25.136683>,  <36.651070, 28.740625, 25.032339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268547, 28.687807, 25.136683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240044, 0.154763, 0.958346,
		-0.166916, 0.979088, -0.116303,
		-0.956304, -0.132045, 0.260857,
		35.981655, 28.648193, 25.214939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527637, 29.350420, 25.554310>,  <36.651070, 28.740625, 25.032339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527637, 29.350420, 25.554310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219688, 29.105751, 25.627146>,  <36.034920, 28.958950, 25.670847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219688, 29.105751, 25.627146>,  <36.527637, 29.350420, 25.554310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219688, 29.105751, 25.627146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133015, 0.432840, 0.891603,
		-0.624184, 0.662199, -0.414593,
		-0.769871, -0.611671, 0.182089,
		35.988728, 28.922249, 25.681772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048008, 29.779272, 25.863199>,  <36.527637, 29.350420, 25.554310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048008, 29.779272, 25.863199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919849, 29.410219, 25.949076>,  <35.842953, 29.188787, 26.000601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919849, 29.410219, 25.949076>,  <36.048008, 29.779272, 25.863199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919849, 29.410219, 25.949076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115089, 0.262873, 0.957942,
		-0.940265, 0.282217, -0.190409,
		-0.320400, -0.922633, 0.214690,
		35.823730, 29.133429, 26.013483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333817, 29.768866, 26.157738>,  <36.048008, 29.779272, 25.863199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333817, 29.768866, 26.157738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522617, 29.436354, 26.275167>,  <35.635899, 29.236847, 26.345625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522617, 29.436354, 26.275167>,  <35.333817, 29.768866, 26.157738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522617, 29.436354, 26.275167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102008, 0.279266, 0.954780,
		-0.875674, -0.480608, 0.047018,
		0.472005, -0.831280, 0.293572,
		35.664219, 29.186970, 26.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091965, 29.553423, 26.780937>,  <35.333817, 29.768866, 26.157738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091965, 29.553423, 26.780937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421825, 29.327456, 26.792356>,  <35.619743, 29.191875, 26.799208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421825, 29.327456, 26.792356>,  <35.091965, 29.553423, 26.780937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421825, 29.327456, 26.792356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035819, 0.102528, 0.994085,
		-0.564502, -0.818753, 0.104785,
		0.824654, -0.564917, 0.028550,
		35.669220, 29.157980, 26.800922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968639, 29.303146, 27.352581>,  <35.091965, 29.553423, 26.780937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968639, 29.303146, 27.352581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339565, 29.170502, 27.283165>,  <35.562122, 29.090914, 27.241514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339565, 29.170502, 27.283165>,  <34.968639, 29.303146, 27.352581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339565, 29.170502, 27.283165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216403, 0.096736, 0.971500,
		-0.305374, -0.938443, 0.161467,
		0.927317, -0.331613, -0.173541,
		35.617760, 29.071018, 27.231102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100006, 28.831079, 27.872725>,  <34.968639, 29.303146, 27.352581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100006, 28.831079, 27.872725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448158, 28.951937, 27.717218>,  <35.657051, 29.024452, 27.623915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448158, 28.951937, 27.717218>,  <35.100006, 28.831079, 27.872725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448158, 28.951937, 27.717218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352296, 0.169440, 0.920422,
		0.343973, -0.938083, 0.041034,
		0.870385, 0.302144, -0.388765,
		35.709274, 29.042580, 27.600588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531212, 28.554136, 28.284679>,  <35.100006, 28.831079, 27.872725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531212, 28.554136, 28.284679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764088, 28.834995, 28.120705>,  <35.903812, 29.003511, 28.022320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764088, 28.834995, 28.120705>,  <35.531212, 28.554136, 28.284679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764088, 28.834995, 28.120705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352430, 0.236431, 0.905480,
		0.732702, -0.671632, -0.109811,
		0.582187, 0.702147, -0.409937,
		35.938744, 29.045639, 27.997723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151836, 28.496904, 28.700087>,  <35.531212, 28.554136, 28.284679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151836, 28.496904, 28.700087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118717, 28.858282, 28.531834>,  <36.098846, 29.075109, 28.430882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118717, 28.858282, 28.531834>,  <36.151836, 28.496904, 28.700087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118717, 28.858282, 28.531834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483504, 0.405494, 0.775757,
		0.871417, -0.139143, -0.470395,
		-0.082801, 0.903446, -0.420631,
		36.093876, 29.129316, 28.405645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765598, 28.772320, 28.867702>,  <36.151836, 28.496904, 28.700087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765598, 28.772320, 28.867702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522453, 29.077343, 28.779146>,  <36.376568, 29.260357, 28.726013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522453, 29.077343, 28.779146>,  <36.765598, 28.772320, 28.867702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522453, 29.077343, 28.779146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451654, 0.561355, 0.693462,
		0.653083, 0.321535, -0.685637,
		-0.607858, 0.762559, -0.221388,
		36.340096, 29.306110, 28.712730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199024, 29.327261, 28.749363>,  <36.765598, 28.772320, 28.867702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199024, 29.327261, 28.749363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845181, 29.434759, 28.901802>,  <36.632874, 29.499258, 28.993265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845181, 29.434759, 28.901802>,  <37.199024, 29.327261, 28.749363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845181, 29.434759, 28.901802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466282, 0.498742, 0.730642,
		0.006288, 0.824035, -0.566505,
		-0.884614, 0.268745, 0.381096,
		36.579796, 29.515383, 29.016130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308651, 29.927500, 29.129574>,  <37.199024, 29.327261, 28.749363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308651, 29.927500, 29.129574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941261, 29.837532, 29.259687>,  <36.720825, 29.783552, 29.337755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941261, 29.837532, 29.259687>,  <37.308651, 29.927500, 29.129574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941261, 29.837532, 29.259687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237466, 0.344067, 0.908421,
		-0.316238, 0.911609, -0.262608,
		-0.918479, -0.224917, 0.325283,
		36.665718, 29.770058, 29.357273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176582, 30.482346, 29.526793>,  <37.308651, 29.927500, 29.129574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176582, 30.482346, 29.526793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910892, 30.212490, 29.655581>,  <36.751476, 30.050577, 29.732853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910892, 30.212490, 29.655581>,  <37.176582, 30.482346, 29.526793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910892, 30.212490, 29.655581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164322, 0.288402, 0.943304,
		-0.729245, 0.679477, -0.080707,
		-0.664229, -0.674638, 0.321969,
		36.711624, 30.010099, 29.752171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695267, 30.824635, 29.947403>,  <37.176582, 30.482346, 29.526793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695267, 30.824635, 29.947403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694584, 30.442366, 30.065174>,  <36.694176, 30.213005, 30.135838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694584, 30.442366, 30.065174>,  <36.695267, 30.824635, 29.947403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694584, 30.442366, 30.065174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142573, 0.291655, 0.945839,
		-0.989783, -0.040367, -0.136750,
		-0.001703, -0.955672, 0.294430,
		36.694073, 30.155664, 30.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360348, 30.924795, 30.526676>,  <36.695267, 30.824635, 29.947403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360348, 30.924795, 30.526676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489967, 30.550779, 30.584217>,  <36.567738, 30.326370, 30.618742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489967, 30.550779, 30.584217>,  <36.360348, 30.924795, 30.526676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489967, 30.550779, 30.584217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309635, 0.038857, 0.950061,
		-0.893934, -0.352408, -0.276930,
		0.324049, -0.935040, 0.143853,
		36.587181, 30.270267, 30.627373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008717, 30.775629, 31.091887>,  <36.360348, 30.924795, 30.526676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008717, 30.775629, 31.091887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284172, 30.486406, 31.070127>,  <36.449448, 30.312872, 31.057072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284172, 30.486406, 31.070127>,  <36.008717, 30.775629, 31.091887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284172, 30.486406, 31.070127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129219, -0.196195, 0.972013,
		-0.713494, -0.662341, -0.228541,
		0.688642, -0.723057, -0.054397,
		36.490765, 30.269489, 31.053808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717186, 30.098015, 31.283543>,  <36.008717, 30.775629, 31.091887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717186, 30.098015, 31.283543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105244, 30.124311, 31.376928>,  <36.338078, 30.140089, 31.432961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105244, 30.124311, 31.376928>,  <35.717186, 30.098015, 31.283543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105244, 30.124311, 31.376928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223856, -0.127811, 0.966205,
		0.093362, -0.989617, -0.109277,
		0.970140, 0.065744, 0.233465,
		36.396286, 30.144035, 31.446968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889427, 29.637726, 31.699381>,  <35.717186, 30.098015, 31.283543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889427, 29.637726, 31.699381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180073, 29.898327, 31.786631>,  <36.354462, 30.054688, 31.838982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180073, 29.898327, 31.786631>,  <35.889427, 29.637726, 31.699381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180073, 29.898327, 31.786631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170992, -0.136010, 0.975840,
		0.665428, -0.746356, 0.012575,
		0.726614, 0.651502, 0.218126,
		36.398056, 30.093777, 31.852068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127220, 29.407541, 32.328281>,  <35.889427, 29.637726, 31.699381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127220, 29.407541, 32.328281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300846, 29.767809, 32.320400>,  <36.405022, 29.983969, 32.315674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300846, 29.767809, 32.320400>,  <36.127220, 29.407541, 32.328281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300846, 29.767809, 32.320400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216990, 0.125748, 0.968041,
		0.874359, -0.415916, 0.250018,
		0.434063, 0.900667, -0.019700,
		36.431065, 30.038010, 32.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505135, 29.444338, 32.973957>,  <36.127220, 29.407541, 32.328281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505135, 29.444338, 32.973957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441296, 29.812305, 32.830692>,  <36.402992, 30.033085, 32.744732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441296, 29.812305, 32.830692>,  <36.505135, 29.444338, 32.973957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441296, 29.812305, 32.830692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402398, 0.270682, 0.874533,
		0.901446, 0.283694, 0.326974,
		-0.159594, 0.919918, -0.358163,
		36.393417, 30.088282, 32.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.309818, 28.418695, 37.209793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384678, 28.782932, 37.062389>,  <38.429592, 29.001474, 36.973946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384678, 28.782932, 37.062389>,  <38.309818, 28.418695, 37.209793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384678, 28.782932, 37.062389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287405, 0.307969, 0.906947,
		0.939348, -0.275643, -0.204073,
		0.187146, 0.910591, -0.368511,
		38.440823, 29.056110, 36.951836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953609, 28.654284, 37.554382>,  <38.309818, 28.418695, 37.209793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953609, 28.654284, 37.554382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758171, 28.983576, 37.438751>,  <38.640907, 29.181150, 37.369373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758171, 28.983576, 37.438751>,  <38.953609, 28.654284, 37.554382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758171, 28.983576, 37.438751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137320, 0.399741, 0.906284,
		0.861637, 0.403110, -0.308357,
		-0.488595, 0.823232, -0.289077,
		38.611591, 29.230545, 37.352028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380947, 29.266659, 37.774166>,  <38.953609, 28.654284, 37.554382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380947, 29.266659, 37.774166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006241, 29.396076, 37.720806>,  <38.781418, 29.473726, 37.688789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006241, 29.396076, 37.720806>,  <39.380947, 29.266659, 37.774166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006241, 29.396076, 37.720806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047391, 0.494940, 0.867634,
		0.346741, 0.806445, -0.478974,
		-0.936763, 0.323543, -0.133398,
		38.725212, 29.493139, 37.680786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360737, 29.947672, 37.963551>,  <39.380947, 29.266659, 37.774166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360737, 29.947672, 37.963551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968853, 29.867510, 37.963356>,  <38.733723, 29.819412, 37.963238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968853, 29.867510, 37.963356>,  <39.360737, 29.947672, 37.963551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968853, 29.867510, 37.963356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136461, 0.665330, 0.733972,
		-0.146768, 0.719148, -0.679180,
		-0.979713, -0.200405, -0.000486,
		38.674938, 29.807388, 37.963211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028263, 30.632893, 37.986202>,  <39.360737, 29.947672, 37.963551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028263, 30.632893, 37.986202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747246, 30.371479, 38.098858>,  <38.578636, 30.214630, 38.166451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747246, 30.371479, 38.098858>,  <39.028263, 30.632893, 37.986202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747246, 30.371479, 38.098858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158228, 0.529309, 0.833544,
		-0.693825, 0.541040, -0.475272,
		-0.702546, -0.653535, 0.281640,
		38.536484, 30.175419, 38.183350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409313, 30.997141, 38.161125>,  <39.028263, 30.632893, 37.986202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409313, 30.997141, 38.161125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387886, 30.647501, 38.354237>,  <38.375031, 30.437717, 38.470104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387886, 30.647501, 38.354237>,  <38.409313, 30.997141, 38.161125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387886, 30.647501, 38.354237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260987, 0.478927, 0.838162,
		-0.963855, -0.081100, -0.253785,
		-0.053569, -0.874101, 0.482782,
		38.371815, 30.385271, 38.499073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012188, 31.035677, 38.673714>,  <38.409313, 30.997141, 38.161125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012188, 31.035677, 38.673714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195438, 30.710255, 38.816963>,  <38.305389, 30.515001, 38.902912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195438, 30.710255, 38.816963>,  <38.012188, 31.035677, 38.673714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195438, 30.710255, 38.816963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156858, 0.322578, 0.933455,
		-0.874940, -0.483811, 0.020167,
		0.458121, -0.813554, 0.358126,
		38.332874, 30.466188, 38.924400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664150, 30.806372, 39.289677>,  <38.012188, 31.035677, 38.673714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664150, 30.806372, 39.289677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019524, 30.627789, 39.332314>,  <38.232746, 30.520638, 39.357895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019524, 30.627789, 39.332314>,  <37.664150, 30.806372, 39.289677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019524, 30.627789, 39.332314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028284, 0.285034, 0.958100,
		-0.458136, -0.848192, 0.265861,
		0.888432, -0.446460, 0.106594,
		38.286053, 30.493851, 39.364292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645218, 30.684383, 39.970306>,  <37.664150, 30.806372, 39.289677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645218, 30.684383, 39.970306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027874, 30.673660, 39.854290>,  <38.257465, 30.667227, 39.784679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027874, 30.673660, 39.854290>,  <37.645218, 30.684383, 39.970306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027874, 30.673660, 39.854290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285865, 0.277509, 0.917208,
		0.055902, -0.960349, 0.273139,
		0.956638, -0.026807, -0.290043,
		38.314865, 30.665619, 39.767277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002357, 30.294918, 40.503765>,  <37.645218, 30.684383, 39.970306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002357, 30.294918, 40.503765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303932, 30.492374, 40.330376>,  <38.484879, 30.610847, 40.226341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303932, 30.492374, 40.330376>,  <38.002357, 30.294918, 40.503765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303932, 30.492374, 40.330376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358251, 0.244140, 0.901140,
		0.550666, -0.834695, 0.007219,
		0.753939, 0.493641, -0.433469,
		38.530113, 30.640467, 40.200336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526936, 30.180655, 40.985176>,  <38.002357, 30.294918, 40.503765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526936, 30.180655, 40.985176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664036, 30.475475, 40.752186>,  <38.746296, 30.652369, 40.612392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664036, 30.475475, 40.752186>,  <38.526936, 30.180655, 40.985176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664036, 30.475475, 40.752186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364473, 0.467132, 0.805572,
		0.865841, -0.488406, -0.108526,
		0.342751, 0.737053, -0.582473,
		38.766861, 30.696590, 40.577442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250912, 30.227827, 41.067307>,  <38.526936, 30.180655, 40.985176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250912, 30.227827, 41.067307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133358, 30.597715, 40.970539>,  <39.062828, 30.819649, 40.912479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133358, 30.597715, 40.970539>,  <39.250912, 30.227827, 41.067307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133358, 30.597715, 40.970539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514555, 0.366343, 0.775259,
		0.805523, 0.103354, -0.583481,
		-0.293880, 0.924722, -0.241917,
		39.045193, 30.875132, 40.897964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801888, 30.723579, 41.090412>,  <39.250912, 30.227827, 41.067307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801888, 30.723579, 41.090412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518829, 31.006197, 41.088161>,  <39.348995, 31.175768, 41.086811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518829, 31.006197, 41.088161>,  <39.801888, 30.723579, 41.090412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518829, 31.006197, 41.088161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523973, 0.530101, 0.666667,
		0.474009, 0.468819, -0.745335,
		-0.707649, 0.706542, -0.005624,
		39.306534, 31.218159, 41.086475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176285, 31.389923, 40.942047>,  <39.801888, 30.723579, 41.090412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176285, 31.389923, 40.942047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838436, 31.413126, 41.154930>,  <39.635727, 31.427048, 41.282661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838436, 31.413126, 41.154930>,  <40.176285, 31.389923, 40.942047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838436, 31.413126, 41.154930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460137, 0.586802, 0.666287,
		-0.273652, 0.807650, -0.522317,
		-0.844623, 0.058006, 0.532209,
		39.585049, 31.430529, 41.314594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384418, 31.844097, 40.470062>,  <40.176285, 31.389923, 40.942047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384418, 31.844097, 40.470062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989410, 31.871950, 40.526573>,  <39.752407, 31.888662, 40.560482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989410, 31.871950, 40.526573>,  <40.384418, 31.844097, 40.470062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989410, 31.871950, 40.526573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157054, 0.367234, 0.916773,
		0.011952, 0.927519, -0.373586,
		-0.987518, 0.069631, 0.141281,
		39.693153, 31.892839, 40.568958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490536, 32.445286, 40.026424>,  <40.384418, 31.844097, 40.470062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490536, 32.445286, 40.026424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.581356, 32.829178, 40.092598>,  <40.635849, 33.059513, 40.132301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.581356, 32.829178, 40.092598>,  <40.490536, 32.445286, 40.026424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581356, 32.829178, 40.092598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429022, 0.251064, -0.867702,
		-0.874294, 0.126036, 0.468749,
		0.227048, 0.959730, 0.165431,
		40.649471, 33.117096, 40.142227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995522, 32.853565, 39.848251>,  <40.490536, 32.445286, 40.026424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995522, 32.853565, 39.848251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315079, 33.083416, 39.777168>,  <40.506813, 33.221325, 39.734520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315079, 33.083416, 39.777168>,  <39.995522, 32.853565, 39.848251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315079, 33.083416, 39.777168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331983, 0.174883, -0.926932,
		-0.501562, 0.799512, 0.330479,
		0.798889, 0.574627, -0.177709,
		40.554745, 33.255806, 39.723854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684044, 33.421425, 39.449062>,  <39.995522, 32.853565, 39.848251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684044, 33.421425, 39.449062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.080334, 33.431202, 39.395596>,  <40.318108, 33.437069, 39.363514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.080334, 33.431202, 39.395596>,  <39.684044, 33.421425, 39.449062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080334, 33.431202, 39.395596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135855, 0.156402, -0.978306,
		-0.003005, 0.987391, 0.158272,
		0.990724, 0.024442, -0.133672,
		40.377552, 33.438534, 39.355495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859730, 34.046581, 39.008121>,  <39.684044, 33.421425, 39.449062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859730, 34.046581, 39.008121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.184322, 33.814400, 38.981064>,  <40.379078, 33.675091, 38.964828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.184322, 33.814400, 38.981064>,  <39.859730, 34.046581, 39.008121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184322, 33.814400, 38.981064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078039, 0.222353, -0.971838,
		0.579145, 0.783349, 0.225733,
		0.811481, -0.580451, -0.067643,
		40.427765, 33.640263, 38.960770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365784, 34.445480, 38.707520>,  <39.859730, 34.046581, 39.008121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365784, 34.445480, 38.707520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415665, 34.053677, 38.644264>,  <40.445595, 33.818592, 38.606312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415665, 34.053677, 38.644264>,  <40.365784, 34.445480, 38.707520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415665, 34.053677, 38.644264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072486, 0.167949, -0.983127,
		0.989543, 0.111136, 0.091944,
		0.124703, -0.979511, -0.158137,
		40.453075, 33.759823, 38.596825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828342, 34.486603, 38.163071>,  <40.365784, 34.445480, 38.707520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828342, 34.486603, 38.163071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.673546, 34.117828, 38.156532>,  <40.580669, 33.896564, 38.152607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.673546, 34.117828, 38.156532>,  <40.828342, 34.486603, 38.163071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673546, 34.117828, 38.156532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120665, -0.033056, -0.992143,
		0.914154, -0.385924, 0.124038,
		-0.386992, -0.921938, -0.016350,
		40.557449, 33.841248, 38.151627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254299, 34.059635, 37.733105>,  <40.828342, 34.486603, 38.163071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254299, 34.059635, 37.733105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911880, 33.853676, 37.751259>,  <40.706429, 33.730103, 37.762154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911880, 33.853676, 37.751259>,  <41.254299, 34.059635, 37.733105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911880, 33.853676, 37.751259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095436, -0.243749, -0.965131,
		0.508004, -0.821870, 0.257801,
		-0.856051, -0.514894, 0.045390,
		40.655064, 33.699207, 37.764877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443241, 33.512314, 37.286839>,  <41.254299, 34.059635, 37.733105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443241, 33.512314, 37.286839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.045410, 33.532127, 37.323433>,  <40.806713, 33.544014, 37.345390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.045410, 33.532127, 37.323433>,  <41.443241, 33.512314, 37.286839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045410, 33.532127, 37.323433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100395, -0.226337, -0.968861,
		-0.027281, -0.972789, 0.230081,
		-0.994574, 0.049530, 0.091488,
		40.747040, 33.546986, 37.350880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171795, 32.903522, 36.930901>,  <41.443241, 33.512314, 37.286839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171795, 32.903522, 36.930901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849377, 33.138157, 36.962406>,  <40.655926, 33.278938, 36.981312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849377, 33.138157, 36.962406>,  <41.171795, 32.903522, 36.930901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849377, 33.138157, 36.962406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271112, -0.247644, -0.930146,
		-0.526104, -0.771097, 0.358643,
		-0.806048, 0.586586, 0.078768,
		40.607563, 33.314133, 36.986038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609566, 32.455933, 36.821377>,  <41.171795, 32.903522, 36.930901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609566, 32.455933, 36.821377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544300, 32.838509, 36.724552>,  <40.505142, 33.068054, 36.666458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544300, 32.838509, 36.724552>,  <40.609566, 32.455933, 36.821377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544300, 32.838509, 36.724552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109316, -0.261365, -0.959030,
		-0.980525, -0.130013, 0.147199,
		-0.163159, 0.956444, -0.242063,
		40.495354, 33.125443, 36.651932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001511, 32.491562, 36.447231>,  <40.609566, 32.455933, 36.821377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001511, 32.491562, 36.447231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158691, 32.849564, 36.362793>,  <40.253002, 33.064365, 36.312130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158691, 32.849564, 36.362793>,  <40.001511, 32.491562, 36.447231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158691, 32.849564, 36.362793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205329, -0.138368, -0.968862,
		-0.896341, 0.424063, 0.129397,
		0.392955, 0.895000, -0.211097,
		40.276577, 33.118065, 36.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527317, 32.742046, 36.027515>,  <40.001511, 32.491562, 36.447231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527317, 32.742046, 36.027515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825394, 32.991535, 35.933144>,  <40.004238, 33.141228, 35.876522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825394, 32.991535, 35.933144>,  <39.527317, 32.742046, 36.027515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825394, 32.991535, 35.933144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186056, -0.145281, -0.971739,
		-0.640373, 0.768024, 0.007786,
		0.745188, 0.623724, -0.235930,
		40.048950, 33.178654, 35.862366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269093, 33.150322, 35.550182>,  <39.527317, 32.742046, 36.027515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269093, 33.150322, 35.550182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663200, 33.177067, 35.487228>,  <39.899666, 33.193111, 35.449455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663200, 33.177067, 35.487228>,  <39.269093, 33.150322, 35.550182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663200, 33.177067, 35.487228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160972, 0.052096, -0.985583,
		-0.057697, 0.996401, 0.062091,
		0.985271, 0.066860, -0.157387,
		39.958782, 33.197124, 35.440014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263565, 33.876148, 35.414742>,  <39.269093, 33.150322, 35.550182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263565, 33.876148, 35.414742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973686, 34.128445, 35.303761>,  <38.799759, 34.279823, 35.237171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973686, 34.128445, 35.303761>,  <39.263565, 33.876148, 35.414742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973686, 34.128445, 35.303761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263631, 0.118222, 0.957352,
		0.636641, 0.766936, 0.080607,
		-0.724698, 0.630740, -0.277453,
		38.756275, 34.317665, 35.220524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251949, 34.571770, 35.814621>,  <39.263565, 33.876148, 35.414742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251949, 34.571770, 35.814621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881893, 34.487881, 35.688053>,  <38.659859, 34.437546, 35.612110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881893, 34.487881, 35.688053>,  <39.251949, 34.571770, 35.814621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881893, 34.487881, 35.688053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326319, 0.013449, 0.945164,
		-0.193971, 0.977668, -0.080881,
		-0.925144, -0.209727, -0.316423,
		38.604351, 34.424961, 35.593124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905697, 35.136612, 36.070213>,  <39.251949, 34.571770, 35.814621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905697, 35.136612, 36.070213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636654, 34.849514, 35.998158>,  <38.475227, 34.677258, 35.954926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636654, 34.849514, 35.998158>,  <38.905697, 35.136612, 36.070213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636654, 34.849514, 35.998158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299316, 0.041247, 0.953262,
		-0.676765, 0.695088, -0.242574,
		-0.672606, -0.717741, -0.180137,
		38.434872, 34.634193, 35.944115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290134, 35.390507, 36.359989>,  <38.905697, 35.136612, 36.070213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290134, 35.390507, 36.359989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192020, 35.003468, 36.336010>,  <38.133152, 34.771244, 36.321621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192020, 35.003468, 36.336010>,  <38.290134, 35.390507, 36.359989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192020, 35.003468, 36.336010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606673, 0.104970, 0.787991,
		-0.756164, 0.229650, -0.612761,
		-0.245284, -0.967596, -0.059947,
		38.118435, 34.713188, 36.318027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627769, 35.381107, 36.501968>,  <38.290134, 35.390507, 36.359989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627769, 35.381107, 36.501968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763599, 35.014706, 36.587414>,  <37.845097, 34.794865, 36.638683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763599, 35.014706, 36.587414>,  <37.627769, 35.381107, 36.501968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763599, 35.014706, 36.587414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608739, -0.040898, 0.792316,
		-0.717024, -0.399089, -0.571493,
		0.339578, -0.916000, 0.213616,
		37.865471, 34.739906, 36.651497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011681, 35.099903, 36.690308>,  <37.627769, 35.381107, 36.501968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011681, 35.099903, 36.690308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325104, 34.897930, 36.835129>,  <37.513157, 34.776745, 36.922024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325104, 34.897930, 36.835129>,  <37.011681, 35.099903, 36.690308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325104, 34.897930, 36.835129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462889, -0.085693, 0.882265,
		-0.414460, -0.858894, -0.300873,
		0.783554, -0.504934, 0.362056,
		37.560169, 34.746449, 36.943745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775124, 34.544403, 36.984386>,  <37.011681, 35.099903, 36.690308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775124, 34.544403, 36.984386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122662, 34.548428, 37.182377>,  <37.331184, 34.550842, 37.301170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122662, 34.548428, 37.182377>,  <36.775124, 34.544403, 36.984386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122662, 34.548428, 37.182377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485870, -0.174631, 0.856408,
		0.095058, -0.984582, -0.146837,
		0.868847, 0.010065, 0.494979,
		37.383316, 34.551445, 37.330872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674549, 34.090828, 37.455875>,  <36.775124, 34.544403, 36.984386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674549, 34.090828, 37.455875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984890, 34.287060, 37.614559>,  <37.171097, 34.404800, 37.709770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984890, 34.287060, 37.614559>,  <36.674549, 34.090828, 37.455875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984890, 34.287060, 37.614559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317708, -0.239445, 0.917457,
		0.545076, -0.837853, -0.029914,
		0.775856, 0.490580, 0.396709,
		37.217648, 34.434235, 37.733570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866489, 33.705162, 38.106007>,  <36.674549, 34.090828, 37.455875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866489, 33.705162, 38.106007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.016369, 34.071651, 38.162781>,  <37.106297, 34.291546, 38.196846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.016369, 34.071651, 38.162781>,  <36.866489, 33.705162, 38.106007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016369, 34.071651, 38.162781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370603, 0.007688, 0.928760,
		0.849857, -0.400602, 0.342434,
		0.374696, 0.916220, 0.141931,
		37.128777, 34.346516, 38.205360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002037, 33.671204, 38.884560>,  <36.866489, 33.705162, 38.106007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002037, 33.671204, 38.884560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008762, 34.057037, 38.779266>,  <37.012798, 34.288536, 38.716091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008762, 34.057037, 38.779266>,  <37.002037, 33.671204, 38.884560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008762, 34.057037, 38.779266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424812, 0.245220, 0.871437,
		0.905126, 0.097174, 0.413890,
		0.016813, 0.964585, -0.263235,
		37.013805, 34.346413, 38.700294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317131, 34.086849, 39.390568>,  <37.002037, 33.671204, 38.884560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317131, 34.086849, 39.390568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101540, 34.354187, 39.185505>,  <36.972183, 34.514587, 39.062466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101540, 34.354187, 39.185505>,  <37.317131, 34.086849, 39.390568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101540, 34.354187, 39.185505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399973, 0.332562, 0.854063,
		0.741295, 0.665375, 0.088072,
		-0.538983, 0.668340, -0.512659,
		36.939846, 34.554688, 39.031708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527172, 34.760605, 39.667686>,  <37.317131, 34.086849, 39.390568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527172, 34.760605, 39.667686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.160446, 34.753498, 39.508118>,  <36.940411, 34.749233, 39.412376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.160446, 34.753498, 39.508118>,  <37.527172, 34.760605, 39.667686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160446, 34.753498, 39.508118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370289, 0.411751, 0.832675,
		0.149463, 0.911123, -0.384078,
		-0.916813, -0.017766, -0.398921,
		36.885403, 34.748169, 39.388443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.585041, 35.015858, 31.411152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230225, 34.853870, 31.499844>,  <39.017334, 34.756676, 31.553059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230225, 34.853870, 31.499844>,  <39.585041, 35.015858, 31.411152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230225, 34.853870, 31.499844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206524, 0.081486, 0.975043,
		-0.412931, 0.910691, 0.011355,
		-0.887038, -0.404971, 0.221728,
		38.964115, 34.732380, 31.566362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358723, 35.386124, 31.972591>,  <39.585041, 35.015858, 31.411152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358723, 35.386124, 31.972591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157398, 35.041035, 31.992153>,  <39.036606, 34.833981, 32.003891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157398, 35.041035, 31.992153>,  <39.358723, 35.386124, 31.972591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157398, 35.041035, 31.992153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036550, 0.035292, 0.998709,
		-0.863335, 0.504444, 0.013769,
		-0.503307, -0.862723, 0.048906,
		39.006405, 34.782219, 32.006824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892090, 35.562363, 32.430725>,  <39.358723, 35.386124, 31.972591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892090, 35.562363, 32.430725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904217, 35.162613, 32.423378>,  <38.911491, 34.922764, 32.418968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904217, 35.162613, 32.423378>,  <38.892090, 35.562363, 32.430725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904217, 35.162613, 32.423378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072728, -0.016122, 0.997221,
		-0.996891, -0.031567, 0.072194,
		0.030316, -0.999371, -0.018368,
		38.913311, 34.862801, 32.417866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393303, 35.497372, 32.962994>,  <38.892090, 35.562363, 32.430725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393303, 35.497372, 32.962994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571705, 35.142971, 32.912262>,  <38.678745, 34.930332, 32.881821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571705, 35.142971, 32.912262>,  <38.393303, 35.497372, 32.962994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571705, 35.142971, 32.912262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119093, -0.199192, 0.972697,
		-0.887073, -0.418720, -0.194356,
		0.446002, -0.886000, -0.126831,
		38.705505, 34.877171, 32.874214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968357, 34.920654, 33.147896>,  <38.393303, 35.497372, 32.962994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968357, 34.920654, 33.147896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344032, 34.793575, 33.200031>,  <38.569439, 34.717327, 33.231312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344032, 34.793575, 33.200031>,  <37.968357, 34.920654, 33.147896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344032, 34.793575, 33.200031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197000, -0.187600, 0.962287,
		-0.281269, -0.929447, -0.238780,
		0.939190, -0.317702, 0.130335,
		38.625790, 34.698265, 33.239132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928669, 34.252068, 33.321335>,  <37.968357, 34.920654, 33.147896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928669, 34.252068, 33.321335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297695, 34.345070, 33.444508>,  <38.519112, 34.400871, 33.518410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297695, 34.345070, 33.444508>,  <37.928669, 34.252068, 33.321335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297695, 34.345070, 33.444508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198671, -0.397899, 0.895660,
		0.330774, -0.887477, -0.320893,
		0.922561, 0.232509, 0.307930,
		38.574463, 34.414822, 33.536888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099216, 33.685795, 33.819813>,  <37.928669, 34.252068, 33.321335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099216, 33.685795, 33.819813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371002, 33.965084, 33.909973>,  <38.534073, 34.132660, 33.964069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371002, 33.965084, 33.909973>,  <38.099216, 33.685795, 33.819813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371002, 33.965084, 33.909973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093263, -0.222531, 0.970455,
		0.727756, -0.680412, -0.086084,
		0.679465, 0.698226, 0.225405,
		38.574841, 34.174553, 33.977596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440887, 33.451107, 34.330826>,  <38.099216, 33.685795, 33.819813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440887, 33.451107, 34.330826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534103, 33.838875, 34.361576>,  <38.590034, 34.071537, 34.380028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534103, 33.838875, 34.361576>,  <38.440887, 33.451107, 34.330826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534103, 33.838875, 34.361576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212216, -0.026451, 0.976865,
		0.949030, -0.243962, 0.199563,
		0.233039, 0.969424, 0.076876,
		38.604015, 34.129704, 34.384640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944359, 33.541744, 34.820229>,  <38.440887, 33.451107, 34.330826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944359, 33.541744, 34.820229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761894, 33.896236, 34.787930>,  <38.652416, 34.108932, 34.768551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761894, 33.896236, 34.787930>,  <38.944359, 33.541744, 34.820229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761894, 33.896236, 34.787930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109864, 0.033955, 0.993367,
		0.883091, 0.462004, 0.081875,
		-0.456159, 0.886228, -0.080743,
		38.625046, 34.162106, 34.763706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725079, 33.739716, 34.679581>,  <38.944359, 33.541744, 34.820229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725079, 33.739716, 34.679581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072945, 33.559357, 34.759956>,  <40.281666, 33.451141, 34.808182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072945, 33.559357, 34.759956>,  <39.725079, 33.739716, 34.679581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072945, 33.559357, 34.759956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040360, -0.340746, -0.939289,
		0.491991, 0.824976, -0.278136,
		0.869665, -0.450896, 0.200939,
		40.333843, 33.424088, 34.820240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266251, 33.941986, 34.213963>,  <39.725079, 33.739716, 34.679581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266251, 33.941986, 34.213963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378681, 33.586975, 34.360001>,  <40.446140, 33.373970, 34.447624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378681, 33.586975, 34.360001>,  <40.266251, 33.941986, 34.213963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378681, 33.586975, 34.360001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165350, -0.329956, -0.929402,
		0.945334, 0.321601, 0.054010,
		0.281076, -0.887526, 0.365096,
		40.463005, 33.320717, 34.469528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825565, 33.760864, 33.849373>,  <40.266251, 33.941986, 34.213963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825565, 33.760864, 33.849373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697994, 33.404259, 33.978050>,  <40.621452, 33.190296, 34.055256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697994, 33.404259, 33.978050>,  <40.825565, 33.760864, 33.849373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697994, 33.404259, 33.978050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043847, -0.352936, -0.934619,
		0.946765, -0.283969, 0.151650,
		-0.318926, -0.891514, 0.321697,
		40.602318, 33.136803, 34.074558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158424, 33.269623, 33.422703>,  <40.825565, 33.760864, 33.849373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158424, 33.269623, 33.422703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839443, 33.085808, 33.579113>,  <40.648056, 32.975517, 33.672958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839443, 33.085808, 33.579113>,  <41.158424, 33.269623, 33.422703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839443, 33.085808, 33.579113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083350, -0.557940, -0.825685,
		0.597603, -0.691033, 0.406626,
		-0.797448, -0.459539, 0.391024,
		40.600208, 32.947945, 33.696419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360786, 32.622707, 33.289532>,  <41.158424, 33.269623, 33.422703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360786, 32.622707, 33.289532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966713, 32.602028, 33.354942>,  <40.730270, 32.589619, 33.394188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966713, 32.602028, 33.354942>,  <41.360786, 32.622707, 33.289532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966713, 32.602028, 33.354942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103051, -0.583733, -0.805379,
		0.137098, -0.810297, 0.569756,
		-0.985183, -0.051702, 0.163531,
		40.671158, 32.586517, 33.404003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230564, 31.912373, 33.215843>,  <41.360786, 32.622707, 33.289532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230564, 31.912373, 33.215843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915276, 32.150208, 33.152378>,  <40.726101, 32.292908, 33.114300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915276, 32.150208, 33.152378>,  <41.230564, 31.912373, 33.215843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915276, 32.150208, 33.152378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151211, -0.437045, -0.886638,
		-0.596526, -0.674875, 0.434396,
		-0.788220, 0.594588, -0.158660,
		40.678810, 32.328583, 33.104782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760571, 31.402756, 33.004555>,  <41.230564, 31.912373, 33.215843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760571, 31.402756, 33.004555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597965, 31.744062, 32.873909>,  <40.500401, 31.948847, 32.795521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597965, 31.744062, 32.873909>,  <40.760571, 31.402756, 33.004555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597965, 31.744062, 32.873909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263738, -0.451863, -0.852211,
		-0.874749, -0.260298, 0.408729,
		-0.406518, 0.853268, -0.326616,
		40.476009, 32.000042, 32.775925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239445, 31.151249, 32.701607>,  <40.760571, 31.402756, 33.004555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239445, 31.151249, 32.701607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276535, 31.523283, 32.559425>,  <40.298790, 31.746504, 32.474117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276535, 31.523283, 32.559425>,  <40.239445, 31.151249, 32.701607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276535, 31.523283, 32.559425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196541, -0.332868, -0.922264,
		-0.976101, 0.155383, 0.151933,
		0.092730, 0.930084, -0.355451,
		40.304356, 31.802307, 32.452789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720993, 31.345972, 32.161617>,  <40.239445, 31.151249, 32.701607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720993, 31.345972, 32.161617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015224, 31.610704, 32.103775>,  <40.191761, 31.769543, 32.069069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015224, 31.610704, 32.103775>,  <39.720993, 31.345972, 32.161617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015224, 31.610704, 32.103775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053400, -0.269444, -0.961534,
		-0.675336, 0.699558, -0.233538,
		0.735574, 0.661830, -0.144609,
		40.235897, 31.809254, 32.060390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572090, 31.619350, 31.519482>,  <39.720993, 31.345972, 32.161617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572090, 31.619350, 31.519482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938488, 31.776663, 31.551182>,  <40.158325, 31.871050, 31.570202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938488, 31.776663, 31.551182>,  <39.572090, 31.619350, 31.519482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938488, 31.776663, 31.551182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172096, -0.206741, -0.963141,
		-0.362402, 0.895872, -0.257056,
		0.915996, 0.393282, 0.079252,
		40.213287, 31.894648, 31.574957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529205, 32.028961, 31.010183>,  <39.572090, 31.619350, 31.519482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529205, 32.028961, 31.010183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909508, 31.940805, 31.097357>,  <40.137688, 31.887913, 31.149662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909508, 31.940805, 31.097357>,  <39.529205, 32.028961, 31.010183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909508, 31.940805, 31.097357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183808, -0.165239, -0.968974,
		0.249562, 0.961314, -0.116592,
		0.950754, -0.220389, 0.217935,
		40.194733, 31.874689, 31.162737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055981, 32.500362, 30.643562>,  <39.529205, 32.028961, 31.010183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055981, 32.500362, 30.643562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256401, 32.161480, 30.714211>,  <40.376652, 31.958151, 30.756599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256401, 32.161480, 30.714211>,  <40.055981, 32.500362, 30.643562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256401, 32.161480, 30.714211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165234, -0.106679, -0.980468,
		0.849497, 0.520449, 0.086535,
		0.501052, -0.847203, 0.176620,
		40.406715, 31.907320, 30.767197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741871, 32.471752, 30.225048>,  <40.055981, 32.500362, 30.643562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741871, 32.471752, 30.225048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675858, 32.089722, 30.323505>,  <40.636250, 31.860502, 30.382580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675858, 32.089722, 30.323505>,  <40.741871, 32.471752, 30.225048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675858, 32.089722, 30.323505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023786, -0.245640, -0.969069,
		0.986002, -0.165779, 0.017820,
		-0.165029, -0.955080, 0.246145,
		40.626350, 31.803198, 30.397348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290466, 32.176296, 29.903421>,  <40.741871, 32.471752, 30.225048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290466, 32.176296, 29.903421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027561, 31.883387, 29.974724>,  <40.869820, 31.707640, 30.017506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027561, 31.883387, 29.974724>,  <41.290466, 32.176296, 29.903421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027561, 31.883387, 29.974724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140796, -0.351661, -0.925479,
		0.740395, -0.583183, 0.334235,
		-0.657261, -0.732279, 0.178258,
		40.830383, 31.663704, 30.028202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.007919, 30.476370, 31.152748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208874, 30.814409, 31.079626>,  <33.329445, 31.017233, 31.035753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208874, 30.814409, 31.079626>,  <33.007919, 30.476370, 31.152748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208874, 30.814409, 31.079626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081857, 0.163984, 0.983061,
		0.860762, -0.508836, 0.013205,
		0.502382, 0.845101, -0.182803,
		33.359589, 31.067940, 31.024786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653099, 30.429325, 31.481560>,  <33.007919, 30.476370, 31.152748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653099, 30.429325, 31.481560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612247, 30.823534, 31.427420>,  <33.587738, 31.060059, 31.394936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612247, 30.823534, 31.427420>,  <33.653099, 30.429325, 31.481560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612247, 30.823534, 31.427420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121283, 0.147380, 0.981616,
		0.987350, 0.083833, -0.134578,
		-0.102126, 0.985521, -0.135349,
		33.581612, 31.119190, 31.386814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121197, 30.693344, 31.979929>,  <33.653099, 30.429325, 31.481560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121197, 30.693344, 31.979929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898502, 31.013546, 31.891172>,  <33.764885, 31.205667, 31.837917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898502, 31.013546, 31.891172>,  <34.121197, 30.693344, 31.979929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898502, 31.013546, 31.891172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095808, 0.327216, 0.940080,
		0.825143, 0.502121, -0.258869,
		-0.556740, 0.800503, -0.221893,
		33.731480, 31.253696, 31.824604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477989, 31.215170, 32.209797>,  <34.121197, 30.693344, 31.979929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477989, 31.215170, 32.209797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099354, 31.343496, 32.196865>,  <33.872173, 31.420492, 32.189106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099354, 31.343496, 32.196865>,  <34.477989, 31.215170, 32.209797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099354, 31.343496, 32.196865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093207, 0.368241, 0.925046,
		0.308673, 0.872626, -0.378476,
		-0.946590, 0.320814, -0.032331,
		33.815376, 31.439741, 32.187164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470287, 31.943094, 32.479908>,  <34.477989, 31.215170, 32.209797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470287, 31.943094, 32.479908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095089, 31.811237, 32.522800>,  <33.869968, 31.732122, 32.548534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095089, 31.811237, 32.522800>,  <34.470287, 31.943094, 32.479908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095089, 31.811237, 32.522800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029264, 0.232928, 0.972054,
		-0.345408, 0.914921, -0.208838,
		-0.937996, -0.329644, 0.107229,
		33.813690, 31.712345, 32.554970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209812, 32.485344, 32.719490>,  <34.470287, 31.943094, 32.479908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209812, 32.485344, 32.719490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953026, 32.192791, 32.811535>,  <33.798954, 32.017258, 32.866760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953026, 32.192791, 32.811535>,  <34.209812, 32.485344, 32.719490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953026, 32.192791, 32.811535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038310, 0.330345, 0.943082,
		-0.765775, 0.596612, -0.240090,
		-0.641967, -0.731387, 0.230114,
		33.760437, 31.973375, 32.880569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628815, 32.817589, 33.120163>,  <34.209812, 32.485344, 32.719490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628815, 32.817589, 33.120163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570606, 32.431183, 33.205612>,  <33.535683, 32.199337, 33.256882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570606, 32.431183, 33.205612>,  <33.628815, 32.817589, 33.120163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570606, 32.431183, 33.205612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108130, 0.230156, 0.967128,
		-0.983429, 0.117637, -0.137948,
		-0.145520, -0.966018, 0.213622,
		33.526951, 32.141376, 33.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086239, 32.787525, 33.514179>,  <33.628815, 32.817589, 33.120163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086239, 32.787525, 33.514179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.261501, 32.441460, 33.611755>,  <33.366657, 32.233818, 33.670300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.261501, 32.441460, 33.611755>,  <33.086239, 32.787525, 33.514179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261501, 32.441460, 33.611755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082266, 0.231640, 0.969317,
		-0.895127, -0.444778, 0.030320,
		0.438154, -0.865167, 0.243938,
		33.392948, 32.181908, 33.684937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663956, 32.474659, 34.053200>,  <33.086239, 32.787525, 33.514179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663956, 32.474659, 34.053200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.006565, 32.272099, 34.093052>,  <33.212132, 32.150562, 34.116962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.006565, 32.272099, 34.093052>,  <32.663956, 32.474659, 34.053200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006565, 32.272099, 34.093052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027164, 0.237007, 0.971128,
		-0.515399, -0.829084, 0.216757,
		0.856520, -0.506406, 0.099632,
		33.263519, 32.120178, 34.122940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677044, 32.023186, 34.631985>,  <32.663956, 32.474659, 34.053200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677044, 32.023186, 34.631985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.074280, 32.049896, 34.593388>,  <33.312622, 32.065922, 34.570229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.074280, 32.049896, 34.593388>,  <32.677044, 32.023186, 34.631985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074280, 32.049896, 34.593388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083945, 0.170342, 0.981803,
		0.081994, -0.983120, 0.163560,
		0.993092, 0.066772, -0.096495,
		33.372208, 32.069927, 34.564438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033669, 31.680653, 35.197487>,  <32.677044, 32.023186, 34.631985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033669, 31.680653, 35.197487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.314255, 31.922201, 35.046070>,  <33.482605, 32.067131, 34.955219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.314255, 31.922201, 35.046070>,  <33.033669, 31.680653, 35.197487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314255, 31.922201, 35.046070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335087, 0.189326, 0.922969,
		0.629022, -0.774271, -0.069545,
		0.701461, 0.603871, -0.378538,
		33.524693, 32.103363, 34.932510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707317, 31.516628, 35.425037>,  <33.033669, 31.680653, 35.197487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707317, 31.516628, 35.425037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.745445, 31.905428, 35.339123>,  <33.768322, 32.138706, 35.287575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.745445, 31.905428, 35.339123>,  <33.707317, 31.516628, 35.425037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745445, 31.905428, 35.339123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204792, 0.192008, 0.959788,
		0.974153, -0.135474, -0.180755,
		0.095320, 0.971998, -0.214790,
		33.774040, 32.197029, 35.274685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320034, 31.863068, 35.767887>,  <33.707317, 31.516628, 35.425037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320034, 31.863068, 35.767887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.080959, 32.171860, 35.681335>,  <33.937515, 32.357136, 35.629406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.080959, 32.171860, 35.681335>,  <34.320034, 31.863068, 35.767887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080959, 32.171860, 35.681335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130062, 0.359677, 0.923968,
		0.791109, 0.524101, -0.315379,
		-0.597688, 0.771978, -0.216378,
		33.901653, 32.403454, 35.616421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715710, 32.311192, 36.016773>,  <34.320034, 31.863068, 35.767887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715710, 32.311192, 36.016773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.350163, 32.473412, 36.009064>,  <34.130833, 32.570744, 36.004440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.350163, 32.473412, 36.009064>,  <34.715710, 32.311192, 36.016773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350163, 32.473412, 36.009064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188587, 0.466044, 0.864429,
		0.359549, 0.786342, -0.502385,
		-0.913871, 0.405548, -0.019272,
		34.076000, 32.595078, 36.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460400, 32.531330, 36.084991>,  <34.715710, 32.311192, 36.016773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460400, 32.531330, 36.084991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.512684, 32.159168, 36.221962>,  <35.544056, 31.935871, 36.304146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.512684, 32.159168, 36.221962>,  <35.460400, 32.531330, 36.084991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512684, 32.159168, 36.221962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003128, -0.345005, -0.938596,
		0.991416, 0.123756, -0.042186,
		0.130712, -0.930406, 0.342431,
		35.551899, 31.880047, 36.324692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068916, 32.210964, 35.738693>,  <35.460400, 32.531330, 36.084991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068916, 32.210964, 35.738693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813286, 31.922983, 35.846951>,  <35.659908, 31.750195, 35.911903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813286, 31.922983, 35.846951>,  <36.068916, 32.210964, 35.738693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813286, 31.922983, 35.846951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075562, -0.408942, -0.909427,
		0.765421, -0.560745, 0.315747,
		-0.639078, -0.719953, 0.270642,
		35.621563, 31.706997, 35.928143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537949, 31.708874, 35.614105>,  <36.068916, 32.210964, 35.738693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537949, 31.708874, 35.614105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170311, 31.554827, 35.647434>,  <35.949726, 31.462399, 35.667431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170311, 31.554827, 35.647434>,  <36.537949, 31.708874, 35.614105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170311, 31.554827, 35.647434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102304, -0.437455, -0.893402,
		0.380516, -0.812599, 0.441463,
		-0.919098, -0.385117, 0.083327,
		35.894581, 31.439291, 35.672432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682484, 31.026453, 35.368271>,  <36.537949, 31.708874, 35.614105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682484, 31.026453, 35.368271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290825, 31.102415, 35.339397>,  <36.055828, 31.147991, 35.322075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290825, 31.102415, 35.339397>,  <36.682484, 31.026453, 35.368271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290825, 31.102415, 35.339397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028578, -0.480509, -0.876524,
		-0.201138, -0.856182, 0.475915,
		-0.979146, 0.189903, -0.072181,
		35.997082, 31.159386, 35.317741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419815, 30.319799, 35.260296>,  <36.682484, 31.026453, 35.368271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419815, 30.319799, 35.260296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192890, 30.623228, 35.132092>,  <36.056736, 30.805285, 35.055168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192890, 30.623228, 35.132092>,  <36.419815, 30.319799, 35.260296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192890, 30.623228, 35.132092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077757, -0.338119, -0.937886,
		-0.819821, -0.556999, 0.132836,
		-0.567316, 0.758570, -0.320508,
		36.022694, 30.850800, 35.035938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864910, 29.976425, 34.776360>,  <36.419815, 30.319799, 35.260296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864910, 29.976425, 34.776360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841854, 30.363615, 34.678627>,  <35.828022, 30.595930, 34.619987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841854, 30.363615, 34.678627>,  <35.864910, 29.976425, 34.776360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841854, 30.363615, 34.678627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202066, -0.250988, -0.946665,
		-0.977674, -0.005196, 0.210062,
		-0.057642, 0.967976, -0.244335,
		35.824562, 30.654009, 34.605328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380478, 29.952963, 34.347763>,  <35.864910, 29.976425, 34.776360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380478, 29.952963, 34.347763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598938, 30.278976, 34.270367>,  <35.730015, 30.474585, 34.223930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598938, 30.278976, 34.270367>,  <35.380478, 29.952963, 34.347763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598938, 30.278976, 34.270367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084503, -0.176201, -0.980721,
		-0.833415, 0.551970, -0.027359,
		0.546149, 0.815035, -0.193492,
		35.762783, 30.523487, 34.212318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233078, 30.135637, 33.708050>,  <35.380478, 29.952963, 34.347763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233078, 30.135637, 33.708050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554527, 30.370890, 33.744473>,  <35.747398, 30.512041, 33.766327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554527, 30.370890, 33.744473>,  <35.233078, 30.135637, 33.708050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554527, 30.370890, 33.744473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202264, -0.126012, -0.971190,
		-0.559713, 0.798888, -0.220223,
		0.803623, 0.588131, 0.091056,
		35.795616, 30.547329, 33.771790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209049, 30.562317, 33.049133>,  <35.233078, 30.135637, 33.708050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209049, 30.562317, 33.049133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582539, 30.554266, 33.192104>,  <35.806633, 30.549435, 33.277885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582539, 30.554266, 33.192104>,  <35.209049, 30.562317, 33.049133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582539, 30.554266, 33.192104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352200, -0.127215, -0.927239,
		0.064135, 0.991671, -0.111695,
		0.933725, -0.020129, 0.357425,
		35.862656, 30.548227, 33.299332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529869, 30.921646, 32.482872>,  <35.209049, 30.562317, 33.049133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529869, 30.921646, 32.482872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825974, 30.764740, 32.701279>,  <36.003635, 30.670595, 32.832325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825974, 30.764740, 32.701279>,  <35.529869, 30.921646, 32.482872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825974, 30.764740, 32.701279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511051, -0.199398, -0.836103,
		0.436850, 0.897980, 0.052861,
		0.740263, -0.392266, 0.546020,
		36.048054, 30.647060, 32.865086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182533, 31.357328, 32.383518>,  <35.529869, 30.921646, 32.482872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182533, 31.357328, 32.383518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253906, 30.976860, 32.484261>,  <36.296730, 30.748579, 32.544708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253906, 30.976860, 32.484261>,  <36.182533, 31.357328, 32.383518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253906, 30.976860, 32.484261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580177, -0.105029, -0.807690,
		0.794705, 0.290241, 0.533108,
		0.178433, -0.951173, 0.251858,
		36.307438, 30.691507, 32.559818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892612, 31.242390, 32.290337>,  <36.182533, 31.357328, 32.383518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892612, 31.242390, 32.290337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723652, 30.880430, 32.269428>,  <36.622276, 30.663254, 32.256882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723652, 30.880430, 32.269428>,  <36.892612, 31.242390, 32.290337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723652, 30.880430, 32.269428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486544, -0.177706, -0.855392,
		0.764756, -0.386751, 0.515337,
		-0.422403, -0.904900, -0.052270,
		36.596931, 30.608961, 32.253746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451580, 30.676008, 32.247520>,  <36.892612, 31.242390, 32.290337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451580, 30.676008, 32.247520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099575, 30.548105, 32.107044>,  <36.888371, 30.471363, 32.022758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099575, 30.548105, 32.107044>,  <37.451580, 30.676008, 32.247520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099575, 30.548105, 32.107044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450586, -0.328260, -0.830192,
		0.150177, -0.888820, 0.432950,
		-0.880011, -0.319757, -0.351192,
		36.835571, 30.452179, 32.001686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692097, 30.128630, 31.618994>,  <37.451580, 30.676008, 32.247520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692097, 30.128630, 31.618994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295979, 30.132433, 31.563541>,  <37.058308, 30.134714, 31.530270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295979, 30.132433, 31.563541>,  <37.692097, 30.128630, 31.618994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295979, 30.132433, 31.563541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126027, -0.358831, -0.924855,
		-0.058538, -0.933354, 0.354152,
		-0.990298, 0.009507, -0.138633,
		36.998890, 30.135284, 31.521952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983654, 29.324846, 31.603115>,  <37.692097, 30.128630, 31.618994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983654, 29.324846, 31.603115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218723, 29.001825, 31.583124>,  <38.359764, 28.808014, 31.571129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218723, 29.001825, 31.583124>,  <37.983654, 29.324846, 31.603115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218723, 29.001825, 31.583124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095599, -0.130642, 0.986810,
		-0.803428, -0.575147, -0.153976,
		0.587677, -0.807551, -0.049978,
		38.395027, 28.759560, 31.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541775, 28.853666, 31.787273>,  <37.983654, 29.324846, 31.603115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541775, 28.853666, 31.787273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918156, 28.734177, 31.850994>,  <38.143982, 28.662483, 31.889227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918156, 28.734177, 31.850994>,  <37.541775, 28.853666, 31.787273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918156, 28.734177, 31.850994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220494, -0.183691, 0.957935,
		-0.256899, -0.936494, -0.238711,
		0.940949, -0.298727, 0.159301,
		38.200439, 28.644560, 31.898785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522099, 28.199671, 32.135868>,  <37.541775, 28.853666, 31.787273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522099, 28.199671, 32.135868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895294, 28.305082, 32.233910>,  <38.119213, 28.368328, 32.292736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895294, 28.305082, 32.233910>,  <37.522099, 28.199671, 32.135868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895294, 28.305082, 32.233910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187817, -0.224424, 0.956221,
		0.306999, -0.938183, -0.159891,
		0.932994, 0.263528, 0.245104,
		38.175194, 28.384140, 32.307442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715126, 27.755800, 32.614956>,  <37.522099, 28.199671, 32.135868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715126, 27.755800, 32.614956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972034, 28.056332, 32.675613>,  <38.126179, 28.236650, 32.712009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972034, 28.056332, 32.675613>,  <37.715126, 27.755800, 32.614956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972034, 28.056332, 32.675613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177913, -0.046311, 0.982956,
		0.745546, -0.658301, 0.103927,
		0.642268, 0.751330, 0.151647,
		38.164715, 28.281731, 32.721107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060738, 27.544891, 33.232468>,  <37.715126, 27.755800, 32.614956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060738, 27.544891, 33.232468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.160343, 27.930838, 33.198952>,  <38.220108, 28.162405, 33.178841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.160343, 27.930838, 33.198952>,  <38.060738, 27.544891, 33.232468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160343, 27.930838, 33.198952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011888, 0.089557, 0.995911,
		0.968426, -0.247003, 0.033771,
		0.249017, 0.964868, -0.083793,
		38.235050, 28.220299, 33.173813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584244, 27.615929, 33.599327>,  <38.060738, 27.544891, 33.232468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584244, 27.615929, 33.599327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405682, 27.973499, 33.583218>,  <38.298546, 28.188042, 33.573551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405682, 27.973499, 33.583218>,  <38.584244, 27.615929, 33.599327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405682, 27.973499, 33.583218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168009, 0.127940, 0.977448,
		0.878918, 0.429570, -0.207300,
		-0.446404, 0.893925, -0.040277,
		38.271759, 28.241676, 33.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979252, 27.991796, 34.046757>,  <38.584244, 27.615929, 33.599327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979252, 27.991796, 34.046757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651325, 28.215578, 33.997898>,  <38.454571, 28.349846, 33.968582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651325, 28.215578, 33.997898>,  <38.979252, 27.991796, 34.046757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651325, 28.215578, 33.997898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017158, 0.189210, 0.981787,
		0.572374, 0.806978, -0.145518,
		-0.819813, 0.559452, -0.122145,
		38.405380, 28.383413, 33.961254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185936, 28.689829, 34.107193>,  <38.979252, 27.991796, 34.046757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185936, 28.689829, 34.107193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797222, 28.704021, 34.200470>,  <38.563995, 28.712536, 34.256435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797222, 28.704021, 34.200470>,  <39.185936, 28.689829, 34.107193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797222, 28.704021, 34.200470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235514, 0.200383, 0.950989,
		-0.012986, 0.979075, -0.203085,
		-0.971784, 0.035480, 0.233188,
		38.505688, 28.714664, 34.270428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016090, 29.337547, 34.447464>,  <39.185936, 28.689829, 34.107193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016090, 29.337547, 34.447464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721409, 29.091061, 34.558849>,  <38.544601, 28.943169, 34.625683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721409, 29.091061, 34.558849>,  <39.016090, 29.337547, 34.447464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721409, 29.091061, 34.558849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155594, 0.246282, 0.956627,
		-0.658073, 0.748078, -0.085557,
		-0.736703, -0.616218, 0.278468,
		38.500397, 28.906195, 34.642391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667023, 29.780096, 34.833488>,  <39.016090, 29.337547, 34.447464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667023, 29.780096, 34.833488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516201, 29.420938, 34.924362>,  <38.425709, 29.205444, 34.978886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516201, 29.420938, 34.924362>,  <38.667023, 29.780096, 34.833488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516201, 29.420938, 34.924362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165974, 0.306823, 0.937183,
		-0.911198, 0.315664, -0.264717,
		-0.377056, -0.897895, 0.227185,
		38.403084, 29.151569, 34.992519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062756, 29.877638, 35.206192>,  <38.667023, 29.780096, 34.833488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062756, 29.877638, 35.206192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197311, 29.512754, 35.299755>,  <38.278046, 29.293823, 35.355892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197311, 29.512754, 35.299755>,  <38.062756, 29.877638, 35.206192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197311, 29.512754, 35.299755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083829, 0.218393, 0.972254,
		-0.937984, -0.346665, -0.003004,
		0.336390, -0.912211, 0.233910,
		38.298229, 29.239092, 35.369926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728230, 29.726988, 35.770554>,  <38.062756, 29.877638, 35.206192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728230, 29.726988, 35.770554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993389, 29.427908, 35.754986>,  <38.152485, 29.248461, 35.745644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993389, 29.427908, 35.754986>,  <37.728230, 29.726988, 35.770554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993389, 29.427908, 35.754986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021889, -0.071315, 0.997214,
		-0.748390, -0.660198, -0.063641,
		0.662897, -0.747698, -0.038920,
		38.192257, 29.203598, 35.743309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458271, 29.127792, 36.232719>,  <37.728230, 29.726988, 35.770554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458271, 29.127792, 36.232719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853146, 29.098158, 36.176189>,  <38.090069, 29.080378, 36.142269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853146, 29.098158, 36.176189>,  <37.458271, 29.127792, 36.232719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853146, 29.098158, 36.176189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137438, -0.055246, 0.988968,
		-0.081086, -0.995720, -0.044355,
		0.987186, -0.074096, -0.141329,
		38.149303, 29.075932, 36.133789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693066, 28.649338, 36.658794>,  <37.458271, 29.127792, 36.232719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693066, 28.649338, 36.658794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027973, 28.856977, 36.590065>,  <38.228916, 28.981562, 36.548828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027973, 28.856977, 36.590065>,  <37.693066, 28.649338, 36.658794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027973, 28.856977, 36.590065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065943, 0.216092, 0.974144,
		0.542807, -0.826947, 0.146695,
		0.837264, 0.519099, -0.171827,
		38.279152, 29.012707, 36.538517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.913723, 31.431095, 29.654182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530979, 31.325935, 29.703676>,  <41.301334, 31.262840, 29.733372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530979, 31.325935, 29.703676>,  <41.913723, 31.431095, 29.654182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530979, 31.325935, 29.703676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010035, -0.455492, -0.890184,
		0.290387, -0.850537, 0.438479,
		-0.956857, -0.262897, 0.123734,
		41.243923, 31.247066, 29.740797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957619, 30.689798, 29.602654>,  <41.913723, 31.431095, 29.654182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957619, 30.689798, 29.602654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.593395, 30.829432, 29.514088>,  <41.374863, 30.913212, 29.460949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.593395, 30.829432, 29.514088>,  <41.957619, 30.689798, 29.602654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593395, 30.829432, 29.514088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005731, -0.546224, -0.837619,
		-0.413341, -0.761432, 0.499370,
		-0.910558, 0.349084, -0.221413,
		41.320229, 30.934156, 29.447664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509136, 30.123352, 29.410530>,  <41.957619, 30.689798, 29.602654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509136, 30.123352, 29.410530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.349415, 30.449299, 29.242460>,  <41.253582, 30.644867, 29.141619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.349415, 30.449299, 29.242460>,  <41.509136, 30.123352, 29.410530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349415, 30.449299, 29.242460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051102, -0.477366, -0.877217,
		-0.915394, -0.328803, 0.232255,
		-0.399303, 0.814869, -0.420175,
		41.229626, 30.693760, 29.116407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221275, 29.815811, 28.898872>,  <41.509136, 30.123352, 29.410530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221275, 29.815811, 28.898872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207352, 30.209558, 28.829813>,  <41.198997, 30.445807, 28.788378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207352, 30.209558, 28.829813>,  <41.221275, 29.815811, 28.898872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207352, 30.209558, 28.829813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154863, -0.165352, -0.974000,
		-0.987323, -0.060641, -0.146686,
		-0.034809, 0.984369, -0.172647,
		41.196907, 30.504869, 28.778019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766567, 29.875809, 28.389841>,  <41.221275, 29.815811, 28.898872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766567, 29.875809, 28.389841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956150, 30.228025, 28.391096>,  <41.069901, 30.439356, 28.391850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956150, 30.228025, 28.391096>,  <40.766567, 29.875809, 28.389841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956150, 30.228025, 28.391096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087994, 0.050906, -0.994820,
		-0.876138, 0.471230, 0.101610,
		0.473961, 0.880540, 0.003136,
		41.098339, 30.492188, 28.392036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351757, 30.315212, 28.055058>,  <40.766567, 29.875809, 28.389841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351757, 30.315212, 28.055058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.710373, 30.485090, 28.004698>,  <40.925541, 30.587017, 27.974482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.710373, 30.485090, 28.004698>,  <40.351757, 30.315212, 28.055058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710373, 30.485090, 28.004698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083413, -0.117273, -0.989590,
		-0.435038, 0.897709, -0.069715,
		0.896540, 0.424695, -0.125899,
		40.979336, 30.612499, 27.966928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279610, 30.812449, 27.524105>,  <40.351757, 30.315212, 28.055058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279610, 30.812449, 27.524105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.674061, 30.748081, 27.540348>,  <40.910732, 30.709461, 27.550093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.674061, 30.748081, 27.540348>,  <40.279610, 30.812449, 27.524105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674061, 30.748081, 27.540348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001494, -0.253270, -0.967395,
		0.165954, 0.953918, -0.249998,
		0.986132, -0.160917, 0.040606,
		40.969902, 30.699806, 27.552530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592777, 31.322210, 27.066568>,  <40.279610, 30.812449, 27.524105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592777, 31.322210, 27.066568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834671, 31.004353, 27.087889>,  <40.979805, 30.813639, 27.100681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834671, 31.004353, 27.087889>,  <40.592777, 31.322210, 27.066568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834671, 31.004353, 27.087889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202262, -0.217963, -0.954768,
		0.770318, 0.566598, -0.292535,
		0.604731, -0.794644, 0.053300,
		41.016090, 30.765959, 27.103878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002628, 31.340260, 26.477676>,  <40.592777, 31.322210, 27.066568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002628, 31.340260, 26.477676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032814, 30.961742, 26.603430>,  <41.050926, 30.734632, 26.678883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032814, 30.961742, 26.603430>,  <41.002628, 31.340260, 26.477676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032814, 30.961742, 26.603430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146988, -0.322396, -0.935123,
		0.986255, 0.024361, -0.163424,
		0.075467, -0.946291, 0.314384,
		41.055454, 30.677855, 26.697744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168427, 31.033236, 25.844730>,  <41.002628, 31.340260, 26.477676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168427, 31.033236, 25.844730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.040146, 30.761812, 26.109064>,  <40.963177, 30.598957, 26.267664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.040146, 30.761812, 26.109064>,  <41.168427, 31.033236, 25.844730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040146, 30.761812, 26.109064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483182, -0.482878, -0.730317,
		0.814668, -0.553520, -0.173008,
		-0.320703, -0.678561, 0.660837,
		40.943935, 30.558245, 26.307316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156376, 30.390030, 25.476881>,  <41.168427, 31.033236, 25.844730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156376, 30.390030, 25.476881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.927708, 30.277435, 25.785156>,  <40.790508, 30.209879, 25.970121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.927708, 30.277435, 25.785156>,  <41.156376, 30.390030, 25.476881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927708, 30.277435, 25.785156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576524, -0.530530, -0.621416,
		0.583794, -0.799564, 0.141003,
		-0.571668, -0.281488, 0.770688,
		40.756207, 30.192989, 26.016363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071907, 29.664944, 25.393301>,  <41.156376, 30.390030, 25.476881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071907, 29.664944, 25.393301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778019, 29.781673, 25.638260>,  <40.601688, 29.851711, 25.785236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778019, 29.781673, 25.638260>,  <41.071907, 29.664944, 25.393301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778019, 29.781673, 25.638260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632301, -0.621612, -0.462379,
		0.245742, -0.726937, 0.641227,
		-0.734715, 0.291822, 0.612399,
		40.557606, 29.869221, 25.821980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671463, 29.065477, 25.839376>,  <41.071907, 29.664944, 25.393301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671463, 29.065477, 25.839376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458576, 29.391953, 25.749418>,  <40.330845, 29.587837, 25.695442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458576, 29.391953, 25.749418>,  <40.671463, 29.065477, 25.839376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458576, 29.391953, 25.749418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661263, -0.566646, -0.491573,
		-0.528653, -0.112909, 0.841295,
		-0.532219, 0.816189, -0.224896,
		40.298912, 29.636808, 25.681950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933117, 28.875328, 26.055817>,  <40.671463, 29.065477, 25.839376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933117, 28.875328, 26.055817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965481, 29.148857, 25.765757>,  <39.984898, 29.312975, 25.591721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965481, 29.148857, 25.765757>,  <39.933117, 28.875328, 26.055817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965481, 29.148857, 25.765757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568679, -0.565827, -0.597029,
		-0.818571, 0.460683, 0.343094,
		0.080909, 0.683821, -0.725150,
		39.989754, 29.354004, 25.548212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162956, 28.670835, 26.132824>,  <39.933117, 28.875328, 26.055817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162956, 28.670835, 26.132824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766518, 28.618402, 26.142231>,  <38.528656, 28.586943, 26.147875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766518, 28.618402, 26.142231>,  <39.162956, 28.670835, 26.132824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766518, 28.618402, 26.142231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057316, -0.260447, 0.963786,
		-0.120211, 0.956548, 0.265640,
		-0.991093, -0.131083, 0.023517,
		38.469189, 28.579077, 26.149286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889538, 29.057137, 26.711599>,  <39.162956, 28.670835, 26.132824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889538, 29.057137, 26.711599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624809, 28.770689, 26.622904>,  <38.465973, 28.598822, 26.569687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624809, 28.770689, 26.622904>,  <38.889538, 29.057137, 26.711599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624809, 28.770689, 26.622904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030779, -0.321491, 0.946412,
		-0.749028, 0.619532, 0.234811,
		-0.661822, -0.716117, -0.221737,
		38.426262, 28.555855, 26.556383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240383, 29.022102, 27.122841>,  <38.889538, 29.057137, 26.711599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240383, 29.022102, 27.122841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286419, 28.643898, 27.001009>,  <38.314041, 28.416975, 26.927910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286419, 28.643898, 27.001009>,  <38.240383, 29.022102, 27.122841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286419, 28.643898, 27.001009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198957, -0.322343, 0.925479,
		-0.973227, -0.045914, -0.225213,
		0.115088, -0.945509, -0.304578,
		38.320946, 28.360245, 26.909636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564308, 28.761257, 27.355217>,  <38.240383, 29.022102, 27.122841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564308, 28.761257, 27.355217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825794, 28.463587, 27.300287>,  <37.982685, 28.284985, 27.267330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825794, 28.463587, 27.300287>,  <37.564308, 28.761257, 27.355217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825794, 28.463587, 27.300287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232372, -0.370105, 0.899459,
		-0.720181, -0.556079, -0.414869,
		0.653715, -0.744176, -0.137325,
		38.021908, 28.240334, 27.259090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303177, 28.199608, 27.781517>,  <37.564308, 28.761257, 27.355217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303177, 28.199608, 27.781517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681744, 28.083607, 27.724661>,  <37.908882, 28.014006, 27.690548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681744, 28.083607, 27.724661>,  <37.303177, 28.199608, 27.781517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681744, 28.083607, 27.724661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022327, -0.380304, 0.924592,
		-0.322185, -0.878220, -0.353450,
		0.946414, -0.289997, -0.142137,
		37.965668, 27.996607, 27.682020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418816, 27.556360, 28.159708>,  <37.303177, 28.199608, 27.781517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418816, 27.556360, 28.159708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.788841, 27.694118, 28.095652>,  <38.010857, 27.776773, 28.057219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.788841, 27.694118, 28.095652>,  <37.418816, 27.556360, 28.159708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788841, 27.694118, 28.095652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238744, -0.199356, 0.950399,
		0.295390, -0.917414, -0.266640,
		0.925066, 0.344397, -0.160139,
		38.066360, 27.797438, 28.047609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875416, 27.092028, 28.512266>,  <37.418816, 27.556360, 28.159708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875416, 27.092028, 28.512266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096432, 27.424194, 28.483671>,  <38.229042, 27.623493, 28.466515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096432, 27.424194, 28.483671>,  <37.875416, 27.092028, 28.512266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096432, 27.424194, 28.483671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254266, -0.086256, 0.963280,
		0.793756, -0.550427, -0.258806,
		0.552539, 0.830415, -0.071489,
		38.262192, 27.673319, 28.462225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401928, 27.044519, 29.034111>,  <37.875416, 27.092028, 28.512266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401928, 27.044519, 29.034111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443642, 27.426119, 28.921673>,  <38.468670, 27.655079, 28.854210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443642, 27.426119, 28.921673>,  <38.401928, 27.044519, 29.034111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443642, 27.426119, 28.921673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314538, 0.236493, 0.919313,
		0.943500, -0.184283, -0.275406,
		0.104282, 0.953997, -0.281095,
		38.474926, 27.712318, 28.837345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061745, 27.338961, 29.198420>,  <38.401928, 27.044519, 29.034111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061745, 27.338961, 29.198420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.811272, 27.650227, 29.179008>,  <38.660988, 27.836987, 29.167362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.811272, 27.650227, 29.179008>,  <39.061745, 27.338961, 29.198420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811272, 27.650227, 29.179008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233548, 0.246590, 0.940558,
		0.743877, 0.577626, -0.336149,
		-0.626181, 0.778166, -0.048529,
		38.623417, 27.883677, 29.164450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430115, 27.783531, 29.613068>,  <39.061745, 27.338961, 29.198420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430115, 27.783531, 29.613068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056675, 27.925770, 29.595461>,  <38.832611, 28.011112, 29.584896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056675, 27.925770, 29.595461>,  <39.430115, 27.783531, 29.613068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056675, 27.925770, 29.595461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096969, 0.369012, 0.924352,
		0.344939, 0.858710, -0.378992,
		-0.933603, 0.355596, -0.044019,
		38.776592, 28.032448, 29.582254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520500, 28.389151, 29.919416>,  <39.430115, 27.783531, 29.613068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520500, 28.389151, 29.919416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125790, 28.325552, 29.932001>,  <38.888962, 28.287392, 29.939552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125790, 28.325552, 29.932001>,  <39.520500, 28.389151, 29.919416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125790, 28.325552, 29.932001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018751, 0.304788, 0.952236,
		-0.160992, 0.939055, -0.303739,
		-0.986778, -0.158998, 0.031461,
		38.829758, 28.277853, 29.941439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311935, 28.990921, 30.252302>,  <39.520500, 28.389151, 29.919416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311935, 28.990921, 30.252302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.991047, 28.754810, 30.288107>,  <38.798515, 28.613144, 30.309589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.991047, 28.754810, 30.288107>,  <39.311935, 28.990921, 30.252302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991047, 28.754810, 30.288107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177277, 0.378678, 0.908392,
		-0.570099, 0.712864, -0.408426,
		-0.802222, -0.590278, 0.089510,
		38.750381, 28.577726, 30.314960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820419, 29.445053, 30.540005>,  <39.311935, 28.990921, 30.252302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820419, 29.445053, 30.540005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712517, 29.064127, 30.597034>,  <38.647774, 28.835571, 30.631252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712517, 29.064127, 30.597034>,  <38.820419, 29.445053, 30.540005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712517, 29.064127, 30.597034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197948, 0.199744, 0.959645,
		-0.942363, 0.230650, -0.242391,
		-0.269758, -0.952315, 0.142574,
		38.631588, 28.778433, 30.639807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262711, 29.422096, 30.894917>,  <38.820419, 29.445053, 30.540005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262711, 29.422096, 30.894917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377869, 29.051912, 30.993422>,  <38.446964, 28.829802, 31.052525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377869, 29.051912, 30.993422>,  <38.262711, 29.422096, 30.894917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377869, 29.051912, 30.993422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084886, 0.231477, 0.969130,
		-0.953893, -0.299911, -0.011918,
		0.287894, -0.925457, 0.246263,
		38.464237, 28.774275, 31.067301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551685, 29.590740, 31.013685>,  <38.262711, 29.422096, 30.894917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551685, 29.590740, 31.013685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202923, 29.786055, 31.028425>,  <36.993664, 29.903242, 31.037270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202923, 29.786055, 31.028425>,  <37.551685, 29.590740, 31.013685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202923, 29.786055, 31.028425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192437, -0.272480, -0.942721,
		-0.450277, -0.829054, 0.331541,
		-0.871905, 0.488286, 0.036849,
		36.941353, 29.932541, 31.039480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162628, 29.122524, 30.812279>,  <37.551685, 29.590740, 31.013685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162628, 29.122524, 30.812279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954082, 29.459127, 30.755655>,  <36.828957, 29.661089, 30.721682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954082, 29.459127, 30.755655>,  <37.162628, 29.122524, 30.812279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954082, 29.459127, 30.755655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231795, -0.299310, -0.925572,
		-0.821249, -0.449749, 0.351108,
		-0.521365, 0.841510, -0.141558,
		36.797672, 29.711580, 30.713188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556149, 28.888147, 30.480688>,  <37.162628, 29.122524, 30.812279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556149, 28.888147, 30.480688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565739, 29.279476, 30.398411>,  <36.571491, 29.514275, 30.349045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565739, 29.279476, 30.398411>,  <36.556149, 28.888147, 30.480688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565739, 29.279476, 30.398411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242970, -0.193881, -0.950461,
		-0.969737, 0.072762, 0.233056,
		0.023972, 0.978323, -0.205693,
		36.572929, 29.572973, 30.336702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975433, 29.029215, 30.129343>,  <36.556149, 28.888147, 30.480688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975433, 29.029215, 30.129343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192947, 29.341349, 30.005816>,  <36.323456, 29.528629, 29.931700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192947, 29.341349, 30.005816>,  <35.975433, 29.029215, 30.129343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192947, 29.341349, 30.005816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285897, -0.173716, -0.942383,
		-0.789022, 0.600747, 0.128631,
		0.543789, 0.780337, -0.308818,
		36.356083, 29.575449, 29.913170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533665, 29.483669, 29.866055>,  <35.975433, 29.029215, 30.129343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533665, 29.483669, 29.866055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.885105, 29.565203, 29.693306>,  <36.095970, 29.614122, 29.589657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.885105, 29.565203, 29.693306>,  <35.533665, 29.483669, 29.866055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885105, 29.565203, 29.693306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452741, 0.067799, -0.889061,
		-0.151941, 0.976655, 0.151852,
		0.878601, 0.203835, -0.431870,
		36.148685, 29.626352, 29.563745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405888, 29.993032, 29.305006>,  <35.533665, 29.483669, 29.866055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405888, 29.993032, 29.305006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761745, 29.835735, 29.212141>,  <35.975258, 29.741358, 29.156422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761745, 29.835735, 29.212141>,  <35.405888, 29.993032, 29.305006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761745, 29.835735, 29.212141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301205, -0.123179, -0.945570,
		0.343240, 0.911146, -0.228031,
		0.889641, -0.393241, -0.232162,
		36.028637, 29.717762, 29.142492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453773, 30.210205, 28.653845>,  <35.405888, 29.993032, 29.305006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453773, 30.210205, 28.653845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741592, 29.932617, 28.664066>,  <35.914284, 29.766064, 28.670198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741592, 29.932617, 28.664066>,  <35.453773, 30.210205, 28.653845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741592, 29.932617, 28.664066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159442, -0.200910, -0.966547,
		0.675888, 0.691406, -0.255213,
		0.719551, -0.693969, 0.025553,
		35.957458, 29.724426, 28.671732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219334, 31.011108, 28.571291>,  <35.453773, 30.210205, 28.653845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219334, 31.011108, 28.571291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834175, 30.992086, 28.465027>,  <34.603081, 30.980673, 28.401268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834175, 30.992086, 28.465027>,  <35.219334, 31.011108, 28.571291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834175, 30.992086, 28.465027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249421, -0.219187, 0.943264,
		-0.103087, 0.974523, 0.199193,
		-0.962893, -0.047556, -0.265662,
		34.545307, 30.977819, 28.385328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981606, 31.377531, 29.143333>,  <35.219334, 31.011108, 28.571291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981606, 31.377531, 29.143333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665764, 31.198021, 28.975939>,  <34.476261, 31.090315, 28.875502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665764, 31.198021, 28.975939>,  <34.981606, 31.377531, 29.143333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665764, 31.198021, 28.975939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494384, 0.061291, 0.867080,
		-0.363476, 0.891539, -0.270263,
		-0.789601, -0.448777, -0.418485,
		34.428883, 31.063387, 28.850393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371109, 31.825363, 29.301014>,  <34.981606, 31.377531, 29.143333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371109, 31.825363, 29.301014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202927, 31.472824, 29.214813>,  <34.102016, 31.261301, 29.163094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202927, 31.472824, 29.214813>,  <34.371109, 31.825363, 29.301014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202927, 31.472824, 29.214813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508855, 0.032416, 0.860241,
		-0.751188, 0.471351, -0.462109,
		-0.420455, -0.881349, -0.215500,
		34.076790, 31.208420, 29.150164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637413, 31.901400, 29.319742>,  <34.371109, 31.825363, 29.301014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637413, 31.901400, 29.319742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712666, 31.513769, 29.383619>,  <33.757816, 31.281191, 29.421946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712666, 31.513769, 29.383619>,  <33.637413, 31.901400, 29.319742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712666, 31.513769, 29.383619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387930, 0.076054, 0.918546,
		-0.902285, -0.234753, -0.361625,
		0.188128, -0.969075, 0.159690,
		33.769104, 31.223047, 29.431526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022438, 31.690599, 29.532877>,  <33.637413, 31.901400, 29.319742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022438, 31.690599, 29.532877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309147, 31.445223, 29.665503>,  <33.481171, 31.297997, 29.745077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309147, 31.445223, 29.665503>,  <33.022438, 31.690599, 29.532877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309147, 31.445223, 29.665503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453718, -0.049214, 0.889786,
		-0.529513, -0.788206, -0.313604,
		0.716768, -0.613441, 0.331564,
		33.524178, 31.261190, 29.764971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664280, 31.114639, 29.841604>,  <33.022438, 31.690599, 29.532877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664280, 31.114639, 29.841604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032787, 31.129078, 29.996500>,  <33.253891, 31.137741, 30.089437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032787, 31.129078, 29.996500>,  <32.664280, 31.114639, 29.841604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032787, 31.129078, 29.996500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387473, -0.000581, 0.921881,
		0.033512, -0.999348, 0.013455,
		0.921272, 0.036108, 0.387240,
		33.309170, 31.139906, 30.112673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625683, 30.806393, 30.569521>,  <32.664280, 31.114639, 29.841604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625683, 30.806393, 30.569521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993473, 30.963606, 30.565619>,  <33.214146, 31.057934, 30.563278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993473, 30.963606, 30.565619>,  <32.625683, 30.806393, 30.569521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993473, 30.963606, 30.565619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099294, 0.256153, 0.961523,
		0.380411, -0.883124, 0.274552,
		0.919472, 0.393036, -0.009755,
		33.269314, 31.081516, 30.562693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.281746, 30.895603, 25.549072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.619160, 30.854679, 25.759970>,  <38.821606, 30.830124, 25.886509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.619160, 30.854679, 25.759970>,  <38.281746, 30.895603, 25.549072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619160, 30.854679, 25.759970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289415, 0.740372, 0.606702,
		-0.452431, -0.664365, 0.594916,
		0.843531, -0.102313, 0.527245,
		38.872219, 30.823986, 25.918142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086777, 30.722279, 26.311737>,  <38.281746, 30.895603, 25.549072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086777, 30.722279, 26.311737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.464535, 30.853069, 26.325590>,  <38.691189, 30.931543, 26.333902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.464535, 30.853069, 26.325590>,  <38.086777, 30.722279, 26.311737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464535, 30.853069, 26.325590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229275, 0.579361, 0.782160,
		0.235681, -0.746611, 0.622115,
		0.944398, 0.326976, 0.034635,
		38.747852, 30.951162, 26.335981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237556, 30.679907, 26.911364>,  <38.086777, 30.722279, 26.311737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237556, 30.679907, 26.911364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.495480, 30.960638, 26.790266>,  <38.650234, 31.129078, 26.717607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.495480, 30.960638, 26.790266>,  <38.237556, 30.679907, 26.911364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495480, 30.960638, 26.790266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221698, 0.550789, 0.804662,
		0.731484, -0.451738, 0.510749,
		0.644811, 0.701829, -0.302743,
		38.688923, 31.171186, 26.699444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694134, 30.818560, 27.510647>,  <38.237556, 30.679907, 26.911364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694134, 30.818560, 27.510647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.720234, 31.135738, 27.268332>,  <38.735893, 31.326046, 27.122942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.720234, 31.135738, 27.268332>,  <38.694134, 30.818560, 27.510647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720234, 31.135738, 27.268332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151511, 0.592169, 0.791442,
		0.986299, -0.143427, -0.081500,
		0.065252, 0.792947, -0.605786,
		38.739811, 31.373623, 27.086596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037243, 31.181643, 27.874052>,  <38.694134, 30.818560, 27.510647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037243, 31.181643, 27.874052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.937302, 31.455406, 27.600073>,  <38.877335, 31.619665, 27.435686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.937302, 31.455406, 27.600073>,  <39.037243, 31.181643, 27.874052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937302, 31.455406, 27.600073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298531, 0.727374, 0.617904,
		0.921114, -0.050091, -0.386057,
		-0.249856, 0.684410, -0.684948,
		38.862343, 31.660728, 27.394588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635170, 31.686878, 27.829931>,  <39.037243, 31.181643, 27.874052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635170, 31.686878, 27.829931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292316, 31.850689, 27.704960>,  <39.086605, 31.948975, 27.629976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292316, 31.850689, 27.704960>,  <39.635170, 31.686878, 27.829931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292316, 31.850689, 27.704960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177935, 0.804612, 0.566515,
		0.483387, 0.429986, -0.762528,
		-0.857133, 0.409526, -0.312429,
		39.035175, 31.973547, 27.611231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745995, 32.307907, 27.571789>,  <39.635170, 31.686878, 27.829931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745995, 32.307907, 27.571789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355873, 32.337162, 27.655149>,  <39.121799, 32.354713, 27.705166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355873, 32.337162, 27.655149>,  <39.745995, 32.307907, 27.571789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355873, 32.337162, 27.655149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158551, 0.888741, 0.430118,
		-0.153758, 0.452539, -0.878389,
		-0.975305, 0.073136, 0.208401,
		39.063282, 32.359104, 27.717670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608715, 33.056324, 27.597670>,  <39.745995, 32.307907, 27.571789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608715, 33.056324, 27.597670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271545, 32.924953, 27.768139>,  <39.069244, 32.846130, 27.870420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271545, 32.924953, 27.768139>,  <39.608715, 33.056324, 27.597670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271545, 32.924953, 27.768139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063824, 0.725458, 0.685301,
		-0.534239, 0.604854, -0.590542,
		-0.842920, -0.328423, 0.426172,
		39.018669, 32.826427, 27.895990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273479, 33.703587, 27.783064>,  <39.608715, 33.056324, 27.597670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273479, 33.703587, 27.783064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.090115, 33.398621, 27.965746>,  <38.980095, 33.215641, 28.075356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.090115, 33.398621, 27.965746>,  <39.273479, 33.703587, 27.783064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090115, 33.398621, 27.965746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175500, 0.581416, 0.794453,
		-0.871241, 0.284032, -0.400331,
		-0.458409, -0.762418, 0.456706,
		38.952591, 33.169895, 28.102758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613342, 33.897167, 28.001711>,  <39.273479, 33.703587, 27.783064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613342, 33.897167, 28.001711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678421, 33.595024, 28.255629>,  <38.717468, 33.413738, 28.407978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678421, 33.595024, 28.255629>,  <38.613342, 33.897167, 28.001711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678421, 33.595024, 28.255629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320844, 0.567898, 0.757991,
		-0.933053, -0.326994, -0.149956,
		0.162699, -0.755358, 0.634793,
		38.727230, 33.368416, 28.446066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987442, 33.711353, 28.382374>,  <38.613342, 33.897167, 28.001711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987442, 33.711353, 28.382374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.310242, 33.597065, 28.589106>,  <38.503922, 33.528492, 28.713144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.310242, 33.597065, 28.589106>,  <37.987442, 33.711353, 28.382374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310242, 33.597065, 28.589106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220763, 0.665759, 0.712761,
		-0.547731, -0.689297, 0.474194,
		0.807003, -0.285717, 0.516829,
		38.552341, 33.511349, 28.744154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743866, 33.507793, 28.962593>,  <37.987442, 33.711353, 28.382374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743866, 33.507793, 28.962593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121555, 33.573318, 29.076866>,  <38.348167, 33.612633, 29.145430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121555, 33.573318, 29.076866>,  <37.743866, 33.507793, 28.962593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121555, 33.573318, 29.076866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327249, 0.369733, 0.869601,
		0.036821, -0.914584, 0.402716,
		0.944220, 0.163808, 0.285683,
		38.404823, 33.622459, 29.162571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066868, 33.416374, 29.394369>,  <37.743866, 33.507793, 28.962593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066868, 33.416374, 29.394369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.933590, 33.784756, 29.313553>,  <36.853622, 34.005787, 29.265064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.933590, 33.784756, 29.313553>,  <37.066868, 33.416374, 29.394369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933590, 33.784756, 29.313553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024128, -0.222542, -0.974624,
		-0.942550, -0.319863, 0.096370,
		-0.333193, 0.920957, -0.202039,
		36.833633, 34.061043, 29.252941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451527, 33.340233, 29.008678>,  <37.066868, 33.416374, 29.394369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451527, 33.340233, 29.008678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597126, 33.702251, 28.920679>,  <36.684486, 33.919460, 28.867880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597126, 33.702251, 28.920679>,  <36.451527, 33.340233, 29.008678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597126, 33.702251, 28.920679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094467, -0.199109, -0.975414,
		-0.926595, 0.375834, 0.013021,
		0.364001, 0.905044, -0.219997,
		36.706326, 33.973766, 28.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998592, 33.614086, 28.513269>,  <36.451527, 33.340233, 29.008678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998592, 33.614086, 28.513269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342049, 33.815453, 28.474678>,  <36.548122, 33.936272, 28.451523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342049, 33.815453, 28.474678>,  <35.998592, 33.614086, 28.513269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342049, 33.815453, 28.474678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001556, -0.185666, -0.982612,
		-0.512572, 0.843863, -0.158638,
		0.858643, 0.503412, -0.096480,
		36.599640, 33.966476, 28.445734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800663, 34.061192, 28.052711>,  <35.998592, 33.614086, 28.513269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800663, 34.061192, 28.052711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199436, 34.092514, 28.052801>,  <36.438698, 34.111309, 28.052855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199436, 34.092514, 28.052801>,  <35.800663, 34.061192, 28.052711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199436, 34.092514, 28.052801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002955, 0.040493, -0.999176,
		-0.078252, 0.996107, 0.040600,
		0.996929, 0.078307, 0.000225,
		36.498516, 34.116005, 28.052868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886345, 34.451332, 27.438726>,  <35.800663, 34.061192, 28.052711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886345, 34.451332, 27.438726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.262074, 34.330631, 27.504000>,  <36.487511, 34.258213, 27.543163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.262074, 34.330631, 27.504000>,  <35.886345, 34.451332, 27.438726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262074, 34.330631, 27.504000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148656, -0.070656, -0.986362,
		0.309163, 0.950766, -0.021512,
		0.939319, -0.301749, 0.163181,
		36.543869, 34.240108, 27.552954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319199, 34.751541, 26.940149>,  <35.886345, 34.451332, 27.438726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319199, 34.751541, 26.940149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.512905, 34.424595, 27.064987>,  <36.629128, 34.228428, 27.139889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.512905, 34.424595, 27.064987>,  <36.319199, 34.751541, 26.940149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512905, 34.424595, 27.064987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168646, -0.262817, -0.949993,
		0.858514, 0.512681, 0.010572,
		0.484265, -0.817365, 0.312093,
		36.658184, 34.179386, 27.158615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027748, 34.692787, 26.604399>,  <36.319199, 34.751541, 26.940149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027748, 34.692787, 26.604399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906025, 34.329918, 26.720627>,  <36.832989, 34.112198, 26.790363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906025, 34.329918, 26.720627>,  <37.027748, 34.692787, 26.604399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906025, 34.329918, 26.720627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101392, -0.334153, -0.937049,
		0.947161, -0.255693, 0.193667,
		-0.304311, -0.907173, 0.290571,
		36.814732, 34.057766, 26.807798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284740, 34.258205, 26.115229>,  <37.027748, 34.692787, 26.604399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284740, 34.258205, 26.115229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010162, 34.021271, 26.283958>,  <36.845417, 33.879108, 26.385197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010162, 34.021271, 26.283958>,  <37.284740, 34.258205, 26.115229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010162, 34.021271, 26.283958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114294, -0.484983, -0.867023,
		0.718147, -0.643372, 0.265212,
		-0.686441, -0.592338, 0.421823,
		36.804230, 33.843571, 26.410505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425495, 33.549839, 25.850641>,  <37.284740, 34.258205, 26.115229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425495, 33.549839, 25.850641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051281, 33.566982, 25.990892>,  <36.826752, 33.577271, 26.075043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051281, 33.566982, 25.990892>,  <37.425495, 33.549839, 25.850641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051281, 33.566982, 25.990892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326895, -0.481188, -0.813386,
		0.133856, -0.875569, 0.464178,
		-0.935533, 0.042861, 0.350629,
		36.770622, 33.579842, 26.096081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126049, 32.936775, 25.662540>,  <37.425495, 33.549839, 25.850641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126049, 32.936775, 25.662540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.826591, 33.194672, 25.724312>,  <36.646919, 33.349407, 25.761374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.826591, 33.194672, 25.724312>,  <37.126049, 32.936775, 25.662540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826591, 33.194672, 25.724312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390688, -0.240847, -0.888457,
		-0.535630, -0.725468, 0.432200,
		-0.748641, 0.644739, 0.154427,
		36.601997, 33.388092, 25.770639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558784, 32.504486, 25.506233>,  <37.126049, 32.936775, 25.662540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558784, 32.504486, 25.506233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449928, 32.888485, 25.479860>,  <36.384613, 33.118885, 25.464037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449928, 32.888485, 25.479860>,  <36.558784, 32.504486, 25.506233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449928, 32.888485, 25.479860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495446, -0.198528, -0.845648,
		-0.824907, -0.197471, 0.529654,
		-0.272142, 0.959996, -0.065931,
		36.368286, 33.176483, 25.460081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856647, 32.475445, 25.445972>,  <36.558784, 32.504486, 25.506233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856647, 32.475445, 25.445972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.955326, 32.816555, 25.261833>,  <36.014534, 33.021221, 25.151350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.955326, 32.816555, 25.261833>,  <35.856647, 32.475445, 25.445972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955326, 32.816555, 25.261833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541474, -0.272666, -0.795273,
		-0.803709, 0.445455, 0.394490,
		0.246695, 0.852774, -0.460346,
		36.029335, 33.072388, 25.123730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205379, 32.679188, 25.123617>,  <35.856647, 32.475445, 25.445972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205379, 32.679188, 25.123617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481701, 32.913334, 24.953844>,  <35.647495, 33.053822, 24.851980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481701, 32.913334, 24.953844>,  <35.205379, 32.679188, 25.123617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481701, 32.913334, 24.953844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511552, -0.019170, -0.859038,
		-0.510985, 0.810545, 0.286200,
		0.690803, 0.585362, -0.424432,
		35.688942, 33.088943, 24.826515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564777, 32.441074, 25.273201>,  <35.205379, 32.679188, 25.123617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564777, 32.441074, 25.273201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.561222, 32.045425, 25.214458>,  <34.559090, 31.808037, 25.179213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.561222, 32.045425, 25.214458>,  <34.564777, 32.441074, 25.273201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561222, 32.045425, 25.214458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206234, -0.141891, 0.968160,
		-0.978462, 0.038889, -0.202729,
		-0.008886, -0.989118, -0.146855,
		34.558556, 31.748690, 25.170403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865883, 32.193699, 25.607281>,  <34.564777, 32.441074, 25.273201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865883, 32.193699, 25.607281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.109985, 31.880037, 25.562212>,  <34.256447, 31.691841, 25.535172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.109985, 31.880037, 25.562212>,  <33.865883, 32.193699, 25.607281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109985, 31.880037, 25.562212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219491, -0.304018, 0.927037,
		-0.761191, -0.540999, -0.357642,
		0.610255, -0.784152, -0.112672,
		34.293060, 31.644793, 25.528410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542217, 31.665691, 26.016449>,  <33.865883, 32.193699, 25.607281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542217, 31.665691, 26.016449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891937, 31.478790, 25.963875>,  <34.101768, 31.366650, 25.932329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891937, 31.478790, 25.963875>,  <33.542217, 31.665691, 26.016449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891937, 31.478790, 25.963875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109663, -0.453938, 0.884259,
		-0.472838, -0.758693, -0.448118,
		0.874299, -0.467253, -0.131439,
		34.154228, 31.338615, 25.924444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441036, 30.922352, 26.127710>,  <33.542217, 31.665691, 26.016449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441036, 30.922352, 26.127710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.814930, 31.047836, 26.194468>,  <34.039265, 31.123127, 26.234522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.814930, 31.047836, 26.194468>,  <33.441036, 30.922352, 26.127710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814930, 31.047836, 26.194468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022829, -0.415685, 0.909222,
		0.354610, -0.853693, -0.381394,
		0.934736, 0.313713, 0.166895,
		34.095352, 31.141951, 26.244535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758232, 30.469917, 26.587074>,  <33.441036, 30.922352, 26.127710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758232, 30.469917, 26.587074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041260, 30.751291, 26.614004>,  <34.211075, 30.920116, 26.630163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041260, 30.751291, 26.614004>,  <33.758232, 30.469917, 26.587074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041260, 30.751291, 26.614004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035493, -0.130533, 0.990808,
		0.705757, -0.698671, -0.117328,
		0.707564, 0.703434, 0.067327,
		34.253529, 30.962322, 26.634203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370914, 30.265614, 26.934212>,  <33.758232, 30.469917, 26.587074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370914, 30.265614, 26.934212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.364594, 30.661335, 26.992222>,  <34.360802, 30.898767, 27.027027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.364594, 30.661335, 26.992222>,  <34.370914, 30.265614, 26.934212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364594, 30.661335, 26.992222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148471, -0.141112, 0.978797,
		0.988790, 0.036999, -0.144653,
		-0.015802, 0.989302, 0.145024,
		34.359852, 30.958126, 27.035728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866707, 30.325745, 27.393373>,  <34.370914, 30.265614, 26.934212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866707, 30.325745, 27.393373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.681267, 30.677168, 27.439342>,  <34.570004, 30.888021, 27.466925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.681267, 30.677168, 27.439342>,  <34.866707, 30.325745, 27.393373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681267, 30.677168, 27.439342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110392, -0.071421, 0.991319,
		0.879139, 0.472266, -0.063875,
		-0.463604, 0.878558, 0.114923,
		34.542187, 30.940735, 27.473820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277699, 30.630018, 27.883703>,  <34.866707, 30.325745, 27.393373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277699, 30.630018, 27.883703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.918438, 30.805471, 27.895838>,  <34.702881, 30.910744, 27.903118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.918438, 30.805471, 27.895838>,  <35.277699, 30.630018, 27.883703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918438, 30.805471, 27.895838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036537, -0.143212, 0.989017,
		0.438161, 0.887181, 0.144653,
		-0.898154, 0.438634, 0.030335,
		34.648991, 30.937061, 27.904938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867199, 30.306036, 27.942099>,  <35.277699, 30.630018, 27.883703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867199, 30.306036, 27.942099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.918232, 29.942053, 28.099934>,  <35.948853, 29.723663, 28.194635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.918232, 29.942053, 28.099934>,  <35.867199, 30.306036, 27.942099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918232, 29.942053, 28.099934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002064, -0.398083, -0.917347,
		0.991826, 0.116220, -0.052666,
		0.127579, -0.909958, 0.394589,
		35.956505, 29.669065, 28.218309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485165, 30.112402, 27.545139>,  <35.867199, 30.306036, 27.942099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485165, 30.112402, 27.545139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.331882, 29.771618, 27.687866>,  <36.239914, 29.567146, 27.773502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.331882, 29.771618, 27.687866>,  <36.485165, 30.112402, 27.545139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331882, 29.771618, 27.687866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001280, -0.386793, -0.922166,
		0.923664, -0.352918, 0.149310,
		-0.383201, -0.851963, 0.356815,
		36.216923, 29.516029, 27.794910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901363, 29.563919, 27.374126>,  <36.485165, 30.112402, 27.545139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901363, 29.563919, 27.374126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539848, 29.399321, 27.421175>,  <36.322937, 29.300562, 27.449404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539848, 29.399321, 27.421175>,  <36.901363, 29.563919, 27.374126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539848, 29.399321, 27.421175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048434, -0.371405, -0.927207,
		0.425227, -0.832303, 0.355603,
		-0.903790, -0.411497, 0.117620,
		36.268711, 29.275871, 27.456461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880703, 28.976843, 26.930323>,  <36.901363, 29.563919, 27.374126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880703, 28.976843, 26.930323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.491203, 28.999922, 27.018393>,  <36.257504, 29.013769, 27.071236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.491203, 28.999922, 27.018393>,  <36.880703, 28.976843, 26.930323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491203, 28.999922, 27.018393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226855, -0.324757, -0.918188,
		0.018529, -0.944036, 0.329321,
		-0.973752, 0.057695, 0.220177,
		36.199078, 29.017231, 27.084446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627033, 28.323250, 26.889843>,  <36.880703, 28.976843, 26.930323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627033, 28.323250, 26.889843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.333534, 28.591782, 26.848017>,  <36.157436, 28.752901, 26.822920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.333534, 28.591782, 26.848017>,  <36.627033, 28.323250, 26.889843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333534, 28.591782, 26.848017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287889, -0.446608, -0.847149,
		-0.615416, -0.591488, 0.520965,
		-0.733746, 0.671329, -0.104567,
		36.113411, 28.793180, 26.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984020, 27.997227, 26.724514>,  <36.627033, 28.323250, 26.889843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984020, 27.997227, 26.724514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924057, 28.367443, 26.585430>,  <35.888077, 28.589573, 26.501980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924057, 28.367443, 26.585430>,  <35.984020, 27.997227, 26.724514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924057, 28.367443, 26.585430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313757, -0.378038, -0.871002,
		-0.937594, -0.021477, 0.347067,
		-0.149911, 0.925541, -0.347707,
		35.879082, 28.645105, 26.481117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315254, 27.994333, 26.428318>,  <35.984020, 27.997227, 26.724514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315254, 27.994333, 26.428318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496552, 28.310860, 26.264175>,  <35.605328, 28.500776, 26.165689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496552, 28.310860, 26.264175>,  <35.315254, 27.994333, 26.428318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496552, 28.310860, 26.264175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412700, -0.221760, -0.883459,
		-0.790097, 0.569773, 0.226066,
		0.453239, 0.791316, -0.410358,
		35.632523, 28.548254, 26.141068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886963, 28.213688, 25.940233>,  <35.315254, 27.994333, 26.428318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886963, 28.213688, 25.940233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.219978, 28.395182, 25.813108>,  <35.419788, 28.504078, 25.736834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.219978, 28.395182, 25.813108>,  <34.886963, 28.213688, 25.940233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219978, 28.395182, 25.813108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248590, -0.206691, -0.946299,
		-0.495059, 0.866834, -0.059283,
		0.832538, 0.453737, -0.317811,
		35.469738, 28.531303, 25.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706238, 28.707432, 25.463181>,  <34.886963, 28.213688, 25.940233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706238, 28.707432, 25.463181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094044, 28.634787, 25.397392>,  <35.326729, 28.591200, 25.357920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094044, 28.634787, 25.397392>,  <34.706238, 28.707432, 25.463181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094044, 28.634787, 25.397392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191967, -0.145884, -0.970498,
		0.152263, 0.972489, -0.176301,
		0.969518, -0.181615, -0.164473,
		35.384899, 28.580303, 25.348051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.458263, 33.616627, 41.191441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327297, 33.609459, 41.569324>,  <36.248718, 33.605160, 41.796055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327297, 33.609459, 41.569324>,  <36.458263, 33.616627, 41.191441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327297, 33.609459, 41.569324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491540, -0.857113, 0.154100,
		0.806961, 0.514817, 0.289442,
		-0.327417, -0.017919, 0.944710,
		36.229073, 33.604084, 41.852737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084316, 33.417385, 40.727325>,  <36.458263, 33.616627, 41.191441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084316, 33.417385, 40.727325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123077, 33.055012, 40.562450>,  <37.146336, 32.837589, 40.463524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123077, 33.055012, 40.562450>,  <37.084316, 33.417385, 40.727325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123077, 33.055012, 40.562450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471127, 0.323051, -0.820778,
		0.876726, 0.273732, -0.395503,
		0.096905, -0.905930, -0.412190,
		37.152149, 32.783234, 40.438793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200298, 33.476433, 40.001289>,  <37.084316, 33.417385, 40.727325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200298, 33.476433, 40.001289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082088, 33.095989, 40.037170>,  <37.011162, 32.867722, 40.058701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082088, 33.095989, 40.037170>,  <37.200298, 33.476433, 40.001289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082088, 33.095989, 40.037170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455711, 0.057821, -0.888248,
		0.839637, -0.303384, -0.450520,
		-0.295529, -0.951113, 0.089707,
		36.993431, 32.810654, 40.064083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352886, 33.077106, 39.295227>,  <37.200298, 33.476433, 40.001289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352886, 33.077106, 39.295227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.086231, 32.840130, 39.476162>,  <36.926239, 32.697945, 39.584724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.086231, 32.840130, 39.476162>,  <37.352886, 33.077106, 39.295227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086231, 32.840130, 39.476162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474604, -0.130575, -0.870461,
		0.574759, -0.794963, -0.194128,
		-0.666636, -0.592439, 0.452342,
		36.886242, 32.662399, 39.611866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367737, 32.456207, 38.916668>,  <37.352886, 33.077106, 39.295227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367737, 32.456207, 38.916668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022064, 32.438412, 39.117153>,  <36.814663, 32.427734, 39.237446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022064, 32.438412, 39.117153>,  <37.367737, 32.456207, 38.916668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022064, 32.438412, 39.117153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474137, -0.261552, -0.840704,
		0.168495, -0.964164, 0.204935,
		-0.864178, -0.044487, 0.501216,
		36.762810, 32.425064, 39.267517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187855, 31.790142, 38.784286>,  <37.367737, 32.456207, 38.916668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187855, 31.790142, 38.784286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843548, 31.964344, 38.889668>,  <36.636963, 32.068867, 38.952896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843548, 31.964344, 38.889668>,  <37.187855, 31.790142, 38.784286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843548, 31.964344, 38.889668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426535, -0.334745, -0.840246,
		-0.277739, -0.835633, 0.473897,
		-0.860772, 0.435503, 0.263455,
		36.585316, 32.094994, 38.968704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691399, 31.321983, 38.575691>,  <37.187855, 31.790142, 38.784286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691399, 31.321983, 38.575691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493954, 31.668839, 38.602264>,  <36.375488, 31.876953, 38.618210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493954, 31.668839, 38.602264>,  <36.691399, 31.321983, 38.575691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493954, 31.668839, 38.602264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621883, -0.298539, -0.723973,
		-0.607953, -0.398675, 0.686623,
		-0.493613, 0.867140, 0.066432,
		36.345871, 31.928980, 38.622192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021534, 31.132174, 38.561295>,  <36.691399, 31.321983, 38.575691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021534, 31.132174, 38.561295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987591, 31.523479, 38.485619>,  <35.967224, 31.758263, 38.440212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987591, 31.523479, 38.485619>,  <36.021534, 31.132174, 38.561295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987591, 31.523479, 38.485619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661976, -0.197268, -0.723100,
		-0.744706, 0.063880, 0.664328,
		-0.084859, 0.978266, -0.189194,
		35.962132, 31.816959, 38.428860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251099, 31.232979, 38.310513>,  <36.021534, 31.132174, 38.561295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251099, 31.232979, 38.310513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472389, 31.537130, 38.174416>,  <35.605164, 31.719622, 38.092758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472389, 31.537130, 38.174416>,  <35.251099, 31.232979, 38.310513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472389, 31.537130, 38.174416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464608, -0.057373, -0.883656,
		-0.691432, 0.646943, 0.321537,
		0.553227, 0.760377, -0.340245,
		35.638359, 31.765244, 38.072342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866016, 31.801971, 37.911697>,  <35.251099, 31.232979, 38.310513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866016, 31.801971, 37.911697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238888, 31.859047, 37.778618>,  <35.462608, 31.893291, 37.698769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238888, 31.859047, 37.778618>,  <34.866016, 31.801971, 37.911697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238888, 31.859047, 37.778618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345731, 0.078448, -0.935049,
		-0.107319, 0.986654, 0.122459,
		0.932176, 0.142687, -0.332698,
		35.518539, 31.901854, 37.678810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789387, 32.210827, 37.355694>,  <34.866016, 31.801971, 37.911697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789387, 32.210827, 37.355694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152382, 32.068375, 37.266579>,  <35.370178, 31.982904, 37.213112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152382, 32.068375, 37.266579>,  <34.789387, 32.210827, 37.355694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152382, 32.068375, 37.266579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248082, -0.026371, -0.968380,
		0.338993, 0.934065, -0.112281,
		0.907491, -0.356129, -0.222785,
		35.424629, 31.961536, 37.199741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076775, 32.485897, 36.752754>,  <34.789387, 32.210827, 37.355694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076775, 32.485897, 36.752754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308933, 32.161259, 36.779404>,  <35.448231, 31.966475, 36.795395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308933, 32.161259, 36.779404>,  <35.076775, 32.485897, 36.752754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308933, 32.161259, 36.779404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071839, -0.132528, -0.988573,
		0.811156, 0.568983, -0.135224,
		0.580401, -0.811600, 0.066626,
		35.483055, 31.917778, 36.799393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740925, 33.008183, 36.239651>,  <35.076775, 32.485897, 36.752754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740925, 33.008183, 36.239651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344639, 32.971420, 36.279736>,  <34.106869, 32.949364, 36.303787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344639, 32.971420, 36.279736>,  <34.740925, 33.008183, 36.239651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344639, 32.971420, 36.279736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026048, 0.595080, 0.803244,
		-0.133456, 0.798394, -0.587160,
		-0.990712, -0.091904, 0.100213,
		34.047424, 32.943848, 36.309799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542610, 33.705582, 36.426552>,  <34.740925, 33.008183, 36.239651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542610, 33.705582, 36.426552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246044, 33.460262, 36.535480>,  <34.068104, 33.313072, 36.600838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246044, 33.460262, 36.535480>,  <34.542610, 33.705582, 36.426552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246044, 33.460262, 36.535480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044457, 0.449823, 0.892010,
		-0.669567, 0.649247, -0.360773,
		-0.741420, -0.613300, 0.272324,
		34.023617, 33.276272, 36.617176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097813, 34.134350, 36.736965>,  <34.542610, 33.705582, 36.426552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097813, 34.134350, 36.736965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004028, 33.776340, 36.888737>,  <33.947758, 33.561535, 36.979797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004028, 33.776340, 36.888737>,  <34.097813, 34.134350, 36.736965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004028, 33.776340, 36.888737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066560, 0.404169, 0.912259,
		-0.969845, 0.188631, -0.154334,
		-0.234457, -0.895023, 0.379426,
		33.933693, 33.507835, 37.002563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511951, 34.255817, 37.085735>,  <34.097813, 34.134350, 36.736965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511951, 34.255817, 37.085735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654919, 33.938179, 37.282372>,  <33.740700, 33.747597, 37.400352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654919, 33.938179, 37.282372>,  <33.511951, 34.255817, 37.085735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654919, 33.938179, 37.282372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264005, 0.418988, 0.868764,
		-0.895854, -0.440295, -0.059891,
		0.357419, -0.794097, 0.491592,
		33.762146, 33.699951, 37.429848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996716, 34.120911, 37.618488>,  <33.511951, 34.255817, 37.085735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996716, 34.120911, 37.618488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334572, 33.942131, 37.736351>,  <33.537285, 33.834866, 37.807068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334572, 33.942131, 37.736351>,  <32.996716, 34.120911, 37.618488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334572, 33.942131, 37.736351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190952, 0.262666, 0.945803,
		-0.500119, -0.855129, 0.136513,
		0.844640, -0.446947, 0.294653,
		33.587963, 33.808048, 37.824745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758610, 33.655308, 38.165180>,  <32.996716, 34.120911, 37.618488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758610, 33.655308, 38.165180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150978, 33.710407, 38.220062>,  <33.386398, 33.743465, 38.252991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150978, 33.710407, 38.220062>,  <32.758610, 33.655308, 38.165180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150978, 33.710407, 38.220062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181196, 0.391908, 0.901985,
		0.070477, -0.909634, 0.409389,
		0.980919, 0.137749, 0.137202,
		33.445255, 33.751732, 38.261223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833195, 33.529110, 38.841480>,  <32.758610, 33.655308, 38.165180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833195, 33.529110, 38.841480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185387, 33.705799, 38.772617>,  <33.396702, 33.811813, 38.731300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185387, 33.705799, 38.772617>,  <32.833195, 33.529110, 38.841480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185387, 33.705799, 38.772617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022104, 0.400987, 0.915817,
		0.473571, -0.802552, 0.362824,
		0.880478, 0.441724, -0.172156,
		33.449532, 33.838314, 38.720970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282204, 33.335434, 39.330296>,  <32.833195, 33.529110, 38.841480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282204, 33.335434, 39.330296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406891, 33.687664, 39.187511>,  <33.481701, 33.899002, 39.101841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406891, 33.687664, 39.187511>,  <33.282204, 33.335434, 39.330296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406891, 33.687664, 39.187511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178676, 0.423303, 0.888194,
		0.933225, -0.213082, 0.289287,
		0.311714, 0.880574, -0.356965,
		33.500404, 33.951836, 39.080421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754230, 33.477032, 39.770668>,  <33.282204, 33.335434, 39.330296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754230, 33.477032, 39.770668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657299, 33.822823, 39.594505>,  <33.599140, 34.030296, 39.488808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657299, 33.822823, 39.594505>,  <33.754230, 33.477032, 39.770668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657299, 33.822823, 39.594505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169950, 0.484737, 0.857990,
		0.955194, 0.133065, -0.264382,
		-0.242324, 0.864479, -0.440404,
		33.584602, 34.082165, 39.462383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162449, 33.896027, 40.111443>,  <33.754230, 33.477032, 39.770668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162449, 33.896027, 40.111443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932327, 34.165783, 39.926304>,  <33.794254, 34.327637, 39.815220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932327, 34.165783, 39.926304>,  <34.162449, 33.896027, 40.111443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932327, 34.165783, 39.926304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139848, 0.638633, 0.756697,
		0.805899, 0.370600, -0.461718,
		-0.575300, 0.674391, -0.462846,
		33.759739, 34.368099, 39.787449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534565, 34.503086, 40.175671>,  <34.162449, 33.896027, 40.111443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534565, 34.503086, 40.175671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146851, 34.574883, 40.108414>,  <33.914223, 34.617962, 40.068058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146851, 34.574883, 40.108414>,  <34.534565, 34.503086, 40.175671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146851, 34.574883, 40.108414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019502, 0.737604, 0.674952,
		0.245171, 0.650941, -0.718448,
		-0.969284, 0.179490, -0.168145,
		33.856064, 34.628731, 40.057972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580097, 35.162971, 39.957920>,  <34.534565, 34.503086, 40.175671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580097, 35.162971, 39.957920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204899, 35.093307, 40.077805>,  <33.979778, 35.051510, 40.149734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204899, 35.093307, 40.077805>,  <34.580097, 35.162971, 39.957920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204899, 35.093307, 40.077805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046304, 0.793917, 0.606260,
		-0.343538, 0.582548, -0.736627,
		-0.937996, -0.174165, 0.299715,
		33.923500, 35.041058, 40.167721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221180, 35.806252, 39.945450>,  <34.580097, 35.162971, 39.957920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221180, 35.806252, 39.945450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.987041, 35.592175, 40.189072>,  <33.846558, 35.463730, 40.335243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.987041, 35.592175, 40.189072>,  <34.221180, 35.806252, 39.945450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987041, 35.592175, 40.189072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139570, 0.806487, 0.574543,
		-0.798681, 0.251301, -0.546769,
		-0.585345, -0.535189, 0.609052,
		33.811440, 35.431618, 40.371788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685055, 36.226254, 40.093029>,  <34.221180, 35.806252, 39.945450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685055, 36.226254, 40.093029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684383, 35.979099, 40.407536>,  <33.683979, 35.830807, 40.596237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684383, 35.979099, 40.407536>,  <33.685055, 36.226254, 40.093029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684383, 35.979099, 40.407536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305768, 0.748925, 0.587893,
		-0.952105, -0.239427, -0.190188,
		-0.001680, -0.617889, 0.786264,
		33.683880, 35.793732, 40.643414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463383, 36.592342, 40.181847>,  <33.685055, 36.226254, 40.093029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463383, 36.592342, 40.181847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786068, 36.794529, 40.059395>,  <34.979679, 36.915840, 39.985924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786068, 36.794529, 40.059395>,  <34.463383, 36.592342, 40.181847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786068, 36.794529, 40.059395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344694, -0.018294, -0.938537,
		-0.479996, 0.862654, 0.159472,
		0.806715, 0.505463, -0.306133,
		35.028084, 36.946167, 39.967556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256195, 37.067322, 39.643669>,  <34.463383, 36.592342, 40.181847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256195, 37.067322, 39.643669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639328, 36.963795, 39.593742>,  <34.869205, 36.901680, 39.563786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639328, 36.963795, 39.593742>,  <34.256195, 37.067322, 39.643669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639328, 36.963795, 39.593742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111533, 0.065455, -0.991603,
		0.264810, 0.963707, 0.033828,
		0.957829, -0.258813, -0.124818,
		34.926678, 36.886150, 39.556297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625881, 37.561623, 39.153664>,  <34.256195, 37.067322, 39.643669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625881, 37.561623, 39.153664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814678, 37.208981, 39.153702>,  <34.927956, 36.997395, 39.153725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814678, 37.208981, 39.153702>,  <34.625881, 37.561623, 39.153664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814678, 37.208981, 39.153702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076390, 0.040788, -0.996243,
		0.878286, 0.470229, 0.086597,
		0.471994, -0.881602, 0.000097,
		34.956276, 36.944500, 39.153732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344727, 37.606308, 38.889042>,  <34.625881, 37.561623, 39.153664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344727, 37.606308, 38.889042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224365, 37.229446, 38.829979>,  <35.152149, 37.003330, 38.794540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224365, 37.229446, 38.829979>,  <35.344727, 37.606308, 38.889042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224365, 37.229446, 38.829979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152977, 0.105142, -0.982621,
		0.941304, -0.318266, 0.112489,
		-0.300907, -0.942153, -0.147658,
		35.134094, 36.946800, 38.785683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795864, 37.333862, 38.410103>,  <35.344727, 37.606308, 38.889042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795864, 37.333862, 38.410103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479366, 37.092091, 38.372993>,  <35.289467, 36.947029, 38.350727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479366, 37.092091, 38.372993>,  <35.795864, 37.333862, 38.410103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479366, 37.092091, 38.372993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193420, -0.103454, -0.975646,
		0.580108, -0.789916, 0.198765,
		-0.791242, -0.604425, -0.092771,
		35.241993, 36.910763, 38.345161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138657, 36.799408, 37.946163>,  <35.795864, 37.333862, 38.410103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138657, 36.799408, 37.946163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742977, 36.742409, 37.932461>,  <35.505569, 36.708210, 37.924240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742977, 36.742409, 37.932461>,  <36.138657, 36.799408, 37.946163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742977, 36.742409, 37.932461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081736, -0.342369, -0.936003,
		0.121647, -0.928697, 0.350320,
		-0.989202, -0.142496, -0.034260,
		35.446217, 36.699661, 37.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078934, 36.139156, 37.767937>,  <36.138657, 36.799408, 37.946163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078934, 36.139156, 37.767937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736294, 36.326687, 37.681740>,  <35.530708, 36.439205, 37.630024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736294, 36.326687, 37.681740>,  <36.078934, 36.139156, 37.767937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736294, 36.326687, 37.681740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057043, -0.329025, -0.942597,
		-0.512820, -0.819720, 0.255099,
		-0.856599, 0.468830, -0.215489,
		35.479313, 36.467335, 37.617092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501747, 35.632191, 37.654343>,  <36.078934, 36.139156, 37.767937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501747, 35.632191, 37.654343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402470, 35.967594, 37.460312>,  <35.342903, 36.168839, 37.343895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402470, 35.967594, 37.460312>,  <35.501747, 35.632191, 37.654343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402470, 35.967594, 37.460312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070903, -0.515125, -0.854177,
		-0.966113, -0.177604, 0.187302,
		-0.248189, 0.838512, -0.485076,
		35.328014, 36.219147, 37.314789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942150, 35.454983, 37.185474>,  <35.501747, 35.632191, 37.654343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942150, 35.454983, 37.185474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068611, 35.813160, 37.060104>,  <35.144489, 36.028065, 36.984882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068611, 35.813160, 37.060104>,  <34.942150, 35.454983, 37.185474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068611, 35.813160, 37.060104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178203, -0.268436, -0.946671,
		-0.931821, 0.355146, 0.074703,
		0.316154, 0.895440, -0.313423,
		35.163456, 36.081791, 36.966076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519138, 35.560482, 36.604351>,  <34.942150, 35.454983, 37.185474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519138, 35.560482, 36.604351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828072, 35.806870, 36.542274>,  <35.013432, 35.954700, 36.505028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828072, 35.806870, 36.542274>,  <34.519138, 35.560482, 36.604351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828072, 35.806870, 36.542274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005356, -0.237986, -0.971254,
		-0.635194, 0.750963, -0.180505,
		0.772334, 0.615969, -0.155189,
		35.059772, 35.991661, 36.495716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370708, 35.952904, 35.993950>,  <34.519138, 35.560482, 36.604351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370708, 35.952904, 35.993950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768738, 35.962444, 36.032433>,  <35.007557, 35.968166, 36.055523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768738, 35.962444, 36.032433>,  <34.370708, 35.952904, 35.993950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768738, 35.962444, 36.032433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099102, -0.221177, -0.970185,
		-0.001858, 0.974942, -0.222451,
		0.995075, 0.023848, 0.096208,
		35.067261, 35.969597, 36.061295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681393, 36.374077, 35.432178>,  <34.370708, 35.952904, 35.993950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681393, 36.374077, 35.432178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970734, 36.128410, 35.558388>,  <35.144341, 35.981010, 35.634113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970734, 36.128410, 35.558388>,  <34.681393, 36.374077, 35.432178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970734, 36.128410, 35.558388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201035, -0.249841, -0.947187,
		0.660562, 0.748585, -0.057255,
		0.723355, -0.614166, 0.315528,
		35.187740, 35.944160, 35.653046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235523, 36.451679, 34.929417>,  <34.681393, 36.374077, 35.432178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235523, 36.451679, 34.929417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356796, 36.123920, 35.124012>,  <35.429562, 35.927265, 35.240768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356796, 36.123920, 35.124012>,  <35.235523, 36.451679, 34.929417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356796, 36.123920, 35.124012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299100, -0.402887, -0.864998,
		0.904775, 0.407762, 0.122932,
		0.303186, -0.819397, 0.486484,
		35.447750, 35.878101, 35.269958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875092, 36.310764, 34.604443>,  <35.235523, 36.451679, 34.929417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875092, 36.310764, 34.604443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778236, 35.958923, 34.768234>,  <35.720123, 35.747818, 34.866508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778236, 35.958923, 34.768234>,  <35.875092, 36.310764, 34.604443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778236, 35.958923, 34.768234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235603, -0.462711, -0.854629,
		0.941202, -0.110462, 0.319275,
		-0.242136, -0.879600, 0.409479,
		35.705597, 35.695042, 34.891079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366215, 35.889763, 34.427853>,  <35.875092, 36.310764, 34.604443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366215, 35.889763, 34.427853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086666, 35.620525, 34.524620>,  <35.918938, 35.458984, 34.582680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086666, 35.620525, 34.524620>,  <36.366215, 35.889763, 34.427853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086666, 35.620525, 34.524620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214766, -0.520106, -0.826659,
		0.682241, -0.525773, 0.508045,
		-0.698872, -0.673092, 0.241919,
		35.877003, 35.418598, 34.597195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730965, 35.226856, 34.177059>,  <36.366215, 35.889763, 34.427853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730965, 35.226856, 34.177059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.342724, 35.131969, 34.193344>,  <36.109779, 35.075039, 34.203117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.342724, 35.131969, 34.193344>,  <36.730965, 35.226856, 34.177059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342724, 35.131969, 34.193344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118539, -0.618363, -0.776901,
		0.209471, -0.749236, 0.628305,
		-0.970603, -0.237217, 0.040715,
		36.051544, 35.060806, 34.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683945, 34.504154, 34.189484>,  <36.730965, 35.226856, 34.177059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683945, 34.504154, 34.189484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339149, 34.659435, 34.059082>,  <36.132271, 34.752605, 33.980843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339149, 34.659435, 34.059082>,  <36.683945, 34.504154, 34.189484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339149, 34.659435, 34.059082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102408, -0.496478, -0.861988,
		-0.496477, -0.776408, 0.388202,
		0.861988, -0.388202, 0.326000,
		36.080555, 34.775894, 33.961281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504448, 34.021103, 33.782913>,  <36.683945, 34.504154, 34.189484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504448, 34.021103, 33.782913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.251549, 34.315899, 33.687321>,  <36.099808, 34.492775, 33.629967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.251549, 34.315899, 33.687321>,  <36.504448, 34.021103, 33.782913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251549, 34.315899, 33.687321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069055, -0.253622, -0.964835,
		-0.771681, -0.626520, 0.109460,
		-0.632250, 0.736986, -0.238980,
		36.061874, 34.536995, 33.615627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863468, 33.731274, 33.443672>,  <36.504448, 34.021103, 33.782913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863468, 33.731274, 33.443672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921448, 34.116936, 33.354767>,  <35.956234, 34.348331, 33.301422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921448, 34.116936, 33.354767>,  <35.863468, 33.731274, 33.443672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921448, 34.116936, 33.354767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179826, -0.246568, -0.952295,
		-0.972961, 0.098062, -0.209119,
		0.144946, 0.964151, -0.222267,
		35.964931, 34.406181, 33.288086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590355, 33.692623, 32.834785>,  <35.863468, 33.731274, 33.443672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590355, 33.692623, 32.834785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774006, 34.047840, 32.825165>,  <35.884197, 34.260971, 32.819393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774006, 34.047840, 32.825165>,  <35.590355, 33.692623, 32.834785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774006, 34.047840, 32.825165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060863, -0.058458, -0.996433,
		-0.886283, 0.456025, -0.080889,
		0.459127, 0.888045, -0.024056,
		35.911743, 34.314255, 32.817947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280128, 33.983273, 32.297935>,  <35.590355, 33.692623, 32.834785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280128, 33.983273, 32.297935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623188, 34.183083, 32.346779>,  <35.829025, 34.302967, 32.376087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623188, 34.183083, 32.346779>,  <35.280128, 33.983273, 32.297935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623188, 34.183083, 32.346779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115346, 0.044536, -0.992326,
		-0.501126, 0.865156, -0.019421,
		0.857652, 0.499521, 0.122110,
		35.880486, 34.332939, 32.383411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323193, 34.516991, 31.832270>,  <35.280128, 33.983273, 32.297935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323193, 34.516991, 31.832270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699608, 34.416607, 31.923018>,  <35.925457, 34.356377, 31.977467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699608, 34.416607, 31.923018>,  <35.323193, 34.516991, 31.832270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699608, 34.416607, 31.923018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208656, -0.097311, -0.973136,
		0.266297, 0.963093, -0.039208,
		0.941036, -0.250962, 0.226869,
		35.981918, 34.341320, 31.991077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607040, 35.127445, 31.663849>,  <35.323193, 34.516991, 31.832270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607040, 35.127445, 31.663849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903603, 34.859123, 31.671257>,  <36.081539, 34.698132, 31.675703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903603, 34.859123, 31.671257>,  <35.607040, 35.127445, 31.663849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903603, 34.859123, 31.671257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213128, 0.209207, -0.954363,
		0.636316, 0.711515, 0.298074,
		0.741403, -0.670805, 0.018522,
		36.126022, 34.657883, 31.676813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058872, 35.392803, 31.181761>,  <35.607040, 35.127445, 31.663849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058872, 35.392803, 31.181761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189342, 35.017525, 31.228062>,  <36.267624, 34.792358, 31.255842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189342, 35.017525, 31.228062>,  <36.058872, 35.392803, 31.181761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189342, 35.017525, 31.228062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311578, -0.008904, -0.950179,
		0.892483, 0.345994, 0.289417,
		0.326180, -0.938194, 0.115751,
		36.287197, 34.736065, 31.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782860, 35.335674, 30.874563>,  <36.058872, 35.392803, 31.181761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782860, 35.335674, 30.874563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.639301, 34.962326, 30.875904>,  <36.553165, 34.738316, 30.876709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.639301, 34.962326, 30.875904>,  <36.782860, 35.335674, 30.874563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639301, 34.962326, 30.875904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220001, -0.088081, -0.971515,
		0.907080, -0.347934, 0.236955,
		-0.358894, -0.933372, 0.003350,
		36.531631, 34.682316, 30.876909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264381, 34.921570, 30.528999>,  <36.782860, 35.335674, 30.874563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264381, 34.921570, 30.528999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913574, 34.730904, 30.504904>,  <36.703091, 34.616505, 30.490446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913574, 34.730904, 30.504904>,  <37.264381, 34.921570, 30.528999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913574, 34.730904, 30.504904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102420, -0.062980, -0.992745,
		0.469416, -0.876824, 0.104055,
		-0.877017, -0.476668, -0.060241,
		36.650471, 34.587902, 30.486832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504402, 34.443035, 30.170242>,  <37.264381, 34.921570, 30.528999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504402, 34.443035, 30.170242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110493, 34.413506, 30.107288>,  <36.874146, 34.395786, 30.069517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110493, 34.413506, 30.107288>,  <37.504402, 34.443035, 30.170242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110493, 34.413506, 30.107288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171909, -0.279060, -0.944761,
		0.025830, -0.957431, 0.287503,
		-0.984774, -0.073828, -0.157383,
		36.815060, 34.391357, 30.060074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533375, 33.950424, 29.748587>,  <37.504402, 34.443035, 30.170242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533375, 33.950424, 29.748587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179008, 34.127071, 29.691822>,  <36.966389, 34.233059, 29.657764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179008, 34.127071, 29.691822>,  <37.533375, 33.950424, 29.748587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179008, 34.127071, 29.691822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059116, -0.195951, -0.978830,
		-0.460073, -0.875545, 0.147489,
		-0.885911, 0.441615, -0.141911,
		36.913235, 34.259556, 29.649248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778862, 33.314533, 29.684666>,  <37.533375, 33.950424, 29.748587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778862, 33.314533, 29.684666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100986, 33.546993, 29.637796>,  <38.294262, 33.686470, 29.609674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100986, 33.546993, 29.637796>,  <37.778862, 33.314533, 29.684666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100986, 33.546993, 29.637796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093136, 0.319212, 0.943096,
		0.585487, -0.748575, 0.311192,
		0.805314, 0.581154, -0.117175,
		38.342579, 33.721340, 29.602644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230469, 33.101772, 30.229563>,  <37.778862, 33.314533, 29.684666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230469, 33.101772, 30.229563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.377750, 33.453716, 30.109388>,  <38.466122, 33.664883, 30.037283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.377750, 33.453716, 30.109388>,  <38.230469, 33.101772, 30.229563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377750, 33.453716, 30.109388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153552, 0.261154, 0.953006,
		0.916977, -0.397035, -0.038946,
		0.368206, 0.879865, -0.300438,
		38.488213, 33.717674, 30.019257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716644, 33.115841, 30.664026>,  <38.230469, 33.101772, 30.229563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716644, 33.115841, 30.664026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.720016, 33.494530, 30.535246>,  <38.722038, 33.721741, 30.457977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.720016, 33.494530, 30.535246>,  <38.716644, 33.115841, 30.664026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720016, 33.494530, 30.535246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408313, 0.290639, 0.865338,
		0.912803, -0.138752, -0.384107,
		0.008431, 0.946719, -0.321951,
		38.722546, 33.778545, 30.438662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339828, 33.373188, 30.749035>,  <38.716644, 33.115841, 30.664026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339828, 33.373188, 30.749035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094597, 33.688370, 30.771864>,  <38.947456, 33.877480, 30.785563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094597, 33.688370, 30.771864>,  <39.339828, 33.373188, 30.749035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094597, 33.688370, 30.771864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305375, 0.169733, 0.936983,
		0.728615, 0.591874, -0.344683,
		-0.613080, 0.787957, 0.057074,
		38.910671, 33.924755, 30.788986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741646, 33.958088, 30.996977>,  <39.339828, 33.373188, 30.749035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741646, 33.958088, 30.996977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363876, 34.059166, 31.081085>,  <39.137215, 34.119812, 31.131550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363876, 34.059166, 31.081085>,  <39.741646, 33.958088, 30.996977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363876, 34.059166, 31.081085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297743, 0.386361, 0.872968,
		0.139357, 0.887056, -0.440127,
		-0.944420, 0.252699, 0.210273,
		39.080551, 34.134975, 31.144167>
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
