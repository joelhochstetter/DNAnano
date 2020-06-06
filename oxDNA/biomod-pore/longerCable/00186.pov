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
	<24.398127, 35.129200, 35.281418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192612, 34.974422, 34.975136>,  <24.069304, 34.881557, 34.791367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192612, 34.974422, 34.975136>,  <24.398127, 35.129200, 35.281418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192612, 34.974422, 34.975136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687104, 0.348845, -0.637335,
		0.513723, -0.853570, 0.086638,
		-0.513787, -0.386943, -0.765701,
		24.038475, 34.858341, 34.745426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947998, 34.888828, 35.000881>,  <24.398127, 35.129200, 35.281418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947998, 34.888828, 35.000881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673279, 34.927673, 34.712749>,  <24.508448, 34.950981, 34.539871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673279, 34.927673, 34.712749>,  <24.947998, 34.888828, 35.000881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673279, 34.927673, 34.712749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724636, 0.168749, -0.668151,
		0.056671, -0.980864, -0.186266,
		-0.686797, 0.097111, -0.720333,
		24.467239, 34.956806, 34.496651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009296, 34.448357, 34.322815>,  <24.947998, 34.888828, 35.000881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009296, 34.448357, 34.322815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857758, 34.808857, 34.238705>,  <24.766834, 35.025158, 34.188240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857758, 34.808857, 34.238705>,  <25.009296, 34.448357, 34.322815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857758, 34.808857, 34.238705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675703, 0.114117, -0.728287,
		-0.632376, -0.417993, -0.652213,
		-0.378848, 0.901254, -0.210275,
		24.744102, 35.079235, 34.175621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816660, 34.629364, 33.614750>,  <25.009296, 34.448357, 34.322815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816660, 34.629364, 33.614750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899603, 34.985588, 33.776688>,  <24.949369, 35.199322, 33.873852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899603, 34.985588, 33.776688>,  <24.816660, 34.629364, 33.614750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899603, 34.985588, 33.776688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731810, 0.133420, -0.668321,
		-0.649197, 0.434851, -0.624058,
		0.207358, 0.890564, 0.404844,
		24.961811, 35.252758, 33.898140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992708, 35.124100, 33.023224>,  <24.816660, 34.629364, 33.614750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992708, 35.124100, 33.023224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186644, 35.287357, 33.332638>,  <25.303005, 35.385311, 33.518284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186644, 35.287357, 33.332638>,  <24.992708, 35.124100, 33.023224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186644, 35.287357, 33.332638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769151, 0.222045, -0.599252,
		-0.416341, 0.885502, -0.206270,
		0.484837, 0.408146, 0.773531,
		25.332094, 35.409801, 33.564697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745485, 34.729328, 32.459579>,  <24.992708, 35.124100, 33.023224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745485, 34.729328, 32.459579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031082, 34.473530, 32.345558>,  <25.202440, 34.320049, 32.277145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031082, 34.473530, 32.345558>,  <24.745485, 34.729328, 32.459579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031082, 34.473530, 32.345558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618462, -0.766899, 0.171379,
		-0.328205, 0.053932, -0.943066,
		0.713994, -0.639498, -0.285055,
		25.245279, 34.281681, 32.260040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852093, 34.003860, 32.725197>,  <24.745485, 34.729328, 32.459579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852093, 34.003860, 32.725197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175594, 34.228161, 32.654236>,  <25.369696, 34.362743, 32.611660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175594, 34.228161, 32.654236>,  <24.852093, 34.003860, 32.725197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175594, 34.228161, 32.654236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546949, 0.827976, 0.123701,
		0.216248, -0.003015, 0.976334,
		0.808754, 0.560755, -0.177400,
		25.418221, 34.396389, 32.601017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460880, 34.006092, 33.045391>,  <24.852093, 34.003860, 32.725197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460880, 34.006092, 33.045391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548061, 33.630165, 32.940144>,  <25.600370, 33.404610, 32.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548061, 33.630165, 32.940144>,  <25.460880, 34.006092, 33.045391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548061, 33.630165, 32.940144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119824, -0.241795, 0.962900,
		-0.968575, -0.241397, 0.059913,
		0.217954, -0.939821, -0.263122,
		25.613447, 33.348221, 32.861206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944008, 33.666950, 33.440556>,  <25.460880, 34.006092, 33.045391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944008, 33.666950, 33.440556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240870, 33.409782, 33.364815>,  <25.418987, 33.255482, 33.319370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240870, 33.409782, 33.364815>,  <24.944008, 33.666950, 33.440556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240870, 33.409782, 33.364815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033927, -0.246123, 0.968644,
		-0.669368, -0.725309, -0.160850,
		0.742156, -0.642923, -0.189355,
		25.463516, 33.216908, 33.308010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717302, 33.034695, 33.641773>,  <24.944008, 33.666950, 33.440556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717302, 33.034695, 33.641773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114285, 32.986279, 33.649597>,  <25.352474, 32.957230, 33.654293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114285, 32.986279, 33.649597>,  <24.717302, 33.034695, 33.641773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114285, 32.986279, 33.649597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067514, -0.406277, 0.911252,
		-0.102353, -0.905697, -0.411383,
		0.992454, -0.121043, 0.019564,
		25.412022, 32.949966, 33.655468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872702, 32.241592, 33.819790>,  <24.717302, 33.034695, 33.641773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872702, 32.241592, 33.819790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214142, 32.434830, 33.897743>,  <25.419006, 32.550774, 33.944515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214142, 32.434830, 33.897743>,  <24.872702, 32.241592, 33.819790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214142, 32.434830, 33.897743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043472, -0.306750, 0.950797,
		0.519107, -0.820075, -0.240842,
		0.853602, 0.483096, 0.194886,
		25.470222, 32.579758, 33.956211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503481, 31.854218, 34.057182>,  <24.872702, 32.241592, 33.819790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503481, 31.854218, 34.057182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485996, 32.216026, 34.226856>,  <25.475506, 32.433109, 34.328659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485996, 32.216026, 34.226856>,  <25.503481, 31.854218, 34.057182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485996, 32.216026, 34.226856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008224, -0.424903, 0.905201,
		0.999010, 0.036078, 0.026011,
		-0.043710, 0.904520, 0.424186,
		25.472883, 32.487381, 34.354111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126095, 32.022278, 34.497761>,  <25.503481, 31.854218, 34.057182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126095, 32.022278, 34.497761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750790, 32.141087, 34.568687>,  <25.525606, 32.212372, 34.611244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750790, 32.141087, 34.568687>,  <26.126095, 32.022278, 34.497761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750790, 32.141087, 34.568687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002712, -0.506265, 0.862374,
		0.345914, 0.809614, 0.474204,
		-0.938262, 0.297021, 0.177320,
		25.469311, 32.230194, 34.621883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007179, 32.364586, 35.183422>,  <26.126095, 32.022278, 34.497761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007179, 32.364586, 35.183422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707808, 32.160919, 35.013432>,  <25.528183, 32.038719, 34.911438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707808, 32.160919, 35.013432>,  <26.007179, 32.364586, 35.183422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707808, 32.160919, 35.013432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025874, -0.662707, 0.748432,
		-0.662707, 0.549154, 0.509165,
		-0.748432, -0.509165, -0.424972,
		25.483278, 32.008171, 34.885941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487270, 32.720211, 35.557922>,  <26.007179, 32.364586, 35.183422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487270, 32.720211, 35.557922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487783, 32.989098, 35.854065>,  <26.488091, 33.150429, 36.031750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487783, 32.989098, 35.854065>,  <26.487270, 32.720211, 35.557922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487783, 32.989098, 35.854065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937602, -0.256619, 0.234627,
		0.347709, -0.694457, 0.629943,
		0.001283, 0.672218, 0.740353,
		26.488169, 33.190762, 36.076172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590248, 33.275997, 34.982590>,  <26.487270, 32.720211, 35.557922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590248, 33.275997, 34.982590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364902, 33.007195, 34.790329>,  <26.229694, 32.845913, 34.674973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364902, 33.007195, 34.790329>,  <26.590248, 33.275997, 34.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364902, 33.007195, 34.790329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824023, -0.499290, -0.267761,
		-0.060050, -0.546919, 0.835029,
		-0.563365, -0.672004, -0.480656,
		26.195892, 32.805592, 34.646133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613457, 33.231190, 34.238609>,  <26.590248, 33.275997, 34.982590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613457, 33.231190, 34.238609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291225, 33.011333, 34.150116>,  <26.097887, 32.879421, 34.097019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291225, 33.011333, 34.150116>,  <26.613457, 33.231190, 34.238609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291225, 33.011333, 34.150116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088075, 0.258149, -0.962082,
		0.585910, -0.794514, -0.159549,
		-0.805576, -0.549642, -0.221229,
		26.049553, 32.846439, 34.083748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744528, 32.848499, 33.500320>,  <26.613457, 33.231190, 34.238609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744528, 32.848499, 33.500320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352510, 32.865662, 33.577965>,  <26.117300, 32.875957, 33.624550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352510, 32.865662, 33.577965>,  <26.744528, 32.848499, 33.500320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352510, 32.865662, 33.577965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188279, 0.113019, -0.975591,
		-0.063795, -0.992666, -0.102685,
		-0.980041, 0.042904, 0.194109,
		26.058498, 32.878532, 33.636196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474846, 32.374569, 33.016533>,  <26.744528, 32.848499, 33.500320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474846, 32.374569, 33.016533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190409, 32.644562, 33.095264>,  <26.019747, 32.806557, 33.142506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190409, 32.644562, 33.095264>,  <26.474846, 32.374569, 33.016533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190409, 32.644562, 33.095264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156973, 0.120475, -0.980227,
		-0.685351, -0.727931, 0.020285,
		-0.711093, 0.674983, 0.196833,
		25.977081, 32.847057, 33.154316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099001, 32.230038, 32.381542>,  <26.474846, 32.374569, 33.016533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099001, 32.230038, 32.381542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980793, 32.575562, 32.544765>,  <25.909868, 32.782875, 32.642700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980793, 32.575562, 32.544765>,  <26.099001, 32.230038, 32.381542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980793, 32.575562, 32.544765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200116, 0.361685, -0.910570,
		-0.934143, -0.350749, 0.065976,
		-0.295519, 0.863805, 0.408056,
		25.892138, 32.834702, 32.667183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379175, 32.385223, 32.310665>,  <26.099001, 32.230038, 32.381542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379175, 32.385223, 32.310665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575514, 32.733437, 32.296566>,  <25.693317, 32.942364, 32.288109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575514, 32.733437, 32.296566>,  <25.379175, 32.385223, 32.310665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575514, 32.733437, 32.296566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425286, 0.204096, -0.881746,
		-0.760395, 0.447792, 0.470405,
		0.490847, 0.870533, -0.035246,
		25.722769, 32.994595, 32.285992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958149, 32.894878, 32.053059>,  <25.379175, 32.385223, 32.310665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958149, 32.894878, 32.053059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336195, 32.985661, 31.959040>,  <25.563023, 33.040131, 31.902628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336195, 32.985661, 31.959040>,  <24.958149, 32.894878, 32.053059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336195, 32.985661, 31.959040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252449, 0.050534, -0.966290,
		-0.207424, 0.972594, 0.105054,
		0.945116, 0.226952, -0.235048,
		25.619730, 33.053745, 31.888525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.323666, 32.555298, 31.673819>,  <24.958149, 32.894878, 32.053059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.323666, 32.555298, 31.673819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462746, 32.724957, 31.339346>,  <24.546194, 32.826752, 31.138662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462746, 32.724957, 31.339346>,  <24.323666, 32.555298, 31.673819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462746, 32.724957, 31.339346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917280, -0.338570, 0.209684,
		-0.194169, -0.839922, -0.506783,
		0.347699, 0.424148, -0.836184,
		24.567055, 32.852200, 31.088491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520187, 32.099319, 31.088411>,  <24.323666, 32.555298, 31.673819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520187, 32.099319, 31.088411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756783, 32.421352, 31.106216>,  <24.898739, 32.614574, 31.116899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756783, 32.421352, 31.106216>,  <24.520187, 32.099319, 31.088411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756783, 32.421352, 31.106216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718223, -0.551152, 0.424719,
		0.366469, -0.219244, -0.904230,
		0.591486, 0.805086, 0.044514,
		24.934229, 32.662880, 31.119570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123217, 31.807690, 30.658848>,  <24.520187, 32.099319, 31.088411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123217, 31.807690, 30.658848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235041, 32.078213, 30.931452>,  <25.302135, 32.240528, 31.095015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235041, 32.078213, 30.931452>,  <25.123217, 31.807690, 30.658848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235041, 32.078213, 30.931452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819699, -0.537716, 0.197369,
		0.499940, 0.503455, -0.704693,
		0.279558, 0.676309, 0.681508,
		25.318909, 32.281105, 31.135904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668282, 32.094730, 30.381912>,  <25.123217, 31.807690, 30.658848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668282, 32.094730, 30.381912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692764, 32.104000, 30.781055>,  <25.707455, 32.109562, 31.020540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692764, 32.104000, 30.781055>,  <25.668282, 32.094730, 30.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692764, 32.104000, 30.781055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912595, -0.406208, -0.046543,
		0.404258, 0.913487, -0.046011,
		0.061206, 0.023174, 0.997856,
		25.711126, 32.110950, 31.080412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376160, 32.507042, 30.520319>,  <25.668282, 32.094730, 30.381912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376160, 32.507042, 30.520319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252583, 32.187527, 30.726809>,  <26.178436, 31.995817, 30.850702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252583, 32.187527, 30.726809>,  <26.376160, 32.507042, 30.520319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252583, 32.187527, 30.726809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897626, -0.424293, -0.119343,
		0.314360, 0.426505, 0.848099,
		-0.308942, -0.798792, 0.516223,
		26.159901, 31.947889, 30.881676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754389, 32.363861, 31.142275>,  <26.376160, 32.507042, 30.520319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754389, 32.363861, 31.142275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630545, 32.047882, 30.930569>,  <26.556238, 31.858294, 30.803545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630545, 32.047882, 30.930569>,  <26.754389, 32.363861, 31.142275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630545, 32.047882, 30.930569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949481, -0.286844, -0.127303,
		-0.051253, -0.541940, 0.838853,
		-0.309610, -0.789950, -0.529264,
		26.537661, 31.810898, 30.771790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357092, 31.987404, 30.806866>,  <26.754389, 32.363861, 31.142275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357092, 31.987404, 30.806866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195013, 32.325745, 30.668102>,  <27.097767, 32.528751, 30.584845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195013, 32.325745, 30.668102>,  <27.357092, 31.987404, 30.806866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195013, 32.325745, 30.668102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357474, -0.202660, -0.911670,
		-0.841445, -0.493416, -0.220254,
		-0.405196, 0.845855, -0.346911,
		27.073454, 32.579502, 30.564030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835188, 31.902241, 30.228170>,  <27.357092, 31.987404, 30.806866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835188, 31.902241, 30.228170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072176, 32.224430, 30.222557>,  <27.214369, 32.417744, 30.219189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072176, 32.224430, 30.222557>,  <26.835188, 31.902241, 30.228170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072176, 32.224430, 30.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325000, -0.254922, -0.910709,
		-0.737127, 0.535006, -0.412811,
		0.592469, 0.805471, -0.014033,
		27.249916, 32.466072, 30.218348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648331, 32.479614, 29.610977>,  <26.835188, 31.902241, 30.228170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648331, 32.479614, 29.610977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031073, 32.541340, 29.709459>,  <27.260717, 32.578377, 29.768549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031073, 32.541340, 29.709459>,  <26.648331, 32.479614, 29.610977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031073, 32.541340, 29.709459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249354, -0.001085, -0.968412,
		-0.149173, 0.988021, -0.039517,
		0.956854, 0.154315, 0.246206,
		27.318129, 32.587635, 29.783321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864656, 32.966103, 29.204607>,  <26.648331, 32.479614, 29.610977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864656, 32.966103, 29.204607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213404, 32.796040, 29.301840>,  <27.422651, 32.694000, 29.360180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213404, 32.796040, 29.301840>,  <26.864656, 32.966103, 29.204607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213404, 32.796040, 29.301840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253358, -0.033202, -0.966803,
		0.419113, 0.904511, 0.078769,
		0.871868, -0.425157, 0.243081,
		27.474964, 32.668491, 29.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393007, 33.237740, 28.770805>,  <26.864656, 32.966103, 29.204607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393007, 33.237740, 28.770805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555607, 32.898224, 28.906046>,  <27.653166, 32.694515, 28.987190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555607, 32.898224, 28.906046>,  <27.393007, 33.237740, 28.770805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555607, 32.898224, 28.906046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278120, -0.237539, -0.930712,
		0.870293, 0.472364, 0.139507,
		0.406497, -0.848792, 0.338103,
		27.677555, 32.643585, 29.007477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174257, 33.218143, 28.548508>,  <27.393007, 33.237740, 28.770805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174257, 33.218143, 28.548508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014450, 32.855469, 28.602634>,  <27.918566, 32.637863, 28.635111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014450, 32.855469, 28.602634>,  <28.174257, 33.218143, 28.548508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014450, 32.855469, 28.602634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520412, -0.345834, -0.780750,
		0.754691, -0.241501, 0.610016,
		-0.399516, -0.906684, 0.135318,
		27.894596, 32.583462, 28.643230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743450, 32.872261, 27.980717>,  <28.174257, 33.218143, 28.548508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743450, 32.872261, 27.980717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881075, 32.560509, 27.771263>,  <27.963650, 32.373459, 27.645590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881075, 32.560509, 27.771263>,  <27.743450, 32.872261, 27.980717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881075, 32.560509, 27.771263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033505, -0.547137, 0.836372,
		-0.938350, -0.305306, -0.162135,
		0.344060, -0.779377, -0.523635,
		27.984293, 32.326694, 27.614172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282179, 32.325371, 27.988804>,  <27.743450, 32.872261, 27.980717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282179, 32.325371, 27.988804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660793, 32.198044, 27.967846>,  <27.887962, 32.121647, 27.955271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660793, 32.198044, 27.967846>,  <27.282179, 32.325371, 27.988804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660793, 32.198044, 27.967846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048779, -0.301762, 0.952135,
		-0.318908, -0.898668, -0.301154,
		0.946530, -0.318333, -0.052398,
		27.944754, 32.102551, 27.952127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413134, 31.543377, 28.271330>,  <27.282179, 32.325371, 27.988804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413134, 31.543377, 28.271330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739071, 31.772789, 28.305021>,  <27.934633, 31.910437, 28.325235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739071, 31.772789, 28.305021>,  <27.413134, 31.543377, 28.271330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739071, 31.772789, 28.305021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171885, 0.100285, 0.979999,
		0.553613, -0.813022, 0.180298,
		0.814842, 0.573530, 0.084227,
		27.983524, 31.944847, 28.330290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681421, 31.393091, 28.972178>,  <27.413134, 31.543377, 28.271330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681421, 31.393091, 28.972178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797050, 31.756413, 28.851234>,  <27.866428, 31.974405, 28.778667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797050, 31.756413, 28.851234>,  <27.681421, 31.393091, 28.972178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797050, 31.756413, 28.851234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073437, 0.335953, 0.939011,
		0.954486, -0.249241, 0.163819,
		0.289075, 0.908303, -0.302359,
		27.883774, 32.028904, 28.760527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231207, 31.646132, 29.505062>,  <27.681421, 31.393091, 28.972178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231207, 31.646132, 29.505062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044012, 31.955153, 29.333412>,  <27.931696, 32.140564, 29.230421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044012, 31.955153, 29.333412>,  <28.231207, 31.646132, 29.505062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044012, 31.955153, 29.333412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102956, 0.434614, 0.894713,
		0.877718, 0.462893, -0.123854,
		-0.467985, 0.772554, -0.429126,
		27.903616, 32.186920, 29.204674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619186, 32.187599, 29.802811>,  <28.231207, 31.646132, 29.505062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619186, 32.187599, 29.802811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256674, 32.324722, 29.703913>,  <28.039165, 32.406998, 29.644575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256674, 32.324722, 29.703913>,  <28.619186, 32.187599, 29.802811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256674, 32.324722, 29.703913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059555, 0.475550, 0.877670,
		0.418453, 0.810143, -0.410567,
		-0.906284, 0.342812, -0.247243,
		27.984789, 32.427567, 29.629740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519684, 32.884243, 30.176044>,  <28.619186, 32.187599, 29.802811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519684, 32.884243, 30.176044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153763, 32.788563, 30.045862>,  <27.934210, 32.731155, 29.967752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153763, 32.788563, 30.045862>,  <28.519684, 32.884243, 30.176044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153763, 32.788563, 30.045862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396659, 0.380121, 0.835566,
		-0.076152, 0.893472, -0.442616,
		-0.914802, -0.239197, -0.325456,
		27.879322, 32.716805, 29.948225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163795, 33.469913, 30.222300>,  <28.519684, 32.884243, 30.176044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163795, 33.469913, 30.222300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917112, 33.155308, 30.235369>,  <27.769102, 32.966545, 30.243210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917112, 33.155308, 30.235369>,  <28.163795, 33.469913, 30.222300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917112, 33.155308, 30.235369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441092, 0.379642, 0.813209,
		-0.652003, 0.487102, -0.581053,
		-0.616709, -0.786513, 0.032671,
		27.732100, 32.919353, 30.245171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454437, 33.693321, 30.216858>,  <28.163795, 33.469913, 30.222300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454437, 33.693321, 30.216858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484545, 33.345165, 30.411491>,  <27.502609, 33.136272, 30.528271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484545, 33.345165, 30.411491>,  <27.454437, 33.693321, 30.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484545, 33.345165, 30.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542916, 0.373530, 0.752142,
		-0.836407, -0.320788, -0.444431,
		0.075270, -0.870386, 0.486583,
		27.507126, 33.084049, 30.557467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612082, 34.263008, 30.682241>,  <27.454437, 33.693321, 30.216858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612082, 34.263008, 30.682241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826168, 34.137066, 30.368704>,  <27.954620, 34.061501, 30.180582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826168, 34.137066, 30.368704>,  <27.612082, 34.263008, 30.682241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826168, 34.137066, 30.368704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844716, 0.200363, 0.496296,
		0.000790, -0.927749, 0.373204,
		0.535214, -0.314859, -0.783843,
		27.986732, 34.042610, 30.133551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174143, 33.803200, 30.890512>,  <27.612082, 34.263008, 30.682241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174143, 33.803200, 30.890512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278061, 34.016193, 30.568279>,  <28.340412, 34.143990, 30.374939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278061, 34.016193, 30.568279>,  <28.174143, 33.803200, 30.890512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278061, 34.016193, 30.568279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846033, 0.276671, 0.455720,
		0.465546, -0.799944, -0.378623,
		0.259797, 0.532487, -0.805583,
		28.355999, 34.175938, 30.326605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878216, 33.745842, 30.902048>,  <28.174143, 33.803200, 30.890512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878216, 33.745842, 30.902048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784006, 34.086437, 30.714647>,  <28.727480, 34.290794, 30.602207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784006, 34.086437, 30.714647>,  <28.878216, 33.745842, 30.902048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784006, 34.086437, 30.714647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801769, 0.442681, 0.401497,
		0.549267, -0.281067, -0.786961,
		-0.235525, 0.851490, -0.468500,
		28.713348, 34.341885, 30.574097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438471, 33.859295, 30.503193>,  <28.878216, 33.745842, 30.902048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438471, 33.859295, 30.503193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237789, 34.188114, 30.610922>,  <29.117380, 34.385406, 30.675558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237789, 34.188114, 30.610922>,  <29.438471, 33.859295, 30.503193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237789, 34.188114, 30.610922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826066, 0.362893, 0.431188,
		0.256721, 0.438806, -0.861129,
		-0.501705, 0.822045, 0.269321,
		29.087278, 34.434727, 30.691717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756348, 34.462387, 30.308622>,  <29.438471, 33.859295, 30.503193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756348, 34.462387, 30.308622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563169, 34.559444, 30.645166>,  <29.447264, 34.617680, 30.847094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563169, 34.559444, 30.645166>,  <29.756348, 34.462387, 30.308622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563169, 34.559444, 30.645166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866767, 0.268996, 0.419949,
		-0.124425, 0.932075, -0.340226,
		-0.482943, 0.242645, 0.841362,
		29.418287, 34.632236, 30.897575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058947, 34.987717, 30.719103>,  <29.756348, 34.462387, 30.308622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058947, 34.987717, 30.719103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866037, 34.817673, 31.025488>,  <29.750292, 34.715649, 31.209318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866037, 34.817673, 31.025488>,  <30.058947, 34.987717, 30.719103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866037, 34.817673, 31.025488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788809, 0.169586, 0.590780,
		-0.381040, 0.889115, 0.253540,
		-0.482275, -0.425106, 0.765961,
		29.721355, 34.690140, 31.255276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293152, 35.336464, 31.369858>,  <30.058947, 34.987717, 30.719103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293152, 35.336464, 31.369858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168951, 34.963585, 31.444256>,  <30.094431, 34.739857, 31.488895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168951, 34.963585, 31.444256>,  <30.293152, 35.336464, 31.369858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168951, 34.963585, 31.444256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709605, -0.097114, 0.697875,
		-0.632496, 0.348674, 0.691647,
		-0.310500, -0.932199, 0.185996,
		30.075802, 34.683926, 31.500055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286264, 35.178802, 32.128941>,  <30.293152, 35.336464, 31.369858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286264, 35.178802, 32.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336288, 34.841637, 31.919617>,  <30.366302, 34.639336, 31.794022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336288, 34.841637, 31.919617>,  <30.286264, 35.178802, 32.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336288, 34.841637, 31.919617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723094, -0.283718, 0.629792,
		-0.679334, -0.457166, 0.574024,
		0.125059, -0.842913, -0.523314,
		30.373806, 34.588764, 31.762623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422897, 34.790497, 32.657791>,  <30.286264, 35.178802, 32.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422897, 34.790497, 32.657791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576021, 34.651455, 32.315414>,  <30.667894, 34.568031, 32.109989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576021, 34.651455, 32.315414>,  <30.422897, 34.790497, 32.657791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576021, 34.651455, 32.315414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818751, -0.301497, 0.488617,
		-0.427909, -0.887846, 0.169186,
		0.382808, -0.347605, -0.855938,
		30.690863, 34.547173, 32.058632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915932, 34.955032, 33.099174>,  <30.422897, 34.790497, 32.657791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915932, 34.955032, 33.099174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014309, 35.331398, 33.006054>,  <31.073336, 35.557217, 32.950180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014309, 35.331398, 33.006054>,  <30.915932, 34.955032, 33.099174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014309, 35.331398, 33.006054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922696, -0.153700, 0.353565,
		0.296892, -0.301762, -0.905977,
		0.245941, 0.940912, -0.232802,
		31.088091, 35.613670, 32.936214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918987, 34.609001, 33.843307>,  <30.915932, 34.955032, 33.099174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918987, 34.609001, 33.843307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016550, 34.221291, 33.830616>,  <31.075087, 33.988663, 33.823002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016550, 34.221291, 33.830616>,  <30.918987, 34.609001, 33.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016550, 34.221291, 33.830616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802891, -0.220169, 0.553979,
		-0.543945, -0.109647, -0.831926,
		0.243906, -0.969280, -0.031725,
		31.089722, 33.930508, 33.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334002, 34.105007, 33.570602>,  <30.918987, 34.609001, 33.843307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334002, 34.105007, 33.570602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593616, 33.898003, 33.793648>,  <30.749386, 33.773800, 33.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593616, 33.898003, 33.793648>,  <30.334002, 34.105007, 33.570602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593616, 33.898003, 33.793648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759836, -0.404966, 0.508579,
		-0.037382, -0.753780, -0.656063,
		0.649040, -0.517511, 0.557611,
		30.788328, 33.742748, 33.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141472, 33.453323, 33.580788>,  <30.334002, 34.105007, 33.570602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141472, 33.453323, 33.580788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359955, 33.478649, 33.914890>,  <30.491045, 33.493847, 34.115353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359955, 33.478649, 33.914890>,  <30.141472, 33.453323, 33.580788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359955, 33.478649, 33.914890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768170, -0.359762, 0.529610,
		0.334026, -0.930893, -0.147866,
		0.546207, 0.063318, 0.835254,
		30.523817, 33.497646, 34.165466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095238, 32.812874, 33.891838>,  <30.141472, 33.453323, 33.580788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095238, 32.812874, 33.891838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179092, 33.077145, 34.180161>,  <30.229404, 33.235706, 34.353153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179092, 33.077145, 34.180161>,  <30.095238, 32.812874, 33.891838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179092, 33.077145, 34.180161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703793, -0.409794, 0.580297,
		0.678770, -0.628947, 0.379073,
		0.209635, 0.660677, 0.720804,
		30.241983, 33.275349, 34.396400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241488, 32.509445, 34.523769>,  <30.095238, 32.812874, 33.891838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241488, 32.509445, 34.523769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075279, 32.867424, 34.588772>,  <29.975555, 33.082211, 34.627773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075279, 32.867424, 34.588772>,  <30.241488, 32.509445, 34.523769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075279, 32.867424, 34.588772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546907, -0.388576, 0.741554,
		0.726799, 0.219255, 0.650915,
		-0.415519, 0.894950, 0.162504,
		29.950623, 33.135910, 34.637524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775846, 32.373295, 35.106380>,  <30.241488, 32.509445, 34.523769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775846, 32.373295, 35.106380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680578, 32.753498, 35.026566>,  <29.623417, 32.981621, 34.978676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680578, 32.753498, 35.026566>,  <29.775846, 32.373295, 35.106380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680578, 32.753498, 35.026566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844166, -0.101000, 0.526482,
		0.480270, 0.293838, 0.826438,
		-0.238170, 0.950504, -0.199541,
		29.609127, 33.038651, 34.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847134, 32.852173, 35.775215>,  <29.775846, 32.373295, 35.106380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847134, 32.852173, 35.775215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570704, 32.918476, 35.493809>,  <29.404844, 32.958260, 35.324966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570704, 32.918476, 35.493809>,  <29.847134, 32.852173, 35.775215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570704, 32.918476, 35.493809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722444, -0.128696, 0.679347,
		0.022068, 0.977733, 0.208691,
		-0.691077, 0.165760, -0.703517,
		29.363380, 32.968204, 35.282753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534344, 33.510151, 35.866249>,  <29.847134, 32.852173, 35.775215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534344, 33.510151, 35.866249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271988, 33.278992, 35.671997>,  <29.114574, 33.140297, 35.555447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271988, 33.278992, 35.671997>,  <29.534344, 33.510151, 35.866249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271988, 33.278992, 35.671997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690677, 0.199856, 0.694999,
		-0.304585, 0.791257, -0.530227,
		-0.655891, -0.577902, -0.485630,
		29.075220, 33.105621, 35.526310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324739, 33.944954, 35.324341>,  <29.534344, 33.510151, 35.866249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324739, 33.944954, 35.324341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573999, 33.636482, 35.376438>,  <29.723557, 33.451401, 35.407696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573999, 33.636482, 35.376438>,  <29.324739, 33.944954, 35.324341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573999, 33.636482, 35.376438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555862, 0.319564, -0.767396,
		0.550181, 0.550599, 0.627806,
		0.623152, -0.771180, 0.130239,
		29.760944, 33.405128, 35.415508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973557, 34.182552, 35.316765>,  <29.324739, 33.944954, 35.324341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973557, 34.182552, 35.316765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008734, 33.796345, 35.218754>,  <30.029840, 33.564621, 35.159946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008734, 33.796345, 35.218754>,  <29.973557, 34.182552, 35.316765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008734, 33.796345, 35.218754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715975, 0.232287, -0.658349,
		0.692565, -0.117533, 0.711716,
		0.087945, -0.965520, -0.245025,
		30.035116, 33.506687, 35.145245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631872, 33.936764, 35.426907>,  <29.973557, 34.182552, 35.316765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631872, 33.936764, 35.426907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518070, 33.733154, 35.101955>,  <30.449789, 33.610989, 34.906986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518070, 33.733154, 35.101955>,  <30.631872, 33.936764, 35.426907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518070, 33.733154, 35.101955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866795, 0.225417, -0.444807,
		0.409539, -0.830713, 0.377085,
		-0.284506, -0.509022, -0.812375,
		30.432718, 33.580448, 34.858242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233120, 33.608200, 35.227367>,  <30.631872, 33.936764, 35.426907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233120, 33.608200, 35.227367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016338, 33.563946, 34.894131>,  <30.886269, 33.537392, 34.694187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016338, 33.563946, 34.894131>,  <31.233120, 33.608200, 35.227367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016338, 33.563946, 34.894131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826869, 0.107021, -0.552118,
		0.150241, -0.988082, 0.033477,
		-0.541955, -0.110632, -0.833093,
		30.853752, 33.530754, 34.644203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644699, 33.182137, 34.769077>,  <31.233120, 33.608200, 35.227367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644699, 33.182137, 34.769077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386246, 33.357918, 34.519470>,  <31.231174, 33.463387, 34.369705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386246, 33.357918, 34.519470>,  <31.644699, 33.182137, 34.769077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386246, 33.357918, 34.519470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720833, 0.082678, -0.688160,
		-0.250822, -0.894452, -0.370194,
		-0.646133, 0.439453, -0.624014,
		31.192406, 33.489754, 34.332268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843195, 32.867752, 34.072582>,  <31.644699, 33.182137, 34.769077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843195, 32.867752, 34.072582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653259, 33.206573, 33.977062>,  <31.539297, 33.409866, 33.919750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653259, 33.206573, 33.977062>,  <31.843195, 32.867752, 34.072582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653259, 33.206573, 33.977062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672868, 0.174528, -0.718880,
		-0.567253, -0.502033, -0.652829,
		-0.474839, 0.847055, -0.238801,
		31.510807, 33.460690, 33.905422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823503, 32.995667, 33.331463>,  <31.843195, 32.867752, 34.072582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823503, 32.995667, 33.331463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843872, 33.326431, 33.555470>,  <31.856092, 33.524891, 33.689873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843872, 33.326431, 33.555470>,  <31.823503, 32.995667, 33.331463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843872, 33.326431, 33.555470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808451, 0.295093, -0.509242,
		-0.586357, 0.478675, -0.653495,
		0.050920, 0.826916, 0.560015,
		31.859148, 33.574505, 33.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801586, 33.586678, 32.802273>,  <31.823503, 32.995667, 33.331463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801586, 33.586678, 32.802273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925953, 33.763477, 33.138836>,  <32.000572, 33.869556, 33.340775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925953, 33.763477, 33.138836>,  <31.801586, 33.586678, 32.802273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925953, 33.763477, 33.138836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682488, 0.512296, -0.521309,
		-0.661469, 0.736333, -0.142381,
		0.310916, 0.442003, 0.841406,
		32.019226, 33.896080, 33.391258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001770, 34.214100, 32.540016>,  <31.801586, 33.586678, 32.802273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001770, 34.214100, 32.540016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181652, 34.167961, 32.894295>,  <32.289581, 34.140278, 33.106861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181652, 34.167961, 32.894295>,  <32.001770, 34.214100, 32.540016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181652, 34.167961, 32.894295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829979, 0.420345, -0.366668,
		-0.330005, 0.900003, 0.284766,
		0.449702, -0.115348, 0.885699,
		32.316563, 34.133358, 33.160004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092575, 34.884056, 32.814404>,  <32.001770, 34.214100, 32.540016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092575, 34.884056, 32.814404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364742, 34.624016, 32.949699>,  <32.528042, 34.467991, 33.030876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364742, 34.624016, 32.949699>,  <32.092575, 34.884056, 32.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364742, 34.624016, 32.949699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732657, 0.613400, -0.294881,
		-0.015774, 0.448454, 0.893667,
		0.680416, -0.650100, 0.338238,
		32.568867, 34.428986, 33.051170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650078, 35.297256, 33.008728>,  <32.092575, 34.884056, 32.814404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650078, 35.297256, 33.008728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818901, 34.935261, 32.987350>,  <32.920197, 34.718063, 32.974525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818901, 34.935261, 32.987350>,  <32.650078, 35.297256, 33.008728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818901, 34.935261, 32.987350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835912, 0.411301, -0.363432,
		0.350883, 0.108718, 0.930087,
		0.422057, -0.904993, -0.053439,
		32.945518, 34.663761, 32.971317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226738, 35.458420, 33.297043>,  <32.650078, 35.297256, 33.008728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226738, 35.458420, 33.297043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313808, 35.102692, 33.136185>,  <33.366051, 34.889256, 33.039669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313808, 35.102692, 33.136185>,  <33.226738, 35.458420, 33.297043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313808, 35.102692, 33.136185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812882, 0.393242, -0.429632,
		0.540223, -0.233379, 0.808513,
		0.217674, -0.889323, -0.402148,
		33.379112, 34.835896, 33.015541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926525, 35.446388, 33.460911>,  <33.226738, 35.458420, 33.297043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926525, 35.446388, 33.460911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848274, 35.212311, 33.146133>,  <33.801323, 35.071865, 32.957268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848274, 35.212311, 33.146133>,  <33.926525, 35.446388, 33.460911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848274, 35.212311, 33.146133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804482, 0.363145, -0.470038,
		0.560838, -0.725030, 0.399740,
		-0.195628, -0.585198, -0.786939,
		33.789585, 35.036751, 32.910053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575535, 35.183620, 33.147949>,  <33.926525, 35.446388, 33.460911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575535, 35.183620, 33.147949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310020, 35.164753, 32.849373>,  <34.150711, 35.153431, 32.670227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310020, 35.164753, 32.849373>,  <34.575535, 35.183620, 33.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310020, 35.164753, 32.849373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723666, 0.211619, -0.656906,
		0.188941, -0.976214, -0.106339,
		-0.663784, -0.047163, -0.746436,
		34.110886, 35.150604, 32.625443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940395, 34.919159, 32.622288>,  <34.575535, 35.183620, 33.147949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940395, 34.919159, 32.622288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621090, 35.055916, 32.423943>,  <34.429504, 35.137970, 32.304935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621090, 35.055916, 32.423943>,  <34.940395, 34.919159, 32.622288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621090, 35.055916, 32.423943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596336, 0.333019, -0.730398,
		-0.084582, -0.878755, -0.469718,
		-0.798267, 0.341888, -0.495866,
		34.381611, 35.158482, 32.275181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050117, 34.626251, 31.980679>,  <34.940395, 34.919159, 32.622288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050117, 34.626251, 31.980679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804863, 34.936966, 31.923185>,  <34.657711, 35.123394, 31.888689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804863, 34.936966, 31.923185>,  <35.050117, 34.626251, 31.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804863, 34.936966, 31.923185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609232, 0.349136, -0.711998,
		-0.502889, -0.524121, -0.687313,
		-0.613139, 0.776789, -0.143735,
		34.620922, 35.170002, 31.880064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934288, 34.665611, 31.310280>,  <35.050117, 34.626251, 31.980679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934288, 34.665611, 31.310280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801331, 35.030773, 31.405039>,  <34.721554, 35.249870, 31.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801331, 35.030773, 31.405039>,  <34.934288, 34.665611, 31.310280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801331, 35.030773, 31.405039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492664, 0.382253, -0.781770,
		-0.804235, -0.143147, -0.576814,
		-0.332397, 0.912903, 0.236898,
		34.701611, 35.304646, 31.476109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768505, 34.977303, 30.644384>,  <34.934288, 34.665611, 31.310280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768505, 34.977303, 30.644384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849602, 35.269585, 30.905144>,  <34.898258, 35.444954, 31.061600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849602, 35.269585, 30.905144>,  <34.768505, 34.977303, 30.644384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849602, 35.269585, 30.905144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516673, 0.485693, -0.705090,
		-0.831833, 0.479767, -0.279066,
		0.202738, 0.730703, 0.651898,
		34.910423, 35.488796, 31.100714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734478, 35.597160, 30.258106>,  <34.768505, 34.977303, 30.644384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734478, 35.597160, 30.258106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933388, 35.724739, 30.580843>,  <35.052734, 35.801285, 30.774485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933388, 35.724739, 30.580843>,  <34.734478, 35.597160, 30.258106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933388, 35.724739, 30.580843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577541, 0.572291, -0.582176,
		-0.647430, 0.755485, 0.100382,
		0.497273, 0.318943, 0.806843,
		35.082569, 35.820423, 30.822895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723137, 36.370014, 30.276915>,  <34.734478, 35.597160, 30.258106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723137, 36.370014, 30.276915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050793, 36.260139, 30.478333>,  <35.247387, 36.194214, 30.599184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050793, 36.260139, 30.478333>,  <34.723137, 36.370014, 30.276915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050793, 36.260139, 30.478333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547590, 0.635836, -0.543928,
		-0.170761, 0.721289, 0.671255,
		0.819137, -0.274691, 0.503546,
		35.296535, 36.177731, 30.629396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097378, 36.965641, 30.243513>,  <34.723137, 36.370014, 30.276915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097378, 36.965641, 30.243513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374836, 36.715073, 30.385750>,  <35.541313, 36.564732, 30.471092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374836, 36.715073, 30.385750>,  <35.097378, 36.965641, 30.243513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374836, 36.715073, 30.385750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711019, 0.516402, -0.477263,
		0.115339, 0.583887, 0.803600,
		0.693649, -0.626422, 0.355593,
		35.582932, 36.527145, 30.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575314, 37.381374, 30.464249>,  <35.097378, 36.965641, 30.243513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575314, 37.381374, 30.464249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724529, 37.019909, 30.380114>,  <35.814056, 36.803032, 30.329632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724529, 37.019909, 30.380114>,  <35.575314, 37.381374, 30.464249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724529, 37.019909, 30.380114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693183, 0.422133, -0.584210,
		0.616718, 0.072129, 0.783873,
		0.373037, -0.903660, -0.210338,
		35.836441, 36.748810, 30.317013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251110, 37.406940, 30.588884>,  <35.575314, 37.381374, 30.464249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251110, 37.406940, 30.588884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220997, 37.094498, 30.340946>,  <36.202930, 36.907032, 30.192183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220997, 37.094498, 30.340946>,  <36.251110, 37.406940, 30.588884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220997, 37.094498, 30.340946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784761, 0.337102, -0.520108,
		0.615210, -0.525585, 0.587603,
		-0.075278, -0.781104, -0.619847,
		36.198414, 36.860168, 30.154991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918125, 37.216038, 30.411264>,  <36.251110, 37.406940, 30.588884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918125, 37.216038, 30.411264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688343, 37.074028, 30.116249>,  <36.550476, 36.988823, 29.939240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688343, 37.074028, 30.116249>,  <36.918125, 37.216038, 30.411264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688343, 37.074028, 30.116249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674915, 0.304376, -0.672194,
		0.463136, -0.883918, 0.064764,
		-0.574451, -0.355028, -0.737537,
		36.516006, 36.967518, 29.894987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347363, 37.082478, 29.972069>,  <36.918125, 37.216038, 30.411264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347363, 37.082478, 29.972069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031086, 37.062668, 29.727983>,  <36.841320, 37.050781, 29.581533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031086, 37.062668, 29.727983>,  <37.347363, 37.082478, 29.972069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031086, 37.062668, 29.727983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563122, 0.332254, -0.756638,
		0.240218, -0.941889, -0.234821,
		-0.790689, -0.049525, -0.610212,
		36.793880, 37.047810, 29.544920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539402, 36.813156, 29.373125>,  <37.347363, 37.082478, 29.972069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539402, 36.813156, 29.373125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205441, 37.014950, 29.285097>,  <37.005062, 37.136024, 29.232281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205441, 37.014950, 29.285097>,  <37.539402, 36.813156, 29.373125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205441, 37.014950, 29.285097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461509, 0.423801, -0.779360,
		-0.299908, -0.752255, -0.586657,
		-0.834904, 0.504484, -0.220071,
		36.954967, 37.166294, 29.219076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514626, 36.713844, 28.720024>,  <37.539402, 36.813156, 29.373125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514626, 36.713844, 28.720024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288532, 37.037678, 28.783382>,  <37.152874, 37.231976, 28.821398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288532, 37.037678, 28.783382>,  <37.514626, 36.713844, 28.720024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288532, 37.037678, 28.783382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463630, 0.470580, -0.750734,
		-0.682317, -0.350905, -0.641334,
		-0.565235, 0.809580, 0.158395,
		37.118961, 37.280552, 28.830900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273876, 36.974281, 28.100285>,  <37.514626, 36.713844, 28.720024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273876, 36.974281, 28.100285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202839, 37.293404, 28.330750>,  <37.160217, 37.484879, 28.469028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202839, 37.293404, 28.330750>,  <37.273876, 36.974281, 28.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202839, 37.293404, 28.330750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290293, 0.601887, -0.743950,
		-0.940313, 0.035133, -0.338491,
		-0.177596, 0.797808, 0.576162,
		37.149559, 37.532745, 28.503597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986767, 37.465206, 27.630005>,  <37.273876, 36.974281, 28.100285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986767, 37.465206, 27.630005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125484, 37.658272, 27.951693>,  <37.208714, 37.774113, 28.144705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125484, 37.658272, 27.951693>,  <36.986767, 37.465206, 27.630005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125484, 37.658272, 27.951693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599032, 0.545801, -0.585885,
		-0.721730, 0.684934, -0.099853,
		0.346793, 0.482666, 0.804219,
		37.229523, 37.803070, 28.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007538, 38.123756, 27.409853>,  <36.986767, 37.465206, 27.630005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007538, 38.123756, 27.409853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257725, 38.120930, 27.721939>,  <37.407837, 38.119232, 27.909191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257725, 38.120930, 27.721939>,  <37.007538, 38.123756, 27.409853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257725, 38.120930, 27.721939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658169, 0.541830, -0.522718,
		-0.419050, 0.840458, 0.343551,
		0.625469, -0.007069, 0.780217,
		37.445366, 38.118809, 27.956005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102650, 38.811386, 27.632238>,  <37.007538, 38.123756, 27.409853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102650, 38.811386, 27.632238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424408, 38.611179, 27.760254>,  <37.617462, 38.491055, 27.837063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424408, 38.611179, 27.760254>,  <37.102650, 38.811386, 27.632238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424408, 38.611179, 27.760254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593363, 0.703515, -0.391135,
		-0.029384, 0.504528, 0.862895,
		0.804398, -0.500517, 0.320040,
		37.665726, 38.461025, 27.856266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533150, 39.376652, 27.830023>,  <37.102650, 38.811386, 27.632238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533150, 39.376652, 27.830023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766090, 39.053410, 27.794645>,  <37.905857, 38.859463, 27.773418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766090, 39.053410, 27.794645>,  <37.533150, 39.376652, 27.830023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766090, 39.053410, 27.794645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695004, 0.551355, -0.461496,
		0.421702, 0.207287, 0.882723,
		0.582356, -0.808109, -0.088442,
		37.940796, 38.810978, 27.768112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249939, 39.657097, 27.920481>,  <37.533150, 39.376652, 27.830023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249939, 39.657097, 27.920481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312725, 39.303997, 27.743343>,  <38.350399, 39.092136, 27.637062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312725, 39.303997, 27.743343>,  <38.249939, 39.657097, 27.920481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312725, 39.303997, 27.743343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784559, 0.383811, -0.486988,
		0.599857, -0.270994, 0.752817,
		0.156969, -0.882753, -0.442842,
		38.359818, 39.039173, 27.610491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935169, 39.469486, 28.065731>,  <38.249939, 39.657097, 27.920481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935169, 39.469486, 28.065731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838055, 39.244514, 27.749573>,  <38.779785, 39.109531, 27.559877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838055, 39.244514, 27.749573>,  <38.935169, 39.469486, 28.065731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838055, 39.244514, 27.749573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767850, 0.386512, -0.510895,
		0.592841, -0.730945, 0.338022,
		-0.242787, -0.562430, -0.790397,
		38.765217, 39.075787, 27.512453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608208, 39.375740, 27.779945>,  <38.935169, 39.469486, 28.065731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608208, 39.375740, 27.779945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352657, 39.332142, 27.475327>,  <39.199326, 39.305984, 27.292555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352657, 39.332142, 27.475327>,  <39.608208, 39.375740, 27.779945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352657, 39.332142, 27.475327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630721, 0.492586, -0.599625,
		0.440483, -0.863411, -0.245957,
		-0.638878, -0.108995, -0.761548,
		39.160995, 39.299442, 27.246862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988914, 39.011429, 27.194632>,  <39.608208, 39.375740, 27.779945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988914, 39.011429, 27.194632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668098, 39.178406, 27.023760>,  <39.475609, 39.278591, 26.921236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668098, 39.178406, 27.023760>,  <39.988914, 39.011429, 27.194632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668098, 39.178406, 27.023760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580386, 0.375814, -0.722437,
		-0.141035, -0.827349, -0.543693,
		-0.802035, 0.417442, -0.427179,
		39.427486, 39.303638, 26.895607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083214, 38.839306, 26.540390>,  <39.988914, 39.011429, 27.194632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083214, 38.839306, 26.540390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823227, 39.141628, 26.508615>,  <39.667236, 39.323021, 26.489550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823227, 39.141628, 26.508615>,  <40.083214, 38.839306, 26.540390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823227, 39.141628, 26.508615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574829, 0.420557, -0.701928,
		-0.497111, -0.501891, -0.707804,
		-0.649963, 0.755803, -0.079438,
		39.628239, 39.368370, 26.484783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024574, 39.024906, 25.794104>,  <40.083214, 38.839306, 26.540390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024574, 39.024906, 25.794104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921837, 39.349094, 26.004690>,  <39.860195, 39.543610, 26.131042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921837, 39.349094, 26.004690>,  <40.024574, 39.024906, 25.794104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921837, 39.349094, 26.004690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657819, 0.545685, -0.519136,
		-0.708030, 0.212984, -0.673298,
		-0.256841, 0.810472, 0.526467,
		39.844784, 39.592236, 26.162630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072517, 39.548672, 25.243574>,  <40.024574, 39.024906, 25.794104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072517, 39.548672, 25.243574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045437, 39.774014, 25.572948>,  <40.029186, 39.909218, 25.770573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045437, 39.774014, 25.572948>,  <40.072517, 39.548672, 25.243574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045437, 39.774014, 25.572948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724166, 0.595470, -0.347849,
		-0.686294, 0.572754, -0.448279,
		-0.067704, 0.563355, 0.823436,
		40.025124, 39.943020, 25.819979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841095, 40.202801, 24.952486>,  <40.072517, 39.548672, 25.243574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841095, 40.202801, 24.952486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028862, 40.255600, 25.301708>,  <40.141521, 40.287281, 25.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028862, 40.255600, 25.301708>,  <39.841095, 40.202801, 24.952486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028862, 40.255600, 25.301708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574227, 0.705478, -0.415409,
		-0.670753, 0.696331, 0.255368,
		0.469419, 0.131997, 0.873053,
		40.169689, 40.295200, 25.563623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936546, 40.848606, 24.969271>,  <39.841095, 40.202801, 24.952486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936546, 40.848606, 24.969271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216423, 40.702648, 25.214966>,  <40.384350, 40.615074, 25.362383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216423, 40.702648, 25.214966>,  <39.936546, 40.848606, 24.969271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216423, 40.702648, 25.214966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693572, 0.553224, -0.461412,
		-0.171442, 0.748862, 0.640167,
		0.699689, -0.364896, 0.614236,
		40.426331, 40.593178, 25.399237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286716, 41.381176, 25.167921>,  <39.936546, 40.848606, 24.969271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286716, 41.381176, 25.167921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533081, 41.068729, 25.208921>,  <40.680901, 40.881260, 25.233521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533081, 41.068729, 25.208921>,  <40.286716, 41.381176, 25.167921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533081, 41.068729, 25.208921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760039, 0.554900, -0.338269,
		0.207352, 0.286247, 0.935451,
		0.615910, -0.781120, 0.102499,
		40.717854, 40.834393, 25.239672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813198, 41.623871, 25.588198>,  <40.286716, 41.381176, 25.167921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813198, 41.623871, 25.588198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957966, 41.304306, 25.396049>,  <41.044827, 41.112568, 25.280760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957966, 41.304306, 25.396049>,  <40.813198, 41.623871, 25.588198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957966, 41.304306, 25.396049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852730, 0.491925, -0.175673,
		0.376654, -0.346049, 0.859292,
		0.361916, -0.798912, -0.480372,
		41.066540, 41.064632, 25.251938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415325, 41.495914, 25.900434>,  <40.813198, 41.623871, 25.588198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415325, 41.495914, 25.900434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463264, 41.328690, 25.540243>,  <41.492027, 41.228355, 25.324129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463264, 41.328690, 25.540243>,  <41.415325, 41.495914, 25.900434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463264, 41.328690, 25.540243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757190, 0.625121, -0.189440,
		0.642105, -0.659128, 0.391473,
		0.119853, -0.418060, -0.900479,
		41.499222, 41.203270, 25.270100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159508, 41.287617, 25.793633>,  <41.415325, 41.495914, 25.900434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159508, 41.287617, 25.793633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000008, 41.302593, 25.427114>,  <41.904308, 41.311581, 25.207203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000008, 41.302593, 25.427114>,  <42.159508, 41.287617, 25.793633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000008, 41.302593, 25.427114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790852, 0.519882, -0.322917,
		0.464274, -0.853417, -0.236915,
		-0.398751, 0.037443, -0.916295,
		41.880383, 41.313828, 25.152225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710239, 40.989834, 25.459951>,  <42.159508, 41.287617, 25.793633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710239, 40.989834, 25.459951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504059, 41.192974, 25.183867>,  <42.380348, 41.314857, 25.018215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504059, 41.192974, 25.183867>,  <42.710239, 40.989834, 25.459951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504059, 41.192974, 25.183867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818682, 0.529767, -0.221601,
		0.253113, -0.679291, -0.688838,
		-0.515455, 0.507849, -0.690214,
		42.349422, 41.345329, 24.976803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155643, 41.148605, 24.891253>,  <42.710239, 40.989834, 25.459951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155643, 41.148605, 24.891253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855244, 41.410141, 24.854389>,  <42.675003, 41.567062, 24.832272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855244, 41.410141, 24.854389>,  <43.155643, 41.148605, 24.891253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855244, 41.410141, 24.854389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657628, 0.728075, -0.193474,
		-0.059402, -0.205905, -0.976767,
		-0.750997, 0.653843, -0.092160,
		42.629944, 41.606293, 24.826742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238693, 41.427280, 24.269852>,  <43.155643, 41.148605, 24.891253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238693, 41.427280, 24.269852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014294, 41.688393, 24.473482>,  <42.879654, 41.845062, 24.595661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014294, 41.688393, 24.473482>,  <43.238693, 41.427280, 24.269852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014294, 41.688393, 24.473482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596685, 0.745123, -0.297923,
		-0.573805, 0.136626, -0.807516,
		-0.560995, 0.652782, 0.509078,
		42.845997, 41.884228, 24.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227135, 42.081970, 23.835609>,  <43.238693, 41.427280, 24.269852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227135, 42.081970, 23.835609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125492, 42.217171, 24.198088>,  <43.064507, 42.298290, 24.415575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125492, 42.217171, 24.198088>,  <43.227135, 42.081970, 23.835609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125492, 42.217171, 24.198088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636460, 0.763926, -0.106469,
		-0.728252, 0.549702, -0.409239,
		-0.254102, 0.338000, 0.906194,
		43.049263, 42.318569, 24.469946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029556, 42.934406, 23.769590>,  <43.227135, 42.081970, 23.835609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029556, 42.934406, 23.769590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167130, 42.831856, 24.130917>,  <43.249672, 42.770325, 24.347713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167130, 42.831856, 24.130917>,  <43.029556, 42.934406, 23.769590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167130, 42.831856, 24.130917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478281, 0.875691, 0.066432,
		-0.808058, 0.409191, 0.423799,
		0.343933, -0.256375, 0.903317,
		43.270309, 42.754944, 24.401911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770100, 43.383186, 24.320053>,  <43.029556, 42.934406, 23.769590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770100, 43.383186, 24.320053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132084, 43.223824, 24.379807>,  <43.349274, 43.128204, 24.415659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132084, 43.223824, 24.379807>,  <42.770100, 43.383186, 24.320053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132084, 43.223824, 24.379807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400510, 0.916133, 0.017084,
		-0.143660, 0.044369, 0.988632,
		0.904960, -0.398411, 0.149382,
		43.403572, 43.104301, 24.424622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039028, 43.644218, 24.844168>,  <42.770100, 43.383186, 24.320053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039028, 43.644218, 24.844168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342720, 43.523598, 24.613468>,  <43.524933, 43.451225, 24.475048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342720, 43.523598, 24.613468>,  <43.039028, 43.644218, 24.844168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342720, 43.523598, 24.613468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393053, 0.918770, 0.037032,
		0.518733, -0.254809, 0.816081,
		0.759227, -0.301553, -0.576750,
		43.570488, 43.433132, 24.440443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290565, 43.806507, 25.018127>,  <43.039028, 43.644218, 24.844168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290565, 43.806507, 25.018127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282635, 44.147167, 25.227623>,  <42.277878, 44.351562, 25.353321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282635, 44.147167, 25.227623>,  <42.290565, 43.806507, 25.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282635, 44.147167, 25.227623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440743, 0.477640, -0.760003,
		-0.897414, 0.215768, -0.384827,
		-0.019824, 0.851648, 0.523740,
		42.276688, 44.402660, 25.384745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256241, 44.219898, 24.567236>,  <42.290565, 43.806507, 25.018127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256241, 44.219898, 24.567236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348709, 44.479607, 24.857065>,  <42.404190, 44.635433, 25.030962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348709, 44.479607, 24.857065>,  <42.256241, 44.219898, 24.567236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348709, 44.479607, 24.857065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494433, 0.563004, -0.662240,
		-0.837912, 0.511342, -0.190874,
		0.231169, 0.649273, 0.724572,
		42.418060, 44.674389, 25.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823708, 44.652161, 24.360035>,  <42.256241, 44.219898, 24.567236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823708, 44.652161, 24.360035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042606, 44.971218, 24.461447>,  <43.173946, 45.162655, 24.522293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042606, 44.971218, 24.461447>,  <42.823708, 44.652161, 24.360035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042606, 44.971218, 24.461447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372686, -0.038996, 0.927138,
		0.749415, -0.601864, 0.275931,
		0.547250, 0.797646, 0.253530,
		43.206783, 45.210510, 24.537506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337013, 44.600033, 24.960197>,  <42.823708, 44.652161, 24.360035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337013, 44.600033, 24.960197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229759, 44.984962, 24.978273>,  <43.165405, 45.215919, 24.989119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229759, 44.984962, 24.978273>,  <43.337013, 44.600033, 24.960197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229759, 44.984962, 24.978273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390404, -0.151425, 0.908105,
		0.880731, 0.225856, 0.416296,
		-0.268139, 0.962320, 0.045190,
		43.149319, 45.273659, 24.991831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499908, 44.888145, 25.619658>,  <43.337013, 44.600033, 24.960197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499908, 44.888145, 25.619658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171421, 45.033745, 25.443886>,  <42.974327, 45.121105, 25.338423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171421, 45.033745, 25.443886>,  <43.499908, 44.888145, 25.619658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171421, 45.033745, 25.443886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567071, -0.434974, 0.699448,
		0.063459, 0.823590, 0.563624,
		-0.821221, 0.364002, -0.439430,
		42.925056, 45.142944, 25.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104610, 45.204624, 26.077513>,  <43.499908, 44.888145, 25.619658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104610, 45.204624, 26.077513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869698, 45.081593, 25.778048>,  <42.728752, 45.007774, 25.598368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869698, 45.081593, 25.778048>,  <43.104610, 45.204624, 26.077513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869698, 45.081593, 25.778048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603536, -0.449906, 0.658278,
		-0.539303, 0.838438, 0.078583,
		-0.587279, -0.307583, -0.748662,
		42.693512, 44.989319, 25.553450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481045, 45.452057, 26.216869>,  <43.104610, 45.204624, 26.077513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481045, 45.452057, 26.216869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405785, 45.155769, 25.958897>,  <42.360630, 44.977997, 25.804111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405785, 45.155769, 25.958897>,  <42.481045, 45.452057, 26.216869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405785, 45.155769, 25.958897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789473, -0.276557, 0.547948,
		-0.584235, 0.612256, -0.532740,
		-0.188152, -0.740715, -0.644934,
		42.349339, 44.933556, 25.765417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725735, 45.289619, 25.976105>,  <42.481045, 45.452057, 26.216869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725735, 45.289619, 25.976105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906151, 44.933117, 25.957218>,  <42.014400, 44.719215, 25.945887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906151, 44.933117, 25.957218>,  <41.725735, 45.289619, 25.976105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906151, 44.933117, 25.957218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730644, -0.399110, 0.553959,
		-0.512561, -0.215361, -0.831204,
		0.451043, -0.891252, -0.047216,
		42.041462, 44.665741, 25.943054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240276, 44.854893, 25.830524>,  <41.725735, 45.289619, 25.976105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240276, 44.854893, 25.830524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511299, 44.618546, 26.005699>,  <41.673912, 44.476738, 26.110804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511299, 44.618546, 26.005699>,  <41.240276, 44.854893, 25.830524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511299, 44.618546, 26.005699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727247, -0.449478, 0.518731,
		-0.109659, -0.669959, -0.734254,
		0.677560, -0.590867, 0.437936,
		41.714565, 44.441284, 26.137079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838646, 44.208977, 25.831348>,  <41.240276, 44.854893, 25.830524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838646, 44.208977, 25.831348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137150, 44.135788, 26.087357>,  <41.316250, 44.091873, 26.240961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137150, 44.135788, 26.087357>,  <40.838646, 44.208977, 25.831348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137150, 44.135788, 26.087357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627954, -0.512510, 0.585668,
		0.220853, -0.838960, -0.497363,
		0.746255, -0.182975, 0.640018,
		41.361027, 44.080894, 26.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744804, 43.518742, 25.996412>,  <40.838646, 44.208977, 25.831348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744804, 43.518742, 25.996412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001610, 43.625450, 26.283924>,  <41.155693, 43.689476, 26.456432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001610, 43.625450, 26.283924>,  <40.744804, 43.518742, 25.996412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001610, 43.625450, 26.283924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436578, -0.643466, 0.628770,
		0.630248, -0.717486, -0.296651,
		0.642018, 0.266769, 0.718781,
		41.194214, 43.705482, 26.499559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159893, 42.946941, 26.214098>,  <40.744804, 43.518742, 25.996412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159893, 42.946941, 26.214098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130638, 43.201942, 26.520887>,  <41.113087, 43.354942, 26.704960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130638, 43.201942, 26.520887>,  <41.159893, 42.946941, 26.214098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130638, 43.201942, 26.520887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227611, -0.759405, 0.609506,
		0.971002, -0.129996, 0.200640,
		-0.073133, 0.637499, 0.766972,
		41.108700, 43.393192, 26.750978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513020, 42.655682, 26.834888>,  <41.159893, 42.946941, 26.214098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513020, 42.655682, 26.834888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259239, 42.935848, 26.965670>,  <41.106972, 43.103947, 27.044138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259239, 42.935848, 26.965670>,  <41.513020, 42.655682, 26.834888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259239, 42.935848, 26.965670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237432, -0.579128, 0.779895,
		0.735597, 0.417173, 0.533726,
		-0.634447, 0.700412, 0.326955,
		41.068905, 43.145973, 27.063757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360260, 42.578182, 27.538073>,  <41.513020, 42.655682, 26.834888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360260, 42.578182, 27.538073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056751, 42.837101, 27.508999>,  <40.874645, 42.992451, 27.491554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056751, 42.837101, 27.508999>,  <41.360260, 42.578182, 27.538073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056751, 42.837101, 27.508999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541977, -0.565508, 0.621661,
		0.361295, 0.511089, 0.779907,
		-0.758767, 0.647294, -0.072683,
		40.829121, 43.031288, 27.487194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158550, 42.710464, 28.193209>,  <41.360260, 42.578182, 27.538073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158550, 42.710464, 28.193209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838062, 42.841782, 27.993103>,  <40.645767, 42.920574, 27.873039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838062, 42.841782, 27.993103>,  <41.158550, 42.710464, 28.193209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838062, 42.841782, 27.993103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595587, -0.357056, 0.719574,
		0.057611, 0.874490, 0.481610,
		-0.801222, 0.328297, -0.500264,
		40.597694, 42.940269, 27.843023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829918, 43.081146, 28.658588>,  <41.158550, 42.710464, 28.193209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829918, 43.081146, 28.658588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549854, 42.993439, 28.386797>,  <40.381817, 42.940815, 28.223722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549854, 42.993439, 28.386797>,  <40.829918, 43.081146, 28.658588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549854, 42.993439, 28.386797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598605, -0.338437, 0.726039,
		-0.389158, 0.915086, 0.105706,
		-0.700163, -0.219268, -0.679480,
		40.339806, 42.927658, 28.182953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064510, 43.220058, 29.014463>,  <40.829918, 43.081146, 28.658588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064510, 43.220058, 29.014463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994442, 42.968555, 28.711418>,  <39.952400, 42.817654, 28.529591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994442, 42.968555, 28.711418>,  <40.064510, 43.220058, 29.014463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994442, 42.968555, 28.711418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770083, -0.391947, 0.503339,
		-0.613422, 0.671596, -0.415538,
		-0.175172, -0.628758, -0.757614,
		39.941891, 42.779926, 28.484135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408890, 43.172283, 29.156488>,  <40.064510, 43.220058, 29.014463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408890, 43.172283, 29.156488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532181, 42.856724, 28.943836>,  <39.606155, 42.667389, 28.816244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532181, 42.856724, 28.943836>,  <39.408890, 43.172283, 29.156488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532181, 42.856724, 28.943836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549757, -0.603786, 0.577242,
		-0.776379, 0.114347, -0.619806,
		0.308225, -0.788902, -0.531631,
		39.624649, 42.620052, 28.784348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771107, 42.844322, 28.971331>,  <39.408890, 43.172283, 29.156488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771107, 42.844322, 28.971331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072041, 42.581093, 28.983536>,  <39.252602, 42.423157, 28.990858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072041, 42.581093, 28.983536>,  <38.771107, 42.844322, 28.971331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072041, 42.581093, 28.983536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573832, -0.631873, 0.521012,
		-0.323583, -0.409486, -0.853004,
		0.752337, -0.658071, 0.030513,
		39.297741, 42.383671, 28.992689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338848, 42.159725, 28.918913>,  <38.771107, 42.844322, 28.971331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338848, 42.159725, 28.918913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708027, 42.064079, 29.039570>,  <38.929535, 42.006691, 29.111963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708027, 42.064079, 29.039570>,  <38.338848, 42.159725, 28.918913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708027, 42.064079, 29.039570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368386, -0.775917, 0.512098,
		0.111598, -0.583762, -0.804219,
		0.922951, -0.239114, 0.301641,
		38.984913, 41.992344, 29.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359802, 41.501274, 28.820421>,  <38.338848, 42.159725, 28.918913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359802, 41.501274, 28.820421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658737, 41.539749, 29.083401>,  <38.838097, 41.562832, 29.241188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658737, 41.539749, 29.083401>,  <38.359802, 41.501274, 28.820421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658737, 41.539749, 29.083401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288070, -0.844736, 0.451040,
		0.598753, -0.526469, -0.603594,
		0.747336, 0.096184, 0.657448,
		38.882938, 41.568604, 29.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644226, 40.749615, 28.899799>,  <38.359802, 41.501274, 28.820421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644226, 40.749615, 28.899799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764645, 40.977322, 29.205820>,  <38.836895, 41.113945, 29.389433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764645, 40.977322, 29.205820>,  <38.644226, 40.749615, 28.899799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764645, 40.977322, 29.205820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222818, -0.738070, 0.636871,
		0.927213, -0.362195, -0.095350,
		0.301046, 0.569269, 0.765052,
		38.854958, 41.148102, 29.435335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051342, 40.364712, 29.312014>,  <38.644226, 40.749615, 28.899799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051342, 40.364712, 29.312014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913284, 40.658691, 29.545500>,  <38.830448, 40.835079, 29.685593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913284, 40.658691, 29.545500>,  <39.051342, 40.364712, 29.312014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913284, 40.658691, 29.545500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243414, -0.670749, 0.700604,
		0.906436, 0.099724, 0.410402,
		-0.345144, 0.734950, 0.583717,
		38.809742, 40.879177, 29.720615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260036, 40.225098, 30.010139>,  <39.051342, 40.364712, 29.312014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260036, 40.225098, 30.010139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954163, 40.481445, 30.037117>,  <38.770638, 40.635254, 30.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954163, 40.481445, 30.037117>,  <39.260036, 40.225098, 30.010139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954163, 40.481445, 30.037117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366417, -0.518511, 0.772583,
		0.530094, 0.566069, 0.631321,
		-0.764682, 0.640869, 0.067442,
		38.724758, 40.673706, 30.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143005, 40.325386, 30.731646>,  <39.260036, 40.225098, 30.010139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143005, 40.325386, 30.731646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796371, 40.434525, 30.564512>,  <38.588390, 40.500008, 30.464233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796371, 40.434525, 30.564512>,  <39.143005, 40.325386, 30.731646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796371, 40.434525, 30.564512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496853, -0.393645, 0.773422,
		0.046551, 0.877837, 0.476693,
		-0.866585, 0.272849, -0.417831,
		38.536396, 40.516380, 30.439163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678688, 40.386227, 31.245430>,  <39.143005, 40.325386, 30.731646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678688, 40.386227, 31.245430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407284, 40.379421, 30.951672>,  <38.244442, 40.375340, 30.775417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407284, 40.379421, 30.951672>,  <38.678688, 40.386227, 31.245430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407284, 40.379421, 30.951672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682020, -0.356815, 0.638382,
		-0.272902, 0.934020, 0.230501,
		-0.678508, -0.017010, -0.734396,
		38.203732, 40.374317, 30.731354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076584, 40.428371, 31.561634>,  <38.678688, 40.386227, 31.245430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076584, 40.428371, 31.561634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929798, 40.297016, 31.213497>,  <37.841728, 40.218201, 31.004614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929798, 40.297016, 31.213497>,  <38.076584, 40.428371, 31.561634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929798, 40.297016, 31.213497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848594, -0.265113, 0.457824,
		-0.381084, 0.906573, -0.181383,
		-0.366964, -0.328390, -0.870343,
		37.819710, 40.198498, 30.952394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340061, 40.635086, 31.556597>,  <38.076584, 40.428371, 31.561634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340061, 40.635086, 31.556597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396816, 40.360519, 31.271301>,  <37.430870, 40.195782, 31.100124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396816, 40.360519, 31.271301>,  <37.340061, 40.635086, 31.556597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396816, 40.360519, 31.271301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875102, -0.423754, 0.233730,
		-0.462672, 0.590991, -0.660806,
		0.141887, -0.686412, -0.713237,
		37.439381, 40.154594, 31.057331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774231, 40.554420, 31.213121>,  <37.340061, 40.635086, 31.556597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774231, 40.554420, 31.213121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966022, 40.211765, 31.136940>,  <37.081097, 40.006172, 31.091230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966022, 40.211765, 31.136940>,  <36.774231, 40.554420, 31.213121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966022, 40.211765, 31.136940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791946, -0.515887, 0.326621,
		-0.378048, -0.005779, -0.925768,
		0.479479, -0.856637, -0.190454,
		37.109867, 39.954773, 31.079803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273422, 40.180725, 31.019424>,  <36.774231, 40.554420, 31.213121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273422, 40.180725, 31.019424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537289, 39.890316, 31.097132>,  <36.695606, 39.716072, 31.143757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537289, 39.890316, 31.097132>,  <36.273422, 40.180725, 31.019424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537289, 39.890316, 31.097132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724082, -0.544686, 0.423109,
		-0.201369, -0.419777, -0.885007,
		0.659663, -0.726019, 0.194270,
		36.735188, 39.672512, 31.155413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015373, 39.572945, 30.780167>,  <36.273422, 40.180725, 31.019424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015373, 39.572945, 30.780167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259495, 39.467793, 31.079077>,  <36.405968, 39.404701, 31.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259495, 39.467793, 31.079077>,  <36.015373, 39.572945, 30.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259495, 39.467793, 31.079077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755840, -0.475627, 0.449983,
		0.237131, -0.839447, -0.488976,
		0.610307, -0.262883, 0.747274,
		36.442589, 39.388927, 31.303259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936661, 38.764748, 30.954231>,  <36.015373, 39.572945, 30.780167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936661, 38.764748, 30.954231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077793, 38.952114, 31.278229>,  <36.162472, 39.064533, 31.472628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077793, 38.952114, 31.278229>,  <35.936661, 38.764748, 30.954231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077793, 38.952114, 31.278229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591735, -0.558874, 0.580956,
		0.724816, -0.684283, 0.079989,
		0.352835, 0.468419, 0.809995,
		36.183643, 39.092640, 31.521227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079411, 38.181629, 31.407244>,  <35.936661, 38.764748, 30.954231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079411, 38.181629, 31.407244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065628, 38.505573, 31.641489>,  <36.057358, 38.699940, 31.782036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065628, 38.505573, 31.641489>,  <36.079411, 38.181629, 31.407244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065628, 38.505573, 31.641489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502150, -0.520654, 0.690482,
		0.864094, -0.270277, 0.424608,
		-0.034452, 0.809858, 0.585613,
		36.055294, 38.748531, 31.817173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194427, 37.974445, 32.208641>,  <36.079411, 38.181629, 31.407244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194427, 37.974445, 32.208641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001816, 38.324764, 32.195332>,  <35.886250, 38.534958, 32.187347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001816, 38.324764, 32.195332>,  <36.194427, 37.974445, 32.208641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001816, 38.324764, 32.195332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651575, -0.332338, 0.681910,
		0.586160, 0.350036, 0.730679,
		-0.481526, 0.875800, -0.033271,
		35.857357, 38.587505, 32.185349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071224, 38.063522, 32.957176>,  <36.194427, 37.974445, 32.208641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071224, 38.063522, 32.957176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857002, 38.354866, 32.786213>,  <35.728470, 38.529671, 32.683636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857002, 38.354866, 32.786213>,  <36.071224, 38.063522, 32.957176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857002, 38.354866, 32.786213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736756, -0.155598, 0.658013,
		0.412762, 0.667300, 0.619951,
		-0.535554, 0.728354, -0.427412,
		35.696335, 38.573372, 32.657990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787266, 38.465275, 33.432140>,  <36.071224, 38.063522, 32.957176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787266, 38.465275, 33.432140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524414, 38.523052, 33.136215>,  <35.366703, 38.557720, 32.958660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524414, 38.523052, 33.136215>,  <35.787266, 38.465275, 33.432140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524414, 38.523052, 33.136215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752216, -0.188817, 0.631284,
		-0.048504, 0.971332, 0.232729,
		-0.657129, 0.144442, -0.739809,
		35.327274, 38.566383, 32.914272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270096, 38.684704, 33.734810>,  <35.787266, 38.465275, 33.432140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270096, 38.684704, 33.734810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091599, 38.603355, 33.386211>,  <34.984501, 38.554546, 33.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091599, 38.603355, 33.386211>,  <35.270096, 38.684704, 33.734810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091599, 38.603355, 33.386211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771113, -0.406821, 0.489778,
		-0.454149, 0.890583, 0.024720,
		-0.446244, -0.203370, -0.871497,
		34.957726, 38.542343, 33.124763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561878, 38.940056, 33.766380>,  <35.270096, 38.684704, 33.734810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561878, 38.940056, 33.766380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573299, 38.660065, 33.480942>,  <34.580154, 38.492069, 33.309677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573299, 38.660065, 33.480942>,  <34.561878, 38.940056, 33.766380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573299, 38.660065, 33.480942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801454, -0.442665, 0.402142,
		-0.597373, 0.560432, -0.573638,
		0.028556, -0.699974, -0.713597,
		34.581867, 38.450073, 33.266861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841171, 38.886700, 33.570976>,  <34.561878, 38.940056, 33.766380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841171, 38.886700, 33.570976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025143, 38.547039, 33.467117>,  <34.135525, 38.343243, 33.404804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025143, 38.547039, 33.467117>,  <33.841171, 38.886700, 33.570976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025143, 38.547039, 33.467117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569323, -0.506392, 0.647641,
		-0.681425, -0.150045, -0.716342,
		0.459925, -0.849149, -0.259644,
		34.163120, 38.292294, 33.389225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275967, 38.465214, 33.463318>,  <33.841171, 38.886700, 33.570976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275967, 38.465214, 33.463318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573471, 38.198120, 33.475697>,  <33.751972, 38.037865, 33.483124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573471, 38.198120, 33.475697>,  <33.275967, 38.465214, 33.463318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573471, 38.198120, 33.475697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595537, -0.640900, 0.484339,
		-0.303573, -0.378662, -0.874333,
		0.743761, -0.667730, 0.030947,
		33.796600, 37.997803, 33.484982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028633, 37.785801, 33.155766>,  <33.275967, 38.465214, 33.463318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028633, 37.785801, 33.155766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348946, 37.694321, 33.377197>,  <33.541134, 37.639435, 33.510056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348946, 37.694321, 33.377197>,  <33.028633, 37.785801, 33.155766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348946, 37.694321, 33.377197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551327, -0.642634, 0.532035,
		0.234074, -0.731245, -0.640695,
		0.800780, -0.228697, 0.553578,
		33.589180, 37.625713, 33.543270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980236, 37.082405, 33.146980>,  <33.028633, 37.785801, 33.155766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980236, 37.082405, 33.146980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215160, 37.179653, 33.455772>,  <33.356113, 37.238003, 33.641048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215160, 37.179653, 33.455772>,  <32.980236, 37.082405, 33.146980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215160, 37.179653, 33.455772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519592, -0.618058, 0.589940,
		0.620557, -0.747594, -0.236667,
		0.587309, 0.243121, 0.771984,
		33.391354, 37.252590, 33.687366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334347, 36.396008, 33.299644>,  <32.980236, 37.082405, 33.146980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334347, 36.396008, 33.299644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322605, 36.653297, 33.605690>,  <33.315559, 36.807671, 33.789318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322605, 36.653297, 33.605690>,  <33.334347, 36.396008, 33.299644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322605, 36.653297, 33.605690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388981, -0.712461, 0.584031,
		0.920778, -0.280470, 0.271117,
		-0.029357, 0.643223, 0.765116,
		33.313797, 36.846264, 33.835224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598171, 36.047661, 33.886189>,  <33.334347, 36.396008, 33.299644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598171, 36.047661, 33.886189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397835, 36.351482, 34.052193>,  <33.277634, 36.533775, 34.151794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397835, 36.351482, 34.052193>,  <33.598171, 36.047661, 33.886189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397835, 36.351482, 34.052193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354405, -0.617407, 0.702286,
		0.789655, 0.204653, 0.578413,
		-0.500841, 0.759557, 0.415009,
		33.247581, 36.579350, 34.176697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623825, 35.828285, 34.579277>,  <33.598171, 36.047661, 33.886189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623825, 35.828285, 34.579277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348133, 36.118088, 34.576717>,  <33.182716, 36.291969, 34.575180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348133, 36.118088, 34.576717>,  <33.623825, 35.828285, 34.579277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348133, 36.118088, 34.576717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590682, -0.556760, 0.584049,
		0.419584, 0.406330, 0.811693,
		-0.689234, 0.724510, -0.006404,
		33.141361, 36.335442, 34.574795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630177, 36.073830, 35.224941>,  <33.623825, 35.828285, 34.579277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630177, 36.073830, 35.224941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277893, 36.131264, 35.044392>,  <33.066525, 36.165722, 34.936062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277893, 36.131264, 35.044392>,  <33.630177, 36.073830, 35.224941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277893, 36.131264, 35.044392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426587, -0.654594, 0.624124,
		-0.205853, 0.742221, 0.637757,
		-0.880709, 0.143581, -0.451371,
		33.013680, 36.174339, 34.908981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037968, 36.511757, 35.784016>,  <33.630177, 36.073830, 35.224941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037968, 36.511757, 35.784016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375671, 36.461742, 35.992474>,  <34.578293, 36.431736, 36.117550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375671, 36.461742, 35.992474>,  <34.037968, 36.511757, 35.784016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375671, 36.461742, 35.992474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415545, 0.766811, -0.489207,
		-0.338455, 0.629577, 0.699343,
		0.844257, -0.125034, 0.521149,
		34.628948, 36.424232, 36.148819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296486, 37.138058, 35.847477>,  <34.037968, 36.511757, 35.784016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296486, 37.138058, 35.847477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623066, 36.944004, 35.972733>,  <34.819016, 36.827572, 36.047886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623066, 36.944004, 35.972733>,  <34.296486, 37.138058, 35.847477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623066, 36.944004, 35.972733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559289, 0.799252, -0.219983,
		-0.143554, 0.354739, 0.923879,
		0.816449, -0.485135, 0.313138,
		34.868000, 36.798462, 36.066673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686325, 37.528725, 36.483917>,  <34.296486, 37.138058, 35.847477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686325, 37.528725, 36.483917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940228, 37.288532, 36.289387>,  <35.092567, 37.144417, 36.172668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940228, 37.288532, 36.289387>,  <34.686325, 37.528725, 36.483917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940228, 37.288532, 36.289387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665038, 0.745007, -0.051866,
		0.393463, -0.290505, 0.872235,
		0.634753, -0.600476, -0.486330,
		35.130653, 37.108391, 36.143486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426613, 37.644234, 36.781498>,  <34.686325, 37.528725, 36.483917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426613, 37.644234, 36.781498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471680, 37.469448, 36.424541>,  <35.498718, 37.364578, 36.210365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471680, 37.469448, 36.424541>,  <35.426613, 37.644234, 36.781498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471680, 37.469448, 36.424541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658645, 0.705296, -0.262192,
		0.743971, -0.558231, 0.367268,
		0.112669, -0.436962, -0.892396,
		35.505482, 37.338360, 36.156822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125141, 37.653893, 36.656738>,  <35.426613, 37.644234, 36.781498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125141, 37.653893, 36.656738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979931, 37.599445, 36.288025>,  <35.892807, 37.566776, 36.066795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979931, 37.599445, 36.288025>,  <36.125141, 37.653893, 36.656738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979931, 37.599445, 36.288025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730409, 0.572673, -0.372221,
		0.578549, -0.808404, -0.108468,
		-0.363021, -0.136123, -0.921784,
		35.871025, 37.558609, 36.011490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661903, 37.693306, 36.293583>,  <36.125141, 37.653893, 36.656738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661903, 37.693306, 36.293583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373428, 37.758076, 36.024162>,  <36.200344, 37.796936, 35.862511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373428, 37.758076, 36.024162>,  <36.661903, 37.693306, 36.293583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373428, 37.758076, 36.024162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622374, 0.578419, -0.527335,
		0.304210, -0.799508, -0.517922,
		-0.721184, 0.161921, -0.673554,
		36.157074, 37.806652, 35.822098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025578, 37.524944, 35.617825>,  <36.661903, 37.693306, 36.293583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025578, 37.524944, 35.617825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696041, 37.742035, 35.552422>,  <36.498318, 37.872288, 35.513180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696041, 37.742035, 35.552422>,  <37.025578, 37.524944, 35.617825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696041, 37.742035, 35.552422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479729, 0.513984, -0.711112,
		-0.301897, -0.664283, -0.683802,
		-0.823843, 0.542723, -0.163506,
		36.448887, 37.904850, 35.503368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815529, 37.478901, 34.881775>,  <37.025578, 37.524944, 35.617825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815529, 37.478901, 34.881775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643890, 37.824791, 34.986179>,  <36.540909, 38.032326, 35.048820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643890, 37.824791, 34.986179>,  <36.815529, 37.478901, 34.881775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643890, 37.824791, 34.986179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504586, 0.469150, -0.724770,
		-0.749180, -0.179294, -0.637639,
		-0.429095, 0.864727, 0.261008,
		36.515163, 38.084209, 35.064484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719803, 37.853828, 34.250099>,  <36.815529, 37.478901, 34.881775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719803, 37.853828, 34.250099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718494, 38.124519, 34.544590>,  <36.717709, 38.286934, 34.721283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718494, 38.124519, 34.544590>,  <36.719803, 37.853828, 34.250099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718494, 38.124519, 34.544590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364564, 0.686366, -0.629281,
		-0.931173, 0.266343, -0.248956,
		-0.003271, 0.676730, 0.736224,
		36.717514, 38.327538, 34.765457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537445, 38.579372, 33.936333>,  <36.719803, 37.853828, 34.250099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537445, 38.579372, 33.936333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714493, 38.652195, 34.287548>,  <36.820721, 38.695889, 34.498276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714493, 38.652195, 34.287548>,  <36.537445, 38.579372, 33.936333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714493, 38.652195, 34.287548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630877, 0.632625, -0.449200,
		-0.637248, 0.752755, 0.165153,
		0.442617, 0.182061, 0.878034,
		36.847279, 38.706814, 34.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668228, 39.323750, 34.002003>,  <36.537445, 38.579372, 33.936333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668228, 39.323750, 34.002003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923119, 39.197334, 34.283161>,  <37.076054, 39.121487, 34.451855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923119, 39.197334, 34.283161>,  <36.668228, 39.323750, 34.002003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923119, 39.197334, 34.283161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671707, 0.674886, -0.305513,
		-0.377820, 0.666821, 0.642341,
		0.637229, -0.316036, 0.702894,
		37.114288, 39.102524, 34.494030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916267, 39.854958, 34.276005>,  <36.668228, 39.323750, 34.002003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916267, 39.854958, 34.276005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199177, 39.591976, 34.379940>,  <37.368923, 39.434185, 34.442299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199177, 39.591976, 34.379940>,  <36.916267, 39.854958, 34.276005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199177, 39.591976, 34.379940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704957, 0.628428, -0.328805,
		0.052888, 0.415727, 0.907950,
		0.707275, -0.657456, 0.259834,
		37.411358, 39.394741, 34.457890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359154, 40.149120, 34.704708>,  <36.916267, 39.854958, 34.276005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359154, 40.149120, 34.704708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565479, 39.851368, 34.535084>,  <37.689274, 39.672714, 34.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565479, 39.851368, 34.535084>,  <37.359154, 40.149120, 34.704708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565479, 39.851368, 34.535084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663141, 0.660312, -0.352465,
		0.542380, -0.099402, 0.834232,
		0.515817, -0.744384, -0.424058,
		37.720226, 39.628052, 34.407867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079666, 40.274624, 34.823078>,  <37.359154, 40.149120, 34.704708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079666, 40.274624, 34.823078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119598, 40.028427, 34.510361>,  <38.143559, 39.880707, 34.322731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119598, 40.028427, 34.510361>,  <38.079666, 40.274624, 34.823078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119598, 40.028427, 34.510361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798636, 0.518212, -0.306000,
		0.593476, -0.593821, 0.543289,
		0.099830, -0.615494, -0.781793,
		38.149548, 39.843781, 34.275822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808517, 40.280392, 34.708252>,  <38.079666, 40.274624, 34.823078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808517, 40.280392, 34.708252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632080, 40.156349, 34.371380>,  <38.526218, 40.081924, 34.169258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632080, 40.156349, 34.371380>,  <38.808517, 40.280392, 34.708252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632080, 40.156349, 34.371380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854709, 0.141022, -0.499585,
		0.273690, -0.940185, 0.202846,
		-0.441097, -0.310105, -0.842181,
		38.499752, 40.063316, 34.118725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388176, 40.118301, 34.306206>,  <38.808517, 40.280392, 34.708252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388176, 40.118301, 34.306206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093441, 40.137981, 34.036495>,  <38.916599, 40.149792, 33.874668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093441, 40.137981, 34.036495>,  <39.388176, 40.118301, 34.306206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093441, 40.137981, 34.036495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673025, 0.147953, -0.724670,
		0.064106, -0.987769, -0.142132,
		-0.736836, 0.049203, -0.674278,
		38.872391, 40.152740, 33.834213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551834, 39.603138, 33.678596>,  <39.388176, 40.118301, 34.306206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551834, 39.603138, 33.678596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263443, 39.855957, 33.564957>,  <39.090408, 40.007648, 33.496773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263443, 39.855957, 33.564957>,  <39.551834, 39.603138, 33.678596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263443, 39.855957, 33.564957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504417, 0.197565, -0.840554,
		-0.475140, -0.749324, -0.461254,
		-0.720975, 0.632045, -0.284101,
		39.047150, 40.045570, 33.479725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646023, 39.575718, 33.020271>,  <39.551834, 39.603138, 33.678596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646023, 39.575718, 33.020271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445103, 39.913273, 33.095695>,  <39.324551, 40.115807, 33.140949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445103, 39.913273, 33.095695>,  <39.646023, 39.575718, 33.020271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445103, 39.913273, 33.095695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431723, 0.433696, -0.790901,
		-0.749207, -0.315861, -0.582168,
		-0.502299, 0.843884, 0.188563,
		39.294415, 40.166439, 33.152264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371586, 39.775906, 32.332748>,  <39.646023, 39.575718, 33.020271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371586, 39.775906, 32.332748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315479, 40.123009, 32.523457>,  <39.281815, 40.331272, 32.637882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315479, 40.123009, 32.523457>,  <39.371586, 39.775906, 32.332748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315479, 40.123009, 32.523457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383842, 0.491536, -0.781702,
		-0.912683, 0.073357, -0.402031,
		-0.140270, 0.867762, 0.476774,
		39.273399, 40.383339, 32.666489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944134, 40.198818, 31.909431>,  <39.371586, 39.775906, 32.332748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944134, 40.198818, 31.909431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181839, 40.411331, 32.150959>,  <39.324463, 40.538837, 32.295876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181839, 40.411331, 32.150959>,  <38.944134, 40.198818, 31.909431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181839, 40.411331, 32.150959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419712, 0.435575, -0.796314,
		-0.686074, 0.726648, 0.035860,
		0.594260, 0.531280, 0.603819,
		39.360115, 40.570717, 32.332104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111000, 40.858959, 31.586861>,  <38.944134, 40.198818, 31.909431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111000, 40.858959, 31.586861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411732, 40.838364, 31.849796>,  <39.592171, 40.826008, 32.007557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411732, 40.838364, 31.849796>,  <39.111000, 40.858959, 31.586861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411732, 40.838364, 31.849796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641251, 0.289099, -0.710787,
		-0.153439, 0.955913, 0.250372,
		0.751833, -0.051489, 0.657340,
		39.637283, 40.822918, 32.046997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418537, 41.478161, 31.456774>,  <39.111000, 40.858959, 31.586861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418537, 41.478161, 31.456774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686096, 41.255199, 31.653500>,  <39.846630, 41.121422, 31.771534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686096, 41.255199, 31.653500>,  <39.418537, 41.478161, 31.456774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686096, 41.255199, 31.653500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718008, 0.313158, -0.621608,
		0.192473, 0.768915, 0.609692,
		0.668893, -0.557407, 0.491813,
		39.886765, 41.087978, 31.801043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069462, 41.876614, 31.544107>,  <39.418537, 41.478161, 31.456774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069462, 41.876614, 31.544107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189114, 41.499321, 31.601841>,  <40.260902, 41.272945, 31.636480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189114, 41.499321, 31.601841>,  <40.069462, 41.876614, 31.544107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189114, 41.499321, 31.601841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787526, 0.158620, -0.595519,
		0.538820, 0.291802, 0.790269,
		0.299126, -0.943235, 0.144334,
		40.278851, 41.216351, 31.645142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716522, 41.937473, 31.778412>,  <40.069462, 41.876614, 31.544107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716522, 41.937473, 31.778412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708344, 41.559464, 31.647867>,  <40.703434, 41.332657, 31.569540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708344, 41.559464, 31.647867>,  <40.716522, 41.937473, 31.778412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708344, 41.559464, 31.647867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883630, 0.135631, -0.448109,
		0.467738, -0.297547, 0.832278,
		-0.020451, -0.945024, -0.326362,
		40.702209, 41.275955, 31.549959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403736, 41.701420, 31.657532>,  <40.716522, 41.937473, 31.778412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403736, 41.701420, 31.657532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193970, 41.458397, 31.418913>,  <41.068111, 41.312584, 31.275742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193970, 41.458397, 31.418913>,  <41.403736, 41.701420, 31.657532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193970, 41.458397, 31.418913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752725, -0.003315, -0.658327,
		0.397991, -0.794272, 0.459059,
		-0.524412, -0.607553, -0.596549,
		41.036648, 41.276131, 31.239948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858868, 41.193390, 31.404530>,  <41.403736, 41.701420, 31.657532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858868, 41.193390, 31.404530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545296, 41.206558, 31.156542>,  <41.357151, 41.214458, 31.007750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545296, 41.206558, 31.156542>,  <41.858868, 41.193390, 31.404530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545296, 41.206558, 31.156542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612718, -0.120009, -0.781137,
		-0.100118, -0.992227, 0.073908,
		-0.783934, 0.032921, -0.619970,
		41.310116, 41.216434, 30.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928810, 40.675045, 30.957298>,  <41.858868, 41.193390, 31.404530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928810, 40.675045, 30.957298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667713, 40.906719, 30.761965>,  <41.511055, 41.045723, 30.644764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667713, 40.906719, 30.761965>,  <41.928810, 40.675045, 30.957298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667713, 40.906719, 30.761965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520360, -0.125710, -0.844643,
		-0.550596, -0.805443, -0.219330,
		-0.652741, 0.579187, -0.488336,
		41.471889, 41.080475, 30.615463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861755, 40.309505, 30.386921>,  <41.928810, 40.675045, 30.957298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861755, 40.309505, 30.386921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772137, 40.692898, 30.316366>,  <41.718365, 40.922935, 30.274035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772137, 40.692898, 30.316366>,  <41.861755, 40.309505, 30.386921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772137, 40.692898, 30.316366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506151, -0.040225, -0.861506,
		-0.832835, -0.282296, -0.476125,
		-0.224048, 0.958484, -0.176385,
		41.704922, 40.980442, 30.263451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626396, 40.262020, 29.690428>,  <41.861755, 40.309505, 30.386921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626396, 40.262020, 29.690428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655289, 40.658310, 29.736458>,  <41.672623, 40.896084, 29.764076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655289, 40.658310, 29.736458>,  <41.626396, 40.262020, 29.690428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655289, 40.658310, 29.736458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383956, 0.078864, -0.919977,
		-0.920522, 0.110635, -0.374699,
		0.072232, 0.990727, 0.115075,
		41.676960, 40.955528, 29.770981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312057, 40.575729, 29.096201>,  <41.626396, 40.262020, 29.690428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312057, 40.575729, 29.096201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567215, 40.842464, 29.250301>,  <41.720310, 41.002506, 29.342762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567215, 40.842464, 29.250301>,  <41.312057, 40.575729, 29.096201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567215, 40.842464, 29.250301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379082, 0.163563, -0.910793,
		-0.670363, 0.727033, -0.148449,
		0.637895, 0.666836, 0.385252,
		41.758583, 41.042515, 29.365877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201561, 41.257946, 28.748549>,  <41.312057, 40.575729, 29.096201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201561, 41.257946, 28.748549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575485, 41.218765, 28.885098>,  <41.799839, 41.195259, 28.967028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575485, 41.218765, 28.885098>,  <41.201561, 41.257946, 28.748549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575485, 41.218765, 28.885098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350460, 0.098749, -0.931357,
		0.057514, 0.990280, 0.126639,
		0.934810, -0.097948, 0.341374,
		41.855927, 41.189381, 28.987511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538349, 41.658855, 28.288748>,  <41.201561, 41.257946, 28.748549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538349, 41.658855, 28.288748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839008, 41.467518, 28.470392>,  <42.019402, 41.352715, 28.579380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839008, 41.467518, 28.470392>,  <41.538349, 41.658855, 28.288748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839008, 41.467518, 28.470392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552619, 0.080873, -0.829501,
		0.360062, 0.874441, 0.325129,
		0.751643, -0.478344, 0.454113,
		42.064503, 41.324013, 28.606627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170101, 42.015053, 28.167419>,  <41.538349, 41.658855, 28.288748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170101, 42.015053, 28.167419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298550, 41.646702, 28.255840>,  <42.375618, 41.425690, 28.308893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298550, 41.646702, 28.255840>,  <42.170101, 42.015053, 28.167419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298550, 41.646702, 28.255840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528133, -0.019617, -0.848935,
		0.786102, 0.389355, 0.480047,
		0.321120, -0.920879, 0.221052,
		42.394886, 41.370438, 28.322157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895508, 42.140553, 28.099552>,  <42.170101, 42.015053, 28.167419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895508, 42.140553, 28.099552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858089, 41.743359, 28.070597>,  <42.835640, 41.505043, 28.053223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858089, 41.743359, 28.070597>,  <42.895508, 42.140553, 28.099552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858089, 41.743359, 28.070597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618180, -0.000932, -0.786036,
		0.780451, -0.118278, 0.613927,
		-0.093543, -0.992980, -0.072389,
		42.830025, 41.445465, 28.048880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566235, 41.934574, 27.891153>,  <42.895508, 42.140553, 28.099552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566235, 41.934574, 27.891153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311546, 41.645420, 27.783802>,  <43.158733, 41.471928, 27.719391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311546, 41.645420, 27.783802>,  <43.566235, 41.934574, 27.891153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311546, 41.645420, 27.783802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422456, -0.035864, -0.905674,
		0.645072, -0.690038, 0.328222,
		-0.636721, -0.722884, -0.268376,
		43.120529, 41.428555, 27.703289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946259, 41.662857, 27.320974>,  <43.566235, 41.934574, 27.891153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946259, 41.662857, 27.320974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594723, 41.479088, 27.269484>,  <43.383801, 41.368828, 27.238588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594723, 41.479088, 27.269484>,  <43.946259, 41.662857, 27.320974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594723, 41.479088, 27.269484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188973, -0.087437, -0.978082,
		0.438097, -0.883904, 0.163662,
		-0.878841, -0.459422, -0.128729,
		43.331070, 41.341263, 27.230865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078503, 41.060436, 26.873686>,  <43.946259, 41.662857, 27.320974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078503, 41.060436, 26.873686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688423, 41.145042, 26.847614>,  <43.454376, 41.195805, 26.831972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688423, 41.145042, 26.847614>,  <44.078503, 41.060436, 26.873686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688423, 41.145042, 26.847614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040083, -0.120839, -0.991862,
		-0.217670, -0.969876, 0.109364,
		-0.975199, 0.211515, -0.065178,
		43.395863, 41.208496, 26.828060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772736, 40.501987, 26.670601>,  <44.078503, 41.060436, 26.873686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772736, 40.501987, 26.670601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540165, 40.803780, 26.548817>,  <43.400623, 40.984856, 26.475746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540165, 40.803780, 26.548817>,  <43.772736, 40.501987, 26.670601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540165, 40.803780, 26.548817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329479, -0.123807, -0.936010,
		-0.743898, -0.644537, -0.176601,
		-0.581429, 0.754483, -0.304461,
		43.365738, 41.030125, 26.457478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444832, 40.154732, 26.449133>,  <43.772736, 40.501987, 26.670601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444832, 40.154732, 26.449133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815990, 40.037102, 26.540810>,  <45.038685, 39.966522, 26.595816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815990, 40.037102, 26.540810>,  <44.444832, 40.154732, 26.449133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815990, 40.037102, 26.540810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365776, -0.598939, 0.712376,
		-0.072219, -0.744844, -0.663319,
		0.927897, -0.294073, 0.229191,
		45.094360, 39.948879, 26.609568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340469, 39.500484, 26.659479>,  <44.444832, 40.154732, 26.449133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340469, 39.500484, 26.659479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725578, 39.526222, 26.764502>,  <44.956642, 39.541664, 26.827515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725578, 39.526222, 26.764502>,  <44.340469, 39.500484, 26.659479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725578, 39.526222, 26.764502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113802, -0.784530, 0.609559,
		0.245202, -0.616744, -0.747999,
		0.962769, 0.064341, 0.262555,
		45.014408, 39.545525, 26.843267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666096, 38.822220, 26.505930>,  <44.340469, 39.500484, 26.659479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666096, 38.822220, 26.505930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896725, 39.011093, 26.772644>,  <45.035103, 39.124416, 26.932673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896725, 39.011093, 26.772644>,  <44.666096, 38.822220, 26.505930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896725, 39.011093, 26.772644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248934, -0.675770, 0.693807,
		0.778199, -0.566016, -0.272088,
		0.576574, 0.472188, 0.666784,
		45.069698, 39.152748, 26.972679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054276, 38.270668, 26.818354>,  <44.666096, 38.822220, 26.505930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054276, 38.270668, 26.818354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114349, 38.571171, 27.075434>,  <45.150394, 38.751472, 27.229681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114349, 38.571171, 27.075434>,  <45.054276, 38.270668, 26.818354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114349, 38.571171, 27.075434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288332, -0.588531, 0.755312,
		0.945679, -0.298747, 0.128221,
		0.150185, 0.751253, 0.642700,
		45.159405, 38.796547, 27.268244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293034, 38.011616, 27.471514>,  <45.054276, 38.270668, 26.818354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293034, 38.011616, 27.471514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157013, 38.370304, 27.584829>,  <45.075401, 38.585518, 27.652819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157013, 38.370304, 27.584829>,  <45.293034, 38.011616, 27.471514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157013, 38.370304, 27.584829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325215, -0.394787, 0.859289,
		0.882385, 0.200070, 0.425875,
		-0.340048, 0.896725, 0.283288,
		45.055000, 38.639320, 27.669815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537178, 38.131622, 28.234062>,  <45.293034, 38.011616, 27.471514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537178, 38.131622, 28.234062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212494, 38.358482, 28.178268>,  <45.017681, 38.494598, 28.144793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212494, 38.358482, 28.178268>,  <45.537178, 38.131622, 28.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212494, 38.358482, 28.178268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382475, -0.335692, 0.860827,
		0.441397, 0.752096, 0.489408,
		-0.811715, 0.567153, -0.139484,
		44.968979, 38.528629, 28.136423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342773, 38.359692, 28.917850>,  <45.537178, 38.131622, 28.234062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342773, 38.359692, 28.917850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004456, 38.427235, 28.715418>,  <44.801464, 38.467762, 28.593958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004456, 38.427235, 28.715418>,  <45.342773, 38.359692, 28.917850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004456, 38.427235, 28.715418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515636, -0.015267, 0.856672,
		0.136930, 0.985522, 0.099983,
		-0.845795, 0.168858, -0.506080,
		44.750717, 38.477894, 28.563593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032513, 38.855114, 29.246552>,  <45.342773, 38.359692, 28.917850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032513, 38.855114, 29.246552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756245, 38.653183, 29.039429>,  <44.590485, 38.532024, 28.915155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756245, 38.653183, 29.039429>,  <45.032513, 38.855114, 29.246552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756245, 38.653183, 29.039429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565804, -0.068699, 0.821673,
		-0.450373, 0.860484, -0.238183,
		-0.690673, -0.504825, -0.517806,
		44.549042, 38.501736, 28.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368229, 39.128746, 29.571091>,  <45.032513, 38.855114, 29.246552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368229, 39.128746, 29.571091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188290, 38.843819, 29.355593>,  <44.080326, 38.672863, 29.226294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188290, 38.843819, 29.355593>,  <44.368229, 39.128746, 29.571091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188290, 38.843819, 29.355593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657191, -0.144459, 0.739751,
		-0.604761, 0.686834, -0.403142,
		-0.449848, -0.712314, -0.538744,
		44.053333, 38.630123, 29.193970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625282, 39.296391, 29.528368>,  <44.368229, 39.128746, 29.571091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625282, 39.296391, 29.528368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663612, 38.901451, 29.477823>,  <43.686611, 38.664490, 29.447496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663612, 38.901451, 29.477823>,  <43.625282, 39.296391, 29.528368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663612, 38.901451, 29.477823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682339, -0.157581, 0.713850,
		-0.724728, 0.017816, -0.688804,
		0.095824, -0.987345, -0.126360,
		43.692360, 38.605247, 29.439915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042610, 39.093704, 29.690107>,  <43.625282, 39.296391, 29.528368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042610, 39.093704, 29.690107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256615, 38.758892, 29.735958>,  <43.385017, 38.558002, 29.763468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256615, 38.758892, 29.735958>,  <43.042610, 39.093704, 29.690107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256615, 38.758892, 29.735958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608811, -0.287901, 0.739230,
		-0.585760, -0.465280, -0.663626,
		0.535008, -0.837035, 0.114627,
		43.417118, 38.507782, 29.770346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563015, 38.671135, 29.862869>,  <43.042610, 39.093704, 29.690107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563015, 38.671135, 29.862869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899025, 38.476368, 29.958597>,  <43.100632, 38.359509, 30.016035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899025, 38.476368, 29.958597>,  <42.563015, 38.671135, 29.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899025, 38.476368, 29.958597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479351, -0.459441, 0.747755,
		-0.254142, -0.742848, -0.619345,
		0.840021, -0.486920, 0.239321,
		43.151031, 38.330292, 30.030394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458172, 37.852707, 29.832787>,  <42.563015, 38.671135, 29.862869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458172, 37.852707, 29.832787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728035, 37.980396, 30.099001>,  <42.889954, 38.057011, 30.258730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728035, 37.980396, 30.099001>,  <42.458172, 37.852707, 29.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728035, 37.980396, 30.099001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609866, -0.266857, 0.746224,
		0.415814, -0.909332, 0.014646,
		0.674656, 0.319223, 0.665534,
		42.930431, 38.076164, 30.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521133, 37.294849, 30.265303>,  <42.458172, 37.852707, 29.832787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521133, 37.294849, 30.265303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652695, 37.613026, 30.468910>,  <42.731632, 37.803932, 30.591074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652695, 37.613026, 30.468910>,  <42.521133, 37.294849, 30.265303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652695, 37.613026, 30.468910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765912, -0.090634, 0.636526,
		0.552453, -0.599217, 0.579427,
		0.328901, 0.795440, 0.509018,
		42.751366, 37.851658, 30.621616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390423, 37.133759, 30.942377>,  <42.521133, 37.294849, 30.265303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390423, 37.133759, 30.942377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452965, 37.524536, 31.000536>,  <42.490490, 37.759003, 31.035431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452965, 37.524536, 31.000536>,  <42.390423, 37.133759, 30.942377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452965, 37.524536, 31.000536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627280, -0.015488, 0.778640,
		0.762937, -0.212952, 0.610393,
		0.156359, 0.976940, 0.145397,
		42.499874, 37.817619, 31.044155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668465, 37.187218, 31.590614>,  <42.390423, 37.133759, 30.942377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668465, 37.187218, 31.590614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520954, 37.542137, 31.479828>,  <42.432449, 37.755089, 31.413357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520954, 37.542137, 31.479828>,  <42.668465, 37.187218, 31.590614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520954, 37.542137, 31.479828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638957, -0.025579, 0.768817,
		0.675084, 0.460489, 0.576378,
		-0.368775, 0.887297, -0.276964,
		42.410320, 37.808327, 31.396738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628151, 37.555298, 32.157612>,  <42.668465, 37.187218, 31.590614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628151, 37.555298, 32.157612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381180, 37.754871, 31.914352>,  <42.232998, 37.874615, 31.768396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381180, 37.754871, 31.914352>,  <42.628151, 37.555298, 32.157612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381180, 37.754871, 31.914352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689933, 0.027876, 0.723337,
		0.377851, 0.866191, 0.327020,
		-0.617432, 0.498935, -0.608147,
		42.195950, 37.904552, 31.731909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348286, 37.998035, 32.616280>,  <42.628151, 37.555298, 32.157612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348286, 37.998035, 32.616280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096680, 37.997406, 32.305325>,  <41.945717, 37.997028, 32.118752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096680, 37.997406, 32.305325>,  <42.348286, 37.998035, 32.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096680, 37.997406, 32.305325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771439, -0.122260, 0.624448,
		-0.096028, 0.992497, 0.075687,
		-0.629016, -0.001576, -0.777391,
		41.907974, 37.996933, 32.072105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900082, 38.580677, 32.668522>,  <42.348286, 37.998035, 32.616280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900082, 38.580677, 32.668522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701450, 38.332535, 32.425682>,  <41.582272, 38.183647, 32.279980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701450, 38.332535, 32.425682>,  <41.900082, 38.580677, 32.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701450, 38.332535, 32.425682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776174, 0.004278, 0.630504,
		-0.388541, 0.784306, -0.483631,
		-0.496577, -0.620359, -0.607096,
		41.552479, 38.146427, 32.243553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173885, 38.904026, 32.626575>,  <41.900082, 38.580677, 32.668522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173885, 38.904026, 32.626575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152046, 38.513485, 32.542908>,  <41.138943, 38.279160, 32.492706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152046, 38.513485, 32.542908>,  <41.173885, 38.904026, 32.626575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152046, 38.513485, 32.542908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687852, -0.115070, 0.716671,
		-0.723794, 0.183008, -0.665304,
		-0.054600, -0.976354, -0.209170,
		41.135666, 38.220577, 32.480156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438683, 38.772518, 32.485237>,  <41.173885, 38.904026, 32.626575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438683, 38.772518, 32.485237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623230, 38.434181, 32.592335>,  <40.733959, 38.231178, 32.656593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623230, 38.434181, 32.592335>,  <40.438683, 38.772518, 32.485237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623230, 38.434181, 32.592335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711200, -0.172179, 0.681578,
		-0.530407, -0.504882, -0.681001,
		0.461370, -0.845842, 0.267747,
		40.761642, 38.180428, 32.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009361, 38.299301, 32.379711>,  <40.438683, 38.772518, 32.485237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009361, 38.299301, 32.379711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248024, 38.092857, 32.625519>,  <40.391220, 37.968990, 32.773003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248024, 38.092857, 32.625519>,  <40.009361, 38.299301, 32.379711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248024, 38.092857, 32.625519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768253, -0.146050, 0.623263,
		-0.231920, -0.843981, -0.483642,
		0.596658, -0.516107, 0.614519,
		40.427021, 37.938026, 32.809875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578114, 37.681469, 32.541183>,  <40.009361, 38.299301, 32.379711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578114, 37.681469, 32.541183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852936, 37.739006, 32.826073>,  <40.017830, 37.773529, 32.997005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852936, 37.739006, 32.826073>,  <39.578114, 37.681469, 32.541183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852936, 37.739006, 32.826073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687364, -0.189106, 0.701263,
		0.235560, -0.971364, -0.031051,
		0.687053, 0.143846, 0.712226,
		40.059052, 37.782158, 33.039742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323112, 37.144409, 33.088955>,  <39.578114, 37.681469, 32.541183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323112, 37.144409, 33.088955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576096, 37.403419, 33.258991>,  <39.727886, 37.558826, 33.361012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576096, 37.403419, 33.258991>,  <39.323112, 37.144409, 33.088955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576096, 37.403419, 33.258991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405747, -0.190526, 0.893907,
		0.659821, -0.737839, 0.142232,
		0.632460, 0.647529, 0.425089,
		39.765835, 37.597679, 33.386517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767014, 36.847385, 33.551079>,  <39.323112, 37.144409, 33.088955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767014, 36.847385, 33.551079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750980, 37.226826, 33.676655>,  <39.741360, 37.454491, 33.751999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750980, 37.226826, 33.676655>,  <39.767014, 36.847385, 33.551079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750980, 37.226826, 33.676655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264903, -0.313035, 0.912050,
		0.963441, -0.046607, 0.263834,
		-0.040081, 0.948597, 0.313937,
		39.738956, 37.511406, 33.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127884, 36.876110, 34.166702>,  <39.767014, 36.847385, 33.551079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127884, 36.876110, 34.166702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879433, 37.189331, 34.179573>,  <39.730362, 37.377262, 34.187294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879433, 37.189331, 34.179573>,  <40.127884, 36.876110, 34.166702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879433, 37.189331, 34.179573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316375, -0.288092, 0.903830,
		0.717013, 0.551214, 0.426679,
		-0.621127, 0.783049, 0.032176,
		39.693096, 37.424244, 34.189224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254433, 37.183910, 34.748318>,  <40.127884, 36.876110, 34.166702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254433, 37.183910, 34.748318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901447, 37.347027, 34.654533>,  <39.689655, 37.444897, 34.598263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901447, 37.347027, 34.654533>,  <40.254433, 37.183910, 34.748318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901447, 37.347027, 34.654533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270823, -0.032927, 0.962066,
		0.384598, 0.912483, 0.139495,
		-0.882462, 0.407787, -0.234458,
		39.636707, 37.469364, 34.584198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165005, 37.574711, 35.260235>,  <40.254433, 37.183910, 34.748318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165005, 37.574711, 35.260235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813782, 37.500946, 35.083591>,  <39.603050, 37.456688, 34.977608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813782, 37.500946, 35.083591>,  <40.165005, 37.574711, 35.260235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813782, 37.500946, 35.083591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387825, -0.266436, 0.882385,
		-0.280379, 0.946047, 0.162427,
		-0.878054, -0.184409, -0.441604,
		39.550365, 37.445621, 34.951111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733047, 37.834206, 35.719376>,  <40.165005, 37.574711, 35.260235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733047, 37.834206, 35.719376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528351, 37.571590, 35.497719>,  <39.405533, 37.414021, 35.364727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528351, 37.571590, 35.497719>,  <39.733047, 37.834206, 35.719376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528351, 37.571590, 35.497719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450495, -0.344153, 0.823780,
		-0.731555, 0.671202, -0.119650,
		-0.511745, -0.656542, -0.554139,
		39.374828, 37.374626, 35.331478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162361, 37.794010, 36.073204>,  <39.733047, 37.834206, 35.719376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162361, 37.794010, 36.073204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146641, 37.478813, 35.827435>,  <39.137207, 37.289696, 35.679974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146641, 37.478813, 35.827435>,  <39.162361, 37.794010, 36.073204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146641, 37.478813, 35.827435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442281, -0.537667, 0.717845,
		-0.896015, 0.299962, -0.327384,
		-0.039303, -0.787996, -0.614425,
		39.134850, 37.242413, 35.643108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530487, 37.425903, 36.280869>,  <39.162361, 37.794010, 36.073204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530487, 37.425903, 36.280869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728985, 37.133018, 36.094276>,  <38.848083, 36.957287, 35.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728985, 37.133018, 36.094276>,  <38.530487, 37.425903, 36.280869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728985, 37.133018, 36.094276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298498, -0.648447, 0.700296,
		-0.815254, -0.208276, -0.540354,
		0.496246, -0.732214, -0.466479,
		38.877857, 36.913353, 35.954334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009792, 36.937565, 36.172291>,  <38.530487, 37.425903, 36.280869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009792, 36.937565, 36.172291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363438, 36.754150, 36.136299>,  <38.575623, 36.644100, 36.114704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363438, 36.754150, 36.136299>,  <38.009792, 36.937565, 36.172291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363438, 36.754150, 36.136299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240324, -0.611336, 0.753998,
		-0.400743, -0.644992, -0.650684,
		0.884109, -0.458534, -0.089982,
		38.628670, 36.616589, 36.109306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870731, 36.228714, 36.207474>,  <38.009792, 36.937565, 36.172291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870731, 36.228714, 36.207474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261978, 36.239639, 36.289970>,  <38.496727, 36.246193, 36.339466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261978, 36.239639, 36.289970>,  <37.870731, 36.228714, 36.207474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261978, 36.239639, 36.289970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130288, -0.692452, 0.709602,
		0.162190, -0.720947, -0.673744,
		0.978121, 0.027310, 0.206239,
		38.555416, 36.247833, 36.351841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061306, 35.610687, 36.123451>,  <37.870731, 36.228714, 36.207474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061306, 35.610687, 36.123451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351608, 35.755707, 36.357319>,  <38.525791, 35.842716, 36.497639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351608, 35.755707, 36.357319>,  <38.061306, 35.610687, 36.123451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351608, 35.755707, 36.357319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022060, -0.861697, 0.506944,
		0.687597, -0.355020, -0.633380,
		0.725757, 0.362546, 0.584668,
		38.569336, 35.864471, 36.532719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634533, 35.157269, 36.168297>,  <38.061306, 35.610687, 36.123451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634533, 35.157269, 36.168297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651550, 35.382751, 36.498249>,  <38.661762, 35.518044, 36.696220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651550, 35.382751, 36.498249>,  <38.634533, 35.157269, 36.168297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651550, 35.382751, 36.498249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058410, -0.825615, 0.561202,
		0.997386, 0.024304, -0.068053,
		0.042547, 0.563709, 0.824877,
		38.664314, 35.551865, 36.745712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007576, 34.787220, 36.589905>,  <38.634533, 35.157269, 36.168297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007576, 34.787220, 36.589905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855980, 35.029869, 36.869438>,  <38.765022, 35.175461, 37.037159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855980, 35.029869, 36.869438>,  <39.007576, 34.787220, 36.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855980, 35.029869, 36.869438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137170, -0.710005, 0.690707,
		0.915179, 0.357630, 0.185873,
		-0.378988, 0.606625, 0.698838,
		38.742283, 35.211857, 37.079090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505524, 34.779045, 37.149330>,  <39.007576, 34.787220, 36.589905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505524, 34.779045, 37.149330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158932, 34.915638, 37.294987>,  <38.950977, 34.997593, 37.382381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158932, 34.915638, 37.294987>,  <39.505524, 34.779045, 37.149330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158932, 34.915638, 37.294987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044818, -0.673275, 0.738032,
		0.497193, 0.655812, 0.568076,
		-0.866482, 0.341484, 0.364139,
		38.898987, 35.018082, 37.404228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600227, 34.812756, 37.900810>,  <39.505524, 34.779045, 37.149330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600227, 34.812756, 37.900810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205917, 34.817459, 37.833740>,  <38.969334, 34.820282, 37.793499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205917, 34.817459, 37.833740>,  <39.600227, 34.812756, 37.900810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205917, 34.817459, 37.833740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144722, -0.566724, 0.811098,
		-0.085485, 0.823823, 0.560363,
		-0.985773, 0.011760, -0.167671,
		38.910187, 34.820988, 37.783440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296844, 34.940125, 38.534683>,  <39.600227, 34.812756, 37.900810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296844, 34.940125, 38.534683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028381, 34.740452, 38.315460>,  <38.867302, 34.620647, 38.183926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028381, 34.740452, 38.315460>,  <39.296844, 34.940125, 38.534683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028381, 34.740452, 38.315460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176571, -0.610387, 0.772173,
		-0.719980, 0.615021, 0.321525,
		-0.671157, -0.499177, -0.548061,
		38.827034, 34.590698, 38.151043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752666, 34.965340, 39.060497>,  <39.296844, 34.940125, 38.534683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752666, 34.965340, 39.060497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701275, 34.709072, 38.757702>,  <38.670441, 34.555313, 38.576023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701275, 34.709072, 38.757702>,  <38.752666, 34.965340, 39.060497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701275, 34.709072, 38.757702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127892, -0.746240, 0.653276,
		-0.983431, 0.180744, 0.013939,
		-0.128478, -0.640669, -0.756992,
		38.662731, 34.516872, 38.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132156, 34.617699, 39.206814>,  <38.752666, 34.965340, 39.060497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132156, 34.617699, 39.206814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348980, 34.383190, 38.965996>,  <38.479073, 34.242485, 38.821507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348980, 34.383190, 38.965996>,  <38.132156, 34.617699, 39.206814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348980, 34.383190, 38.965996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106249, -0.758496, 0.642958,
		-0.833596, -0.284554, -0.473440,
		0.542059, -0.586270, -0.602045,
		38.511597, 34.207310, 38.785381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787090, 33.946529, 39.221161>,  <38.132156, 34.617699, 39.206814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787090, 33.946529, 39.221161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155968, 33.865196, 39.089577>,  <38.377293, 33.816395, 39.010628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155968, 33.865196, 39.089577>,  <37.787090, 33.946529, 39.221161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155968, 33.865196, 39.089577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037804, -0.799152, 0.599939,
		-0.384876, -0.565696, -0.729286,
		0.922194, -0.203333, -0.328960,
		38.432625, 33.804195, 38.990887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754704, 33.277718, 38.982719>,  <37.787090, 33.946529, 39.221161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754704, 33.277718, 38.982719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142666, 33.360241, 39.034435>,  <38.375443, 33.409756, 39.065464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142666, 33.360241, 39.034435>,  <37.754704, 33.277718, 38.982719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142666, 33.360241, 39.034435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094398, -0.808133, 0.581387,
		0.224426, -0.551687, -0.803290,
		0.969908, 0.206306, 0.129288,
		38.433640, 33.422134, 39.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109779, 32.680176, 38.685711>,  <37.754704, 33.277718, 38.982719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109779, 32.680176, 38.685711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331539, 32.879868, 38.952068>,  <38.464596, 32.999683, 39.111881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331539, 32.879868, 38.952068>,  <38.109779, 32.680176, 38.685711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331539, 32.879868, 38.952068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187994, -0.854549, 0.484153,
		0.810739, -0.143232, -0.567615,
		0.554401, 0.499231, 0.665889,
		38.497860, 33.029636, 39.151836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720665, 32.273533, 38.781315>,  <38.109779, 32.680176, 38.685711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720665, 32.273533, 38.781315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738468, 32.487476, 39.118820>,  <38.749149, 32.615845, 39.321323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738468, 32.487476, 39.118820>,  <38.720665, 32.273533, 38.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738468, 32.487476, 39.118820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430609, -0.772388, 0.466898,
		0.901440, 0.342552, -0.264695,
		0.044510, 0.534860, 0.843767,
		38.751820, 32.647934, 39.371952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398300, 32.256584, 39.067505>,  <38.720665, 32.273533, 38.781315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398300, 32.256584, 39.067505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169361, 32.331432, 39.386856>,  <39.031998, 32.376343, 39.578468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169361, 32.331432, 39.386856>,  <39.398300, 32.256584, 39.067505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169361, 32.331432, 39.386856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511714, -0.679281, 0.526048,
		0.640757, 0.709622, 0.293032,
		-0.572346, 0.187121, 0.798377,
		38.997658, 32.387569, 39.626369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884892, 32.229538, 39.617111>,  <39.398300, 32.256584, 39.067505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884892, 32.229538, 39.617111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525433, 32.223831, 39.792484>,  <39.309757, 32.220406, 39.897709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525433, 32.223831, 39.792484>,  <39.884892, 32.229538, 39.617111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525433, 32.223831, 39.792484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284861, -0.779048, 0.558515,
		0.333591, 0.626802, 0.704156,
		-0.898650, -0.014271, 0.438435,
		39.255836, 32.219551, 39.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894024, 32.363819, 40.413319>,  <39.884892, 32.229538, 39.617111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894024, 32.363819, 40.413319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577644, 32.141075, 40.311878>,  <39.387817, 32.007427, 40.251015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577644, 32.141075, 40.311878>,  <39.894024, 32.363819, 40.413319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577644, 32.141075, 40.311878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281074, -0.698793, 0.657788,
		-0.543511, 0.448993, 0.709226,
		-0.790945, -0.556860, -0.253602,
		39.340363, 31.974016, 40.235798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778004, 32.091560, 41.061798>,  <39.894024, 32.363819, 40.413319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778004, 32.091560, 41.061798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601742, 31.873846, 40.776260>,  <39.495983, 31.743217, 40.604939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601742, 31.873846, 40.776260>,  <39.778004, 32.091560, 41.061798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601742, 31.873846, 40.776260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028556, -0.786315, 0.617166,
		-0.897223, 0.292342, 0.330950,
		-0.440654, -0.544284, -0.713848,
		39.469547, 31.710560, 40.562107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106937, 31.921181, 41.302853>,  <39.778004, 32.091560, 41.061798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106937, 31.921181, 41.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214565, 31.659779, 41.019859>,  <39.279140, 31.502937, 40.850063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214565, 31.659779, 41.019859>,  <39.106937, 31.921181, 41.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214565, 31.659779, 41.019859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140311, -0.753335, 0.642495,
		-0.952846, -0.073606, -0.294391,
		0.269066, -0.653505, -0.707484,
		39.295284, 31.463726, 40.807613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500202, 31.443945, 41.205471>,  <39.106937, 31.921181, 41.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500202, 31.443945, 41.205471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850296, 31.275621, 41.110073>,  <39.060352, 31.174627, 41.052834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850296, 31.275621, 41.110073>,  <38.500202, 31.443945, 41.205471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850296, 31.275621, 41.110073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208784, -0.773449, 0.598486,
		-0.436312, -0.474023, -0.764809,
		0.875237, -0.420807, -0.238497,
		39.112865, 31.149380, 41.038525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346809, 30.793417, 40.965641>,  <38.500202, 31.443945, 41.205471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346809, 30.793417, 40.965641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731651, 30.732889, 41.056385>,  <38.962555, 30.696571, 41.110832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731651, 30.732889, 41.056385>,  <38.346809, 30.793417, 40.965641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731651, 30.732889, 41.056385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248715, -0.828052, 0.502465,
		0.111814, -0.539845, -0.834305,
		0.962101, -0.151321, 0.226856,
		39.020283, 30.687492, 41.124443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577942, 29.993961, 40.970612>,  <38.346809, 30.793417, 40.965641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577942, 29.993961, 40.970612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860744, 30.194338, 41.170292>,  <39.030426, 30.314564, 41.290100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860744, 30.194338, 41.170292>,  <38.577942, 29.993961, 40.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860744, 30.194338, 41.170292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118341, -0.779725, 0.614837,
		0.697235, -0.375617, -0.610552,
		0.707006, 0.500939, 0.499201,
		39.072845, 30.344620, 41.320053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696522, 29.606503, 41.562824>,  <38.577942, 29.993961, 40.970612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696522, 29.606503, 41.562824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970528, 29.888418, 41.636612>,  <39.134930, 30.057568, 41.680885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970528, 29.888418, 41.636612>,  <38.696522, 29.606503, 41.562824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970528, 29.888418, 41.636612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423733, -0.591411, 0.686064,
		0.592627, -0.391797, -0.703767,
		0.685013, 0.704790, 0.184469,
		39.176033, 30.099855, 41.691952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325535, 29.233402, 41.641354>,  <38.696522, 29.606503, 41.562824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325535, 29.233402, 41.641354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322079, 29.588692, 41.825085>,  <39.320004, 29.801865, 41.935326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322079, 29.588692, 41.825085>,  <39.325535, 29.233402, 41.641354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322079, 29.588692, 41.825085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210803, -0.447407, 0.869131,
		0.977490, 0.104342, -0.183373,
		-0.008644, 0.888223, 0.459332,
		39.319485, 29.855158, 41.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821957, 29.243011, 42.120033>,  <39.325535, 29.233402, 41.641354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821957, 29.243011, 42.120033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623550, 29.562181, 42.257019>,  <39.504505, 29.753683, 42.339211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623550, 29.562181, 42.257019>,  <39.821957, 29.243011, 42.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623550, 29.562181, 42.257019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367953, -0.164091, 0.915251,
		0.786497, 0.579992, -0.212206,
		-0.496017, 0.797924, 0.342467,
		39.474747, 29.801559, 42.359760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139420, 29.227089, 42.664925>,  <39.821957, 29.243011, 42.120033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139420, 29.227089, 42.664925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851330, 29.494787, 42.738010>,  <39.678474, 29.655407, 42.781860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851330, 29.494787, 42.738010>,  <40.139420, 29.227089, 42.664925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851330, 29.494787, 42.738010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149262, -0.107717, 0.982913,
		0.677493, 0.735191, -0.022313,
		-0.720225, 0.669247, 0.182714,
		39.635262, 29.695560, 42.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430336, 29.667799, 43.093781>,  <40.139420, 29.227089, 42.664925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430336, 29.667799, 43.093781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033848, 29.664291, 43.146549>,  <39.795956, 29.662188, 43.178211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033848, 29.664291, 43.146549>,  <40.430336, 29.667799, 43.093781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033848, 29.664291, 43.146549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130357, -0.231517, 0.964057,
		0.022090, 0.972791, 0.230628,
		-0.991221, -0.008768, 0.131925,
		39.736481, 29.661661, 43.186127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331272, 29.973650, 43.711201>,  <40.430336, 29.667799, 43.093781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331272, 29.973650, 43.711201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993088, 29.769924, 43.646954>,  <39.790176, 29.647690, 43.608406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993088, 29.769924, 43.646954>,  <40.331272, 29.973650, 43.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993088, 29.769924, 43.646954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032307, -0.348988, 0.936570,
		-0.533062, 0.786643, 0.311510,
		-0.845459, -0.509313, -0.160618,
		39.739449, 29.617130, 43.598766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711861, 30.092714, 44.200233>,  <40.331272, 29.973650, 43.711201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711861, 30.092714, 44.200233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711651, 29.717152, 44.062565>,  <39.711525, 29.491814, 43.979961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711651, 29.717152, 44.062565>,  <39.711861, 30.092714, 44.200233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711651, 29.717152, 44.062565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174208, -0.338825, 0.924581,
		-0.984709, 0.060447, -0.163386,
		-0.000529, -0.938906, -0.344175,
		39.711491, 29.435480, 43.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991405, 29.742916, 44.251648>,  <39.711861, 30.092714, 44.200233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991405, 29.742916, 44.251648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328884, 29.532082, 44.292358>,  <39.531372, 29.405581, 44.316784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328884, 29.532082, 44.292358>,  <38.991405, 29.742916, 44.251648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328884, 29.532082, 44.292358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182798, -0.103833, 0.977652,
		-0.504739, -0.843445, -0.183954,
		0.843696, -0.527086, 0.101772,
		39.581993, 29.373957, 44.322891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861012, 29.040331, 44.529251>,  <38.991405, 29.742916, 44.251648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861012, 29.040331, 44.529251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234909, 29.109745, 44.653275>,  <39.459248, 29.151394, 44.727688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234909, 29.109745, 44.653275>,  <38.861012, 29.040331, 44.529251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234909, 29.109745, 44.653275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274620, -0.200873, 0.940337,
		0.225462, -0.964125, -0.140110,
		0.934747, 0.173533, 0.310057,
		39.515331, 29.161804, 44.746292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072739, 28.496441, 44.834507>,  <38.861012, 29.040331, 44.529251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072739, 28.496441, 44.834507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243217, 28.809187, 45.016514>,  <39.345505, 28.996834, 45.125717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243217, 28.809187, 45.016514>,  <39.072739, 28.496441, 44.834507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243217, 28.809187, 45.016514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436348, -0.262927, 0.860506,
		0.792436, -0.565293, 0.229106,
		0.426200, 0.781865, 0.455017,
		39.371078, 29.043747, 45.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971432, 27.733479, 44.436634>,  <39.072739, 28.496441, 44.834507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971432, 27.733479, 44.436634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209579, 27.964636, 44.213360>,  <39.352470, 28.103331, 44.079395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209579, 27.964636, 44.213360>,  <38.971432, 27.733479, 44.436634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209579, 27.964636, 44.213360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642995, -0.073861, -0.762301,
		-0.481757, 0.812762, 0.327609,
		0.595372, 0.577894, -0.558185,
		39.388191, 28.138004, 44.045906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565292, 28.204895, 44.081264>,  <38.971432, 27.733479, 44.436634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565292, 28.204895, 44.081264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888386, 28.123686, 43.859867>,  <39.082241, 28.074961, 43.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888386, 28.123686, 43.859867>,  <38.565292, 28.204895, 44.081264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888386, 28.123686, 43.859867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574269, -0.058556, -0.816570,
		0.133370, 0.977422, -0.163886,
		0.807730, -0.203021, -0.553494,
		39.130703, 28.062780, 43.693817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063267, 28.537737, 43.627071>,  <38.565292, 28.204895, 44.081264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063267, 28.537737, 43.627071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176544, 28.891876, 43.774559>,  <39.244511, 29.104361, 43.863052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176544, 28.891876, 43.774559>,  <39.063267, 28.537737, 43.627071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176544, 28.891876, 43.774559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070638, 0.402673, -0.912614,
		-0.956458, 0.232400, 0.176573,
		0.283193, 0.885350, 0.368723,
		39.261501, 29.157482, 43.885178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572910, 29.066671, 43.399548>,  <39.063267, 28.537737, 43.627071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572910, 29.066671, 43.399548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918884, 29.251753, 43.477306>,  <39.126469, 29.362803, 43.523960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918884, 29.251753, 43.477306>,  <38.572910, 29.066671, 43.399548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918884, 29.251753, 43.477306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007585, 0.399338, -0.916772,
		-0.501825, 0.791475, 0.348911,
		0.864936, 0.462706, 0.194394,
		39.178364, 29.390564, 43.535625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470730, 29.810320, 43.352840>,  <38.572910, 29.066671, 43.399548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470730, 29.810320, 43.352840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864853, 29.760914, 43.305668>,  <39.101326, 29.731270, 43.277363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864853, 29.760914, 43.305668>,  <38.470730, 29.810320, 43.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864853, 29.760914, 43.305668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059984, 0.396265, -0.916175,
		0.159895, 0.909790, 0.383035,
		0.985310, -0.123515, -0.117933,
		39.160446, 29.723860, 43.270287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495575, 30.173244, 42.821766>,  <38.470730, 29.810320, 43.352840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495575, 30.173244, 42.821766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880798, 30.076944, 42.870041>,  <39.111931, 30.019163, 42.899006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880798, 30.076944, 42.870041>,  <38.495575, 30.173244, 42.821766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880798, 30.076944, 42.870041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215654, 0.421013, -0.881045,
		0.161304, 0.874521, 0.457378,
		0.963055, -0.240752, 0.120683,
		39.169716, 30.004719, 42.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943104, 30.744745, 42.805904>,  <38.495575, 30.173244, 42.821766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943104, 30.744745, 42.805904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206680, 30.466921, 42.690395>,  <39.364826, 30.300226, 42.621090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206680, 30.466921, 42.690395>,  <38.943104, 30.744745, 42.805904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206680, 30.466921, 42.690395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041345, 0.416765, -0.908073,
		0.751061, 0.586424, 0.303339,
		0.658937, -0.694560, -0.288770,
		39.404362, 30.258553, 42.603764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612694, 30.968906, 42.613358>,  <38.943104, 30.744745, 42.805904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612694, 30.968906, 42.613358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563366, 30.632570, 42.402538>,  <39.533772, 30.430769, 42.276047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563366, 30.632570, 42.402538>,  <39.612694, 30.968906, 42.613358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563366, 30.632570, 42.402538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010100, 0.532137, -0.846598,
		0.992316, -0.099076, -0.074114,
		-0.123316, -0.840841, -0.527048,
		39.526371, 30.380318, 42.244423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112232, 30.867952, 42.070709>,  <39.612694, 30.968906, 42.613358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112232, 30.867952, 42.070709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807514, 30.639069, 41.949226>,  <39.624683, 30.501738, 41.876335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807514, 30.639069, 41.949226>,  <40.112232, 30.867952, 42.070709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807514, 30.639069, 41.949226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086750, 0.374490, -0.923164,
		0.641981, -0.729610, -0.235647,
		-0.761797, -0.572211, -0.303709,
		39.578976, 30.467405, 41.858112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341843, 30.464861, 41.568760>,  <40.112232, 30.867952, 42.070709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341843, 30.464861, 41.568760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951447, 30.547421, 41.540924>,  <39.717209, 30.596956, 41.524223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951447, 30.547421, 41.540924>,  <40.341843, 30.464861, 41.568760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951447, 30.547421, 41.540924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145453, 0.379769, -0.913575,
		-0.162135, -0.901761, -0.400672,
		-0.975989, 0.206402, -0.069590,
		39.658649, 30.609341, 41.520046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247852, 30.795425, 41.037407>,  <40.341843, 30.464861, 41.568760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247852, 30.795425, 41.037407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850830, 30.764389, 41.074947>,  <39.612617, 30.745768, 41.097473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850830, 30.764389, 41.074947>,  <40.247852, 30.795425, 41.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850830, 30.764389, 41.074947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117633, 0.411693, -0.903698,
		0.031478, -0.908013, -0.417757,
		-0.992558, -0.077589, 0.093854,
		39.553062, 30.741112, 41.103104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058510, 30.542168, 40.418610>,  <40.247852, 30.795425, 41.037407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058510, 30.542168, 40.418610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766399, 30.749899, 40.596142>,  <39.591133, 30.874538, 40.702663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766399, 30.749899, 40.596142>,  <40.058510, 30.542168, 40.418610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766399, 30.749899, 40.596142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226443, 0.428941, -0.874490,
		-0.644526, -0.739126, -0.195648,
		-0.730280, 0.519329, 0.443834,
		39.547314, 30.905697, 40.729294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600945, 30.569426, 39.944412>,  <40.058510, 30.542168, 40.418610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600945, 30.569426, 39.944412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498192, 30.848927, 40.211472>,  <39.436539, 31.016626, 40.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498192, 30.848927, 40.211472>,  <39.600945, 30.569426, 39.944412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498192, 30.848927, 40.211472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181206, 0.643758, -0.743465,
		-0.949302, -0.311967, -0.038754,
		-0.256885, 0.698751, 0.667651,
		39.421127, 31.058552, 40.411766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025589, 30.930254, 39.614124>,  <39.600945, 30.569426, 39.944412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025589, 30.930254, 39.614124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208488, 31.159286, 39.886322>,  <39.318226, 31.296705, 40.049641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208488, 31.159286, 39.886322>,  <39.025589, 30.930254, 39.614124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208488, 31.159286, 39.886322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148988, 0.803676, -0.576114,
		-0.876772, 0.162039, 0.452785,
		0.457245, 0.572581, 0.680498,
		39.345661, 31.331060, 40.090473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545811, 31.023502, 40.117683>,  <39.025589, 30.930254, 39.614124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545811, 31.023502, 40.117683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754673, 31.297668, 40.320683>,  <38.879990, 31.462168, 40.442482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754673, 31.297668, 40.320683>,  <38.545811, 31.023502, 40.117683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754673, 31.297668, 40.320683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399519, 0.722318, -0.564484,
		-0.753483, 0.091993, 0.651000,
		0.522157, 0.685416, 0.507501,
		38.911320, 31.503294, 40.472935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066757, 31.592541, 40.270966>,  <38.545811, 31.023502, 40.117683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066757, 31.592541, 40.270966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432495, 31.749672, 40.310276>,  <38.651939, 31.843950, 40.333862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432495, 31.749672, 40.310276>,  <38.066757, 31.592541, 40.270966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432495, 31.749672, 40.310276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251859, 0.741733, -0.621610,
		-0.317082, 0.543614, 0.777137,
		0.914345, 0.392830, 0.098277,
		38.706799, 31.867521, 40.339760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051113, 32.284046, 40.450218>,  <38.066757, 31.592541, 40.270966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051113, 32.284046, 40.450218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418121, 32.262985, 40.292542>,  <38.638325, 32.250347, 40.197937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418121, 32.262985, 40.292542>,  <38.051113, 32.284046, 40.450218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418121, 32.262985, 40.292542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178452, 0.831295, -0.526406,
		0.355403, 0.553332, 0.753334,
		0.917520, -0.052653, -0.394188,
		38.693378, 32.247189, 40.174286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204605, 32.928722, 40.441555>,  <38.051113, 32.284046, 40.450218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204605, 32.928722, 40.441555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457245, 32.779812, 40.169525>,  <38.608829, 32.690468, 40.006306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457245, 32.779812, 40.169525>,  <38.204605, 32.928722, 40.441555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457245, 32.779812, 40.169525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127049, 0.815621, -0.564466,
		0.764817, 0.442917, 0.467845,
		0.631595, -0.372274, -0.680073,
		38.646725, 32.668129, 39.965504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765495, 33.413078, 40.394894>,  <38.204605, 32.928722, 40.441555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765495, 33.413078, 40.394894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771389, 33.170303, 40.077049>,  <38.774925, 33.024639, 39.886341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771389, 33.170303, 40.077049>,  <38.765495, 33.413078, 40.394894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771389, 33.170303, 40.077049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030734, 0.794601, -0.606353,
		0.999419, -0.015485, 0.030365,
		0.014739, -0.606934, -0.794615,
		38.775810, 32.988224, 39.838665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341568, 33.593063, 39.983376>,  <38.765495, 33.413078, 40.394894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341568, 33.593063, 39.983376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110893, 33.401489, 39.718632>,  <38.972488, 33.286545, 39.559788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110893, 33.401489, 39.718632>,  <39.341568, 33.593063, 39.983376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110893, 33.401489, 39.718632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213879, 0.693376, -0.688103,
		0.788475, -0.538374, -0.297423,
		-0.576683, -0.478939, -0.661857,
		38.937889, 33.257809, 39.520073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719490, 33.592434, 39.257130>,  <39.341568, 33.593063, 39.983376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719490, 33.592434, 39.257130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325073, 33.550415, 39.205471>,  <39.088421, 33.525204, 39.174477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325073, 33.550415, 39.205471>,  <39.719490, 33.592434, 39.257130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325073, 33.550415, 39.205471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014395, 0.719052, -0.694807,
		0.165848, -0.686971, -0.707507,
		-0.986046, -0.105047, -0.129142,
		39.029259, 33.518902, 39.166729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657673, 33.607460, 38.543938>,  <39.719490, 33.592434, 39.257130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657673, 33.607460, 38.543938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290131, 33.677650, 38.685307>,  <39.069603, 33.719765, 38.770130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290131, 33.677650, 38.685307>,  <39.657673, 33.607460, 38.543938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290131, 33.677650, 38.685307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153289, 0.666586, -0.729496,
		-0.363598, -0.724479, -0.585599,
		-0.918858, 0.175477, 0.353424,
		39.014473, 33.730293, 38.791332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177147, 33.553925, 37.948902>,  <39.657673, 33.607460, 38.543938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177147, 33.553925, 37.948902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981724, 33.779305, 38.215385>,  <38.864471, 33.914532, 38.375275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981724, 33.779305, 38.215385>,  <39.177147, 33.553925, 37.948902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981724, 33.779305, 38.215385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037339, 0.749335, -0.661138,
		-0.871733, -0.347878, -0.345053,
		-0.488556, 0.563452, 0.666210,
		38.835155, 33.948341, 38.415249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796368, 33.719646, 37.623611>,  <39.177147, 33.553925, 37.948902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796368, 33.719646, 37.623611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917477, 33.383049, 37.802597>,  <39.990143, 33.181091, 37.909988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917477, 33.383049, 37.802597>,  <39.796368, 33.719646, 37.623611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917477, 33.383049, 37.802597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951952, 0.289688, -0.099345,
		-0.046028, 0.456044, 0.888766,
		0.302770, -0.841489, 0.447466,
		40.008308, 33.130604, 37.936836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323910, 33.972698, 38.111565>,  <39.796368, 33.719646, 37.623611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323910, 33.972698, 38.111565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381435, 33.587154, 38.021866>,  <40.415951, 33.355827, 37.968048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381435, 33.587154, 38.021866>,  <40.323910, 33.972698, 38.111565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381435, 33.587154, 38.021866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931357, 0.208427, -0.298550,
		0.334500, -0.165917, 0.927675,
		0.143818, -0.963862, -0.224247,
		40.424580, 33.297997, 37.954590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923447, 33.666790, 38.511261>,  <40.323910, 33.972698, 38.111565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923447, 33.666790, 38.511261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890827, 33.463352, 38.168407>,  <40.871258, 33.341290, 37.962696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890827, 33.463352, 38.168407>,  <40.923447, 33.666790, 38.511261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890827, 33.463352, 38.168407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878783, 0.369033, -0.302580,
		0.470202, -0.777909, 0.416854,
		-0.081546, -0.508598, -0.857134,
		40.866364, 33.310772, 37.911266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459461, 33.204529, 38.490898>,  <40.923447, 33.666790, 38.511261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459461, 33.204529, 38.490898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337097, 33.347137, 38.137783>,  <41.263680, 33.432705, 37.925915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337097, 33.347137, 38.137783>,  <41.459461, 33.204529, 38.490898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337097, 33.347137, 38.137783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936135, 0.281529, -0.210696,
		0.173410, -0.890860, -0.419878,
		-0.305909, 0.356525, -0.882785,
		41.245323, 33.454094, 37.872948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031029, 33.136761, 38.012760>,  <41.459461, 33.204529, 38.490898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031029, 33.136761, 38.012760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822189, 33.418846, 37.820892>,  <41.696888, 33.588097, 37.705772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822189, 33.418846, 37.820892>,  <42.031029, 33.136761, 38.012760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822189, 33.418846, 37.820892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850338, 0.473854, -0.228882,
		0.065882, -0.527380, -0.847071,
		-0.522096, 0.705218, -0.479670,
		41.665562, 33.630413, 37.676991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269634, 33.277424, 37.319382>,  <42.031029, 33.136761, 38.012760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269634, 33.277424, 37.319382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119606, 33.592125, 37.515484>,  <42.029591, 33.780945, 37.633144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119606, 33.592125, 37.515484>,  <42.269634, 33.277424, 37.319382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119606, 33.592125, 37.515484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765738, 0.561019, -0.314490,
		-0.522465, 0.257448, -0.812865,
		-0.375068, 0.786752, 0.490251,
		42.007084, 33.828152, 37.662560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986080, 33.775150, 36.874504>,  <42.269634, 33.277424, 37.319382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986080, 33.775150, 36.874504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165718, 33.913799, 37.203907>,  <42.273502, 33.996990, 37.401550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165718, 33.913799, 37.203907>,  <41.986080, 33.775150, 36.874504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165718, 33.913799, 37.203907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770840, 0.315740, -0.553276,
		-0.451791, 0.883268, -0.125392,
		0.449099, 0.346622, 0.823507,
		42.300449, 34.017784, 37.450958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126514, 34.525932, 36.732433>,  <41.986080, 33.775150, 36.874504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126514, 34.525932, 36.732433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358829, 34.368603, 37.017525>,  <42.498219, 34.274204, 37.188580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358829, 34.368603, 37.017525>,  <42.126514, 34.525932, 36.732433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358829, 34.368603, 37.017525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804477, 0.411213, -0.428626,
		-0.124492, 0.822313, 0.555251,
		0.580791, -0.393326, 0.712725,
		42.533066, 34.250607, 37.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416000, 34.996834, 37.227936>,  <42.126514, 34.525932, 36.732433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416000, 34.996834, 37.227936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632465, 34.679867, 37.115349>,  <42.762344, 34.489689, 37.047794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632465, 34.679867, 37.115349>,  <42.416000, 34.996834, 37.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632465, 34.679867, 37.115349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616248, 0.601446, -0.508429,
		0.572176, 0.101685, 0.813802,
		0.541158, -0.792415, -0.281470,
		42.794811, 34.442142, 37.030907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118294, 35.133942, 37.333973>,  <42.416000, 34.996834, 37.227936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118294, 35.133942, 37.333973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111210, 34.851612, 37.050709>,  <43.106960, 34.682213, 36.880749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111210, 34.851612, 37.050709>,  <43.118294, 35.133942, 37.333973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111210, 34.851612, 37.050709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726103, 0.477833, -0.494420,
		0.687358, -0.522955, 0.504040,
		-0.017712, -0.705828, -0.708162,
		43.105896, 34.639862, 36.838261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141144, 35.444889, 36.642960>,  <43.118294, 35.133942, 37.333973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141144, 35.444889, 36.642960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493256, 35.255177, 36.637760>,  <43.704521, 35.141350, 36.634640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493256, 35.255177, 36.637760>,  <43.141144, 35.444889, 36.642960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493256, 35.255177, 36.637760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144772, -0.242402, -0.959313,
		0.451833, 0.846344, -0.282044,
		0.880277, -0.474282, -0.013002,
		43.757339, 35.112892, 36.633858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853409, 35.496830, 36.280037>,  <43.141144, 35.444889, 36.642960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853409, 35.496830, 36.280037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905380, 35.113297, 36.179035>,  <43.936562, 34.883175, 36.118435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905380, 35.113297, 36.179035>,  <43.853409, 35.496830, 36.280037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905380, 35.113297, 36.179035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966596, 0.179229, -0.183219,
		0.220933, -0.220266, 0.950090,
		0.129927, -0.958833, -0.252506,
		43.944359, 34.825645, 36.103283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550934, 35.342636, 36.523678>,  <43.853409, 35.496830, 36.280037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550934, 35.342636, 36.523678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472569, 35.043713, 36.269703>,  <44.425549, 34.864357, 36.117317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472569, 35.043713, 36.269703>,  <44.550934, 35.342636, 36.523678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472569, 35.043713, 36.269703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959272, -0.011677, -0.282244,
		0.203510, -0.664372, 0.719162,
		-0.195913, -0.747311, -0.634937,
		44.413795, 34.819519, 36.079224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095207, 34.851040, 36.661201>,  <44.550934, 35.342636, 36.523678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095207, 34.851040, 36.661201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952602, 34.877739, 36.288441>,  <44.867039, 34.893761, 36.064785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952602, 34.877739, 36.288441>,  <45.095207, 34.851040, 36.661201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952602, 34.877739, 36.288441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933151, -0.023802, -0.358694,
		-0.046124, -0.997485, -0.053803,
		-0.356512, 0.066751, -0.931903,
		44.845650, 34.897766, 36.008869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282417, 34.188602, 36.423656>,  <45.095207, 34.851040, 36.661201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282417, 34.188602, 36.423656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227695, 34.503265, 36.182842>,  <45.194862, 34.692062, 36.038353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227695, 34.503265, 36.182842>,  <45.282417, 34.188602, 36.423656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227695, 34.503265, 36.182842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970961, -0.013928, -0.238831,
		-0.196264, -0.617229, -0.761912,
		-0.136801, 0.786661, -0.602039,
		45.186657, 34.739265, 36.002232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549725, 34.116528, 35.677307>,  <45.282417, 34.188602, 36.423656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549725, 34.116528, 35.677307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563442, 34.496395, 35.801853>,  <45.571674, 34.724316, 35.876579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563442, 34.496395, 35.801853>,  <45.549725, 34.116528, 35.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563442, 34.496395, 35.801853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936170, 0.078537, -0.342664,
		-0.349871, 0.303242, -0.886360,
		0.034298, 0.949672, 0.311364,
		45.573730, 34.781296, 35.895264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709789, 34.560326, 35.154808>,  <45.549725, 34.116528, 35.677307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709789, 34.560326, 35.154808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867321, 34.751862, 35.468651>,  <45.961842, 34.866783, 35.656956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867321, 34.751862, 35.468651>,  <45.709789, 34.560326, 35.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867321, 34.751862, 35.468651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879188, 0.052818, -0.473539,
		-0.268192, 0.876310, -0.400192,
		0.393829, 0.478843, 0.784607,
		45.985470, 34.895515, 35.704033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102261, 35.313953, 35.169800>,  <45.709789, 34.560326, 35.154808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102261, 35.313953, 35.169800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273174, 35.047653, 35.414490>,  <46.375721, 34.887875, 35.561302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273174, 35.047653, 35.414490>,  <46.102261, 35.313953, 35.169800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273174, 35.047653, 35.414490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778454, -0.073208, -0.623418,
		0.459824, 0.742574, 0.486976,
		0.427283, -0.665751, 0.611723,
		46.401360, 34.847927, 35.598007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765190, 35.608749, 35.395725>,  <46.102261, 35.313953, 35.169800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765190, 35.608749, 35.395725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750599, 35.209545, 35.375172>,  <46.741844, 34.970020, 35.362839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750599, 35.209545, 35.375172>,  <46.765190, 35.608749, 35.395725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750599, 35.209545, 35.375172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854165, -0.004451, -0.519983,
		0.518721, -0.062857, 0.852630,
		-0.036480, -0.998013, -0.051382,
		46.739655, 34.910141, 35.359756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490070, 35.418144, 35.518642>,  <46.765190, 35.608749, 35.395725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490070, 35.418144, 35.518642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.249752, 35.179195, 35.306156>,  <47.105560, 35.035828, 35.178665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.249752, 35.179195, 35.306156>,  <47.490070, 35.418144, 35.518642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.249752, 35.179195, 35.306156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658538, 0.006865, -0.752516,
		0.453179, -0.801935, 0.389268,
		-0.600796, -0.597372, -0.531216,
		47.069511, 34.999985, 35.146790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.901989, 34.838863, 35.364098>,  <47.490070, 35.418144, 35.518642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.901989, 34.838863, 35.364098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.614285, 34.898354, 35.092644>,  <47.441662, 34.934048, 34.929771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.614285, 34.898354, 35.092644>,  <47.901989, 34.838863, 35.364098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.614285, 34.898354, 35.092644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677792, -0.064243, -0.732441,
		-0.152533, -0.986789, -0.054600,
		-0.719257, 0.148729, -0.678638,
		47.398506, 34.942970, 34.889053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.402298, 35.745979, 28.759298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088116, 35.940407, 28.606045>,  <39.899605, 36.057064, 28.514091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088116, 35.940407, 28.606045>,  <40.402298, 35.745979, 28.759298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088116, 35.940407, 28.606045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530157, -0.208972, 0.821745,
		0.319363, 0.848566, 0.421833,
		-0.785456, 0.486072, -0.383135,
		39.852478, 36.086227, 28.491104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166969, 36.168640, 29.349197>,  <40.402298, 35.745979, 28.759298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166969, 36.168640, 29.349197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891636, 36.099121, 29.067490>,  <39.726437, 36.057411, 28.898464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891636, 36.099121, 29.067490>,  <40.166969, 36.168640, 29.349197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891636, 36.099121, 29.067490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712876, -0.017543, 0.701071,
		-0.134199, 0.984625, -0.111820,
		-0.688331, -0.173797, -0.704270,
		39.685135, 36.046982, 28.856209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630508, 36.447437, 29.623314>,  <40.166969, 36.168640, 29.349197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630508, 36.447437, 29.623314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453251, 36.223286, 29.343430>,  <39.346897, 36.088795, 29.175499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453251, 36.223286, 29.343430>,  <39.630508, 36.447437, 29.623314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453251, 36.223286, 29.343430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654022, -0.331715, 0.679868,
		-0.613088, 0.758909, -0.219501,
		-0.443146, -0.560378, -0.699713,
		39.320309, 36.055172, 29.133516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872246, 36.638657, 29.693010>,  <39.630508, 36.447437, 29.623314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872246, 36.638657, 29.693010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911297, 36.294399, 29.493105>,  <38.934727, 36.087845, 29.373161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911297, 36.294399, 29.493105>,  <38.872246, 36.638657, 29.693010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911297, 36.294399, 29.493105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761035, -0.388154, 0.519770,
		-0.641321, 0.329590, -0.692876,
		0.097632, -0.860643, -0.499761,
		38.940586, 36.036205, 29.343176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285839, 36.420135, 29.624041>,  <38.872246, 36.638657, 29.693010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285839, 36.420135, 29.624041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472523, 36.074532, 29.548496>,  <38.584534, 35.867168, 29.503170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472523, 36.074532, 29.548496>,  <38.285839, 36.420135, 29.624041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472523, 36.074532, 29.548496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679125, -0.486910, 0.549280,
		-0.566542, -0.128094, -0.814016,
		0.466713, -0.864008, -0.188863,
		38.612537, 35.815331, 29.491838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766441, 35.944069, 29.380499>,  <38.285839, 36.420135, 29.624041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766441, 35.944069, 29.380499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066921, 35.726460, 29.530025>,  <38.247208, 35.595894, 29.619741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066921, 35.726460, 29.530025>,  <37.766441, 35.944069, 29.380499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066921, 35.726460, 29.530025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646897, -0.494140, 0.580819,
		-0.131263, -0.678130, -0.723125,
		0.751195, -0.544027, 0.373817,
		38.292278, 35.563251, 29.642170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372540, 35.380600, 29.582106>,  <37.766441, 35.944069, 29.380499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372540, 35.380600, 29.582106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734058, 35.321640, 29.742815>,  <37.950970, 35.286266, 29.839241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734058, 35.321640, 29.742815>,  <37.372540, 35.380600, 29.582106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734058, 35.321640, 29.742815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427649, -0.346767, 0.834787,
		0.016278, -0.926297, -0.376441,
		0.903799, -0.147396, 0.401775,
		38.005199, 35.277420, 29.863348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378750, 34.628693, 29.810303>,  <37.372540, 35.380600, 29.582106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378750, 34.628693, 29.810303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641598, 34.833580, 30.031509>,  <37.799309, 34.956512, 30.164232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641598, 34.833580, 30.031509>,  <37.378750, 34.628693, 29.810303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641598, 34.833580, 30.031509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272258, -0.522842, 0.807782,
		0.702899, -0.681373, -0.204115,
		0.657121, 0.512217, 0.553015,
		37.838734, 34.987244, 30.197414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708317, 34.140018, 30.374746>,  <37.378750, 34.628693, 29.810303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708317, 34.140018, 30.374746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785244, 34.509792, 30.506468>,  <37.831398, 34.731655, 30.585501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785244, 34.509792, 30.506468>,  <37.708317, 34.140018, 30.374746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785244, 34.509792, 30.506468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251209, -0.278013, 0.927148,
		0.948636, -0.261028, 0.178760,
		0.192314, 0.924431, 0.329305,
		37.842937, 34.787121, 30.605259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132191, 34.028942, 31.005810>,  <37.708317, 34.140018, 30.374746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132191, 34.028942, 31.005810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946976, 34.383476, 31.006475>,  <37.835846, 34.596195, 31.006876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946976, 34.383476, 31.006475>,  <38.132191, 34.028942, 31.005810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946976, 34.383476, 31.006475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240882, -0.127650, 0.962123,
		0.852978, 0.445099, 0.272610,
		-0.463039, 0.886337, 0.001666,
		37.808064, 34.649376, 31.006975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365242, 34.350273, 31.532379>,  <38.132191, 34.028942, 31.005810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365242, 34.350273, 31.532379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011360, 34.522934, 31.461994>,  <37.799030, 34.626530, 31.419764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011360, 34.522934, 31.461994>,  <38.365242, 34.350273, 31.532379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011360, 34.522934, 31.461994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257286, -0.137406, 0.956516,
		0.388708, 0.891512, 0.232623,
		-0.884709, 0.431656, -0.175963,
		37.745949, 34.652431, 31.409204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286072, 34.946514, 32.029316>,  <38.365242, 34.350273, 31.532379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286072, 34.946514, 32.029316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920734, 34.837570, 31.908239>,  <37.701530, 34.772205, 31.835594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920734, 34.837570, 31.908239>,  <38.286072, 34.946514, 32.029316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920734, 34.837570, 31.908239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281044, -0.116240, 0.952629,
		-0.294639, 0.955150, 0.029623,
		-0.913347, -0.272356, -0.302688,
		37.646729, 34.755863, 31.817432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766163, 35.246986, 32.554764>,  <38.286072, 34.946514, 32.029316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766163, 35.246986, 32.554764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553623, 34.956394, 32.380455>,  <37.426098, 34.782040, 32.275871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553623, 34.956394, 32.380455>,  <37.766163, 35.246986, 32.554764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553623, 34.956394, 32.380455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358404, -0.273313, 0.892663,
		-0.767604, 0.630496, -0.115150,
		-0.531349, -0.726481, -0.435768,
		37.394218, 34.738449, 32.249725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117180, 35.294800, 32.861519>,  <37.766163, 35.246986, 32.554764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117180, 35.294800, 32.861519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131802, 34.926842, 32.705338>,  <37.140575, 34.706066, 32.611629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131802, 34.926842, 32.705338>,  <37.117180, 35.294800, 32.861519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131802, 34.926842, 32.705338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477438, -0.359310, 0.801841,
		-0.877905, 0.157107, -0.452328,
		0.036551, -0.919899, -0.390449,
		37.142769, 34.650871, 32.588203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436981, 35.085552, 33.071850>,  <37.117180, 35.294800, 32.861519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436981, 35.085552, 33.071850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645607, 34.763477, 32.958973>,  <36.770782, 34.570232, 32.891247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645607, 34.763477, 32.958973>,  <36.436981, 35.085552, 33.071850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645607, 34.763477, 32.958973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356728, -0.506244, 0.785151,
		-0.775056, -0.308842, -0.551275,
		0.521568, -0.805191, -0.282195,
		36.802078, 34.521919, 32.874313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986206, 34.599140, 33.148430>,  <36.436981, 35.085552, 33.071850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986206, 34.599140, 33.148430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339985, 34.412762, 33.158657>,  <36.552250, 34.300934, 33.164795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339985, 34.412762, 33.158657>,  <35.986206, 34.599140, 33.148430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339985, 34.412762, 33.158657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315562, -0.556825, 0.768353,
		-0.343774, -0.687634, -0.639515,
		0.884444, -0.465946, 0.025570,
		36.605316, 34.272976, 33.166328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777458, 33.805729, 33.256500>,  <35.986206, 34.599140, 33.148430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777458, 33.805729, 33.256500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159096, 33.864185, 33.361076>,  <36.388077, 33.899258, 33.423820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159096, 33.864185, 33.361076>,  <35.777458, 33.805729, 33.256500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159096, 33.864185, 33.361076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181724, -0.411404, 0.893154,
		0.238082, -0.899661, -0.365960,
		0.954093, 0.146140, 0.261437,
		36.445324, 33.908028, 33.439507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026184, 33.205894, 33.551926>,  <35.777458, 33.805729, 33.256500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026184, 33.205894, 33.551926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262745, 33.499203, 33.686119>,  <36.404682, 33.675190, 33.766636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262745, 33.499203, 33.686119>,  <36.026184, 33.205894, 33.551926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262745, 33.499203, 33.686119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069740, -0.367971, 0.927218,
		0.803355, -0.571757, -0.166481,
		0.591403, 0.733275, 0.335486,
		36.440166, 33.719185, 33.786766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127407, 32.910240, 34.143368>,  <36.026184, 33.205894, 33.551926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127407, 32.910240, 34.143368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312080, 33.260559, 34.199692>,  <36.422886, 33.470749, 34.233486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312080, 33.260559, 34.199692>,  <36.127407, 32.910240, 34.143368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312080, 33.260559, 34.199692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102167, -0.210182, 0.972309,
		0.881139, -0.434517, -0.186516,
		0.461687, 0.875796, 0.140807,
		36.450588, 33.523296, 34.241936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792583, 32.816402, 34.407440>,  <36.127407, 32.910240, 34.143368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792583, 32.816402, 34.407440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641479, 33.172325, 34.509838>,  <36.550816, 33.385880, 34.571278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641479, 33.172325, 34.509838>,  <36.792583, 32.816402, 34.407440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641479, 33.172325, 34.509838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037215, -0.261664, 0.964441,
		0.925155, 0.373856, 0.065733,
		-0.377762, 0.889811, 0.255993,
		36.528152, 33.439270, 34.586636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172935, 32.942513, 35.046459>,  <36.792583, 32.816402, 34.407440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172935, 32.942513, 35.046459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826523, 33.142349, 35.038479>,  <36.618675, 33.262249, 35.033691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826523, 33.142349, 35.038479>,  <37.172935, 32.942513, 35.046459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826523, 33.142349, 35.038479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128931, -0.184586, 0.974323,
		0.483076, 0.846369, 0.224270,
		-0.866034, 0.499588, -0.019954,
		36.566711, 33.292225, 35.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283466, 33.263638, 35.724903>,  <37.172935, 32.942513, 35.046459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283466, 33.263638, 35.724903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467564, 33.102257, 36.041233>,  <37.578022, 33.005428, 36.231033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467564, 33.102257, 36.041233>,  <37.283466, 33.263638, 35.724903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467564, 33.102257, 36.041233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875857, 0.351929, -0.330184,
		-0.145102, 0.844615, 0.515335,
		0.460240, -0.403449, 0.790827,
		37.605637, 32.981220, 36.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751446, 33.772175, 36.054214>,  <37.283466, 33.263638, 35.724903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751446, 33.772175, 36.054214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885120, 33.408005, 36.151745>,  <37.965324, 33.189503, 36.210262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885120, 33.408005, 36.151745>,  <37.751446, 33.772175, 36.054214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885120, 33.408005, 36.151745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909053, 0.243031, -0.338466,
		0.248888, 0.334764, 0.908839,
		0.334182, -0.910422, 0.243830,
		37.985374, 33.134876, 36.224895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327557, 33.891167, 36.392284>,  <37.751446, 33.772175, 36.054214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327557, 33.891167, 36.392284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363155, 33.520607, 36.245937>,  <38.384514, 33.298271, 36.158131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363155, 33.520607, 36.245937>,  <38.327557, 33.891167, 36.392284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363155, 33.520607, 36.245937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894021, 0.236231, -0.380685,
		0.439096, -0.293211, 0.849248,
		0.088997, -0.926403, -0.365865,
		38.389854, 33.242687, 36.136177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080631, 33.793137, 36.433628>,  <38.327557, 33.891167, 36.392284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080631, 33.793137, 36.433628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944828, 33.511280, 36.184402>,  <38.863346, 33.342167, 36.034866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944828, 33.511280, 36.184402>,  <39.080631, 33.793137, 36.433628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944828, 33.511280, 36.184402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683878, 0.269875, -0.677849,
		0.645792, -0.656235, 0.390266,
		-0.339505, -0.704643, -0.623068,
		38.842976, 33.299889, 35.997482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718224, 33.613705, 36.130905>,  <39.080631, 33.793137, 36.433628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718224, 33.613705, 36.130905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443012, 33.473637, 35.876663>,  <39.277885, 33.389595, 35.724117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443012, 33.473637, 35.876663>,  <39.718224, 33.613705, 36.130905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443012, 33.473637, 35.876663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583878, 0.252993, -0.771415,
		0.430928, -0.901874, 0.030387,
		-0.688031, -0.350167, -0.635607,
		39.236603, 33.368587, 35.685982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126228, 33.217560, 35.675804>,  <39.718224, 33.613705, 36.130905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126228, 33.217560, 35.675804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782818, 33.302456, 35.489094>,  <39.576771, 33.353394, 35.377068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782818, 33.302456, 35.489094>,  <40.126228, 33.217560, 35.675804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782818, 33.302456, 35.489094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512676, 0.338548, -0.789018,
		-0.009436, -0.916700, -0.399464,
		-0.858531, 0.212241, -0.466776,
		39.525257, 33.366127, 35.349060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183468, 32.904800, 34.922943>,  <40.126228, 33.217560, 35.675804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183468, 32.904800, 34.922943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.888073, 33.173687, 34.901913>,  <39.710838, 33.335018, 34.889294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.888073, 33.173687, 34.901913>,  <40.183468, 32.904800, 34.922943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888073, 33.173687, 34.901913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428195, 0.407315, -0.806687,
		-0.520857, -0.618236, -0.588637,
		-0.738483, 0.672219, -0.052573,
		39.666527, 33.375351, 34.886143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915329, 32.927433, 34.205532>,  <40.183468, 32.904800, 34.922943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915329, 32.927433, 34.205532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819012, 33.288158, 34.349056>,  <39.761223, 33.504593, 34.435173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819012, 33.288158, 34.349056>,  <39.915329, 32.927433, 34.205532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819012, 33.288158, 34.349056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296268, 0.420340, -0.857636,
		-0.924253, -0.100208, -0.368394,
		-0.240793, 0.901816, 0.358812,
		39.746773, 33.558704, 34.456699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695194, 33.346764, 33.603924>,  <39.915329, 32.927433, 34.205532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695194, 33.346764, 33.603924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752293, 33.627571, 33.883007>,  <39.786552, 33.796055, 34.050457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752293, 33.627571, 33.883007>,  <39.695194, 33.346764, 33.603924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752293, 33.627571, 33.883007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292015, 0.643676, -0.707395,
		-0.945701, 0.304722, -0.113114,
		0.142750, 0.702015, 0.697708,
		39.795116, 33.838177, 34.092319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455784, 33.916142, 33.237328>,  <39.695194, 33.346764, 33.603924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455784, 33.916142, 33.237328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.691113, 34.041252, 33.535603>,  <39.832310, 34.116318, 33.714569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.691113, 34.041252, 33.535603>,  <39.455784, 33.916142, 33.237328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691113, 34.041252, 33.535603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476039, 0.611467, -0.632056,
		-0.653655, 0.726828, 0.210846,
		0.588322, 0.312775, 0.745687,
		39.867607, 34.135086, 33.759308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434650, 34.680428, 33.190960>,  <39.455784, 33.916142, 33.237328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434650, 34.680428, 33.190960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762817, 34.598904, 33.404640>,  <39.959717, 34.549992, 33.532848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762817, 34.598904, 33.404640>,  <39.434650, 34.680428, 33.190960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762817, 34.598904, 33.404640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554557, 0.511118, -0.656678,
		-0.139205, 0.834998, 0.532354,
		0.820420, -0.203808, 0.534204,
		40.008942, 34.537762, 33.564899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757881, 35.356457, 33.359566>,  <39.434650, 34.680428, 33.190960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757881, 35.356457, 33.359566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081371, 35.121864, 33.377472>,  <40.275463, 34.981110, 33.388218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081371, 35.121864, 33.377472>,  <39.757881, 35.356457, 33.359566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081371, 35.121864, 33.377472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405994, 0.501520, -0.763967,
		0.425603, 0.636013, 0.643700,
		0.808722, -0.586485, 0.044769,
		40.323986, 34.945919, 33.390903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344833, 35.819996, 33.151890>,  <39.757881, 35.356457, 33.359566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344833, 35.819996, 33.151890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465084, 35.441444, 33.104576>,  <40.537235, 35.214314, 33.076187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465084, 35.441444, 33.104576>,  <40.344833, 35.819996, 33.151890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465084, 35.441444, 33.104576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332171, 0.220150, -0.917168,
		0.894028, 0.236435, 0.380542,
		0.300628, -0.946378, -0.118284,
		40.555271, 35.157532, 33.069092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075226, 35.812740, 32.930687>,  <40.344833, 35.819996, 33.151890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075226, 35.812740, 32.930687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.900703, 35.485371, 32.781116>,  <40.795990, 35.288948, 32.691372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.900703, 35.485371, 32.781116>,  <41.075226, 35.812740, 32.930687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900703, 35.485371, 32.781116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478208, 0.141115, -0.866836,
		0.762205, -0.557021, 0.329807,
		-0.436305, -0.818422, -0.373930,
		40.769814, 35.239845, 32.668938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537506, 35.525520, 32.487682>,  <41.075226, 35.812740, 32.930687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537506, 35.525520, 32.487682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198872, 35.344181, 32.376137>,  <40.995689, 35.235378, 32.309212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198872, 35.344181, 32.376137>,  <41.537506, 35.525520, 32.487682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198872, 35.344181, 32.376137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233788, 0.153943, -0.960023,
		0.478154, -0.877939, -0.024339,
		-0.846588, -0.453349, -0.278860,
		40.944897, 35.208176, 32.292480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781570, 35.019627, 32.133373>,  <41.537506, 35.525520, 32.487682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781570, 35.019627, 32.133373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393757, 35.061375, 32.044727>,  <41.161068, 35.086422, 31.991541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393757, 35.061375, 32.044727>,  <41.781570, 35.019627, 32.133373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393757, 35.061375, 32.044727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203417, -0.161012, -0.965762,
		-0.136465, -0.981420, 0.134879,
		-0.969535, 0.104357, -0.221610,
		41.102898, 35.092686, 31.978245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648022, 34.418827, 31.553473>,  <41.781570, 35.019627, 32.133373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648022, 34.418827, 31.553473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.360004, 34.695942, 31.537487>,  <41.187195, 34.862209, 31.527897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.360004, 34.695942, 31.537487>,  <41.648022, 34.418827, 31.553473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360004, 34.695942, 31.537487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148876, 0.097974, -0.983990,
		-0.677776, -0.714460, -0.173684,
		-0.720039, 0.692782, -0.039962,
		41.143993, 34.903778, 31.525499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291527, 34.174854, 31.070295>,  <41.648022, 34.418827, 31.553473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291527, 34.174854, 31.070295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211044, 34.564632, 31.110247>,  <41.162754, 34.798500, 31.134218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211044, 34.564632, 31.110247>,  <41.291527, 34.174854, 31.070295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211044, 34.564632, 31.110247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215670, 0.143532, -0.965860,
		-0.955512, -0.172793, -0.239038,
		-0.201203, 0.974444, 0.099880,
		41.150684, 34.856964, 31.140211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773983, 34.285271, 30.628206>,  <41.291527, 34.174854, 31.070295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773983, 34.285271, 30.628206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.962601, 34.631458, 30.695858>,  <41.075771, 34.839172, 30.736450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.962601, 34.631458, 30.695858>,  <40.773983, 34.285271, 30.628206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962601, 34.631458, 30.695858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098850, 0.138708, -0.985388,
		-0.876287, 0.481369, -0.020146,
		0.471540, 0.865473, 0.169132,
		41.104061, 34.891102, 30.746597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.574493, 34.851540, 30.019411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908646, 35.015068, 30.166380>,  <41.109138, 35.113186, 30.254562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908646, 35.015068, 30.166380>,  <40.574493, 34.851540, 30.019411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908646, 35.015068, 30.166380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274723, 0.268433, -0.923293,
		-0.476093, 0.872243, 0.111931,
		0.835382, 0.408823, 0.367424,
		41.159260, 35.137714, 30.276608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574192, 35.502235, 29.778049>,  <40.574493, 34.851540, 30.019411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574192, 35.502235, 29.778049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955479, 35.419147, 29.865894>,  <41.184250, 35.369297, 29.918600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955479, 35.419147, 29.865894>,  <40.574192, 35.502235, 29.778049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955479, 35.419147, 29.865894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286392, 0.388121, -0.875980,
		0.096721, 0.897895, 0.429452,
		0.953218, -0.207717, 0.219611,
		41.241444, 35.356831, 29.931778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024544, 36.018425, 29.564354>,  <40.574192, 35.502235, 29.778049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024544, 36.018425, 29.564354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305225, 35.735577, 29.599218>,  <41.473633, 35.565868, 29.620138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305225, 35.735577, 29.599218>,  <41.024544, 36.018425, 29.564354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305225, 35.735577, 29.599218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461109, 0.357468, -0.812154,
		0.543132, 0.610082, 0.576895,
		0.701702, -0.707118, 0.087162,
		41.515736, 35.523441, 29.625366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640724, 36.389332, 29.440977>,  <41.024544, 36.018425, 29.564354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640724, 36.389332, 29.440977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702087, 36.000641, 29.369183>,  <41.738903, 35.767426, 29.326107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702087, 36.000641, 29.369183>,  <41.640724, 36.389332, 29.440977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702087, 36.000641, 29.369183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551560, 0.234908, -0.800375,
		0.819908, 0.023784, 0.572001,
		0.153404, -0.971727, -0.179485,
		41.748108, 35.709122, 29.315336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247036, 36.312397, 29.162245>,  <41.640724, 36.389332, 29.440977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247036, 36.312397, 29.162245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089584, 35.961040, 29.053816>,  <41.995113, 35.750225, 28.988758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089584, 35.961040, 29.053816>,  <42.247036, 36.312397, 29.162245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089584, 35.961040, 29.053816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488308, 0.050044, -0.871235,
		0.778854, -0.475307, 0.409229,
		-0.393625, -0.878395, -0.271073,
		41.971497, 35.697521, 28.972494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852726, 35.926037, 28.884418>,  <42.247036, 36.312397, 29.162245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852726, 35.926037, 28.884418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521217, 35.740765, 28.758816>,  <42.322311, 35.629601, 28.683455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521217, 35.740765, 28.758816>,  <42.852726, 35.926037, 28.884418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521217, 35.740765, 28.758816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291876, 0.120953, -0.948778,
		0.477440, -0.877969, 0.034951,
		-0.828770, -0.463185, -0.314006,
		42.272587, 35.601810, 28.664614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129955, 35.328407, 28.450083>,  <42.852726, 35.926037, 28.884418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129955, 35.328407, 28.450083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.760956, 35.439960, 28.343330>,  <42.539558, 35.506893, 28.279280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.760956, 35.439960, 28.343330>,  <43.129955, 35.328407, 28.450083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760956, 35.439960, 28.343330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294604, 0.061925, -0.953611,
		-0.249421, -0.958326, -0.139287,
		-0.922496, 0.278885, -0.266881,
		42.484207, 35.523624, 28.263266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888660, 34.920776, 27.804289>,  <43.129955, 35.328407, 28.450083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888660, 34.920776, 27.804289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660591, 35.249222, 27.814756>,  <42.523750, 35.446289, 27.821037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660591, 35.249222, 27.814756>,  <42.888660, 34.920776, 27.804289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660591, 35.249222, 27.814756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235905, 0.194158, -0.952183,
		-0.786927, -0.536733, -0.304407,
		-0.570171, 0.821109, 0.026170,
		42.489540, 35.495556, 27.822607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564793, 34.903633, 27.123125>,  <42.888660, 34.920776, 27.804289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564793, 34.903633, 27.123125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498154, 35.270626, 27.267611>,  <42.458172, 35.490822, 27.354301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498154, 35.270626, 27.267611>,  <42.564793, 34.903633, 27.123125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498154, 35.270626, 27.267611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165487, 0.387154, -0.907043,
		-0.972039, -0.091335, -0.216329,
		-0.166597, 0.917480, 0.361214,
		42.448174, 35.545872, 27.375975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174927, 35.208420, 26.631550>,  <42.564793, 34.903633, 27.123125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174927, 35.208420, 26.631550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.380878, 35.487560, 26.830709>,  <42.504452, 35.655045, 26.950205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.380878, 35.487560, 26.830709>,  <42.174927, 35.208420, 26.631550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380878, 35.487560, 26.830709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118452, 0.517320, -0.847555,
		-0.849038, 0.495368, 0.183697,
		0.514882, 0.697848, 0.497901,
		42.535343, 35.696915, 26.980080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037525, 35.745243, 26.109261>,  <42.174927, 35.208420, 26.631550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037525, 35.745243, 26.109261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.311371, 35.867172, 26.374104>,  <42.475677, 35.940331, 26.533010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.311371, 35.867172, 26.374104>,  <42.037525, 35.745243, 26.109261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311371, 35.867172, 26.374104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345374, 0.664265, -0.662924,
		-0.641888, 0.682523, 0.349489,
		0.684614, 0.304819, 0.662110,
		42.516754, 35.958618, 26.572737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991261, 36.353138, 26.089340>,  <42.037525, 35.745243, 26.109261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991261, 36.353138, 26.089340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361526, 36.299709, 26.230928>,  <42.583687, 36.267654, 26.315882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361526, 36.299709, 26.230928>,  <41.991261, 36.353138, 26.089340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361526, 36.299709, 26.230928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344822, 0.682831, -0.644081,
		-0.155675, 0.718264, 0.678132,
		0.925669, -0.133567, 0.353973,
		42.639229, 36.259640, 26.337120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303120, 36.982841, 25.946476>,  <41.991261, 36.353138, 26.089340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303120, 36.982841, 25.946476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.621071, 36.751152, 26.018774>,  <42.811844, 36.612141, 26.062153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.621071, 36.751152, 26.018774>,  <42.303120, 36.982841, 25.946476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621071, 36.751152, 26.018774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592926, 0.678235, -0.434091,
		0.128848, 0.452219, 0.882551,
		0.794882, -0.579219, 0.180743,
		42.859535, 36.577385, 26.072996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797279, 37.361584, 26.286842>,  <42.303120, 36.982841, 25.946476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797279, 37.361584, 26.286842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.004051, 37.056015, 26.132334>,  <43.128113, 36.872673, 26.039629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.004051, 37.056015, 26.132334>,  <42.797279, 37.361584, 26.286842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004051, 37.056015, 26.132334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710354, 0.634607, -0.304419,
		0.477683, -0.117026, 0.870703,
		0.516929, -0.763923, -0.386271,
		43.159130, 36.826839, 26.016453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409000, 37.631092, 26.322117>,  <42.797279, 37.361584, 26.286842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409000, 37.631092, 26.322117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.453712, 37.321995, 26.072197>,  <43.480541, 37.136536, 25.922245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.453712, 37.321995, 26.072197>,  <43.409000, 37.631092, 26.322117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453712, 37.321995, 26.072197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781157, 0.456966, -0.425413,
		0.614247, -0.440513, 0.654713,
		0.111782, -0.772742, -0.624800,
		43.487247, 37.090172, 25.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078800, 37.376144, 26.387997>,  <43.409000, 37.631092, 26.322117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078800, 37.376144, 26.387997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.948025, 37.305477, 26.016644>,  <43.869560, 37.263077, 25.793831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.948025, 37.305477, 26.016644>,  <44.078800, 37.376144, 26.387997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948025, 37.305477, 26.016644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805516, 0.461643, -0.371523,
		0.494219, -0.869295, -0.008620,
		-0.326943, -0.176670, -0.928384,
		43.849941, 37.252476, 25.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684097, 37.292828, 26.086502>,  <44.078800, 37.376144, 26.387997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684097, 37.292828, 26.086502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.454166, 37.286716, 25.759249>,  <44.316208, 37.283051, 25.562897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.454166, 37.286716, 25.759249>,  <44.684097, 37.292828, 26.086502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454166, 37.286716, 25.759249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710461, 0.486734, -0.508267,
		0.405979, -0.873417, -0.268932,
		-0.574827, -0.015280, -0.818132,
		44.281719, 37.282131, 25.513809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080841, 37.056278, 25.545256>,  <44.684097, 37.292828, 26.086502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080841, 37.056278, 25.545256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.798870, 37.277012, 25.367016>,  <44.629688, 37.409451, 25.260071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.798870, 37.277012, 25.367016>,  <45.080841, 37.056278, 25.545256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798870, 37.277012, 25.367016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695146, 0.412724, -0.588583,
		-0.140888, -0.724666, -0.674544,
		-0.704927, 0.551831, -0.445601,
		44.587391, 37.442562, 25.233335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215439, 36.972794, 24.853783>,  <45.080841, 37.056278, 25.545256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215439, 36.972794, 24.853783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.977314, 37.293964, 24.865879>,  <44.834438, 37.486668, 24.873137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.977314, 37.293964, 24.865879>,  <45.215439, 36.972794, 24.853783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977314, 37.293964, 24.865879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554686, 0.437909, -0.707503,
		-0.581313, -0.404412, -0.706064,
		-0.595314, 0.802924, 0.030241,
		44.798721, 37.534843, 24.874950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127842, 37.162613, 24.204300>,  <45.215439, 36.972794, 24.853783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127842, 37.162613, 24.204300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.064941, 37.497028, 24.414558>,  <45.027199, 37.697678, 24.540714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.064941, 37.497028, 24.414558>,  <45.127842, 37.162613, 24.204300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064941, 37.497028, 24.414558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474186, 0.530819, -0.702409,
		-0.866267, 0.138797, -0.479913,
		-0.157255, 0.836042, 0.525647,
		45.017765, 37.747841, 24.572252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852146, 37.669125, 23.786705>,  <45.127842, 37.162613, 24.204300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852146, 37.669125, 23.786705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.007847, 37.897041, 24.076208>,  <45.101265, 38.033791, 24.249910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.007847, 37.897041, 24.076208>,  <44.852146, 37.669125, 23.786705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007847, 37.897041, 24.076208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453218, 0.565572, -0.689001,
		-0.801922, 0.596213, -0.038090,
		0.389249, 0.569788, 0.723759,
		45.124622, 38.067978, 24.293335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664967, 38.320312, 23.648827>,  <44.852146, 37.669125, 23.786705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664967, 38.320312, 23.648827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.999313, 38.326160, 23.868319>,  <45.199921, 38.329670, 24.000013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.999313, 38.326160, 23.868319>,  <44.664967, 38.320312, 23.648827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999313, 38.326160, 23.868319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428911, 0.606458, -0.669510,
		-0.342573, 0.794981, 0.500649,
		0.835870, 0.014623, 0.548732,
		45.250076, 38.330547, 24.032938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971592, 38.886684, 23.321470>,  <44.664967, 38.320312, 23.648827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971592, 38.886684, 23.321470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.249538, 38.710625, 23.548952>,  <45.416306, 38.604988, 23.685442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.249538, 38.710625, 23.548952>,  <44.971592, 38.886684, 23.321470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249538, 38.710625, 23.548952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705238, 0.262339, -0.658649,
		0.140710, 0.858747, 0.492701,
		0.694867, -0.440150, 0.568707,
		45.458000, 38.578579, 23.719564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652321, 39.564934, 23.063698>,  <44.971592, 38.886684, 23.321470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652321, 39.564934, 23.063698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.486237, 39.913864, 22.960430>,  <44.386585, 40.123222, 22.898470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.486237, 39.913864, 22.960430>,  <44.652321, 39.564934, 23.063698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486237, 39.913864, 22.960430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661253, -0.094496, 0.744187,
		0.624777, 0.479709, 0.616062,
		-0.415209, 0.872324, -0.258171,
		44.361675, 40.175560, 22.882978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608643, 40.029072, 23.671219>,  <44.652321, 39.564934, 23.063698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608643, 40.029072, 23.671219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335079, 40.124954, 23.395592>,  <44.170940, 40.182484, 23.230215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335079, 40.124954, 23.395592>,  <44.608643, 40.029072, 23.671219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335079, 40.124954, 23.395592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727548, -0.153778, 0.668601,
		0.054301, 0.958590, 0.279564,
		-0.683905, 0.239702, -0.689070,
		44.129910, 40.196865, 23.188871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180767, 40.512337, 23.978809>,  <44.608643, 40.029072, 23.671219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180767, 40.512337, 23.978809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.950607, 40.374798, 23.681976>,  <43.812511, 40.292274, 23.503876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.950607, 40.374798, 23.681976>,  <44.180767, 40.512337, 23.978809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950607, 40.374798, 23.681976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707261, -0.246469, 0.662597,
		-0.410734, 0.906102, -0.101373,
		-0.575396, -0.343849, -0.742084,
		43.777988, 40.271645, 23.459351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528870, 40.644665, 24.283743>,  <44.180767, 40.512337, 23.978809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528870, 40.644665, 24.283743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.464710, 40.412262, 23.964567>,  <43.426212, 40.272820, 23.773062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.464710, 40.412262, 23.964567>,  <43.528870, 40.644665, 24.283743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464710, 40.412262, 23.964567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693566, -0.508855, 0.509934,
		-0.702309, 0.635218, -0.321342,
		-0.160402, -0.581003, -0.797939,
		43.416588, 40.237961, 23.725185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815960, 40.686539, 24.212898>,  <43.528870, 40.644665, 24.283743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815960, 40.686539, 24.212898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.911140, 40.333542, 24.050625>,  <42.968250, 40.121742, 23.953260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.911140, 40.333542, 24.050625>,  <42.815960, 40.686539, 24.212898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911140, 40.333542, 24.050625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746132, -0.433489, 0.505345,
		-0.621825, 0.182446, -0.761608,
		0.237950, -0.882497, -0.405684,
		42.982525, 40.068794, 23.928919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203613, 40.427452, 23.906864>,  <42.815960, 40.686539, 24.212898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203613, 40.427452, 23.906864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450401, 40.127636, 24.002811>,  <42.598473, 39.947746, 24.060379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450401, 40.127636, 24.002811>,  <42.203613, 40.427452, 23.906864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450401, 40.127636, 24.002811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710049, -0.398720, 0.580391,
		-0.339385, -0.528403, -0.778208,
		0.616967, -0.749542, 0.239872,
		42.635490, 39.902771, 24.074772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893490, 39.743477, 23.770739>,  <42.203613, 40.427452, 23.906864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893490, 39.743477, 23.770739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.170101, 39.677650, 24.052080>,  <42.336067, 39.638153, 24.220886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.170101, 39.677650, 24.052080>,  <41.893490, 39.743477, 23.770739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170101, 39.677650, 24.052080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677977, -0.483883, 0.553357,
		0.249276, -0.859520, -0.446191,
		0.691526, -0.164569, 0.703356,
		42.377560, 39.628281, 24.263086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712170, 39.118553, 24.108315>,  <41.893490, 39.743477, 23.770739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712170, 39.118553, 24.108315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.009567, 39.243923, 24.344612>,  <42.188007, 39.319145, 24.486391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.009567, 39.243923, 24.344612>,  <41.712170, 39.118553, 24.108315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009567, 39.243923, 24.344612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351983, -0.567694, 0.744199,
		0.568614, -0.761239, -0.311756,
		0.743496, 0.313429, 0.590742,
		42.232616, 39.337952, 24.521835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973927, 38.391460, 24.470678>,  <41.712170, 39.118553, 24.108315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973927, 38.391460, 24.470678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104675, 38.695091, 24.695871>,  <42.183125, 38.877270, 24.830988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104675, 38.695091, 24.695871>,  <41.973927, 38.391460, 24.470678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104675, 38.695091, 24.695871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358964, -0.451340, 0.816968,
		0.874242, -0.469136, 0.124951,
		0.326873, 0.759081, 0.562983,
		42.202736, 38.922817, 24.864767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402866, 38.053143, 24.934784>,  <41.973927, 38.391460, 24.470678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402866, 38.053143, 24.934784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.305595, 38.402523, 25.103519>,  <42.247234, 38.612152, 25.204762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.305595, 38.402523, 25.103519>,  <42.402866, 38.053143, 24.934784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305595, 38.402523, 25.103519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323226, -0.483008, 0.813774,
		0.914544, 0.061540, 0.399778,
		-0.243176, 0.873450, 0.421841,
		42.232643, 38.664558, 25.230072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597950, 38.011658, 25.594402>,  <42.402866, 38.053143, 24.934784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597950, 38.011658, 25.594402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325981, 38.302769, 25.630293>,  <42.162800, 38.477436, 25.651827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325981, 38.302769, 25.630293>,  <42.597950, 38.011658, 25.594402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325981, 38.302769, 25.630293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337939, -0.419586, 0.842463,
		0.650773, 0.542485, 0.531229,
		-0.679920, 0.727776, 0.089728,
		42.122005, 38.521103, 25.657211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453674, 38.072300, 26.275778>,  <42.597950, 38.011658, 25.594402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453674, 38.072300, 26.275778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.127392, 38.235481, 26.111732>,  <41.931622, 38.333389, 26.013306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.127392, 38.235481, 26.111732>,  <42.453674, 38.072300, 26.275778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127392, 38.235481, 26.111732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568562, -0.434790, 0.698351,
		0.106584, 0.802825, 0.586611,
		-0.815706, 0.407958, -0.410114,
		41.882679, 38.357868, 25.988699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959068, 38.395115, 26.786673>,  <42.453674, 38.072300, 26.275778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959068, 38.395115, 26.786673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.729836, 38.336319, 26.464188>,  <41.592297, 38.301041, 26.270697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.729836, 38.336319, 26.464188>,  <41.959068, 38.395115, 26.786673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729836, 38.336319, 26.464188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587385, -0.612337, 0.529171,
		-0.571454, 0.776813, 0.264579,
		-0.573078, -0.146987, -0.806211,
		41.557911, 38.292221, 26.222324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391590, 38.511242, 27.017332>,  <41.959068, 38.395115, 26.786673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391590, 38.511242, 27.017332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.330742, 38.290211, 26.689548>,  <41.294235, 38.157593, 26.492878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.330742, 38.290211, 26.689548>,  <41.391590, 38.511242, 27.017332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330742, 38.290211, 26.689548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608911, -0.600677, 0.518087,
		-0.778516, 0.577788, -0.245099,
		-0.152119, -0.552582, -0.819459,
		41.285107, 38.124435, 26.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701900, 38.438217, 27.048397>,  <41.391590, 38.511242, 27.017332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701900, 38.438217, 27.048397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.851288, 38.132542, 26.838047>,  <40.940918, 37.949139, 26.711836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.851288, 38.132542, 26.838047>,  <40.701900, 38.438217, 27.048397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851288, 38.132542, 26.838047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637983, -0.623128, 0.452426,
		-0.673425, 0.166534, -0.720254,
		0.373466, -0.764184, -0.525876,
		40.963329, 37.903286, 26.680285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145554, 38.038624, 27.006731>,  <40.701900, 38.438217, 27.048397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145554, 38.038624, 27.006731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.430031, 37.782532, 26.890585>,  <40.600716, 37.628876, 26.820896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.430031, 37.782532, 26.890585>,  <40.145554, 38.038624, 27.006731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430031, 37.782532, 26.890585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482725, -0.745019, 0.460351,
		-0.511058, -0.187231, -0.838907,
		0.711193, -0.640228, -0.290367,
		40.643391, 37.590462, 26.803474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801289, 37.395748, 26.775520>,  <40.145554, 38.038624, 27.006731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801289, 37.395748, 26.775520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177368, 37.289841, 26.861242>,  <40.403015, 37.226295, 26.912676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177368, 37.289841, 26.861242>,  <39.801289, 37.395748, 26.775520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177368, 37.289841, 26.861242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339743, -0.774259, 0.533945,
		0.024558, -0.574823, -0.817909,
		0.940197, -0.264767, 0.214307,
		40.459427, 37.210411, 26.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770473, 36.734764, 26.598640>,  <39.801289, 37.395748, 26.775520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770473, 36.734764, 26.598640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054935, 36.820595, 26.866436>,  <40.225613, 36.872093, 27.027113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054935, 36.820595, 26.866436>,  <39.770473, 36.734764, 26.598640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054935, 36.820595, 26.866436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482245, -0.544045, 0.686626,
		0.511569, -0.811154, -0.283419,
		0.711152, 0.214579, 0.669491,
		40.268280, 36.884968, 27.067284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865738, 36.106468, 26.921598>,  <39.770473, 36.734764, 26.598640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865738, 36.106468, 26.921598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.020645, 36.360550, 27.188892>,  <40.113590, 36.513000, 27.349270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.020645, 36.360550, 27.188892>,  <39.865738, 36.106468, 26.921598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020645, 36.360550, 27.188892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270898, -0.614404, 0.741028,
		0.881272, -0.467997, -0.065861,
		0.387264, 0.635206, 0.668237,
		40.136826, 36.551113, 27.389364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074955, 35.682152, 27.421556>,  <39.865738, 36.106468, 26.921598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074955, 35.682152, 27.421556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118717, 36.031540, 27.611326>,  <40.144974, 36.241173, 27.725187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118717, 36.031540, 27.611326>,  <40.074955, 35.682152, 27.421556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118717, 36.031540, 27.611326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267940, -0.433708, 0.860294,
		0.957204, -0.221235, 0.186590,
		0.109401, 0.873472, 0.474424,
		40.151539, 36.293583, 27.753654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424305, 35.611156, 27.994835>,  <40.074955, 35.682152, 27.421556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424305, 35.611156, 27.994835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191315, 35.930576, 28.055552>,  <40.051521, 36.122227, 28.091982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191315, 35.930576, 28.055552>,  <40.424305, 35.611156, 27.994835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191315, 35.930576, 28.055552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332761, -0.404631, 0.851788,
		0.741615, 0.445636, 0.501414,
		-0.582475, 0.798550, 0.151790,
		40.016571, 36.170143, 28.101089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.736324, 33.884579, 32.840790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696762, 34.277279, 32.905758>,  <40.673023, 34.512897, 32.944740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696762, 34.277279, 32.905758>,  <40.736324, 33.884579, 32.840790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696762, 34.277279, 32.905758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264692, -0.183296, 0.946753,
		0.959247, 0.050651, 0.277992,
		-0.098909, 0.981752, 0.162420,
		40.667091, 34.571804, 32.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135021, 33.974625, 33.404812>,  <40.736324, 33.884579, 32.840790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135021, 33.974625, 33.404812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851761, 34.256721, 33.391281>,  <40.681805, 34.425980, 33.383163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851761, 34.256721, 33.391281>,  <41.135021, 33.974625, 33.404812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851761, 34.256721, 33.391281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270095, -0.226317, 0.935857,
		0.652354, 0.671869, 0.350751,
		-0.708154, 0.705247, -0.033829,
		40.639313, 34.468296, 33.381134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122143, 34.286186, 34.116131>,  <41.135021, 33.974625, 33.404812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122143, 34.286186, 34.116131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.768570, 34.372204, 33.950035>,  <40.556427, 34.423813, 33.850376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.768570, 34.372204, 33.950035>,  <41.122143, 34.286186, 34.116131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768570, 34.372204, 33.950035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460977, -0.251568, 0.851008,
		0.078541, 0.943648, 0.321498,
		-0.883930, 0.215042, -0.415241,
		40.503391, 34.436718, 33.825462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737919, 34.510788, 34.666454>,  <41.122143, 34.286186, 34.116131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737919, 34.510788, 34.666454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459549, 34.417866, 34.394657>,  <40.292526, 34.362110, 34.231579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459549, 34.417866, 34.394657>,  <40.737919, 34.510788, 34.666454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459549, 34.417866, 34.394657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590330, -0.353712, 0.725533,
		-0.408895, 0.906046, 0.109018,
		-0.695928, -0.232310, -0.679497,
		40.250771, 34.348171, 34.190807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120846, 34.625519, 35.073929>,  <40.737919, 34.510788, 34.666454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120846, 34.625519, 35.073929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007282, 34.403233, 34.761372>,  <39.939144, 34.269863, 34.573837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007282, 34.403233, 34.761372>,  <40.120846, 34.625519, 35.073929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007282, 34.403233, 34.761372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583560, -0.546486, 0.600676,
		-0.760825, 0.626528, -0.169140,
		-0.283907, -0.555713, -0.781396,
		39.922112, 34.236519, 34.526951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393909, 34.702129, 34.949135>,  <40.120846, 34.625519, 35.073929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393909, 34.702129, 34.949135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490131, 34.347046, 34.792107>,  <39.547863, 34.133995, 34.697887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490131, 34.347046, 34.792107>,  <39.393909, 34.702129, 34.949135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490131, 34.347046, 34.792107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706634, -0.437438, 0.556162,
		-0.665435, 0.143621, -0.732509,
		0.240551, -0.887706, -0.392574,
		39.562298, 34.080734, 34.674335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765614, 34.320732, 34.808487>,  <39.393909, 34.702129, 34.949135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765614, 34.320732, 34.808487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058872, 34.050941, 34.843281>,  <39.234829, 33.889065, 34.864159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058872, 34.050941, 34.843281>,  <38.765614, 34.320732, 34.808487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058872, 34.050941, 34.843281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503126, -0.451885, 0.736657,
		-0.457587, -0.583814, -0.670652,
		0.733129, -0.674508, 0.086955,
		39.278816, 33.848598, 34.869377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416225, 33.744072, 34.875275>,  <38.765614, 34.320732, 34.808487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416225, 33.744072, 34.875275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768387, 33.624084, 35.022194>,  <38.979683, 33.552094, 35.110344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768387, 33.624084, 35.022194>,  <38.416225, 33.744072, 34.875275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768387, 33.624084, 35.022194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472316, -0.624036, 0.622492,
		0.042476, -0.721525, -0.691085,
		0.880405, -0.299970, 0.367294,
		39.032509, 33.534092, 35.132381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279392, 32.982815, 34.895367>,  <38.416225, 33.744072, 34.875275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279392, 32.982815, 34.895367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580517, 33.081741, 35.139370>,  <38.761192, 33.141098, 35.285770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580517, 33.081741, 35.139370>,  <38.279392, 32.982815, 34.895367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580517, 33.081741, 35.139370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403898, -0.558196, 0.724765,
		0.519750, -0.791992, -0.320326,
		0.752813, 0.247317, 0.610006,
		38.806362, 33.155937, 35.322372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520386, 32.408535, 35.136143>,  <38.279392, 32.982815, 34.895367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520386, 32.408535, 35.136143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.606865, 32.684338, 35.412647>,  <38.658752, 32.849819, 35.578548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.606865, 32.684338, 35.412647>,  <38.520386, 32.408535, 35.136143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606865, 32.684338, 35.412647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461703, -0.551635, 0.694644,
		0.860283, -0.469338, 0.199084,
		0.216201, 0.689508, 0.691257,
		38.671726, 32.891190, 35.620026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644337, 32.019936, 35.753731>,  <38.520386, 32.408535, 35.136143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644337, 32.019936, 35.753731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560936, 32.387722, 35.887066>,  <38.510895, 32.608395, 35.967068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560936, 32.387722, 35.887066>,  <38.644337, 32.019936, 35.753731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560936, 32.387722, 35.887066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563474, -0.391510, 0.727473,
		0.799389, -0.036143, 0.599726,
		-0.208506, 0.919464, 0.333335,
		38.498383, 32.663563, 35.987068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458778, 31.931870, 36.478619>,  <38.644337, 32.019936, 35.753731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458778, 31.931870, 36.478619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.320469, 32.295918, 36.387302>,  <38.237484, 32.514347, 36.332512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.320469, 32.295918, 36.387302>,  <38.458778, 31.931870, 36.478619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320469, 32.295918, 36.387302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784457, -0.146896, 0.602535,
		0.514844, 0.387429, 0.764744,
		-0.345777, 0.910121, -0.228293,
		38.216736, 32.568954, 36.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348232, 32.332813, 37.102722>,  <38.458778, 31.931870, 36.478619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348232, 32.332813, 37.102722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.107307, 32.481766, 36.820290>,  <37.962753, 32.571136, 36.650829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.107307, 32.481766, 36.820290>,  <38.348232, 32.332813, 37.102722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107307, 32.481766, 36.820290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785282, -0.117561, 0.607874,
		0.143356, 0.920602, 0.363236,
		-0.602313, 0.372385, -0.706080,
		37.926613, 32.593483, 36.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031761, 33.060619, 37.236374>,  <38.348232, 32.332813, 37.102722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031761, 33.060619, 37.236374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.799381, 32.812157, 37.025978>,  <37.659954, 32.663078, 36.899742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.799381, 32.812157, 37.025978>,  <38.031761, 33.060619, 37.236374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799381, 32.812157, 37.025978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673868, 0.004612, 0.738837,
		-0.456504, 0.783677, -0.421254,
		-0.580952, -0.621152, -0.525989,
		37.625095, 32.625813, 36.868183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413971, 33.595173, 37.593643>,  <38.031761, 33.060619, 37.236374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413971, 33.595173, 37.593643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495472, 33.871387, 37.871246>,  <38.544373, 34.037117, 38.037807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495472, 33.871387, 37.871246>,  <38.413971, 33.595173, 37.593643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495472, 33.871387, 37.871246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075279, 0.695725, -0.714353,
		-0.976123, 0.197798, 0.089776,
		0.203757, 0.690538, 0.694003,
		38.556599, 34.078548, 38.079449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880993, 34.172050, 37.437336>,  <38.413971, 33.595173, 37.593643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880993, 34.172050, 37.437336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183441, 34.302307, 37.664398>,  <38.364910, 34.380463, 37.800636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183441, 34.302307, 37.664398>,  <37.880993, 34.172050, 37.437336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183441, 34.302307, 37.664398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025983, 0.881664, -0.471162,
		-0.653915, 0.341507, 0.675107,
		0.756122, 0.325641, 0.567659,
		38.410278, 34.399998, 37.834698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613159, 34.812126, 37.680912>,  <37.880993, 34.172050, 37.437336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613159, 34.812126, 37.680912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.011856, 34.806667, 37.712692>,  <38.251076, 34.803391, 37.731758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.011856, 34.806667, 37.712692>,  <37.613159, 34.812126, 37.680912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011856, 34.806667, 37.712692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049328, 0.882764, -0.467219,
		-0.063757, 0.469618, 0.880565,
		0.996746, -0.013648, 0.079447,
		38.310879, 34.802574, 37.736526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738739, 35.419842, 37.837383>,  <37.613159, 34.812126, 37.680912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738739, 35.419842, 37.837383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.100407, 35.294277, 37.721493>,  <38.317406, 35.218937, 37.651958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.100407, 35.294277, 37.721493>,  <37.738739, 35.419842, 37.837383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100407, 35.294277, 37.721493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162025, 0.879558, -0.447354,
		0.395260, 0.357540, 0.846129,
		0.904166, -0.313916, -0.289724,
		38.371658, 35.200104, 37.634575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105198, 35.989647, 37.899857>,  <37.738739, 35.419842, 37.837383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105198, 35.989647, 37.899857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305634, 35.764484, 37.636932>,  <38.425896, 35.629387, 37.479179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305634, 35.764484, 37.636932>,  <38.105198, 35.989647, 37.899857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305634, 35.764484, 37.636932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211830, 0.816218, -0.537510,
		0.839072, 0.130101, 0.528234,
		0.501085, -0.562905, -0.657306,
		38.455959, 35.595612, 37.439739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838505, 36.219669, 37.858456>,  <38.105198, 35.989647, 37.899857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838505, 36.219669, 37.858456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759735, 36.025040, 37.517994>,  <38.712475, 35.908260, 37.313717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759735, 36.025040, 37.517994>,  <38.838505, 36.219669, 37.858456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759735, 36.025040, 37.517994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443472, 0.730058, -0.519949,
		0.874387, -0.479855, 0.072015,
		-0.196925, -0.486574, -0.851156,
		38.700657, 35.879066, 37.262646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397877, 36.390575, 37.384422>,  <38.838505, 36.219669, 37.858456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397877, 36.390575, 37.384422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153580, 36.235771, 37.108097>,  <39.007004, 36.142887, 36.942303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153580, 36.235771, 37.108097>,  <39.397877, 36.390575, 37.384422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153580, 36.235771, 37.108097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317302, 0.679700, -0.661308,
		0.725479, -0.623081, -0.292319,
		-0.610738, -0.387011, -0.690812,
		38.970356, 36.119667, 36.900852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789665, 36.221813, 36.739647>,  <39.397877, 36.390575, 37.384422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789665, 36.221813, 36.739647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420589, 36.229877, 36.585636>,  <39.199146, 36.234715, 36.493229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420589, 36.229877, 36.585636>,  <39.789665, 36.221813, 36.739647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420589, 36.229877, 36.585636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333456, 0.543026, -0.770669,
		0.193542, -0.839474, -0.507765,
		-0.922686, 0.020161, -0.385026,
		39.143784, 36.235924, 36.470127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840935, 36.019958, 36.024067>,  <39.789665, 36.221813, 36.739647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840935, 36.019958, 36.024067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490715, 36.211433, 36.050232>,  <39.280582, 36.326317, 36.065929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490715, 36.211433, 36.050232>,  <39.840935, 36.019958, 36.024067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490715, 36.211433, 36.050232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189547, 0.464868, -0.864852,
		-0.444402, -0.744819, -0.497747,
		-0.875545, 0.478688, 0.065410,
		39.228050, 36.355042, 36.069855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420944, 35.854328, 35.426456>,  <39.840935, 36.019958, 36.024067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420944, 35.854328, 35.426456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280624, 36.201946, 35.566002>,  <39.196434, 36.410515, 35.649731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280624, 36.201946, 35.566002>,  <39.420944, 35.854328, 35.426456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280624, 36.201946, 35.566002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101098, 0.405511, -0.908482,
		-0.930978, -0.283425, -0.230111,
		-0.350799, 0.869041, 0.348868,
		39.175385, 36.462658, 35.670662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042103, 36.143162, 34.963158>,  <39.420944, 35.854328, 35.426456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042103, 36.143162, 34.963158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084621, 36.484215, 35.167793>,  <39.110134, 36.688847, 35.290573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084621, 36.484215, 35.167793>,  <39.042103, 36.143162, 34.963158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084621, 36.484215, 35.167793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065139, 0.507429, -0.859228,
		-0.992199, 0.124657, -0.001602,
		0.106296, 0.852629, 0.511590,
		39.116508, 36.740002, 35.321270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704594, 36.628334, 34.517097>,  <39.042103, 36.143162, 34.963158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704594, 36.628334, 34.517097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905300, 36.873989, 34.760757>,  <39.025723, 37.021381, 34.906956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905300, 36.873989, 34.760757>,  <38.704594, 36.628334, 34.517097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905300, 36.873989, 34.760757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068407, 0.673840, -0.735704,
		-0.862296, 0.410820, 0.296097,
		0.501763, 0.614139, 0.609152,
		39.055828, 37.058231, 34.943504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400181, 37.211288, 34.378902>,  <38.704594, 36.628334, 34.517097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400181, 37.211288, 34.378902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744724, 37.301014, 34.561214>,  <38.951450, 37.354851, 34.670601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744724, 37.301014, 34.561214>,  <38.400181, 37.211288, 34.378902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744724, 37.301014, 34.561214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244033, 0.604199, -0.758545,
		-0.445536, 0.764608, 0.465694,
		0.861362, 0.224315, 0.455782,
		39.003132, 37.368309, 34.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453548, 37.935242, 34.373371>,  <38.400181, 37.211288, 34.378902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453548, 37.935242, 34.373371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823582, 37.794373, 34.430214>,  <39.045601, 37.709850, 34.464321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823582, 37.794373, 34.430214>,  <38.453548, 37.935242, 34.373371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823582, 37.794373, 34.430214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356230, 0.675021, -0.646101,
		0.131617, 0.648319, 0.749906,
		0.925082, -0.352177, 0.142106,
		39.101105, 37.688721, 34.472847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335480, 38.562828, 34.695568>,  <38.453548, 37.935242, 34.373371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335480, 38.562828, 34.695568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.041553, 38.824486, 34.623863>,  <37.865196, 38.981480, 34.580841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.041553, 38.824486, 34.623863>,  <38.335480, 38.562828, 34.695568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041553, 38.824486, 34.623863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619532, -0.539745, 0.569960,
		0.276079, 0.529878, 0.801879,
		-0.734820, 0.654144, -0.179264,
		37.821106, 39.020729, 34.570084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955807, 38.586872, 35.289959>,  <38.335480, 38.562828, 34.695568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955807, 38.586872, 35.289959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691494, 38.765808, 35.048878>,  <37.532906, 38.873169, 34.904228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691494, 38.765808, 35.048878>,  <37.955807, 38.586872, 35.289959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691494, 38.765808, 35.048878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748517, -0.452159, 0.485051,
		-0.055532, 0.771646, 0.633623,
		-0.660786, 0.447342, -0.602700,
		37.493259, 38.900009, 34.868069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347717, 38.894077, 35.728256>,  <37.955807, 38.586872, 35.289959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347717, 38.894077, 35.728256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.181789, 38.860485, 35.365849>,  <37.082233, 38.840332, 35.148403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.181789, 38.860485, 35.365849>,  <37.347717, 38.894077, 35.728256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181789, 38.860485, 35.365849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828244, -0.377430, 0.414195,
		-0.376742, 0.922223, 0.087013,
		-0.414822, -0.083977, -0.906019,
		37.057343, 38.835293, 35.094044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641792, 39.213013, 35.702347>,  <37.347717, 38.894077, 35.728256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641792, 39.213013, 35.702347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.667130, 38.934391, 35.416466>,  <36.682331, 38.767220, 35.244938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.667130, 38.934391, 35.416466>,  <36.641792, 39.213013, 35.702347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667130, 38.934391, 35.416466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825781, -0.438735, 0.354398,
		-0.560423, 0.567741, -0.602990,
		0.063346, -0.696550, -0.714706,
		36.686134, 38.725426, 35.202053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873070, 39.128986, 35.520172>,  <36.641792, 39.213013, 35.702347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873070, 39.128986, 35.520172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.088314, 38.816830, 35.392780>,  <36.217461, 38.629536, 35.316345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.088314, 38.816830, 35.392780>,  <35.873070, 39.128986, 35.520172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088314, 38.816830, 35.392780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771882, -0.608037, 0.185712,
		-0.338578, 0.145899, -0.929558,
		0.538110, -0.780388, -0.318484,
		36.249748, 38.582714, 35.297234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426628, 38.651237, 35.218559>,  <35.873070, 39.128986, 35.520172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426628, 38.651237, 35.218559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738525, 38.420738, 35.316486>,  <35.925663, 38.282440, 35.375240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738525, 38.420738, 35.316486>,  <35.426628, 38.651237, 35.218559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738525, 38.420738, 35.316486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617519, -0.772336, 0.148885,
		0.103284, -0.267270, -0.958071,
		0.779746, -0.576249, 0.244814,
		35.972450, 38.247864, 35.389931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271049, 37.977642, 34.860203>,  <35.426628, 38.651237, 35.218559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271049, 37.977642, 34.860203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.540337, 37.920792, 35.150467>,  <35.701908, 37.886681, 35.324627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.540337, 37.920792, 35.150467>,  <35.271049, 37.977642, 34.860203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540337, 37.920792, 35.150467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525325, -0.782572, 0.334088,
		0.520400, -0.606120, -0.601500,
		0.673215, -0.142124, 0.725660,
		35.742302, 37.878155, 35.368164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401066, 37.337353, 34.824875>,  <35.271049, 37.977642, 34.860203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401066, 37.337353, 34.824875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.541431, 37.402149, 35.193790>,  <35.625652, 37.441029, 35.415138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.541431, 37.402149, 35.193790>,  <35.401066, 37.337353, 34.824875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541431, 37.402149, 35.193790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352619, -0.889563, 0.290410,
		0.867477, -0.427126, -0.255042,
		0.350917, 0.161991, 0.922288,
		35.646706, 37.450748, 35.470478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683186, 36.731987, 35.021412>,  <35.401066, 37.337353, 34.824875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683186, 36.731987, 35.021412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.613228, 36.916153, 35.369534>,  <35.571255, 37.026653, 35.578407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.613228, 36.916153, 35.369534>,  <35.683186, 36.731987, 35.021412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613228, 36.916153, 35.369534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402306, -0.840188, 0.363639,
		0.898645, -0.286531, 0.332171,
		-0.174892, 0.460417, 0.870304,
		35.560760, 37.054279, 35.630627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851364, 36.248722, 35.552326>,  <35.683186, 36.731987, 35.021412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851364, 36.248722, 35.552326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627815, 36.529842, 35.728386>,  <35.493687, 36.698513, 35.834023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627815, 36.529842, 35.728386>,  <35.851364, 36.248722, 35.552326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627815, 36.529842, 35.728386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482835, -0.707311, 0.516315,
		0.674191, 0.076034, 0.734633,
		-0.558871, 0.702802, 0.440151,
		35.460155, 36.740685, 35.860432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892509, 36.031418, 36.223572>,  <35.851364, 36.248722, 35.552326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892509, 36.031418, 36.223572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584145, 36.285595, 36.206089>,  <35.399124, 36.438099, 36.195599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.584145, 36.285595, 36.206089>,  <35.892509, 36.031418, 36.223572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584145, 36.285595, 36.206089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542579, -0.619214, 0.567611,
		0.333622, 0.461290, 0.822136,
		-0.770912, 0.635441, -0.043703,
		35.352871, 36.476227, 36.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666813, 36.183090, 36.988014>,  <35.892509, 36.031418, 36.223572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666813, 36.183090, 36.988014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.366573, 36.245483, 36.731182>,  <35.186428, 36.282921, 36.577084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.366573, 36.245483, 36.731182>,  <35.666813, 36.183090, 36.988014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366573, 36.245483, 36.731182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548973, -0.688020, 0.474614,
		-0.367728, 0.708729, 0.602062,
		-0.750603, 0.155987, -0.642077,
		35.141392, 36.292278, 36.538559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.472961, 40.929688, 33.026257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218945, 40.867695, 32.723549>,  <40.066536, 40.830502, 32.541924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218945, 40.867695, 32.723549>,  <40.472961, 40.929688, 33.026257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218945, 40.867695, 32.723549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751085, -0.105072, 0.651790,
		-0.180529, 0.982314, -0.049677,
		-0.635043, -0.154978, -0.756771,
		40.028431, 40.821201, 32.496517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924534, 41.307095, 33.260166>,  <40.472961, 40.929688, 33.026257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924534, 41.307095, 33.260166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770290, 41.086311, 32.964424>,  <39.677742, 40.953842, 32.786980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770290, 41.086311, 32.964424>,  <39.924534, 41.307095, 33.260166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770290, 41.086311, 32.964424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817663, -0.166825, 0.550996,
		-0.427471, 0.817012, -0.386989,
		-0.385610, -0.551961, -0.739353,
		39.654606, 40.920723, 32.742619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296761, 41.532463, 33.261181>,  <39.924534, 41.307095, 33.260166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296761, 41.532463, 33.261181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290215, 41.166836, 33.099091>,  <39.286285, 40.947460, 33.001835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290215, 41.166836, 33.099091>,  <39.296761, 41.532463, 33.261181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290215, 41.166836, 33.099091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721441, -0.269810, 0.637750,
		-0.692282, 0.302783, -0.655033,
		-0.016365, -0.914071, -0.405224,
		39.285305, 40.892616, 32.977524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661606, 41.245354, 33.504585>,  <39.296761, 41.532463, 33.261181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661606, 41.245354, 33.504585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795460, 40.912136, 33.328377>,  <38.875771, 40.712204, 33.222652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795460, 40.912136, 33.328377>,  <38.661606, 41.245354, 33.504585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795460, 40.912136, 33.328377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720362, -0.527512, 0.450345,
		-0.607538, 0.166636, -0.776615,
		0.334630, -0.833045, -0.440521,
		38.895847, 40.662224, 33.196220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087273, 40.888103, 33.163662>,  <38.661606, 41.245354, 33.504585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087273, 40.888103, 33.163662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386986, 40.634846, 33.241341>,  <38.566814, 40.482891, 33.287949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386986, 40.634846, 33.241341>,  <38.087273, 40.888103, 33.163662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386986, 40.634846, 33.241341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582345, -0.490274, 0.648463,
		-0.315361, -0.598969, -0.736060,
		0.749280, -0.633141, 0.194193,
		38.611771, 40.444904, 33.299599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868469, 40.214176, 33.007904>,  <38.087273, 40.888103, 33.163662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868469, 40.214176, 33.007904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183949, 40.141552, 33.242847>,  <38.373238, 40.097977, 33.383812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183949, 40.141552, 33.242847>,  <37.868469, 40.214176, 33.007904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183949, 40.141552, 33.242847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577967, -0.544612, 0.607743,
		0.209537, -0.818800, -0.534473,
		0.788700, -0.181564, 0.587356,
		38.420559, 40.087082, 33.419056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046803, 39.497761, 33.064266>,  <37.868469, 40.214176, 33.007904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046803, 39.497761, 33.064266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191238, 39.674355, 33.392830>,  <38.277901, 39.780312, 33.589966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191238, 39.674355, 33.392830>,  <38.046803, 39.497761, 33.064266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191238, 39.674355, 33.392830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469765, -0.674791, 0.569191,
		0.805566, -0.591395, -0.036264,
		0.361088, 0.441486, 0.821405,
		38.299564, 39.806801, 33.639252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016960, 38.885242, 33.423481>,  <38.046803, 39.497761, 33.064266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016960, 38.885242, 33.423481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078278, 39.169903, 33.697723>,  <38.115067, 39.340698, 33.862270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078278, 39.169903, 33.697723>,  <38.016960, 38.885242, 33.423481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078278, 39.169903, 33.697723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460003, -0.562660, 0.686885,
		0.874584, -0.420676, 0.241109,
		0.153294, 0.711650, 0.685606,
		38.124268, 39.383396, 33.903404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344727, 38.575893, 33.985752>,  <38.016960, 38.885242, 33.423481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344727, 38.575893, 33.985752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140202, 38.893410, 34.117481>,  <38.017487, 39.083920, 34.196518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140202, 38.893410, 34.117481>,  <38.344727, 38.575893, 33.985752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140202, 38.893410, 34.117481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522349, -0.591347, 0.614378,
		0.682433, 0.142117, 0.716999,
		-0.511309, 0.793795, 0.329320,
		37.986809, 39.131550, 34.216278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154667, 38.580723, 34.087288>,  <38.344727, 38.575893, 33.985752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154667, 38.580723, 34.087288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323845, 38.222046, 34.139542>,  <39.425350, 38.006840, 34.170895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323845, 38.222046, 34.139542>,  <39.154667, 38.580723, 34.087288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323845, 38.222046, 34.139542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638271, 0.192468, -0.745363,
		0.643219, 0.398622, 0.653735,
		0.422941, -0.896692, 0.130630,
		39.450726, 37.953037, 34.178730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871334, 38.710842, 34.174397>,  <39.154667, 38.580723, 34.087288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871334, 38.710842, 34.174397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834370, 38.332981, 34.048481>,  <39.812191, 38.106266, 33.972931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834370, 38.332981, 34.048481>,  <39.871334, 38.710842, 34.174397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834370, 38.332981, 34.048481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845734, 0.092399, -0.525543,
		0.525542, -0.314795, 0.790386,
		-0.092407, -0.944652, -0.314792,
		39.806648, 38.049587, 33.954044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527557, 38.444336, 34.110386>,  <39.871334, 38.710842, 34.174397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527557, 38.444336, 34.110386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304195, 38.215031, 33.870533>,  <40.170177, 38.077450, 33.726620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304195, 38.215031, 33.870533>,  <40.527557, 38.444336, 34.110386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304195, 38.215031, 33.870533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821975, -0.284760, -0.493224,
		0.111994, -0.768300, 0.630216,
		-0.558404, -0.573260, -0.599632,
		40.136673, 38.043053, 33.690643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895981, 37.819420, 34.052608>,  <40.527557, 38.444336, 34.110386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895981, 37.819420, 34.052608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644234, 37.837955, 33.742317>,  <40.493187, 37.849075, 33.556145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644234, 37.837955, 33.742317>,  <40.895981, 37.819420, 34.052608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644234, 37.837955, 33.742317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756348, -0.192668, -0.625154,
		-0.178422, -0.980169, 0.086216,
		-0.629368, 0.046332, -0.775725,
		40.455425, 37.851856, 33.509598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388596, 37.567963, 33.535313>,  <40.895981, 37.819420, 34.052608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388596, 37.567963, 33.535313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048065, 37.654839, 33.344288>,  <40.843746, 37.706966, 33.229671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048065, 37.654839, 33.344288>,  <41.388596, 37.567963, 33.535313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048065, 37.654839, 33.344288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487781, -0.007451, -0.872935,
		-0.193154, -0.976100, -0.099599,
		-0.851329, 0.217193, -0.477562,
		40.792667, 37.719997, 33.201019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407089, 37.125896, 32.936401>,  <41.388596, 37.567963, 33.535313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407089, 37.125896, 32.936401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180706, 37.438240, 32.830601>,  <41.044876, 37.625645, 32.767120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180706, 37.438240, 32.830601>,  <41.407089, 37.125896, 32.936401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180706, 37.438240, 32.830601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442961, 0.017427, -0.896372,
		-0.695327, -0.624469, -0.355751,
		-0.565956, 0.780855, -0.264497,
		41.010918, 37.672497, 32.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096764, 36.960857, 32.232468>,  <41.407089, 37.125896, 32.936401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096764, 36.960857, 32.232468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086678, 37.356419, 32.291031>,  <41.080627, 37.593754, 32.326168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086678, 37.356419, 32.291031>,  <41.096764, 36.960857, 32.232468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086678, 37.356419, 32.291031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519940, 0.138059, -0.842972,
		-0.853830, 0.054867, -0.517652,
		-0.025215, 0.988903, 0.146407,
		41.079113, 37.653091, 32.334953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058231, 37.204151, 31.536289>,  <41.096764, 36.960857, 32.232468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058231, 37.204151, 31.536289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168957, 37.529697, 31.740643>,  <41.235390, 37.725025, 31.863255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168957, 37.529697, 31.740643>,  <41.058231, 37.204151, 31.536289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168957, 37.529697, 31.740643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541678, 0.306981, -0.782527,
		-0.793702, 0.493346, -0.355876,
		0.276810, 0.813863, 0.510886,
		41.251999, 37.773857, 31.893908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078209, 37.782520, 31.055805>,  <41.058231, 37.204151, 31.536289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078209, 37.782520, 31.055805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327183, 37.856159, 31.360090>,  <41.476566, 37.900341, 31.542662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327183, 37.856159, 31.360090>,  <41.078209, 37.782520, 31.055805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327183, 37.856159, 31.360090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717712, 0.253431, -0.648585,
		-0.312188, 0.949675, 0.025619,
		0.622438, 0.184093, 0.760711,
		41.513912, 37.911388, 31.588303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327515, 38.539803, 31.070400>,  <41.078209, 37.782520, 31.055805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327515, 38.539803, 31.070400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610825, 38.346550, 31.276289>,  <41.780811, 38.230598, 31.399822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610825, 38.346550, 31.276289>,  <41.327515, 38.539803, 31.070400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610825, 38.346550, 31.276289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677808, 0.261628, -0.687115,
		0.197300, 0.835546, 0.512773,
		0.708272, -0.483129, 0.514720,
		41.823307, 38.201611, 31.430706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957653, 39.063583, 31.180996>,  <41.327515, 38.539803, 31.070400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957653, 39.063583, 31.180996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074013, 38.683197, 31.223040>,  <42.143829, 38.454967, 31.248266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074013, 38.683197, 31.223040>,  <41.957653, 39.063583, 31.180996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074013, 38.683197, 31.223040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809332, 0.185998, -0.557124,
		0.510254, 0.247135, 0.823751,
		0.290901, -0.950962, 0.105108,
		42.161282, 38.397907, 31.254572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659489, 39.080990, 31.220142>,  <41.957653, 39.063583, 31.180996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659489, 39.080990, 31.220142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633423, 38.684700, 31.172436>,  <42.617783, 38.446926, 31.143812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633423, 38.684700, 31.172436>,  <42.659489, 39.080990, 31.220142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633423, 38.684700, 31.172436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877467, 0.000028, -0.479637,
		0.475190, -0.135905, 0.869324,
		-0.065161, -0.990722, -0.119266,
		42.613876, 38.387482, 31.136656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299076, 38.832443, 31.258623>,  <42.659489, 39.080990, 31.220142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299076, 38.832443, 31.258623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135048, 38.509293, 31.089304>,  <43.036629, 38.315403, 30.987713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135048, 38.509293, 31.089304>,  <43.299076, 38.832443, 31.258623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135048, 38.509293, 31.089304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696349, 0.022403, -0.717353,
		0.589013, -0.588931, 0.553375,
		-0.410075, -0.807873, -0.423297,
		43.012024, 38.266930, 30.962315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780918, 38.307060, 31.234407>,  <43.299076, 38.832443, 31.258623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780918, 38.307060, 31.234407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530884, 38.250774, 30.927301>,  <43.380863, 38.217003, 30.743038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530884, 38.250774, 30.927301>,  <43.780918, 38.307060, 31.234407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530884, 38.250774, 30.927301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778367, -0.038817, -0.626608,
		0.058372, -0.989289, 0.133794,
		-0.625089, -0.140718, -0.767764,
		43.343357, 38.208561, 30.696972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.291851, 38.309479, 26.542917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488533, 38.513897, 26.824926>,  <38.606541, 38.636547, 26.994131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488533, 38.513897, 26.824926>,  <38.291851, 38.309479, 26.542917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488533, 38.513897, 26.824926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485700, -0.511041, 0.709177,
		0.722720, -0.691134, -0.003064,
		0.491702, 0.511049, 0.705023,
		38.636044, 38.667213, 27.036434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529392, 37.856712, 27.037399>,  <38.291851, 38.309479, 26.542917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529392, 37.856712, 27.037399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477436, 38.211899, 27.213871>,  <38.446262, 38.425011, 27.319756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477436, 38.211899, 27.213871>,  <38.529392, 37.856712, 27.037399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477436, 38.211899, 27.213871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496940, -0.443332, 0.745994,
		0.858010, -0.122346, 0.498850,
		-0.129887, 0.887968, 0.441182,
		38.438469, 38.478291, 27.346226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717457, 37.765743, 27.739492>,  <38.529392, 37.856712, 27.037399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717457, 37.765743, 27.739492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481991, 38.089092, 27.738829>,  <38.340710, 38.283100, 27.738430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481991, 38.089092, 27.738829>,  <38.717457, 37.765743, 27.739492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481991, 38.089092, 27.738829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565662, -0.410455, 0.715230,
		0.577492, 0.421971, 0.698887,
		-0.588668, 0.808373, -0.001658,
		38.305389, 38.331604, 27.738331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660034, 37.841412, 28.402809>,  <38.717457, 37.765743, 27.739492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660034, 37.841412, 28.402809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358009, 38.032032, 28.222685>,  <38.176796, 38.146404, 28.114611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358009, 38.032032, 28.222685>,  <38.660034, 37.841412, 28.402809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358009, 38.032032, 28.222685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617656, -0.286594, 0.732369,
		0.219956, 0.831121, 0.510741,
		-0.755063, 0.476552, -0.450309,
		38.131489, 38.174999, 28.087593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310711, 38.206081, 28.919874>,  <38.660034, 37.841412, 28.402809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310711, 38.206081, 28.919874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040558, 38.163342, 28.628002>,  <37.878464, 38.137699, 28.452879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040558, 38.163342, 28.628002>,  <38.310711, 38.206081, 28.919874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040558, 38.163342, 28.628002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700704, -0.215514, 0.680123,
		-0.229927, 0.970638, 0.070687,
		-0.675387, -0.106848, -0.729682,
		37.837940, 38.131287, 28.409098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719723, 38.426434, 29.220394>,  <38.310711, 38.206081, 28.919874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719723, 38.426434, 29.220394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591080, 38.210087, 28.909515>,  <37.513893, 38.080276, 28.722988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591080, 38.210087, 28.909515>,  <37.719723, 38.426434, 29.220394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591080, 38.210087, 28.909515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756476, -0.346895, 0.554443,
		-0.569486, 0.766241, -0.297591,
		-0.321604, -0.540869, -0.777195,
		37.494598, 38.047825, 28.676357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032394, 38.582169, 29.202326>,  <37.719723, 38.426434, 29.220394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032394, 38.582169, 29.202326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062641, 38.248287, 28.984129>,  <37.080788, 38.047958, 28.853210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062641, 38.248287, 28.984129>,  <37.032394, 38.582169, 29.202326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062641, 38.248287, 28.984129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723133, -0.422567, 0.546367,
		-0.686558, 0.353150, -0.635550,
		0.075613, -0.834699, -0.545491,
		37.085323, 37.997879, 28.820482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346321, 38.330429, 28.997280>,  <37.032394, 38.582169, 29.202326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346321, 38.330429, 28.997280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.589012, 38.014557, 28.960857>,  <36.734627, 37.825035, 28.939003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.589012, 38.014557, 28.960857>,  <36.346321, 38.330429, 28.997280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589012, 38.014557, 28.960857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651992, -0.559901, 0.511290,
		-0.454737, -0.250846, -0.854571,
		0.606730, -0.789675, -0.091058,
		36.771030, 37.777653, 28.933540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909027, 37.758907, 28.797230>,  <36.346321, 38.330429, 28.997280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909027, 37.758907, 28.797230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234867, 37.570137, 28.932116>,  <36.430370, 37.456875, 29.013048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234867, 37.570137, 28.932116>,  <35.909027, 37.758907, 28.797230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234867, 37.570137, 28.932116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545686, -0.820616, 0.169755,
		0.196612, -0.322296, -0.925996,
		0.814598, -0.471927, 0.337215,
		36.479248, 37.428558, 29.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660961, 37.033604, 28.812309>,  <35.909027, 37.758907, 28.797230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660961, 37.033604, 28.812309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016262, 37.019844, 28.995537>,  <36.229443, 37.011589, 29.105474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016262, 37.019844, 28.995537>,  <35.660961, 37.033604, 28.812309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016262, 37.019844, 28.995537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295059, -0.807003, 0.511553,
		0.352069, -0.589545, -0.726969,
		0.888250, -0.034397, 0.458071,
		36.282738, 37.009525, 29.132957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983387, 36.415844, 28.865358>,  <35.660961, 37.033604, 28.812309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983387, 36.415844, 28.865358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131229, 36.592171, 29.192545>,  <36.219936, 36.697968, 29.388857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131229, 36.592171, 29.192545>,  <35.983387, 36.415844, 28.865358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131229, 36.592171, 29.192545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388296, -0.726479, 0.566969,
		0.844167, -0.527168, -0.097343,
		0.369606, 0.440819, 0.817967,
		36.242111, 36.724415, 29.437935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159370, 35.854439, 29.355940>,  <35.983387, 36.415844, 28.865358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159370, 35.854439, 29.355940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152637, 36.172295, 29.598679>,  <36.148598, 36.363007, 29.744322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152637, 36.172295, 29.598679>,  <36.159370, 35.854439, 29.355940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152637, 36.172295, 29.598679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419877, -0.556444, 0.716989,
		0.907425, -0.242731, 0.343019,
		-0.016835, 0.794640, 0.606848,
		36.147587, 36.410686, 29.780733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332386, 35.603046, 30.059296>,  <36.159370, 35.854439, 29.355940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332386, 35.603046, 30.059296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.200645, 35.963428, 30.172295>,  <36.121601, 36.179657, 30.240093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.200645, 35.963428, 30.172295>,  <36.332386, 35.603046, 30.059296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200645, 35.963428, 30.172295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374399, -0.399276, 0.836901,
		0.866807, 0.169867, 0.468819,
		-0.329350, 0.900957, 0.282497,
		36.101841, 36.233715, 30.257044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546547, 35.699436, 30.769033>,  <36.332386, 35.603046, 30.059296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546547, 35.699436, 30.769033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242168, 35.947971, 30.694309>,  <36.059540, 36.097092, 30.649475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242168, 35.947971, 30.694309>,  <36.546547, 35.699436, 30.769033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242168, 35.947971, 30.694309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408068, -0.234486, 0.882325,
		0.504414, 0.747636, 0.431980,
		-0.760951, 0.621334, -0.186808,
		36.013882, 36.134373, 30.638268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268242, 35.836689, 31.139080>,  <36.546547, 35.699436, 30.769033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268242, 35.836689, 31.139080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415352, 35.469467, 31.079865>,  <37.503620, 35.249134, 31.044334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415352, 35.469467, 31.079865>,  <37.268242, 35.836689, 31.139080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415352, 35.469467, 31.079865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436062, 0.310871, -0.844517,
		0.821333, 0.246042, 0.514660,
		0.367780, -0.918054, -0.148039,
		37.525684, 35.194050, 31.035452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034332, 35.920975, 31.140518>,  <37.268242, 35.836689, 31.139080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034332, 35.920975, 31.140518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989475, 35.571739, 30.950726>,  <37.962559, 35.362198, 30.836849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989475, 35.571739, 30.950726>,  <38.034332, 35.920975, 31.140518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989475, 35.571739, 30.950726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345987, 0.413309, -0.842299,
		0.931513, -0.258624, 0.255728,
		-0.112144, -0.873092, -0.474484,
		37.955833, 35.309811, 30.808380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628010, 35.819260, 30.880987>,  <38.034332, 35.920975, 31.140518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628010, 35.819260, 30.880987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380413, 35.584774, 30.671911>,  <38.231853, 35.444084, 30.546467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380413, 35.584774, 30.671911>,  <38.628010, 35.819260, 30.880987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380413, 35.584774, 30.671911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519475, 0.193561, -0.832274,
		0.589059, -0.786697, 0.184708,
		-0.618995, -0.586209, -0.522688,
		38.194714, 35.408913, 30.515104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104519, 35.289474, 30.607086>,  <38.628010, 35.819260, 30.880987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104519, 35.289474, 30.607086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776093, 35.268135, 30.379755>,  <38.579037, 35.255329, 30.243357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776093, 35.268135, 30.379755>,  <39.104519, 35.289474, 30.607086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776093, 35.268135, 30.379755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568870, 0.005881, -0.822406,
		0.047224, -0.998558, 0.025524,
		-0.821071, -0.053357, -0.568328,
		38.529770, 35.252129, 30.209257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222610, 34.782463, 30.035158>,  <39.104519, 35.289474, 30.607086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222610, 34.782463, 30.035158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943409, 35.043369, 29.916941>,  <38.775887, 35.199913, 29.846010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943409, 35.043369, 29.916941>,  <39.222610, 34.782463, 30.035158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943409, 35.043369, 29.916941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543640, 0.214039, -0.811568,
		-0.466098, -0.727146, -0.503995,
		-0.698003, 0.652262, -0.295543,
		38.734009, 35.239048, 29.828278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313129, 34.728790, 29.319963>,  <39.222610, 34.782463, 30.035158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313129, 34.728790, 29.319963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087883, 35.056263, 29.364983>,  <38.952736, 35.252747, 29.391994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087883, 35.056263, 29.364983>,  <39.313129, 34.728790, 29.319963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087883, 35.056263, 29.364983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423567, 0.402883, -0.811342,
		-0.709570, -0.409210, -0.573635,
		-0.563117, 0.818677, 0.112546,
		38.918949, 35.301865, 29.398746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118465, 34.890099, 28.678429>,  <39.313129, 34.728790, 29.319963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118465, 34.890099, 28.678429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.053116, 35.226154, 28.885300>,  <39.013905, 35.427788, 29.009422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.053116, 35.226154, 28.885300>,  <39.118465, 34.890099, 28.678429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053116, 35.226154, 28.885300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221602, 0.542074, -0.810585,
		-0.961354, -0.017820, -0.274737,
		-0.163373, 0.840142, 0.517176,
		39.004105, 35.478195, 29.040453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722111, 35.368233, 28.210175>,  <39.118465, 34.890099, 28.678429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722111, 35.368233, 28.210175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926495, 35.568882, 28.489399>,  <39.049126, 35.689274, 28.656933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926495, 35.568882, 28.489399>,  <38.722111, 35.368233, 28.210175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926495, 35.568882, 28.489399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458617, 0.527759, -0.714941,
		-0.727042, 0.685449, 0.039609,
		0.510960, 0.501627, 0.698062,
		39.079784, 35.719372, 28.698818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625668, 36.058376, 28.019724>,  <38.722111, 35.368233, 28.210175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625668, 36.058376, 28.019724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.950672, 36.055042, 28.252880>,  <39.145676, 36.053043, 28.392775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.950672, 36.055042, 28.252880>,  <38.625668, 36.058376, 28.019724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950672, 36.055042, 28.252880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450161, 0.644271, -0.618280,
		-0.370389, 0.764752, 0.527225,
		0.812507, -0.008332, 0.582892,
		39.194424, 36.052544, 28.427748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846306, 36.723057, 27.960190>,  <38.625668, 36.058376, 28.019724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846306, 36.723057, 27.960190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154449, 36.536053, 28.133619>,  <39.339336, 36.423851, 28.237677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154449, 36.536053, 28.133619>,  <38.846306, 36.723057, 27.960190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154449, 36.536053, 28.133619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634107, 0.632933, -0.444190,
		-0.066761, 0.617117, 0.784034,
		0.770358, -0.467507, 0.433573,
		39.385555, 36.395802, 28.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326416, 37.221161, 28.286501>,  <38.846306, 36.723057, 27.960190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326416, 37.221161, 28.286501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525341, 36.881748, 28.214201>,  <39.644695, 36.678101, 28.170820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525341, 36.881748, 28.214201>,  <39.326416, 37.221161, 28.286501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525341, 36.881748, 28.214201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690657, 0.513297, -0.509430,
		0.525048, 0.128507, 0.841314,
		0.497310, -0.848535, -0.180751,
		39.674534, 36.627186, 28.159975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961792, 37.497246, 28.246563>,  <39.326416, 37.221161, 28.286501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961792, 37.497246, 28.246563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010593, 37.132786, 28.089127>,  <40.039875, 36.914108, 27.994665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010593, 37.132786, 28.089127>,  <39.961792, 37.497246, 28.246563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010593, 37.132786, 28.089127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629623, 0.377603, -0.678963,
		0.767261, -0.164977, 0.619753,
		0.122007, -0.911153, -0.393593,
		40.047195, 36.859440, 27.971048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631165, 37.477650, 28.154699>,  <39.961792, 37.497246, 28.246563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631165, 37.477650, 28.154699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497105, 37.177597, 27.926674>,  <40.416668, 36.997566, 27.789858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497105, 37.177597, 27.926674>,  <40.631165, 37.477650, 28.154699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497105, 37.177597, 27.926674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613562, 0.285397, -0.736268,
		0.714995, -0.596529, 0.364604,
		-0.335148, -0.750135, -0.570065,
		40.396561, 36.952557, 27.755655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195652, 37.003166, 27.954767>,  <40.631165, 37.477650, 28.154699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195652, 37.003166, 27.954767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.913437, 36.990051, 27.671602>,  <40.744106, 36.982182, 27.501703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.913437, 36.990051, 27.671602>,  <41.195652, 37.003166, 27.954767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913437, 36.990051, 27.671602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679768, 0.251072, -0.689114,
		0.200333, -0.967413, -0.154851,
		-0.705537, -0.032789, -0.707914,
		40.701775, 36.980213, 27.459229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611382, 36.441399, 27.802700>,  <41.195652, 37.003166, 27.954767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611382, 36.441399, 27.802700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.886448, 36.150990, 27.801718>,  <42.051487, 35.976746, 27.801128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.886448, 36.150990, 27.801718>,  <41.611382, 36.441399, 27.802700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886448, 36.150990, 27.801718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490698, -0.467264, 0.735445,
		-0.535099, -0.504534, -0.677580,
		0.687666, -0.726023, -0.002458,
		42.092747, 35.933182, 27.800982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258381, 35.843082, 27.973186>,  <41.611382, 36.441399, 27.802700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258381, 35.843082, 27.973186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.633522, 35.728161, 28.051048>,  <41.858608, 35.659210, 28.097765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.633522, 35.728161, 28.051048>,  <41.258381, 35.843082, 27.973186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633522, 35.728161, 28.051048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298372, -0.381114, 0.875058,
		-0.177216, -0.878756, -0.443151,
		0.937854, -0.287298, 0.194656,
		41.914879, 35.641972, 28.109446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237305, 35.077423, 28.159998>,  <41.258381, 35.843082, 27.973186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237305, 35.077423, 28.159998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576515, 35.219845, 28.317007>,  <41.780041, 35.305298, 28.411213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576515, 35.219845, 28.317007>,  <41.237305, 35.077423, 28.159998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576515, 35.219845, 28.317007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213789, -0.447888, 0.868154,
		0.484917, -0.820135, -0.303700,
		0.848027, 0.356055, 0.392524,
		41.830925, 35.326660, 28.434765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527798, 34.563984, 28.590445>,  <41.237305, 35.077423, 28.159998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527798, 34.563984, 28.590445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683582, 34.912792, 28.709038>,  <41.777054, 35.122078, 28.780193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683582, 34.912792, 28.709038>,  <41.527798, 34.563984, 28.590445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683582, 34.912792, 28.709038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180153, -0.243562, 0.953007,
		0.903252, -0.424572, 0.062239,
		0.389461, 0.872018, 0.296485,
		41.800419, 35.174397, 28.797983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943115, 34.402233, 29.260120>,  <41.527798, 34.563984, 28.590445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943115, 34.402233, 29.260120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918430, 34.800797, 29.283308>,  <41.903622, 35.039936, 29.297220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918430, 34.800797, 29.283308>,  <41.943115, 34.402233, 29.260120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918430, 34.800797, 29.283308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285901, -0.073293, 0.955452,
		0.956270, 0.042387, 0.289397,
		-0.061710, 0.996409, 0.057969,
		41.899918, 35.099720, 29.300699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299969, 34.574158, 29.867176>,  <41.943115, 34.402233, 29.260120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299969, 34.574158, 29.867176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.065186, 34.886757, 29.782568>,  <41.924316, 35.074318, 29.731804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.065186, 34.886757, 29.782568>,  <42.299969, 34.574158, 29.867176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065186, 34.886757, 29.782568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323071, 0.013469, 0.946279,
		0.742365, 0.623760, 0.244574,
		-0.586957, 0.781499, -0.211518,
		41.889099, 35.121208, 29.719112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463512, 35.061630, 30.313616>,  <42.299969, 34.574158, 29.867176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463512, 35.061630, 30.313616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.097477, 35.176460, 30.200340>,  <41.877853, 35.245358, 30.132376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.097477, 35.176460, 30.200340>,  <42.463512, 35.061630, 30.313616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097477, 35.176460, 30.200340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272773, 0.076543, 0.959029,
		0.296991, 0.954845, 0.008262,
		-0.915091, 0.287077, -0.283188,
		41.822948, 35.262585, 30.115383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270485, 35.709152, 30.642715>,  <42.463512, 35.061630, 30.313616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270485, 35.709152, 30.642715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.942089, 35.508648, 30.533377>,  <41.745052, 35.388348, 30.467773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.942089, 35.508648, 30.533377>,  <42.270485, 35.709152, 30.642715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942089, 35.508648, 30.533377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410635, 0.185766, 0.892676,
		-0.396683, 0.845122, -0.358346,
		-0.820988, -0.501259, -0.273346,
		41.695793, 35.358269, 30.451372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715122, 36.048206, 30.926811>,  <42.270485, 35.709152, 30.642715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715122, 36.048206, 30.926811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567959, 35.681030, 30.867439>,  <41.479660, 35.460724, 30.831816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567959, 35.681030, 30.867439>,  <41.715122, 36.048206, 30.926811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567959, 35.681030, 30.867439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428650, 0.025772, 0.903103,
		-0.825166, 0.395887, -0.402956,
		-0.367912, -0.917937, -0.148431,
		41.457584, 35.405647, 30.822910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045547, 36.105522, 31.023039>,  <41.715122, 36.048206, 30.926811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045547, 36.105522, 31.023039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.144306, 35.725430, 31.099043>,  <41.203560, 35.497375, 31.144646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.144306, 35.725430, 31.099043>,  <41.045547, 36.105522, 31.023039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144306, 35.725430, 31.099043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463530, 0.056387, 0.884285,
		-0.850988, -0.306405, -0.426539,
		0.246898, -0.950230, 0.190012,
		41.218376, 35.440361, 31.156046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311905, 35.892250, 31.300945>,  <41.045547, 36.105522, 31.023039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311905, 35.892250, 31.300945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.568245, 35.602798, 31.403454>,  <40.722050, 35.429127, 31.464958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.568245, 35.602798, 31.403454>,  <40.311905, 35.892250, 31.300945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568245, 35.602798, 31.403454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585085, -0.244292, 0.773303,
		-0.496979, -0.645510, -0.579938,
		0.640849, -0.723628, 0.256270,
		40.760498, 35.385712, 31.480335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855949, 35.396420, 31.655163>,  <40.311905, 35.892250, 31.300945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855949, 35.396420, 31.655163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229343, 35.275665, 31.732599>,  <40.453381, 35.203213, 31.779062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229343, 35.275665, 31.732599>,  <39.855949, 35.396420, 31.655163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229343, 35.275665, 31.732599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311824, -0.416605, 0.853935,
		-0.177137, -0.857500, -0.483028,
		0.933481, -0.301884, 0.193593,
		40.509388, 35.185101, 31.790678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765030, 34.742470, 31.914076>,  <39.855949, 35.396420, 31.655163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765030, 34.742470, 31.914076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127560, 34.856369, 32.038971>,  <40.345078, 34.924709, 32.113907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127560, 34.856369, 32.038971>,  <39.765030, 34.742470, 31.914076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127560, 34.856369, 32.038971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256978, -0.215175, 0.942158,
		0.335468, -0.934139, -0.121843,
		0.906324, 0.284752, 0.312237,
		40.399456, 34.941795, 32.132641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090668, 34.183052, 32.256927>,  <39.765030, 34.742470, 31.914076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090668, 34.183052, 32.256927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.286186, 34.505714, 32.389824>,  <40.403496, 34.699314, 32.469563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.286186, 34.505714, 32.389824>,  <40.090668, 34.183052, 32.256927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286186, 34.505714, 32.389824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247430, -0.237010, 0.939470,
		0.836576, -0.541412, 0.083743,
		0.488793, 0.806659, 0.332239,
		40.432823, 34.747711, 32.489494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.282459, 37.826851, 30.452803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.925823, 37.969200, 30.340790>,  <43.711842, 38.054607, 30.273582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.925823, 37.969200, 30.340790>,  <44.282459, 37.826851, 30.452803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925823, 37.969200, 30.340790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343247, 0.127750, -0.930517,
		-0.295368, -0.925763, -0.236052,
		-0.891594, 0.355869, -0.280032,
		43.658344, 38.075962, 30.256781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091267, 37.422398, 29.796610>,  <44.282459, 37.826851, 30.452803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091267, 37.422398, 29.796610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.877716, 37.760033, 29.776651>,  <43.749584, 37.962612, 29.764677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.877716, 37.760033, 29.776651>,  <44.091267, 37.422398, 29.796610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877716, 37.760033, 29.776651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258739, 0.106903, -0.960014,
		-0.805001, -0.525442, -0.275471,
		-0.533880, 0.844087, -0.049895,
		43.717552, 38.013260, 29.761683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753578, 37.328537, 29.107832>,  <44.091267, 37.422398, 29.796610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753578, 37.328537, 29.107832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.738544, 37.712208, 29.219955>,  <43.729523, 37.942410, 29.287230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.738544, 37.712208, 29.219955>,  <43.753578, 37.328537, 29.107832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738544, 37.712208, 29.219955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361666, 0.274548, -0.890966,
		-0.931550, 0.067892, -0.357219,
		-0.037584, 0.959174, 0.280309,
		43.727268, 37.999958, 29.304049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414970, 37.607254, 28.559338>,  <43.753578, 37.328537, 29.107832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414970, 37.607254, 28.559338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.595554, 37.919125, 28.732912>,  <43.703903, 38.106247, 28.837057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.595554, 37.919125, 28.732912>,  <43.414970, 37.607254, 28.559338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595554, 37.919125, 28.732912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277803, 0.339329, -0.898711,
		-0.847946, 0.526276, -0.063404,
		0.451455, 0.779672, 0.433934,
		43.730991, 38.153027, 28.863092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647881, 37.934444, 28.010576>,  <43.414970, 37.607254, 28.559338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647881, 37.934444, 28.010576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.857468, 38.141365, 28.281237>,  <43.983219, 38.265518, 28.443634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.857468, 38.141365, 28.281237>,  <43.647881, 37.934444, 28.010576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857468, 38.141365, 28.281237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546623, 0.405018, -0.732915,
		-0.653195, 0.753895, -0.070554,
		0.523965, 0.517303, 0.676652,
		44.014656, 38.296555, 28.484232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644760, 38.675453, 27.897757>,  <43.647881, 37.934444, 28.010576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644760, 38.675453, 27.897757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.987347, 38.584328, 28.083040>,  <44.192898, 38.529652, 28.194210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.987347, 38.584328, 28.083040>,  <43.644760, 38.675453, 27.897757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987347, 38.584328, 28.083040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499236, 0.593699, -0.631098,
		-0.131234, 0.771766, 0.622217,
		0.856470, -0.227812, 0.463207,
		44.244289, 38.515984, 28.222002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909565, 39.313251, 27.970013>,  <43.644760, 38.675453, 27.897757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909565, 39.313251, 27.970013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.222572, 39.067547, 28.010702>,  <44.410378, 38.920124, 28.035116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.222572, 39.067547, 28.010702>,  <43.909565, 39.313251, 27.970013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222572, 39.067547, 28.010702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535970, 0.581408, -0.612128,
		0.316864, 0.533522, 0.784188,
		0.782517, -0.614263, 0.101725,
		44.457329, 38.883266, 28.041220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497581, 39.782837, 27.959284>,  <43.909565, 39.313251, 27.970013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497581, 39.782837, 27.959284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.676491, 39.433285, 27.883097>,  <44.783836, 39.223553, 27.837385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.676491, 39.433285, 27.883097>,  <44.497581, 39.782837, 27.959284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676491, 39.433285, 27.883097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548102, 0.436092, -0.713729,
		0.706775, 0.214836, 0.674028,
		0.447273, -0.873882, -0.190467,
		44.810673, 39.171120, 27.825956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250118, 39.867226, 28.014189>,  <44.497581, 39.782837, 27.959284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250118, 39.867226, 28.014189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.228050, 39.535618, 27.791592>,  <45.214809, 39.336655, 27.658033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.228050, 39.535618, 27.791592>,  <45.250118, 39.867226, 28.014189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228050, 39.535618, 27.791592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657184, 0.389448, -0.645321,
		0.751708, -0.401323, 0.523330,
		-0.055172, -0.829017, -0.556495,
		45.211498, 39.286911, 27.624643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886795, 39.760696, 27.721132>,  <45.250118, 39.867226, 28.014189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886795, 39.760696, 27.721132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.618130, 39.576660, 27.488863>,  <45.456928, 39.466236, 27.349503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.618130, 39.576660, 27.488863>,  <45.886795, 39.760696, 27.721132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618130, 39.576660, 27.488863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469661, 0.341729, -0.814027,
		0.572962, -0.819472, -0.013438,
		-0.671665, -0.460095, -0.580671,
		45.416630, 39.438633, 27.314661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266174, 39.571732, 27.189207>,  <45.886795, 39.760696, 27.721132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266174, 39.571732, 27.189207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.882294, 39.568863, 27.076832>,  <45.651966, 39.567142, 27.009407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.882294, 39.568863, 27.076832>,  <46.266174, 39.571732, 27.189207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882294, 39.568863, 27.076832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245821, 0.463054, -0.851559,
		0.136196, -0.886301, -0.442630,
		-0.959699, -0.007171, -0.280938,
		45.594383, 39.566711, 26.992550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246178, 39.407894, 26.552563>,  <46.266174, 39.571732, 27.189207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246178, 39.407894, 26.552563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.880638, 39.565617, 26.591337>,  <45.661312, 39.660252, 26.614601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.880638, 39.565617, 26.591337>,  <46.246178, 39.407894, 26.552563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880638, 39.565617, 26.591337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219629, 0.680798, -0.698769,
		-0.341522, -0.617282, -0.708749,
		-0.913852, 0.394307, 0.096934,
		45.606483, 39.683910, 26.620417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024113, 39.312305, 25.902878>,  <46.246178, 39.407894, 26.552563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024113, 39.312305, 25.902878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.858654, 39.609531, 26.113308>,  <45.759380, 39.787865, 26.239567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.858654, 39.609531, 26.113308>,  <46.024113, 39.312305, 25.902878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858654, 39.609531, 26.113308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431168, 0.668803, -0.605638,
		-0.801868, -0.023692, -0.597031,
		-0.413645, 0.743062, 0.526077,
		45.734562, 39.832451, 26.271132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446789, 38.695999, 25.602371>,  <46.024113, 39.312305, 25.902878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446789, 38.695999, 25.602371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.304852, 38.322643, 25.623787>,  <46.219688, 38.098629, 25.636637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.304852, 38.322643, 25.623787>,  <46.446789, 38.695999, 25.602371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304852, 38.322643, 25.623787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249106, 0.149587, 0.956854,
		-0.901127, 0.326200, -0.285593,
		-0.354847, -0.933390, 0.053538,
		46.198399, 38.042625, 25.639849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073429, 38.479237, 24.975151>,  <46.446789, 38.695999, 25.602371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073429, 38.479237, 24.975151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.810455, 38.478184, 24.673750>,  <45.652672, 38.477554, 24.492908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.810455, 38.478184, 24.673750>,  <46.073429, 38.479237, 24.975151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810455, 38.478184, 24.673750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711733, -0.326172, 0.622132,
		-0.247407, 0.945307, 0.212567,
		-0.657439, -0.002629, -0.753504,
		45.613224, 38.477394, 24.447699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461140, 38.807316, 25.263174>,  <46.073429, 38.479237, 24.975151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461140, 38.807316, 25.263174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.360142, 38.573555, 24.954700>,  <45.299545, 38.433300, 24.769615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.360142, 38.573555, 24.954700>,  <45.461140, 38.807316, 25.263174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360142, 38.573555, 24.954700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776195, -0.353542, 0.522043,
		-0.577727, 0.730402, -0.364341,
		-0.252491, -0.584398, -0.771185,
		45.284393, 38.398235, 24.723345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781071, 38.836765, 25.188656>,  <45.461140, 38.807316, 25.263174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781071, 38.836765, 25.188656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.835667, 38.503857, 24.973736>,  <44.868423, 38.304111, 24.844784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.835667, 38.503857, 24.973736>,  <44.781071, 38.836765, 25.188656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835667, 38.503857, 24.973736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785543, -0.421379, 0.453169,
		-0.603567, 0.360221, -0.711300,
		0.136486, -0.832274, -0.537300,
		44.876614, 38.254173, 24.812546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049213, 38.560646, 25.046724>,  <44.781071, 38.836765, 25.188656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049213, 38.560646, 25.046724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.286308, 38.244656, 24.983992>,  <44.428566, 38.055061, 24.946352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.286308, 38.244656, 24.983992>,  <44.049213, 38.560646, 25.046724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286308, 38.244656, 24.983992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709588, -0.604345, 0.362287,
		-0.380978, -0.103458, -0.918778,
		0.592741, -0.789977, -0.156830,
		44.464130, 38.007664, 24.936943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584049, 38.204391, 24.955715>,  <44.049213, 38.560646, 25.046724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584049, 38.204391, 24.955715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.892853, 37.955296, 25.006620>,  <44.078136, 37.805840, 25.037163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.892853, 37.955296, 25.006620>,  <43.584049, 38.204391, 24.955715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892853, 37.955296, 25.006620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624568, -0.706077, 0.333723,
		-0.117967, -0.337121, -0.934042,
		0.772010, -0.622741, 0.127261,
		44.124454, 37.768475, 25.044798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572945, 37.607044, 24.494045>,  <43.584049, 38.204391, 24.955715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572945, 37.607044, 24.494045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.779648, 37.520920, 24.825491>,  <43.903671, 37.469246, 25.024359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.779648, 37.520920, 24.825491>,  <43.572945, 37.607044, 24.494045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779648, 37.520920, 24.825491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673970, -0.699152, 0.238645,
		0.527944, -0.681783, -0.506407,
		0.516759, -0.215312, 0.828614,
		43.934677, 37.456326, 25.074076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563679, 36.882168, 24.490343>,  <43.572945, 37.607044, 24.494045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563679, 36.882168, 24.490343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.652657, 36.967064, 24.870968>,  <43.706043, 37.018002, 25.099342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.652657, 36.967064, 24.870968>,  <43.563679, 36.882168, 24.490343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652657, 36.967064, 24.870968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461170, -0.837015, 0.294495,
		0.858976, -0.504342, -0.088314,
		0.222446, 0.212236, 0.951564,
		43.719391, 37.030735, 25.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491737, 36.252796, 24.928389>,  <43.563679, 36.882168, 24.490343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491737, 36.252796, 24.928389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.488560, 36.517899, 25.227905>,  <43.486652, 36.676960, 25.407616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.488560, 36.517899, 25.227905>,  <43.491737, 36.252796, 24.928389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488560, 36.517899, 25.227905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573947, -0.616214, 0.539320,
		0.818854, -0.425481, 0.385285,
		-0.007948, 0.662757, 0.748793,
		43.486176, 36.716724, 25.452543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740234, 35.819286, 25.527021>,  <43.491737, 36.252796, 24.928389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740234, 35.819286, 25.527021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.567417, 36.140533, 25.691141>,  <43.463726, 36.333282, 25.789614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.567417, 36.140533, 25.691141>,  <43.740234, 35.819286, 25.527021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567417, 36.140533, 25.691141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393136, -0.577168, 0.715766,
		0.811654, 0.147938, 0.565095,
		-0.432044, 0.803113, 0.410301,
		43.437805, 36.381466, 25.814232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772400, 35.675732, 26.225262>,  <43.740234, 35.819286, 25.527021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772400, 35.675732, 26.225262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.502819, 35.969975, 26.197926>,  <43.341068, 36.146519, 26.181524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.502819, 35.969975, 26.197926>,  <43.772400, 35.675732, 26.225262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502819, 35.969975, 26.197926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483869, -0.369622, 0.793253,
		0.558261, 0.567684, 0.605045,
		-0.673955, 0.735605, -0.068339,
		43.300632, 36.190655, 26.177423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829556, 36.145241, 26.828144>,  <43.772400, 35.675732, 26.225262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829556, 36.145241, 26.828144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.467228, 36.151600, 26.658794>,  <43.249832, 36.155415, 26.557184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.467228, 36.151600, 26.658794>,  <43.829556, 36.145241, 26.828144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467228, 36.151600, 26.658794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414257, -0.242724, 0.877198,
		-0.088816, 0.969965, 0.226450,
		-0.905816, 0.015899, -0.423373,
		43.195484, 36.156368, 26.531782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515137, 36.286438, 27.364237>,  <43.829556, 36.145241, 26.828144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515137, 36.286438, 27.364237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.228172, 36.172646, 27.109871>,  <43.055992, 36.104370, 26.957251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.228172, 36.172646, 27.109871>,  <43.515137, 36.286438, 27.364237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228172, 36.172646, 27.109871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562744, -0.301434, 0.769712,
		-0.410652, 0.910060, 0.056165,
		-0.717414, -0.284477, -0.635916,
		43.012947, 36.087303, 26.919096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978073, 36.647217, 27.678509>,  <43.515137, 36.286438, 27.364237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978073, 36.647217, 27.678509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.872066, 36.333027, 27.454800>,  <42.808460, 36.144512, 27.320574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.872066, 36.333027, 27.454800>,  <42.978073, 36.647217, 27.678509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872066, 36.333027, 27.454800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490373, -0.389617, 0.779572,
		-0.830240, 0.480855, -0.281922,
		-0.265020, -0.785479, -0.559274,
		42.792561, 36.097382, 27.287018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235828, 36.803394, 27.708883>,  <42.978073, 36.647217, 27.678509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235828, 36.803394, 27.708883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.324448, 36.423145, 27.621950>,  <42.377621, 36.194996, 27.569790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.324448, 36.423145, 27.621950>,  <42.235828, 36.803394, 27.708883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324448, 36.423145, 27.621950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743416, -0.308881, 0.593233,
		-0.631070, 0.030138, -0.775140,
		0.221547, -0.950623, -0.217331,
		42.390911, 36.137959, 27.556751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612999, 36.795315, 27.174578>,  <42.235828, 36.803394, 27.708883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612999, 36.795315, 27.174578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240055, 36.905167, 27.080524>,  <41.016289, 36.971077, 27.024094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240055, 36.905167, 27.080524>,  <41.612999, 36.795315, 27.174578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240055, 36.905167, 27.080524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354662, 0.568559, -0.742263,
		-0.070161, -0.775447, -0.627502,
		-0.932358, 0.274629, -0.235131,
		40.960346, 36.987556, 27.009985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548168, 36.750122, 26.478991>,  <41.612999, 36.795315, 27.174578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548168, 36.750122, 26.478991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.270142, 37.010838, 26.600361>,  <41.103325, 37.167267, 26.673183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.270142, 37.010838, 26.600361>,  <41.548168, 36.750122, 26.478991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270142, 37.010838, 26.600361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209061, 0.587033, -0.782103,
		-0.687883, -0.480176, -0.544287,
		-0.695062, 0.651784, 0.303424,
		41.061623, 37.206371, 26.691387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363762, 36.933605, 25.844219>,  <41.548168, 36.750122, 26.478991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363762, 36.933605, 25.844219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.236023, 37.219780, 26.092791>,  <41.159382, 37.391483, 26.241934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.236023, 37.219780, 26.092791>,  <41.363762, 36.933605, 25.844219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236023, 37.219780, 26.092791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242351, 0.695615, -0.676303,
		-0.916125, -0.065371, -0.395528,
		-0.319345, 0.715434, 0.621428,
		41.140221, 37.434410, 26.279219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022472, 37.441109, 25.389978>,  <41.363762, 36.933605, 25.844219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022472, 37.441109, 25.389978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.112236, 37.647713, 25.720518>,  <41.166096, 37.771675, 25.918842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.112236, 37.647713, 25.720518>,  <41.022472, 37.441109, 25.389978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112236, 37.647713, 25.720518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314806, 0.764087, -0.563088,
		-0.922245, 0.386504, 0.008871,
		0.224414, 0.516513, 0.826349,
		41.179562, 37.802666, 25.968424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753532, 38.111717, 25.264681>,  <41.022472, 37.441109, 25.389978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753532, 38.111717, 25.264681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027153, 38.156986, 25.552919>,  <41.191326, 38.184147, 25.725863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027153, 38.156986, 25.552919>,  <40.753532, 38.111717, 25.264681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027153, 38.156986, 25.552919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449751, 0.712322, -0.538814,
		-0.574276, 0.692668, 0.436368,
		0.684054, 0.113171, 0.720598,
		41.232368, 38.190937, 25.769098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811340, 38.790661, 25.398588>,  <40.753532, 38.111717, 25.264681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811340, 38.790661, 25.398588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146923, 38.630074, 25.545547>,  <41.348270, 38.533722, 25.633722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146923, 38.630074, 25.545547>,  <40.811340, 38.790661, 25.398588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146923, 38.630074, 25.545547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531963, 0.747369, -0.398063,
		-0.114771, 0.529398, 0.840575,
		0.838953, -0.401469, 0.367397,
		41.398609, 38.509632, 25.655766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233681, 39.433762, 25.636213>,  <40.811340, 38.790661, 25.398588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233681, 39.433762, 25.636213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520332, 39.155052, 25.648560>,  <41.692322, 38.987827, 25.655968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520332, 39.155052, 25.648560>,  <41.233681, 39.433762, 25.636213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520332, 39.155052, 25.648560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635331, 0.633898, -0.441052,
		0.287746, 0.335681, 0.896950,
		0.716629, -0.696772, 0.030867,
		41.735321, 38.946022, 25.657820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296604, 40.029774, 26.119835>,  <41.233681, 39.433762, 25.636213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296604, 40.029774, 26.119835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016399, 40.231861, 25.918226>,  <40.848278, 40.353115, 25.797260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016399, 40.231861, 25.918226>,  <41.296604, 40.029774, 26.119835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016399, 40.231861, 25.918226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711291, -0.551598, 0.435667,
		-0.057909, 0.663695, 0.745759,
		-0.700509, 0.505222, -0.504022,
		40.806248, 40.383427, 25.767019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809967, 40.323334, 26.677620>,  <41.296604, 40.029774, 26.119835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809967, 40.323334, 26.677620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.609768, 40.312897, 26.331482>,  <40.489647, 40.306633, 26.123800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.609768, 40.312897, 26.331482>,  <40.809967, 40.323334, 26.677620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609768, 40.312897, 26.331482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771368, -0.440364, 0.459425,
		-0.393056, 0.897440, 0.200272,
		-0.500499, -0.026097, -0.865344,
		40.459618, 40.305069, 26.071878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168438, 40.574570, 26.924646>,  <40.809967, 40.323334, 26.677620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168438, 40.574570, 26.924646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123497, 40.389729, 26.572773>,  <40.096531, 40.278824, 26.361649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123497, 40.389729, 26.572773>,  <40.168438, 40.574570, 26.924646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123497, 40.389729, 26.572773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876639, -0.370721, 0.306707,
		-0.467846, 0.805624, -0.363443,
		-0.112354, -0.462100, -0.879682,
		40.089790, 40.251099, 26.308868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468586, 40.678543, 26.810669>,  <40.168438, 40.574570, 26.924646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468586, 40.678543, 26.810669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579269, 40.354481, 26.603952>,  <39.645679, 40.160042, 26.479923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579269, 40.354481, 26.603952>,  <39.468586, 40.678543, 26.810669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579269, 40.354481, 26.603952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772187, -0.507564, 0.382238,
		-0.571979, 0.293292, -0.766042,
		0.276707, -0.810160, -0.516792,
		39.662281, 40.111431, 26.448915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927795, 40.419312, 26.514933>,  <39.468586, 40.678543, 26.810669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927795, 40.419312, 26.514933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133942, 40.076847, 26.500101>,  <39.257629, 39.871368, 26.491201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133942, 40.076847, 26.500101>,  <38.927795, 40.419312, 26.514933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133942, 40.076847, 26.500101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802048, -0.497130, 0.331030,
		-0.301849, -0.140864, -0.942891,
		0.515370, -0.856165, -0.037079,
		39.288551, 39.819996, 26.488977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487869, 39.930119, 26.270016>,  <38.927795, 40.419312, 26.514933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487869, 39.930119, 26.270016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773159, 39.763851, 26.495770>,  <38.944332, 39.664093, 26.631222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773159, 39.763851, 26.495770>,  <38.487869, 39.930119, 26.270016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773159, 39.763851, 26.495770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698603, -0.355953, 0.620686,
		-0.057103, -0.836971, -0.544259,
		0.713227, -0.415664, 0.564385,
		38.987125, 39.639153, 26.665085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134132, 39.423088, 26.458193>,  <38.487869, 39.930119, 26.270016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134132, 39.423088, 26.458193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.444916, 39.410458, 26.709698>,  <38.631386, 39.402878, 26.860601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.444916, 39.410458, 26.709698>,  <38.134132, 39.423088, 26.458193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444916, 39.410458, 26.709698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565218, -0.474830, 0.674585,
		0.277253, -0.879511, -0.386771,
		0.776955, -0.031580, 0.628763,
		38.678001, 39.400982, 26.898327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.550858, 42.034523, 26.158443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.785706, 41.722889, 26.246372>,  <42.926613, 41.535908, 26.299129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.785706, 41.722889, 26.246372>,  <42.550858, 42.034523, 26.158443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785706, 41.722889, 26.246372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291983, 0.049461, 0.955144,
		-0.755010, -0.624965, -0.198439,
		0.587117, -0.779084, 0.219823,
		42.961842, 41.489162, 26.312319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160812, 41.604790, 26.666473>,  <42.550858, 42.034523, 26.158443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160812, 41.604790, 26.666473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.537853, 41.484062, 26.723614>,  <42.764076, 41.411625, 26.757898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.537853, 41.484062, 26.723614>,  <42.160812, 41.604790, 26.666473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537853, 41.484062, 26.723614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202712, -0.177267, 0.963060,
		-0.265353, -0.936738, -0.228275,
		0.942600, -0.301825, 0.142850,
		42.820633, 41.393517, 26.766470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164841, 40.952660, 27.005545>,  <42.160812, 41.604790, 26.666473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164841, 40.952660, 27.005545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.526737, 41.093025, 27.102127>,  <42.743874, 41.177246, 27.160076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.526737, 41.093025, 27.102127>,  <42.164841, 40.952660, 27.005545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526737, 41.093025, 27.102127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097555, -0.381086, 0.919379,
		0.414640, -0.855355, -0.310550,
		0.904741, 0.350915, 0.241457,
		42.798161, 41.198299, 27.174564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485962, 40.411442, 27.327789>,  <42.164841, 40.952660, 27.005545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485962, 40.411442, 27.327789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.699165, 40.725502, 27.453922>,  <42.827087, 40.913937, 27.529602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.699165, 40.725502, 27.453922>,  <42.485962, 40.411442, 27.327789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699165, 40.725502, 27.453922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243136, -0.214835, 0.945902,
		0.810421, -0.580847, 0.076388,
		0.533013, 0.785151, 0.315332,
		42.859070, 40.961048, 27.548521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745728, 40.176456, 27.958500>,  <42.485962, 40.411442, 27.327789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745728, 40.176456, 27.958500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.761311, 40.574806, 27.991268>,  <42.770660, 40.813816, 28.010929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.761311, 40.574806, 27.991268>,  <42.745728, 40.176456, 27.958500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761311, 40.574806, 27.991268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405844, -0.059151, 0.912026,
		0.913112, -0.068774, 0.401867,
		0.038953, 0.995877, 0.081923,
		42.772995, 40.873569, 28.015844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758572, 40.185257, 28.628044>,  <42.745728, 40.176456, 27.958500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758572, 40.185257, 28.628044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.700485, 40.571140, 28.540178>,  <42.665634, 40.802670, 28.487459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.700485, 40.571140, 28.540178>,  <42.758572, 40.185257, 28.628044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700485, 40.571140, 28.540178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243400, 0.180364, 0.953009,
		0.958993, 0.191862, 0.208618,
		-0.145219, 0.964706, -0.219667,
		42.656921, 40.860554, 28.474277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049129, 40.663284, 29.114225>,  <42.758572, 40.185257, 28.628044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049129, 40.663284, 29.114225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.754318, 40.887444, 28.963097>,  <42.577431, 41.021938, 28.872419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.754318, 40.887444, 28.963097>,  <43.049129, 40.663284, 29.114225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754318, 40.887444, 28.963097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295999, 0.234921, 0.925849,
		0.607602, 0.794208, -0.007265,
		-0.737024, 0.560398, -0.377823,
		42.533211, 41.055561, 28.849751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039062, 41.343960, 29.454857>,  <43.049129, 40.663284, 29.114225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039062, 41.343960, 29.454857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.663445, 41.313339, 29.320789>,  <42.438072, 41.294968, 29.240349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.663445, 41.313339, 29.320789>,  <43.039062, 41.343960, 29.454857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663445, 41.313339, 29.320789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339154, 0.046562, 0.939578,
		-0.056316, 0.995978, -0.069685,
		-0.939043, -0.076548, -0.335168,
		42.381733, 41.290375, 29.220240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590660, 41.963314, 29.751667>,  <43.039062, 41.343960, 29.454857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590660, 41.963314, 29.751667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.340759, 41.664246, 29.661623>,  <42.190819, 41.484806, 29.607597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.340759, 41.664246, 29.661623>,  <42.590660, 41.963314, 29.751667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340759, 41.664246, 29.661623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517611, 0.180716, 0.836314,
		-0.584606, 0.639007, -0.499905,
		-0.624751, -0.747671, -0.225110,
		42.153336, 41.439945, 29.594090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929398, 42.218815, 29.929184>,  <42.590660, 41.963314, 29.751667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929398, 42.218815, 29.929184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.849926, 41.827480, 29.905909>,  <41.802242, 41.592678, 29.891943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.849926, 41.827480, 29.905909>,  <41.929398, 42.218815, 29.929184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849926, 41.827480, 29.905909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678572, 0.094481, 0.728432,
		-0.707153, 0.184212, -0.682643,
		-0.198682, -0.978335, -0.058189,
		41.790321, 41.533981, 29.888453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198956, 42.150852, 29.994410>,  <41.929398, 42.218815, 29.929184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198956, 42.150852, 29.994410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.356380, 41.791668, 30.073164>,  <41.450836, 41.576157, 30.120417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.356380, 41.791668, 30.073164>,  <41.198956, 42.150852, 29.994410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356380, 41.791668, 30.073164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525597, -0.044081, 0.849591,
		-0.754224, -0.437854, -0.489317,
		0.393566, -0.897965, 0.196888,
		41.474449, 41.522278, 30.132231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551647, 41.842896, 30.018982>,  <41.198956, 42.150852, 29.994410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551647, 41.842896, 30.018982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.825748, 41.602123, 30.182987>,  <40.990208, 41.457661, 30.281391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.825748, 41.602123, 30.182987>,  <40.551647, 41.842896, 30.018982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825748, 41.602123, 30.182987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671388, -0.303912, 0.675925,
		-0.282241, -0.738467, -0.612378,
		0.685258, -0.601918, 0.410022,
		41.031326, 41.421547, 30.305992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199318, 41.642712, 29.450851>,  <40.551647, 41.842896, 30.018982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199318, 41.642712, 29.450851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827179, 41.737129, 29.338610>,  <39.603897, 41.793777, 29.271265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827179, 41.737129, 29.338610>,  <40.199318, 41.642712, 29.450851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827179, 41.737129, 29.338610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364208, 0.506142, -0.781775,
		-0.042505, -0.829521, -0.556856,
		-0.930347, 0.236041, -0.280605,
		39.548077, 41.807941, 29.254429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086494, 41.364540, 28.768003>,  <40.199318, 41.642712, 29.450851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086494, 41.364540, 28.768003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.876045, 41.694603, 28.850283>,  <39.749775, 41.892639, 28.899651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.876045, 41.694603, 28.850283>,  <40.086494, 41.364540, 28.768003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876045, 41.694603, 28.850283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473609, 0.485208, -0.735029,
		-0.706319, -0.289297, -0.646082,
		-0.526126, 0.825155, 0.205698,
		39.718208, 41.942150, 28.911991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993229, 41.560390, 28.055485>,  <40.086494, 41.364540, 28.768003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993229, 41.560390, 28.055485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884224, 41.879169, 28.271116>,  <39.818821, 42.070438, 28.400496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884224, 41.879169, 28.271116>,  <39.993229, 41.560390, 28.055485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884224, 41.879169, 28.271116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369066, 0.604009, -0.706374,
		-0.888555, 0.006462, -0.458725,
		-0.272509, 0.796952, 0.539080,
		39.802471, 42.118256, 28.432840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603867, 41.915001, 27.577124>,  <39.993229, 41.560390, 28.055485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603867, 41.915001, 27.577124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.734215, 42.176460, 27.850344>,  <39.812424, 42.333336, 28.014277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.734215, 42.176460, 27.850344>,  <39.603867, 41.915001, 27.577124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734215, 42.176460, 27.850344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359524, 0.582530, -0.728973,
		-0.874386, 0.483123, -0.045172,
		0.325870, 0.653644, 0.683050,
		39.831974, 42.372555, 28.055260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469231, 42.586262, 27.290506>,  <39.603867, 41.915001, 27.577124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469231, 42.586262, 27.290506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733013, 42.694859, 27.570908>,  <39.891285, 42.760017, 27.739147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733013, 42.694859, 27.570908>,  <39.469231, 42.586262, 27.290506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733013, 42.694859, 27.570908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404209, 0.658167, -0.635162,
		-0.633820, 0.702215, 0.324293,
		0.659460, 0.271496, 0.701001,
		39.930851, 42.776306, 27.781208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541058, 43.251972, 27.157480>,  <39.469231, 42.586262, 27.290506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541058, 43.251972, 27.157480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.866402, 43.159046, 27.370827>,  <40.061607, 43.103291, 27.498835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.866402, 43.159046, 27.370827>,  <39.541058, 43.251972, 27.157480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866402, 43.159046, 27.370827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557239, 0.574495, -0.599533,
		-0.167136, 0.784847, 0.596725,
		0.813357, -0.232315, 0.533366,
		40.110409, 43.089352, 27.530836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888527, 43.828503, 27.257298>,  <39.541058, 43.251972, 27.157480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888527, 43.828503, 27.257298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.178726, 43.561123, 27.322819>,  <40.352844, 43.400696, 27.362131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.178726, 43.561123, 27.322819>,  <39.888527, 43.828503, 27.257298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178726, 43.561123, 27.322819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655830, 0.599327, -0.459014,
		0.208654, 0.440441, 0.873198,
		0.725500, -0.668445, 0.163803,
		40.396378, 43.360588, 27.371960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457130, 44.212318, 27.533224>,  <39.888527, 43.828503, 27.257298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457130, 44.212318, 27.533224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.635033, 43.874348, 27.414371>,  <40.741776, 43.671566, 27.343060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.635033, 43.874348, 27.414371>,  <40.457130, 44.212318, 27.533224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635033, 43.874348, 27.414371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771921, 0.529855, -0.351271,
		0.454237, -0.073133, 0.887874,
		0.444755, -0.844929, -0.297133,
		40.768459, 43.620869, 27.325232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184708, 44.219334, 27.737581>,  <40.457130, 44.212318, 27.533224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184708, 44.219334, 27.737581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.161945, 43.966137, 27.428757>,  <41.148289, 43.814217, 27.243462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.161945, 43.966137, 27.428757>,  <41.184708, 44.219334, 27.737581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161945, 43.966137, 27.428757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733496, 0.498113, -0.462457,
		0.677307, -0.592623, 0.435952,
		-0.056909, -0.632994, -0.772062,
		41.144871, 43.776237, 27.197138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855671, 44.126564, 27.494282>,  <41.184708, 44.219334, 27.737581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855671, 44.126564, 27.494282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.654030, 43.988144, 27.177767>,  <41.533047, 43.905094, 26.987858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.654030, 43.988144, 27.177767>,  <41.855671, 44.126564, 27.494282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654030, 43.988144, 27.177767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665352, 0.428535, -0.611281,
		0.550626, -0.834631, 0.014218,
		-0.504101, -0.346047, -0.791286,
		41.502800, 43.884331, 26.940380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380974, 43.930248, 27.087723>,  <41.855671, 44.126564, 27.494282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380974, 43.930248, 27.087723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.069550, 43.957722, 26.838202>,  <41.882694, 43.974205, 26.688488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.069550, 43.957722, 26.838202>,  <42.380974, 43.930248, 27.087723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069550, 43.957722, 26.838202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584493, 0.441289, -0.680905,
		0.228508, -0.894732, -0.383716,
		-0.778557, 0.068687, -0.623803,
		41.835983, 43.978329, 26.651060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603024, 43.615288, 26.577705>,  <42.380974, 43.930248, 27.087723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603024, 43.615288, 26.577705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.330536, 43.873028, 26.438705>,  <42.167046, 44.027672, 26.355305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.330536, 43.873028, 26.438705>,  <42.603024, 43.615288, 26.577705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330536, 43.873028, 26.438705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622252, 0.259559, -0.738533,
		-0.385678, -0.719334, -0.577765,
		-0.681216, 0.644351, -0.347501,
		42.126171, 44.066334, 26.334455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475704, 43.504379, 25.789522>,  <42.603024, 43.615288, 26.577705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475704, 43.504379, 25.789522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.354843, 43.879002, 25.860598>,  <42.282326, 44.103775, 25.903242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.354843, 43.879002, 25.860598>,  <42.475704, 43.504379, 25.789522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354843, 43.879002, 25.860598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491851, 0.312839, -0.812536,
		-0.816572, -0.158110, -0.555168,
		-0.302149, 0.936554, 0.177689,
		42.264198, 44.159969, 25.913904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613953, 42.739567, 25.585749>,  <42.475704, 43.504379, 25.789522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613953, 42.739567, 25.585749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.751266, 42.620998, 25.229258>,  <42.833656, 42.549858, 25.015364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.751266, 42.620998, 25.229258>,  <42.613953, 42.739567, 25.585749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751266, 42.620998, 25.229258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704114, -0.709207, -0.035331,
		-0.621593, 0.639655, -0.452177,
		0.343287, -0.296422, -0.891228,
		42.854252, 42.532070, 24.961889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130959, 42.893753, 25.104338>,  <42.613953, 42.739567, 25.585749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130959, 42.893753, 25.104338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.323479, 42.579346, 24.949148>,  <42.438992, 42.390701, 24.856035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.323479, 42.579346, 24.949148>,  <42.130959, 42.893753, 25.104338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323479, 42.579346, 24.949148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833109, -0.547815, 0.076342,
		-0.272544, 0.286480, -0.918504,
		0.481299, -0.786020, -0.387973,
		42.467869, 42.343540, 24.832756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685379, 42.494854, 24.644270>,  <42.130959, 42.893753, 25.104338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685379, 42.494854, 24.644270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980110, 42.227596, 24.685583>,  <42.156948, 42.067242, 24.710371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980110, 42.227596, 24.685583>,  <41.685379, 42.494854, 24.644270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980110, 42.227596, 24.685583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675506, -0.733845, 0.071861,
		0.027779, -0.122717, -0.992053,
		0.736831, -0.668141, 0.103281,
		42.201160, 42.027153, 24.716568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609356, 41.934990, 24.100540>,  <41.685379, 42.494854, 24.644270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609356, 41.934990, 24.100540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.831665, 41.765759, 24.386789>,  <41.965050, 41.664219, 24.558538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.831665, 41.765759, 24.386789>,  <41.609356, 41.934990, 24.100540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831665, 41.765759, 24.386789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609665, -0.792644, 0.004867,
		0.565176, -0.438997, -0.698468,
		0.555773, -0.423081, 0.715625,
		41.998398, 41.638836, 24.601477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505695, 41.294292, 23.922054>,  <41.609356, 41.934990, 24.100540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505695, 41.294292, 23.922054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615669, 41.297939, 24.306622>,  <41.681652, 41.300125, 24.537363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615669, 41.297939, 24.306622>,  <41.505695, 41.294292, 23.922054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615669, 41.297939, 24.306622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674826, -0.710440, 0.199713,
		0.684850, -0.703699, -0.189176,
		0.274936, 0.009113, 0.961420,
		41.698151, 41.300674, 24.595047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271801, 40.666687, 24.056641>,  <41.505695, 41.294292, 23.922054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271801, 40.666687, 24.056641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390427, 40.816143, 24.408195>,  <41.461601, 40.905815, 24.619129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390427, 40.816143, 24.408195>,  <41.271801, 40.666687, 24.056641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390427, 40.816143, 24.408195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649837, -0.595435, 0.472407,
		0.699831, -0.711232, 0.066221,
		0.296561, 0.373638, 0.878889,
		41.479393, 40.928234, 24.671862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435707, 40.122845, 24.454714>,  <41.271801, 40.666687, 24.056641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435707, 40.122845, 24.454714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.342613, 40.422928, 24.702269>,  <41.286755, 40.602978, 24.850801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.342613, 40.422928, 24.702269>,  <41.435707, 40.122845, 24.454714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342613, 40.422928, 24.702269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611179, -0.607825, 0.506960,
		0.756501, -0.260262, 0.599975,
		-0.232737, 0.750209, 0.618887,
		41.272793, 40.647991, 24.887934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596249, 39.966049, 25.115139>,  <41.435707, 40.122845, 24.454714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596249, 39.966049, 25.115139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.297215, 40.231701, 25.118057>,  <41.117794, 40.391090, 25.119808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.297215, 40.231701, 25.118057>,  <41.596249, 39.966049, 25.115139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297215, 40.231701, 25.118057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516267, -0.587982, 0.622692,
		0.417838, 0.461747, 0.782433,
		-0.747582, 0.664129, 0.007296,
		41.072941, 40.430939, 25.120247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900940, 39.825798, 25.726248>,  <41.596249, 39.966049, 25.115139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900940, 39.825798, 25.726248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.022034, 39.467751, 25.595333>,  <42.094688, 39.252922, 25.516785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.022034, 39.467751, 25.595333>,  <41.900940, 39.825798, 25.726248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022034, 39.467751, 25.595333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557617, 0.444841, -0.700842,
		0.772927, 0.029666, 0.633800,
		0.302732, -0.895118, -0.327288,
		42.112854, 39.199215, 25.497147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576687, 39.899284, 25.607161>,  <41.900940, 39.825798, 25.726248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576687, 39.899284, 25.607161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.431053, 39.611954, 25.370029>,  <42.343674, 39.439556, 25.227751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.431053, 39.611954, 25.370029>,  <42.576687, 39.899284, 25.607161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431053, 39.611954, 25.370029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421541, 0.440493, -0.792634,
		0.830508, -0.538491, 0.142426,
		-0.364088, -0.718327, -0.592829,
		42.321827, 39.396454, 25.192181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175533, 39.714375, 25.345205>,  <42.576687, 39.899284, 25.607161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175533, 39.714375, 25.345205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.884331, 39.597710, 25.097033>,  <42.709610, 39.527710, 24.948130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.884331, 39.597710, 25.097033>,  <43.175533, 39.714375, 25.345205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884331, 39.597710, 25.097033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562593, 0.263012, -0.783781,
		0.391778, -0.919652, -0.027390,
		-0.728010, -0.291659, -0.620433,
		42.665928, 39.510212, 24.910902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466801, 39.242844, 24.844973>,  <43.175533, 39.714375, 25.345205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466801, 39.242844, 24.844973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.127666, 39.367756, 24.673552>,  <42.924187, 39.442703, 24.570698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.127666, 39.367756, 24.673552>,  <43.466801, 39.242844, 24.844973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127666, 39.367756, 24.673552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499116, 0.197074, -0.843828,
		-0.179051, -0.929325, -0.322949,
		-0.847835, 0.312277, -0.428554,
		42.873318, 39.461437, 24.544985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534328, 39.004795, 24.235481>,  <43.466801, 39.242844, 24.844973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534328, 39.004795, 24.235481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246540, 39.274441, 24.168621>,  <43.073868, 39.436226, 24.128506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246540, 39.274441, 24.168621>,  <43.534328, 39.004795, 24.235481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246540, 39.274441, 24.168621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476949, 0.304615, -0.824457,
		-0.504860, -0.672893, -0.540678,
		-0.719469, 0.674111, -0.167148,
		43.030701, 39.476673, 24.118477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320057, 38.884148, 23.474239>,  <43.534328, 39.004795, 24.235481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320057, 38.884148, 23.474239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211990, 39.248051, 23.600315>,  <43.147148, 39.466393, 23.675961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211990, 39.248051, 23.600315>,  <43.320057, 38.884148, 23.474239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211990, 39.248051, 23.600315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397510, 0.403555, -0.824093,
		-0.876923, -0.097354, -0.470667,
		-0.270169, 0.909761, 0.315188,
		43.130939, 39.520981, 23.694872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085556, 39.233196, 22.917624>,  <43.320057, 38.884148, 23.474239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085556, 39.233196, 22.917624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.164165, 39.552052, 23.145992>,  <43.211330, 39.743362, 23.283014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.164165, 39.552052, 23.145992>,  <43.085556, 39.233196, 22.917624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164165, 39.552052, 23.145992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221845, 0.531029, -0.817797,
		-0.955072, 0.287373, -0.072481,
		0.196523, 0.797135, 0.570924,
		43.223122, 39.791191, 23.317270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020126, 39.885498, 22.503078>,  <43.085556, 39.233196, 22.917624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020126, 39.885498, 22.503078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.252960, 40.005627, 22.805332>,  <43.392662, 40.077702, 22.986685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.252960, 40.005627, 22.805332>,  <43.020126, 39.885498, 22.503078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252960, 40.005627, 22.805332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561394, 0.523835, -0.640652,
		-0.588228, 0.797123, 0.136320,
		0.582087, 0.300320, 0.755634,
		43.427586, 40.095722, 23.032022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242386, 40.607235, 22.291601>,  <43.020126, 39.885498, 22.503078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242386, 40.607235, 22.291601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.504841, 40.488194, 22.568995>,  <43.662312, 40.416767, 22.735430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.504841, 40.488194, 22.568995>,  <43.242386, 40.607235, 22.291601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504841, 40.488194, 22.568995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749721, 0.361866, -0.554050,
		-0.086060, 0.883451, 0.460553,
		0.656134, -0.297605, 0.693484,
		43.701679, 40.398911, 22.777040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.132442, 33.800919, 35.610073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532394, 33.805264, 35.614449>,  <35.772366, 33.807873, 35.617073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532394, 33.805264, 35.614449>,  <35.132442, 33.800919, 35.610073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532394, 33.805264, 35.614449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011187, -0.023183, -0.999669,
		-0.010608, 0.999672, -0.023302,
		0.999881, 0.010865, 0.010937,
		35.832359, 33.808521, 35.617729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563000, 34.220627, 35.160141>,  <35.132442, 33.800919, 35.610073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563000, 34.220627, 35.160141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903450, 34.010727, 35.154106>,  <36.107719, 33.884785, 35.150486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903450, 34.010727, 35.154106>,  <35.563000, 34.220627, 35.160141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903450, 34.010727, 35.154106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135786, 0.247821, -0.959243,
		0.507104, 0.814383, 0.282180,
		0.851121, -0.524752, -0.015089,
		36.158787, 33.853302, 35.149578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018101, 34.554668, 34.808746>,  <35.563000, 34.220627, 35.160141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018101, 34.554668, 34.808746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203232, 34.202248, 34.769688>,  <36.314312, 33.990795, 34.746254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203232, 34.202248, 34.769688>,  <36.018101, 34.554668, 34.808746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203232, 34.202248, 34.769688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354295, 0.284833, -0.890700,
		0.812567, 0.377645, 0.443981,
		0.462828, -0.881053, -0.097648,
		36.342079, 33.937931, 34.740395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699955, 34.741009, 34.488007>,  <36.018101, 34.554668, 34.808746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699955, 34.741009, 34.488007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651222, 34.348751, 34.426697>,  <36.621983, 34.113396, 34.389912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651222, 34.348751, 34.426697>,  <36.699955, 34.741009, 34.488007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651222, 34.348751, 34.426697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286219, 0.113151, -0.951459,
		0.950387, -0.159786, 0.266894,
		-0.121831, -0.980645, -0.153271,
		36.614674, 34.054558, 34.380714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265697, 34.568558, 34.228783>,  <36.699955, 34.741009, 34.488007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265697, 34.568558, 34.228783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991745, 34.310600, 34.093105>,  <36.827374, 34.155827, 34.011700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991745, 34.310600, 34.093105>,  <37.265697, 34.568558, 34.228783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991745, 34.310600, 34.093105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251672, 0.227498, -0.940695,
		0.683813, -0.729628, 0.006493,
		-0.684880, -0.644894, -0.339193,
		36.786282, 34.117130, 33.991348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675014, 34.106144, 33.735466>,  <37.265697, 34.568558, 34.228783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675014, 34.106144, 33.735466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289265, 34.064899, 33.638023>,  <37.057816, 34.040154, 33.579559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289265, 34.064899, 33.638023>,  <37.675014, 34.106144, 33.735466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289265, 34.064899, 33.638023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237262, 0.070075, -0.968915,
		0.116981, -0.992198, -0.043113,
		-0.964377, -0.103116, -0.243608,
		36.999950, 34.033966, 33.564941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768402, 33.676369, 33.151730>,  <37.675014, 34.106144, 33.735466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768402, 33.676369, 33.151730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407551, 33.848728, 33.160690>,  <37.191040, 33.952145, 33.166065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407551, 33.848728, 33.160690>,  <37.768402, 33.676369, 33.151730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407551, 33.848728, 33.160690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078949, 0.215886, -0.973222,
		-0.424193, -0.876198, -0.228775,
		-0.902124, 0.430895, 0.022403,
		37.136913, 33.977997, 33.167412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406246, 33.335415, 32.611774>,  <37.768402, 33.676369, 33.151730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406246, 33.335415, 32.611774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229877, 33.685268, 32.692371>,  <37.124058, 33.895180, 32.740730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229877, 33.685268, 32.692371>,  <37.406246, 33.335415, 32.611774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229877, 33.685268, 32.692371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071394, 0.257954, -0.963516,
		-0.894703, -0.410447, -0.176181,
		-0.440919, 0.874639, 0.201489,
		37.097603, 33.947659, 32.752819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183159, 33.443840, 31.987516>,  <37.406246, 33.335415, 32.611774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183159, 33.443840, 31.987516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137913, 33.801952, 32.159882>,  <37.110764, 34.016819, 32.263302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137913, 33.801952, 32.159882>,  <37.183159, 33.443840, 31.987516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137913, 33.801952, 32.159882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006338, 0.433037, -0.901354,
		-0.993561, -0.104690, -0.043309,
		-0.113117, 0.895276, 0.430912,
		37.103977, 34.070534, 32.289154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783062, 33.833389, 31.573120>,  <37.183159, 33.443840, 31.987516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783062, 33.833389, 31.573120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953888, 34.114189, 31.801088>,  <37.056385, 34.282669, 31.937868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953888, 34.114189, 31.801088>,  <36.783062, 33.833389, 31.573120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953888, 34.114189, 31.801088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198349, 0.542205, -0.816499,
		-0.882197, 0.461742, 0.092316,
		0.427066, 0.702003, 0.569918,
		37.082008, 34.324791, 31.972063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423058, 34.509262, 31.343712>,  <36.783062, 33.833389, 31.573120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423058, 34.509262, 31.343712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793907, 34.559002, 31.485121>,  <37.016418, 34.588844, 31.569965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793907, 34.559002, 31.485121>,  <36.423058, 34.509262, 31.343712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793907, 34.559002, 31.485121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252866, 0.488644, -0.835036,
		-0.276583, 0.863576, 0.421590,
		0.927125, 0.124351, 0.353520,
		37.072044, 34.596306, 31.591177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575920, 35.172340, 31.329021>,  <36.423058, 34.509262, 31.343712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575920, 35.172340, 31.329021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942650, 35.013302, 31.343699>,  <37.162689, 34.917877, 31.352505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942650, 35.013302, 31.343699>,  <36.575920, 35.172340, 31.329021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942650, 35.013302, 31.343699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202948, 0.384887, -0.900374,
		0.343863, 0.832934, 0.433566,
		0.916826, -0.397597, 0.036694,
		37.217697, 34.894024, 31.354706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285877, 35.848877, 31.406498>,  <36.575920, 35.172340, 31.329021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285877, 35.848877, 31.406498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982723, 35.960007, 31.170389>,  <35.800831, 36.026684, 31.028725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982723, 35.960007, 31.170389>,  <36.285877, 35.848877, 31.406498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982723, 35.960007, 31.170389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651680, -0.364562, 0.665138,
		-0.030396, 0.888766, 0.457351,
		-0.757885, 0.277829, -0.590272,
		35.755356, 36.043354, 30.993307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805698, 36.184402, 31.849838>,  <36.285877, 35.848877, 31.406498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805698, 36.184402, 31.849838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586281, 36.074474, 31.533972>,  <35.454632, 36.008518, 31.344452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586281, 36.074474, 31.533972>,  <35.805698, 36.184402, 31.849838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586281, 36.074474, 31.533972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731567, -0.299549, 0.612437,
		-0.404855, 0.913643, -0.036734,
		-0.548545, -0.274822, -0.789665,
		35.421719, 35.992027, 31.297071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164070, 36.518208, 31.877470>,  <35.805698, 36.184402, 31.849838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164070, 36.518208, 31.877470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088543, 36.198452, 31.649323>,  <35.043228, 36.006599, 31.512434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088543, 36.198452, 31.649323>,  <35.164070, 36.518208, 31.877470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088543, 36.198452, 31.649323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769968, -0.239979, 0.591236,
		-0.609505, 0.550802, -0.570194,
		-0.188819, -0.799392, -0.570368,
		35.031898, 35.958633, 31.478212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512466, 36.498917, 31.909885>,  <35.164070, 36.518208, 31.877470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512466, 36.498917, 31.909885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554375, 36.137520, 31.743641>,  <34.579521, 35.920681, 31.643894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554375, 36.137520, 31.743641>,  <34.512466, 36.498917, 31.909885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554375, 36.137520, 31.743641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701732, -0.363293, 0.612854,
		-0.704695, 0.227437, -0.672070,
		0.104772, -0.903488, -0.415610,
		34.585808, 35.866474, 31.618958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859734, 36.229244, 31.603207>,  <34.512466, 36.498917, 31.909885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859734, 36.229244, 31.603207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081367, 35.916019, 31.716211>,  <34.214348, 35.728085, 31.784014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081367, 35.916019, 31.716211>,  <33.859734, 36.229244, 31.603207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081367, 35.916019, 31.716211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787009, -0.382140, 0.484340,
		-0.271307, -0.490704, -0.828011,
		0.554084, -0.783057, 0.282512,
		34.247593, 35.681103, 31.800964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432209, 35.732388, 31.512821>,  <33.859734, 36.229244, 31.603207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432209, 35.732388, 31.512821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701904, 35.558815, 31.751856>,  <33.863720, 35.454670, 31.895277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701904, 35.558815, 31.751856>,  <33.432209, 35.732388, 31.512821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701904, 35.558815, 31.751856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735864, -0.463251, 0.493865,
		0.062530, -0.772724, -0.631654,
		0.674236, -0.433930, 0.597587,
		33.904175, 35.428635, 31.931131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283520, 35.053177, 31.590620>,  <33.432209, 35.732388, 31.512821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283520, 35.053177, 31.590620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514736, 35.082500, 31.915703>,  <33.653465, 35.100094, 32.110752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514736, 35.082500, 31.915703>,  <33.283520, 35.053177, 31.590620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514736, 35.082500, 31.915703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629898, -0.593049, 0.501518,
		0.518742, -0.801821, -0.296630,
		0.578044, 0.073312, 0.812705,
		33.688148, 35.104492, 32.159515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432335, 34.421005, 31.850266>,  <33.283520, 35.053177, 31.590620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432335, 34.421005, 31.850266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514854, 34.610790, 32.192570>,  <33.564365, 34.724663, 32.397953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514854, 34.610790, 32.192570>,  <33.432335, 34.421005, 31.850266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514854, 34.610790, 32.192570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503842, -0.698207, 0.508576,
		0.838799, -0.536085, 0.095017,
		0.206298, 0.474467, 0.855758,
		33.576744, 34.753132, 32.449299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544800, 33.758236, 32.254868>,  <33.432335, 34.421005, 31.850266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544800, 33.758236, 32.254868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473965, 34.083675, 32.476387>,  <33.431465, 34.278938, 32.609299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473965, 34.083675, 32.476387>,  <33.544800, 33.758236, 32.254868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473965, 34.083675, 32.476387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594078, -0.536983, 0.598933,
		0.784673, -0.222936, 0.578436,
		-0.177087, 0.813602, 0.553797,
		33.420837, 34.327755, 32.642525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429688, 33.466225, 32.896492>,  <33.544800, 33.758236, 32.254868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429688, 33.466225, 32.896492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267025, 33.831150, 32.915752>,  <33.169426, 34.050106, 32.927307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267025, 33.831150, 32.915752>,  <33.429688, 33.466225, 32.896492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267025, 33.831150, 32.915752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646807, -0.324730, 0.690066,
		0.645191, 0.249475, 0.722143,
		-0.406656, 0.912312, 0.048151,
		33.145027, 34.104843, 32.930199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450615, 33.614204, 33.545429>,  <33.429688, 33.466225, 32.896492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450615, 33.614204, 33.545429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179119, 33.865196, 33.392807>,  <33.016224, 34.015789, 33.301231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179119, 33.865196, 33.392807>,  <33.450615, 33.614204, 33.545429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179119, 33.865196, 33.392807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630990, -0.232467, 0.740143,
		0.375722, 0.743123, 0.553715,
		-0.678738, 0.627476, -0.381560,
		32.975498, 34.053440, 33.278339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050591, 33.842121, 34.135479>,  <33.450615, 33.614204, 33.545429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050591, 33.842121, 34.135479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813507, 33.934452, 33.826828>,  <32.671257, 33.989853, 33.641636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813507, 33.934452, 33.826828>,  <33.050591, 33.842121, 34.135479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813507, 33.934452, 33.826828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805300, -0.186221, 0.562862,
		-0.013767, 0.955007, 0.296264,
		-0.592707, 0.230832, -0.771631,
		32.635696, 34.003700, 33.595337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572491, 34.282650, 34.486435>,  <33.050591, 33.842121, 34.135479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572491, 34.282650, 34.486435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397709, 34.199429, 34.136398>,  <32.292839, 34.149494, 33.926376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397709, 34.199429, 34.136398>,  <32.572491, 34.282650, 34.486435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397709, 34.199429, 34.136398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882248, -0.090408, 0.462022,
		-0.175241, 0.973930, -0.144053,
		-0.436953, -0.208056, -0.875091,
		32.266624, 34.137012, 33.873871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960430, 34.690823, 34.388783>,  <32.572491, 34.282650, 34.486435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960430, 34.690823, 34.388783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908438, 34.353958, 34.179451>,  <31.877241, 34.151840, 34.053852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908438, 34.353958, 34.179451>,  <31.960430, 34.690823, 34.388783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908438, 34.353958, 34.179451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818920, -0.206383, 0.535514,
		-0.558994, 0.498175, -0.662833,
		-0.129982, -0.842156, -0.523332,
		31.869444, 34.101311, 34.022449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488129, 35.150833, 34.755466>,  <31.960430, 34.690823, 34.388783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488129, 35.150833, 34.755466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.351685, 35.447018, 34.987106>,  <32.269817, 35.624729, 35.126091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.351685, 35.447018, 34.987106>,  <32.488129, 35.150833, 34.755466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351685, 35.447018, 34.987106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186150, 0.657057, -0.730496,
		-0.921408, -0.141379, -0.361966,
		-0.341109, 0.740465, 0.579100,
		32.249352, 35.669159, 35.160835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150249, 35.690102, 34.319569>,  <32.488129, 35.150833, 34.755466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150249, 35.690102, 34.319569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253189, 35.893909, 34.647999>,  <32.314953, 36.016193, 34.845058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253189, 35.893909, 34.647999>,  <32.150249, 35.690102, 34.319569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253189, 35.893909, 34.647999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424967, 0.703440, -0.569716,
		-0.867856, 0.495546, -0.035497,
		0.257350, 0.509516, 0.821075,
		32.330395, 36.046764, 34.894321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945652, 36.470184, 34.320911>,  <32.150249, 35.690102, 34.319569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945652, 36.470184, 34.320911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273808, 36.381340, 34.531673>,  <32.470699, 36.328033, 34.658131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273808, 36.381340, 34.531673>,  <31.945652, 36.470184, 34.320911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273808, 36.381340, 34.531673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490692, 0.746557, -0.449305,
		-0.293571, 0.627153, 0.721454,
		0.820389, -0.222109, 0.526906,
		32.519924, 36.314709, 34.689747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174400, 37.131927, 34.458763>,  <31.945652, 36.470184, 34.320911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174400, 37.131927, 34.458763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496250, 36.906422, 34.533329>,  <32.689362, 36.771118, 34.578068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496250, 36.906422, 34.533329>,  <32.174400, 37.131927, 34.458763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496250, 36.906422, 34.533329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586187, 0.704100, -0.400785,
		0.094691, 0.431757, 0.897006,
		0.804623, -0.563764, 0.186418,
		32.737637, 36.737293, 34.589256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659698, 37.576225, 34.767063>,  <32.174400, 37.131927, 34.458763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659698, 37.576225, 34.767063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857563, 37.273537, 34.596096>,  <32.976280, 37.091923, 34.493515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857563, 37.273537, 34.596096>,  <32.659698, 37.576225, 34.767063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857563, 37.273537, 34.596096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600751, 0.653111, -0.461025,
		0.628019, -0.028722, 0.777668,
		0.494662, -0.756717, -0.427421,
		33.005962, 37.046520, 34.467869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323624, 37.676659, 34.900932>,  <32.659698, 37.576225, 34.767063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323624, 37.676659, 34.900932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308090, 37.452141, 34.570251>,  <33.298771, 37.317432, 34.371841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308090, 37.452141, 34.570251>,  <33.323624, 37.676659, 34.900932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308090, 37.452141, 34.570251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656928, 0.609071, -0.444386,
		0.752953, -0.560344, 0.345076,
		-0.038834, -0.561291, -0.826707,
		33.296440, 37.283752, 34.322239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058800, 37.683094, 34.668671>,  <33.323624, 37.676659, 34.900932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058800, 37.683094, 34.668671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856773, 37.524578, 34.361980>,  <33.735558, 37.429470, 34.177967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856773, 37.524578, 34.361980>,  <34.058800, 37.683094, 34.668671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856773, 37.524578, 34.361980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595888, 0.482536, -0.641933,
		0.624363, -0.781098, -0.007567,
		-0.505063, -0.396290, -0.766724,
		33.705254, 37.405689, 34.131962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526165, 37.291050, 34.274048>,  <34.058800, 37.683094, 34.668671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526165, 37.291050, 34.274048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227306, 37.433758, 34.049732>,  <34.047993, 37.519382, 33.915142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227306, 37.433758, 34.049732>,  <34.526165, 37.291050, 34.274048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227306, 37.433758, 34.049732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664452, 0.422109, -0.616707,
		0.016692, -0.833390, -0.552434,
		-0.747144, 0.356772, -0.560793,
		34.003162, 37.540791, 33.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773575, 37.122101, 33.660309>,  <34.526165, 37.291050, 34.274048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773575, 37.122101, 33.660309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494534, 37.401417, 33.596127>,  <34.327110, 37.569008, 33.557617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494534, 37.401417, 33.596127>,  <34.773575, 37.122101, 33.660309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494534, 37.401417, 33.596127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566201, 0.400041, -0.720683,
		-0.439057, -0.593597, -0.674441,
		-0.697600, 0.698290, -0.160454,
		34.285255, 37.610905, 33.547989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715740, 37.207161, 32.968224>,  <34.773575, 37.122101, 33.660309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715740, 37.207161, 32.968224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535809, 37.544601, 33.085522>,  <34.427849, 37.747066, 33.155903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535809, 37.544601, 33.085522>,  <34.715740, 37.207161, 32.968224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535809, 37.544601, 33.085522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581897, 0.525919, -0.620326,
		-0.677532, -0.108401, -0.727461,
		-0.449830, 0.843598, 0.293249,
		34.400860, 37.797680, 33.173496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397316, 37.488670, 32.394714>,  <34.715740, 37.207161, 32.968224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397316, 37.488670, 32.394714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484669, 37.769581, 32.665749>,  <34.537083, 37.938126, 32.828369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484669, 37.769581, 32.665749>,  <34.397316, 37.488670, 32.394714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484669, 37.769581, 32.665749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567743, 0.473305, -0.673536,
		-0.793711, 0.531783, -0.295349,
		0.218385, 0.702275, 0.677583,
		34.550182, 37.980263, 32.869022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438354, 38.145702, 32.011372>,  <34.397316, 37.488670, 32.394714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438354, 38.145702, 32.011372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580925, 38.269073, 32.364151>,  <34.666466, 38.343094, 32.575821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580925, 38.269073, 32.364151>,  <34.438354, 38.145702, 32.011372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580925, 38.269073, 32.364151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540943, 0.701528, -0.463939,
		-0.761803, 0.642444, 0.083200,
		0.356422, 0.308424, 0.881951,
		34.687851, 38.361599, 32.628735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486969, 38.859444, 31.910751>,  <34.438354, 38.145702, 32.011372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486969, 38.859444, 31.910751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735825, 38.748196, 32.203487>,  <34.885139, 38.681446, 32.379128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735825, 38.748196, 32.203487>,  <34.486969, 38.859444, 31.910751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735825, 38.748196, 32.203487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755221, 0.459591, -0.467352,
		-0.206366, 0.843459, 0.495974,
		0.622138, -0.278124, 0.731841,
		34.922466, 38.664757, 32.423038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774162, 39.482948, 32.084389>,  <34.486969, 38.859444, 31.910751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774162, 39.482948, 32.084389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030899, 39.201183, 32.205608>,  <35.184940, 39.032124, 32.278339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030899, 39.201183, 32.205608>,  <34.774162, 39.482948, 32.084389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030899, 39.201183, 32.205608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747070, 0.485240, -0.454344,
		0.172995, 0.518017, 0.837694,
		0.641840, -0.704416, 0.303051,
		35.223450, 38.989861, 32.296524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350933, 39.838203, 32.287842>,  <34.774162, 39.482948, 32.084389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350933, 39.838203, 32.287842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498360, 39.468182, 32.251091>,  <35.586815, 39.246170, 32.229038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498360, 39.468182, 32.251091>,  <35.350933, 39.838203, 32.287842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498360, 39.468182, 32.251091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883567, 0.379317, -0.274640,
		0.288908, 0.020040, 0.957147,
		0.368566, -0.925050, -0.091881,
		35.608929, 39.190666, 32.223526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082329, 39.846775, 32.519016>,  <35.350933, 39.838203, 32.287842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082329, 39.846775, 32.519016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073460, 39.505016, 32.311356>,  <36.068138, 39.299961, 32.186760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073460, 39.505016, 32.311356>,  <36.082329, 39.846775, 32.519016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073460, 39.505016, 32.311356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841111, 0.264750, -0.471635,
		0.540408, -0.447124, 0.712769,
		-0.022173, -0.854393, -0.519154,
		36.066807, 39.248699, 32.155609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769337, 39.585339, 32.586658>,  <36.082329, 39.846775, 32.519016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769337, 39.585339, 32.586658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601490, 39.419876, 32.263470>,  <36.500782, 39.320599, 32.069557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601490, 39.419876, 32.263470>,  <36.769337, 39.585339, 32.586658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601490, 39.419876, 32.263470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794241, 0.263609, -0.547441,
		0.439439, -0.871437, 0.217925,
		-0.419613, -0.413652, -0.807971,
		36.475605, 39.295780, 32.021080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237625, 38.965744, 32.171818>,  <36.769337, 39.585339, 32.586658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237625, 38.965744, 32.171818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985424, 39.133076, 31.910292>,  <36.834103, 39.233475, 31.753376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985424, 39.133076, 31.910292>,  <37.237625, 38.965744, 32.171818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985424, 39.133076, 31.910292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768190, 0.215689, -0.602796,
		-0.111148, -0.882314, -0.457349,
		-0.630500, 0.418330, -0.653811,
		36.796272, 39.258575, 31.714148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553493, 38.725784, 31.537962>,  <37.237625, 38.965744, 32.171818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553493, 38.725784, 31.537962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307610, 39.007252, 31.395424>,  <37.160080, 39.176132, 31.309900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307610, 39.007252, 31.395424>,  <37.553493, 38.725784, 31.537962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307610, 39.007252, 31.395424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743312, 0.365674, -0.560151,
		-0.263855, -0.609205, -0.747830,
		-0.614709, 0.703670, -0.356344,
		37.123196, 39.218353, 31.288521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746933, 38.883018, 30.788103>,  <37.553493, 38.725784, 31.537962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746933, 38.883018, 30.788103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.540897, 39.202389, 30.912815>,  <37.417278, 39.394012, 30.987642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.540897, 39.202389, 30.912815>,  <37.746933, 38.883018, 30.788103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540897, 39.202389, 30.912815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608013, 0.596734, -0.523669,
		-0.604159, -0.080169, -0.792821,
		-0.515085, 0.798424, 0.311779,
		37.386372, 39.441917, 31.006350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678864, 39.180714, 30.227020>,  <37.746933, 38.883018, 30.788103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678864, 39.180714, 30.227020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602818, 39.464218, 30.498758>,  <37.557190, 39.634323, 30.661800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602818, 39.464218, 30.498758>,  <37.678864, 39.180714, 30.227020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602818, 39.464218, 30.498758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566962, 0.644178, -0.513409,
		-0.801505, 0.287557, -0.524309,
		-0.190115, 0.708763, 0.679346,
		37.545784, 39.676846, 30.702562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684143, 39.750835, 29.803194>,  <37.678864, 39.180714, 30.227020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684143, 39.750835, 29.803194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699482, 39.912537, 30.168732>,  <37.708687, 40.009556, 30.388054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699482, 39.912537, 30.168732>,  <37.684143, 39.750835, 29.803194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699482, 39.912537, 30.168732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547796, 0.756349, -0.357569,
		-0.835732, 0.514312, -0.192443,
		0.038348, 0.404251, 0.913844,
		37.710987, 40.033813, 30.442884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424427, 40.433220, 29.732718>,  <37.684143, 39.750835, 29.803194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424427, 40.433220, 29.732718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669418, 40.407173, 30.047838>,  <37.816414, 40.391544, 30.236912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669418, 40.407173, 30.047838>,  <37.424427, 40.433220, 29.732718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669418, 40.407173, 30.047838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523948, 0.779678, -0.342900,
		-0.591906, 0.622786, 0.511649,
		0.612475, -0.065113, 0.787803,
		37.853161, 40.387638, 30.284180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454784, 41.061127, 30.015104>,  <37.424427, 40.433220, 29.732718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454784, 41.061127, 30.015104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805256, 40.901218, 30.122801>,  <38.015541, 40.805275, 30.187418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805256, 40.901218, 30.122801>,  <37.454784, 41.061127, 30.015104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805256, 40.901218, 30.122801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481930, 0.734820, -0.477266,
		-0.007048, 0.547927, 0.836497,
		0.876182, -0.399769, 0.269241,
		38.068111, 40.781288, 30.203573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899460, 41.644245, 30.181646>,  <37.454784, 41.061127, 30.015104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899460, 41.644245, 30.181646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157497, 41.339825, 30.154362>,  <38.312321, 41.157173, 30.137991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157497, 41.339825, 30.154362>,  <37.899460, 41.644245, 30.181646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157497, 41.339825, 30.154362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670521, 0.606632, -0.427082,
		0.366413, 0.229768, 0.901636,
		0.645091, -0.761055, -0.068214,
		38.351025, 41.111507, 30.133898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504433, 41.828220, 30.520014>,  <37.899460, 41.644245, 30.181646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504433, 41.828220, 30.520014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617439, 41.541916, 30.264555>,  <38.685242, 41.370132, 30.111280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617439, 41.541916, 30.264555>,  <38.504433, 41.828220, 30.520014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617439, 41.541916, 30.264555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562054, 0.663030, -0.494457,
		0.777354, -0.219260, 0.589614,
		0.282517, -0.715763, -0.638645,
		38.702194, 41.327187, 30.072962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192242, 41.949619, 30.424620>,  <38.504433, 41.828220, 30.520014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192242, 41.949619, 30.424620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080513, 41.706829, 30.127012>,  <39.013477, 41.561157, 29.948448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080513, 41.706829, 30.127012>,  <39.192242, 41.949619, 30.424620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080513, 41.706829, 30.127012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555565, 0.529827, -0.640804,
		0.783153, -0.592340, 0.189223,
		-0.279319, -0.606973, -0.744019,
		38.996716, 41.524738, 29.903807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826447, 41.822720, 30.168798>,  <39.192242, 41.949619, 30.424620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826447, 41.822720, 30.168798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545296, 41.738422, 29.897049>,  <39.376606, 41.687843, 29.733999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545296, 41.738422, 29.897049>,  <39.826447, 41.822720, 30.168798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545296, 41.738422, 29.897049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470815, 0.578104, -0.666430,
		0.533194, -0.788279, -0.307117,
		-0.702879, -0.210741, -0.679375,
		39.334435, 41.675198, 29.693235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238129, 41.231495, 30.249538>,  <39.826447, 41.822720, 30.168798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238129, 41.231495, 30.249538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575676, 41.203224, 30.462286>,  <40.778206, 41.186260, 30.589935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575676, 41.203224, 30.462286>,  <40.238129, 41.231495, 30.249538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575676, 41.203224, 30.462286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531729, -0.242690, 0.811398,
		0.071733, -0.967526, -0.242379,
		0.843872, -0.070676, 0.531870,
		40.828838, 41.182022, 30.621847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197086, 40.567017, 30.564573>,  <40.238129, 41.231495, 30.249538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197086, 40.567017, 30.564573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466465, 40.787521, 30.761583>,  <40.628094, 40.919823, 30.879789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466465, 40.787521, 30.761583>,  <40.197086, 40.567017, 30.564573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466465, 40.787521, 30.761583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464406, -0.202880, 0.862072,
		0.575150, -0.809290, 0.119380,
		0.673446, 0.551261, 0.492525,
		40.668499, 40.952900, 30.909342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547611, 40.114223, 31.062923>,  <40.197086, 40.567017, 30.564573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547611, 40.114223, 31.062923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588131, 40.486347, 31.203924>,  <40.612442, 40.709621, 31.288525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588131, 40.486347, 31.203924>,  <40.547611, 40.114223, 31.062923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588131, 40.486347, 31.203924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394931, -0.287606, 0.872532,
		0.913110, -0.227596, 0.338276,
		0.101294, 0.930313, 0.352501,
		40.618519, 40.765442, 31.309675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661369, 39.967693, 31.769989>,  <40.547611, 40.114223, 31.062923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661369, 39.967693, 31.769989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.553047, 40.350967, 31.733000>,  <40.488056, 40.580933, 31.710806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.553047, 40.350967, 31.733000>,  <40.661369, 39.967693, 31.769989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553047, 40.350967, 31.733000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634469, -0.105415, 0.765726,
		0.723957, 0.266033, 0.636484,
		-0.270804, 0.958183, -0.092474,
		40.471806, 40.638424, 31.705257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691662, 40.285625, 32.483200>,  <40.661369, 39.967693, 31.769989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691662, 40.285625, 32.483200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.448551, 40.521786, 32.270771>,  <40.302685, 40.663483, 32.143314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.448551, 40.521786, 32.270771>,  <40.691662, 40.285625, 32.483200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448551, 40.521786, 32.270771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695160, -0.072280, 0.715212,
		0.383876, 0.803867, 0.454353,
		-0.607776, 0.590401, -0.531070,
		40.266220, 40.698906, 32.111450>
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
