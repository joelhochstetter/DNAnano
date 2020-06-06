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
	<24.405893, 34.824360, 35.486805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251863, 34.959057, 35.143101>,  <24.159445, 35.039875, 34.936878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251863, 34.959057, 35.143101>,  <24.405893, 34.824360, 35.486805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251863, 34.959057, 35.143101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870622, 0.441421, -0.217176,
		0.306162, -0.831717, -0.463153,
		-0.385075, 0.336740, -0.859258,
		24.136341, 35.060078, 34.885323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840540, 35.172283, 36.043678>,  <24.405893, 34.824360, 35.486805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840540, 35.172283, 36.043678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031010, 34.973042, 36.333549>,  <25.145292, 34.853497, 36.507473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031010, 34.973042, 36.333549>,  <24.840540, 35.172283, 36.043678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031010, 34.973042, 36.333549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239897, 0.866426, 0.437898,
		-0.845995, -0.034668, 0.532062,
		0.476174, -0.498100, 0.724676,
		25.173862, 34.823612, 36.550953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475227, 35.158436, 36.821587>,  <24.840540, 35.172283, 36.043678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475227, 35.158436, 36.821587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869720, 35.148949, 36.756130>,  <25.106417, 35.143257, 36.716854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869720, 35.148949, 36.756130>,  <24.475227, 35.158436, 36.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869720, 35.148949, 36.756130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069549, 0.957354, 0.280420,
		0.150016, -0.287941, 0.945825,
		0.986234, -0.023714, -0.163645,
		25.165590, 35.141834, 36.707035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860306, 35.304882, 37.431126>,  <24.475227, 35.158436, 36.821587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860306, 35.304882, 37.431126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099604, 35.409264, 37.128075>,  <25.243183, 35.471893, 36.946243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099604, 35.409264, 37.128075>,  <24.860306, 35.304882, 37.431126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099604, 35.409264, 37.128075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095031, 0.915708, 0.390445,
		0.795658, -0.305580, 0.523019,
		0.598245, 0.260958, -0.757631,
		25.279078, 35.487553, 36.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425491, 35.679157, 37.816616>,  <24.860306, 35.304882, 37.431126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425491, 35.679157, 37.816616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440346, 35.796749, 37.434578>,  <25.449259, 35.867302, 37.205357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440346, 35.796749, 37.434578>,  <25.425491, 35.679157, 37.816616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440346, 35.796749, 37.434578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127077, 0.946602, 0.296304,
		0.991197, -0.132373, -0.002205,
		0.037136, 0.293976, -0.955091,
		25.451487, 35.884941, 37.148052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068350, 35.974545, 37.659046>,  <25.425491, 35.679157, 37.816616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068350, 35.974545, 37.659046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733616, 36.130424, 37.505245>,  <25.532776, 36.223953, 37.412964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733616, 36.130424, 37.505245>,  <26.068350, 35.974545, 37.659046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733616, 36.130424, 37.505245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276145, 0.906920, 0.318183,
		0.472705, 0.160090, -0.866557,
		-0.836836, 0.389702, -0.384498,
		25.482565, 36.247334, 37.389896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202196, 36.449074, 37.068928>,  <26.068350, 35.974545, 37.659046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202196, 36.449074, 37.068928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872219, 36.522591, 37.282726>,  <25.674232, 36.566700, 37.411007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872219, 36.522591, 37.282726>,  <26.202196, 36.449074, 37.068928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872219, 36.522591, 37.282726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473826, 0.740439, 0.476696,
		-0.308149, 0.646507, -0.697906,
		-0.824944, 0.183793, 0.534497,
		25.624735, 36.577728, 37.443077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050720, 37.204765, 37.003204>,  <26.202196, 36.449074, 37.068928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050720, 37.204765, 37.003204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885017, 37.077656, 37.344357>,  <25.785597, 37.001389, 37.549049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885017, 37.077656, 37.344357>,  <26.050720, 37.204765, 37.003204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885017, 37.077656, 37.344357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380388, 0.790860, 0.479422,
		-0.826860, 0.523031, -0.206740,
		-0.414255, -0.317774, 0.852885,
		25.760740, 36.982323, 37.600224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912525, 37.846161, 37.410175>,  <26.050720, 37.204765, 37.003204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912525, 37.846161, 37.410175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938850, 37.569225, 37.697601>,  <25.954645, 37.403065, 37.870056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938850, 37.569225, 37.697601>,  <25.912525, 37.846161, 37.410175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938850, 37.569225, 37.697601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428312, 0.670012, 0.606327,
		-0.901231, 0.267867, 0.340631,
		0.065811, -0.692337, 0.718567,
		25.958593, 37.361523, 37.913170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594278, 38.190750, 38.061260>,  <25.912525, 37.846161, 37.410175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594278, 38.190750, 38.061260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845053, 37.892395, 38.151237>,  <25.995518, 37.713383, 38.205223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845053, 37.892395, 38.151237>,  <25.594278, 38.190750, 38.061260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845053, 37.892395, 38.151237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473256, 0.593977, 0.650554,
		-0.618853, -0.301400, 0.725382,
		0.626937, -0.745888, 0.224945,
		26.033134, 37.668629, 38.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766485, 38.409874, 38.618885>,  <25.594278, 38.190750, 38.061260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766485, 38.409874, 38.618885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041111, 38.121025, 38.585022>,  <26.205887, 37.947716, 38.564705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041111, 38.121025, 38.585022>,  <25.766485, 38.409874, 38.618885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041111, 38.121025, 38.585022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603755, 0.501366, 0.619768,
		-0.405107, -0.476620, 0.780206,
		0.686562, -0.722126, -0.084654,
		26.247080, 37.904388, 38.559628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017441, 38.273273, 39.370289>,  <25.766485, 38.409874, 38.618885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017441, 38.273273, 39.370289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259722, 38.198421, 39.060940>,  <26.405090, 38.153511, 38.875332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259722, 38.198421, 39.060940>,  <26.017441, 38.273273, 39.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259722, 38.198421, 39.060940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691374, 0.604883, 0.395118,
		0.393861, -0.774014, 0.495758,
		0.605703, -0.187133, -0.773373,
		26.441433, 38.142281, 38.828926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579367, 38.797192, 39.671543>,  <26.017441, 38.273273, 39.370289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579367, 38.797192, 39.671543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944532, 38.642857, 39.618301>,  <27.163631, 38.550255, 39.586357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944532, 38.642857, 39.618301>,  <26.579367, 38.797192, 39.671543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944532, 38.642857, 39.618301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366589, -0.631737, -0.683023,
		0.179451, 0.672336, -0.718166,
		0.912913, -0.385841, -0.133105,
		27.218407, 38.527103, 39.578369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931717, 38.756939, 38.917824>,  <26.579367, 38.797192, 39.671543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931717, 38.756939, 38.917824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073811, 38.461033, 39.146404>,  <27.159067, 38.283489, 39.283554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073811, 38.461033, 39.146404>,  <26.931717, 38.756939, 38.917824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073811, 38.461033, 39.146404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356170, -0.672327, -0.648937,
		0.864263, 0.026991, -0.502316,
		0.355236, -0.739762, 0.571454,
		27.180382, 38.239105, 39.317841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547943, 38.337311, 38.630424>,  <26.931717, 38.756939, 38.917824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547943, 38.337311, 38.630424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247389, 38.187328, 38.847614>,  <27.067057, 38.097340, 38.977928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247389, 38.187328, 38.847614>,  <27.547943, 38.337311, 38.630424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247389, 38.187328, 38.847614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305204, -0.532072, -0.789778,
		0.585037, -0.759148, 0.285353,
		-0.751387, -0.374959, 0.542977,
		27.021973, 38.074841, 39.010506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440149, 37.775158, 38.262825>,  <27.547943, 38.337311, 38.630424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440149, 37.775158, 38.262825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116299, 37.788589, 38.497219>,  <26.921988, 37.796650, 38.637856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116299, 37.788589, 38.497219>,  <27.440149, 37.775158, 38.262825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116299, 37.788589, 38.497219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472626, -0.629291, -0.616942,
		0.348036, -0.776444, 0.525363,
		-0.809627, 0.033582, 0.585983,
		26.873411, 37.798664, 38.673016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185011, 37.040977, 38.355484>,  <27.440149, 37.775158, 38.262825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185011, 37.040977, 38.355484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890055, 37.300301, 38.431332>,  <26.713081, 37.455894, 38.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890055, 37.300301, 38.431332>,  <27.185011, 37.040977, 38.355484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890055, 37.300301, 38.431332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674572, -0.692337, -0.256168,
		-0.034792, -0.316810, 0.947851,
		-0.737389, 0.648306, 0.189623,
		26.668839, 37.494793, 38.488220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647886, 36.547943, 38.591995>,  <27.185011, 37.040977, 38.355484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647886, 36.547943, 38.591995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480778, 36.893822, 38.480450>,  <26.380512, 37.101349, 38.413521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480778, 36.893822, 38.480450>,  <26.647886, 36.547943, 38.591995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480778, 36.893822, 38.480450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719702, -0.502292, -0.479303,
		-0.554526, 0.000465, 0.832166,
		-0.417768, 0.864698, -0.278868,
		26.355448, 37.153233, 38.396790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022633, 36.440197, 38.861202>,  <26.647886, 36.547943, 38.591995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022633, 36.440197, 38.861202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992275, 36.713566, 38.570774>,  <25.974060, 36.877586, 38.396519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992275, 36.713566, 38.570774>,  <26.022633, 36.440197, 38.861202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992275, 36.713566, 38.570774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822647, -0.454400, -0.341720,
		-0.563465, 0.571364, 0.596700,
		-0.075894, 0.683421, -0.726069,
		25.969507, 36.918591, 38.352955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297886, 36.616753, 38.760429>,  <26.022633, 36.440197, 38.861202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297886, 36.616753, 38.760429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450144, 36.723339, 38.406231>,  <25.541498, 36.787289, 38.193710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450144, 36.723339, 38.406231>,  <25.297886, 36.616753, 38.760429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450144, 36.723339, 38.406231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684322, -0.562876, -0.463546,
		-0.621943, 0.782412, -0.031910,
		0.380645, 0.266462, -0.885498,
		25.564337, 36.803276, 38.140583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793348, 36.750229, 38.307434>,  <25.297886, 36.616753, 38.760429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793348, 36.750229, 38.307434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091118, 36.635933, 38.066040>,  <25.269779, 36.567356, 37.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091118, 36.635933, 38.066040>,  <24.793348, 36.750229, 38.307434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091118, 36.635933, 38.066040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608256, -0.663018, -0.436384,
		-0.275428, 0.691925, -0.667367,
		0.744422, -0.285737, -0.603482,
		25.314444, 36.550213, 37.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598444, 36.639931, 37.558743>,  <24.793348, 36.750229, 38.307434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598444, 36.639931, 37.558743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899578, 36.391678, 37.646427>,  <25.080257, 36.242725, 37.699036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899578, 36.391678, 37.646427>,  <24.598444, 36.639931, 37.558743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899578, 36.391678, 37.646427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544321, -0.774280, -0.322808,
		0.370076, 0.123700, -0.920729,
		0.752834, -0.620636, 0.219210,
		25.125427, 36.205486, 37.712189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873287, 36.305679, 36.898708>,  <24.598444, 36.639931, 37.558743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873287, 36.305679, 36.898708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886909, 36.100464, 37.241783>,  <24.895082, 35.977333, 37.447628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886909, 36.100464, 37.241783>,  <24.873287, 36.305679, 36.898708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886909, 36.100464, 37.241783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477212, -0.762384, -0.437080,
		0.878128, -0.394414, -0.270792,
		0.034057, -0.513037, 0.857690,
		24.897127, 35.946552, 37.499092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770279, 35.949646, 36.210613>,  <24.873287, 36.305679, 36.898708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770279, 35.949646, 36.210613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.449194, 35.900787, 35.977123>,  <24.256542, 35.871471, 35.837029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.449194, 35.900787, 35.977123>,  <24.770279, 35.949646, 36.210613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.449194, 35.900787, 35.977123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335542, -0.901678, -0.272743,
		-0.493014, -0.414798, 0.764775,
		-0.802714, -0.122148, -0.583721,
		24.208380, 35.864143, 35.802006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299023, 36.362659, 35.926910>,  <24.770279, 35.949646, 36.210613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299023, 36.362659, 35.926910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378838, 36.218079, 36.291225>,  <25.426727, 36.131329, 36.509815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378838, 36.218079, 36.291225>,  <25.299023, 36.362659, 35.926910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378838, 36.218079, 36.291225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111813, -0.915009, -0.387628,
		0.973490, 0.179184, -0.142164,
		0.199538, -0.361457, 0.910787,
		25.438700, 36.109642, 36.564461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929562, 35.936131, 35.952965>,  <25.299023, 36.362659, 35.926910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929562, 35.936131, 35.952965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728348, 35.793453, 36.267857>,  <25.607620, 35.707848, 36.456791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728348, 35.793453, 36.267857>,  <25.929562, 35.936131, 35.952965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728348, 35.793453, 36.267857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263496, -0.930792, -0.253369,
		0.823120, 0.079978, 0.562208,
		-0.503035, -0.356692, 0.787227,
		25.577436, 35.686447, 36.504025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325235, 35.420853, 35.941891>,  <25.929562, 35.936131, 35.952965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325235, 35.420853, 35.941891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985153, 35.349384, 36.139973>,  <25.781103, 35.306503, 36.258820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985153, 35.349384, 36.139973>,  <26.325235, 35.420853, 35.941891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985153, 35.349384, 36.139973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047223, -0.910972, -0.409757,
		0.524326, -0.371763, 0.766077,
		-0.850207, -0.178670, 0.495202,
		25.730091, 35.295784, 36.288532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285526, 34.937283, 36.547836>,  <26.325235, 35.420853, 35.941891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285526, 34.937283, 36.547836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933247, 34.913254, 36.359898>,  <25.721878, 34.898838, 36.247135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933247, 34.913254, 36.359898>,  <26.285526, 34.937283, 36.547836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933247, 34.913254, 36.359898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171269, -0.965199, -0.197633,
		-0.441628, -0.254526, 0.860338,
		-0.880699, -0.060069, -0.469851,
		25.669037, 34.895233, 36.218941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264025, 34.245033, 36.222218>,  <26.285526, 34.937283, 36.547836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264025, 34.245033, 36.222218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580854, 34.001850, 36.200298>,  <26.770952, 33.855938, 36.187145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580854, 34.001850, 36.200298>,  <26.264025, 34.245033, 36.222218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580854, 34.001850, 36.200298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251714, -0.243513, -0.936665,
		0.556111, 0.755702, -0.345912,
		0.792073, -0.607961, -0.054800,
		26.818476, 33.819462, 36.183857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593098, 34.416061, 35.681469>,  <26.264025, 34.245033, 36.222218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593098, 34.416061, 35.681469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622372, 34.029388, 35.779587>,  <26.639936, 33.797386, 35.838455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622372, 34.029388, 35.779587>,  <26.593098, 34.416061, 35.681469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622372, 34.029388, 35.779587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408238, -0.253438, -0.876989,
		0.909937, -0.035955, -0.413185,
		0.073185, -0.966683, 0.245291,
		26.644327, 33.739384, 35.853172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881058, 34.119118, 35.218620>,  <26.593098, 34.416061, 35.681469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881058, 34.119118, 35.218620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700981, 33.794415, 35.367416>,  <26.592936, 33.599594, 35.456696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700981, 33.794415, 35.367416>,  <26.881058, 34.119118, 35.218620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700981, 33.794415, 35.367416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421116, -0.174340, -0.890094,
		0.787392, -0.557365, -0.263357,
		-0.450194, -0.811757, 0.371989,
		26.565924, 33.550888, 35.479012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022146, 33.667576, 34.751213>,  <26.881058, 34.119118, 35.218620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022146, 33.667576, 34.751213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747623, 33.473434, 34.967884>,  <26.582911, 33.356949, 35.097885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747623, 33.473434, 34.967884>,  <27.022146, 33.667576, 34.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747623, 33.473434, 34.967884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491733, -0.239109, -0.837272,
		0.535896, -0.840985, -0.074564,
		-0.686305, -0.485356, 0.541678,
		26.541733, 33.327827, 35.130386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982771, 32.899372, 34.533035>,  <27.022146, 33.667576, 34.751213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982771, 32.899372, 34.533035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634212, 33.020744, 34.687225>,  <26.425077, 33.093567, 34.779739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634212, 33.020744, 34.687225>,  <26.982771, 32.899372, 34.533035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634212, 33.020744, 34.687225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462920, -0.248484, -0.850859,
		-0.162387, -0.919885, 0.356991,
		-0.871399, 0.303427, 0.385482,
		26.372793, 33.111774, 34.802868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529263, 32.580982, 34.147366>,  <26.982771, 32.899372, 34.533035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529263, 32.580982, 34.147366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308182, 32.875763, 34.303020>,  <26.175533, 33.052631, 34.396412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308182, 32.875763, 34.303020>,  <26.529263, 32.580982, 34.147366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308182, 32.875763, 34.303020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496796, 0.083543, -0.863837,
		-0.669113, -0.670766, 0.319939,
		-0.552703, 0.736949, 0.389134,
		26.142370, 33.096848, 34.419762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771650, 32.555412, 34.246597>,  <26.529263, 32.580982, 34.147366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771650, 32.555412, 34.246597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601091, 32.835644, 34.475464>,  <25.498756, 33.003784, 34.612785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601091, 32.835644, 34.475464>,  <25.771650, 32.555412, 34.246597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601091, 32.835644, 34.475464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569357, 0.283642, -0.771608,
		-0.702863, -0.654778, 0.277936,
		-0.426398, 0.700580, 0.572165,
		25.473171, 33.045818, 34.647114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166487, 32.528229, 34.054180>,  <25.771650, 32.555412, 34.246597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166487, 32.528229, 34.054180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227186, 32.902596, 34.181316>,  <25.263605, 33.127216, 34.257599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227186, 32.902596, 34.181316>,  <25.166487, 32.528229, 34.054180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227186, 32.902596, 34.181316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391055, 0.352177, -0.850322,
		-0.907772, 0.004740, 0.419438,
		0.151747, 0.935921, 0.317843,
		25.272711, 33.183372, 34.276669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508965, 32.984623, 34.003757>,  <25.166487, 32.528229, 34.054180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508965, 32.984623, 34.003757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828722, 33.224762, 33.994335>,  <25.020576, 33.368847, 33.988682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828722, 33.224762, 33.994335>,  <24.508965, 32.984623, 34.003757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828722, 33.224762, 33.994335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306185, 0.373344, -0.875708,
		-0.516936, 0.707246, 0.482266,
		0.799392, 0.600348, -0.023552,
		25.068541, 33.404865, 33.987270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314703, 33.719681, 34.070621>,  <24.508965, 32.984623, 34.003757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314703, 33.719681, 34.070621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651308, 33.693359, 33.856136>,  <24.853271, 33.677567, 33.727444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651308, 33.693359, 33.856136>,  <24.314703, 33.719681, 34.070621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651308, 33.693359, 33.856136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423429, 0.536067, -0.730302,
		0.335501, 0.841607, 0.423245,
		0.841515, -0.065803, -0.536212,
		24.903763, 33.673618, 33.695274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565260, 34.420139, 33.911839>,  <24.314703, 33.719681, 34.070621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565260, 34.420139, 33.911839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664072, 34.143204, 33.640652>,  <24.723360, 33.977043, 33.477940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664072, 34.143204, 33.640652>,  <24.565260, 34.420139, 33.911839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664072, 34.143204, 33.640652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459397, 0.532352, -0.711024,
		0.853188, 0.487103, -0.186550,
		0.247032, -0.692337, -0.677971,
		24.738182, 33.935501, 33.437260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674417, 34.726700, 33.315411>,  <24.565260, 34.420139, 33.911839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674417, 34.726700, 33.315411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586733, 34.354393, 33.198368>,  <24.534122, 34.131008, 33.128143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586733, 34.354393, 33.198368>,  <24.674417, 34.726700, 33.315411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586733, 34.354393, 33.198368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561743, 0.365608, -0.742142,
		0.797741, 0.001686, -0.602997,
		-0.219210, -0.930767, -0.292608,
		24.520969, 34.075161, 33.110584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608454, 34.515610, 32.570454>,  <24.674417, 34.726700, 33.315411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608454, 34.515610, 32.570454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007294, 34.486546, 32.579491>,  <25.246597, 34.469109, 32.584911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007294, 34.486546, 32.579491>,  <24.608454, 34.515610, 32.570454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007294, 34.486546, 32.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061131, -0.588137, 0.806448,
		-0.045307, -0.805491, -0.590874,
		0.997101, -0.072659, 0.022594,
		25.306423, 34.464748, 32.586269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954256, 33.726967, 32.539207>,  <24.608454, 34.515610, 32.570454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954256, 33.726967, 32.539207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171909, 33.999004, 32.735737>,  <25.302502, 34.162228, 32.853653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171909, 33.999004, 32.735737>,  <24.954256, 33.726967, 32.539207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171909, 33.999004, 32.735737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068123, -0.547856, 0.833795,
		0.836229, -0.487165, -0.251776,
		0.544132, 0.680092, 0.491320,
		25.335150, 34.203033, 32.883133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511097, 33.297485, 32.793678>,  <24.954256, 33.726967, 32.539207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511097, 33.297485, 32.793678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396749, 33.623989, 32.994480>,  <25.328142, 33.819889, 33.114960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396749, 33.623989, 32.994480>,  <25.511097, 33.297485, 32.793678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396749, 33.623989, 32.994480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031367, -0.515614, 0.856247,
		0.957756, 0.260519, 0.121794,
		-0.285867, 0.816255, 0.502004,
		25.310989, 33.868866, 33.145081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071621, 33.577663, 33.206753>,  <25.511097, 33.297485, 32.793678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071621, 33.577663, 33.206753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704723, 33.632252, 33.356438>,  <25.484585, 33.665005, 33.446251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704723, 33.632252, 33.356438>,  <26.071621, 33.577663, 33.206753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704723, 33.632252, 33.356438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287653, -0.422914, 0.859302,
		0.275529, 0.895835, 0.348660,
		-0.917246, 0.136470, 0.374215,
		25.429550, 33.673191, 33.468700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201529, 34.015690, 33.783684>,  <26.071621, 33.577663, 33.206753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201529, 34.015690, 33.783684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858576, 33.820301, 33.848549>,  <25.652805, 33.703068, 33.887466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858576, 33.820301, 33.848549>,  <26.201529, 34.015690, 33.783684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858576, 33.820301, 33.848549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251826, -0.123349, 0.959879,
		-0.448869, 0.863819, 0.228766,
		-0.857380, -0.488469, 0.162164,
		25.601362, 33.673759, 33.897198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893841, 34.300186, 34.348076>,  <26.201529, 34.015690, 33.783684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893841, 34.300186, 34.348076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778322, 33.919979, 34.302258>,  <25.709011, 33.691856, 34.274765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778322, 33.919979, 34.302258>,  <25.893841, 34.300186, 34.348076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778322, 33.919979, 34.302258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331350, -0.211486, 0.919500,
		-0.898223, 0.227591, 0.376029,
		-0.288795, -0.950513, -0.114549,
		25.691683, 33.634827, 34.267891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460598, 34.090340, 34.867649>,  <25.893841, 34.300186, 34.348076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460598, 34.090340, 34.867649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644043, 33.761314, 34.733150>,  <25.754110, 33.563900, 34.652451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644043, 33.761314, 34.733150>,  <25.460598, 34.090340, 34.867649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644043, 33.761314, 34.733150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411039, -0.139111, 0.900941,
		-0.787859, -0.551392, 0.274309,
		0.458612, -0.822566, -0.336243,
		25.781628, 33.514545, 34.632278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245537, 33.583778, 35.329308>,  <25.460598, 34.090340, 34.867649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245537, 33.583778, 35.329308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586958, 33.456184, 35.164532>,  <25.791811, 33.379627, 35.065666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586958, 33.456184, 35.164532>,  <25.245537, 33.583778, 35.329308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586958, 33.456184, 35.164532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419525, -0.048036, 0.906472,
		-0.308940, -0.946541, 0.092821,
		0.853554, -0.318986, -0.411938,
		25.843023, 33.360489, 35.040951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438959, 32.944153, 35.647137>,  <25.245537, 33.583778, 35.329308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438959, 32.944153, 35.647137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787130, 33.081409, 35.505932>,  <25.996033, 33.163761, 35.421211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787130, 33.081409, 35.505932>,  <25.438959, 32.944153, 35.647137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787130, 33.081409, 35.505932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431115, -0.185082, 0.883111,
		0.237694, -0.920870, -0.309032,
		0.870426, 0.343139, -0.353008,
		26.048258, 33.184353, 35.400028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104170, 32.500648, 35.851334>,  <25.438959, 32.944153, 35.647137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104170, 32.500648, 35.851334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203503, 32.880951, 35.777149>,  <26.263102, 33.109131, 35.732639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203503, 32.880951, 35.777149>,  <26.104170, 32.500648, 35.851334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203503, 32.880951, 35.777149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419203, 0.067119, 0.905408,
		0.873270, -0.302585, -0.381892,
		0.248330, 0.950756, -0.185458,
		26.278002, 33.166180, 35.721512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695761, 32.488686, 36.210869>,  <26.104170, 32.500648, 35.851334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695761, 32.488686, 36.210869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620626, 32.871902, 36.124275>,  <26.575546, 33.101833, 36.072319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620626, 32.871902, 36.124275>,  <26.695761, 32.488686, 36.210869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620626, 32.871902, 36.124275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554959, 0.285372, 0.781398,
		0.810393, 0.026639, -0.585280,
		-0.187838, 0.958047, -0.216480,
		26.564276, 33.159317, 36.059330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332043, 32.829651, 36.191181>,  <26.695761, 32.488686, 36.210869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332043, 32.829651, 36.191181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063028, 33.123894, 36.223621>,  <26.901619, 33.300438, 36.243084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063028, 33.123894, 36.223621>,  <27.332043, 32.829651, 36.191181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063028, 33.123894, 36.223621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559668, 0.433840, 0.706085,
		0.484216, 0.520257, -0.703468,
		-0.672538, 0.735606, 0.081099,
		26.861267, 33.344574, 36.247952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698460, 33.475502, 36.331711>,  <27.332043, 32.829651, 36.191181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698460, 33.475502, 36.331711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336073, 33.610603, 36.433807>,  <27.118641, 33.691662, 36.495068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336073, 33.610603, 36.433807>,  <27.698460, 33.475502, 36.331711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336073, 33.610603, 36.433807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421849, 0.669491, 0.611413,
		0.035621, 0.661594, -0.749016,
		-0.905966, 0.337751, 0.255244,
		27.064283, 33.711929, 36.510380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675478, 34.220829, 36.446918>,  <27.698460, 33.475502, 36.331711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675478, 34.220829, 36.446918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378918, 34.093674, 36.683315>,  <27.200981, 34.017380, 36.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378918, 34.093674, 36.683315>,  <27.675478, 34.220829, 36.446918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378918, 34.093674, 36.683315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233078, 0.703867, 0.671004,
		-0.629283, 0.635231, -0.447756,
		-0.741403, -0.317889, 0.590989,
		27.156496, 33.998306, 36.860611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112791, 34.676071, 36.599754>,  <27.675478, 34.220829, 36.446918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112791, 34.676071, 36.599754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147009, 34.441021, 36.921593>,  <27.167540, 34.299992, 37.114697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147009, 34.441021, 36.921593>,  <27.112791, 34.676071, 36.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147009, 34.441021, 36.921593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345210, 0.775016, 0.529321,
		-0.934619, 0.232475, 0.269152,
		0.085544, -0.587627, 0.804597,
		27.172672, 34.264732, 37.162971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011354, 35.380638, 36.987980>,  <27.112791, 34.676071, 36.599754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011354, 35.380638, 36.987980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227724, 35.314579, 36.658100>,  <27.357546, 35.274944, 36.460171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227724, 35.314579, 36.658100>,  <27.011354, 35.380638, 36.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227724, 35.314579, 36.658100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656264, 0.696139, 0.291045,
		0.526040, -0.698654, 0.484937,
		0.540924, -0.165146, -0.824699,
		27.390001, 35.265034, 36.410690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535013, 34.876564, 37.139786>,  <27.011354, 35.380638, 36.987980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535013, 34.876564, 37.139786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598301, 35.185905, 36.894222>,  <27.636272, 35.371510, 36.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598301, 35.185905, 36.894222>,  <27.535013, 34.876564, 37.139786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598301, 35.185905, 36.894222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488139, 0.479189, 0.729450,
		0.858305, -0.415086, -0.301690,
		0.158218, 0.773357, -0.613910,
		27.645767, 35.417912, 36.710049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284048, 35.162407, 37.116486>,  <27.535013, 34.876564, 37.139786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284048, 35.162407, 37.116486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025398, 35.459400, 37.046513>,  <27.870209, 35.637596, 37.004528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025398, 35.459400, 37.046513>,  <28.284048, 35.162407, 37.116486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025398, 35.459400, 37.046513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372919, 0.507749, 0.776610,
		0.665440, 0.436938, -0.605207,
		-0.646623, 0.742480, -0.174934,
		27.831411, 35.682144, 36.994034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683727, 34.594406, 37.605644>,  <28.284048, 35.162407, 37.116486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683727, 34.594406, 37.605644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929798, 34.282890, 37.556580>,  <29.077440, 34.095982, 37.527142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929798, 34.282890, 37.556580>,  <28.683727, 34.594406, 37.605644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929798, 34.282890, 37.556580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781187, 0.623116, -0.038378,
		0.106320, -0.072212, 0.991706,
		0.615177, -0.778788, -0.122661,
		29.114351, 34.049255, 37.519783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326567, 34.647129, 38.087154>,  <28.683727, 34.594406, 37.605644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326567, 34.647129, 38.087154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372572, 34.474144, 37.729439>,  <29.400175, 34.370354, 37.514809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372572, 34.474144, 37.729439>,  <29.326567, 34.647129, 38.087154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372572, 34.474144, 37.729439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770644, 0.606899, -0.194377,
		0.626802, -0.666818, 0.403079,
		0.115014, -0.432466, -0.894285,
		29.407076, 34.344402, 37.461155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440260, 34.999886, 37.407970>,  <29.326567, 34.647129, 38.087154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440260, 34.999886, 37.407970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625210, 35.309029, 37.581825>,  <29.736179, 35.494514, 37.686138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625210, 35.309029, 37.581825>,  <29.440260, 34.999886, 37.407970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625210, 35.309029, 37.581825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596976, 0.091100, -0.797070,
		-0.655615, 0.628009, -0.419254,
		0.462373, 0.772855, 0.434633,
		29.763922, 35.540886, 37.712215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397930, 35.785576, 36.995377>,  <29.440260, 34.999886, 37.407970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397930, 35.785576, 36.995377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715603, 35.724411, 37.230629>,  <29.906206, 35.687714, 37.371780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715603, 35.724411, 37.230629>,  <29.397930, 35.785576, 36.995377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715603, 35.724411, 37.230629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607418, 0.228307, -0.760868,
		-0.017931, 0.961506, 0.274196,
		0.794180, -0.152908, 0.588130,
		29.953857, 35.678539, 37.407066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939499, 36.190445, 36.723568>,  <29.397930, 35.785576, 36.995377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939499, 36.190445, 36.723568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123852, 35.990051, 37.016579>,  <30.234465, 35.869816, 37.192387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123852, 35.990051, 37.016579>,  <29.939499, 36.190445, 36.723568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123852, 35.990051, 37.016579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741732, -0.235741, -0.627900,
		0.487257, 0.832729, 0.262949,
		0.460883, -0.500987, 0.732529,
		30.262117, 35.839756, 37.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737677, 36.368496, 36.857746>,  <29.939499, 36.190445, 36.723568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737677, 36.368496, 36.857746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671787, 35.986675, 36.957108>,  <30.632254, 35.757584, 37.016724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671787, 35.986675, 36.957108>,  <30.737677, 36.368496, 36.857746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671787, 35.986675, 36.957108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731678, -0.287145, -0.618219,
		0.661448, 0.079917, 0.745721,
		-0.164724, -0.954547, 0.248406,
		30.622370, 35.700310, 37.031628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410566, 35.975945, 37.066925>,  <30.737677, 36.368496, 36.857746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410566, 35.975945, 37.066925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143902, 35.716465, 36.920094>,  <30.983904, 35.560776, 36.831993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143902, 35.716465, 36.920094>,  <31.410566, 35.975945, 37.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143902, 35.716465, 36.920094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690575, -0.352238, -0.631692,
		0.280480, -0.674621, 0.682801,
		-0.666661, -0.648702, -0.367081,
		30.943903, 35.521854, 36.809971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818668, 35.398361, 37.125725>,  <31.410566, 35.975945, 37.066925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818668, 35.398361, 37.125725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529329, 35.359585, 36.852264>,  <31.355726, 35.336319, 36.688190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529329, 35.359585, 36.852264>,  <31.818668, 35.398361, 37.125725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529329, 35.359585, 36.852264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661362, -0.381797, -0.645625,
		-0.198425, -0.919148, 0.340286,
		-0.723346, -0.096944, -0.683647,
		31.312326, 35.330502, 36.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896597, 34.768784, 36.776478>,  <31.818668, 35.398361, 37.125725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896597, 34.768784, 36.776478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672928, 34.952904, 36.500668>,  <31.538727, 35.063377, 36.335182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672928, 34.952904, 36.500668>,  <31.896597, 34.768784, 36.776478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672928, 34.952904, 36.500668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423076, -0.556823, -0.714811,
		-0.712974, -0.691425, 0.116617,
		-0.559173, 0.460304, -0.689526,
		31.505177, 35.090996, 36.293808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558445, 34.345070, 36.410862>,  <31.896597, 34.768784, 36.776478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558445, 34.345070, 36.410862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613689, 34.652596, 36.161110>,  <31.646835, 34.837109, 36.011257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613689, 34.652596, 36.161110>,  <31.558445, 34.345070, 36.410862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613689, 34.652596, 36.161110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298933, -0.633383, -0.713768,
		-0.944227, -0.088070, -0.317300,
		0.138111, 0.768810, -0.624385,
		31.655123, 34.883240, 35.973793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219538, 34.097107, 35.788132>,  <31.558445, 34.345070, 36.410862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219538, 34.097107, 35.788132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490772, 34.376785, 35.697510>,  <31.653513, 34.544590, 35.643139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490772, 34.376785, 35.697510>,  <31.219538, 34.097107, 35.788132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490772, 34.376785, 35.697510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363627, -0.587017, -0.723316,
		-0.638727, 0.408092, -0.652295,
		0.678088, 0.699193, -0.226550,
		31.694199, 34.586544, 35.629543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121916, 34.413658, 35.035378>,  <31.219538, 34.097107, 35.788132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121916, 34.413658, 35.035378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503965, 34.462917, 35.143135>,  <31.733194, 34.492474, 35.207790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503965, 34.462917, 35.143135>,  <31.121916, 34.413658, 35.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503965, 34.462917, 35.143135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295666, -0.451323, -0.841955,
		0.017902, 0.883823, -0.467479,
		0.955123, 0.123145, 0.269396,
		31.790503, 34.499863, 35.223953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455965, 34.628437, 34.497173>,  <31.121916, 34.413658, 35.035378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455965, 34.628437, 34.497173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744894, 34.477585, 34.729042>,  <31.918251, 34.387074, 34.868164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744894, 34.477585, 34.729042>,  <31.455965, 34.628437, 34.497173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744894, 34.477585, 34.729042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266822, -0.621334, -0.736716,
		0.638008, 0.686817, -0.348177,
		0.722323, -0.377129, 0.579674,
		31.961592, 34.364445, 34.902943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071247, 34.569599, 34.078873>,  <31.455965, 34.628437, 34.497173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071247, 34.569599, 34.078873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194927, 34.315712, 34.362148>,  <32.269135, 34.163380, 34.532112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194927, 34.315712, 34.362148>,  <32.071247, 34.569599, 34.078873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194927, 34.315712, 34.362148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474430, -0.542444, -0.693304,
		0.824204, 0.550356, 0.133404,
		0.309200, -0.634715, 0.708190,
		32.287685, 34.125298, 34.574604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748566, 34.487095, 33.943619>,  <32.071247, 34.569599, 34.078873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748566, 34.487095, 33.943619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651020, 34.174965, 34.173969>,  <32.592491, 33.987686, 34.312180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651020, 34.174965, 34.173969>,  <32.748566, 34.487095, 33.943619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651020, 34.174965, 34.173969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500880, -0.609813, -0.614204,
		0.830451, 0.138660, 0.539560,
		-0.243865, -0.780321, 0.575872,
		32.577862, 33.940868, 34.346729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296181, 34.143547, 33.858173>,  <32.748566, 34.487095, 33.943619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296181, 34.143547, 33.858173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075806, 33.853725, 34.023819>,  <32.943581, 33.679832, 34.123207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075806, 33.853725, 34.023819>,  <33.296181, 34.143547, 33.858173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075806, 33.853725, 34.023819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614523, -0.687952, -0.386114,
		0.564648, 0.041756, 0.824275,
		-0.550939, -0.724554, 0.414111,
		32.910522, 33.636360, 34.148052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733440, 33.589237, 34.027218>,  <33.296181, 34.143547, 33.858173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733440, 33.589237, 34.027218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371063, 33.420704, 34.010509>,  <33.153637, 33.319584, 34.000484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371063, 33.420704, 34.010509>,  <33.733440, 33.589237, 34.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371063, 33.420704, 34.010509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381675, -0.769962, -0.511353,
		0.183286, -0.479201, 0.858354,
		-0.905942, -0.421337, -0.041775,
		33.099281, 33.294304, 33.997978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740162, 32.893375, 34.208057>,  <33.733440, 33.589237, 34.027218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740162, 32.893375, 34.208057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413448, 32.885193, 33.977425>,  <33.217419, 32.880283, 33.839046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413448, 32.885193, 33.977425>,  <33.740162, 32.893375, 34.208057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413448, 32.885193, 33.977425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309866, -0.858553, -0.408498,
		-0.486668, -0.512317, 0.707592,
		-0.816785, -0.020456, -0.576580,
		33.168411, 32.879055, 33.804451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666622, 32.205017, 34.072617>,  <33.740162, 32.893375, 34.208057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666622, 32.205017, 34.072617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432117, 32.365883, 33.791317>,  <33.291416, 32.462402, 33.622536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432117, 32.365883, 33.791317>,  <33.666622, 32.205017, 34.072617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432117, 32.365883, 33.791317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177728, -0.783081, -0.595984,
		-0.790395, -0.474383, 0.387603,
		-0.586249, 0.402175, -0.703255,
		33.256241, 32.486534, 33.580341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325077, 31.601665, 33.810688>,  <33.666622, 32.205017, 34.072617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325077, 31.601665, 33.810688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257328, 31.890320, 33.542194>,  <33.216679, 32.063511, 33.381100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257328, 31.890320, 33.542194>,  <33.325077, 31.601665, 33.810688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257328, 31.890320, 33.542194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325178, -0.602015, -0.729272,
		-0.930362, -0.341787, -0.132697,
		-0.169370, 0.721637, -0.671234,
		33.206516, 32.106812, 33.340824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972218, 31.311241, 33.276958>,  <33.325077, 31.601665, 33.810688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972218, 31.311241, 33.276958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138233, 31.627983, 33.097755>,  <33.237843, 31.818027, 32.990234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138233, 31.627983, 33.097755>,  <32.972218, 31.311241, 33.276958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138233, 31.627983, 33.097755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225669, -0.566634, -0.792464,
		-0.881372, 0.227802, -0.413873,
		0.415039, 0.791854, -0.448007,
		33.262745, 31.865540, 32.963352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690372, 31.319180, 32.610512>,  <32.972218, 31.311241, 33.276958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690372, 31.319180, 32.610512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024666, 31.538143, 32.593147>,  <33.225243, 31.669521, 32.582729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024666, 31.538143, 32.593147>,  <32.690372, 31.319180, 32.610512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024666, 31.538143, 32.593147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229704, -0.420300, -0.877829,
		-0.498777, 0.723665, -0.477002,
		0.835738, 0.547410, -0.043407,
		33.275387, 31.702366, 32.580124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740646, 31.595842, 31.921621>,  <32.690372, 31.319180, 32.610512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740646, 31.595842, 31.921621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123379, 31.652615, 32.023067>,  <33.353020, 31.686678, 32.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123379, 31.652615, 32.023067>,  <32.740646, 31.595842, 31.921621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123379, 31.652615, 32.023067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290474, -0.438507, -0.850492,
		-0.009499, 0.887450, -0.460807,
		0.956836, 0.141931, 0.253616,
		33.410431, 31.695194, 32.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062851, 31.938696, 31.391304>,  <32.740646, 31.595842, 31.921621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062851, 31.938696, 31.391304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363689, 31.764843, 31.589476>,  <33.544193, 31.660532, 31.708378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363689, 31.764843, 31.589476>,  <33.062851, 31.938696, 31.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363689, 31.764843, 31.589476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421047, -0.261447, -0.868542,
		0.507025, 0.861824, -0.013632,
		0.752094, -0.434632, 0.495429,
		33.589317, 31.634453, 31.738104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736473, 32.136040, 30.958122>,  <33.062851, 31.938696, 31.391304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736473, 32.136040, 30.958122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782780, 31.810738, 31.186232>,  <33.810562, 31.615555, 31.323097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782780, 31.810738, 31.186232>,  <33.736473, 32.136040, 30.958122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782780, 31.810738, 31.186232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384058, -0.492829, -0.780781,
		0.916023, 0.309405, 0.255286,
		0.115765, -0.813258, 0.570272,
		33.817509, 31.566761, 31.357313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247929, 31.805813, 30.596252>,  <33.736473, 32.136040, 30.958122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247929, 31.805813, 30.596252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128387, 31.529518, 30.859638>,  <34.056664, 31.363741, 31.017670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128387, 31.529518, 30.859638>,  <34.247929, 31.805813, 30.596252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128387, 31.529518, 30.859638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159953, -0.716491, -0.679011,
		0.940799, -0.097599, 0.324609,
		-0.298850, -0.690735, 0.658463,
		34.038731, 31.322298, 31.057177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746075, 31.231880, 30.720798>,  <34.247929, 31.805813, 30.596252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746075, 31.231880, 30.720798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386444, 31.071960, 30.792147>,  <34.170666, 30.976009, 30.834955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386444, 31.071960, 30.792147>,  <34.746075, 31.231880, 30.720798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386444, 31.071960, 30.792147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166482, -0.689068, -0.705315,
		0.404894, -0.604438, 0.686086,
		-0.899079, -0.399799, 0.178371,
		34.116718, 30.952021, 30.845657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909752, 30.430389, 30.567724>,  <34.746075, 31.231880, 30.720798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909752, 30.430389, 30.567724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512817, 30.439415, 30.616308>,  <34.274654, 30.444830, 30.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512817, 30.439415, 30.616308>,  <34.909752, 30.430389, 30.567724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512817, 30.439415, 30.616308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103058, -0.693369, -0.713175,
		0.068123, -0.720230, 0.690383,
		-0.992340, 0.022566, 0.121460,
		34.215115, 30.446184, 30.652746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751133, 29.747475, 30.716629>,  <34.909752, 30.430389, 30.567724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751133, 29.747475, 30.716629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457348, 29.958632, 30.546034>,  <34.281075, 30.085325, 30.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457348, 29.958632, 30.546034>,  <34.751133, 29.747475, 30.716629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457348, 29.958632, 30.546034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012050, -0.618195, -0.785932,
		-0.678541, -0.582378, 0.447681,
		-0.734464, 0.527893, -0.426488,
		34.237007, 30.116999, 30.418087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185852, 29.199699, 30.565731>,  <34.751133, 29.747475, 30.716629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185852, 29.199699, 30.565731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150230, 29.516565, 30.324221>,  <34.128857, 29.706684, 30.179316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150230, 29.516565, 30.324221>,  <34.185852, 29.199699, 30.565731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150230, 29.516565, 30.324221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045414, -0.602323, -0.796960,
		-0.994991, -0.098392, 0.017663,
		-0.089054, 0.792165, -0.603774,
		34.123516, 29.754215, 30.143087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780888, 28.938797, 29.953770>,  <34.185852, 29.199699, 30.565731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780888, 28.938797, 29.953770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919998, 29.290989, 29.824894>,  <34.003464, 29.502304, 29.747568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919998, 29.290989, 29.824894>,  <33.780888, 28.938797, 29.953770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919998, 29.290989, 29.824894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012657, -0.339200, -0.940629,
		-0.937493, 0.331203, -0.106820,
		0.347773, 0.880482, -0.322190,
		34.024330, 29.555134, 29.728237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363003, 29.015881, 29.311996>,  <33.780888, 28.938797, 29.953770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363003, 29.015881, 29.311996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665897, 29.268957, 29.247141>,  <33.847633, 29.420803, 29.208227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665897, 29.268957, 29.247141>,  <33.363003, 29.015881, 29.311996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665897, 29.268957, 29.247141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084474, -0.151286, -0.984874,
		-0.647651, 0.759482, -0.061114,
		0.757240, 0.632693, -0.162137,
		33.893070, 29.458765, 29.198500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104530, 29.499838, 28.718058>,  <33.363003, 29.015881, 29.311996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104530, 29.499838, 28.718058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504314, 29.489918, 28.726603>,  <33.744186, 29.483965, 28.731730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504314, 29.489918, 28.726603>,  <33.104530, 29.499838, 28.718058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504314, 29.489918, 28.726603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020124, -0.049079, -0.998592,
		0.025815, 0.998487, -0.048554,
		0.999464, -0.024802, 0.021360,
		33.804153, 29.482477, 28.733011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273438, 29.803148, 28.068361>,  <33.104530, 29.499838, 28.718058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273438, 29.803148, 28.068361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601154, 29.601858, 28.178293>,  <33.797783, 29.481085, 28.244253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601154, 29.601858, 28.178293>,  <33.273438, 29.803148, 28.068361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601154, 29.601858, 28.178293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242135, -0.130831, -0.961381,
		0.519747, 0.854195, 0.014660,
		0.819289, -0.503224, 0.274829,
		33.846939, 29.450891, 28.260742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755653, 30.139032, 27.754002>,  <33.273438, 29.803148, 28.068361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755653, 30.139032, 27.754002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925488, 29.786757, 27.838020>,  <34.027386, 29.575392, 27.888432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925488, 29.786757, 27.838020>,  <33.755653, 30.139032, 27.754002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925488, 29.786757, 27.838020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378139, -0.038304, -0.924956,
		0.822643, 0.472146, 0.316759,
		0.424582, -0.880688, 0.210047,
		34.052860, 29.522551, 27.901035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489208, 30.146580, 27.507610>,  <33.755653, 30.139032, 27.754002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489208, 30.146580, 27.507610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434669, 29.760103, 27.595135>,  <34.401947, 29.528217, 27.647650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434669, 29.760103, 27.595135>,  <34.489208, 30.146580, 27.507610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434669, 29.760103, 27.595135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505137, -0.257812, -0.823632,
		0.852200, -0.001771, 0.523213,
		-0.136350, -0.966193, 0.218813,
		34.393764, 29.470245, 27.660778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165207, 29.868464, 27.618193>,  <34.489208, 30.146580, 27.507610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165207, 29.868464, 27.618193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915638, 29.578003, 27.502663>,  <34.765896, 29.403727, 27.433344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915638, 29.578003, 27.502663>,  <35.165207, 29.868464, 27.618193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915638, 29.578003, 27.502663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527272, -0.118373, -0.841411,
		0.576802, -0.677269, 0.456735,
		-0.623926, -0.726151, -0.288827,
		34.728458, 29.360157, 27.416014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576820, 29.280977, 27.527409>,  <35.165207, 29.868464, 27.618193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576820, 29.280977, 27.527409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246944, 29.225502, 27.308083>,  <35.049019, 29.192217, 27.176487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246944, 29.225502, 27.308083>,  <35.576820, 29.280977, 27.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246944, 29.225502, 27.308083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565176, -0.165421, -0.808216,
		0.021387, -0.976423, 0.214805,
		-0.824694, -0.138687, -0.548313,
		34.999535, 29.183897, 27.143589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538273, 28.559204, 27.278887>,  <35.576820, 29.280977, 27.527409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538273, 28.559204, 27.278887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345612, 28.790077, 27.015108>,  <35.230015, 28.928600, 26.856840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345612, 28.790077, 27.015108>,  <35.538273, 28.559204, 27.278887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345612, 28.790077, 27.015108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526328, -0.411141, -0.744273,
		-0.700709, -0.705565, -0.105762,
		-0.481650, 0.577184, -0.659449,
		35.201118, 28.963232, 26.817274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673809, 28.248068, 26.731880>,  <35.538273, 28.559204, 27.278887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673809, 28.248068, 26.731880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527966, 28.581284, 26.565454>,  <35.440460, 28.781212, 26.465599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527966, 28.581284, 26.565454>,  <35.673809, 28.248068, 26.731880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527966, 28.581284, 26.565454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619339, -0.116698, -0.776403,
		-0.695326, -0.540768, -0.473383,
		-0.364611, 0.833038, -0.416062,
		35.418583, 28.831194, 26.440636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488400, 28.105419, 26.070112>,  <35.673809, 28.248068, 26.731880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488400, 28.105419, 26.070112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521435, 28.503794, 26.055771>,  <35.541256, 28.742819, 26.047167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521435, 28.503794, 26.055771>,  <35.488400, 28.105419, 26.070112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521435, 28.503794, 26.055771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616359, -0.079317, -0.783460,
		-0.783122, 0.042606, -0.620407,
		0.082589, 0.995939, -0.035854,
		35.546211, 28.802576, 26.045015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196735, 28.331495, 25.414068>,  <35.488400, 28.105419, 26.070112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196735, 28.331495, 25.414068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449699, 28.623476, 25.517784>,  <35.601479, 28.798664, 25.580013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449699, 28.623476, 25.517784>,  <35.196735, 28.331495, 25.414068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449699, 28.623476, 25.517784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301353, 0.076525, -0.950437,
		-0.713617, 0.679199, -0.171579,
		0.632406, 0.729954, 0.259288,
		35.639420, 28.842463, 25.595570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199306, 28.811146, 24.827776>,  <35.196735, 28.331495, 25.414068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199306, 28.811146, 24.827776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530975, 28.862188, 25.045473>,  <35.729977, 28.892815, 25.176090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530975, 28.862188, 25.045473>,  <35.199306, 28.811146, 24.827776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530975, 28.862188, 25.045473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517825, 0.191401, -0.833800,
		-0.210566, 0.973182, 0.092626,
		0.829167, 0.127606, 0.544241,
		35.779724, 28.900471, 25.208746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530842, 29.347704, 24.464731>,  <35.199306, 28.811146, 24.827776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530842, 29.347704, 24.464731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820793, 29.210638, 24.703773>,  <35.994762, 29.128399, 24.847198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820793, 29.210638, 24.703773>,  <35.530842, 29.347704, 24.464731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820793, 29.210638, 24.703773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688761, 0.344694, -0.637805,
		0.012561, 0.873938, 0.485874,
		0.724880, -0.342663, 0.597605,
		36.038258, 29.107840, 24.883055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105946, 29.871231, 24.415968>,  <35.530842, 29.347704, 24.464731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105946, 29.871231, 24.415968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268200, 29.532038, 24.552425>,  <36.365555, 29.328522, 24.634300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268200, 29.532038, 24.552425>,  <36.105946, 29.871231, 24.415968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268200, 29.532038, 24.552425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540492, -0.078451, -0.837684,
		0.737106, 0.524182, 0.426506,
		0.405639, -0.847985, 0.341142,
		36.389893, 29.277641, 24.654768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862942, 29.860302, 24.344374>,  <36.105946, 29.871231, 24.415968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862942, 29.860302, 24.344374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753490, 29.475698, 24.354424>,  <36.687820, 29.244936, 24.360455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753490, 29.475698, 24.354424>,  <36.862942, 29.860302, 24.344374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753490, 29.475698, 24.354424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362506, -0.127289, -0.923248,
		0.890908, -0.243518, 0.383382,
		-0.273628, -0.961507, 0.025126,
		36.671402, 29.187246, 24.361961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522141, 29.552464, 24.117275>,  <36.862942, 29.860302, 24.344374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522141, 29.552464, 24.117275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216854, 29.295658, 24.088112>,  <37.033680, 29.141575, 24.070614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216854, 29.295658, 24.088112>,  <37.522141, 29.552464, 24.117275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216854, 29.295658, 24.088112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313951, -0.269847, -0.910284,
		0.564741, -0.717636, 0.407513,
		-0.763219, -0.642014, -0.072909,
		36.987888, 29.103054, 24.066238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820961, 28.877748, 24.024939>,  <37.522141, 29.552464, 24.117275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820961, 28.877748, 24.024939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449280, 28.896940, 23.878363>,  <37.226273, 28.908455, 23.790417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449280, 28.896940, 23.878363>,  <37.820961, 28.877748, 24.024939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449280, 28.896940, 23.878363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325667, -0.362412, -0.873269,
		-0.174700, -0.930782, 0.321129,
		-0.929205, 0.047979, -0.366438,
		37.170517, 28.911335, 23.768431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906425, 28.267496, 23.586985>,  <37.820961, 28.877748, 24.024939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906425, 28.267496, 23.586985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585205, 28.476419, 23.472235>,  <37.392471, 28.601774, 23.403385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585205, 28.476419, 23.472235>,  <37.906425, 28.267496, 23.586985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585205, 28.476419, 23.472235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306849, -0.050239, -0.950431,
		-0.510831, -0.851275, -0.119926,
		-0.803054, 0.522309, -0.286876,
		37.344288, 28.633112, 23.386171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518879, 27.800844, 23.073011>,  <37.906425, 28.267496, 23.586985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518879, 27.800844, 23.073011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358540, 28.157249, 22.987766>,  <37.262337, 28.371092, 22.936619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358540, 28.157249, 22.987766>,  <37.518879, 27.800844, 23.073011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358540, 28.157249, 22.987766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026428, -0.221278, -0.974853,
		-0.915764, -0.396399, 0.065151,
		-0.400847, 0.891013, -0.213115,
		37.238285, 28.424553, 22.923832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996792, 27.679491, 22.642416>,  <37.518879, 27.800844, 23.073011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996792, 27.679491, 22.642416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104195, 28.057188, 22.566189>,  <37.168636, 28.283806, 22.520452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104195, 28.057188, 22.566189>,  <36.996792, 27.679491, 22.642416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104195, 28.057188, 22.566189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051956, -0.211740, -0.975944,
		-0.961877, 0.252144, -0.105912,
		0.268504, 0.944240, -0.190567,
		37.184746, 28.340460, 22.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519104, 27.992308, 22.032581>,  <36.996792, 27.679491, 22.642416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519104, 27.992308, 22.032581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869637, 28.179707, 22.077394>,  <37.079956, 28.292147, 22.104282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869637, 28.179707, 22.077394>,  <36.519104, 27.992308, 22.032581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869637, 28.179707, 22.077394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171382, -0.085878, -0.981455,
		-0.450190, 0.879280, -0.155550,
		0.876332, 0.468499, 0.112032,
		37.132538, 28.320257, 22.111004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624809, 28.817087, 21.758703>,  <36.519104, 27.992308, 22.032581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624809, 28.817087, 21.758703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937466, 28.571730, 21.713484>,  <37.125061, 28.424515, 21.686352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937466, 28.571730, 21.713484>,  <36.624809, 28.817087, 21.758703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937466, 28.571730, 21.713484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053219, 0.114994, -0.991939,
		0.621449, 0.781361, 0.057240,
		0.781645, -0.613394, -0.113046,
		37.171959, 28.387711, 21.679569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007412, 28.965086, 21.080002>,  <36.624809, 28.817087, 21.758703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007412, 28.965086, 21.080002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090687, 28.577803, 21.135473>,  <37.140652, 28.345432, 21.168756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090687, 28.577803, 21.135473>,  <37.007412, 28.965086, 21.080002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090687, 28.577803, 21.135473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094185, -0.121282, -0.988140,
		0.973544, 0.218780, 0.065942,
		0.208187, -0.968208, 0.138679,
		37.153145, 28.287340, 21.177076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968521, 29.087046, 20.315054>,  <37.007412, 28.965086, 21.080002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968521, 29.087046, 20.315054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238297, 28.804119, 20.230362>,  <37.400162, 28.634363, 20.179546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238297, 28.804119, 20.230362>,  <36.968521, 29.087046, 20.315054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238297, 28.804119, 20.230362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094946, 0.367475, -0.925174,
		0.732198, 0.603873, 0.314997,
		0.674441, -0.707319, -0.211729,
		37.440628, 28.591923, 20.166843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707584, 29.389347, 19.997252>,  <36.968521, 29.087046, 20.315054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707584, 29.389347, 19.997252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666000, 29.011900, 19.871534>,  <37.641048, 28.785433, 19.796104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666000, 29.011900, 19.871534>,  <37.707584, 29.389347, 19.997252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666000, 29.011900, 19.871534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009858, 0.316968, -0.948385,
		0.994532, -0.095497, -0.042255,
		-0.103962, -0.943616, -0.314293,
		37.634811, 28.728815, 19.777246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082088, 30.189619, 20.061630>,  <37.707584, 29.389347, 19.997252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082088, 30.189619, 20.061630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472244, 30.261732, 20.112417>,  <38.706337, 30.305000, 20.142889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472244, 30.261732, 20.112417>,  <38.082088, 30.189619, 20.061630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472244, 30.261732, 20.112417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219694, 0.745105, 0.629725,
		0.018924, -0.642119, 0.766371,
		0.975385, 0.180284, 0.126969,
		38.764858, 30.315817, 20.150509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198925, 30.166763, 20.814669>,  <38.082088, 30.189619, 20.061630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198925, 30.166763, 20.814669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459538, 30.403572, 20.624926>,  <38.615906, 30.545658, 20.511080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459538, 30.403572, 20.624926>,  <38.198925, 30.166763, 20.814669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459538, 30.403572, 20.624926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125805, 0.700950, 0.702027,
		0.748121, -0.397712, 0.531168,
		0.651527, 0.592025, -0.474362,
		38.654999, 30.581179, 20.482618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774048, 30.290810, 21.168118>,  <38.198925, 30.166763, 20.814669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774048, 30.290810, 21.168118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620766, 30.573574, 20.930319>,  <38.528797, 30.743233, 20.787640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620766, 30.573574, 20.930319>,  <38.774048, 30.290810, 21.168118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620766, 30.573574, 20.930319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321427, 0.501344, 0.803330,
		0.865932, 0.498928, 0.035103,
		-0.383206, 0.706913, -0.594498,
		38.505802, 30.785648, 20.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024590, 30.962084, 21.476112>,  <38.774048, 30.290810, 21.168118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024590, 30.962084, 21.476112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710625, 31.043440, 21.242001>,  <38.522247, 31.092253, 21.101534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710625, 31.043440, 21.242001>,  <39.024590, 30.962084, 21.476112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710625, 31.043440, 21.242001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411754, 0.534632, 0.737989,
		0.463007, 0.820245, -0.335891,
		-0.784910, 0.203390, -0.585277,
		38.475151, 31.104456, 21.066418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818443, 31.725657, 21.427011>,  <39.024590, 30.962084, 21.476112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818443, 31.725657, 21.427011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508305, 31.477993, 21.377237>,  <38.322224, 31.329395, 21.347372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508305, 31.477993, 21.377237>,  <38.818443, 31.725657, 21.427011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508305, 31.477993, 21.377237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449706, 0.402942, 0.797121,
		-0.443405, 0.674002, -0.590859,
		-0.775343, -0.619160, -0.124436,
		38.275703, 31.292246, 21.339907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158283, 32.061928, 21.475693>,  <38.818443, 31.725657, 21.427011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158283, 32.061928, 21.475693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085281, 31.688745, 21.599813>,  <38.041481, 31.464836, 21.674286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085281, 31.688745, 21.599813>,  <38.158283, 32.061928, 21.475693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085281, 31.688745, 21.599813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349803, 0.356564, 0.866314,
		-0.918874, 0.049561, -0.391425,
		-0.182504, -0.932955, 0.310301,
		38.030529, 31.408859, 21.692904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496765, 32.037773, 21.782892>,  <38.158283, 32.061928, 21.475693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496765, 32.037773, 21.782892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669380, 31.708595, 21.930693>,  <37.772949, 31.511087, 22.019373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669380, 31.708595, 21.930693>,  <37.496765, 32.037773, 21.782892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669380, 31.708595, 21.930693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159385, 0.333606, 0.929141,
		-0.887904, -0.459850, 0.012797,
		0.431535, -0.822949, 0.369503,
		37.798840, 31.461710, 22.041544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070244, 31.935297, 22.265472>,  <37.496765, 32.037773, 21.782892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070244, 31.935297, 22.265472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403202, 31.724293, 22.333420>,  <37.602978, 31.597691, 22.374189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403202, 31.724293, 22.333420>,  <37.070244, 31.935297, 22.265472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403202, 31.724293, 22.333420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076436, 0.194310, 0.977958,
		-0.548890, -0.827029, 0.121422,
		0.832392, -0.527510, 0.169870,
		37.652920, 31.566040, 22.384380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894173, 31.333891, 22.672464>,  <37.070244, 31.935297, 22.265472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894173, 31.333891, 22.672464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258720, 31.492567, 22.716349>,  <37.477451, 31.587772, 22.742680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258720, 31.492567, 22.716349>,  <36.894173, 31.333891, 22.672464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258720, 31.492567, 22.716349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200928, 0.196186, 0.959760,
		0.359202, -0.896744, 0.258504,
		0.911374, 0.396689, 0.109710,
		37.532131, 31.611574, 22.749262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939224, 31.363375, 23.353775>,  <36.894173, 31.333891, 22.672464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939224, 31.363375, 23.353775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307724, 31.496933, 23.273968>,  <37.528824, 31.577068, 23.226084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307724, 31.496933, 23.273968>,  <36.939224, 31.363375, 23.353775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307724, 31.496933, 23.273968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122414, 0.237995, 0.963521,
		0.369198, -0.912071, 0.178380,
		0.921253, 0.333894, -0.199518,
		37.584099, 31.597101, 23.214113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419682, 31.069782, 23.861013>,  <36.939224, 31.363375, 23.353775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419682, 31.069782, 23.861013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572605, 31.425348, 23.760080>,  <37.664360, 31.638687, 23.699520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572605, 31.425348, 23.760080>,  <37.419682, 31.069782, 23.861013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572605, 31.425348, 23.760080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134194, 0.216773, 0.966955,
		0.914240, -0.403534, -0.036413,
		0.382306, 0.888915, -0.252334,
		37.687298, 31.692022, 23.684380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028446, 31.151751, 24.194603>,  <37.419682, 31.069782, 23.861013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028446, 31.151751, 24.194603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924278, 31.525957, 24.099112>,  <37.861778, 31.750481, 24.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924278, 31.525957, 24.099112>,  <38.028446, 31.151751, 24.194603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924278, 31.525957, 24.099112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262453, 0.306542, 0.914959,
		0.929138, 0.175623, -0.325360,
		-0.260424, 0.935515, -0.238727,
		37.846149, 31.806612, 24.027493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504333, 31.502790, 24.418514>,  <38.028446, 31.151751, 24.194603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504333, 31.502790, 24.418514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231953, 31.790749, 24.364771>,  <38.068523, 31.963524, 24.332525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231953, 31.790749, 24.364771>,  <38.504333, 31.502790, 24.418514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231953, 31.790749, 24.364771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207553, 0.365662, 0.907311,
		0.702296, 0.589953, -0.398416,
		-0.680957, 0.719893, -0.134357,
		38.027664, 32.006718, 24.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783939, 32.178078, 24.659143>,  <38.504333, 31.502790, 24.418514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783939, 32.178078, 24.659143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392151, 32.253807, 24.686842>,  <38.157078, 32.299244, 24.703461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392151, 32.253807, 24.686842>,  <38.783939, 32.178078, 24.659143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392151, 32.253807, 24.686842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123698, 0.293219, 0.948009,
		0.159177, 0.937112, -0.310619,
		-0.979470, 0.189324, 0.069245,
		38.098309, 32.310604, 24.707615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654564, 32.846088, 24.994989>,  <38.783939, 32.178078, 24.659143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654564, 32.846088, 24.994989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289459, 32.685188, 25.023426>,  <38.070396, 32.588646, 25.040487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289459, 32.685188, 25.023426>,  <38.654564, 32.846088, 24.994989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289459, 32.685188, 25.023426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177362, 0.547044, 0.818099,
		-0.367972, 0.734123, -0.570667,
		-0.912765, -0.402252, 0.071092,
		38.015629, 32.564514, 25.044754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134811, 33.423473, 25.002304>,  <38.654564, 32.846088, 24.994989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134811, 33.423473, 25.002304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960121, 33.108414, 25.176149>,  <37.855309, 32.919380, 25.280457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960121, 33.108414, 25.176149>,  <38.134811, 33.423473, 25.002304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960121, 33.108414, 25.176149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240946, 0.567884, 0.787053,
		-0.866729, 0.239005, -0.437787,
		-0.436722, -0.787645, 0.434614,
		37.829105, 32.872120, 25.306534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489227, 33.734982, 25.215786>,  <38.134811, 33.423473, 25.002304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489227, 33.734982, 25.215786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541512, 33.394962, 25.419878>,  <37.572884, 33.190952, 25.542334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541512, 33.394962, 25.419878>,  <37.489227, 33.734982, 25.215786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541512, 33.394962, 25.419878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338871, 0.445341, 0.828757,
		-0.931709, -0.281227, -0.229846,
		0.130709, -0.850049, 0.510228,
		37.580723, 33.139946, 25.572947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796963, 33.481712, 25.422302>,  <37.489227, 33.734982, 25.215786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796963, 33.481712, 25.422302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096550, 33.339527, 25.645979>,  <37.276302, 33.254215, 25.780184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096550, 33.339527, 25.645979>,  <36.796963, 33.481712, 25.422302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096550, 33.339527, 25.645979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456612, 0.334670, 0.824319,
		-0.480158, -0.872721, 0.088348,
		0.748968, -0.355463, 0.559190,
		37.321239, 33.232887, 25.813736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484360, 33.219566, 25.971096>,  <36.796963, 33.481712, 25.422302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484360, 33.219566, 25.971096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855553, 33.271885, 26.110666>,  <37.078266, 33.303276, 26.194408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855553, 33.271885, 26.110666>,  <36.484360, 33.219566, 25.971096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855553, 33.271885, 26.110666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372635, 0.325669, 0.868955,
		0.000024, -0.936393, 0.350954,
		0.927978, 0.130799, 0.348925,
		37.133945, 33.311123, 26.215343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468250, 32.920521, 26.577997>,  <36.484360, 33.219566, 25.971096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468250, 32.920521, 26.577997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753433, 33.200363, 26.596964>,  <36.924541, 33.368267, 26.608343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753433, 33.200363, 26.596964>,  <36.468250, 32.920521, 26.577997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753433, 33.200363, 26.596964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247171, 0.187457, 0.950666,
		0.656204, -0.689501, 0.306570,
		0.712954, 0.699606, 0.047415,
		36.967319, 33.410244, 26.611189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790443, 32.759129, 27.168137>,  <36.468250, 32.920521, 26.577997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790443, 32.759129, 27.168137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924694, 33.129795, 27.100437>,  <37.005245, 33.352196, 27.059816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924694, 33.129795, 27.100437>,  <36.790443, 32.759129, 27.168137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924694, 33.129795, 27.100437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246186, 0.259714, 0.933778,
		0.909256, -0.271735, 0.315300,
		0.335628, 0.926665, -0.169250,
		37.025383, 33.407795, 27.049662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046677, 32.907269, 27.811153>,  <36.790443, 32.759129, 27.168137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046677, 32.907269, 27.811153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022358, 33.255333, 27.615551>,  <37.007767, 33.464172, 27.498190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022358, 33.255333, 27.615551>,  <37.046677, 32.907269, 27.811153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022358, 33.255333, 27.615551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042202, 0.487235, 0.872251,
		0.997258, 0.073668, 0.007100,
		-0.060797, 0.870158, -0.489008,
		37.004120, 33.516380, 27.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343311, 33.311798, 28.261364>,  <37.046677, 32.907269, 27.811153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343311, 33.311798, 28.261364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131271, 33.568054, 28.039165>,  <37.004047, 33.721806, 27.905846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131271, 33.568054, 28.039165>,  <37.343311, 33.311798, 28.261364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131271, 33.568054, 28.039165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320773, 0.454919, 0.830754,
		0.784919, 0.618572, -0.035654,
		-0.530101, 0.640638, -0.555496,
		36.972240, 33.760246, 27.872517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388523, 33.925812, 28.637400>,  <37.343311, 33.311798, 28.261364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388523, 33.925812, 28.637400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060814, 33.972702, 28.412880>,  <36.864189, 34.000835, 28.278168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060814, 33.972702, 28.412880>,  <37.388523, 33.925812, 28.637400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060814, 33.972702, 28.412880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399393, 0.585720, 0.705278,
		0.411438, 0.801992, -0.433045,
		-0.819270, 0.117222, -0.561298,
		36.815033, 34.007870, 28.244492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212204, 34.619907, 28.715979>,  <37.388523, 33.925812, 28.637400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212204, 34.619907, 28.715979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872631, 34.446011, 28.595768>,  <36.668888, 34.341675, 28.523642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872631, 34.446011, 28.595768>,  <37.212204, 34.619907, 28.715979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872631, 34.446011, 28.595768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506981, 0.509272, 0.695422,
		-0.149276, 0.742728, -0.652742,
		-0.848933, -0.434738, -0.300527,
		36.617950, 34.315590, 28.505610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757820, 35.166988, 28.515665>,  <37.212204, 34.619907, 28.715979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757820, 35.166988, 28.515665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531494, 34.848057, 28.599689>,  <36.395699, 34.656696, 28.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531494, 34.848057, 28.599689>,  <36.757820, 35.166988, 28.515665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531494, 34.848057, 28.599689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539270, 0.550567, 0.637232,
		-0.623734, 0.247275, -0.741492,
		-0.565812, -0.797327, 0.210060,
		36.361752, 34.608860, 28.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093887, 35.462765, 28.700439>,  <36.757820, 35.166988, 28.515665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093887, 35.462765, 28.700439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016514, 35.082993, 28.799360>,  <35.970089, 34.855129, 28.858713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016514, 35.082993, 28.799360>,  <36.093887, 35.462765, 28.700439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016514, 35.082993, 28.799360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642146, 0.313090, 0.699731,
		-0.741776, -0.023452, -0.670238,
		-0.193434, -0.949434, 0.247302,
		35.958485, 34.798161, 28.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327888, 35.439423, 28.713469>,  <36.093887, 35.462765, 28.700439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327888, 35.439423, 28.713469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500282, 35.160973, 28.943132>,  <35.603718, 34.993900, 29.080931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500282, 35.160973, 28.943132>,  <35.327888, 35.439423, 28.713469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500282, 35.160973, 28.943132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488795, 0.354747, 0.797015,
		-0.758506, -0.624148, -0.187373,
		0.430985, -0.696128, 0.574158,
		35.629578, 34.952133, 29.115379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844669, 35.206089, 29.083197>,  <35.327888, 35.439423, 28.713469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844669, 35.206089, 29.083197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165298, 35.092087, 29.293436>,  <35.357677, 35.023685, 29.419579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165298, 35.092087, 29.293436>,  <34.844669, 35.206089, 29.083197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165298, 35.092087, 29.293436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493368, 0.181281, 0.850720,
		-0.337742, -0.941227, 0.004696,
		0.801572, -0.285007, 0.525597,
		35.405769, 35.006584, 29.451115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488094, 34.954197, 29.623755>,  <34.844669, 35.206089, 29.083197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488094, 34.954197, 29.623755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864197, 34.973347, 29.758587>,  <35.089859, 34.984837, 29.839487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864197, 34.973347, 29.758587>,  <34.488094, 34.954197, 29.623755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864197, 34.973347, 29.758587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336856, 0.274565, 0.900634,
		-0.049434, -0.960376, 0.274288,
		0.940257, 0.047873, 0.337082,
		35.146275, 34.987709, 29.859711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467625, 34.634468, 30.199339>,  <34.488094, 34.954197, 29.623755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467625, 34.634468, 30.199339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793751, 34.856411, 30.265537>,  <34.989426, 34.989578, 30.305256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793751, 34.856411, 30.265537>,  <34.467625, 34.634468, 30.199339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793751, 34.856411, 30.265537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391792, 0.318221, 0.863270,
		0.426328, -0.768679, 0.476840,
		0.815318, 0.554858, 0.165496,
		35.038345, 35.022869, 30.315186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694668, 34.436920, 30.865713>,  <34.467625, 34.634468, 30.199339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694668, 34.436920, 30.865713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871891, 34.786125, 30.784174>,  <34.978226, 34.995647, 30.735250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871891, 34.786125, 30.784174>,  <34.694668, 34.436920, 30.865713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871891, 34.786125, 30.784174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366921, 0.384054, 0.847273,
		0.817965, -0.300597, 0.490484,
		0.443060, 0.873008, -0.203847,
		35.004810, 35.048027, 30.723021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138245, 34.660782, 31.413338>,  <34.694668, 34.436920, 30.865713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138245, 34.660782, 31.413338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036400, 35.002666, 31.232388>,  <34.975292, 35.207798, 31.123817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036400, 35.002666, 31.232388>,  <35.138245, 34.660782, 31.413338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036400, 35.002666, 31.232388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414819, 0.326038, 0.849485,
		0.873553, 0.403947, 0.271535,
		-0.254617, 0.854708, -0.452376,
		34.960014, 35.259079, 31.096674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345379, 35.095978, 31.794394>,  <35.138245, 34.660782, 31.413338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345379, 35.095978, 31.794394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084217, 35.310299, 31.580240>,  <34.927521, 35.438892, 31.451748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084217, 35.310299, 31.580240>,  <35.345379, 35.095978, 31.794394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084217, 35.310299, 31.580240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332835, 0.431986, 0.838217,
		0.680394, 0.725470, -0.103714,
		-0.652905, 0.535799, -0.535383,
		34.888344, 35.471039, 31.419626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393730, 35.788799, 31.961864>,  <35.345379, 35.095978, 31.794394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393730, 35.788799, 31.961864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017250, 35.743534, 31.834530>,  <34.791363, 35.716377, 31.758129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017250, 35.743534, 31.834530>,  <35.393730, 35.788799, 31.961864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017250, 35.743534, 31.834530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329761, 0.512665, 0.792737,
		0.073495, 0.851099, -0.519836,
		-0.941199, -0.113159, -0.318338,
		34.734890, 35.709587, 31.739029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113831, 36.448154, 32.176937>,  <35.393730, 35.788799, 31.961864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113831, 36.448154, 32.176937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801384, 36.211823, 32.096169>,  <34.613914, 36.070023, 32.047707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801384, 36.211823, 32.096169>,  <35.113831, 36.448154, 32.176937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801384, 36.211823, 32.096169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553816, 0.506259, 0.661052,
		-0.288347, 0.628186, -0.722661,
		-0.781117, -0.590834, -0.201921,
		34.567047, 36.034573, 32.035591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576591, 36.913116, 32.202168>,  <35.113831, 36.448154, 32.176937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576591, 36.913116, 32.202168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395332, 36.560631, 32.255997>,  <34.286575, 36.349140, 32.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395332, 36.560631, 32.255997>,  <34.576591, 36.913116, 32.202168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395332, 36.560631, 32.255997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674769, 0.437732, 0.594203,
		-0.582528, 0.178459, -0.792977,
		-0.453153, -0.881217, 0.134572,
		34.259388, 36.296265, 32.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899441, 37.069813, 32.181782>,  <34.576591, 36.913116, 32.202168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899441, 37.069813, 32.181782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942329, 36.724628, 32.379288>,  <33.968063, 36.517517, 32.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942329, 36.724628, 32.379288>,  <33.899441, 37.069813, 32.181782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942329, 36.724628, 32.379288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665104, 0.306887, 0.680776,
		-0.739012, -0.401402, -0.541052,
		0.107223, -0.862958, 0.493767,
		33.974495, 36.465740, 32.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214504, 36.868038, 32.503239>,  <33.899441, 37.069813, 32.181782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214504, 36.868038, 32.503239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435741, 36.628498, 32.734913>,  <33.568485, 36.484772, 32.873917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435741, 36.628498, 32.734913>,  <33.214504, 36.868038, 32.503239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435741, 36.628498, 32.734913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536754, 0.275546, 0.797477,
		-0.637165, -0.751963, -0.169034,
		0.553097, -0.598854, 0.579187,
		33.601669, 36.448841, 32.908669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736565, 36.516384, 32.885780>,  <33.214504, 36.868038, 32.503239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736565, 36.516384, 32.885780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085960, 36.502151, 33.079998>,  <33.295597, 36.493610, 33.196529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085960, 36.502151, 33.079998>,  <32.736565, 36.516384, 32.885780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085960, 36.502151, 33.079998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463364, 0.245246, 0.851556,
		-0.149380, -0.968808, 0.197730,
		0.873486, -0.035585, 0.485546,
		33.348007, 36.491474, 33.225662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546837, 36.381577, 33.517689>,  <32.736565, 36.516384, 32.885780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546837, 36.381577, 33.517689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932934, 36.461308, 33.585297>,  <33.164593, 36.509148, 33.625862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932934, 36.461308, 33.585297>,  <32.546837, 36.381577, 33.517689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932934, 36.461308, 33.585297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211149, 0.213700, 0.953807,
		0.154001, -0.956347, 0.248361,
		0.965246, 0.199328, 0.169022,
		33.222507, 36.521107, 33.636002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851204, 35.991665, 34.057682>,  <32.546837, 36.381577, 33.517689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851204, 35.991665, 34.057682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064140, 36.329647, 34.037006>,  <33.191902, 36.532436, 34.024601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064140, 36.329647, 34.037006>,  <32.851204, 35.991665, 34.057682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064140, 36.329647, 34.037006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244456, 0.211892, 0.946226,
		0.810468, -0.491077, 0.319351,
		0.532337, 0.844953, -0.051685,
		33.223843, 36.583134, 34.021500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222740, 35.953751, 34.632584>,  <32.851204, 35.991665, 34.057682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222740, 35.953751, 34.632584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221287, 36.342041, 34.536522>,  <33.220417, 36.575016, 34.478886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221287, 36.342041, 34.536522>,  <33.222740, 35.953751, 34.632584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221287, 36.342041, 34.536522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286864, 0.229053, 0.930185,
		0.957964, 0.072268, 0.277636,
		-0.003629, 0.970728, -0.240155,
		33.220200, 36.633259, 34.464474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546120, 36.262852, 35.165543>,  <33.222740, 35.953751, 34.632584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546120, 36.262852, 35.165543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383289, 36.576668, 34.978447>,  <33.285591, 36.764957, 34.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383289, 36.576668, 34.978447>,  <33.546120, 36.262852, 35.165543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383289, 36.576668, 34.978447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314303, 0.360505, 0.878208,
		0.857613, 0.504513, 0.099829,
		-0.407079, 0.784540, -0.467743,
		33.261166, 36.812031, 34.838123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872486, 36.863552, 35.567646>,  <33.546120, 36.262852, 35.165543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872486, 36.863552, 35.567646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526958, 36.956852, 35.389027>,  <33.319641, 37.012833, 35.281857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526958, 36.956852, 35.389027>,  <33.872486, 36.863552, 35.567646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526958, 36.956852, 35.389027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330233, 0.407238, 0.851530,
		0.380471, 0.883035, -0.274755,
		-0.863822, 0.233250, -0.446550,
		33.267811, 37.026829, 35.255062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351448, 37.019020, 35.014183>,  <33.872486, 36.863552, 35.567646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351448, 37.019020, 35.014183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707966, 37.116852, 35.166901>,  <34.921879, 37.175552, 35.258533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707966, 37.116852, 35.166901>,  <34.351448, 37.019020, 35.014183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707966, 37.116852, 35.166901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359270, 0.132747, -0.923744,
		-0.276612, 0.960499, 0.030447,
		0.891297, 0.244580, 0.381798,
		34.975353, 37.190228, 35.281441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654060, 37.654888, 34.720142>,  <34.351448, 37.019020, 35.014183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654060, 37.654888, 34.720142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996181, 37.479221, 34.830112>,  <35.201454, 37.373821, 34.896095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996181, 37.479221, 34.830112>,  <34.654060, 37.654888, 34.720142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996181, 37.479221, 34.830112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387648, 0.190339, -0.901942,
		0.343772, 0.878012, 0.333040,
		0.855307, -0.439165, 0.274926,
		35.252773, 37.347473, 34.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126179, 37.999809, 34.381626>,  <34.654060, 37.654888, 34.720142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126179, 37.999809, 34.381626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316906, 37.666149, 34.492508>,  <35.431343, 37.465954, 34.559036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316906, 37.666149, 34.492508>,  <35.126179, 37.999809, 34.381626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316906, 37.666149, 34.492508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501614, -0.000754, -0.865091,
		0.721825, 0.551538, 0.418062,
		0.476815, -0.834150, 0.277203,
		35.459949, 37.415905, 34.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750187, 38.068859, 34.125042>,  <35.126179, 37.999809, 34.381626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750187, 38.068859, 34.125042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777344, 37.680328, 34.216183>,  <35.793640, 37.447208, 34.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777344, 37.680328, 34.216183>,  <35.750187, 38.068859, 34.125042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777344, 37.680328, 34.216183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663307, -0.126649, -0.737552,
		0.745261, 0.201214, 0.635688,
		0.067897, -0.971326, 0.227853,
		35.797714, 37.388931, 34.284538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518757, 37.908211, 34.392056>,  <35.750187, 38.068859, 34.125042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518757, 37.908211, 34.392056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345589, 37.585838, 34.230537>,  <36.241688, 37.392414, 34.133629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345589, 37.585838, 34.230537>,  <36.518757, 37.908211, 34.392056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345589, 37.585838, 34.230537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787425, -0.120056, -0.604607,
		0.438795, -0.579704, 0.686587,
		-0.432922, -0.805934, -0.403793,
		36.215714, 37.344059, 34.109398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102791, 37.507542, 34.277767>,  <36.518757, 37.908211, 34.392056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102791, 37.507542, 34.277767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806740, 37.326927, 34.078438>,  <36.629108, 37.218559, 33.958839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806740, 37.326927, 34.078438>,  <37.102791, 37.507542, 34.277767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806740, 37.326927, 34.078438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669361, -0.423579, -0.610358,
		0.064517, -0.785302, 0.615742,
		-0.740130, -0.451532, -0.498323,
		36.584702, 37.191467, 33.928940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365650, 36.825691, 34.123985>,  <37.102791, 37.507542, 34.277767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365650, 36.825691, 34.123985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062325, 36.893875, 33.872303>,  <36.880329, 36.934784, 33.721294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062325, 36.893875, 33.872303>,  <37.365650, 36.825691, 34.123985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062325, 36.893875, 33.872303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513434, -0.438568, -0.737593,
		-0.401679, -0.882385, 0.245053,
		-0.758313, 0.170457, -0.629210,
		36.834831, 36.945011, 33.683540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290737, 36.214409, 33.641766>,  <37.365650, 36.825691, 34.123985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290737, 36.214409, 33.641766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131859, 36.533550, 33.460365>,  <37.036530, 36.725037, 33.351524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131859, 36.533550, 33.460365>,  <37.290737, 36.214409, 33.641766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131859, 36.533550, 33.460365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486083, -0.236250, -0.841374,
		-0.778432, -0.554632, -0.293985,
		-0.397199, 0.797853, -0.453501,
		37.012699, 36.772907, 33.324314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033821, 35.874474, 33.002560>,  <37.290737, 36.214409, 33.641766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033821, 35.874474, 33.002560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010708, 36.266235, 32.925171>,  <36.996841, 36.501293, 32.878738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010708, 36.266235, 32.925171>,  <37.033821, 35.874474, 33.002560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010708, 36.266235, 32.925171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387180, -0.156640, -0.908601,
		-0.920192, -0.127410, -0.370154,
		-0.057784, 0.979403, -0.193470,
		36.993374, 36.560055, 32.867130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693703, 35.954834, 32.400425>,  <37.033821, 35.874474, 33.002560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693703, 35.954834, 32.400425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891903, 36.302277, 32.399937>,  <37.010822, 36.510742, 32.399643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891903, 36.302277, 32.399937>,  <36.693703, 35.954834, 32.400425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891903, 36.302277, 32.399937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240595, -0.138592, -0.960680,
		-0.834624, 0.475721, -0.277655,
		0.495497, 0.868609, -0.001216,
		37.040550, 36.562859, 32.399570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485851, 36.249073, 31.760984>,  <36.693703, 35.954834, 32.400425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485851, 36.249073, 31.760984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813084, 36.445610, 31.880535>,  <37.009422, 36.563534, 31.952265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813084, 36.445610, 31.880535>,  <36.485851, 36.249073, 31.760984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813084, 36.445610, 31.880535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339351, 0.007160, -0.940633,
		-0.464313, 0.870937, -0.160880,
		0.818080, 0.491343, 0.298877,
		37.058506, 36.593014, 31.970198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607861, 36.863495, 31.280975>,  <36.485851, 36.249073, 31.760984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607861, 36.863495, 31.280975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961517, 36.750580, 31.429893>,  <37.173710, 36.682831, 31.519245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961517, 36.750580, 31.429893>,  <36.607861, 36.863495, 31.280975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961517, 36.750580, 31.429893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375288, -0.045558, -0.925788,
		0.278304, 0.958246, 0.065661,
		0.884142, -0.282292, 0.372297,
		37.226761, 36.665894, 31.541582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114773, 37.302799, 31.001801>,  <36.607861, 36.863495, 31.280975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114773, 37.302799, 31.001801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328953, 36.983768, 31.112917>,  <37.457458, 36.792351, 31.179586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328953, 36.983768, 31.112917>,  <37.114773, 37.302799, 31.001801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328953, 36.983768, 31.112917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434824, -0.021637, -0.900256,
		0.724034, 0.602829, 0.335220,
		0.535447, -0.797577, 0.277791,
		37.489586, 36.744495, 31.196255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806110, 37.416336, 30.786959>,  <37.114773, 37.302799, 31.001801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806110, 37.416336, 30.786959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803040, 37.027088, 30.879032>,  <37.801197, 36.793541, 30.934277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803040, 37.027088, 30.879032>,  <37.806110, 37.416336, 30.786959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803040, 37.027088, 30.879032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514959, -0.201167, -0.833276,
		0.857180, 0.112138, 0.502660,
		-0.007677, -0.973117, 0.230183,
		37.800735, 36.735153, 30.948088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277870, 37.205479, 30.382128>,  <37.806110, 37.416336, 30.786959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277870, 37.205479, 30.382128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119953, 36.861824, 30.512369>,  <38.025204, 36.655632, 30.590513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119953, 36.861824, 30.512369>,  <38.277870, 37.205479, 30.382128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119953, 36.861824, 30.512369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280854, -0.450278, -0.847567,
		0.874790, -0.243169, 0.419061,
		-0.394796, -0.859138, 0.325603,
		38.001514, 36.604084, 30.610050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796070, 36.700966, 30.435442>,  <38.277870, 37.205479, 30.382128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796070, 36.700966, 30.435442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446484, 36.523247, 30.356663>,  <38.236732, 36.416615, 30.309395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446484, 36.523247, 30.356663>,  <38.796070, 36.700966, 30.435442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446484, 36.523247, 30.356663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373558, -0.354913, -0.857024,
		0.310874, -0.822579, 0.476152,
		-0.873963, -0.444297, -0.196948,
		38.184296, 36.389957, 30.297579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968685, 35.925739, 30.324314>,  <38.796070, 36.700966, 30.435442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968685, 35.925739, 30.324314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605621, 35.971684, 30.162842>,  <38.387783, 35.999252, 30.065958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605621, 35.971684, 30.162842>,  <38.968685, 35.925739, 30.324314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605621, 35.971684, 30.162842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311654, -0.459760, -0.831560,
		-0.281114, -0.880583, 0.381508,
		-0.907660, 0.114864, -0.403682,
		38.333324, 36.006142, 30.041737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745625, 35.211571, 30.094358>,  <38.968685, 35.925739, 30.324314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745625, 35.211571, 30.094358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519890, 35.482620, 29.905741>,  <38.384449, 35.645248, 29.792570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519890, 35.482620, 29.905741>,  <38.745625, 35.211571, 30.094358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519890, 35.482620, 29.905741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219470, -0.427492, -0.876974,
		-0.795839, -0.598396, 0.092530,
		-0.564334, 0.677623, -0.471545,
		38.350590, 35.685905, 29.764277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321308, 34.881847, 29.641394>,  <38.745625, 35.211571, 30.094358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321308, 34.881847, 29.641394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342854, 35.252586, 29.492767>,  <38.355782, 35.475029, 29.403591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342854, 35.252586, 29.492767>,  <38.321308, 34.881847, 29.641394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342854, 35.252586, 29.492767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225768, -0.373773, -0.899623,
		-0.972690, -0.035429, -0.229385,
		0.053865, 0.926843, -0.371565,
		38.359013, 35.530640, 29.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928432, 34.846390, 29.120295>,  <38.321308, 34.881847, 29.641394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928432, 34.846390, 29.120295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174660, 35.151810, 29.042246>,  <38.322395, 35.335060, 28.995417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174660, 35.151810, 29.042246>,  <37.928432, 34.846390, 29.120295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174660, 35.151810, 29.042246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142645, -0.351450, -0.925276,
		-0.775069, 0.541734, -0.325257,
		0.615565, 0.763549, -0.195122,
		38.359329, 35.380875, 28.983709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810837, 34.903931, 28.440813>,  <37.928432, 34.846390, 29.120295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810837, 34.903931, 28.440813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144913, 35.114033, 28.506006>,  <38.345360, 35.240093, 28.545122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144913, 35.114033, 28.506006>,  <37.810837, 34.903931, 28.440813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144913, 35.114033, 28.506006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411904, -0.401073, -0.818215,
		-0.364403, 0.750499, -0.551327,
		0.835192, 0.525254, 0.162982,
		38.395470, 35.271610, 28.554901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004128, 35.513763, 27.855215>,  <37.810837, 34.903931, 28.440813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004128, 35.513763, 27.855215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304718, 35.342209, 28.055752>,  <38.485073, 35.239277, 28.176073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304718, 35.342209, 28.055752>,  <38.004128, 35.513763, 27.855215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304718, 35.342209, 28.055752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360832, -0.368996, -0.856529,
		0.552347, 0.824559, -0.122534,
		0.751474, -0.428887, 0.501341,
		38.530159, 35.213543, 28.206154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431282, 35.167290, 27.271786>,  <38.004128, 35.513763, 27.855215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431282, 35.167290, 27.271786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628296, 35.053757, 27.600868>,  <38.746506, 34.985638, 27.798317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628296, 35.053757, 27.600868>,  <38.431282, 35.167290, 27.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628296, 35.053757, 27.600868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570835, -0.608204, -0.551575,
		0.656927, 0.741302, -0.137544,
		0.492538, -0.283830, 0.822707,
		38.776058, 34.968609, 27.847681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099701, 35.324902, 27.138678>,  <38.431282, 35.167290, 27.271786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099701, 35.324902, 27.138678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061237, 35.030190, 27.406380>,  <39.038158, 34.853363, 27.567001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061237, 35.030190, 27.406380>,  <39.099701, 35.324902, 27.138678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061237, 35.030190, 27.406380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558145, -0.596630, -0.576634,
		0.824153, 0.318093, 0.468604,
		-0.096160, -0.736783, 0.669256,
		39.032391, 34.809155, 27.607157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873066, 35.133770, 27.159710>,  <39.099701, 35.324902, 27.138678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873066, 35.133770, 27.159710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625610, 34.856197, 27.307083>,  <39.477139, 34.689651, 27.395506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625610, 34.856197, 27.307083>,  <39.873066, 35.133770, 27.159710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625610, 34.856197, 27.307083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542758, -0.716517, -0.438197,
		0.568069, -0.071115, 0.819903,
		-0.618637, -0.693935, 0.368432,
		39.440018, 34.648018, 27.417612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311409, 34.567913, 27.350601>,  <39.873066, 35.133770, 27.159710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311409, 34.567913, 27.350601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939346, 34.428043, 27.305801>,  <39.716110, 34.344120, 27.278921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939346, 34.428043, 27.305801>,  <40.311409, 34.567913, 27.350601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939346, 34.428043, 27.305801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358345, -0.798036, -0.484487,
		0.080032, -0.490781, 0.867599,
		-0.930153, -0.349674, -0.112000,
		39.660301, 34.323139, 27.272202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384670, 33.883598, 27.475637>,  <40.311409, 34.567913, 27.350601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384670, 33.883598, 27.475637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062141, 33.942711, 27.246550>,  <39.868626, 33.978180, 27.109097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062141, 33.942711, 27.246550>,  <40.384670, 33.883598, 27.475637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062141, 33.942711, 27.246550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275807, -0.762629, -0.585088,
		-0.523235, -0.629728, 0.574167,
		-0.806322, 0.147779, -0.572717,
		39.820244, 33.987045, 27.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117802, 33.183926, 27.295145>,  <40.384670, 33.883598, 27.475637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117802, 33.183926, 27.295145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918095, 33.405128, 27.028337>,  <39.798271, 33.537849, 26.868252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918095, 33.405128, 27.028337>,  <40.117802, 33.183926, 27.295145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918095, 33.405128, 27.028337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079755, -0.737234, -0.670914,
		-0.862769, -0.388164, 0.323973,
		-0.499269, 0.553005, -0.667021,
		39.768314, 33.571030, 26.828232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642033, 32.800568, 27.052340>,  <40.117802, 33.183926, 27.295145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642033, 32.800568, 27.052340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723370, 33.073380, 26.771343>,  <39.772171, 33.237064, 26.602745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723370, 33.073380, 26.771343>,  <39.642033, 32.800568, 27.052340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723370, 33.073380, 26.771343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062341, -0.725043, -0.685876,
		-0.977120, 0.095676, -0.189953,
		0.203346, 0.682026, -0.702489,
		39.784374, 33.277988, 26.560596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218967, 32.617813, 26.482452>,  <39.642033, 32.800568, 27.052340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218967, 32.617813, 26.482452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532272, 32.839672, 26.370121>,  <39.720253, 32.972790, 26.302721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532272, 32.839672, 26.370121>,  <39.218967, 32.617813, 26.482452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532272, 32.839672, 26.370121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125766, -0.583742, -0.802140,
		-0.608840, 0.592966, -0.526978,
		0.783260, 0.554651, -0.280831,
		39.767250, 33.006069, 26.285872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148636, 32.713181, 25.816118>,  <39.218967, 32.617813, 26.482452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148636, 32.713181, 25.816118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536064, 32.797569, 25.868811>,  <39.768520, 32.848202, 25.900427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536064, 32.797569, 25.868811>,  <39.148636, 32.713181, 25.816118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536064, 32.797569, 25.868811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228601, -0.546414, -0.805713,
		-0.098003, 0.810508, -0.577471,
		0.968575, 0.210973, 0.131732,
		39.826637, 32.860863, 25.908331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347919, 32.731865, 25.161245>,  <39.148636, 32.713181, 25.816118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347919, 32.731865, 25.161245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684849, 32.699348, 25.374369>,  <39.887005, 32.679836, 25.502243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684849, 32.699348, 25.374369>,  <39.347919, 32.731865, 25.161245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684849, 32.699348, 25.374369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353132, -0.663577, -0.659518,
		0.407174, 0.743678, -0.530238,
		0.842323, -0.081294, 0.532807,
		39.937546, 32.674961, 25.534210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880226, 33.031410, 24.763975>,  <39.347919, 32.731865, 25.161245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880226, 33.031410, 24.763975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030636, 32.758423, 25.014683>,  <40.120880, 32.594631, 25.165108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030636, 32.758423, 25.014683>,  <39.880226, 33.031410, 24.763975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030636, 32.758423, 25.014683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372944, -0.507737, -0.776606,
		0.848246, 0.525770, 0.063604,
		0.376022, -0.682473, 0.626768,
		40.143444, 32.553680, 25.202713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485825, 32.827213, 24.419607>,  <39.880226, 33.031410, 24.763975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485825, 32.827213, 24.419607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442928, 32.528492, 24.682144>,  <40.417191, 32.349258, 24.839666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442928, 32.528492, 24.682144>,  <40.485825, 32.827213, 24.419607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442928, 32.528492, 24.682144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523514, -0.603637, -0.601295,
		0.845241, 0.279118, 0.455698,
		-0.107244, -0.746804, 0.656341,
		40.410755, 32.304451, 24.879045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091541, 32.472763, 24.432783>,  <40.485825, 32.827213, 24.419607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091541, 32.472763, 24.432783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841972, 32.194267, 24.574749>,  <40.692230, 32.027168, 24.659929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841972, 32.194267, 24.574749>,  <41.091541, 32.472763, 24.432783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841972, 32.194267, 24.574749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499942, -0.704670, -0.503487,
		0.600646, -0.136702, 0.787742,
		-0.623925, -0.696242, 0.354914,
		40.654797, 31.985395, 24.681223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560638, 31.963873, 24.658270>,  <41.091541, 32.472763, 24.432783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560638, 31.963873, 24.658270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200432, 31.791574, 24.634525>,  <40.984306, 31.688196, 24.620277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200432, 31.791574, 24.634525>,  <41.560638, 31.963873, 24.658270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200432, 31.791574, 24.634525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392552, -0.746665, -0.537024,
		0.186996, -0.506903, 0.841476,
		-0.900519, -0.430745, -0.059363,
		40.930275, 31.662352, 24.616716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696045, 31.171926, 24.794674>,  <41.560638, 31.963873, 24.658270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696045, 31.171926, 24.794674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349056, 31.205269, 24.598490>,  <41.140865, 31.225275, 24.480780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349056, 31.205269, 24.598490>,  <41.696045, 31.171926, 24.794674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349056, 31.205269, 24.598490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365770, -0.561374, -0.742342,
		-0.337212, -0.823353, 0.456484,
		-0.867468, 0.083358, -0.490460,
		41.088818, 31.230276, 24.451351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525009, 30.421619, 24.608608>,  <41.696045, 31.171926, 24.794674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525009, 30.421619, 24.608608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317181, 30.675493, 24.379797>,  <41.192482, 30.827818, 24.242510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317181, 30.675493, 24.379797>,  <41.525009, 30.421619, 24.608608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317181, 30.675493, 24.379797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346995, -0.455052, -0.820075,
		-0.780793, -0.624580, 0.016200,
		-0.519574, 0.634687, -0.572027,
		41.161308, 30.865900, 24.208189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949974, 29.809286, 24.592457>,  <41.525009, 30.421619, 24.608608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949974, 29.809286, 24.592457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294731, 29.685656, 24.753260>,  <42.501587, 29.611477, 24.849741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294731, 29.685656, 24.753260>,  <41.949974, 29.809286, 24.592457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294731, 29.685656, 24.753260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418457, 0.014259, 0.908124,
		-0.286415, -0.950929, -0.117047,
		0.861893, -0.309079, 0.402007,
		42.553299, 29.592932, 24.873861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744774, 29.472349, 25.318356>,  <41.949974, 29.809286, 24.592457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744774, 29.472349, 25.318356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136368, 29.548697, 25.347092>,  <42.371323, 29.594505, 25.364334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136368, 29.548697, 25.347092>,  <41.744774, 29.472349, 25.318356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136368, 29.548697, 25.347092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139691, 0.370921, 0.918098,
		0.148587, -0.908838, 0.389788,
		0.978983, 0.190868, 0.071843,
		42.430061, 29.605957, 25.368645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883099, 29.153849, 25.939754>,  <41.744774, 29.472349, 25.318356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883099, 29.153849, 25.939754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180714, 29.417223, 25.894377>,  <42.359283, 29.575247, 25.867151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180714, 29.417223, 25.894377>,  <41.883099, 29.153849, 25.939754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180714, 29.417223, 25.894377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054800, 0.229357, 0.971799,
		0.665886, -0.716839, 0.206733,
		0.744039, 0.658436, -0.113442,
		42.403927, 29.614754, 25.860344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180721, 29.198420, 26.477785>,  <41.883099, 29.153849, 25.939754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180721, 29.198420, 26.477785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311962, 29.541006, 26.318378>,  <42.390709, 29.746557, 26.222734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311962, 29.541006, 26.318378>,  <42.180721, 29.198420, 26.477785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311962, 29.541006, 26.318378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060383, 0.440022, 0.895954,
		0.942709, -0.269905, 0.196090,
		0.328106, 0.856465, -0.398515,
		42.410393, 29.797945, 26.198824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574921, 29.456047, 27.002542>,  <42.180721, 29.198420, 26.477785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574921, 29.456047, 27.002542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501854, 29.759521, 26.752415>,  <42.458015, 29.941607, 26.602337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501854, 29.759521, 26.752415>,  <42.574921, 29.456047, 27.002542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501854, 29.759521, 26.752415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098567, 0.618686, 0.779431,
		0.978222, 0.204010, -0.038230,
		-0.182664, 0.758688, -0.625321,
		42.447056, 29.987127, 26.564819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117542, 30.016548, 27.101686>,  <42.574921, 29.456047, 27.002542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117542, 30.016548, 27.101686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771984, 30.153030, 26.953491>,  <42.564648, 30.234921, 26.864574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771984, 30.153030, 26.953491>,  <43.117542, 30.016548, 27.101686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771984, 30.153030, 26.953491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027523, 0.702500, 0.711151,
		0.502917, 0.624558, -0.597496,
		-0.863897, 0.341205, -0.370489,
		42.512814, 30.255392, 26.842344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231003, 30.745226, 27.152166>,  <43.117542, 30.016548, 27.101686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231003, 30.745226, 27.152166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841141, 30.668098, 27.106783>,  <42.607224, 30.621822, 27.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841141, 30.668098, 27.106783>,  <43.231003, 30.745226, 27.152166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841141, 30.668098, 27.106783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214830, 0.665055, 0.715228,
		-0.062452, 0.721473, -0.689620,
		-0.974653, -0.192818, -0.113460,
		42.548744, 30.610252, 27.072744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009830, 31.375088, 27.287498>,  <43.231003, 30.745226, 27.152166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009830, 31.375088, 27.287498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681442, 31.150585, 27.329453>,  <42.484409, 31.015882, 27.354626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681442, 31.150585, 27.329453>,  <43.009830, 31.375088, 27.287498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681442, 31.150585, 27.329453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308387, 0.590462, 0.745823,
		-0.480529, 0.579952, -0.657835,
		-0.820968, -0.561258, 0.104885,
		42.435150, 30.982208, 27.360918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540173, 31.847849, 27.417316>,  <43.009830, 31.375088, 27.287498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540173, 31.847849, 27.417316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335072, 31.521242, 27.523436>,  <42.212009, 31.325279, 27.587107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335072, 31.521242, 27.523436>,  <42.540173, 31.847849, 27.417316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335072, 31.521242, 27.523436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409638, 0.504252, 0.760215,
		-0.754505, 0.281128, -0.593034,
		-0.512756, -0.816515, 0.265300,
		42.181244, 31.276287, 27.603025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852867, 32.076374, 27.415812>,  <42.540173, 31.847849, 27.417316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852867, 32.076374, 27.415812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883801, 31.753756, 27.650249>,  <41.902359, 31.560184, 27.790913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883801, 31.753756, 27.650249>,  <41.852867, 32.076374, 27.415812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883801, 31.753756, 27.650249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525586, 0.466558, 0.711395,
		-0.847219, -0.363055, -0.387829,
		0.077330, -0.806545, 0.586093,
		41.907001, 31.511791, 27.826078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216389, 32.084667, 27.803154>,  <41.852867, 32.076374, 27.415812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216389, 32.084667, 27.803154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457645, 31.848364, 28.017529>,  <41.602398, 31.706581, 28.146152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457645, 31.848364, 28.017529>,  <41.216389, 32.084667, 27.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457645, 31.848364, 28.017529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310804, 0.444735, 0.840007,
		-0.734590, -0.673213, 0.084627,
		0.603140, -0.590758, 0.535935,
		41.638588, 31.671137, 28.178308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824440, 31.685646, 28.218281>,  <41.216389, 32.084667, 27.803154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824440, 31.685646, 28.218281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176506, 31.675430, 28.407875>,  <41.387745, 31.669300, 28.521631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176506, 31.675430, 28.407875>,  <40.824440, 31.685646, 28.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176506, 31.675430, 28.407875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415004, 0.443288, 0.794523,
		-0.230406, -0.896015, 0.379565,
		0.880161, -0.025542, 0.473986,
		41.440556, 31.667768, 28.550072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701931, 31.423340, 28.848047>,  <40.824440, 31.685646, 28.218281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701931, 31.423340, 28.848047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035305, 31.644026, 28.860649>,  <41.235329, 31.776438, 28.868210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035305, 31.644026, 28.860649>,  <40.701931, 31.423340, 28.848047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035305, 31.644026, 28.860649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322741, 0.439674, 0.838168,
		0.448593, -0.708718, 0.544502,
		0.833428, 0.551729, 0.031498,
		41.285336, 31.809540, 28.870102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984951, 31.519510, 29.630276>,  <40.701931, 31.423340, 28.848047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984951, 31.519510, 29.630276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104511, 31.813057, 29.386278>,  <41.176247, 31.989185, 29.239880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104511, 31.813057, 29.386278>,  <40.984951, 31.519510, 29.630276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104511, 31.813057, 29.386278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282749, 0.678622, 0.677882,
		0.911433, -0.030145, 0.410343,
		0.298903, 0.733869, -0.609995,
		41.194183, 32.033218, 29.203279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312832, 32.012905, 29.988405>,  <40.984951, 31.519510, 29.630276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312832, 32.012905, 29.988405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229919, 32.263268, 29.687666>,  <41.180172, 32.413486, 29.507221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229919, 32.263268, 29.687666>,  <41.312832, 32.012905, 29.988405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229919, 32.263268, 29.687666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099653, 0.751035, 0.652699,
		0.973193, 0.210214, -0.093300,
		-0.207278, 0.625905, -0.751850,
		41.167736, 32.451038, 29.462111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720497, 32.658871, 29.981068>,  <41.312832, 32.012905, 29.988405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720497, 32.658871, 29.981068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424988, 32.770279, 29.735584>,  <41.247681, 32.837124, 29.588293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424988, 32.770279, 29.735584>,  <41.720497, 32.658871, 29.981068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424988, 32.770279, 29.735584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127991, 0.836056, 0.533506,
		0.661690, 0.472689, -0.582007,
		-0.738773, 0.278524, -0.613710,
		41.203358, 32.853836, 29.551472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787930, 33.367474, 29.842392>,  <41.720497, 32.658871, 29.981068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787930, 33.367474, 29.842392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400326, 33.299908, 29.770292>,  <41.167763, 33.259369, 29.727032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400326, 33.299908, 29.770292>,  <41.787930, 33.367474, 29.842392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400326, 33.299908, 29.770292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233986, 0.861588, 0.450464,
		0.079211, 0.478680, -0.874409,
		-0.969008, -0.168917, -0.180251,
		41.109623, 33.249233, 29.716217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463387, 34.029480, 29.755903>,  <41.787930, 33.367474, 29.842392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463387, 34.029480, 29.755903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138802, 33.798008, 29.788521>,  <40.944050, 33.659122, 29.808092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138802, 33.798008, 29.788521>,  <41.463387, 34.029480, 29.755903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138802, 33.798008, 29.788521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484906, 0.744608, 0.458721,
		-0.326174, 0.332694, -0.884831,
		-0.811466, -0.578683, 0.081546,
		40.895363, 33.624405, 29.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954193, 34.485699, 29.673620>,  <41.463387, 34.029480, 29.755903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954193, 34.485699, 29.673620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776043, 34.173450, 29.849016>,  <40.669151, 33.986103, 29.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776043, 34.173450, 29.849016>,  <40.954193, 34.485699, 29.673620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776043, 34.173450, 29.849016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477244, 0.621351, 0.621419,
		-0.757547, 0.067499, -0.649282,
		-0.445377, -0.780620, 0.438489,
		40.642429, 33.939266, 29.980562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172714, 34.554955, 29.615883>,  <40.954193, 34.485699, 29.673620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172714, 34.554955, 29.615883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301228, 34.356388, 29.938459>,  <40.378338, 34.237247, 30.132006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301228, 34.356388, 29.938459>,  <40.172714, 34.554955, 29.615883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301228, 34.356388, 29.938459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583064, 0.567335, 0.581522,
		-0.746198, -0.657042, -0.107164,
		0.321287, -0.496414, 0.806442,
		40.397614, 34.207462, 30.180391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589424, 34.643383, 30.077065>,  <40.172714, 34.554955, 29.615883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589424, 34.643383, 30.077065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874809, 34.523544, 30.330429>,  <40.046040, 34.451641, 30.482449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874809, 34.523544, 30.330429>,  <39.589424, 34.643383, 30.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874809, 34.523544, 30.330429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375400, 0.599857, 0.706573,
		-0.591644, -0.741898, 0.315508,
		0.713465, -0.299598, 0.633411,
		40.088848, 34.433666, 30.520452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234390, 34.559761, 30.776384>,  <39.589424, 34.643383, 30.077065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234390, 34.559761, 30.776384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620583, 34.554333, 30.880430>,  <39.852299, 34.551075, 30.942858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620583, 34.554333, 30.880430>,  <39.234390, 34.559761, 30.776384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620583, 34.554333, 30.880430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234838, 0.386632, 0.891833,
		-0.112675, -0.922134, 0.370098,
		0.965482, -0.013574, 0.260116,
		39.910229, 34.550262, 30.958466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293110, 34.173531, 31.401865>,  <39.234390, 34.559761, 30.776384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293110, 34.173531, 31.401865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588585, 34.439148, 31.355591>,  <39.765869, 34.598518, 31.327826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588585, 34.439148, 31.355591>,  <39.293110, 34.173531, 31.401865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588585, 34.439148, 31.355591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242885, 0.422330, 0.873295,
		0.628764, -0.616995, 0.473258,
		0.738690, 0.664044, -0.115687,
		39.810192, 34.638359, 31.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597523, 34.129879, 32.061764>,  <39.293110, 34.173531, 31.401865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597523, 34.129879, 32.061764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742817, 34.465401, 31.899542>,  <39.829994, 34.666714, 31.802210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742817, 34.465401, 31.899542>,  <39.597523, 34.129879, 32.061764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742817, 34.465401, 31.899542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202823, 0.496032, 0.844284,
		0.909354, -0.224416, 0.350304,
		0.363232, 0.838802, -0.405552,
		39.851788, 34.717041, 31.777876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982079, 34.448456, 32.621422>,  <39.597523, 34.129879, 32.061764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982079, 34.448456, 32.621422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920696, 34.741821, 32.356529>,  <39.883865, 34.917839, 32.197594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920696, 34.741821, 32.356529>,  <39.982079, 34.448456, 32.621422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920696, 34.741821, 32.356529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143625, 0.646501, 0.749272,
		0.977662, 0.210096, 0.006125,
		-0.153459, 0.733414, -0.662234,
		39.874660, 34.961845, 32.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534416, 34.885963, 32.597603>,  <39.982079, 34.448456, 32.621422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534416, 34.885963, 32.597603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231976, 35.113609, 32.468349>,  <40.050510, 35.250198, 32.390797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231976, 35.113609, 32.468349>,  <40.534416, 34.885963, 32.597603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231976, 35.113609, 32.468349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061943, 0.553759, 0.830370,
		0.651516, 0.607828, -0.453952,
		-0.756102, 0.569118, -0.323132,
		40.005146, 35.284344, 32.371410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770969, 35.495415, 32.766598>,  <40.534416, 34.885963, 32.597603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770969, 35.495415, 32.766598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378979, 35.558205, 32.717594>,  <40.143784, 35.595879, 32.688190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378979, 35.558205, 32.717594>,  <40.770969, 35.495415, 32.766598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378979, 35.558205, 32.717594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004424, 0.632272, 0.774734,
		0.199072, 0.758678, -0.620305,
		-0.979975, 0.156971, -0.122511,
		40.084988, 35.605297, 32.680840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735714, 36.269516, 32.801540>,  <40.770969, 35.495415, 32.766598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735714, 36.269516, 32.801540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359955, 36.135456, 32.830425>,  <40.134499, 36.055019, 32.847755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359955, 36.135456, 32.830425>,  <40.735714, 36.269516, 32.801540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359955, 36.135456, 32.830425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113949, 0.503867, 0.856232,
		-0.323350, 0.796111, -0.511519,
		-0.939394, -0.335150, 0.072210,
		40.078136, 36.034912, 32.852089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429848, 36.885704, 33.119598>,  <40.735714, 36.269516, 32.801540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429848, 36.885704, 33.119598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176182, 36.582397, 33.180069>,  <40.023983, 36.400414, 33.216351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176182, 36.582397, 33.180069>,  <40.429848, 36.885704, 33.119598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176182, 36.582397, 33.180069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195035, 0.346082, 0.917709,
		-0.748192, 0.552497, -0.367364,
		-0.634169, -0.758271, 0.151179,
		39.985931, 36.354916, 33.225422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802254, 37.218903, 33.261745>,  <40.429848, 36.885704, 33.119598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802254, 37.218903, 33.261745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727486, 36.848335, 33.392467>,  <39.682625, 36.625996, 33.470901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727486, 36.848335, 33.392467>,  <39.802254, 37.218903, 33.261745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727486, 36.848335, 33.392467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468387, 0.376468, 0.799303,
		-0.863525, -0.003669, -0.504292,
		-0.186917, -0.926422, 0.326809,
		39.671410, 36.570408, 33.490509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049271, 37.171318, 33.414165>,  <39.802254, 37.218903, 33.261745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049271, 37.171318, 33.414165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225189, 36.898743, 33.648163>,  <39.330742, 36.735195, 33.788559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225189, 36.898743, 33.648163>,  <39.049271, 37.171318, 33.414165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225189, 36.898743, 33.648163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511958, 0.344943, 0.786711,
		-0.737886, -0.645485, -0.197164,
		0.439799, -0.681442, 0.584990,
		39.357128, 36.694309, 33.823658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527634, 36.879700, 33.866489>,  <39.049271, 37.171318, 33.414165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527634, 36.879700, 33.866489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882572, 36.823330, 34.042103>,  <39.095535, 36.789509, 34.147469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882572, 36.823330, 34.042103>,  <38.527634, 36.879700, 33.866489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882572, 36.823330, 34.042103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394602, 0.260469, 0.881161,
		-0.238534, -0.955142, 0.175516,
		0.887350, -0.140928, 0.439032,
		39.148777, 36.781052, 34.173813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428288, 36.506145, 34.451229>,  <38.527634, 36.879700, 33.866489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428288, 36.506145, 34.451229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782127, 36.679554, 34.519981>,  <38.994431, 36.783600, 34.561234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782127, 36.679554, 34.519981>,  <38.428288, 36.506145, 34.451229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782127, 36.679554, 34.519981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326615, 0.312838, 0.891883,
		0.332899, -0.845089, 0.418334,
		0.884591, 0.433541, 0.171876,
		39.047508, 36.809612, 34.571548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603516, 36.247318, 35.051991>,  <38.428288, 36.506145, 34.451229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603516, 36.247318, 35.051991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809868, 36.588757, 35.023033>,  <38.933678, 36.793621, 35.005661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809868, 36.588757, 35.023033>,  <38.603516, 36.247318, 35.051991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809868, 36.588757, 35.023033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269981, 0.242198, 0.931907,
		0.813005, -0.461208, 0.355400,
		0.515881, 0.853597, -0.072391,
		38.964630, 36.844837, 35.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970890, 36.239052, 35.601017>,  <38.603516, 36.247318, 35.051991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970890, 36.239052, 35.601017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933636, 36.620895, 35.487846>,  <38.911282, 36.850002, 35.419945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933636, 36.620895, 35.487846>,  <38.970890, 36.239052, 35.601017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933636, 36.620895, 35.487846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347576, 0.235107, 0.907698,
		0.933015, 0.182879, 0.309902,
		-0.093139, 0.954610, -0.282922,
		38.905693, 36.907280, 35.402969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284866, 36.620506, 36.038925>,  <38.970890, 36.239052, 35.601017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284866, 36.620506, 36.038925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051086, 36.887276, 35.854050>,  <38.910816, 37.047337, 35.743122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051086, 36.887276, 35.854050>,  <39.284866, 36.620506, 36.038925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051086, 36.887276, 35.854050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330733, 0.324345, 0.886237,
		0.740965, 0.670827, 0.031010,
		-0.584454, 0.666926, -0.462193,
		38.875751, 37.087353, 35.715393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192631, 36.999138, 36.623196>,  <39.284866, 36.620506, 36.038925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192631, 36.999138, 36.623196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916447, 37.157932, 36.381317>,  <38.750736, 37.253208, 36.236191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916447, 37.157932, 36.381317>,  <39.192631, 36.999138, 36.623196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916447, 37.157932, 36.381317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462528, 0.400444, 0.791020,
		0.556174, 0.825861, -0.092874,
		-0.690463, 0.396988, -0.604700,
		38.709309, 37.277027, 36.199905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065769, 37.564632, 36.895195>,  <39.192631, 36.999138, 36.623196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065769, 37.564632, 36.895195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745564, 37.504673, 36.663090>,  <38.553440, 37.468697, 36.523827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745564, 37.504673, 36.663090>,  <39.065769, 37.564632, 36.895195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745564, 37.504673, 36.663090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566747, 0.504165, 0.651625,
		0.194876, 0.850500, -0.488543,
		-0.800513, -0.149894, -0.580267,
		38.505409, 37.459705, 36.489010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863262, 38.187710, 36.616142>,  <39.065769, 37.564632, 36.895195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863262, 38.187710, 36.616142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551365, 37.938164, 36.637314>,  <38.364227, 37.788437, 36.650017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551365, 37.938164, 36.637314>,  <38.863262, 38.187710, 36.616142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551365, 37.938164, 36.637314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394220, 0.554877, 0.732599,
		-0.486411, 0.550370, -0.678599,
		-0.779740, -0.623862, 0.052932,
		38.317444, 37.751007, 36.653194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327381, 38.657543, 36.861813>,  <38.863262, 38.187710, 36.616142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327381, 38.657543, 36.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198540, 38.281773, 36.908680>,  <38.121235, 38.056309, 36.936802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198540, 38.281773, 36.908680>,  <38.327381, 38.657543, 36.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198540, 38.281773, 36.908680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653404, 0.310164, 0.690551,
		-0.685062, 0.145874, -0.713730,
		-0.322107, -0.939425, 0.117167,
		38.101910, 37.999947, 36.943829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593876, 38.796928, 36.813160>,  <38.327381, 38.657543, 36.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593876, 38.796928, 36.813160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728798, 38.464752, 36.990517>,  <37.809750, 38.265446, 37.096931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728798, 38.464752, 36.990517>,  <37.593876, 38.796928, 36.813160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728798, 38.464752, 36.990517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666299, 0.122134, 0.735615,
		-0.665037, -0.543557, -0.512125,
		0.337300, -0.830439, 0.443395,
		37.829987, 38.215622, 37.123535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048248, 38.374226, 37.030769>,  <37.593876, 38.796928, 36.813160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048248, 38.374226, 37.030769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331341, 38.227524, 37.272305>,  <37.501194, 38.139503, 37.417225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331341, 38.227524, 37.272305>,  <37.048248, 38.374226, 37.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331341, 38.227524, 37.272305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597595, 0.145118, 0.788556,
		-0.376831, -0.918931, -0.116465,
		0.707728, -0.366751, 0.603834,
		37.543659, 38.117500, 37.453453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702801, 38.149666, 37.618217>,  <37.048248, 38.374226, 37.030769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702801, 38.149666, 37.618217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081165, 38.149467, 37.747986>,  <37.308186, 38.149349, 37.825848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081165, 38.149467, 37.747986>,  <36.702801, 38.149666, 37.618217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081165, 38.149467, 37.747986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303208, 0.354336, 0.884597,
		-0.115396, -0.935118, 0.335019,
		0.945912, -0.000498, 0.324424,
		37.364941, 38.149319, 37.845314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705727, 37.854755, 38.203903>,  <36.702801, 38.149666, 37.618217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705727, 37.854755, 38.203903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062630, 38.025494, 38.262787>,  <37.276772, 38.127937, 38.298119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062630, 38.025494, 38.262787>,  <36.705727, 37.854755, 38.203903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062630, 38.025494, 38.262787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364708, 0.489113, 0.792311,
		0.266193, -0.760638, 0.592091,
		0.892261, 0.426848, 0.147212,
		37.330307, 38.153549, 38.306950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894268, 37.798725, 38.893978>,  <36.705727, 37.854755, 38.203903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894268, 37.798725, 38.893978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079052, 38.131371, 38.770683>,  <37.189922, 38.330959, 38.696705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079052, 38.131371, 38.770683>,  <36.894268, 37.798725, 38.893978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079052, 38.131371, 38.770683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353526, 0.491403, 0.795953,
		0.813396, -0.258727, 0.521005,
		0.461958, 0.831615, -0.308239,
		37.217640, 38.380856, 38.678211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098248, 38.168068, 39.411659>,  <36.894268, 37.798725, 38.893978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098248, 38.168068, 39.411659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083641, 38.457630, 39.136086>,  <37.074879, 38.631367, 38.970741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083641, 38.457630, 39.136086>,  <37.098248, 38.168068, 39.411659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083641, 38.457630, 39.136086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400407, 0.621039, 0.673783,
		0.915609, 0.300456, 0.267181,
		-0.036513, 0.723903, -0.688934,
		37.072689, 38.674801, 38.929405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292461, 38.691875, 39.665501>,  <37.098248, 38.168068, 39.411659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292461, 38.691875, 39.665501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130260, 38.872643, 39.347675>,  <37.032940, 38.981102, 39.156979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130260, 38.872643, 39.347675>,  <37.292461, 38.691875, 39.665501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130260, 38.872643, 39.347675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415764, 0.682936, 0.600616,
		0.814067, 0.573904, -0.089042,
		-0.405506, 0.451921, -0.794564,
		37.008610, 39.008221, 39.109306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472176, 39.405998, 39.688004>,  <37.292461, 38.691875, 39.665501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472176, 39.405998, 39.688004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132271, 39.370117, 39.480213>,  <36.928329, 39.348591, 39.355537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132271, 39.370117, 39.480213>,  <37.472176, 39.405998, 39.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132271, 39.370117, 39.480213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429223, 0.689830, 0.583011,
		0.306056, 0.718393, -0.624693,
		-0.849763, -0.089698, -0.519477,
		36.877342, 39.343208, 39.324371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266827, 40.058971, 39.276203>,  <37.472176, 39.405998, 39.688004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266827, 40.058971, 39.276203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945808, 39.859940, 39.407860>,  <36.753197, 39.740520, 39.486855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945808, 39.859940, 39.407860>,  <37.266827, 40.058971, 39.276203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945808, 39.859940, 39.407860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246644, 0.779073, 0.576378,
		-0.543223, 0.381387, -0.747966,
		-0.802543, -0.497583, 0.329144,
		36.705044, 39.710663, 39.506603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948860, 40.506153, 39.583786>,  <37.266827, 40.058971, 39.276203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948860, 40.506153, 39.583786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684170, 40.217442, 39.664932>,  <36.525356, 40.044212, 39.713619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684170, 40.217442, 39.664932>,  <36.948860, 40.506153, 39.583786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684170, 40.217442, 39.664932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480523, 0.615983, 0.624230,
		-0.575519, 0.315586, -0.754442,
		-0.661721, -0.721783, 0.202864,
		36.485653, 40.000908, 39.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190506, 40.673244, 39.447693>,  <36.948860, 40.506153, 39.583786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190506, 40.673244, 39.447693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186161, 40.433372, 39.767761>,  <36.183556, 40.289452, 39.959801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186161, 40.433372, 39.767761>,  <36.190506, 40.673244, 39.447693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186161, 40.433372, 39.767761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754184, 0.530342, 0.387225,
		-0.656573, -0.599270, -0.458025,
		-0.010858, -0.599677, 0.800168,
		36.182903, 40.253468, 40.007812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488243, 40.507454, 39.629368>,  <36.190506, 40.673244, 39.447693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488243, 40.507454, 39.629368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702530, 40.433449, 39.958920>,  <35.831100, 40.389046, 40.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702530, 40.433449, 39.958920>,  <35.488243, 40.507454, 39.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702530, 40.433449, 39.958920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630850, 0.560867, 0.536150,
		-0.561283, -0.806969, 0.183748,
		0.535714, -0.185014, 0.823881,
		35.863243, 40.377945, 40.206085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111160, 40.253738, 40.175026>,  <35.488243, 40.507454, 39.629368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111160, 40.253738, 40.175026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430092, 40.422596, 40.347565>,  <35.621449, 40.523911, 40.451088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430092, 40.422596, 40.347565>,  <35.111160, 40.253738, 40.175026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430092, 40.422596, 40.347565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592429, 0.683962, 0.425703,
		-0.115319, -0.594970, 0.795433,
		0.797326, 0.422146, 0.431351,
		35.669289, 40.549240, 40.476971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018139, 40.305218, 40.901039>,  <35.111160, 40.253738, 40.175026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018139, 40.305218, 40.901039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270706, 40.598190, 40.799171>,  <35.422245, 40.773975, 40.738052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270706, 40.598190, 40.799171>,  <35.018139, 40.305218, 40.901039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270706, 40.598190, 40.799171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643267, 0.678135, 0.355444,
		0.433040, -0.060612, 0.899335,
		0.631414, 0.732434, -0.254670,
		35.460129, 40.817921, 40.722771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919579, 40.875648, 41.406475>,  <35.018139, 40.305218, 40.901039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919579, 40.875648, 41.406475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147106, 41.049938, 41.127449>,  <35.283623, 41.154510, 40.960033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147106, 41.049938, 41.127449>,  <34.919579, 40.875648, 41.406475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147106, 41.049938, 41.127449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406228, 0.886304, 0.222361,
		0.715142, 0.156889, 0.681144,
		0.568815, 0.435720, -0.697566,
		35.317749, 41.180653, 40.918179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869404, 41.529766, 41.624882>,  <34.919579, 40.875648, 41.406475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869404, 41.529766, 41.624882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016323, 41.607777, 41.261112>,  <35.104473, 41.654583, 41.042850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016323, 41.607777, 41.261112>,  <34.869404, 41.529766, 41.624882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016323, 41.607777, 41.261112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363482, 0.930112, 0.052659,
		0.856138, 0.311218, 0.412518,
		0.367299, 0.195026, -0.909426,
		35.126514, 41.666283, 40.988285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377773, 42.069275, 41.661564>,  <34.869404, 41.529766, 41.624882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377773, 42.069275, 41.661564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184879, 42.041122, 41.312279>,  <35.069141, 42.024231, 41.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184879, 42.041122, 41.312279>,  <35.377773, 42.069275, 41.661564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184879, 42.041122, 41.312279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425793, 0.889941, 0.163419,
		0.765604, 0.450613, -0.459126,
		-0.482234, -0.070379, -0.873211,
		35.040211, 42.020008, 41.050316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380787, 42.769527, 41.249828>,  <35.377773, 42.069275, 41.661564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380787, 42.769527, 41.249828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076736, 42.589764, 41.062111>,  <34.894306, 42.481907, 40.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076736, 42.589764, 41.062111>,  <35.380787, 42.769527, 41.249828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076736, 42.589764, 41.062111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535303, 0.842510, 0.060232,
		0.368318, 0.296999, -0.880985,
		-0.760127, -0.449409, -0.469296,
		34.848698, 42.454941, 40.921322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083195, 43.282440, 40.682747>,  <35.380787, 42.769527, 41.249828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083195, 43.282440, 40.682747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804058, 43.008991, 40.768234>,  <34.636578, 42.844921, 40.819527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804058, 43.008991, 40.768234>,  <35.083195, 43.282440, 40.682747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804058, 43.008991, 40.768234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707296, 0.704764, -0.055141,
		-0.112925, -0.189642, -0.975338,
		-0.697840, -0.683626, 0.213718,
		34.594707, 42.803902, 40.832348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408009, 43.299149, 40.250381>,  <35.083195, 43.282440, 40.682747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408009, 43.299149, 40.250381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454643, 43.234859, 40.642418>,  <34.482624, 43.196285, 40.877640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454643, 43.234859, 40.642418>,  <34.408009, 43.299149, 40.250381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454643, 43.234859, 40.642418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436565, 0.878081, 0.195922,
		-0.892087, -0.450714, 0.032207,
		0.116585, -0.160719, 0.980090,
		34.489620, 43.186646, 40.936443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712971, 43.425785, 40.507961>,  <34.408009, 43.299149, 40.250381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712971, 43.425785, 40.507961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015945, 43.489357, 40.761269>,  <34.197731, 43.527500, 40.913254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015945, 43.489357, 40.761269>,  <33.712971, 43.425785, 40.507961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015945, 43.489357, 40.761269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377931, 0.897635, 0.226757,
		-0.532408, -0.411087, 0.739966,
		0.757436, 0.158928, 0.633271,
		34.243176, 43.537037, 40.951248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128796, 44.080959, 40.759235>,  <33.712971, 43.425785, 40.507961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128796, 44.080959, 40.759235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852322, 44.223660, 40.507843>,  <33.686436, 44.309280, 40.357006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852322, 44.223660, 40.507843>,  <34.128796, 44.080959, 40.759235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852322, 44.223660, 40.507843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031416, 0.883668, 0.467059,
		0.721992, 0.303081, -0.621989,
		-0.691188, 0.356753, -0.628480,
		33.644966, 44.330685, 40.319298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091328, 43.933338, 41.421631>,  <34.128796, 44.080959, 40.759235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091328, 43.933338, 41.421631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772789, 43.802826, 41.217918>,  <33.581665, 43.724518, 41.095692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772789, 43.802826, 41.217918>,  <34.091328, 43.933338, 41.421631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772789, 43.802826, 41.217918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321043, -0.941635, 0.101267,
		-0.512602, -0.082859, 0.854619,
		-0.796348, -0.326279, -0.509285,
		33.533886, 43.704941, 41.065132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939522, 43.483479, 41.903366>,  <34.091328, 43.933338, 41.421631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939522, 43.483479, 41.903366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737778, 43.390701, 41.570663>,  <33.616730, 43.335037, 41.371040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737778, 43.390701, 41.570663>,  <33.939522, 43.483479, 41.903366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737778, 43.390701, 41.570663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414604, -0.909999, 0.002350,
		-0.757447, -0.343666, 0.555129,
		-0.504359, -0.231939, -0.831761,
		33.586472, 43.321121, 41.321136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976330, 42.699326, 41.912636>,  <33.939522, 43.483479, 41.903366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976330, 42.699326, 41.912636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845020, 42.789406, 41.545700>,  <33.766235, 42.843452, 41.325539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845020, 42.789406, 41.545700>,  <33.976330, 42.699326, 41.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845020, 42.789406, 41.545700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502902, -0.780411, -0.371548,
		-0.799577, -0.583305, 0.142939,
		-0.328277, 0.225197, -0.917344,
		33.746536, 42.856964, 41.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770088, 42.135235, 41.583351>,  <33.976330, 42.699326, 41.912636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770088, 42.135235, 41.583351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831177, 42.374763, 41.268875>,  <33.867828, 42.518478, 41.080189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831177, 42.374763, 41.268875>,  <33.770088, 42.135235, 41.583351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831177, 42.374763, 41.268875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585309, -0.695796, -0.416271,
		-0.796298, -0.396592, -0.456754,
		0.152718, 0.598818, -0.786189,
		33.876991, 42.554409, 41.033020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711029, 41.827171, 40.990826>,  <33.770088, 42.135235, 41.583351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711029, 41.827171, 40.990826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950127, 42.140541, 40.922768>,  <34.093586, 42.328564, 40.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950127, 42.140541, 40.922768>,  <33.711029, 41.827171, 40.990826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950127, 42.140541, 40.922768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692303, -0.611447, -0.383209,
		-0.404252, 0.111266, -0.907855,
		0.597743, 0.783423, -0.170149,
		34.129448, 42.375568, 40.871723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869473, 41.941589, 40.294605>,  <33.711029, 41.827171, 40.990826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869473, 41.941589, 40.294605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185768, 42.080391, 40.496326>,  <34.375546, 42.163670, 40.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185768, 42.080391, 40.496326>,  <33.869473, 41.941589, 40.294605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185768, 42.080391, 40.496326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563636, -0.734128, -0.378643,
		0.238830, 0.583650, -0.776088,
		0.790743, 0.347000, 0.504298,
		34.422993, 42.184490, 40.647617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423466, 41.701138, 39.929279>,  <33.869473, 41.941589, 40.294605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423466, 41.701138, 39.929279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592712, 41.780735, 40.282860>,  <34.694260, 41.828495, 40.495007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592712, 41.780735, 40.282860>,  <34.423466, 41.701138, 39.929279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592712, 41.780735, 40.282860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642228, -0.754051, -0.137662,
		0.639150, 0.625946, -0.446854,
		0.423120, 0.198996, 0.883952,
		34.719646, 41.840435, 40.548046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109509, 41.493900, 39.737328>,  <34.423466, 41.701138, 39.929279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109509, 41.493900, 39.737328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082680, 41.524429, 40.135258>,  <35.066582, 41.542747, 40.374016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082680, 41.524429, 40.135258>,  <35.109509, 41.493900, 39.737328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082680, 41.524429, 40.135258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706112, -0.700807, 0.101373,
		0.704917, 0.709257, -0.006886,
		-0.067074, 0.076322, 0.994825,
		35.062557, 41.547325, 40.433704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821819, 41.698353, 39.860207>,  <35.109509, 41.493900, 39.737328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821819, 41.698353, 39.860207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673943, 41.527393, 40.190212>,  <35.585217, 41.424816, 40.388218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673943, 41.527393, 40.190212>,  <35.821819, 41.698353, 39.860207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673943, 41.527393, 40.190212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837503, -0.537812, 0.096676,
		0.402385, 0.726695, 0.556777,
		-0.369696, -0.427402, 0.825017,
		35.563034, 41.399174, 40.437717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390461, 41.637226, 40.336784>,  <35.821819, 41.698353, 39.860207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390461, 41.637226, 40.336784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101311, 41.378902, 40.435078>,  <35.927822, 41.223907, 40.494053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101311, 41.378902, 40.435078>,  <36.390461, 41.637226, 40.336784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101311, 41.378902, 40.435078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686533, -0.711542, 0.149599,
		0.078237, 0.276845, 0.957724,
		-0.722877, -0.645806, 0.245732,
		35.884449, 41.185162, 40.508797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725712, 41.089943, 40.828629>,  <36.390461, 41.637226, 40.336784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725712, 41.089943, 40.828629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381817, 40.940289, 40.689564>,  <36.175480, 40.850494, 40.606125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381817, 40.940289, 40.689564>,  <36.725712, 41.089943, 40.828629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381817, 40.940289, 40.689564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463642, -0.857226, -0.224051,
		-0.214198, -0.353816, 0.910458,
		-0.859742, -0.374136, -0.347660,
		36.123894, 40.828049, 40.585266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518581, 40.446815, 41.168129>,  <36.725712, 41.089943, 40.828629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518581, 40.446815, 41.168129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398514, 40.439102, 40.786652>,  <36.326473, 40.434475, 40.557766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398514, 40.439102, 40.786652>,  <36.518581, 40.446815, 41.168129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398514, 40.439102, 40.786652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537587, -0.829316, -0.152430,
		-0.787971, -0.558447, 0.259303,
		-0.300169, -0.019287, -0.953691,
		36.308464, 40.433315, 40.500546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097858, 39.840271, 40.959858>,  <36.518581, 40.446815, 41.168129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097858, 39.840271, 40.959858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291759, 39.990829, 40.644051>,  <36.408100, 40.081165, 40.454567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291759, 39.990829, 40.644051>,  <36.097858, 39.840271, 40.959858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291759, 39.990829, 40.644051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304179, -0.918870, -0.251303,
		-0.820054, -0.118335, -0.559918,
		0.484754, 0.376397, -0.789518,
		36.437187, 40.103748, 40.407196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979435, 39.322227, 40.446850>,  <36.097858, 39.840271, 40.959858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979435, 39.322227, 40.446850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312473, 39.532047, 40.375698>,  <36.512295, 39.657940, 40.333008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312473, 39.532047, 40.375698>,  <35.979435, 39.322227, 40.446850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312473, 39.532047, 40.375698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477038, -0.842289, -0.250966,
		-0.281467, 0.124098, -0.951512,
		0.832593, 0.524546, -0.177877,
		36.562252, 39.689411, 40.322334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196564, 38.943077, 39.913216>,  <35.979435, 39.322227, 40.446850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196564, 38.943077, 39.913216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161980, 39.301243, 39.738514>,  <36.141228, 39.516144, 39.633694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161980, 39.301243, 39.738514>,  <36.196564, 38.943077, 39.913216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161980, 39.301243, 39.738514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454200, -0.354756, -0.817221,
		-0.886694, -0.269032, -0.376026,
		-0.086461, 0.895416, -0.436755,
		36.136040, 39.569866, 39.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805584, 38.937740, 39.245049>,  <36.196564, 38.943077, 39.913216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805584, 38.937740, 39.245049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089535, 39.216675, 39.284645>,  <36.259907, 39.384033, 39.308403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089535, 39.216675, 39.284645>,  <35.805584, 38.937740, 39.245049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089535, 39.216675, 39.284645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436787, -0.325607, -0.838568,
		-0.552529, 0.638519, -0.535728,
		0.709879, 0.697333, 0.098990,
		36.302498, 39.425873, 39.314342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793182, 39.361134, 38.674179>,  <35.805584, 38.937740, 39.245049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793182, 39.361134, 38.674179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148170, 39.326275, 38.855198>,  <36.361164, 39.305359, 38.963810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148170, 39.326275, 38.855198>,  <35.793182, 39.361134, 38.674179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148170, 39.326275, 38.855198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418727, -0.257714, -0.870776,
		0.192512, 0.962283, -0.192224,
		0.887472, -0.087146, 0.452547,
		36.414413, 39.300133, 38.990963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337250, 39.562153, 38.155167>,  <35.793182, 39.361134, 38.674179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337250, 39.562153, 38.155167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522182, 39.369690, 38.453087>,  <36.633144, 39.254211, 38.631840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522182, 39.369690, 38.453087>,  <36.337250, 39.562153, 38.155167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522182, 39.369690, 38.453087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539247, -0.514216, -0.666929,
		0.703888, 0.709979, 0.021722,
		0.462336, -0.481156, 0.744805,
		36.660885, 39.225342, 38.676529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030434, 39.549213, 37.995121>,  <36.337250, 39.562153, 38.155167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030434, 39.549213, 37.995121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067081, 39.304001, 38.309013>,  <37.089069, 39.156876, 38.497349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067081, 39.304001, 38.309013>,  <37.030434, 39.549213, 37.995121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067081, 39.304001, 38.309013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741645, -0.483865, -0.464583,
		0.664506, 0.624558, 0.410316,
		0.091621, -0.613027, 0.784731,
		37.094566, 39.120094, 38.544434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697918, 39.527901, 38.247036>,  <37.030434, 39.549213, 37.995121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697918, 39.527901, 38.247036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532726, 39.175053, 38.337646>,  <37.433613, 38.963345, 38.392014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532726, 39.175053, 38.337646>,  <37.697918, 39.527901, 38.247036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532726, 39.175053, 38.337646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739113, -0.469945, -0.482560,
		0.532131, -0.031858, 0.846063,
		-0.412976, -0.882121, 0.226526,
		37.408833, 38.910416, 38.405605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234016, 38.972038, 38.384666>,  <37.697918, 39.527901, 38.247036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234016, 38.972038, 38.384666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910820, 38.742142, 38.332790>,  <37.716900, 38.604206, 38.301666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910820, 38.742142, 38.332790>,  <38.234016, 38.972038, 38.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910820, 38.742142, 38.332790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560290, -0.681430, -0.470881,
		0.182259, -0.453133, 0.872612,
		-0.807995, -0.574738, -0.129689,
		37.668423, 38.569721, 38.293884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542938, 38.358952, 38.252838>,  <38.234016, 38.972038, 38.384666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542938, 38.358952, 38.252838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174328, 38.276909, 38.120953>,  <37.953159, 38.227684, 38.041821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174328, 38.276909, 38.120953>,  <38.542938, 38.358952, 38.252838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174328, 38.276909, 38.120953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385931, -0.577552, -0.719368,
		-0.042876, -0.790166, 0.611391,
		-0.921531, -0.205112, -0.329713,
		37.897869, 38.215374, 38.022038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471619, 37.627308, 38.125736>,  <38.542938, 38.358952, 38.252838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471619, 37.627308, 38.125736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165413, 37.768314, 37.910435>,  <37.981689, 37.852917, 37.781254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165413, 37.768314, 37.910435>,  <38.471619, 37.627308, 38.125736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165413, 37.768314, 37.910435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310417, -0.530410, -0.788864,
		-0.563589, -0.770968, 0.296607,
		-0.765513, 0.352523, -0.538255,
		37.935757, 37.874069, 37.748959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246780, 37.118591, 37.769341>,  <38.471619, 37.627308, 38.125736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246780, 37.118591, 37.769341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099377, 37.428757, 37.564232>,  <38.010933, 37.614857, 37.441166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099377, 37.428757, 37.564232>,  <38.246780, 37.118591, 37.769341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099377, 37.428757, 37.564232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235779, -0.455595, -0.858395,
		-0.899226, -0.437229, -0.014934,
		-0.368511, 0.775412, -0.512772,
		37.988823, 37.661381, 37.410400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737228, 36.850960, 38.150024>,  <38.246780, 37.118591, 37.769341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737228, 36.850960, 38.150024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134308, 36.832764, 38.194714>,  <39.372555, 36.821846, 38.221527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134308, 36.832764, 38.194714>,  <38.737228, 36.850960, 38.150024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134308, 36.832764, 38.194714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011249, -0.887217, -0.461215,
		0.120107, 0.459103, -0.880226,
		0.992697, -0.045494, 0.111726,
		39.432117, 36.819115, 38.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244797, 37.349762, 37.919430>,  <38.737228, 36.850960, 38.150024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244797, 37.349762, 37.919430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635712, 37.304546, 37.991135>,  <39.870262, 37.277416, 38.034157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635712, 37.304546, 37.991135>,  <39.244797, 37.349762, 37.919430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635712, 37.304546, 37.991135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080785, -0.980707, -0.178008,
		0.195924, 0.159484, -0.967563,
		0.977286, -0.113041, 0.179260,
		39.928898, 37.270634, 38.044914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548588, 37.038551, 37.352844>,  <39.244797, 37.349762, 37.919430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548588, 37.038551, 37.352844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767647, 36.946476, 37.674614>,  <39.899082, 36.891232, 37.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767647, 36.946476, 37.674614>,  <39.548588, 37.038551, 37.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767647, 36.946476, 37.674614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147202, -0.972922, -0.178196,
		0.823657, -0.020823, -0.566706,
		0.547650, -0.230192, 0.804420,
		39.931942, 36.877419, 37.915939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254276, 36.620056, 37.219929>,  <39.548588, 37.038551, 37.352844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254276, 36.620056, 37.219929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062798, 36.563629, 37.566559>,  <39.947910, 36.529774, 37.774536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062798, 36.563629, 37.566559>,  <40.254276, 36.620056, 37.219929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062798, 36.563629, 37.566559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335152, -0.882903, -0.328870,
		0.811492, -0.447863, 0.375365,
		-0.478700, -0.141071, 0.866571,
		39.919189, 36.521309, 37.826530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212185, 36.511421, 36.487091>,  <40.254276, 36.620056, 37.219929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212185, 36.511421, 36.487091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207550, 36.571278, 36.091621>,  <40.204769, 36.607189, 35.854340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207550, 36.571278, 36.091621>,  <40.212185, 36.511421, 36.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207550, 36.571278, 36.091621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999780, 0.019006, -0.008842,
		0.017468, -0.988558, -0.149826,
		-0.011588, 0.149639, -0.988673,
		40.204075, 36.616169, 35.795021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710804, 36.024151, 36.286018>,  <40.212185, 36.511421, 36.487091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710804, 36.024151, 36.286018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667019, 36.312695, 36.012474>,  <40.640747, 36.485821, 35.848347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667019, 36.312695, 36.012474>,  <40.710804, 36.024151, 36.286018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667019, 36.312695, 36.012474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993547, 0.058866, -0.096945,
		-0.029676, -0.690058, -0.723146,
		-0.109466, 0.721357, -0.683858,
		40.634178, 36.529102, 35.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049202, 35.862320, 35.619114>,  <40.710804, 36.024151, 36.286018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049202, 35.862320, 35.619114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028427, 36.258347, 35.671379>,  <41.015965, 36.495964, 35.702740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028427, 36.258347, 35.671379>,  <41.049202, 35.862320, 35.619114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028427, 36.258347, 35.671379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972081, 0.080098, -0.220552,
		-0.228827, 0.115560, -0.966584,
		-0.051934, 0.990066, 0.130662,
		41.012848, 36.555367, 35.710579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460209, 36.316761, 35.187199>,  <41.049202, 35.862320, 35.619114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460209, 36.316761, 35.187199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401318, 36.558537, 35.500370>,  <41.365982, 36.703602, 35.688274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401318, 36.558537, 35.500370>,  <41.460209, 36.316761, 35.187199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401318, 36.558537, 35.500370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989070, 0.083472, 0.121548,
		0.008116, 0.792265, -0.610124,
		-0.147227, 0.604441, 0.782927,
		41.357151, 36.739868, 35.735249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806774, 36.948856, 35.087639>,  <41.460209, 36.316761, 35.187199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806774, 36.948856, 35.087639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776073, 36.853020, 35.474773>,  <41.757652, 36.795517, 35.707054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776073, 36.853020, 35.474773>,  <41.806774, 36.948856, 35.087639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776073, 36.853020, 35.474773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996866, 0.000219, 0.079104,
		-0.019165, 0.970875, 0.238821,
		-0.076748, -0.239588, 0.967836,
		41.753048, 36.781143, 35.765125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219398, 37.400398, 35.528187>,  <41.806774, 36.948856, 35.087639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219398, 37.400398, 35.528187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182800, 37.043880, 35.705830>,  <42.160839, 36.829971, 35.812416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182800, 37.043880, 35.705830>,  <42.219398, 37.400398, 35.528187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182800, 37.043880, 35.705830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995323, -0.067979, 0.068636,
		-0.030985, 0.448308, 0.893342,
		-0.091499, -0.891290, 0.444105,
		42.155350, 36.776493, 35.839062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815006, 37.348156, 36.029114>,  <42.219398, 37.400398, 35.528187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815006, 37.348156, 36.029114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689465, 36.984306, 35.920242>,  <42.614140, 36.765999, 35.854919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689465, 36.984306, 35.920242>,  <42.815006, 37.348156, 36.029114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689465, 36.984306, 35.920242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947479, -0.281494, -0.151805,
		0.061467, -0.305531, 0.950196,
		-0.313855, -0.909622, -0.272182,
		42.595306, 36.711418, 35.838589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942684, 36.740452, 36.513580>,  <42.815006, 37.348156, 36.029114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942684, 36.740452, 36.513580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966782, 36.631870, 36.129353>,  <42.981239, 36.566723, 35.898815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966782, 36.631870, 36.129353>,  <42.942684, 36.740452, 36.513580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966782, 36.631870, 36.129353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940489, -0.306985, 0.145739,
		-0.334440, -0.912181, 0.236803,
		0.060245, -0.271452, -0.960565,
		42.984856, 36.550434, 35.841183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346668, 36.284302, 36.612350>,  <42.942684, 36.740452, 36.513580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346668, 36.284302, 36.612350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354568, 36.372906, 36.222366>,  <43.359310, 36.426067, 35.988377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354568, 36.372906, 36.222366>,  <43.346668, 36.284302, 36.612350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354568, 36.372906, 36.222366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989363, -0.144894, -0.012874,
		-0.144117, -0.964333, -0.222016,
		0.019754, 0.221510, -0.974958,
		43.360497, 36.439358, 35.929878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543686, 35.732513, 36.112949>,  <43.346668, 36.284302, 36.612350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543686, 35.732513, 36.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661594, 36.084984, 35.965092>,  <43.732342, 36.296467, 35.876377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661594, 36.084984, 35.965092>,  <43.543686, 35.732513, 36.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661594, 36.084984, 35.965092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946618, -0.322099, -0.012952,
		-0.130476, -0.346098, -0.929081,
		0.294773, 0.881175, -0.369649,
		43.750027, 36.349335, 35.854198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824944, 35.739979, 35.486404>,  <43.543686, 35.732513, 36.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824944, 35.739979, 35.486404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998676, 36.022194, 35.710392>,  <44.102917, 36.191525, 35.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998676, 36.022194, 35.710392>,  <43.824944, 35.739979, 35.486404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998676, 36.022194, 35.710392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883871, -0.453623, -0.114012,
		0.173576, 0.544461, -0.820630,
		0.434332, 0.705541, 0.559972,
		44.128975, 36.233856, 35.878384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386978, 36.180222, 35.066696>,  <43.824944, 35.739979, 35.486404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386978, 36.180222, 35.066696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483822, 36.147369, 35.453403>,  <44.541927, 36.127659, 35.685429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483822, 36.147369, 35.453403>,  <44.386978, 36.180222, 35.066696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483822, 36.147369, 35.453403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789260, -0.562861, -0.245469,
		0.564316, 0.822461, -0.071453,
		0.242107, -0.082127, 0.966768,
		44.556454, 36.122730, 35.743435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207386, 36.268078, 35.106655>,  <44.386978, 36.180222, 35.066696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207386, 36.268078, 35.106655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043102, 36.088753, 35.424229>,  <44.944534, 35.981155, 35.614773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043102, 36.088753, 35.424229>,  <45.207386, 36.268078, 35.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043102, 36.088753, 35.424229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717267, -0.696444, -0.022222,
		0.562894, 0.560337, 0.607596,
		-0.410705, -0.448317, 0.793935,
		44.919891, 35.954258, 35.662411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641426, 36.209019, 35.645741>,  <45.207386, 36.268078, 35.106655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641426, 36.209019, 35.645741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408421, 35.891819, 35.717110>,  <45.268620, 35.701500, 35.759930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408421, 35.891819, 35.717110>,  <45.641426, 36.209019, 35.645741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408421, 35.891819, 35.717110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811579, -0.555293, 0.181631,
		-0.044956, 0.250607, 0.967045,
		-0.582511, -0.792998, 0.178423,
		45.233665, 35.653919, 35.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100471, 35.780479, 35.398727>,  <45.641426, 36.209019, 35.645741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100471, 35.780479, 35.398727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335289, 35.867355, 35.086777>,  <46.476181, 35.919479, 34.899609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335289, 35.867355, 35.086777>,  <46.100471, 35.780479, 35.398727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335289, 35.867355, 35.086777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784075, 0.087237, 0.614504,
		0.201495, -0.972224, -0.119078,
		0.587048, 0.217185, -0.779875,
		46.511402, 35.932510, 34.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733120, 35.358986, 35.551403>,  <46.100471, 35.780479, 35.398727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733120, 35.358986, 35.551403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791515, 35.691425, 35.336754>,  <46.826553, 35.890888, 35.207966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791515, 35.691425, 35.336754>,  <46.733120, 35.358986, 35.551403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791515, 35.691425, 35.336754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898361, 0.115782, 0.423724,
		0.414287, -0.543940, -0.729723,
		0.145992, 0.831098, -0.536622,
		46.835312, 35.940754, 35.175766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398491, 35.278992, 35.029194>,  <46.733120, 35.358986, 35.551403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398491, 35.278992, 35.029194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718128, 35.041519, 35.067146>,  <47.909908, 34.899036, 35.089916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718128, 35.041519, 35.067146>,  <47.398491, 35.278992, 35.029194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718128, 35.041519, 35.067146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220020, 0.435638, 0.872818,
		-0.559508, -0.676583, 0.478735,
		0.799088, -0.593679, 0.094881,
		47.957855, 34.863415, 35.095612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.418644, 28.626984, 30.460213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025715, 28.647621, 30.388239>,  <36.789955, 28.660004, 30.345055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025715, 28.647621, 30.388239>,  <37.418644, 28.626984, 30.460213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025715, 28.647621, 30.388239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112702, 0.604489, 0.788601,
		0.149455, 0.794941, -0.587990,
		-0.982325, 0.051593, -0.179935,
		36.731018, 28.663099, 30.334259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175934, 29.237867, 30.588169>,  <37.418644, 28.626984, 30.460213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175934, 29.237867, 30.588169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822731, 29.050690, 30.602764>,  <36.610809, 28.938383, 30.611521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822731, 29.050690, 30.602764>,  <37.175934, 29.237867, 30.588169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822731, 29.050690, 30.602764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240945, 0.518624, 0.820351,
		-0.402802, 0.715581, -0.570696,
		-0.883004, -0.467945, 0.036488,
		36.557831, 28.910307, 30.613710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732277, 29.858185, 30.764950>,  <37.175934, 29.237867, 30.588169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732277, 29.858185, 30.764950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528160, 29.520023, 30.828066>,  <36.405689, 29.317127, 30.865934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528160, 29.520023, 30.828066>,  <36.732277, 29.858185, 30.764950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528160, 29.520023, 30.828066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513645, 0.446758, 0.732513,
		-0.689761, 0.292748, -0.662214,
		-0.510292, -0.845402, 0.157788,
		36.375072, 29.266403, 30.875402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041039, 30.081787, 30.918051>,  <36.732277, 29.858185, 30.764950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041039, 30.081787, 30.918051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089485, 29.717611, 31.076258>,  <36.118553, 29.499105, 31.171183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089485, 29.717611, 31.076258>,  <36.041039, 30.081787, 30.918051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089485, 29.717611, 31.076258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347250, 0.334417, 0.876118,
		-0.929919, -0.243453, -0.275647,
		0.121112, -0.910437, 0.395520,
		36.125820, 29.444481, 31.194914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349098, 29.915266, 31.084999>,  <36.041039, 30.081787, 30.918051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349098, 29.915266, 31.084999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577747, 29.689007, 31.322752>,  <35.714935, 29.553251, 31.465403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577747, 29.689007, 31.322752>,  <35.349098, 29.915266, 31.084999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577747, 29.689007, 31.322752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458970, 0.380041, 0.803066,
		-0.680142, -0.731855, -0.042375,
		0.571623, -0.565648, 0.594381,
		35.749233, 29.519312, 31.501066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875381, 29.582607, 31.649351>,  <35.349098, 29.915266, 31.084999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875381, 29.582607, 31.649351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250553, 29.576195, 31.787930>,  <35.475658, 29.572348, 31.871077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250553, 29.576195, 31.787930>,  <34.875381, 29.582607, 31.649351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250553, 29.576195, 31.787930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317497, 0.362298, 0.876320,
		-0.139567, -0.931925, 0.334721,
		0.937932, -0.016032, 0.346448,
		35.531933, 29.571384, 31.891865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731964, 29.427368, 32.338890>,  <34.875381, 29.582607, 31.649351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731964, 29.427368, 32.338890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112133, 29.551752, 32.338020>,  <35.340233, 29.626383, 32.337498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112133, 29.551752, 32.338020>,  <34.731964, 29.427368, 32.338890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112133, 29.551752, 32.338020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155451, 0.481155, 0.862743,
		0.269323, -0.819631, 0.505638,
		0.950421, 0.310959, -0.002174,
		35.397259, 29.645041, 32.337368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927002, 29.450184, 33.090736>,  <34.731964, 29.427368, 32.338890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927002, 29.450184, 33.090736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178478, 29.685812, 32.887661>,  <35.329365, 29.827188, 32.765816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178478, 29.685812, 32.887661>,  <34.927002, 29.450184, 33.090736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178478, 29.685812, 32.887661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187519, 0.518745, 0.834110,
		0.754711, -0.619596, 0.215667,
		0.628688, 0.589070, -0.507689,
		35.367085, 29.862534, 32.735355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355347, 29.575624, 33.548843>,  <34.927002, 29.450184, 33.090736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355347, 29.575624, 33.548843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412670, 29.868626, 33.282639>,  <35.447063, 30.044426, 33.122917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412670, 29.868626, 33.282639>,  <35.355347, 29.575624, 33.548843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412670, 29.868626, 33.282639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102531, 0.657844, 0.746142,
		0.984352, -0.175165, 0.019172,
		0.143310, 0.732501, -0.665510,
		35.455662, 30.088375, 33.082985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988384, 29.885923, 33.747322>,  <35.355347, 29.575624, 33.548843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988384, 29.885923, 33.747322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828800, 30.170858, 33.516357>,  <35.733051, 30.341820, 33.377777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828800, 30.170858, 33.516357>,  <35.988384, 29.885923, 33.747322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828800, 30.170858, 33.516357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015624, 0.624324, 0.781009,
		0.916835, 0.320612, -0.237950,
		-0.398959, 0.712340, -0.577411,
		35.709114, 30.384560, 33.343136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358421, 30.464699, 33.935863>,  <35.988384, 29.885923, 33.747322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358421, 30.464699, 33.935863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026733, 30.604902, 33.761723>,  <35.827721, 30.689024, 33.657238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026733, 30.604902, 33.761723>,  <36.358421, 30.464699, 33.935863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026733, 30.604902, 33.761723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007454, 0.785787, 0.618452,
		0.558866, 0.509591, -0.654206,
		-0.829225, 0.350508, -0.435351,
		35.777966, 30.710054, 33.631119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517780, 31.135517, 33.679352>,  <36.358421, 30.464699, 33.935863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517780, 31.135517, 33.679352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122711, 31.098995, 33.730202>,  <35.885670, 31.077082, 33.760712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122711, 31.098995, 33.730202>,  <36.517780, 31.135517, 33.679352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122711, 31.098995, 33.730202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011428, 0.852116, 0.523229,
		-0.156098, 0.515328, -0.842657,
		-0.987676, -0.091305, 0.127124,
		35.826408, 31.071604, 33.768337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209499, 31.788815, 33.521091>,  <36.517780, 31.135517, 33.679352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209499, 31.788815, 33.521091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903652, 31.630739, 33.724731>,  <35.720142, 31.535894, 33.846916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903652, 31.630739, 33.724731>,  <36.209499, 31.788815, 33.521091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903652, 31.630739, 33.724731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092458, 0.849027, 0.520198,
		-0.637814, 0.350684, -0.685722,
		-0.764621, -0.395190, 0.509098,
		35.674267, 31.512182, 33.877460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611225, 32.261902, 33.404377>,  <36.209499, 31.788815, 33.521091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611225, 32.261902, 33.404377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546124, 32.056255, 33.741230>,  <35.507065, 31.932867, 33.943344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546124, 32.056255, 33.741230>,  <35.611225, 32.261902, 33.404377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546124, 32.056255, 33.741230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221793, 0.850736, 0.476504,
		-0.961416, -0.109229, -0.252485,
		-0.162750, -0.514118, 0.842137,
		35.497299, 31.902020, 33.993870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021545, 32.625729, 33.742828>,  <35.611225, 32.261902, 33.404377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021545, 32.625729, 33.742828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191441, 32.411480, 34.034775>,  <35.293377, 32.282932, 34.209942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191441, 32.411480, 34.034775>,  <35.021545, 32.625729, 33.742828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191441, 32.411480, 34.034775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170477, 0.744460, 0.645537,
		-0.889121, -0.398609, 0.224889,
		0.424737, -0.535622, 0.729868,
		35.318863, 32.250793, 34.253735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650425, 32.879707, 34.315304>,  <35.021545, 32.625729, 33.742828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650425, 32.879707, 34.315304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951508, 32.691212, 34.499203>,  <35.132156, 32.578114, 34.609543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951508, 32.691212, 34.499203>,  <34.650425, 32.879707, 34.315304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951508, 32.691212, 34.499203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001976, 0.696703, 0.717357,
		-0.658357, -0.540866, 0.523480,
		0.752703, -0.471243, 0.459748,
		35.177319, 32.549839, 34.637127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510841, 32.930740, 35.037457>,  <34.650425, 32.879707, 34.315304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510841, 32.930740, 35.037457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904850, 32.864185, 35.019329>,  <35.141254, 32.824253, 35.008453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904850, 32.864185, 35.019329>,  <34.510841, 32.930740, 35.037457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904850, 32.864185, 35.019329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162054, 0.803236, 0.573193,
		-0.058976, -0.571949, 0.818167,
		0.985018, -0.166392, -0.045315,
		35.200356, 32.814266, 35.005733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819073, 32.887245, 35.727890>,  <34.510841, 32.930740, 35.037457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819073, 32.887245, 35.727890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113934, 32.988346, 35.477219>,  <35.290852, 33.049007, 35.326817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113934, 32.988346, 35.477219>,  <34.819073, 32.887245, 35.727890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113934, 32.988346, 35.477219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240355, 0.768687, 0.592748,
		0.631535, -0.587571, 0.505889,
		0.737152, 0.252748, -0.626678,
		35.335079, 33.064171, 35.289215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491405, 32.986778, 36.137733>,  <34.819073, 32.887245, 35.727890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491405, 32.986778, 36.137733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525787, 33.189507, 35.794632>,  <35.546417, 33.311142, 35.588772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525787, 33.189507, 35.794632>,  <35.491405, 32.986778, 36.137733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525787, 33.189507, 35.794632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263913, 0.818604, 0.510135,
		0.960709, -0.270222, -0.063392,
		0.085956, 0.506821, -0.857755,
		35.551575, 33.341553, 35.537304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029408, 33.402016, 36.307941>,  <35.491405, 32.986778, 36.137733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029408, 33.402016, 36.307941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893764, 33.563236, 35.967926>,  <35.812378, 33.659969, 35.763916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893764, 33.563236, 35.967926>,  <36.029408, 33.402016, 36.307941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893764, 33.563236, 35.967926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225767, 0.912034, 0.342378,
		0.913255, -0.075807, -0.400272,
		-0.339107, 0.403047, -0.850035,
		35.792030, 33.684151, 35.712917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552029, 33.861385, 36.066124>,  <36.029408, 33.402016, 36.307941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552029, 33.861385, 36.066124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211498, 33.984718, 35.896339>,  <36.007179, 34.058720, 35.794468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211498, 33.984718, 35.896339>,  <36.552029, 33.861385, 36.066124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211498, 33.984718, 35.896339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230531, 0.946628, 0.225280,
		0.471272, 0.093935, -0.876972,
		-0.851328, 0.308337, -0.424464,
		35.956100, 34.077221, 35.769001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755451, 34.560932, 35.809547>,  <36.552029, 33.861385, 36.066124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755451, 34.560932, 35.809547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356693, 34.529724, 35.813656>,  <36.117439, 34.510998, 35.816120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356693, 34.529724, 35.813656>,  <36.755451, 34.560932, 35.809547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356693, 34.529724, 35.813656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067232, 0.912235, 0.404114,
		-0.040898, 0.402170, -0.914651,
		-0.996899, -0.078022, 0.010270,
		36.057625, 34.506317, 35.816738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991833, 34.994572, 36.396729>,  <36.755451, 34.560932, 35.809547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991833, 34.994572, 36.396729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356644, 35.137436, 36.477364>,  <37.575531, 35.223156, 36.525745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356644, 35.137436, 36.477364>,  <36.991833, 34.994572, 36.396729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356644, 35.137436, 36.477364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410110, -0.790271, -0.455283,
		-0.003301, 0.497904, -0.867226,
		0.912030, 0.357161, 0.201586,
		37.630253, 35.244583, 36.537838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342049, 35.280666, 35.691692>,  <36.991833, 34.994572, 36.396729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342049, 35.280666, 35.691692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611076, 35.181778, 35.970699>,  <37.772495, 35.122444, 36.138103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611076, 35.181778, 35.970699>,  <37.342049, 35.280666, 35.691692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611076, 35.181778, 35.970699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400816, -0.670632, -0.624179,
		0.622088, 0.699381, -0.351956,
		0.672571, -0.247225, 0.697515,
		37.812847, 35.107609, 36.179955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034660, 35.232986, 35.429146>,  <37.342049, 35.280666, 35.691692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034660, 35.232986, 35.429146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.056484, 35.002205, 35.755127>,  <38.069580, 34.863735, 35.950714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.056484, 35.002205, 35.755127>,  <38.034660, 35.232986, 35.429146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056484, 35.002205, 35.755127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481331, -0.699885, -0.527714,
		0.874839, 0.421055, 0.239518,
		0.054562, -0.576953, 0.814953,
		38.072853, 34.829121, 35.999615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750237, 34.932701, 35.432453>,  <38.034660, 35.232986, 35.429146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750237, 34.932701, 35.432453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548897, 34.684734, 35.673233>,  <38.428093, 34.535954, 35.817699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548897, 34.684734, 35.673233>,  <38.750237, 34.932701, 35.432453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548897, 34.684734, 35.673233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295294, -0.778100, -0.554402,
		0.812058, -0.101308, 0.574716,
		-0.503352, -0.619917, 0.601947,
		38.397892, 34.498760, 35.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291645, 34.412094, 35.608376>,  <38.750237, 34.932701, 35.432453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291645, 34.412094, 35.608376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916180, 34.279015, 35.644630>,  <38.690899, 34.199165, 35.666386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916180, 34.279015, 35.644630>,  <39.291645, 34.412094, 35.608376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916180, 34.279015, 35.644630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265744, -0.865462, -0.424683,
		0.219737, -0.374548, 0.900794,
		-0.938667, -0.332699, 0.090640,
		38.634579, 34.179207, 35.671822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349102, 33.649303, 35.838371>,  <39.291645, 34.412094, 35.608376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349102, 33.649303, 35.838371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989471, 33.683769, 35.666683>,  <38.773693, 33.704449, 35.563671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989471, 33.683769, 35.666683>,  <39.349102, 33.649303, 35.838371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989471, 33.683769, 35.666683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088856, -0.924113, -0.371645,
		-0.428674, -0.372277, 0.823194,
		-0.899079, 0.086169, -0.429222,
		38.719749, 33.709621, 35.537918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298397, 32.960823, 35.690639>,  <39.349102, 33.649303, 35.838371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298397, 32.960823, 35.690639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993340, 33.133705, 35.498150>,  <38.810307, 33.237434, 35.382656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993340, 33.133705, 35.498150>,  <39.298397, 32.960823, 35.690639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993340, 33.133705, 35.498150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103713, -0.816068, -0.568575,
		-0.638449, -0.383711, 0.667195,
		-0.762644, 0.432203, -0.481222,
		38.764545, 33.263367, 35.353783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805702, 32.444515, 35.542835>,  <39.298397, 32.960823, 35.690639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805702, 32.444515, 35.542835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698372, 32.731312, 35.285488>,  <38.633972, 32.903389, 35.131081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698372, 32.731312, 35.285488>,  <38.805702, 32.444515, 35.542835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698372, 32.731312, 35.285488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046802, -0.676775, -0.734701,
		-0.962190, -0.167030, 0.215155,
		-0.268329, 0.716991, -0.643368,
		38.617874, 32.946407, 35.092476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184246, 32.215500, 35.286869>,  <38.805702, 32.444515, 35.542835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184246, 32.215500, 35.286869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305916, 32.477451, 35.010143>,  <38.378918, 32.634624, 34.844109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305916, 32.477451, 35.010143>,  <38.184246, 32.215500, 35.286869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305916, 32.477451, 35.010143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192416, -0.669019, -0.717906,
		-0.932980, 0.351488, -0.077492,
		0.304179, 0.654882, -0.691813,
		38.397171, 32.673916, 34.802601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703815, 32.252312, 34.802841>,  <38.184246, 32.215500, 35.286869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703815, 32.252312, 34.802841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035503, 32.366123, 34.610409>,  <38.234516, 32.434410, 34.494949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035503, 32.366123, 34.610409>,  <37.703815, 32.252312, 34.802841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035503, 32.366123, 34.610409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144260, -0.722611, -0.676034,
		-0.539984, 0.629981, -0.558157,
		0.829220, 0.284529, -0.481080,
		38.284271, 32.451481, 34.466084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531563, 32.266159, 34.003506>,  <37.703815, 32.252312, 34.802841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531563, 32.266159, 34.003506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930931, 32.278748, 34.022091>,  <38.170551, 32.286301, 34.033241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930931, 32.278748, 34.022091>,  <37.531563, 32.266159, 34.003506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930931, 32.278748, 34.022091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056121, -0.561357, -0.825668,
		0.000100, 0.826975, -0.562239,
		0.998424, 0.031471, 0.046467,
		38.230457, 32.288189, 34.036030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797024, 32.488434, 33.291210>,  <37.531563, 32.266159, 34.003506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797024, 32.488434, 33.291210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094185, 32.301125, 33.482548>,  <38.272480, 32.188740, 33.597351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094185, 32.301125, 33.482548>,  <37.797024, 32.488434, 33.291210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094185, 32.301125, 33.482548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064959, -0.660782, -0.747762,
		0.666239, 0.586588, -0.460479,
		0.742904, -0.468276, 0.478342,
		38.317055, 32.160641, 33.626049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258183, 32.447952, 32.731937>,  <37.797024, 32.488434, 33.291210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258183, 32.447952, 32.731937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414352, 32.187382, 32.992157>,  <38.508053, 32.031040, 33.148289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414352, 32.187382, 32.992157>,  <38.258183, 32.447952, 32.731937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414352, 32.187382, 32.992157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334830, -0.557762, -0.759467,
		0.857589, 0.514335, 0.000356,
		0.390422, -0.651430, 0.650545,
		38.531479, 31.991953, 33.187321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953678, 32.261547, 32.445858>,  <38.258183, 32.447952, 32.731937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953678, 32.261547, 32.445858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842709, 31.961939, 32.686523>,  <38.776127, 31.782173, 32.830921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842709, 31.961939, 32.686523>,  <38.953678, 32.261547, 32.445858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842709, 31.961939, 32.686523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385970, -0.660377, -0.644150,
		0.879809, 0.053521, 0.472305,
		-0.277424, -0.749025, 0.601663,
		38.759480, 31.737232, 32.867023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474407, 31.730972, 32.498623>,  <38.953678, 32.261547, 32.445858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474407, 31.730972, 32.498623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151333, 31.533014, 32.626827>,  <38.957489, 31.414240, 32.703751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151333, 31.533014, 32.626827>,  <39.474407, 31.730972, 32.498623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151333, 31.533014, 32.626827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202187, -0.743105, -0.637900,
		0.553867, -0.450418, 0.700254,
		-0.807683, -0.494893, 0.320513,
		38.909027, 31.384546, 32.722980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702824, 30.951225, 32.542034>,  <39.474407, 31.730972, 32.498623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702824, 30.951225, 32.542034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.303211, 30.963717, 32.529594>,  <39.063446, 30.971212, 32.522129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.303211, 30.963717, 32.529594>,  <39.702824, 30.951225, 32.542034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303211, 30.963717, 32.529594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000541, -0.696937, -0.717132,
		-0.044072, -0.716452, 0.696243,
		-0.999028, 0.031229, -0.031103,
		39.003502, 30.973085, 32.520264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534996, 30.337414, 32.593445>,  <39.702824, 30.951225, 32.542034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534996, 30.337414, 32.593445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208836, 30.504099, 32.432713>,  <39.013138, 30.604111, 32.336273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208836, 30.504099, 32.432713>,  <39.534996, 30.337414, 32.593445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208836, 30.504099, 32.432713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019949, -0.713946, -0.699917,
		-0.578548, -0.562699, 0.590468,
		-0.815404, 0.416715, -0.401827,
		38.964214, 30.629114, 32.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047321, 29.819092, 32.644165>,  <39.534996, 30.337414, 32.593445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047321, 29.819092, 32.644165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922714, 30.068399, 32.357254>,  <38.847950, 30.217983, 32.185108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922714, 30.068399, 32.357254>,  <39.047321, 29.819092, 32.644165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922714, 30.068399, 32.357254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097847, -0.729790, -0.676633,
		-0.945188, -0.280970, 0.166360,
		-0.311521, 0.623267, -0.717281,
		38.829258, 30.255379, 32.142071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.529221, 29.406033, 32.133129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625843, 29.736380, 31.929327>,  <38.683815, 29.934587, 31.807045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625843, 29.736380, 31.929327>,  <38.529221, 29.406033, 32.133129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625843, 29.736380, 31.929327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154309, -0.551065, -0.820071,
		-0.958040, 0.119471, -0.260551,
		0.241555, 0.825866, -0.509506,
		38.698311, 29.984138, 31.776476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121830, 29.351265, 31.446667>,  <38.529221, 29.406033, 32.133129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121830, 29.351265, 31.446667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419044, 29.609299, 31.375383>,  <38.597374, 29.764118, 31.332613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419044, 29.609299, 31.375383>,  <38.121830, 29.351265, 31.446667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419044, 29.609299, 31.375383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173567, -0.442921, -0.879600,
		-0.646347, 0.622647, -0.441073,
		0.743041, 0.645083, -0.178210,
		38.641956, 29.802824, 31.321920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028183, 29.662333, 30.759483>,  <38.121830, 29.351265, 31.446667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028183, 29.662333, 30.759483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419819, 29.686407, 30.837215>,  <38.654800, 29.700851, 30.883856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419819, 29.686407, 30.837215>,  <38.028183, 29.662333, 30.759483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419819, 29.686407, 30.837215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203415, -0.304521, -0.930532,
		0.003171, 0.950602, -0.310396,
		0.979087, 0.060188, 0.194332,
		38.713547, 29.704464, 30.895515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248249, 30.107807, 30.260086>,  <38.028183, 29.662333, 30.759483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248249, 30.107807, 30.260086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567307, 29.900400, 30.383312>,  <38.758739, 29.775957, 30.457249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567307, 29.900400, 30.383312>,  <38.248249, 30.107807, 30.260086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567307, 29.900400, 30.383312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213887, -0.234397, -0.948320,
		0.563928, 0.822314, -0.076061,
		0.797645, -0.518515, 0.308065,
		38.806599, 29.744846, 30.475731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767036, 30.165915, 29.731001>,  <38.248249, 30.107807, 30.260086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767036, 30.165915, 29.731001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924297, 29.851496, 29.921814>,  <39.018654, 29.662844, 30.036303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924297, 29.851496, 29.921814>,  <38.767036, 30.165915, 29.731001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924297, 29.851496, 29.921814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412253, -0.313049, -0.855598,
		0.821875, 0.533039, 0.200974,
		0.393152, -0.786047, 0.477035,
		39.042244, 29.615683, 30.064924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369793, 29.978022, 29.283056>,  <38.767036, 30.165915, 29.731001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369793, 29.978022, 29.283056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305607, 29.669212, 29.529058>,  <39.267097, 29.483927, 29.676661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305607, 29.669212, 29.529058>,  <39.369793, 29.978022, 29.283056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305607, 29.669212, 29.529058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373902, -0.624187, -0.685994,
		0.913482, 0.119876, 0.388819,
		-0.160462, -0.772023, 0.615006,
		39.257469, 29.437605, 29.713560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891830, 29.499535, 29.141249>,  <39.369793, 29.978022, 29.283056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891830, 29.499535, 29.141249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616238, 29.278330, 29.328644>,  <39.450882, 29.145607, 29.441082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616238, 29.278330, 29.328644>,  <39.891830, 29.499535, 29.141249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616238, 29.278330, 29.328644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151588, -0.742043, -0.652987,
		0.708749, -0.378879, 0.595084,
		-0.688982, -0.553012, 0.468489,
		39.409542, 29.112427, 29.469191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148048, 28.860865, 29.252117>,  <39.891830, 29.499535, 29.141249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148048, 28.860865, 29.252117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750629, 28.822231, 29.228359>,  <39.512177, 28.799051, 29.214104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750629, 28.822231, 29.228359>,  <40.148048, 28.860865, 29.252117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750629, 28.822231, 29.228359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111892, -0.750520, -0.651306,
		0.018327, -0.653752, 0.756487,
		-0.993551, -0.096581, -0.059395,
		39.452564, 28.793257, 29.210541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121891, 28.223104, 29.379936>,  <40.148048, 28.860865, 29.252117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121891, 28.223104, 29.379936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789841, 28.326420, 29.182276>,  <39.590611, 28.388409, 29.063679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789841, 28.326420, 29.182276>,  <40.121891, 28.223104, 29.379936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789841, 28.326420, 29.182276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201653, -0.687180, -0.697939,
		-0.519839, -0.679022, 0.518360,
		-0.830122, 0.258288, -0.494150,
		39.540806, 28.403906, 29.034031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824455, 27.612988, 29.130032>,  <40.121891, 28.223104, 29.379936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824455, 27.612988, 29.130032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655598, 27.883989, 28.889107>,  <39.554283, 28.046591, 28.744553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655598, 27.883989, 28.889107>,  <39.824455, 27.612988, 29.130032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655598, 27.883989, 28.889107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129038, -0.612741, -0.779677,
		-0.897297, -0.406859, 0.171242,
		-0.422146, 0.677506, -0.602311,
		39.528954, 28.087240, 28.708414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580482, 27.215773, 28.632755>,  <39.824455, 27.612988, 29.130032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580482, 27.215773, 28.632755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.593685, 27.582157, 28.472794>,  <39.601608, 27.801989, 28.376816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.593685, 27.582157, 28.472794>,  <39.580482, 27.215773, 28.632755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593685, 27.582157, 28.472794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334522, -0.387170, -0.859182,
		-0.941810, -0.105419, -0.319189,
		0.033006, 0.915962, -0.399905,
		39.603588, 27.856945, 28.352821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401112, 27.140396, 27.935240>,  <39.580482, 27.215773, 28.632755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401112, 27.140396, 27.935240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561108, 27.506889, 27.926075>,  <39.657104, 27.726786, 27.920576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561108, 27.506889, 27.926075>,  <39.401112, 27.140396, 27.935240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561108, 27.506889, 27.926075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363933, -0.181726, -0.913525,
		-0.841165, 0.357065, -0.406136,
		0.399993, 0.916232, -0.022914,
		39.681107, 27.781759, 27.919201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218651, 27.355804, 27.404886>,  <39.401112, 27.140396, 27.935240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218651, 27.355804, 27.404886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560749, 27.540861, 27.498283>,  <39.766006, 27.651896, 27.554321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560749, 27.540861, 27.498283>,  <39.218651, 27.355804, 27.404886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560749, 27.540861, 27.498283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372347, -0.235209, -0.897794,
		-0.360438, 0.854774, -0.373424,
		0.855244, 0.462643, 0.233494,
		39.817322, 27.679653, 27.568331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308884, 27.791597, 26.800722>,  <39.218651, 27.355804, 27.404886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308884, 27.791597, 26.800722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664139, 27.746727, 26.978992>,  <39.877293, 27.719805, 27.085955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664139, 27.746727, 26.978992>,  <39.308884, 27.791597, 26.800722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664139, 27.746727, 26.978992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408480, -0.251713, -0.877374,
		0.210604, 0.961279, -0.177734,
		0.888138, -0.112178, 0.445675,
		39.930580, 27.713074, 27.112696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716022, 28.154621, 26.444975>,  <39.308884, 27.791597, 26.800722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716022, 28.154621, 26.444975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.991100, 27.957035, 26.657793>,  <40.156147, 27.838484, 26.785484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.991100, 27.957035, 26.657793>,  <39.716022, 28.154621, 26.444975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991100, 27.957035, 26.657793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571594, -0.083437, -0.816283,
		0.447609, 0.865468, 0.224969,
		0.687696, -0.493967, 0.532044,
		40.197411, 27.808846, 26.817406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402439, 28.512636, 26.426052>,  <39.716022, 28.154621, 26.444975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402439, 28.512636, 26.426052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465660, 28.122654, 26.488640>,  <40.503593, 27.888664, 26.526192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465660, 28.122654, 26.488640>,  <40.402439, 28.512636, 26.426052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465660, 28.122654, 26.488640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547876, -0.045247, -0.835335,
		0.821494, 0.217749, 0.527004,
		0.158048, -0.974955, 0.156470,
		40.513073, 27.830168, 26.535582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035366, 28.345694, 26.161814>,  <40.402439, 28.512636, 26.426052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035366, 28.345694, 26.161814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.929745, 27.965042, 26.224657>,  <40.866371, 27.736652, 26.262363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.929745, 27.965042, 26.224657>,  <41.035366, 28.345694, 26.161814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929745, 27.965042, 26.224657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553481, -0.282900, -0.783342,
		0.789896, -0.119884, 0.601408,
		-0.264049, -0.951628, 0.157108,
		40.850529, 27.679554, 26.271790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700520, 27.993914, 26.291567>,  <41.035366, 28.345694, 26.161814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700520, 27.993914, 26.291567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.418301, 27.752146, 26.143579>,  <41.248970, 27.607084, 26.054787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.418301, 27.752146, 26.143579>,  <41.700520, 27.993914, 26.291567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418301, 27.752146, 26.143579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610493, -0.253304, -0.750423,
		0.359857, -0.755324, 0.547713,
		-0.705550, -0.604420, -0.369967,
		41.206635, 27.570820, 26.032589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983677, 27.417114, 26.145596>,  <41.700520, 27.993914, 26.291567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983677, 27.417114, 26.145596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.671993, 27.373472, 25.898718>,  <41.484982, 27.347286, 25.750591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.671993, 27.373472, 25.898718>,  <41.983677, 27.417114, 26.145596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671993, 27.373472, 25.898718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588702, -0.465344, -0.660973,
		-0.215092, -0.878379, 0.426831,
		-0.779208, -0.109106, -0.617195,
		41.438232, 27.340740, 25.713560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014656, 26.725452, 25.810125>,  <41.983677, 27.417114, 26.145596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014656, 26.725452, 25.810125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731094, 26.896219, 25.585554>,  <41.560959, 26.998680, 25.450811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731094, 26.896219, 25.585554>,  <42.014656, 26.725452, 25.810125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731094, 26.896219, 25.585554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380618, -0.438591, -0.814106,
		-0.593793, -0.790810, 0.148425,
		-0.708901, 0.426917, -0.561429,
		41.518425, 27.024294, 25.417126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762257, 26.188812, 25.297216>,  <42.014656, 26.725452, 25.810125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762257, 26.188812, 25.297216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.699612, 26.553453, 25.145187>,  <41.662025, 26.772238, 25.053970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.699612, 26.553453, 25.145187>,  <41.762257, 26.188812, 25.297216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699612, 26.553453, 25.145187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439567, -0.280276, -0.853362,
		-0.884451, -0.300715, -0.356815,
		-0.156612, 0.911601, -0.380075,
		41.652630, 26.826933, 25.031164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575989, 26.060347, 24.636311>,  <41.762257, 26.188812, 25.297216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575989, 26.060347, 24.636311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.670177, 26.448711, 24.618944>,  <41.726688, 26.681730, 24.608524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.670177, 26.448711, 24.618944>,  <41.575989, 26.060347, 24.636311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670177, 26.448711, 24.618944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381349, -0.133392, -0.914756,
		-0.893939, 0.198839, -0.401666,
		0.235469, 0.970912, -0.043417,
		41.740818, 26.739985, 24.605919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313961, 26.505941, 23.984737>,  <41.575989, 26.060347, 24.636311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313961, 26.505941, 23.984737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.663227, 26.642078, 24.124313>,  <41.872787, 26.723761, 24.208059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.663227, 26.642078, 24.124313>,  <41.313961, 26.505941, 23.984737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663227, 26.642078, 24.124313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402727, -0.100443, -0.909792,
		-0.274592, 0.934922, -0.224768,
		0.873161, 0.340342, 0.348938,
		41.925175, 26.744181, 24.228994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647186, 26.262846, 23.675764>,  <41.313961, 26.505941, 23.984737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647186, 26.262846, 23.675764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316833, 26.200880, 23.458904>,  <40.118622, 26.163700, 23.328789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316833, 26.200880, 23.458904>,  <40.647186, 26.262846, 23.675764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316833, 26.200880, 23.458904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401698, 0.836397, 0.372932,
		0.395679, 0.525777, -0.752992,
		-0.825880, -0.154914, -0.542148,
		40.069069, 26.154406, 23.296259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347809, 26.846302, 23.781334>,  <40.647186, 26.262846, 23.675764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347809, 26.846302, 23.781334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028976, 26.641479, 23.653297>,  <39.837677, 26.518585, 23.576475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028976, 26.641479, 23.653297>,  <40.347809, 26.846302, 23.781334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028976, 26.641479, 23.653297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583592, 0.516986, 0.626215,
		-0.155176, 0.685947, -0.710913,
		-0.797083, -0.512057, -0.320090,
		39.789852, 26.487862, 23.557270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779118, 27.322849, 23.747059>,  <40.347809, 26.846302, 23.781334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779118, 27.322849, 23.747059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612083, 26.961437, 23.785538>,  <39.511864, 26.744591, 23.808626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612083, 26.961437, 23.785538>,  <39.779118, 27.322849, 23.747059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612083, 26.961437, 23.785538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679628, 0.380856, 0.626941,
		-0.603097, 0.196424, -0.773105,
		-0.417588, -0.903529, 0.096198,
		39.486809, 26.690378, 23.814398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035149, 27.483631, 23.813528>,  <39.779118, 27.322849, 23.747059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035149, 27.483631, 23.813528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084496, 27.102608, 23.924824>,  <39.114101, 26.873995, 23.991602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084496, 27.102608, 23.924824>,  <39.035149, 27.483631, 23.813528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084496, 27.102608, 23.924824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640508, 0.137728, 0.755500,
		-0.757978, -0.271416, -0.593129,
		0.123365, -0.952557, 0.278239,
		39.121506, 26.816841, 24.008295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364838, 27.200994, 23.696774>,  <39.035149, 27.483631, 23.813528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364838, 27.200994, 23.696774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530125, 26.970848, 23.979109>,  <38.629295, 26.832760, 24.148510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530125, 26.970848, 23.979109>,  <38.364838, 27.200994, 23.696774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530125, 26.970848, 23.979109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782200, 0.172628, 0.598634,
		-0.466281, -0.799471, -0.378718,
		0.413214, -0.575365, 0.705840,
		38.654087, 26.798239, 24.190861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785000, 26.894070, 24.039433>,  <38.364838, 27.200994, 23.696774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785000, 26.894070, 24.039433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105465, 26.830399, 24.270185>,  <38.297745, 26.792196, 24.408638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105465, 26.830399, 24.270185>,  <37.785000, 26.894070, 24.039433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105465, 26.830399, 24.270185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571644, 0.081675, 0.816427,
		-0.177075, -0.983865, -0.025559,
		0.801167, -0.159180, 0.576883,
		38.345814, 26.782644, 24.443251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639729, 26.382177, 24.486893>,  <37.785000, 26.894070, 24.039433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639729, 26.382177, 24.486893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934841, 26.570162, 24.680723>,  <38.111908, 26.682953, 24.797022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934841, 26.570162, 24.680723>,  <37.639729, 26.382177, 24.486893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934841, 26.570162, 24.680723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552795, 0.008640, 0.833272,
		0.387420, -0.882644, 0.266168,
		0.737783, 0.469963, 0.484574,
		38.156178, 26.711151, 24.826096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520638, 26.209848, 25.158283>,  <37.639729, 26.382177, 24.486893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520638, 26.209848, 25.158283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768017, 26.522108, 25.194307>,  <37.916443, 26.709463, 25.215921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768017, 26.522108, 25.194307>,  <37.520638, 26.209848, 25.158283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768017, 26.522108, 25.194307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415877, 0.227900, 0.880402,
		0.666761, -0.581935, 0.465598,
		0.618446, 0.780649, 0.090059,
		37.953552, 26.756302, 25.221325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983017, 25.987745, 25.638973>,  <37.520638, 26.209848, 25.158283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983017, 25.987745, 25.638973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962704, 26.386990, 25.625151>,  <37.950516, 26.626537, 25.616858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962704, 26.386990, 25.625151>,  <37.983017, 25.987745, 25.638973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962704, 26.386990, 25.625151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192282, 0.024180, 0.981041,
		0.980025, 0.056466, 0.190691,
		-0.050784, 0.998111, -0.034555,
		37.947468, 26.686422, 25.614784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051952, 26.297770, 26.278318>,  <37.983017, 25.987745, 25.638973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051952, 26.297770, 26.278318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943970, 26.657043, 26.139534>,  <37.879181, 26.872608, 26.056263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943970, 26.657043, 26.139534>,  <38.051952, 26.297770, 26.278318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943970, 26.657043, 26.139534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181309, 0.306477, 0.934451,
		0.945647, 0.315173, 0.080113,
		-0.269961, 0.898186, -0.346962,
		37.862980, 26.926498, 26.035446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480579, 26.850492, 26.537785>,  <38.051952, 26.297770, 26.278318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480579, 26.850492, 26.537785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122055, 27.011055, 26.462420>,  <37.906940, 27.107393, 26.417200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122055, 27.011055, 26.462420>,  <38.480579, 26.850492, 26.537785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122055, 27.011055, 26.462420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070604, 0.290288, 0.954331,
		0.437769, 0.868680, -0.231847,
		-0.896311, 0.401407, -0.188411,
		37.853161, 27.131477, 26.405895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518898, 27.378023, 26.972376>,  <38.480579, 26.850492, 26.537785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518898, 27.378023, 26.972376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134659, 27.376469, 26.861214>,  <37.904114, 27.375536, 26.794518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134659, 27.376469, 26.861214>,  <38.518898, 27.378023, 26.972376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134659, 27.376469, 26.861214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212414, 0.655110, 0.725060,
		0.179238, 0.755524, -0.630125,
		-0.960601, -0.003889, -0.277904,
		37.846478, 27.375301, 26.777842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324509, 27.973349, 27.128458>,  <38.518898, 27.378023, 26.972376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324509, 27.973349, 27.128458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974365, 27.784071, 27.088791>,  <37.764278, 27.670504, 27.064991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974365, 27.784071, 27.088791>,  <38.324509, 27.973349, 27.128458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974365, 27.784071, 27.088791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414192, 0.628173, 0.658669,
		-0.249386, 0.617644, -0.745870,
		-0.875358, -0.473196, -0.099166,
		37.711758, 27.642113, 27.059042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850452, 28.454794, 27.010769>,  <38.324509, 27.973349, 27.128458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850452, 28.454794, 27.010769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650604, 28.136700, 27.148165>,  <37.530697, 27.945843, 27.230602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650604, 28.136700, 27.148165>,  <37.850452, 28.454794, 27.010769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650604, 28.136700, 27.148165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463530, 0.580410, 0.669525,
		-0.731793, 0.175290, -0.658599,
		-0.499619, -0.795234, 0.343488,
		37.500717, 27.898130, 27.251211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149784, 28.664587, 27.005756>,  <37.850452, 28.454794, 27.010769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149784, 28.664587, 27.005756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162601, 28.365788, 27.271378>,  <37.170292, 28.186508, 27.430750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162601, 28.365788, 27.271378>,  <37.149784, 28.664587, 27.005756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162601, 28.365788, 27.271378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581044, 0.526667, 0.620492,
		-0.813241, -0.405724, -0.417165,
		0.032042, -0.747000, 0.664051,
		37.172215, 28.141687, 27.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440742, 28.658337, 27.359680>,  <37.149784, 28.664587, 27.005756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440742, 28.658337, 27.359680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672626, 28.454603, 27.614088>,  <36.811756, 28.332363, 27.766733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672626, 28.454603, 27.614088>,  <36.440742, 28.658337, 27.359680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672626, 28.454603, 27.614088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464219, 0.435049, 0.771514,
		-0.669658, -0.742502, 0.015757,
		0.579706, -0.509336, 0.636017,
		36.846539, 28.301802, 27.804893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011646, 28.492123, 27.981272>,  <36.440742, 28.658337, 27.359680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011646, 28.492123, 27.981272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366005, 28.410969, 28.148138>,  <36.578621, 28.362276, 28.248259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366005, 28.410969, 28.148138>,  <36.011646, 28.492123, 27.981272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366005, 28.410969, 28.148138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378485, 0.203831, 0.902885,
		-0.268212, -0.957753, 0.103784,
		0.885896, -0.202884, 0.417165,
		36.631775, 28.350103, 28.273287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898792, 27.989996, 28.430950>,  <36.011646, 28.492123, 27.981272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898792, 27.989996, 28.430950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235210, 28.162327, 28.561813>,  <36.437061, 28.265724, 28.640331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235210, 28.162327, 28.561813>,  <35.898792, 27.989996, 28.430950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235210, 28.162327, 28.561813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351143, -0.025268, 0.935981,
		0.411512, -0.902081, 0.130030,
		0.841045, 0.430826, 0.327158,
		36.487526, 28.291574, 28.659960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231323, 27.591942, 28.982655>,  <35.898792, 27.989996, 28.430950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231323, 27.591942, 28.982655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373562, 27.962915, 29.028980>,  <36.458904, 28.185499, 29.056776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373562, 27.962915, 29.028980>,  <36.231323, 27.591942, 28.982655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373562, 27.962915, 29.028980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209321, -0.041737, 0.976956,
		0.910897, -0.371647, 0.179290,
		0.355600, 0.927436, 0.115812,
		36.480244, 28.241146, 29.063725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622707, 27.517649, 29.663639>,  <36.231323, 27.591942, 28.982655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622707, 27.517649, 29.663639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610168, 27.915037, 29.619768>,  <36.602646, 28.153471, 29.593447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610168, 27.915037, 29.619768>,  <36.622707, 27.517649, 29.663639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610168, 27.915037, 29.619768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260884, 0.097795, 0.960404,
		0.964861, 0.058715, 0.256116,
		-0.031343, 0.993473, -0.109676,
		36.600765, 28.213079, 29.586864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057961, 27.739098, 30.192142>,  <36.622707, 27.517649, 29.663639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057961, 27.739098, 30.192142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833694, 28.053898, 30.089159>,  <36.699135, 28.242777, 30.027369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833694, 28.053898, 30.089159>,  <37.057961, 27.739098, 30.192142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833694, 28.053898, 30.089159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201735, 0.171734, 0.964267,
		0.803091, 0.592572, 0.062479,
		-0.560667, 0.786998, -0.257460,
		36.665493, 28.289997, 30.011921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.363930, 31.652422, 34.188343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046391, 31.809019, 34.002209>,  <38.855865, 31.902977, 33.890526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046391, 31.809019, 34.002209>,  <39.363930, 31.652422, 34.188343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046391, 31.809019, 34.002209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005137, 0.760868, 0.648887,
		0.608096, 0.517507, -0.602001,
		-0.793846, 0.391493, -0.465340,
		38.808235, 31.926468, 33.862606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551422, 32.422932, 34.175125>,  <39.363930, 31.652422, 34.188343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551422, 32.422932, 34.175125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157372, 32.372341, 34.128605>,  <38.920940, 32.341988, 34.100693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157372, 32.372341, 34.128605>,  <39.551422, 32.422932, 34.175125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157372, 32.372341, 34.128605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170365, 0.806822, 0.565698,
		0.022289, 0.577099, -0.816370,
		-0.985129, -0.126472, -0.116301,
		38.861832, 32.334400, 34.093716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287254, 32.978752, 33.930645>,  <39.551422, 32.422932, 34.175125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287254, 32.978752, 33.930645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977650, 32.802139, 34.112175>,  <38.791885, 32.696171, 34.221092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977650, 32.802139, 34.112175>,  <39.287254, 32.978752, 33.930645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977650, 32.802139, 34.112175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046917, 0.754776, 0.654303,
		-0.631430, 0.485146, -0.604921,
		-0.774012, -0.441528, 0.453827,
		38.745445, 32.669682, 34.248322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976002, 33.586933, 34.078110>,  <39.287254, 32.978752, 33.930645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976002, 33.586933, 34.078110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782436, 33.302624, 34.282322>,  <38.666298, 33.132038, 34.404850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782436, 33.302624, 34.282322>,  <38.976002, 33.586933, 34.078110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782436, 33.302624, 34.282322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260272, 0.673876, 0.691483,
		-0.835518, 0.201738, -0.511088,
		-0.483909, -0.710769, 0.510529,
		38.637264, 33.089394, 34.435482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333549, 33.920444, 34.316677>,  <38.976002, 33.586933, 34.078110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333549, 33.920444, 34.316677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400936, 33.600563, 34.547184>,  <38.441368, 33.408634, 34.685490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400936, 33.600563, 34.547184>,  <38.333549, 33.920444, 34.316677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400936, 33.600563, 34.547184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228815, 0.536931, 0.812003,
		-0.958782, -0.268652, -0.092532,
		0.168463, -0.799707, 0.576272,
		38.451473, 33.360649, 34.720066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774998, 33.909454, 34.794579>,  <38.333549, 33.920444, 34.316677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774998, 33.909454, 34.794579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.076099, 33.716331, 34.973576>,  <38.256760, 33.600456, 35.080975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.076099, 33.716331, 34.973576>,  <37.774998, 33.909454, 34.794579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076099, 33.716331, 34.973576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189931, 0.491583, 0.849866,
		-0.630306, -0.724735, 0.278341,
		0.752756, -0.482810, 0.447497,
		38.301926, 33.571487, 35.107826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525276, 33.502197, 35.276142>,  <37.774998, 33.909454, 34.794579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525276, 33.502197, 35.276142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.901451, 33.602688, 35.367756>,  <38.127155, 33.662983, 35.422726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.901451, 33.602688, 35.367756>,  <37.525276, 33.502197, 35.276142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901451, 33.602688, 35.367756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326076, 0.476022, 0.816748,
		0.096164, -0.842786, 0.529589,
		0.940440, 0.251228, 0.229036,
		38.183582, 33.678055, 35.436466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457752, 33.566174, 35.963772>,  <37.525276, 33.502197, 35.276142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457752, 33.566174, 35.963772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.814224, 33.730125, 35.886002>,  <38.028107, 33.828499, 35.839340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.814224, 33.730125, 35.886002>,  <37.457752, 33.566174, 35.963772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814224, 33.730125, 35.886002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102933, 0.600095, 0.793278,
		0.441825, -0.686938, 0.576981,
		0.891176, 0.409881, -0.194428,
		38.081577, 33.853088, 35.827671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828617, 33.690262, 36.642838>,  <37.457752, 33.566174, 35.963772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828617, 33.690262, 36.642838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997208, 33.943096, 36.382740>,  <38.098362, 34.094799, 36.226681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997208, 33.943096, 36.382740>,  <37.828617, 33.690262, 36.642838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997208, 33.943096, 36.382740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092057, 0.743165, 0.662746,
		0.902155, -0.219472, 0.371415,
		0.421477, 0.632091, -0.650245,
		38.123650, 34.132725, 36.187668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226330, 34.175838, 37.097713>,  <37.828617, 33.690262, 36.642838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226330, 34.175838, 37.097713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174294, 34.369793, 36.751774>,  <38.143070, 34.486164, 36.544212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174294, 34.369793, 36.751774>,  <38.226330, 34.175838, 37.097713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174294, 34.369793, 36.751774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143337, 0.853899, 0.500310,
		0.981086, 0.189052, -0.041586,
		-0.130095, 0.484886, -0.864847,
		38.135265, 34.515259, 36.492321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606270, 34.773468, 37.165905>,  <38.226330, 34.175838, 37.097713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606270, 34.773468, 37.165905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364273, 34.865871, 36.861115>,  <38.219074, 34.921314, 36.678238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364273, 34.865871, 36.861115>,  <38.606270, 34.773468, 37.165905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364273, 34.865871, 36.861115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156911, 0.903629, 0.398539,
		0.780615, 0.360677, -0.510443,
		-0.604995, 0.231011, -0.761981,
		38.182774, 34.935173, 36.632519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802555, 35.475300, 36.987080>,  <38.606270, 34.773468, 37.165905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802555, 35.475300, 36.987080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428341, 35.409378, 36.862103>,  <38.203812, 35.369827, 36.787117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428341, 35.409378, 36.862103>,  <38.802555, 35.475300, 36.987080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428341, 35.409378, 36.862103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301209, 0.834238, 0.461866,
		0.184537, 0.526201, -0.830095,
		-0.935532, -0.164801, -0.312444,
		38.147682, 35.359940, 36.768368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564007, 36.062988, 36.647617>,  <38.802555, 35.475300, 36.987080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564007, 36.062988, 36.647617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308216, 35.821877, 36.838501>,  <38.154743, 35.677208, 36.953033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308216, 35.821877, 36.838501>,  <38.564007, 36.062988, 36.647617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308216, 35.821877, 36.838501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229331, 0.742009, 0.629944,
		-0.733814, 0.293392, -0.612730,
		-0.639472, -0.602780, 0.477212,
		38.116375, 35.641041, 36.981667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803844, 36.386665, 36.694569>,  <38.564007, 36.062988, 36.647617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803844, 36.386665, 36.694569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919067, 36.167564, 37.008762>,  <37.988201, 36.036102, 37.197281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919067, 36.167564, 37.008762>,  <37.803844, 36.386665, 36.694569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919067, 36.167564, 37.008762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495896, 0.616384, 0.611684,
		-0.819214, -0.565718, -0.094077,
		0.288053, -0.547753, 0.785488,
		38.005482, 36.003239, 37.244408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564491, 36.865814, 37.159199>,  <37.803844, 36.386665, 36.694569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564491, 36.865814, 37.159199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713131, 37.227238, 37.073875>,  <37.802315, 37.444092, 37.022682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713131, 37.227238, 37.073875>,  <37.564491, 36.865814, 37.159199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713131, 37.227238, 37.073875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207607, -0.304817, -0.929508,
		-0.904882, 0.301124, -0.300855,
		0.371603, 0.903554, -0.213308,
		37.824612, 37.498302, 37.009884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302738, 36.928570, 36.525387>,  <37.564491, 36.865814, 37.159199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302738, 36.928570, 36.525387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602291, 37.191410, 36.559772>,  <37.782024, 37.349113, 36.580402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602291, 37.191410, 36.559772>,  <37.302738, 36.928570, 36.525387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602291, 37.191410, 36.559772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478228, -0.446056, -0.756527,
		-0.458771, 0.607661, -0.648288,
		0.748884, 0.657102, 0.085963,
		37.826958, 37.388542, 36.585560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430946, 37.150974, 35.824219>,  <37.302738, 36.928570, 36.525387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430946, 37.150974, 35.824219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760536, 37.248184, 36.028965>,  <37.958290, 37.306511, 36.151814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760536, 37.248184, 36.028965>,  <37.430946, 37.150974, 35.824219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760536, 37.248184, 36.028965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565841, -0.305265, -0.765923,
		-0.029881, 0.920735, -0.389042,
		0.823973, 0.243022, 0.511868,
		38.007729, 37.321091, 36.182526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819813, 37.684753, 35.388611>,  <37.430946, 37.150974, 35.824219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819813, 37.684753, 35.388611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099865, 37.561794, 35.646393>,  <38.267899, 37.488018, 35.801060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099865, 37.561794, 35.646393>,  <37.819813, 37.684753, 35.388611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099865, 37.561794, 35.646393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692877, 0.074523, -0.717195,
		0.172440, 0.948657, 0.265167,
		0.700133, -0.307401, 0.644452,
		38.309906, 37.469574, 35.839729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307030, 38.105747, 35.271889>,  <37.819813, 37.684753, 35.388611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307030, 38.105747, 35.271889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464558, 37.765614, 35.411510>,  <38.559074, 37.561535, 35.495285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464558, 37.765614, 35.411510>,  <38.307030, 38.105747, 35.271889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464558, 37.765614, 35.411510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630470, -0.026453, -0.775762,
		0.668890, 0.525579, 0.525692,
		0.393818, -0.850333, 0.349056,
		38.582703, 37.510513, 35.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976074, 38.207546, 35.107510>,  <38.307030, 38.105747, 35.271889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976074, 38.207546, 35.107510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952759, 37.814606, 35.178608>,  <38.938770, 37.578842, 35.221268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952759, 37.814606, 35.178608>,  <38.976074, 38.207546, 35.107510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952759, 37.814606, 35.178608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637327, -0.173660, -0.750770,
		0.768386, 0.069525, 0.636199,
		-0.058285, -0.982349, 0.177748,
		38.935272, 37.519901, 35.231934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698906, 37.899284, 34.993004>,  <38.976074, 38.207546, 35.107510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698906, 37.899284, 34.993004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452408, 37.584267, 34.994297>,  <39.304508, 37.395256, 34.995075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452408, 37.584267, 34.994297>,  <39.698906, 37.899284, 34.993004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452408, 37.584267, 34.994297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430194, -0.340057, -0.836238,
		0.659679, -0.513934, 0.548357,
		-0.616244, -0.787549, 0.003237,
		39.267536, 37.348003, 34.995270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168850, 37.358513, 34.874874>,  <39.698906, 37.899284, 34.993004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168850, 37.358513, 34.874874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817108, 37.179897, 34.808739>,  <39.606064, 37.072727, 34.769058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817108, 37.179897, 34.808739>,  <40.168850, 37.358513, 34.874874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817108, 37.179897, 34.808739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423379, -0.574324, -0.700644,
		0.217910, -0.686115, 0.694091,
		-0.879355, -0.446541, -0.165336,
		39.553303, 37.045937, 34.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386105, 36.617126, 34.604485>,  <40.168850, 37.358513, 34.874874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386105, 36.617126, 34.604485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997280, 36.633972, 34.512123>,  <39.763985, 36.644081, 34.456707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997280, 36.633972, 34.512123>,  <40.386105, 36.617126, 34.604485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997280, 36.633972, 34.512123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161892, -0.591997, -0.789513,
		-0.169947, -0.804839, 0.568641,
		-0.972064, 0.042117, -0.230905,
		39.705662, 36.646606, 34.442852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057293, 35.878609, 34.500118>,  <40.386105, 36.617126, 34.604485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057293, 35.878609, 34.500118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816154, 36.118031, 34.289097>,  <39.671471, 36.261684, 34.162483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.816154, 36.118031, 34.289097>,  <40.057293, 35.878609, 34.500118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816154, 36.118031, 34.289097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125976, -0.581511, -0.803726,
		-0.787852, -0.550979, 0.275155,
		-0.602842, 0.598554, -0.527555,
		39.635300, 36.297596, 34.130829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653309, 35.436321, 34.107639>,  <40.057293, 35.878609, 34.500118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653309, 35.436321, 34.107639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646088, 35.778347, 33.900360>,  <39.641754, 35.983562, 33.775993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646088, 35.778347, 33.900360>,  <39.653309, 35.436321, 34.107639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646088, 35.778347, 33.900360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047072, -0.516983, -0.854700,
		-0.998728, -0.039826, -0.030914,
		-0.018057, 0.855069, -0.518200,
		39.640671, 36.034866, 33.744900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189648, 35.431007, 33.518024>,  <39.653309, 35.436321, 34.107639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189648, 35.431007, 33.518024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443672, 35.720108, 33.408966>,  <39.596085, 35.893570, 33.343533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443672, 35.720108, 33.408966>,  <39.189648, 35.431007, 33.518024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443672, 35.720108, 33.408966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059620, -0.397761, -0.915550,
		-0.770161, 0.565171, -0.295691,
		0.635057, 0.722750, -0.272644,
		39.634190, 35.936932, 33.327171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826820, 35.711185, 33.061390>,  <39.189648, 35.431007, 33.518024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826820, 35.711185, 33.061390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207253, 35.814190, 32.993118>,  <39.435513, 35.875992, 32.952156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207253, 35.814190, 32.993118>,  <38.826820, 35.711185, 33.061390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207253, 35.814190, 32.993118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082135, -0.321805, -0.943237,
		-0.297821, 0.911114, -0.284911,
		0.951082, 0.257515, -0.170675,
		39.492577, 35.891445, 32.941917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803028, 35.831169, 32.409557>,  <38.826820, 35.711185, 33.061390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803028, 35.831169, 32.409557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196907, 35.795975, 32.469730>,  <39.433235, 35.774857, 32.505833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196907, 35.795975, 32.469730>,  <38.803028, 35.831169, 32.409557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196907, 35.795975, 32.469730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107679, -0.371506, -0.922165,
		0.137024, 0.924252, -0.356346,
		0.984698, -0.087988, 0.150428,
		39.492317, 35.769577, 32.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359905, 36.406326, 32.164860>,  <38.803028, 35.831169, 32.409557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359905, 36.406326, 32.164860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027126, 36.497932, 31.962708>,  <37.827457, 36.552895, 31.841415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027126, 36.497932, 31.962708>,  <38.359905, 36.406326, 32.164860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027126, 36.497932, 31.962708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327484, 0.532597, 0.780445,
		0.447901, 0.814796, -0.368094,
		-0.831949, 0.229017, -0.505383,
		37.777542, 36.566639, 31.811092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239922, 37.012314, 32.418411>,  <38.359905, 36.406326, 32.164860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239922, 37.012314, 32.418411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886929, 36.878601, 32.286064>,  <37.675133, 36.798374, 32.206657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886929, 36.878601, 32.286064>,  <38.239922, 37.012314, 32.418411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886929, 36.878601, 32.286064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452010, 0.408315, 0.793074,
		-0.130015, 0.849431, -0.511432,
		-0.882487, -0.334284, -0.330864,
		37.622181, 36.778316, 32.186806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845615, 37.594307, 32.522930>,  <38.239922, 37.012314, 32.418411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845615, 37.594307, 32.522930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612099, 37.270370, 32.499790>,  <37.471989, 37.076008, 32.485909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612099, 37.270370, 32.499790>,  <37.845615, 37.594307, 32.522930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612099, 37.270370, 32.499790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553120, 0.344546, 0.758516,
		-0.594347, 0.474809, -0.649082,
		-0.583789, -0.809842, -0.057846,
		37.436962, 37.027416, 32.482437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288826, 37.790062, 32.705387>,  <37.845615, 37.594307, 32.522930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288826, 37.790062, 32.705387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.169182, 37.409916, 32.739639>,  <37.097397, 37.181828, 32.760193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.169182, 37.409916, 32.739639>,  <37.288826, 37.790062, 32.705387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169182, 37.409916, 32.739639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578822, 0.252049, 0.775523,
		-0.758617, 0.182398, -0.625485,
		-0.299107, -0.950370, 0.085633,
		37.079449, 37.124805, 32.765327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461182, 37.813480, 32.781906>,  <37.288826, 37.790062, 32.705387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461182, 37.813480, 32.781906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.641048, 37.492462, 32.938732>,  <36.748966, 37.299850, 33.032829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.641048, 37.492462, 32.938732>,  <36.461182, 37.813480, 32.781906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641048, 37.492462, 32.938732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627774, 0.028280, 0.777882,
		-0.635375, -0.595917, -0.491103,
		0.449664, -0.802548, 0.392070,
		36.775948, 37.251698, 33.056355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961014, 37.361916, 32.820835>,  <36.461182, 37.813480, 32.781906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961014, 37.361916, 32.820835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229450, 37.215733, 33.078850>,  <36.390514, 37.128025, 33.233658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229450, 37.215733, 33.078850>,  <35.961014, 37.361916, 32.820835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229450, 37.215733, 33.078850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722493, -0.127294, 0.679559,
		-0.166245, -0.922081, -0.349471,
		0.671094, -0.365463, 0.645035,
		36.430779, 37.106094, 33.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642948, 36.623775, 33.102154>,  <35.961014, 37.361916, 32.820835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642948, 36.623775, 33.102154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905796, 36.801407, 33.345787>,  <36.063503, 36.907986, 33.491966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905796, 36.801407, 33.345787>,  <35.642948, 36.623775, 33.102154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905796, 36.801407, 33.345787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612166, -0.157082, 0.774970,
		0.439825, -0.882110, 0.168629,
		0.657121, 0.444080, 0.609086,
		36.102932, 36.934631, 33.528511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656895, 36.255959, 33.677235>,  <35.642948, 36.623775, 33.102154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656895, 36.255959, 33.677235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.834461, 36.593224, 33.798573>,  <35.941002, 36.795582, 33.871376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.834461, 36.593224, 33.798573>,  <35.656895, 36.255959, 33.677235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834461, 36.593224, 33.798573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487218, -0.056999, 0.871418,
		0.752035, -0.534634, 0.385500,
		0.443916, 0.843160, 0.303348,
		35.967636, 36.846172, 33.889576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749649, 36.070271, 34.359612>,  <35.656895, 36.255959, 33.677235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749649, 36.070271, 34.359612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.761528, 36.470039, 34.352985>,  <35.768658, 36.709900, 34.349010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.761528, 36.470039, 34.352985>,  <35.749649, 36.070271, 34.359612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761528, 36.470039, 34.352985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389156, 0.026823, 0.920781,
		0.920693, -0.020904, 0.389727,
		0.029702, 0.999422, -0.016561,
		35.770439, 36.769867, 34.348019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919353, 36.297016, 34.997860>,  <35.749649, 36.070271, 34.359612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919353, 36.297016, 34.997860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.809078, 36.655029, 34.857624>,  <35.742912, 36.869835, 34.773483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.809078, 36.655029, 34.857624>,  <35.919353, 36.297016, 34.997860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809078, 36.655029, 34.857624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305499, 0.264233, 0.914796,
		0.911408, 0.359308, 0.200584,
		-0.275693, 0.895030, -0.350592,
		35.726372, 36.923538, 34.752445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214596, 36.710602, 35.465809>,  <35.919353, 36.297016, 34.997860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214596, 36.710602, 35.465809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.933887, 36.931713, 35.286053>,  <35.765461, 37.064381, 35.178200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.933887, 36.931713, 35.286053>,  <36.214596, 36.710602, 35.465809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933887, 36.931713, 35.286053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342911, 0.290815, 0.893218,
		0.624441, 0.780937, -0.014532,
		-0.701773, 0.552779, -0.449389,
		35.723354, 37.097546, 35.151237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190956, 37.323929, 35.669453>,  <36.214596, 36.710602, 35.465809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190956, 37.323929, 35.669453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.806644, 37.290821, 35.563580>,  <35.576057, 37.270958, 35.500057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.806644, 37.290821, 35.563580>,  <36.190956, 37.323929, 35.669453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806644, 37.290821, 35.563580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275674, 0.181287, 0.944002,
		-0.030148, 0.979941, -0.196993,
		-0.960778, -0.082765, -0.264679,
		35.518410, 37.265991, 35.484177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.467258, 35.868847, 28.795006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116718, 35.708118, 28.688761>,  <38.906395, 35.611683, 28.625013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116718, 35.708118, 28.688761>,  <39.467258, 35.868847, 28.795006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116718, 35.708118, 28.688761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481600, 0.740540, 0.468681,
		0.008371, 0.538648, -0.842489,
		-0.876351, -0.401819, -0.265612,
		38.853813, 35.587574, 28.609077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986160, 36.460495, 28.571972>,  <39.467258, 35.868847, 28.795006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986160, 36.460495, 28.571972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778240, 36.142078, 28.695982>,  <38.653488, 35.951027, 28.770388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778240, 36.142078, 28.695982>,  <38.986160, 36.460495, 28.571972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778240, 36.142078, 28.695982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422230, 0.554878, 0.716821,
		-0.742648, 0.241705, -0.624542,
		-0.519804, -0.796046, 0.310024,
		38.622299, 35.903263, 28.788990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314068, 36.699715, 28.808617>,  <38.986160, 36.460495, 28.571972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314068, 36.699715, 28.808617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287167, 36.340191, 28.981880>,  <38.271027, 36.124477, 29.085838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287167, 36.340191, 28.981880>,  <38.314068, 36.699715, 28.808617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287167, 36.340191, 28.981880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350908, 0.427713, 0.833022,
		-0.933992, -0.095972, -0.344164,
		-0.067257, -0.898805, 0.433158,
		38.266991, 36.070549, 29.111828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757126, 36.724903, 29.200417>,  <38.314068, 36.699715, 28.808617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757126, 36.724903, 29.200417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928215, 36.396061, 29.350718>,  <38.030869, 36.198753, 29.440897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928215, 36.396061, 29.350718>,  <37.757126, 36.724903, 29.200417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928215, 36.396061, 29.350718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300910, 0.262481, 0.916819,
		-0.852352, -0.505215, -0.135111,
		0.427726, -0.822108, 0.375751,
		38.056534, 36.149429, 29.463442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220287, 36.319683, 29.482449>,  <37.757126, 36.724903, 29.200417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220287, 36.319683, 29.482449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561363, 36.225288, 29.668877>,  <37.766010, 36.168652, 29.780733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561363, 36.225288, 29.668877>,  <37.220287, 36.319683, 29.482449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561363, 36.225288, 29.668877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411693, 0.245652, 0.877590,
		-0.321594, -0.940193, 0.112310,
		0.852693, -0.235991, 0.466071,
		37.817173, 36.154491, 29.808699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080822, 35.745289, 30.037592>,  <37.220287, 36.319683, 29.482449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080822, 35.745289, 30.037592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417217, 35.943981, 30.123381>,  <37.619053, 36.063198, 30.174854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417217, 35.943981, 30.123381>,  <37.080822, 35.745289, 30.037592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417217, 35.943981, 30.123381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355266, 0.208000, 0.911330,
		0.408075, -0.842612, 0.351397,
		0.840988, 0.496731, 0.214471,
		37.669514, 36.092999, 30.187721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234459, 35.587917, 30.754587>,  <37.080822, 35.745289, 30.037592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234459, 35.587917, 30.754587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502628, 35.882584, 30.719133>,  <37.663532, 36.059383, 30.697861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502628, 35.882584, 30.719133>,  <37.234459, 35.587917, 30.754587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502628, 35.882584, 30.719133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107490, 0.214625, 0.970764,
		0.734148, -0.641299, 0.223074,
		0.670427, 0.736663, -0.088634,
		37.703758, 36.103580, 30.692543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688114, 35.530041, 31.334612>,  <37.234459, 35.587917, 30.754587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688114, 35.530041, 31.334612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737049, 35.901154, 31.193613>,  <37.766411, 36.123821, 31.109015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737049, 35.901154, 31.193613>,  <37.688114, 35.530041, 31.334612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737049, 35.901154, 31.193613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116689, 0.339255, 0.933429,
		0.985605, -0.155324, -0.066759,
		0.122335, 0.927783, -0.352496,
		37.773750, 36.179489, 31.087864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262886, 35.850128, 31.724829>,  <37.688114, 35.530041, 31.334612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262886, 35.850128, 31.724829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006168, 36.123837, 31.586332>,  <37.852139, 36.288059, 31.503235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006168, 36.123837, 31.586332>,  <38.262886, 35.850128, 31.724829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006168, 36.123837, 31.586332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230002, 0.258959, 0.938104,
		0.731577, 0.681702, -0.008815,
		-0.641790, 0.684268, -0.346242,
		37.813633, 36.329117, 31.482460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066380, 35.885002, 31.699554>,  <38.262886, 35.850128, 31.724829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066380, 35.885002, 31.699554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370323, 35.732601, 31.910252>,  <39.552689, 35.641159, 32.036671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370323, 35.732601, 31.910252>,  <39.066380, 35.885002, 31.699554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370323, 35.732601, 31.910252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327876, -0.475049, -0.816594,
		0.561354, 0.793199, -0.236047,
		0.759855, -0.381004, 0.526742,
		39.598278, 35.618301, 32.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618172, 35.955814, 31.328121>,  <39.066380, 35.885002, 31.699554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618172, 35.955814, 31.328121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686031, 35.648113, 31.574528>,  <39.726746, 35.463493, 31.722372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686031, 35.648113, 31.574528>,  <39.618172, 35.955814, 31.328121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686031, 35.648113, 31.574528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305337, -0.553291, -0.775009,
		0.937011, 0.319571, 0.141016,
		0.169647, -0.769249, 0.616016,
		39.736927, 35.417339, 31.759333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334179, 35.801918, 31.305729>,  <39.618172, 35.955814, 31.328121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334179, 35.801918, 31.305729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169197, 35.462505, 31.438318>,  <40.070206, 35.258858, 31.517872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169197, 35.462505, 31.438318>,  <40.334179, 35.801918, 31.305729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169197, 35.462505, 31.438318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551847, -0.522232, -0.650184,
		0.724806, -0.085251, 0.683658,
		-0.412457, -0.848532, 0.331471,
		40.045460, 35.207947, 31.537760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889931, 35.348598, 31.364273>,  <40.334179, 35.801918, 31.305729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889931, 35.348598, 31.364273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562763, 35.119812, 31.339422>,  <40.366463, 34.982540, 31.324511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562763, 35.119812, 31.339422>,  <40.889931, 35.348598, 31.364273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562763, 35.119812, 31.339422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454374, -0.575939, -0.679587,
		0.352920, -0.584077, 0.730959,
		-0.817919, -0.571969, -0.062129,
		40.317387, 34.948223, 31.320784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151600, 34.643433, 31.276339>,  <40.889931, 35.348598, 31.364273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151600, 34.643433, 31.276339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764496, 34.616081, 31.179369>,  <40.532234, 34.599670, 31.121187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764496, 34.616081, 31.179369>,  <41.151600, 34.643433, 31.276339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764496, 34.616081, 31.179369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215603, -0.722479, -0.656917,
		-0.130226, -0.688003, 0.713927,
		-0.967759, -0.068377, -0.242421,
		40.474167, 34.595570, 31.106642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966484, 33.933445, 31.279207>,  <41.151600, 34.643433, 31.276339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966484, 33.933445, 31.279207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680611, 34.089127, 31.046741>,  <40.509087, 34.182533, 30.907263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680611, 34.089127, 31.046741>,  <40.966484, 33.933445, 31.279207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680611, 34.089127, 31.046741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058795, -0.794519, -0.604386,
		-0.696973, -0.466114, 0.544946,
		-0.714683, 0.389201, -0.581163,
		40.466206, 34.205887, 30.872393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467773, 33.390179, 31.149460>,  <40.966484, 33.933445, 31.279207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467773, 33.390179, 31.149460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467937, 33.652466, 30.847458>,  <40.468037, 33.809837, 30.666258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467937, 33.652466, 30.847458>,  <40.467773, 33.390179, 31.149460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467937, 33.652466, 30.847458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088143, -0.752088, -0.653142,
		-0.996108, -0.066282, -0.058104,
		0.000408, 0.655721, -0.755003,
		40.468060, 33.849182, 30.620956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211582, 32.937466, 30.642988>,  <40.467773, 33.390179, 31.149460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211582, 32.937466, 30.642988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328560, 33.258381, 30.434832>,  <40.398746, 33.450932, 30.309938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328560, 33.258381, 30.434832>,  <40.211582, 32.937466, 30.642988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328560, 33.258381, 30.434832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333309, -0.595575, -0.730887,
		-0.896314, 0.040295, -0.441585,
		0.292448, 0.802288, -0.520392,
		40.416294, 33.499069, 30.278713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923359, 32.752377, 29.965946>,  <40.211582, 32.937466, 30.642988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923359, 32.752377, 29.965946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220398, 33.015724, 29.916782>,  <40.398621, 33.173733, 29.887283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220398, 33.015724, 29.916782>,  <39.923359, 32.752377, 29.965946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220398, 33.015724, 29.916782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405851, -0.588343, -0.699383,
		-0.532763, 0.469476, -0.704099,
		0.742595, 0.658365, -0.122910,
		40.443176, 33.213234, 29.879910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962772, 32.934204, 29.253162>,  <39.923359, 32.752377, 29.965946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962772, 32.934204, 29.253162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319466, 33.044559, 29.396662>,  <40.533482, 33.110771, 29.482761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319466, 33.044559, 29.396662>,  <39.962772, 32.934204, 29.253162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319466, 33.044559, 29.396662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452361, -0.519502, -0.724905,
		-0.013623, 0.808704, -0.588057,
		0.891731, 0.275889, 0.358749,
		40.586987, 33.127327, 29.504286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368546, 33.271729, 28.688555>,  <39.962772, 32.934204, 29.253162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368546, 33.271729, 28.688555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612026, 33.124454, 28.969673>,  <40.758114, 33.036091, 29.138344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612026, 33.124454, 28.969673>,  <40.368546, 33.271729, 28.688555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612026, 33.124454, 28.969673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462053, -0.555588, -0.691252,
		0.644973, 0.745495, -0.168066,
		0.608700, -0.368184, 0.702798,
		40.794636, 33.014000, 29.180513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951111, 33.069401, 28.350534>,  <40.368546, 33.271729, 28.688555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951111, 33.069401, 28.350534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028790, 32.867920, 28.687241>,  <41.075397, 32.747032, 28.889265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028790, 32.867920, 28.687241>,  <40.951111, 33.069401, 28.350534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028790, 32.867920, 28.687241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633353, -0.590901, -0.499700,
		0.749101, 0.630175, 0.204272,
		0.194194, -0.503702, 0.841768,
		41.087048, 32.716808, 28.939772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693764, 32.961601, 28.453815>,  <40.951111, 33.069401, 28.350534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693764, 32.961601, 28.453815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515514, 32.669758, 28.661310>,  <41.408566, 32.494652, 28.785807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515514, 32.669758, 28.661310>,  <41.693764, 32.961601, 28.453815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515514, 32.669758, 28.661310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479592, -0.683852, -0.549853,
		0.755918, 0.003756, 0.654655,
		-0.445622, -0.729611, 0.518737,
		41.381828, 32.450874, 28.816931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215126, 32.419910, 28.644268>,  <41.693764, 32.961601, 28.453815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215126, 32.419910, 28.644268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858559, 32.247414, 28.588549>,  <41.644619, 32.143917, 28.555117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858559, 32.247414, 28.588549>,  <42.215126, 32.419910, 28.644268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858559, 32.247414, 28.588549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435309, -0.729342, -0.527794,
		0.126009, -0.531123, 0.837872,
		-0.891419, -0.431240, -0.139299,
		41.591133, 32.118042, 28.546759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.862404, 28.387983, 27.152807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146290, 28.658966, 27.230124>,  <34.316620, 28.821556, 27.276514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146290, 28.658966, 27.230124>,  <33.862404, 28.387983, 27.152807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146290, 28.658966, 27.230124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287852, 0.028438, 0.957253,
		0.642999, -0.735014, 0.215189,
		0.709714, 0.677455, 0.193290,
		34.359203, 28.862202, 27.288111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140583, 28.161579, 27.701300>,  <33.862404, 28.387983, 27.152807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140583, 28.161579, 27.701300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228184, 28.551800, 27.693972>,  <34.280743, 28.785933, 27.689575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228184, 28.551800, 27.693972>,  <34.140583, 28.161579, 27.701300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228184, 28.551800, 27.693972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243973, 0.072929, 0.967036,
		0.944731, -0.207311, 0.253980,
		0.219000, 0.975553, -0.018320,
		34.293884, 28.844465, 27.688475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533146, 28.328238, 28.244869>,  <34.140583, 28.161579, 27.701300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533146, 28.328238, 28.244869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389225, 28.683937, 28.131889>,  <34.302872, 28.897356, 28.064100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389225, 28.683937, 28.131889>,  <34.533146, 28.328238, 28.244869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389225, 28.683937, 28.131889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046463, 0.285274, 0.957319,
		0.931870, 0.357572, -0.061326,
		-0.359805, 0.889247, -0.282452,
		34.281284, 28.950712, 28.047153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966442, 28.858931, 28.575672>,  <34.533146, 28.328238, 28.244869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966442, 28.858931, 28.575672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622810, 29.036982, 28.474607>,  <34.416630, 29.143812, 28.413969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622810, 29.036982, 28.474607>,  <34.966442, 28.858931, 28.575672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622810, 29.036982, 28.474607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049746, 0.418683, 0.906769,
		0.509412, 0.791559, -0.337541,
		-0.859084, 0.445127, -0.252660,
		34.365086, 29.170519, 28.398809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132744, 29.540487, 28.702583>,  <34.966442, 28.858931, 28.575672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132744, 29.540487, 28.702583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.733143, 29.522600, 28.701929>,  <34.493382, 29.511868, 28.701536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.733143, 29.522600, 28.701929>,  <35.132744, 29.540487, 28.702583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733143, 29.522600, 28.701929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012441, 0.242460, 0.970082,
		-0.042985, 0.969130, -0.242773,
		-0.998998, -0.044720, -0.001635,
		34.433445, 29.509184, 28.701439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872009, 30.233690, 28.914026>,  <35.132744, 29.540487, 28.702583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872009, 30.233690, 28.914026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573017, 29.986454, 29.011377>,  <34.393620, 29.838112, 29.069788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573017, 29.986454, 29.011377>,  <34.872009, 30.233690, 28.914026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573017, 29.986454, 29.011377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154040, 0.517675, 0.841596,
		-0.646174, 0.591588, -0.482164,
		-0.747483, -0.618090, 0.243379,
		34.348774, 29.801027, 29.084391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456123, 30.663626, 29.191031>,  <34.872009, 30.233690, 28.914026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456123, 30.663626, 29.191031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.302731, 30.328783, 29.347078>,  <34.210697, 30.127876, 29.440708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.302731, 30.328783, 29.347078>,  <34.456123, 30.663626, 29.191031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302731, 30.328783, 29.347078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148321, 0.472754, 0.868622,
		-0.911562, 0.275236, -0.305452,
		-0.383480, -0.837108, 0.390121,
		34.187687, 30.077650, 29.464115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831917, 30.863918, 29.527063>,  <34.456123, 30.663626, 29.191031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831917, 30.863918, 29.527063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.930656, 30.519846, 29.705568>,  <33.989902, 30.313402, 29.812672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.930656, 30.519846, 29.705568>,  <33.831917, 30.863918, 29.527063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930656, 30.519846, 29.705568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309515, 0.366404, 0.877467,
		-0.918294, -0.354729, -0.175792,
		0.246852, -0.860183, 0.446261,
		34.004711, 30.261791, 29.839447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258461, 30.776470, 29.905317>,  <33.831917, 30.863918, 29.527063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258461, 30.776470, 29.905317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570602, 30.580204, 30.060392>,  <33.757885, 30.462444, 30.153437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570602, 30.580204, 30.060392>,  <33.258461, 30.776470, 29.905317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570602, 30.580204, 30.060392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147312, 0.458274, 0.876518,
		-0.607744, -0.741102, 0.285334,
		0.780351, -0.490665, 0.387687,
		33.804707, 30.433004, 30.176699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000607, 30.493515, 30.459854>,  <33.258461, 30.776470, 29.905317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000607, 30.493515, 30.459854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.394146, 30.531458, 30.520567>,  <33.630272, 30.554224, 30.556993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.394146, 30.531458, 30.520567>,  <33.000607, 30.493515, 30.459854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394146, 30.531458, 30.520567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173152, 0.289732, 0.941315,
		0.045313, -0.952396, 0.301478,
		0.983852, 0.094855, 0.151780,
		33.689301, 30.559916, 30.566101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079651, 30.320745, 31.233099>,  <33.000607, 30.493515, 30.459854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079651, 30.320745, 31.233099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416645, 30.497244, 31.109468>,  <33.618839, 30.603142, 31.035290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416645, 30.497244, 31.109468>,  <33.079651, 30.320745, 31.233099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416645, 30.497244, 31.109468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102753, 0.431571, 0.896208,
		0.528835, -0.786797, 0.318251,
		0.842482, 0.441245, -0.309075,
		33.669392, 30.629618, 31.016747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498768, 30.383169, 31.881901>,  <33.079651, 30.320745, 31.233099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498768, 30.383169, 31.881901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.683392, 30.645742, 31.643217>,  <33.794167, 30.803288, 31.500008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.683392, 30.645742, 31.643217>,  <33.498768, 30.383169, 31.881901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683392, 30.645742, 31.643217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228414, 0.562024, 0.794957,
		0.857201, -0.503213, 0.109467,
		0.461556, 0.656434, -0.596708,
		33.821857, 30.842672, 31.464205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070515, 30.619589, 32.267857>,  <33.498768, 30.383169, 31.881901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070515, 30.619589, 32.267857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005436, 30.894630, 31.984808>,  <33.966389, 31.059654, 31.814978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005436, 30.894630, 31.984808>,  <34.070515, 30.619589, 32.267857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005436, 30.894630, 31.984808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037106, 0.712410, 0.700782,
		0.985979, 0.140270, -0.090390,
		-0.162693, 0.687602, -0.707626,
		33.956627, 31.100910, 31.772520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580463, 31.088615, 32.383957>,  <34.070515, 30.619589, 32.267857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580463, 31.088615, 32.383957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.279160, 31.254265, 32.179565>,  <34.098377, 31.353655, 32.056931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.279160, 31.254265, 32.179565>,  <34.580463, 31.088615, 32.383957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279160, 31.254265, 32.179565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170216, 0.627688, 0.759628,
		0.635315, 0.659175, -0.402322,
		-0.753260, 0.414121, -0.510982,
		34.053181, 31.378502, 32.026272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234539, 31.300066, 32.559437>,  <34.580463, 31.088615, 32.383957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234539, 31.300066, 32.559437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355915, 31.007381, 32.803577>,  <35.428741, 30.831770, 32.950062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355915, 31.007381, 32.803577>,  <35.234539, 31.300066, 32.559437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355915, 31.007381, 32.803577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094486, -0.614286, -0.783406,
		0.948155, 0.295384, -0.117261,
		0.303438, -0.731711, 0.610348,
		35.446945, 30.787868, 32.986683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565975, 30.941950, 32.124073>,  <35.234539, 31.300066, 32.559437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565975, 30.941950, 32.124073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531128, 30.692850, 32.435097>,  <35.510220, 30.543390, 32.621712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531128, 30.692850, 32.435097>,  <35.565975, 30.941950, 32.124073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531128, 30.692850, 32.435097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068369, -0.782422, -0.618984,
		0.993849, -0.000765, 0.110741,
		-0.087120, -0.622748, 0.777557,
		35.504993, 30.506025, 32.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112118, 30.605797, 32.000809>,  <35.565975, 30.941950, 32.124073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112118, 30.605797, 32.000809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879826, 30.372068, 32.227551>,  <35.740452, 30.231833, 32.363598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879826, 30.372068, 32.227551>,  <36.112118, 30.605797, 32.000809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879826, 30.372068, 32.227551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203343, -0.778342, -0.594000,
		0.788295, -0.229684, 0.570820,
		-0.580726, -0.584319, 0.566859,
		35.705608, 30.196774, 32.397610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615723, 30.090626, 32.302814>,  <36.112118, 30.605797, 32.000809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615723, 30.090626, 32.302814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.245350, 29.941439, 32.326649>,  <36.023129, 29.851927, 32.340950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.245350, 29.941439, 32.326649>,  <36.615723, 30.090626, 32.302814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245350, 29.941439, 32.326649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289247, -0.801663, -0.523138,
		0.242884, -0.467152, 0.850162,
		-0.925928, -0.372969, 0.059589,
		35.967571, 29.829548, 32.344524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663097, 29.305210, 32.411957>,  <36.615723, 30.090626, 32.302814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663097, 29.305210, 32.411957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311260, 29.401966, 32.248104>,  <36.100159, 29.460020, 32.149792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311260, 29.401966, 32.248104>,  <36.663097, 29.305210, 32.411957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311260, 29.401966, 32.248104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134062, -0.700145, -0.701302,
		-0.456440, -0.671779, 0.583417,
		-0.879596, 0.241888, -0.409635,
		36.047382, 29.474533, 32.125214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588333, 28.657867, 32.136948>,  <36.663097, 29.305210, 32.411957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588333, 28.657867, 32.136948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314598, 28.890551, 31.961082>,  <36.150356, 29.030161, 31.855562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314598, 28.890551, 31.961082>,  <36.588333, 28.657867, 32.136948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314598, 28.890551, 31.961082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204555, -0.425601, -0.881488,
		-0.699888, -0.693168, 0.172263,
		-0.684334, 0.581706, -0.439664,
		36.109299, 29.065062, 31.829184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212677, 28.255505, 31.784220>,  <36.588333, 28.657867, 32.136948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212677, 28.255505, 31.784220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173244, 28.609680, 31.602547>,  <36.149586, 28.822186, 31.493544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173244, 28.609680, 31.602547>,  <36.212677, 28.255505, 31.784220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173244, 28.609680, 31.602547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152750, -0.437531, -0.886134,
		-0.983336, -0.156732, -0.092119,
		-0.098580, 0.885439, -0.454181,
		36.143669, 28.875311, 31.466293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794071, 28.115726, 31.266397>,  <36.212677, 28.255505, 31.784220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794071, 28.115726, 31.266397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922642, 28.468229, 31.127794>,  <35.999786, 28.679731, 31.044632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922642, 28.468229, 31.127794>,  <35.794071, 28.115726, 31.266397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922642, 28.468229, 31.127794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076514, -0.388902, -0.918096,
		-0.943837, 0.268592, -0.192434,
		0.321431, 0.881257, -0.346509,
		36.019070, 28.732607, 31.023842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410400, 28.318197, 30.570265>,  <35.794071, 28.115726, 31.266397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410400, 28.318197, 30.570265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765930, 28.495188, 30.617941>,  <35.979248, 28.601383, 30.646547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765930, 28.495188, 30.617941>,  <35.410400, 28.318197, 30.570265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765930, 28.495188, 30.617941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247090, -0.243714, -0.937843,
		-0.385926, 0.863028, -0.325950,
		0.888824, 0.442477, 0.119190,
		36.032578, 28.627932, 30.653698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448551, 28.658606, 29.972094>,  <35.410400, 28.318197, 30.570265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448551, 28.658606, 29.972094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.828011, 28.652050, 30.098455>,  <36.055687, 28.648117, 30.174273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.828011, 28.652050, 30.098455>,  <35.448551, 28.658606, 29.972094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828011, 28.652050, 30.098455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315595, -0.018953, -0.948705,
		0.021537, 0.999686, -0.012807,
		0.948650, -0.016390, 0.315904,
		36.112606, 28.647133, 30.193226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855457, 29.253582, 29.708229>,  <35.448551, 28.658606, 29.972094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855457, 29.253582, 29.708229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129787, 28.981676, 29.812199>,  <36.294384, 28.818533, 29.874580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129787, 28.981676, 29.812199>,  <35.855457, 29.253582, 29.708229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129787, 28.981676, 29.812199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297937, -0.063606, -0.952464,
		0.663986, 0.730665, 0.158905,
		0.685825, -0.679767, 0.259925,
		36.335533, 28.777746, 29.890177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453987, 29.468876, 29.344858>,  <35.855457, 29.253582, 29.708229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453987, 29.468876, 29.344858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516266, 29.081203, 29.421221>,  <36.553635, 28.848600, 29.467037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516266, 29.081203, 29.421221>,  <36.453987, 29.468876, 29.344858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516266, 29.081203, 29.421221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391150, -0.116973, -0.912863,
		0.907061, 0.216804, 0.360883,
		0.155699, -0.969182, 0.190904,
		36.562977, 28.790449, 29.478493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108311, 29.342365, 29.179237>,  <36.453987, 29.468876, 29.344858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108311, 29.342365, 29.179237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898472, 29.002569, 29.156740>,  <36.772568, 28.798691, 29.143242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898472, 29.002569, 29.156740>,  <37.108311, 29.342365, 29.179237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898472, 29.002569, 29.156740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490666, -0.247700, -0.835399,
		0.695732, -0.465844, 0.546759,
		-0.524598, -0.849490, -0.056241,
		36.741093, 28.747723, 29.139868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552338, 28.858492, 29.093765>,  <37.108311, 29.342365, 29.179237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552338, 28.858492, 29.093765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206650, 28.731098, 28.937973>,  <36.999237, 28.654661, 28.844498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206650, 28.731098, 28.937973>,  <37.552338, 28.858492, 29.093765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206650, 28.731098, 28.937973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444033, -0.118824, -0.888096,
		0.236566, -0.940451, 0.244108,
		-0.864217, -0.318485, -0.389482,
		36.947384, 28.635553, 28.821129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229675, 28.477144, 29.206234>,  <37.552338, 28.858492, 29.093765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229675, 28.477144, 29.206234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.610210, 28.599760, 29.193626>,  <38.838531, 28.673328, 29.186062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.610210, 28.599760, 29.193626>,  <38.229675, 28.477144, 29.206234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610210, 28.599760, 29.193626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105071, 0.418826, 0.901967,
		0.289686, -0.854764, 0.430653,
		0.951337, 0.306536, -0.031517,
		38.895611, 28.691721, 29.184172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383541, 28.519588, 29.874062>,  <38.229675, 28.477144, 29.206234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383541, 28.519588, 29.874062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.725330, 28.686649, 29.750490>,  <38.930405, 28.786886, 29.676348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.725330, 28.686649, 29.750490>,  <38.383541, 28.519588, 29.874062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725330, 28.686649, 29.750490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044602, 0.533500, 0.844624,
		0.517565, -0.735493, 0.437237,
		0.854481, 0.417645, -0.308925,
		38.981674, 28.811945, 29.657812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926559, 28.368008, 30.383560>,  <38.383541, 28.519588, 29.874062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926559, 28.368008, 30.383560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044147, 28.699106, 30.192387>,  <39.114700, 28.897766, 30.077682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044147, 28.699106, 30.192387>,  <38.926559, 28.368008, 30.383560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044147, 28.699106, 30.192387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277139, 0.404729, 0.871429,
		0.914756, -0.388624, -0.110425,
		0.293966, 0.827747, -0.477932,
		39.132336, 28.947430, 30.049007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404846, 28.615376, 30.837326>,  <38.926559, 28.368008, 30.383560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404846, 28.615376, 30.837326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312244, 28.910007, 30.583128>,  <39.256683, 29.086786, 30.430609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312244, 28.910007, 30.583128>,  <39.404846, 28.615376, 30.837326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312244, 28.910007, 30.583128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066362, 0.663679, 0.745068,
		0.970567, 0.130315, -0.202526,
		-0.231506, 0.736579, -0.635497,
		39.242794, 29.130981, 30.392479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896294, 29.148029, 30.997089>,  <39.404846, 28.615376, 30.837326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896294, 29.148029, 30.997089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.574471, 29.324673, 30.838263>,  <39.381374, 29.430658, 30.742966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.574471, 29.324673, 30.838263>,  <39.896294, 29.148029, 30.997089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574471, 29.324673, 30.838263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021759, 0.646243, 0.762821,
		0.593472, 0.622376, -0.510333,
		-0.804561, 0.441609, -0.397069,
		39.333103, 29.457155, 30.719141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975750, 29.858061, 31.066214>,  <39.896294, 29.148029, 30.997089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975750, 29.858061, 31.066214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580841, 29.820694, 31.014734>,  <39.343895, 29.798275, 30.983847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580841, 29.820694, 31.014734>,  <39.975750, 29.858061, 31.066214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580841, 29.820694, 31.014734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158701, 0.526722, 0.835092,
		-0.010222, 0.844889, -0.534844,
		-0.987274, -0.093416, -0.128700,
		39.284660, 29.792669, 30.976124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644417, 30.587660, 31.046347>,  <39.975750, 29.858061, 31.066214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644417, 30.587660, 31.046347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350796, 30.334377, 31.144505>,  <39.174622, 30.182407, 31.203400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350796, 30.334377, 31.144505>,  <39.644417, 30.587660, 31.046347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350796, 30.334377, 31.144505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339809, 0.655355, 0.674567,
		-0.587960, 0.411779, -0.696233,
		-0.734052, -0.633204, 0.245396,
		39.130581, 30.144417, 31.218124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110634, 31.077597, 31.201649>,  <39.644417, 30.587660, 31.046347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110634, 31.077597, 31.201649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985394, 30.731348, 31.357941>,  <38.910252, 30.523600, 31.451715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985394, 30.731348, 31.357941>,  <39.110634, 31.077597, 31.201649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985394, 30.731348, 31.357941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543627, 0.500699, 0.673625,
		-0.778742, -0.001501, -0.627343,
		-0.313099, -0.865620, 0.390732,
		38.891464, 30.471663, 31.475161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435509, 31.169552, 31.356117>,  <39.110634, 31.077597, 31.201649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435509, 31.169552, 31.356117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572849, 30.883116, 31.599205>,  <38.655254, 30.711254, 31.745058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572849, 30.883116, 31.599205>,  <38.435509, 31.169552, 31.356117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572849, 30.883116, 31.599205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494462, 0.412303, 0.765188,
		-0.798510, -0.563222, -0.212516,
		0.343349, -0.716092, 0.607720,
		38.675854, 30.668287, 31.781521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927078, 31.168573, 31.824118>,  <38.435509, 31.169552, 31.356117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927078, 31.168573, 31.824118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241814, 30.975462, 31.977901>,  <38.430656, 30.859596, 32.070171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241814, 30.975462, 31.977901>,  <37.927078, 31.168573, 31.824118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241814, 30.975462, 31.977901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107936, 0.505701, 0.855930,
		-0.607644, -0.714978, 0.345797,
		0.786841, -0.482777, 0.384458,
		38.477867, 30.830629, 32.093239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696716, 30.997400, 32.496311>,  <37.927078, 31.168573, 31.824118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696716, 30.997400, 32.496311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096039, 30.974239, 32.493977>,  <38.335632, 30.960342, 32.492577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096039, 30.974239, 32.493977>,  <37.696716, 30.997400, 32.496311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096039, 30.974239, 32.493977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029557, 0.418045, 0.907945,
		-0.050130, -0.906579, 0.419048,
		0.998305, -0.057902, -0.005839,
		38.395531, 30.956869, 32.492226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901165, 30.761610, 33.122978>,  <37.696716, 30.997400, 32.496311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901165, 30.761610, 33.122978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.239513, 30.944962, 33.013882>,  <38.442524, 31.054974, 32.948425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.239513, 30.944962, 33.013882>,  <37.901165, 30.761610, 33.122978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239513, 30.944962, 33.013882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013069, 0.493372, 0.869720,
		0.533228, -0.739235, 0.411338,
		0.845871, 0.458384, -0.272741,
		38.493275, 31.082476, 32.932060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276649, 30.934052, 33.738350>,  <37.901165, 30.761610, 33.122978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276649, 30.934052, 33.738350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454609, 31.155537, 33.456795>,  <38.561386, 31.288427, 33.287861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454609, 31.155537, 33.456795>,  <38.276649, 30.934052, 33.738350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454609, 31.155537, 33.456795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285062, 0.657531, 0.697419,
		0.849001, -0.510935, 0.134693,
		0.444900, 0.553714, -0.703893,
		38.588078, 31.321651, 33.245628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933308, 31.056967, 33.970604>,  <38.276649, 30.934052, 33.738350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933308, 31.056967, 33.970604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.827515, 31.354918, 33.725586>,  <38.764038, 31.533688, 33.578575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.827515, 31.354918, 33.725586>,  <38.933308, 31.056967, 33.970604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827515, 31.354918, 33.725586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182052, 0.662302, 0.726783,
		0.947052, 0.080704, -0.310771,
		-0.264478, 0.744878, -0.612542,
		38.748173, 31.578381, 33.541824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.717113, 31.623329, 28.964838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.326164, 31.622250, 28.880230>,  <42.091595, 31.621603, 28.829464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.326164, 31.622250, 28.880230>,  <42.717113, 31.623329, 28.964838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326164, 31.622250, 28.880230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164363, -0.639145, -0.751318,
		-0.133167, -0.769081, 0.625124,
		-0.977370, -0.002697, -0.211522,
		42.032955, 31.621441, 28.816774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393761, 30.917036, 28.911757>,  <42.717113, 31.623329, 28.964838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393761, 30.917036, 28.911757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148376, 31.140648, 28.688633>,  <42.001144, 31.274815, 28.554758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148376, 31.140648, 28.688633>,  <42.393761, 30.917036, 28.911757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148376, 31.140648, 28.688633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233835, -0.546079, -0.804437,
		-0.754312, -0.623926, 0.204277,
		-0.613461, 0.559030, -0.557809,
		41.964336, 31.308357, 28.521290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882801, 30.482098, 28.623480>,  <42.393761, 30.917036, 28.911757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882801, 30.482098, 28.623480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904556, 30.803440, 28.386278>,  <41.917610, 30.996246, 28.243958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904556, 30.803440, 28.386278>,  <41.882801, 30.482098, 28.623480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904556, 30.803440, 28.386278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356687, -0.570334, -0.739928,
		-0.932639, -0.171272, -0.317569,
		0.054391, 0.803358, -0.593006,
		41.920876, 31.044447, 28.208376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645958, 30.180790, 28.100052>,  <41.882801, 30.482098, 28.623480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645958, 30.180790, 28.100052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809605, 30.513718, 27.950457>,  <41.907791, 30.713474, 27.860701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809605, 30.513718, 27.950457>,  <41.645958, 30.180790, 28.100052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809605, 30.513718, 27.950457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183830, -0.476633, -0.859667,
		-0.893773, 0.282953, -0.348004,
		0.409116, 0.832321, -0.373986,
		41.932339, 30.763414, 27.838261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240379, 30.492983, 27.581978>,  <41.645958, 30.180790, 28.100052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240379, 30.492983, 27.581978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614067, 30.611681, 27.502804>,  <41.838280, 30.682899, 27.455299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614067, 30.611681, 27.502804>,  <41.240379, 30.492983, 27.581978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614067, 30.611681, 27.502804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025935, -0.496936, -0.867400,
		-0.355757, 0.815474, -0.456551,
		0.934219, 0.296743, -0.197937,
		41.894333, 30.700705, 27.443422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242764, 30.416849, 26.888260>,  <41.240379, 30.492983, 27.581978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242764, 30.416849, 26.888260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.629974, 30.495512, 26.950550>,  <41.862301, 30.542709, 26.987925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.629974, 30.495512, 26.950550>,  <41.242764, 30.416849, 26.888260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629974, 30.495512, 26.950550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215070, -0.331133, -0.918747,
		-0.129112, 0.922863, -0.362840,
		0.968026, 0.196657, 0.155727,
		41.920383, 30.554510, 26.997269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431641, 30.723673, 26.311712>,  <41.242764, 30.416849, 26.888260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431641, 30.723673, 26.311712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.772053, 30.579033, 26.464020>,  <41.976299, 30.492249, 26.555405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.772053, 30.579033, 26.464020>,  <41.431641, 30.723673, 26.311712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772053, 30.579033, 26.464020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309348, -0.240696, -0.919983,
		0.424315, 0.900728, -0.092981,
		0.851035, -0.361599, 0.380770,
		42.027363, 30.470552, 26.578251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963024, 31.051289, 25.943737>,  <41.431641, 30.723673, 26.311712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963024, 31.051289, 25.943737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097797, 30.721771, 26.126095>,  <42.178661, 30.524061, 26.235510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097797, 30.721771, 26.126095>,  <41.963024, 31.051289, 25.943737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097797, 30.721771, 26.126095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354532, -0.337557, -0.871988,
		0.872227, 0.455434, 0.178325,
		0.336938, -0.823793, 0.455892,
		42.198879, 30.474634, 26.262863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623287, 30.996941, 25.696949>,  <41.963024, 31.051289, 25.943737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623287, 30.996941, 25.696949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.576660, 30.631756, 25.853367>,  <42.548683, 30.412645, 25.947218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.576660, 30.631756, 25.853367>,  <42.623287, 30.996941, 25.696949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576660, 30.631756, 25.853367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477772, -0.396726, -0.783800,
		0.870715, 0.095461, 0.482433,
		-0.116571, -0.912960, 0.391044,
		42.541687, 30.357868, 25.970680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237030, 30.607126, 25.564959>,  <42.623287, 30.996941, 25.696949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237030, 30.607126, 25.564959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996494, 30.301004, 25.656780>,  <42.852173, 30.117331, 25.711872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996494, 30.301004, 25.656780>,  <43.237030, 30.607126, 25.564959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996494, 30.301004, 25.656780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363984, -0.518153, -0.773972,
		0.711269, -0.381869, 0.590146,
		-0.601342, -0.765306, 0.229552,
		42.816093, 30.071413, 25.725645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634216, 30.040070, 25.473505>,  <43.237030, 30.607126, 25.564959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634216, 30.040070, 25.473505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.259842, 29.902925, 25.441328>,  <43.035217, 29.820639, 25.422022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.259842, 29.902925, 25.441328>,  <43.634216, 30.040070, 25.473505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259842, 29.902925, 25.441328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307046, -0.682559, -0.663201,
		0.172479, -0.645413, 0.744106,
		-0.935935, -0.342863, -0.080444,
		42.979061, 29.800066, 25.417194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582474, 29.206299, 25.578674>,  <43.634216, 30.040070, 25.473505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582474, 29.206299, 25.578674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.299198, 29.350325, 25.335752>,  <43.129234, 29.436741, 25.189999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.299198, 29.350325, 25.335752>,  <43.582474, 29.206299, 25.578674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299198, 29.350325, 25.335752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197106, -0.725146, -0.659783,
		-0.677946, -0.586957, 0.442573,
		-0.708194, 0.360063, -0.607302,
		43.086742, 29.458345, 25.153561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037083, 28.693449, 25.349874>,  <43.582474, 29.206299, 25.578674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037083, 28.693449, 25.349874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.095188, 28.975153, 25.071905>,  <43.130051, 29.144176, 24.905125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.095188, 28.975153, 25.071905>,  <43.037083, 28.693449, 25.349874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095188, 28.975153, 25.071905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229870, -0.707175, -0.668629,
		-0.962320, -0.062617, -0.264612,
		0.145260, 0.704261, -0.694922,
		43.138767, 29.186432, 24.863428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815960, 28.290808, 24.720156>,  <43.037083, 28.693449, 25.349874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815960, 28.290808, 24.720156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.083462, 28.588190, 24.717598>,  <43.243965, 28.766619, 24.716063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.083462, 28.588190, 24.717598>,  <42.815960, 28.290808, 24.720156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083462, 28.588190, 24.717598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494847, -0.451515, -0.742469,
		-0.554880, 0.493366, -0.669850,
		0.668756, 0.743454, -0.006396,
		43.284088, 28.811226, 24.715679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089214, 27.983234, 24.579773>,  <42.815960, 28.290808, 24.720156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089214, 27.983234, 24.579773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.954887, 27.606808, 24.563684>,  <41.874290, 27.380951, 24.554031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.954887, 27.606808, 24.563684>,  <42.089214, 27.983234, 24.579773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954887, 27.606808, 24.563684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723575, 0.230396, 0.650659,
		-0.603048, 0.247604, -0.758304,
		-0.335815, -0.941069, -0.040220,
		41.854141, 27.324488, 24.551619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322006, 27.950525, 24.516045>,  <42.089214, 27.983234, 24.579773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322006, 27.950525, 24.516045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.417683, 27.598370, 24.679848>,  <41.475090, 27.387075, 24.778130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.417683, 27.598370, 24.679848>,  <41.322006, 27.950525, 24.516045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417683, 27.598370, 24.679848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656055, 0.164379, 0.736594,
		-0.715806, -0.444850, -0.538267,
		0.239194, -0.880391, 0.409509,
		41.489441, 27.334251, 24.802700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667778, 27.715532, 24.733486>,  <41.322006, 27.950525, 24.516045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667778, 27.715532, 24.733486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.925034, 27.486256, 24.936590>,  <41.079388, 27.348690, 25.058453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.925034, 27.486256, 24.936590>,  <40.667778, 27.715532, 24.733486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925034, 27.486256, 24.936590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605910, 0.024530, 0.795155,
		-0.468230, -0.819055, -0.331526,
		0.643143, -0.573190, 0.507759,
		41.117977, 27.314299, 25.088919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272129, 27.320854, 25.123693>,  <40.667778, 27.715532, 24.733486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272129, 27.320854, 25.123693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622200, 27.284288, 25.313730>,  <40.832241, 27.262348, 25.427753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622200, 27.284288, 25.313730>,  <40.272129, 27.320854, 25.123693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622200, 27.284288, 25.313730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473579, 0.039004, 0.879888,
		-0.098967, -0.995049, -0.009158,
		0.875174, -0.091417, 0.475094,
		40.884750, 27.256865, 25.456259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237427, 26.821661, 25.615017>,  <40.272129, 27.320854, 25.123693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237427, 26.821661, 25.615017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549961, 27.028950, 25.754135>,  <40.737480, 27.153324, 25.837606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549961, 27.028950, 25.754135>,  <40.237427, 26.821661, 25.615017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549961, 27.028950, 25.754135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394287, -0.022112, 0.918721,
		0.483793, -0.854959, 0.187052,
		0.781333, 0.518223, 0.347797,
		40.784363, 27.184416, 25.858475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368927, 26.492966, 26.292997>,  <40.237427, 26.821661, 25.615017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368927, 26.492966, 26.292997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.517780, 26.864149, 26.284920>,  <40.607094, 27.086859, 26.280073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.517780, 26.864149, 26.284920>,  <40.368927, 26.492966, 26.292997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517780, 26.864149, 26.284920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298286, 0.140167, 0.944128,
		0.878942, -0.345322, 0.328959,
		0.372137, 0.927958, -0.020194,
		40.629421, 27.142536, 26.278862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849422, 26.653423, 26.911789>,  <40.368927, 26.492966, 26.292997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849422, 26.653423, 26.911789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.708401, 26.999743, 26.769747>,  <40.623787, 27.207535, 26.684523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.708401, 26.999743, 26.769747>,  <40.849422, 26.653423, 26.911789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708401, 26.999743, 26.769747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295766, 0.256923, 0.920062,
		0.887823, 0.429398, 0.165496,
		-0.352553, 0.865799, -0.355103,
		40.602634, 27.259481, 26.663216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132488, 27.121567, 27.331032>,  <40.849422, 26.653423, 26.911789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132488, 27.121567, 27.331032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.828407, 27.325815, 27.170355>,  <40.645958, 27.448364, 27.073950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.828407, 27.325815, 27.170355>,  <41.132488, 27.121567, 27.331032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828407, 27.325815, 27.170355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177512, 0.431508, 0.884472,
		0.624964, 0.743684, -0.237392,
		-0.760204, 0.510623, -0.401690,
		40.600346, 27.479002, 27.049849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041340, 27.685738, 27.802349>,  <41.132488, 27.121567, 27.331032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041340, 27.685738, 27.802349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.710609, 27.698786, 27.577747>,  <40.512169, 27.706615, 27.442986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.710609, 27.698786, 27.577747>,  <41.041340, 27.685738, 27.802349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710609, 27.698786, 27.577747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436521, 0.592325, 0.677201,
		0.354684, 0.805039, -0.475512,
		-0.826831, 0.032621, -0.561504,
		40.462559, 27.708572, 27.409296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883121, 28.392229, 27.697638>,  <41.041340, 27.685738, 27.802349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883121, 28.392229, 27.697638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.541203, 28.187859, 27.661257>,  <40.336052, 28.065235, 27.639429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.541203, 28.187859, 27.661257>,  <40.883121, 28.392229, 27.697638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541203, 28.187859, 27.661257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422321, 0.582999, 0.694087,
		-0.301603, 0.631715, -0.714122,
		-0.854798, -0.510928, -0.090952,
		40.284763, 28.034580, 27.633970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343079, 28.893124, 27.878279>,  <40.883121, 28.392229, 27.697638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343079, 28.893124, 27.878279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149696, 28.543226, 27.891537>,  <40.033669, 28.333288, 27.899492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.149696, 28.543226, 27.891537>,  <40.343079, 28.893124, 27.878279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149696, 28.543226, 27.891537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606533, 0.362043, 0.707844,
		-0.631181, 0.322106, -0.705591,
		-0.483455, -0.874741, 0.033147,
		40.004662, 28.280804, 27.901482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692940, 29.048832, 27.838387>,  <40.343079, 28.893124, 27.878279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692940, 29.048832, 27.838387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.672356, 28.679918, 27.991617>,  <39.660004, 28.458570, 28.083555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.672356, 28.679918, 27.991617>,  <39.692940, 29.048832, 27.838387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672356, 28.679918, 27.991617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670408, 0.316212, 0.671240,
		-0.740206, -0.222273, -0.634579,
		-0.051463, -0.922282, 0.383076,
		39.656918, 28.403234, 28.106541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007439, 28.982597, 27.955740>,  <39.692940, 29.048832, 27.838387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007439, 28.982597, 27.955740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202179, 28.720558, 28.186850>,  <39.319023, 28.563334, 28.325516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202179, 28.720558, 28.186850>,  <39.007439, 28.982597, 27.955740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202179, 28.720558, 28.186850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543700, 0.290422, 0.787430,
		-0.683643, -0.697495, -0.214785,
		0.486850, -0.655099, 0.577773,
		39.348232, 28.524029, 28.360182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455738, 28.604971, 28.304497>,  <39.007439, 28.982597, 27.955740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455738, 28.604971, 28.304497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786205, 28.572077, 28.527452>,  <38.984486, 28.552341, 28.661226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786205, 28.572077, 28.527452>,  <38.455738, 28.604971, 28.304497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786205, 28.572077, 28.527452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512318, 0.302045, 0.803927,
		-0.234467, -0.949740, 0.207410,
		0.826169, -0.082234, 0.557388,
		39.034058, 28.547407, 28.694670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845371, 28.447666, 28.582874>,  <38.455738, 28.604971, 28.304497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845371, 28.447666, 28.582874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454792, 28.405252, 28.507711>,  <37.220444, 28.379805, 28.462614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454792, 28.405252, 28.507711>,  <37.845371, 28.447666, 28.582874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454792, 28.405252, 28.507711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215366, -0.531644, -0.819129,
		-0.013044, -0.840304, 0.541958,
		-0.976447, -0.106035, -0.187908,
		37.161858, 28.373442, 28.451340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681087, 27.726158, 28.638319>,  <37.845371, 28.447666, 28.582874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681087, 27.726158, 28.638319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405724, 27.895315, 28.402603>,  <37.240505, 27.996809, 28.261173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405724, 27.895315, 28.402603>,  <37.681087, 27.726158, 28.638319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405724, 27.895315, 28.402603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230621, -0.642668, -0.730611,
		-0.687686, -0.638858, 0.344888,
		-0.688405, 0.422893, -0.589288,
		37.199203, 28.022182, 28.225817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386116, 27.142187, 28.268936>,  <37.681087, 27.726158, 28.638319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386116, 27.142187, 28.268936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297504, 27.451839, 28.031736>,  <37.244335, 27.637630, 27.889416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297504, 27.451839, 28.031736>,  <37.386116, 27.142187, 28.268936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297504, 27.451839, 28.031736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174805, -0.566733, -0.805144,
		-0.959357, -0.282025, -0.009772,
		-0.221532, 0.774129, -0.592999,
		37.231045, 27.684078, 27.853836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996456, 26.823439, 27.759426>,  <37.386116, 27.142187, 28.268936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996456, 26.823439, 27.759426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149380, 27.161871, 27.610842>,  <37.241135, 27.364931, 27.521690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149380, 27.161871, 27.610842>,  <36.996456, 26.823439, 27.759426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149380, 27.161871, 27.610842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105847, -0.439452, -0.892008,
		-0.917951, 0.301707, -0.257563,
		0.382312, 0.846082, -0.371461,
		37.264072, 27.415695, 27.499403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678596, 26.949148, 27.126633>,  <36.996456, 26.823439, 27.759426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678596, 26.949148, 27.126633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.006706, 27.176369, 27.099880>,  <37.203571, 27.312702, 27.083830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.006706, 27.176369, 27.099880>,  <36.678596, 26.949148, 27.126633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006706, 27.176369, 27.099880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032393, -0.162876, -0.986115,
		-0.571059, 0.806714, -0.152004,
		0.820270, 0.568053, -0.066880,
		37.252789, 27.346785, 27.079817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588936, 27.360493, 26.508228>,  <36.678596, 26.949148, 27.126633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588936, 27.360493, 26.508228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981842, 27.394932, 26.574858>,  <37.217587, 27.415596, 26.614836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981842, 27.394932, 26.574858>,  <36.588936, 27.360493, 26.508228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981842, 27.394932, 26.574858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180213, -0.188056, -0.965483,
		-0.051802, 0.978377, -0.200237,
		0.982263, 0.086099, 0.166574,
		37.276520, 27.420761, 26.624830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834911, 27.795269, 26.006802>,  <36.588936, 27.360493, 26.508228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834911, 27.795269, 26.006802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.141319, 27.584213, 26.153667>,  <37.325165, 27.457579, 26.241787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.141319, 27.584213, 26.153667>,  <36.834911, 27.795269, 26.006802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141319, 27.584213, 26.153667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240603, -0.294316, -0.924926,
		0.596091, 0.796852, -0.098500,
		0.766019, -0.527641, 0.367164,
		37.371124, 27.425920, 26.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889091, 28.454136, 25.630085>,  <36.834911, 27.795269, 26.006802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889091, 28.454136, 25.630085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646946, 28.679178, 25.404873>,  <36.501659, 28.814203, 25.269745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646946, 28.679178, 25.404873>,  <36.889091, 28.454136, 25.630085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646946, 28.679178, 25.404873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581746, 0.170040, 0.795398,
		0.543235, 0.809048, 0.224359,
		-0.605365, 0.562608, -0.563032,
		36.465336, 28.847961, 25.235964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788319, 29.127911, 25.987968>,  <36.889091, 28.454136, 25.630085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788319, 29.127911, 25.987968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481647, 29.076365, 25.736383>,  <36.297646, 29.045437, 25.585432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481647, 29.076365, 25.736383>,  <36.788319, 29.127911, 25.987968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481647, 29.076365, 25.736383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639935, 0.074369, 0.764822,
		-0.051785, 0.988870, -0.139484,
		-0.766683, -0.128867, -0.628960,
		36.251644, 29.037704, 25.547695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372231, 29.725271, 26.096809>,  <36.788319, 29.127911, 25.987968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372231, 29.725271, 26.096809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138180, 29.455666, 25.916439>,  <35.997749, 29.293901, 25.808216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138180, 29.455666, 25.916439>,  <36.372231, 29.725271, 26.096809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138180, 29.455666, 25.916439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610302, -0.000160, 0.792169,
		-0.534006, 0.738718, -0.411259,
		-0.585123, -0.674015, -0.450926,
		35.962643, 29.253462, 25.781160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662552, 30.069902, 26.035000>,  <36.372231, 29.725271, 26.096809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662552, 30.069902, 26.035000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604382, 29.676966, 25.987919>,  <35.569481, 29.441204, 25.959669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604382, 29.676966, 25.987919>,  <35.662552, 30.069902, 26.035000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604382, 29.676966, 25.987919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722422, 0.024148, 0.691031,
		-0.675986, 0.185527, -0.713177,
		-0.145427, -0.982342, -0.117704,
		35.560753, 29.382263, 25.952608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902523, 29.966576, 25.877752>,  <35.662552, 30.069902, 26.035000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902523, 29.966576, 25.877752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060024, 29.637905, 26.042582>,  <35.154526, 29.440702, 26.141479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060024, 29.637905, 26.042582>,  <34.902523, 29.966576, 25.877752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060024, 29.637905, 26.042582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727392, -0.004434, 0.686208,
		-0.562015, -0.569935, -0.599428,
		0.393752, -0.821678, 0.412074,
		35.178150, 29.391401, 26.166204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382847, 29.513914, 25.976431>,  <34.902523, 29.966576, 25.877752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382847, 29.513914, 25.976431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641567, 29.390045, 26.255215>,  <34.796799, 29.315723, 26.422485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641567, 29.390045, 26.255215>,  <34.382847, 29.513914, 25.976431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641567, 29.390045, 26.255215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728168, 0.020965, 0.685078,
		-0.226762, -0.950612, -0.211934,
		0.646800, -0.309673, 0.696959,
		34.835606, 29.297144, 26.464302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969070, 29.167620, 26.400126>,  <34.382847, 29.513914, 25.976431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969070, 29.167620, 26.400126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291462, 29.161116, 26.636816>,  <34.484898, 29.157213, 26.778830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291462, 29.161116, 26.636816>,  <33.969070, 29.167620, 26.400126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291462, 29.161116, 26.636816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586074, 0.118550, 0.801538,
		-0.083182, -0.992815, 0.086018,
		0.805977, -0.016261, 0.591724,
		34.533257, 29.156239, 26.814333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.554569, 31.672680, 23.440845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697632, 31.382584, 23.676168>,  <40.783470, 31.208527, 23.817362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697632, 31.382584, 23.676168>,  <40.554569, 31.672680, 23.440845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697632, 31.382584, 23.676168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545405, 0.349147, 0.761991,
		-0.758033, -0.593398, -0.270675,
		0.357659, -0.725241, 0.588307,
		40.804928, 31.165010, 23.852661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959427, 31.286757, 23.816729>,  <40.554569, 31.672680, 23.440845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959427, 31.286757, 23.816729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.298141, 31.270460, 24.028877>,  <40.501369, 31.260683, 24.156166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.298141, 31.270460, 24.028877>,  <39.959427, 31.286757, 23.816729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298141, 31.270460, 24.028877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446826, 0.486504, 0.750773,
		-0.288615, -0.872728, 0.393761,
		0.846786, -0.040742, 0.530370,
		40.552177, 31.258238, 24.187988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716702, 31.198189, 24.483297>,  <39.959427, 31.286757, 23.816729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716702, 31.198189, 24.483297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096703, 31.317738, 24.519453>,  <40.324703, 31.389467, 24.541147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096703, 31.317738, 24.519453>,  <39.716702, 31.198189, 24.483297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096703, 31.317738, 24.519453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228549, 0.468347, 0.853473,
		0.212745, -0.831461, 0.513238,
		0.950003, 0.298872, 0.090391,
		40.381702, 31.407400, 24.546570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999786, 31.066086, 25.282684>,  <39.716702, 31.198189, 24.483297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999786, 31.066086, 25.282684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200214, 31.354813, 25.091724>,  <40.320469, 31.528049, 24.977148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200214, 31.354813, 25.091724>,  <39.999786, 31.066086, 25.282684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200214, 31.354813, 25.091724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289491, 0.659670, 0.693563,
		0.815555, -0.209316, 0.539497,
		0.501064, 0.721819, -0.477402,
		40.350533, 31.571358, 24.948503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371273, 31.340075, 25.812773>,  <39.999786, 31.066086, 25.282684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371273, 31.340075, 25.812773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372810, 31.626343, 25.533403>,  <40.373734, 31.798103, 25.365782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372810, 31.626343, 25.533403>,  <40.371273, 31.340075, 25.812773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372810, 31.626343, 25.533403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132181, 0.692666, 0.709043,
		0.991218, 0.089590, 0.097264,
		0.003848, 0.715673, -0.698425,
		40.373966, 31.841045, 25.323875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925720, 31.817501, 25.959671>,  <40.371273, 31.340075, 25.812773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925720, 31.817501, 25.959671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684177, 32.030060, 25.722025>,  <40.539253, 32.157597, 25.579437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684177, 32.030060, 25.722025>,  <40.925720, 31.817501, 25.959671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684177, 32.030060, 25.722025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095152, 0.691967, 0.715631,
		0.791393, 0.488670, -0.367286,
		-0.603857, 0.531397, -0.594116,
		40.503021, 32.189480, 25.543791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056980, 32.529293, 26.212864>,  <40.925720, 31.817501, 25.959671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056980, 32.529293, 26.212864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.719807, 32.576859, 26.002975>,  <40.517502, 32.605396, 25.877043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.719807, 32.576859, 26.002975>,  <41.056980, 32.529293, 26.212864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719807, 32.576859, 26.002975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304849, 0.698053, 0.647911,
		0.443325, 0.706104, -0.552160,
		-0.842929, 0.118909, -0.524719,
		40.466927, 32.612530, 25.845560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037109, 33.329056, 26.064844>,  <41.056980, 32.529293, 26.212864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037109, 33.329056, 26.064844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672237, 33.170170, 26.024559>,  <40.453316, 33.074837, 26.000387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672237, 33.170170, 26.024559>,  <41.037109, 33.329056, 26.064844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672237, 33.170170, 26.024559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407065, 0.850049, 0.334236,
		-0.047154, 0.345881, -0.937093,
		-0.912181, -0.397218, -0.100713,
		40.398582, 33.051003, 25.994345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593826, 33.912804, 25.855640>,  <41.037109, 33.329056, 26.064844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593826, 33.912804, 25.855640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345840, 33.626247, 25.983652>,  <40.197048, 33.454311, 26.060459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345840, 33.626247, 25.983652>,  <40.593826, 33.912804, 25.855640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345840, 33.626247, 25.983652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531634, 0.683514, 0.500175,
		-0.577066, 0.139955, -0.804617,
		-0.619969, -0.716395, 0.320027,
		40.159851, 33.411327, 26.079660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958092, 34.180653, 25.682520>,  <40.593826, 33.912804, 25.855640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958092, 34.180653, 25.682520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895351, 33.897160, 25.957649>,  <39.857708, 33.727066, 26.122726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895351, 33.897160, 25.957649>,  <39.958092, 34.180653, 25.682520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895351, 33.897160, 25.957649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410370, 0.680244, 0.607342,
		-0.898329, -0.187002, -0.397537,
		-0.156848, -0.708730, 0.687823,
		39.848297, 33.684540, 26.163996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216442, 34.306046, 25.952394>,  <39.958092, 34.180653, 25.682520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216442, 34.306046, 25.952394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399353, 34.065769, 26.214710>,  <39.509102, 33.921604, 26.372099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399353, 34.065769, 26.214710>,  <39.216442, 34.306046, 25.952394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399353, 34.065769, 26.214710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414205, 0.508680, 0.754771,
		-0.786974, -0.616774, -0.016201,
		0.457282, -0.600696, 0.655788,
		39.536537, 33.885559, 26.411448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724380, 34.177242, 26.423738>,  <39.216442, 34.306046, 25.952394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724380, 34.177242, 26.423738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.063412, 34.120365, 26.628246>,  <39.266830, 34.086239, 26.750952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.063412, 34.120365, 26.628246>,  <38.724380, 34.177242, 26.423738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063412, 34.120365, 26.628246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396359, 0.471008, 0.788068,
		-0.352869, -0.870593, 0.342856,
		0.847575, -0.142191, 0.511272,
		39.317684, 34.077709, 26.781628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392731, 33.484917, 26.456409>,  <38.724380, 34.177242, 26.423738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392731, 33.484917, 26.456409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.998405, 33.428631, 26.419807>,  <37.761810, 33.394859, 26.397846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.998405, 33.428631, 26.419807>,  <38.392731, 33.484917, 26.456409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998405, 33.428631, 26.419807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165712, -0.729166, -0.663970,
		0.026708, -0.669714, 0.742139,
		-0.985813, -0.140715, -0.091505,
		37.702663, 33.386417, 26.392355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348812, 32.755051, 26.536400>,  <38.392731, 33.484917, 26.456409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348812, 32.755051, 26.536400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019684, 32.874516, 26.343002>,  <37.822208, 32.946194, 26.226963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019684, 32.874516, 26.343002>,  <38.348812, 32.755051, 26.536400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019684, 32.874516, 26.343002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122926, -0.737095, -0.664515,
		-0.554845, -0.606211, 0.569784,
		-0.822822, 0.298662, -0.483492,
		37.772839, 32.964115, 26.197954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858086, 32.154690, 26.354111>,  <38.348812, 32.755051, 26.536400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858086, 32.154690, 26.354111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.752373, 32.445248, 26.100338>,  <37.688946, 32.619583, 25.948074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.752373, 32.445248, 26.100338>,  <37.858086, 32.154690, 26.354111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752373, 32.445248, 26.100338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025357, -0.662824, -0.748346,
		-0.964113, -0.181685, 0.193590,
		-0.264279, 0.726398, -0.634430,
		37.673088, 32.663166, 25.910009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234619, 31.840651, 25.897009>,  <37.858086, 32.154690, 26.354111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234619, 31.840651, 25.897009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.408482, 32.150623, 25.713463>,  <37.512798, 32.336609, 25.603334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.408482, 32.150623, 25.713463>,  <37.234619, 31.840651, 25.897009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408482, 32.150623, 25.713463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023162, -0.518962, -0.854484,
		-0.900300, 0.360776, -0.243517,
		0.434653, 0.774932, -0.458865,
		37.538879, 32.383102, 25.575804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833408, 32.098045, 25.284039>,  <37.234619, 31.840651, 25.897009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833408, 32.098045, 25.284039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207161, 32.215073, 25.202715>,  <37.431412, 32.285290, 25.153921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207161, 32.215073, 25.202715>,  <36.833408, 32.098045, 25.284039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207161, 32.215073, 25.202715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099509, -0.333629, -0.937438,
		-0.342094, 0.896156, -0.282624,
		0.934382, 0.292568, -0.203308,
		37.487476, 32.302841, 25.141722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847244, 32.653183, 24.648764>,  <36.833408, 32.098045, 25.284039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847244, 32.653183, 24.648764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228397, 32.534176, 24.672413>,  <37.457088, 32.462772, 24.686602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228397, 32.534176, 24.672413>,  <36.847244, 32.653183, 24.648764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228397, 32.534176, 24.672413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050201, -0.037544, -0.998033,
		0.299153, 0.953978, -0.020839,
		0.952884, -0.297519, 0.059122,
		37.514263, 32.444920, 24.690149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171597, 32.939434, 24.131725>,  <36.847244, 32.653183, 24.648764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171597, 32.939434, 24.131725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.463921, 32.670982, 24.181511>,  <37.639317, 32.509911, 24.211382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.463921, 32.670982, 24.181511>,  <37.171597, 32.939434, 24.131725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463921, 32.670982, 24.181511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049752, -0.129487, -0.990332,
		0.680761, 0.729941, -0.061241,
		0.730814, -0.671133, 0.124465,
		37.683167, 32.469643, 24.218851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542812, 32.979698, 23.506804>,  <37.171597, 32.939434, 24.131725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542812, 32.979698, 23.506804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660618, 32.631645, 23.664862>,  <37.731300, 32.422813, 23.759697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660618, 32.631645, 23.664862>,  <37.542812, 32.979698, 23.506804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660618, 32.631645, 23.664862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105914, -0.381217, -0.918399,
		0.949761, 0.312330, -0.020114,
		0.294511, -0.870129, 0.395145,
		37.748970, 32.370605, 23.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198689, 32.744404, 23.213999>,  <37.542812, 32.979698, 23.506804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198689, 32.744404, 23.213999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.026409, 32.417385, 23.366894>,  <37.923042, 32.221172, 23.458632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.026409, 32.417385, 23.366894>,  <38.198689, 32.744404, 23.213999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026409, 32.417385, 23.366894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203712, -0.500673, -0.841325,
		0.879203, -0.284493, 0.382186,
		-0.430702, -0.817551, 0.382239,
		37.897198, 32.172119, 23.481565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676716, 32.255314, 23.107704>,  <38.198689, 32.744404, 23.213999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676716, 32.255314, 23.107704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338146, 32.042370, 23.112749>,  <38.135006, 31.914604, 23.115776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338146, 32.042370, 23.112749>,  <38.676716, 32.255314, 23.107704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338146, 32.042370, 23.112749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189871, -0.323840, -0.926864,
		0.497510, -0.782125, 0.375186,
		-0.846423, -0.532361, 0.012611,
		38.084221, 31.882662, 23.116533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886272, 31.601025, 22.804346>,  <38.676716, 32.255314, 23.107704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886272, 31.601025, 22.804346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487732, 31.624683, 22.779753>,  <38.248608, 31.638880, 22.764996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487732, 31.624683, 22.779753>,  <38.886272, 31.601025, 22.804346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487732, 31.624683, 22.779753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012233, -0.614176, -0.789074,
		-0.084436, -0.786949, 0.611213,
		-0.996354, 0.059149, -0.061485,
		38.188828, 31.642427, 22.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752277, 31.005461, 22.721827>,  <38.886272, 31.601025, 22.804346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752277, 31.005461, 22.721827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.416889, 31.191845, 22.608799>,  <38.215656, 31.303677, 22.540983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.416889, 31.191845, 22.608799>,  <38.752277, 31.005461, 22.721827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416889, 31.191845, 22.608799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063899, -0.599016, -0.798183,
		-0.541186, -0.651198, 0.532032,
		-0.838472, 0.465962, -0.282568,
		38.165348, 31.331635, 22.524029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418659, 30.442509, 22.546417>,  <38.752277, 31.005461, 22.721827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418659, 30.442509, 22.546417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.218464, 30.752213, 22.391479>,  <38.098347, 30.938034, 22.298517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.218464, 30.752213, 22.391479>,  <38.418659, 30.442509, 22.546417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218464, 30.752213, 22.391479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030836, -0.463071, -0.885785,
		-0.865193, -0.431382, 0.255637,
		-0.500490, 0.774258, -0.387344,
		38.068317, 30.984489, 22.275276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864059, 30.204567, 22.135096>,  <38.418659, 30.442509, 22.546417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864059, 30.204567, 22.135096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.948898, 30.566298, 21.986931>,  <37.999802, 30.783337, 21.898031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.948898, 30.566298, 21.986931>,  <37.864059, 30.204567, 22.135096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948898, 30.566298, 21.986931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058396, -0.390087, -0.918925,
		-0.975502, 0.173272, -0.135546,
		0.212099, 0.904328, -0.370412,
		38.012527, 30.837597, 21.875807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635635, 29.578375, 22.453270>,  <37.864059, 30.204567, 22.135096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635635, 29.578375, 22.453270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.480030, 29.210323, 22.471292>,  <37.386665, 28.989492, 22.482105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.480030, 29.210323, 22.471292>,  <37.635635, 29.578375, 22.453270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480030, 29.210323, 22.471292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339217, 0.188545, 0.921620,
		-0.856504, 0.343241, -0.385470,
		-0.389016, -0.920129, 0.045056,
		37.363327, 28.934284, 22.484810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973171, 29.659698, 22.673891>,  <37.635635, 29.578375, 22.453270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973171, 29.659698, 22.673891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.053360, 29.280233, 22.771746>,  <37.101475, 29.052553, 22.830458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.053360, 29.280233, 22.771746>,  <36.973171, 29.659698, 22.673891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053360, 29.280233, 22.771746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486855, 0.120222, 0.865170,
		-0.850166, -0.292545, -0.437761,
		0.200473, -0.948665, 0.244635,
		37.113503, 28.995634, 22.845137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406143, 29.451944, 23.004639>,  <36.973171, 29.659698, 22.673891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406143, 29.451944, 23.004639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.687305, 29.187563, 23.109762>,  <36.856003, 29.028934, 23.172836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.687305, 29.187563, 23.109762>,  <36.406143, 29.451944, 23.004639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687305, 29.187563, 23.109762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431873, -0.103000, 0.896034,
		-0.565167, -0.743326, -0.357846,
		0.702903, -0.660953, 0.262810,
		36.898178, 28.989277, 23.188604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032097, 28.847937, 23.319294>,  <36.406143, 29.451944, 23.004639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032097, 28.847937, 23.319294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404099, 28.848867, 23.466307>,  <36.627300, 28.849426, 23.554514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404099, 28.848867, 23.466307>,  <36.032097, 28.847937, 23.319294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404099, 28.848867, 23.466307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355316, -0.250045, 0.900682,
		0.093996, -0.968231, -0.231717,
		0.930009, 0.002328, 0.367531,
		36.683102, 28.849566, 23.576567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025677, 28.268097, 23.775253>,  <36.032097, 28.847937, 23.319294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025677, 28.268097, 23.775253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.330814, 28.507391, 23.873379>,  <36.513897, 28.650967, 23.932255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.330814, 28.507391, 23.873379>,  <36.025677, 28.268097, 23.775253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330814, 28.507391, 23.873379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308303, 0.003048, 0.951284,
		0.568343, -0.801315, 0.186762,
		0.762847, 0.598234, 0.245315,
		36.559669, 28.686861, 23.946974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329453, 27.933615, 24.457464>,  <36.025677, 28.268097, 23.775253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329453, 27.933615, 24.457464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416931, 28.321833, 24.417040>,  <36.469418, 28.554764, 24.392786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416931, 28.321833, 24.417040>,  <36.329453, 27.933615, 24.457464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416931, 28.321833, 24.417040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312859, 0.167840, 0.934852,
		0.924279, -0.172829, 0.340349,
		0.218694, 0.970546, -0.101060,
		36.482540, 28.612997, 24.386723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798515, 28.086258, 25.001083>,  <36.329453, 27.933615, 24.457464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798515, 28.086258, 25.001083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.659332, 28.445784, 24.894455>,  <36.575821, 28.661499, 24.830479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.659332, 28.445784, 24.894455>,  <36.798515, 28.086258, 25.001083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659332, 28.445784, 24.894455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296664, 0.164164, 0.940766,
		0.889335, 0.406428, 0.209524,
		-0.347957, 0.898814, -0.266569,
		36.554947, 28.715427, 24.814484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403698, 27.962132, 25.464060>,  <36.798515, 28.086258, 25.001083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403698, 27.962132, 25.464060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555988, 27.648357, 25.659901>,  <37.647362, 27.460093, 25.777405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555988, 27.648357, 25.659901>,  <37.403698, 27.962132, 25.464060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555988, 27.648357, 25.659901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641153, -0.157588, -0.751058,
		0.666313, 0.599853, 0.442948,
		0.380722, -0.784438, 0.489601,
		37.670204, 27.413027, 25.806782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033844, 27.996731, 25.683233>,  <37.403698, 27.962132, 25.464060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033844, 27.996731, 25.683233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.996933, 27.599386, 25.655762>,  <37.974785, 27.360979, 25.639278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.996933, 27.599386, 25.655762>,  <38.033844, 27.996731, 25.683233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996933, 27.599386, 25.655762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605920, -0.001284, -0.795524,
		0.790155, -0.115022, 0.602017,
		-0.092276, -0.993362, -0.068679,
		37.969250, 27.301378, 25.635159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639462, 27.839556, 25.279459>,  <38.033844, 27.996731, 25.683233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639462, 27.839556, 25.279459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.429062, 27.499445, 25.271994>,  <38.302822, 27.295378, 25.267515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.429062, 27.499445, 25.271994>,  <38.639462, 27.839556, 25.279459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429062, 27.499445, 25.271994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462818, -0.267763, -0.845046,
		0.713528, -0.453133, 0.534368,
		-0.526002, -0.850279, -0.018662,
		38.271263, 27.244362, 25.266396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136875, 27.258606, 25.435104>,  <38.639462, 27.839556, 25.279459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136875, 27.258606, 25.435104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.823929, 27.103531, 25.240128>,  <38.636162, 27.010487, 25.123142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.823929, 27.103531, 25.240128>,  <39.136875, 27.258606, 25.435104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823929, 27.103531, 25.240128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612877, -0.339956, -0.713311,
		0.110834, -0.856813, 0.503575,
		-0.782367, -0.387688, -0.487442,
		38.589218, 26.987225, 25.093895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303799, 26.623186, 25.338753>,  <39.136875, 27.258606, 25.435104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303799, 26.623186, 25.338753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009037, 26.665827, 25.071737>,  <38.832180, 26.691410, 24.911528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009037, 26.665827, 25.071737>,  <39.303799, 26.623186, 25.338753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009037, 26.665827, 25.071737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606656, -0.331372, -0.722608,
		-0.298235, -0.937459, 0.179519,
		-0.736903, 0.106601, -0.667541,
		38.787968, 26.697807, 24.871475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156090, 25.943737, 25.044521>,  <39.303799, 26.623186, 25.338753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156090, 25.943737, 25.044521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028694, 26.219938, 24.784746>,  <38.952259, 26.385658, 24.628881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028694, 26.219938, 24.784746>,  <39.156090, 25.943737, 25.044521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028694, 26.219938, 24.784746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477781, -0.474793, -0.739119,
		-0.818714, -0.545688, -0.178695,
		-0.318486, 0.690504, -0.649440,
		38.933147, 26.427090, 24.589914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228294, 25.583261, 24.401234>,  <39.156090, 25.943737, 25.044521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228294, 25.583261, 24.401234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.180065, 25.963366, 24.286364>,  <39.151127, 26.191427, 24.217442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.180065, 25.963366, 24.286364>,  <39.228294, 25.583261, 24.401234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180065, 25.963366, 24.286364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436112, -0.209170, -0.875245,
		-0.891778, -0.230769, -0.389200,
		-0.120570, 0.950260, -0.287174,
		39.143894, 26.248444, 24.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844894, 25.590996, 23.766973>,  <39.228294, 25.583261, 24.401234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844894, 25.590996, 23.766973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049568, 25.933592, 23.794138>,  <39.172371, 26.139149, 23.810436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049568, 25.933592, 23.794138>,  <38.844894, 25.590996, 23.766973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049568, 25.933592, 23.794138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516383, -0.243393, -0.821041,
		-0.686682, 0.455179, -0.566815,
		0.511680, 0.856488, 0.067913,
		39.203072, 26.190538, 23.814512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765362, 25.779364, 23.134722>,  <38.844894, 25.590996, 23.766973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765362, 25.779364, 23.134722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.066074, 26.000601, 23.278337>,  <39.246502, 26.133343, 23.364506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.066074, 26.000601, 23.278337>,  <38.765362, 25.779364, 23.134722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066074, 26.000601, 23.278337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600959, -0.350568, -0.718297,
		-0.271417, 0.755772, -0.595937,
		0.751786, 0.553092, 0.359038,
		39.291611, 26.166529, 23.386049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.791367, 34.749619, 35.866528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179794, 34.661694, 35.829185>,  <35.412849, 34.608940, 35.806782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179794, 34.661694, 35.829185>,  <34.791367, 34.749619, 35.866528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179794, 34.661694, 35.829185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237102, -0.840683, -0.486862,
		0.028536, 0.494910, -0.868476,
		0.971066, -0.219810, -0.093354,
		35.471115, 34.595749, 35.801178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843174, 34.478798, 35.204704>,  <34.791367, 34.749619, 35.866528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843174, 34.478798, 35.204704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188438, 34.368572, 35.373943>,  <35.395599, 34.302437, 35.475487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188438, 34.368572, 35.373943>,  <34.843174, 34.478798, 35.204704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188438, 34.368572, 35.373943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031389, -0.807036, -0.589667,
		0.503947, 0.522260, -0.687955,
		0.863164, -0.275566, 0.423097,
		35.447388, 34.285904, 35.500874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425301, 34.355530, 34.611340>,  <34.843174, 34.478798, 35.204704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425301, 34.355530, 34.611340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506496, 34.144600, 34.941364>,  <35.555214, 34.018040, 35.139378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506496, 34.144600, 34.941364>,  <35.425301, 34.355530, 34.611340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506496, 34.144600, 34.941364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016559, -0.840631, -0.541355,
		0.979041, 0.123552, -0.161907,
		0.202989, -0.527327, 0.825058,
		35.567394, 33.986401, 35.188881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765606, 33.895447, 34.409332>,  <35.425301, 34.355530, 34.611340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765606, 33.895447, 34.409332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702518, 33.716896, 34.761665>,  <35.664665, 33.609764, 34.973064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702518, 33.716896, 34.761665>,  <35.765606, 33.895447, 34.409332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702518, 33.716896, 34.761665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113300, -0.894288, -0.432911,
		0.980964, 0.031523, 0.191617,
		-0.157714, -0.446380, 0.880836,
		35.655205, 33.582981, 35.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289097, 33.371067, 34.518288>,  <35.765606, 33.895447, 34.409332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289097, 33.371067, 34.518288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973888, 33.280159, 34.747154>,  <35.784763, 33.225616, 34.884472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973888, 33.280159, 34.747154>,  <36.289097, 33.371067, 34.518288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973888, 33.280159, 34.747154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063642, -0.954462, -0.291466,
		0.612347, -0.193269, 0.766602,
		-0.788023, -0.227266, 0.572162,
		35.737480, 33.211979, 34.918804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472649, 32.743313, 34.686081>,  <36.289097, 33.371067, 34.518288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472649, 32.743313, 34.686081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084221, 32.763008, 34.779541>,  <35.851162, 32.774826, 34.835617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084221, 32.763008, 34.779541>,  <36.472649, 32.743313, 34.686081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084221, 32.763008, 34.779541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123215, -0.941497, -0.313690,
		0.204533, -0.333406, 0.920330,
		-0.971074, 0.049238, 0.233648,
		35.792900, 32.777779, 34.849636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305264, 32.017712, 35.083027>,  <36.472649, 32.743313, 34.686081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305264, 32.017712, 35.083027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972454, 32.196594, 34.951729>,  <35.772770, 32.303925, 34.872952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972454, 32.196594, 34.951729>,  <36.305264, 32.017712, 35.083027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972454, 32.196594, 34.951729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306376, -0.863714, -0.400164,
		-0.462465, -0.232380, 0.855644,
		-0.832022, 0.447210, -0.328242,
		35.722847, 32.330757, 34.853256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903698, 31.451962, 35.120308>,  <36.305264, 32.017712, 35.083027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903698, 31.451962, 35.120308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705841, 31.692772, 34.869583>,  <35.587128, 31.837257, 34.719147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705841, 31.692772, 34.869583>,  <35.903698, 31.451962, 35.120308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705841, 31.692772, 34.869583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418841, -0.797073, -0.435026,
		-0.761511, 0.047350, 0.646421,
		-0.494646, 0.602024, -0.626811,
		35.557449, 31.873379, 34.681538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151791, 31.185419, 35.070992>,  <35.903698, 31.451962, 35.120308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151791, 31.185419, 35.070992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250294, 31.407986, 34.753563>,  <35.309395, 31.541525, 34.563107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250294, 31.407986, 34.753563>,  <35.151791, 31.185419, 35.070992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250294, 31.407986, 34.753563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280628, -0.742781, -0.607885,
		-0.927687, 0.372397, -0.026772,
		0.246260, 0.556415, -0.793573,
		35.324173, 31.574909, 34.515491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641491, 30.993279, 34.492378>,  <35.151791, 31.185419, 35.070992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641491, 30.993279, 34.492378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957962, 31.144840, 34.300350>,  <35.147846, 31.235777, 34.185135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957962, 31.144840, 34.300350>,  <34.641491, 30.993279, 34.492378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957962, 31.144840, 34.300350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157021, -0.632801, -0.758227,
		-0.591083, 0.675275, -0.441164,
		0.791180, 0.378903, -0.480070,
		35.195316, 31.258511, 34.156330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446682, 31.017691, 33.756912>,  <34.641491, 30.993279, 34.492378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446682, 31.017691, 33.756912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845695, 31.042570, 33.769882>,  <35.085106, 31.057499, 33.777664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845695, 31.042570, 33.769882>,  <34.446682, 31.017691, 33.756912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845695, 31.042570, 33.769882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063409, -0.601964, -0.796002,
		-0.029994, 0.796097, -0.604425,
		0.997537, 0.062201, 0.032424,
		35.144955, 31.061230, 33.779610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746700, 31.302265, 33.101654>,  <34.446682, 31.017691, 33.756912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746700, 31.302265, 33.101654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037937, 31.080980, 33.263561>,  <35.212681, 30.948210, 33.360706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037937, 31.080980, 33.263561>,  <34.746700, 31.302265, 33.101654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037937, 31.080980, 33.263561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083192, -0.514813, -0.853256,
		0.680412, 0.654923, -0.328809,
		0.728093, -0.553211, 0.404770,
		35.256367, 30.915016, 33.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655743, 31.786892, 32.524006>,  <34.746700, 31.302265, 33.101654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655743, 31.786892, 32.524006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285717, 31.760916, 32.374317>,  <34.063702, 31.745329, 32.284504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285717, 31.760916, 32.374317>,  <34.655743, 31.786892, 32.524006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285717, 31.760916, 32.374317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335681, 0.600754, 0.725543,
		0.177696, 0.796792, -0.577536,
		-0.925064, -0.064942, -0.374219,
		34.008198, 31.741434, 32.262051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368237, 32.426620, 32.476578>,  <34.655743, 31.786892, 32.524006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368237, 32.426620, 32.476578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046471, 32.189789, 32.495987>,  <33.853409, 32.047691, 32.507633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046471, 32.189789, 32.495987>,  <34.368237, 32.426620, 32.476578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046471, 32.189789, 32.495987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400775, 0.601161, 0.691365,
		-0.438511, 0.536701, -0.720875,
		-0.804418, -0.592079, 0.048519,
		33.805145, 32.012165, 32.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859615, 32.902195, 32.443069>,  <34.368237, 32.426620, 32.476578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859615, 32.902195, 32.443069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670593, 32.581387, 32.589191>,  <33.557178, 32.388901, 32.676865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670593, 32.581387, 32.589191>,  <33.859615, 32.902195, 32.443069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670593, 32.581387, 32.589191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591216, 0.595896, 0.543481,
		-0.653570, 0.040849, -0.755763,
		-0.472557, -0.802022, 0.365309,
		33.528828, 32.340778, 32.698784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169193, 32.970833, 32.371353>,  <33.859615, 32.902195, 32.443069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169193, 32.970833, 32.371353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197651, 32.709660, 32.672977>,  <33.214725, 32.552956, 32.853954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197651, 32.709660, 32.672977>,  <33.169193, 32.970833, 32.371353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197651, 32.709660, 32.672977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466677, 0.646346, 0.603696,
		-0.881561, -0.394853, -0.258728,
		0.071143, -0.652938, 0.754063,
		33.218994, 32.513779, 32.899197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497673, 32.889023, 32.631386>,  <33.169193, 32.970833, 32.371353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497673, 32.889023, 32.631386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747013, 32.775528, 32.922844>,  <32.896618, 32.707432, 33.097717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747013, 32.775528, 32.922844>,  <32.497673, 32.889023, 32.631386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747013, 32.775528, 32.922844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492900, 0.580814, 0.647846,
		-0.607026, -0.762986, 0.222198,
		0.623353, -0.283738, 0.728646,
		32.934017, 32.690407, 33.141438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083839, 32.905891, 33.117130>,  <32.497673, 32.889023, 32.631386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083839, 32.905891, 33.117130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432259, 32.916309, 33.313332>,  <32.641312, 32.922558, 33.431053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432259, 32.916309, 33.313332>,  <32.083839, 32.905891, 33.117130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432259, 32.916309, 33.313332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334431, 0.762833, 0.553392,
		-0.359762, -0.646071, 0.673174,
		0.871050, 0.026041, 0.490504,
		32.693573, 32.924122, 33.460484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934605, 32.799858, 33.900497>,  <32.083839, 32.905891, 33.117130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934605, 32.799858, 33.900497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305824, 32.944653, 33.935593>,  <32.528557, 33.031528, 33.956650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305824, 32.944653, 33.935593>,  <31.934605, 32.799858, 33.900497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305824, 32.944653, 33.935593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273097, 0.501130, 0.821150,
		0.253273, -0.786026, 0.563929,
		0.928047, 0.361982, 0.087739,
		32.584240, 33.053246, 33.961914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042282, 32.716473, 34.579681>,  <31.934605, 32.799858, 33.900497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042282, 32.716473, 34.579681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323460, 32.981514, 34.476284>,  <32.492168, 33.140541, 34.414246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323460, 32.981514, 34.476284>,  <32.042282, 32.716473, 34.579681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323460, 32.981514, 34.476284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306919, 0.610454, 0.730169,
		0.641617, -0.433930, 0.632481,
		0.702943, 0.662609, -0.258496,
		32.534344, 33.180298, 34.398735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352764, 32.892487, 35.105495>,  <32.042282, 32.716473, 34.579681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352764, 32.892487, 35.105495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388412, 33.207458, 34.861523>,  <32.409801, 33.396442, 34.715141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388412, 33.207458, 34.861523>,  <32.352764, 32.892487, 35.105495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388412, 33.207458, 34.861523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259473, 0.609577, 0.749059,
		0.961629, 0.091502, 0.258643,
		0.089122, 0.787428, -0.609929,
		32.415150, 33.443687, 34.678543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574383, 33.454296, 35.630569>,  <32.352764, 32.892487, 35.105495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574383, 33.454296, 35.630569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515236, 33.672886, 35.300842>,  <32.479748, 33.804039, 35.103008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515236, 33.672886, 35.300842>,  <32.574383, 33.454296, 35.630569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515236, 33.672886, 35.300842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216691, 0.795325, 0.566130,
		0.964977, 0.262333, 0.000816,
		-0.147866, 0.546479, -0.824316,
		32.470875, 33.836830, 35.053547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041389, 34.041569, 35.544930>,  <32.574383, 33.454296, 35.630569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041389, 34.041569, 35.544930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697231, 34.131943, 35.362206>,  <32.490738, 34.186169, 35.252571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697231, 34.131943, 35.362206>,  <33.041389, 34.041569, 35.544930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697231, 34.131943, 35.362206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099839, 0.804256, 0.585836,
		0.499752, 0.549658, -0.669421,
		-0.860395, 0.225939, -0.456806,
		32.439114, 34.199726, 35.225163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006763, 34.829720, 35.438553>,  <33.041389, 34.041569, 35.544930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006763, 34.829720, 35.438553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621761, 34.745171, 35.370548>,  <32.390759, 34.694443, 35.329746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621761, 34.745171, 35.370548>,  <33.006763, 34.829720, 35.438553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621761, 34.745171, 35.370548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263942, 0.874381, 0.407176,
		0.062589, 0.436783, -0.897387,
		-0.962506, -0.211373, -0.170012,
		32.333008, 34.681759, 35.319546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659870, 35.479088, 35.491573>,  <33.006763, 34.829720, 35.438553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659870, 35.479088, 35.491573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370502, 35.203510, 35.509521>,  <32.196880, 35.038162, 35.520290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370502, 35.203510, 35.509521>,  <32.659870, 35.479088, 35.491573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370502, 35.203510, 35.509521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518163, 0.584740, 0.624169,
		-0.456256, 0.428288, -0.780000,
		-0.723422, -0.688947, 0.044868,
		32.153477, 34.996826, 35.522984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021492, 35.891499, 35.328129>,  <32.659870, 35.479088, 35.491573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021492, 35.891499, 35.328129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921587, 35.568142, 35.541340>,  <31.861643, 35.374126, 35.669266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921587, 35.568142, 35.541340>,  <32.021492, 35.891499, 35.328129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921587, 35.568142, 35.541340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531486, 0.574593, 0.622388,
		-0.809407, -0.127844, -0.573164,
		-0.249767, -0.808393, 0.533026,
		31.846657, 35.325623, 35.701248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482437, 36.384857, 35.574791>,  <32.021492, 35.891499, 35.328129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482437, 36.384857, 35.574791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464001, 36.778831, 35.641449>,  <32.452938, 37.015217, 35.681446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464001, 36.778831, 35.641449>,  <32.482437, 36.384857, 35.574791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464001, 36.778831, 35.641449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078692, 0.162726, -0.983528,
		-0.995833, -0.058445, 0.070007,
		-0.046090, 0.984939, 0.166648,
		32.450172, 37.074314, 35.691444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992146, 36.757439, 35.109463>,  <32.482437, 36.384857, 35.574791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992146, 36.757439, 35.109463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328728, 36.939156, 35.226471>,  <32.530678, 37.048187, 35.296677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328728, 36.939156, 35.226471>,  <31.992146, 36.757439, 35.109463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328728, 36.939156, 35.226471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314527, 0.028369, -0.948824,
		-0.439345, 0.890399, -0.119017,
		0.841456, 0.454295, 0.292519,
		32.581165, 37.075443, 35.314228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137375, 37.347164, 34.639328>,  <31.992146, 36.757439, 35.109463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137375, 37.347164, 34.639328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479866, 37.242390, 34.817436>,  <32.685360, 37.179523, 34.924301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479866, 37.242390, 34.817436>,  <32.137375, 37.347164, 34.639328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479866, 37.242390, 34.817436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426576, -0.127680, -0.895394,
		0.291392, 0.956601, 0.002415,
		0.856226, -0.261941, 0.445268,
		32.736732, 37.163807, 34.951015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612728, 37.796143, 34.361980>,  <32.137375, 37.347164, 34.639328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612728, 37.796143, 34.361980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808540, 37.479069, 34.507313>,  <32.926025, 37.288822, 34.594513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808540, 37.479069, 34.507313>,  <32.612728, 37.796143, 34.361980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808540, 37.479069, 34.507313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513421, -0.074770, -0.854873,
		0.704814, 0.605025, 0.370380,
		0.489527, -0.792688, 0.363331,
		32.955399, 37.241264, 34.616314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356461, 37.865795, 34.051617>,  <32.612728, 37.796143, 34.361980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356461, 37.865795, 34.051617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317116, 37.492985, 34.191135>,  <33.293510, 37.269299, 34.274845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317116, 37.492985, 34.191135>,  <33.356461, 37.865795, 34.051617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317116, 37.492985, 34.191135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469445, -0.352501, -0.809546,
		0.877466, 0.084110, 0.472206,
		-0.098362, -0.932024, 0.348793,
		33.287605, 37.213379, 34.295773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984482, 37.603714, 34.111065>,  <33.356461, 37.865795, 34.051617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984482, 37.603714, 34.111065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739300, 37.291817, 34.060001>,  <33.592190, 37.104679, 34.029362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739300, 37.291817, 34.060001>,  <33.984482, 37.603714, 34.111065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739300, 37.291817, 34.060001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626057, -0.380723, -0.680517,
		0.482021, -0.497048, 0.721526,
		-0.612951, -0.779739, -0.127663,
		33.555416, 37.057896, 34.021702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413795, 37.047989, 33.858852>,  <33.984482, 37.603714, 34.111065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413795, 37.047989, 33.858852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057129, 36.876667, 33.800217>,  <33.843128, 36.773872, 33.765034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057129, 36.876667, 33.800217>,  <34.413795, 37.047989, 33.858852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057129, 36.876667, 33.800217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361790, -0.479578, -0.799445,
		0.272106, -0.765872, 0.582579,
		-0.891665, -0.428305, -0.146589,
		33.789631, 36.748177, 33.756241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559284, 36.392113, 33.749420>,  <34.413795, 37.047989, 33.858852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559284, 36.392113, 33.749420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193729, 36.422997, 33.589993>,  <33.974396, 36.441528, 33.494335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193729, 36.422997, 33.589993>,  <34.559284, 36.392113, 33.749420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193729, 36.422997, 33.589993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320455, -0.465550, -0.824968,
		-0.249252, -0.881647, 0.400715,
		-0.913883, 0.077214, -0.398567,
		33.919563, 36.446159, 33.470421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434166, 35.740810, 33.577271>,  <34.559284, 36.392113, 33.749420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434166, 35.740810, 33.577271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187973, 35.968845, 33.359581>,  <34.040257, 36.105667, 33.228966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187973, 35.968845, 33.359581>,  <34.434166, 35.740810, 33.577271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187973, 35.968845, 33.359581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321939, -0.448422, -0.833830,
		-0.719398, -0.688416, 0.092463,
		-0.615485, 0.570088, -0.544222,
		34.003326, 36.139874, 33.196316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148289, 35.270893, 33.067440>,  <34.434166, 35.740810, 33.577271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148289, 35.270893, 33.067440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078098, 35.632462, 32.911419>,  <34.035984, 35.849403, 32.817806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078098, 35.632462, 32.911419>,  <34.148289, 35.270893, 33.067440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078098, 35.632462, 32.911419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227119, -0.348344, -0.909436,
		-0.957928, -0.248170, -0.144172,
		-0.175473, 0.903918, -0.390052,
		34.025455, 35.903637, 32.794403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657280, 35.145981, 32.440609>,  <34.148289, 35.270893, 33.067440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657280, 35.145981, 32.440609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854851, 35.491867, 32.404160>,  <33.973392, 35.699398, 32.382290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854851, 35.491867, 32.404160>,  <33.657280, 35.145981, 32.440609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854851, 35.491867, 32.404160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252518, -0.242939, -0.936598,
		-0.832027, 0.439603, -0.338350,
		0.493929, 0.864714, -0.091125,
		34.003029, 35.751282, 32.376823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509834, 35.267231, 31.796925>,  <33.657280, 35.145981, 32.440609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509834, 35.267231, 31.796925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830200, 35.492542, 31.878176>,  <34.022419, 35.627728, 31.926926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830200, 35.492542, 31.878176>,  <33.509834, 35.267231, 31.796925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830200, 35.492542, 31.878176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392596, -0.237843, -0.888425,
		-0.452117, 0.791296, -0.411631,
		0.800911, 0.563277, 0.203126,
		34.070473, 35.661526, 31.939114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626122, 35.434929, 31.188334>,  <33.509834, 35.267231, 31.796925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626122, 35.434929, 31.188334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958252, 35.570763, 31.365082>,  <34.157528, 35.652264, 31.471130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958252, 35.570763, 31.365082>,  <33.626122, 35.434929, 31.188334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958252, 35.570763, 31.365082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488866, -0.063191, -0.870067,
		-0.267538, 0.938451, -0.218479,
		0.830321, 0.339583, 0.441871,
		34.207348, 35.672638, 31.497643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908459, 36.090233, 30.800360>,  <33.626122, 35.434929, 31.188334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908459, 36.090233, 30.800360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204891, 35.901371, 30.991304>,  <34.382751, 35.788055, 31.105871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204891, 35.901371, 30.991304>,  <33.908459, 36.090233, 30.800360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204891, 35.901371, 30.991304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539933, -0.003520, -0.841701,
		0.399092, 0.881510, 0.252322,
		0.741079, -0.472153, 0.477361,
		34.427216, 35.759724, 31.134512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560631, 36.315971, 30.437941>,  <33.908459, 36.090233, 30.800360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560631, 36.315971, 30.437941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678463, 35.995068, 30.645636>,  <34.749161, 35.802525, 30.770252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678463, 35.995068, 30.645636>,  <34.560631, 36.315971, 30.437941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678463, 35.995068, 30.645636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645331, -0.233745, -0.727262,
		0.704821, 0.549316, 0.448865,
		0.294577, -0.802256, 0.519239,
		34.766834, 35.754391, 30.801407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378643, 36.267052, 30.432657>,  <34.560631, 36.315971, 30.437941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378643, 36.267052, 30.432657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252884, 35.895298, 30.510008>,  <35.177429, 35.672245, 30.556419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252884, 35.895298, 30.510008>,  <35.378643, 36.267052, 30.432657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252884, 35.895298, 30.510008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497406, -0.334789, -0.800315,
		0.808542, -0.155433, 0.567540,
		-0.314401, -0.929385, 0.193377,
		35.158566, 35.616482, 30.568022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007214, 35.893967, 30.365309>,  <35.378643, 36.267052, 30.432657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007214, 35.893967, 30.365309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713730, 35.622253, 30.359123>,  <35.537640, 35.459225, 30.355412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713730, 35.622253, 30.359123>,  <36.007214, 35.893967, 30.365309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713730, 35.622253, 30.359123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424140, -0.440109, -0.791460,
		0.530820, -0.587264, 0.611025,
		-0.733714, -0.679283, -0.015463,
		35.493614, 35.418468, 30.354485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339127, 35.351349, 30.305254>,  <36.007214, 35.893967, 30.365309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339127, 35.351349, 30.305254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974602, 35.266430, 30.164146>,  <35.755886, 35.215481, 30.079481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974602, 35.266430, 30.164146>,  <36.339127, 35.351349, 30.305254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974602, 35.266430, 30.164146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411617, -0.489174, -0.768948,
		-0.009322, -0.845955, 0.533173,
		-0.911309, -0.212295, -0.352770,
		35.701210, 35.202740, 30.058315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392677, 34.686611, 30.182537>,  <36.339127, 35.351349, 30.305254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392677, 34.686611, 30.182537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083904, 34.794720, 29.952381>,  <35.898640, 34.859585, 29.814287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083904, 34.794720, 29.952381>,  <36.392677, 34.686611, 30.182537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083904, 34.794720, 29.952381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406821, -0.485484, -0.773823,
		-0.488532, -0.831403, 0.264774,
		-0.771903, 0.270322, -0.575407,
		35.852325, 34.875801, 29.779764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238392, 34.077461, 29.906330>,  <36.392677, 34.686611, 30.182537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238392, 34.077461, 29.906330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070175, 34.353745, 29.671019>,  <35.969246, 34.519512, 29.529831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070175, 34.353745, 29.671019>,  <36.238392, 34.077461, 29.906330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070175, 34.353745, 29.671019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240799, -0.540176, -0.806366,
		-0.874735, -0.480767, 0.060845,
		-0.420541, 0.690705, -0.588279,
		35.944012, 34.560955, 29.494535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828434, 33.649570, 29.454659>,  <36.238392, 34.077461, 29.906330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828434, 33.649570, 29.454659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877331, 34.004139, 29.276079>,  <35.906670, 34.216881, 29.168932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877331, 34.004139, 29.276079>,  <35.828434, 33.649570, 29.454659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877331, 34.004139, 29.276079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490166, -0.445054, -0.749442,
		-0.863014, -0.127221, -0.488898,
		0.122241, 0.886421, -0.446447,
		35.914001, 34.270065, 29.142145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517651, 33.627037, 28.853609>,  <35.828434, 33.649570, 29.454659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517651, 33.627037, 28.853609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793285, 33.912979, 28.806028>,  <35.958664, 34.084545, 28.777479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793285, 33.912979, 28.806028>,  <35.517651, 33.627037, 28.853609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793285, 33.912979, 28.806028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290979, -0.423262, -0.858010,
		-0.663699, 0.556627, -0.499670,
		0.689083, 0.714854, -0.118952,
		36.000011, 34.127434, 28.770344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506699, 33.741848, 28.151846>,  <35.517651, 33.627037, 28.853609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506699, 33.741848, 28.151846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844460, 33.932449, 28.249769>,  <36.047115, 34.046810, 28.308523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844460, 33.932449, 28.249769>,  <35.506699, 33.741848, 28.151846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844460, 33.932449, 28.249769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400528, -0.258075, -0.879190,
		-0.355761, 0.840440, -0.408773,
		0.844400, 0.476507, 0.244807,
		36.097778, 34.075401, 28.323212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743004, 34.112854, 27.512047>,  <35.506699, 33.741848, 28.151846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743004, 34.112854, 27.512047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077015, 34.085102, 27.730373>,  <36.277420, 34.068451, 27.861370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077015, 34.085102, 27.730373>,  <35.743004, 34.112854, 27.512047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077015, 34.085102, 27.730373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544033, -0.044110, -0.837904,
		0.082206, 0.996615, 0.000910,
		0.835027, -0.069376, 0.545817,
		36.327522, 34.064289, 27.894119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194450, 34.442295, 27.124880>,  <35.743004, 34.112854, 27.512047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194450, 34.442295, 27.124880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429111, 34.222668, 27.362993>,  <36.569908, 34.090893, 27.505861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429111, 34.222668, 27.362993>,  <36.194450, 34.442295, 27.124880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429111, 34.222668, 27.362993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584578, -0.221587, -0.780492,
		0.560450, 0.805868, 0.190978,
		0.586655, -0.549068, 0.595282,
		36.605106, 34.057949, 27.541578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793381, 34.743290, 26.962568>,  <36.194450, 34.442295, 27.124880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793381, 34.743290, 26.962568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816833, 34.366665, 27.095249>,  <36.830906, 34.140690, 27.174858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816833, 34.366665, 27.095249>,  <36.793381, 34.743290, 26.962568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816833, 34.366665, 27.095249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554640, -0.245546, -0.795036,
		0.830022, 0.230590, 0.507830,
		0.058632, -0.941560, 0.331703,
		36.834423, 34.084198, 27.194759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444801, 34.579937, 26.704306>,  <36.793381, 34.743290, 26.962568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444801, 34.579937, 26.704306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327480, 34.217602, 26.826572>,  <37.257088, 34.000202, 26.899933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327480, 34.217602, 26.826572>,  <37.444801, 34.579937, 26.704306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327480, 34.217602, 26.826572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550356, -0.421423, -0.720771,
		0.781716, -0.043180, 0.622138,
		-0.293306, -0.905836, 0.305669,
		37.239487, 33.945850, 26.918274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035984, 34.206810, 26.639885>,  <37.444801, 34.579937, 26.704306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035984, 34.206810, 26.639885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725212, 33.955006, 26.636082>,  <37.538750, 33.803921, 26.633801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725212, 33.955006, 26.636082>,  <38.035984, 34.206810, 26.639885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725212, 33.955006, 26.636082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426599, -0.515273, -0.743308,
		0.463023, -0.581556, 0.668882,
		-0.776932, -0.629513, -0.009508,
		37.492134, 33.766151, 26.633228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499062, 33.828285, 27.136230>,  <38.035984, 34.206810, 26.639885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499062, 33.828285, 27.136230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864559, 33.983128, 27.185579>,  <39.083858, 34.076035, 27.215189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864559, 33.983128, 27.185579>,  <38.499062, 33.828285, 27.136230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864559, 33.983128, 27.185579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327847, 0.523143, 0.786662,
		0.239981, -0.759255, 0.604930,
		0.913743, 0.387109, 0.123375,
		39.138683, 34.099262, 27.222591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700790, 33.747868, 27.892555>,  <38.499062, 33.828285, 27.136230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700790, 33.747868, 27.892555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930244, 34.032627, 27.730495>,  <39.067917, 34.203484, 27.633261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930244, 34.032627, 27.730495>,  <38.700790, 33.747868, 27.892555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930244, 34.032627, 27.730495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169328, 0.586999, 0.791682,
		0.801415, -0.385537, 0.457269,
		0.573639, 0.711895, -0.405148,
		39.102337, 34.246197, 27.608952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091175, 33.834408, 28.438745>,  <38.700790, 33.747868, 27.892555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091175, 33.834408, 28.438745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.125343, 34.150856, 28.196480>,  <39.145844, 34.340725, 28.051121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.125343, 34.150856, 28.196480>,  <39.091175, 33.834408, 28.438745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125343, 34.150856, 28.196480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098561, 0.611614, 0.784993,
		0.991458, -0.007361, 0.130220,
		0.085423, 0.791122, -0.605664,
		39.150970, 34.388191, 28.014780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334290, 34.391045, 28.863390>,  <39.091175, 33.834408, 28.438745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334290, 34.391045, 28.863390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.169235, 34.581806, 28.552961>,  <39.070202, 34.696262, 28.366703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.169235, 34.581806, 28.552961>,  <39.334290, 34.391045, 28.863390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169235, 34.581806, 28.552961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365059, 0.693994, 0.620568,
		0.834542, 0.539384, -0.112272,
		-0.412641, 0.476904, -0.776074,
		39.045444, 34.724876, 28.320139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555809, 35.000729, 28.963743>,  <39.334290, 34.391045, 28.863390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555809, 35.000729, 28.963743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238953, 35.068672, 28.729252>,  <39.048840, 35.109440, 28.588558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238953, 35.068672, 28.729252>,  <39.555809, 35.000729, 28.963743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238953, 35.068672, 28.729252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247615, 0.788455, 0.563049,
		0.557855, 0.591173, -0.582506,
		-0.792139, 0.169862, -0.586227,
		39.001312, 35.119633, 28.553383>
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
