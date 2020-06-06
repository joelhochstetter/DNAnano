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
	<24.572550, 35.181892, 34.699482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428310, 34.816891, 34.776737>,  <24.341766, 34.597889, 34.823090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428310, 34.816891, 34.776737>,  <24.572550, 35.181892, 34.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428310, 34.816891, 34.776737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591724, 0.383870, 0.708877,
		-0.720993, 0.141339, -0.678375,
		-0.360600, -0.912506, 0.193134,
		24.320131, 34.543140, 34.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588144, 35.837563, 34.320789>,  <24.572550, 35.181892, 34.699482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588144, 35.837563, 34.320789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561672, 35.877506, 33.923672>,  <24.545790, 35.901474, 33.685402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561672, 35.877506, 33.923672>,  <24.588144, 35.837563, 34.320789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561672, 35.877506, 33.923672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966726, -0.239988, -0.088580,
		-0.247105, -0.965626, -0.080656,
		-0.066179, 0.099861, -0.992798,
		24.541819, 35.907463, 33.625832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047865, 36.186077, 34.773769>,  <24.588144, 35.837563, 34.320789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047865, 36.186077, 34.773769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990501, 36.581554, 34.791313>,  <24.956083, 36.818840, 34.801838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990501, 36.581554, 34.791313>,  <25.047865, 36.186077, 34.773769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990501, 36.581554, 34.791313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240402, -0.008188, 0.970639,
		0.960021, 0.149741, -0.236510,
		-0.143408, 0.988691, 0.043859,
		24.947479, 36.878162, 34.804470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529909, 36.649315, 34.555401>,  <25.047865, 36.186077, 34.773769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529909, 36.649315, 34.555401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807243, 36.579147, 34.834976>,  <25.973644, 36.537048, 35.002724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807243, 36.579147, 34.834976>,  <25.529909, 36.649315, 34.555401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807243, 36.579147, 34.834976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286397, -0.822952, -0.490639,
		0.661260, 0.540351, -0.520343,
		0.693334, -0.175415, 0.698940,
		26.015244, 36.526524, 35.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329597, 36.512730, 34.317436>,  <25.529909, 36.649315, 34.555401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329597, 36.512730, 34.317436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227743, 36.292850, 34.635681>,  <26.166630, 36.160923, 34.826626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227743, 36.292850, 34.635681>,  <26.329597, 36.512730, 34.317436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227743, 36.292850, 34.635681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415570, -0.805089, -0.423240,
		0.873190, 0.222858, 0.433443,
		-0.254638, -0.549695, 0.795609,
		26.151352, 36.127941, 34.874363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894062, 36.163822, 34.693981>,  <26.329597, 36.512730, 34.317436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894062, 36.163822, 34.693981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550552, 35.959793, 34.674664>,  <26.344446, 35.837376, 34.663074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550552, 35.959793, 34.674664>,  <26.894062, 36.163822, 34.693981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550552, 35.959793, 34.674664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488646, -0.787044, -0.376545,
		0.154056, -0.346966, 0.925138,
		-0.858773, -0.510074, -0.048294,
		26.292921, 35.806770, 34.660175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940981, 35.492306, 34.978550>,  <26.894062, 36.163822, 34.693981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940981, 35.492306, 34.978550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649466, 35.499001, 34.704735>,  <26.474556, 35.503017, 34.540447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649466, 35.499001, 34.704735>,  <26.940981, 35.492306, 34.978550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649466, 35.499001, 34.704735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339150, -0.859638, -0.382099,
		-0.594848, -0.510629, 0.620817,
		-0.728789, 0.016740, -0.684534,
		26.430830, 35.504025, 34.499374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400696, 34.899952, 34.984356>,  <26.940981, 35.492306, 34.978550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400696, 34.899952, 34.984356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459404, 35.027225, 34.609715>,  <26.494629, 35.103588, 34.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459404, 35.027225, 34.609715>,  <26.400696, 34.899952, 34.984356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459404, 35.027225, 34.609715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246561, -0.928735, -0.276874,
		-0.957949, -0.190292, -0.214763,
		0.146771, 0.318184, -0.936599,
		26.503435, 35.122681, 34.328735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043240, 34.431755, 34.512459>,  <26.400696, 34.899952, 34.984356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043240, 34.431755, 34.512459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347332, 34.613110, 34.326344>,  <26.529787, 34.721920, 34.214672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347332, 34.613110, 34.326344>,  <26.043240, 34.431755, 34.512459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347332, 34.613110, 34.326344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409058, -0.890471, -0.199330,
		-0.504701, -0.038794, -0.862422,
		0.760229, 0.453383, -0.465291,
		26.575401, 34.749123, 34.186756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995052, 34.204609, 33.877483>,  <26.043240, 34.431755, 34.512459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995052, 34.204609, 33.877483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378441, 34.313435, 33.911694>,  <26.608475, 34.378731, 33.932220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378441, 34.313435, 33.911694>,  <25.995052, 34.204609, 33.877483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378441, 34.313435, 33.911694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285052, -0.904628, -0.316851,
		-0.008837, 0.328071, -0.944612,
		0.958471, 0.272064, 0.085523,
		26.665981, 34.395054, 33.937351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307812, 33.970196, 33.231380>,  <25.995052, 34.204609, 33.877483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307812, 33.970196, 33.231380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590261, 34.029568, 33.508324>,  <26.759731, 34.065189, 33.674488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590261, 34.029568, 33.508324>,  <26.307812, 33.970196, 33.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590261, 34.029568, 33.508324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410086, -0.882837, -0.228971,
		0.577253, 0.445608, -0.684261,
		0.706122, 0.148431, 0.692358,
		26.802097, 34.074097, 33.716030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824015, 33.551220, 32.945381>,  <26.307812, 33.970196, 33.231380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824015, 33.551220, 32.945381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892944, 33.620052, 33.333340>,  <26.934301, 33.661354, 33.566113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892944, 33.620052, 33.333340>,  <26.824015, 33.551220, 32.945381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892944, 33.620052, 33.333340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459208, -0.885119, 0.075454,
		0.871454, 0.432380, -0.231549,
		0.172324, 0.172083, 0.969893,
		26.944641, 33.671677, 33.624306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529501, 32.882923, 33.198467>,  <26.824015, 33.551220, 32.945381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529501, 32.882923, 33.198467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724495, 33.018585, 32.876640>,  <26.841492, 33.099983, 32.683544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724495, 33.018585, 32.876640>,  <26.529501, 32.882923, 33.198467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724495, 33.018585, 32.876640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706510, 0.388218, 0.591719,
		0.513034, -0.856889, -0.050369,
		0.487483, 0.339158, -0.804570,
		26.870739, 33.120331, 32.635269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036596, 32.673439, 33.731064>,  <26.529501, 32.882923, 33.198467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036596, 32.673439, 33.731064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326796, 32.871677, 33.922073>,  <27.500916, 32.990620, 34.036678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326796, 32.871677, 33.922073>,  <27.036596, 32.673439, 33.731064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326796, 32.871677, 33.922073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540719, 0.839717, -0.049993,
		-0.425763, -0.221938, 0.877194,
		0.725499, 0.495600, 0.477526,
		27.544445, 33.020359, 34.065331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838858, 33.148151, 34.190239>,  <27.036596, 32.673439, 33.731064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838858, 33.148151, 34.190239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198036, 33.292309, 34.089199>,  <27.413544, 33.378803, 34.028576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198036, 33.292309, 34.089199>,  <26.838858, 33.148151, 34.190239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198036, 33.292309, 34.089199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380012, 0.924430, -0.031948,
		0.221996, 0.124678, 0.967044,
		0.897947, 0.360395, -0.252599,
		27.467421, 33.400429, 34.013420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179161, 33.678566, 34.653439>,  <26.838858, 33.148151, 34.190239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179161, 33.678566, 34.653439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286278, 33.753578, 34.275417>,  <27.350548, 33.798588, 34.048607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286278, 33.753578, 34.275417>,  <27.179161, 33.678566, 34.653439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286278, 33.753578, 34.275417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511128, 0.859122, 0.025646,
		0.816722, 0.476173, 0.325919,
		0.267792, 0.187532, -0.945050,
		27.366615, 33.809837, 33.991901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810837, 34.224930, 34.451591>,  <27.179161, 33.678566, 34.653439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810837, 34.224930, 34.451591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521351, 34.198051, 34.176865>,  <27.347658, 34.181927, 34.012028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521351, 34.198051, 34.176865>,  <27.810837, 34.224930, 34.451591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521351, 34.198051, 34.176865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331492, 0.906755, 0.260593,
		0.605267, 0.416270, -0.678507,
		-0.723716, -0.067191, -0.686819,
		27.304235, 34.177895, 33.970818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859819, 34.866245, 34.037140>,  <27.810837, 34.224930, 34.451591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859819, 34.866245, 34.037140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488619, 34.723042, 33.995884>,  <27.265898, 34.637119, 33.971130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488619, 34.723042, 33.995884>,  <27.859819, 34.866245, 34.037140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488619, 34.723042, 33.995884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370066, 0.917799, 0.143860,
		0.043158, 0.171671, -0.984208,
		-0.928003, -0.358013, -0.103140,
		27.210218, 34.615639, 33.964943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585209, 35.320019, 33.622387>,  <27.859819, 34.866245, 34.037140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585209, 35.320019, 33.622387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255241, 35.153942, 33.775814>,  <27.057261, 35.054298, 33.867870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255241, 35.153942, 33.775814>,  <27.585209, 35.320019, 33.622387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255241, 35.153942, 33.775814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436007, 0.899236, 0.035669,
		-0.359729, -0.137815, -0.922823,
		-0.824920, -0.415188, 0.383569,
		27.007765, 35.029385, 33.890884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922186, 35.547737, 33.195328>,  <27.585209, 35.320019, 33.622387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922186, 35.547737, 33.195328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810219, 35.444363, 33.565163>,  <26.743038, 35.382336, 33.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810219, 35.444363, 33.565163>,  <26.922186, 35.547737, 33.195328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810219, 35.444363, 33.565163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538275, 0.839709, 0.071754,
		-0.794925, -0.477595, -0.374161,
		-0.279917, -0.258441, 0.924583,
		26.726244, 35.366829, 33.842537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152796, 36.172390, 32.851192>,  <26.922186, 35.547737, 33.195328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152796, 36.172390, 32.851192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256340, 36.510326, 32.663906>,  <27.318466, 36.713089, 32.551533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256340, 36.510326, 32.663906>,  <27.152796, 36.172390, 32.851192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256340, 36.510326, 32.663906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081421, 0.463931, 0.882122,
		0.962478, -0.266467, 0.051304,
		0.258858, 0.844845, -0.468219,
		27.333998, 36.763779, 32.523441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769175, 36.410946, 33.213688>,  <27.152796, 36.172390, 32.851192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769175, 36.410946, 33.213688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583897, 36.738430, 33.077946>,  <27.472731, 36.934921, 32.996502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583897, 36.738430, 33.077946>,  <27.769175, 36.410946, 33.213688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583897, 36.738430, 33.077946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383493, 0.530353, 0.756081,
		0.798990, 0.220073, -0.559627,
		-0.463193, 0.818714, -0.339351,
		27.444939, 36.984043, 32.976139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192463, 37.077930, 32.953220>,  <27.769175, 36.410946, 33.213688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192463, 37.077930, 32.953220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843637, 37.170216, 33.125858>,  <27.634342, 37.225586, 33.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843637, 37.170216, 33.125858>,  <28.192463, 37.077930, 32.953220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843637, 37.170216, 33.125858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483928, 0.275153, 0.830725,
		0.072906, 0.933307, -0.351600,
		-0.872066, 0.230714, 0.431593,
		27.582018, 37.239429, 33.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220648, 37.768112, 33.243092>,  <28.192463, 37.077930, 32.953220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220648, 37.768112, 33.243092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916206, 37.581326, 33.423164>,  <27.733541, 37.469254, 33.531208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916206, 37.581326, 33.423164>,  <28.220648, 37.768112, 33.243092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916206, 37.581326, 33.423164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304845, 0.355097, 0.883728,
		-0.572528, 0.809845, -0.127914,
		-0.761105, -0.466966, 0.450180,
		27.687876, 37.441235, 33.558220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437157, 38.469936, 33.350159>,  <28.220648, 37.768112, 33.243092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437157, 38.469936, 33.350159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766216, 38.258270, 33.433331>,  <28.963652, 38.131271, 33.483234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766216, 38.258270, 33.433331>,  <28.437157, 38.469936, 33.350159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766216, 38.258270, 33.433331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203114, -0.068059, -0.976787,
		0.531033, 0.845785, 0.051492,
		0.822647, -0.529165, 0.207932,
		29.013010, 38.099522, 33.495708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062984, 38.777721, 33.108395>,  <28.437157, 38.469936, 33.350159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062984, 38.777721, 33.108395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118391, 38.381649, 33.116032>,  <29.151634, 38.144005, 33.120613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118391, 38.381649, 33.116032>,  <29.062984, 38.777721, 33.108395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118391, 38.381649, 33.116032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173558, 0.005291, -0.984809,
		0.975034, 0.139724, 0.172586,
		0.138515, -0.990176, 0.019091,
		29.159945, 38.084595, 33.121758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321589, 38.782444, 32.420929>,  <29.062984, 38.777721, 33.108395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321589, 38.782444, 32.420929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280874, 38.409184, 32.558842>,  <29.256445, 38.185226, 32.641590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280874, 38.409184, 32.558842>,  <29.321589, 38.782444, 32.420929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280874, 38.409184, 32.558842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211953, -0.358963, -0.908967,
		0.971965, -0.019444, 0.234321,
		-0.101787, -0.933149, 0.344778,
		29.250338, 38.129238, 32.662273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830070, 38.394779, 32.056175>,  <29.321589, 38.782444, 32.420929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830070, 38.394779, 32.056175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553482, 38.135193, 32.183117>,  <29.387529, 37.979443, 32.259281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553482, 38.135193, 32.183117>,  <29.830070, 38.394779, 32.056175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553482, 38.135193, 32.183117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019224, -0.455675, -0.889939,
		0.722148, -0.609267, 0.327562,
		-0.691471, -0.648964, 0.317352,
		29.346041, 37.940502, 32.278324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471472, 38.602654, 32.382305>,  <29.830070, 38.394779, 32.056175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471472, 38.602654, 32.382305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586023, 38.798534, 32.052898>,  <30.654755, 38.916061, 31.855255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586023, 38.798534, 32.052898>,  <30.471472, 38.602654, 32.382305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586023, 38.798534, 32.052898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931277, 0.344283, -0.119126,
		0.225186, 0.801037, 0.554644,
		0.286379, 0.489702, -0.823516,
		30.671936, 38.945446, 31.805843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137569, 39.316624, 32.365589>,  <30.471472, 38.602654, 32.382305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137569, 39.316624, 32.365589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224092, 39.207733, 31.990549>,  <30.276007, 39.142399, 31.765524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224092, 39.207733, 31.990549>,  <30.137569, 39.316624, 32.365589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224092, 39.207733, 31.990549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931949, 0.228666, -0.281394,
		0.291002, 0.934667, -0.204243,
		0.216306, -0.272230, -0.937605,
		30.288984, 39.126064, 31.709269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904560, 39.868469, 31.968538>,  <30.137569, 39.316624, 32.365589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904560, 39.868469, 31.968538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918503, 39.547394, 31.730389>,  <29.926868, 39.354748, 31.587498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918503, 39.547394, 31.730389>,  <29.904560, 39.868469, 31.968538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918503, 39.547394, 31.730389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899292, 0.234683, -0.369049,
		0.435957, 0.548280, -0.713674,
		0.034855, -0.802691, -0.595376,
		29.928959, 39.306587, 31.551777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872473, 40.108891, 31.197206>,  <29.904560, 39.868469, 31.968538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872473, 40.108891, 31.197206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757738, 39.727283, 31.232023>,  <29.688896, 39.498318, 31.252913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757738, 39.727283, 31.232023>,  <29.872473, 40.108891, 31.197206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757738, 39.727283, 31.232023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778863, 0.179342, -0.601006,
		0.557759, -0.240185, -0.794491,
		-0.286838, -0.954016, 0.087042,
		29.671686, 39.441078, 31.258135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690248, 40.012058, 30.538500>,  <29.872473, 40.108891, 31.197206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690248, 40.012058, 30.538500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502609, 39.748909, 30.774178>,  <29.390026, 39.591019, 30.915585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502609, 39.748909, 30.774178>,  <29.690248, 40.012058, 30.538500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502609, 39.748909, 30.774178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882159, 0.317529, -0.347808,
		0.041727, -0.682920, -0.729300,
		-0.469099, -0.657872, 0.589195,
		29.361879, 39.551548, 30.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073757, 39.654339, 30.151031>,  <29.690248, 40.012058, 30.538500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073757, 39.654339, 30.151031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023857, 39.569111, 30.538647>,  <28.993917, 39.517975, 30.771215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023857, 39.569111, 30.538647>,  <29.073757, 39.654339, 30.151031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023857, 39.569111, 30.538647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932597, 0.358558, -0.041220,
		-0.338674, -0.908866, -0.243440,
		-0.124751, -0.213072, 0.969040,
		28.986431, 39.505188, 30.829359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363144, 39.359100, 30.271677>,  <29.073757, 39.654339, 30.151031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363144, 39.359100, 30.271677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502409, 39.537422, 30.601536>,  <28.585968, 39.644413, 30.799452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502409, 39.537422, 30.601536>,  <28.363144, 39.359100, 30.271677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502409, 39.537422, 30.601536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922545, 0.319102, 0.216988,
		-0.166414, -0.836323, 0.522370,
		0.348161, 0.445800, 0.824649,
		28.606857, 39.671162, 30.848930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823545, 39.270367, 30.796429>,  <28.363144, 39.359100, 30.271677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823545, 39.270367, 30.796429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013817, 39.609829, 30.888962>,  <28.127979, 39.813507, 30.944483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013817, 39.609829, 30.888962>,  <27.823545, 39.270367, 30.796429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013817, 39.609829, 30.888962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835053, 0.353032, 0.421966,
		0.276434, -0.393898, 0.876600,
		0.475679, 0.848654, 0.231336,
		28.156521, 39.864426, 30.958363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114979, 39.406162, 31.543488>,  <27.823545, 39.270367, 30.796429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114979, 39.406162, 31.543488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268293, 39.233013, 31.217123>,  <28.360283, 39.129124, 31.021305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268293, 39.233013, 31.217123>,  <28.114979, 39.406162, 31.543488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268293, 39.233013, 31.217123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922077, 0.128146, 0.365174,
		-0.053518, -0.892300, 0.448259,
		0.383288, -0.432873, -0.815912,
		28.383280, 39.103149, 30.972349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556055, 38.872662, 31.772366>,  <28.114979, 39.406162, 31.543488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556055, 38.872662, 31.772366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673880, 39.020733, 31.419956>,  <28.744576, 39.109577, 31.208511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673880, 39.020733, 31.419956>,  <28.556055, 38.872662, 31.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673880, 39.020733, 31.419956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954255, -0.163412, 0.250386,
		-0.051281, -0.914473, -0.401383,
		0.294563, 0.370182, -0.881021,
		28.762249, 39.131786, 31.155649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964708, 38.333431, 31.491806>,  <28.556055, 38.872662, 31.772366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964708, 38.333431, 31.491806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094666, 38.682858, 31.346853>,  <29.172640, 38.892513, 31.259882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094666, 38.682858, 31.346853>,  <28.964708, 38.333431, 31.491806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094666, 38.682858, 31.346853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935419, -0.353301, -0.013025,
		-0.139408, -0.334746, -0.931939,
		0.324895, 0.873569, -0.362381,
		29.192135, 38.944927, 31.238138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441227, 38.116390, 31.047245>,  <28.964708, 38.333431, 31.491806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441227, 38.116390, 31.047245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519732, 38.500225, 31.127926>,  <29.566833, 38.730526, 31.176334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519732, 38.500225, 31.127926>,  <29.441227, 38.116390, 31.047245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519732, 38.500225, 31.127926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980034, -0.185276, -0.072157,
		-0.031870, 0.211835, -0.976786,
		0.196260, 0.959583, 0.201701,
		29.578609, 38.788101, 31.188437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047503, 38.312489, 30.721266>,  <29.441227, 38.116390, 31.047245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047503, 38.312489, 30.721266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006796, 38.622036, 30.971315>,  <29.982372, 38.807762, 31.121346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006796, 38.622036, 30.971315>,  <30.047503, 38.312489, 30.721266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006796, 38.622036, 30.971315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994640, 0.067591, 0.078246,
		0.018299, 0.629735, -0.776595,
		-0.101765, 0.773864, 0.625122,
		29.976267, 38.854195, 31.158852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600817, 38.719383, 30.466145>,  <30.047503, 38.312489, 30.721266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600817, 38.719383, 30.466145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497763, 38.837360, 30.834194>,  <30.435930, 38.908146, 31.055025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497763, 38.837360, 30.834194>,  <30.600817, 38.719383, 30.466145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497763, 38.837360, 30.834194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965819, 0.050410, 0.254270,
		0.028613, 0.954183, -0.297853,
		-0.257635, 0.294947, 0.920125,
		30.420473, 38.925846, 31.110231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929218, 39.470318, 30.799299>,  <30.600817, 38.719383, 30.466145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929218, 39.470318, 30.799299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872623, 39.187325, 31.076269>,  <30.838667, 39.017529, 31.242451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872623, 39.187325, 31.076269>,  <30.929218, 39.470318, 30.799299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872623, 39.187325, 31.076269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982264, -0.013399, 0.187022,
		-0.123037, 0.706603, 0.696831,
		-0.141488, -0.707483, 0.692423,
		30.830177, 38.975079, 31.283997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173092, 39.644318, 31.417429>,  <30.929218, 39.470318, 30.799299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173092, 39.644318, 31.417429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211082, 39.246494, 31.400318>,  <31.233877, 39.007801, 31.390053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211082, 39.246494, 31.400318>,  <31.173092, 39.644318, 31.417429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211082, 39.246494, 31.400318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957770, 0.079577, 0.276306,
		-0.271399, -0.067212, 0.960117,
		0.094974, -0.994560, -0.042776,
		31.239574, 38.948128, 31.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456043, 39.372517, 32.114811>,  <31.173092, 39.644318, 31.417429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456043, 39.372517, 32.114811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506260, 39.103676, 31.822916>,  <31.536390, 38.942371, 31.647779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506260, 39.103676, 31.822916>,  <31.456043, 39.372517, 32.114811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506260, 39.103676, 31.822916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959672, -0.104224, 0.261089,
		-0.251535, -0.733086, 0.631914,
		0.125540, -0.672103, -0.729738,
		31.543922, 38.902046, 31.603994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003735, 38.920963, 32.346287>,  <31.456043, 39.372517, 32.114811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003735, 38.920963, 32.346287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005539, 38.878677, 31.948530>,  <32.006622, 38.853306, 31.709877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005539, 38.878677, 31.948530>,  <32.003735, 38.920963, 32.346287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005539, 38.878677, 31.948530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944334, -0.326667, 0.039014,
		-0.328957, -0.939209, 0.098351,
		0.004515, -0.105710, -0.994387,
		32.006893, 38.846966, 31.650213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456509, 38.326920, 32.096210>,  <32.003735, 38.920963, 32.346287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456509, 38.326920, 32.096210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405476, 38.555782, 31.772146>,  <32.374855, 38.693100, 31.577707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405476, 38.555782, 31.772146>,  <32.456509, 38.326920, 32.096210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405476, 38.555782, 31.772146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962081, -0.127160, -0.241310,
		-0.241087, -0.810227, -0.534238,
		-0.127582, 0.572157, -0.810160,
		32.367203, 38.727428, 31.529099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752857, 37.995293, 31.364056>,  <32.456509, 38.326920, 32.096210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752857, 37.995293, 31.364056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758511, 38.395100, 31.375072>,  <32.761902, 38.634983, 31.381681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758511, 38.395100, 31.375072>,  <32.752857, 37.995293, 31.364056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758511, 38.395100, 31.375072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977934, -0.008078, -0.208759,
		-0.208437, 0.029884, -0.977579,
		0.014135, 0.999521, 0.027541,
		32.762753, 38.694958, 31.383335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010757, 38.286991, 30.710640>,  <32.752857, 37.995293, 31.364056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010757, 38.286991, 30.710640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084805, 38.497726, 31.042465>,  <33.129234, 38.624168, 31.241560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084805, 38.497726, 31.042465>,  <33.010757, 38.286991, 30.710640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084805, 38.497726, 31.042465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982566, -0.113977, -0.146878,
		0.017170, 0.842291, -0.538749,
		0.185119, 0.526834, 0.829564,
		33.140339, 38.655777, 31.291334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585148, 38.603622, 30.485605>,  <33.010757, 38.286991, 30.710640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585148, 38.603622, 30.485605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595478, 38.671623, 30.879648>,  <33.601677, 38.712421, 31.116074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595478, 38.671623, 30.879648>,  <33.585148, 38.603622, 30.485605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595478, 38.671623, 30.879648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999337, -0.029677, -0.021076,
		0.025652, 0.984997, -0.170653,
		0.025824, 0.170000, 0.985106,
		33.603226, 38.722622, 31.175180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966530, 39.193703, 30.458826>,  <33.585148, 38.603622, 30.485605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966530, 39.193703, 30.458826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038307, 38.958893, 30.774599>,  <34.081375, 38.818008, 30.964064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038307, 38.958893, 30.774599>,  <33.966530, 39.193703, 30.458826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038307, 38.958893, 30.774599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982150, 0.152895, -0.109561,
		-0.056385, 0.795002, 0.603981,
		0.179446, -0.587023, 0.789432,
		34.092140, 38.782787, 31.011429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382938, 39.491394, 31.047325>,  <33.966530, 39.193703, 30.458826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382938, 39.491394, 31.047325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429573, 39.094444, 31.063370>,  <34.457554, 38.856274, 31.072996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429573, 39.094444, 31.063370>,  <34.382938, 39.491394, 31.047325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429573, 39.094444, 31.063370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987975, 0.120013, 0.097482,
		-0.101552, 0.028266, 0.994429,
		0.116589, -0.992370, 0.040113,
		34.464550, 38.796734, 31.075403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300945, 39.084522, 31.580050>,  <34.382938, 39.491394, 31.047325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300945, 39.084522, 31.580050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507656, 39.407623, 31.693525>,  <34.631683, 39.601482, 31.761610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507656, 39.407623, 31.693525>,  <34.300945, 39.084522, 31.580050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507656, 39.407623, 31.693525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297214, -0.480027, 0.825371,
		0.802874, -0.342215, -0.488142,
		0.516776, 0.807752, 0.283690,
		34.662689, 39.649948, 31.778633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373306, 38.534496, 32.053020>,  <34.300945, 39.084522, 31.580050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373306, 38.534496, 32.053020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540424, 38.301613, 32.332012>,  <34.640697, 38.161880, 32.499405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540424, 38.301613, 32.332012>,  <34.373306, 38.534496, 32.053020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540424, 38.301613, 32.332012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422847, 0.554870, 0.716464,
		-0.804143, -0.594263, -0.014363,
		0.417798, -0.582213, 0.697477,
		34.665764, 38.126949, 32.541256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921902, 38.035023, 32.509502>,  <34.373306, 38.534496, 32.053020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921902, 38.035023, 32.509502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242592, 38.141212, 32.723701>,  <34.435005, 38.204926, 32.852222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242592, 38.141212, 32.723701>,  <33.921902, 38.035023, 32.509502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242592, 38.141212, 32.723701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594296, 0.258729, 0.761493,
		0.063609, -0.928753, 0.365201,
		0.801727, 0.265475, 0.535497,
		34.483109, 38.220856, 32.884350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815121, 37.711548, 33.202629>,  <33.921902, 38.035023, 32.509502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815121, 37.711548, 33.202629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102947, 37.981995, 33.265980>,  <34.275642, 38.144264, 33.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102947, 37.981995, 33.265980>,  <33.815121, 37.711548, 33.202629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102947, 37.981995, 33.265980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527393, 0.383721, 0.758034,
		0.451748, -0.628985, 0.632694,
		0.719570, 0.676119, 0.158377,
		34.318817, 38.184830, 33.313492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772408, 37.860630, 33.915688>,  <33.815121, 37.711548, 33.202629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772408, 37.860630, 33.915688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033939, 38.144554, 33.810867>,  <34.190857, 38.314911, 33.747974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033939, 38.144554, 33.810867>,  <33.772408, 37.860630, 33.915688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033939, 38.144554, 33.810867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293164, 0.556935, 0.777096,
		0.697540, -0.431264, 0.572232,
		0.653829, 0.709814, -0.262053,
		34.230087, 38.357498, 33.732250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312466, 37.983910, 34.446716>,  <33.772408, 37.860630, 33.915688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312466, 37.983910, 34.446716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191887, 38.303699, 34.238884>,  <34.119537, 38.495575, 34.114185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191887, 38.303699, 34.238884>,  <34.312466, 37.983910, 34.446716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191887, 38.303699, 34.238884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275361, 0.448716, 0.850194,
		0.912855, 0.399363, 0.084879,
		-0.301450, 0.799477, -0.519581,
		34.101452, 38.543541, 34.083008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431519, 38.623600, 34.875805>,  <34.312466, 37.983910, 34.446716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431519, 38.623600, 34.875805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182106, 38.739399, 34.585316>,  <34.032459, 38.808880, 34.411022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182106, 38.739399, 34.585316>,  <34.431519, 38.623600, 34.875805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182106, 38.739399, 34.585316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486496, 0.583468, 0.650297,
		0.611987, 0.758786, -0.222972,
		-0.623533, 0.289498, -0.726221,
		33.995045, 38.826248, 34.367451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748978, 38.926991, 35.192219>,  <34.431519, 38.623600, 34.875805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748978, 38.926991, 35.192219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856339, 39.276340, 35.029652>,  <33.920753, 39.485950, 34.932110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856339, 39.276340, 35.029652>,  <33.748978, 38.926991, 35.192219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856339, 39.276340, 35.029652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461921, -0.486920, -0.741308,
		-0.845333, 0.011236, -0.534121,
		0.268403, 0.873374, -0.406420,
		33.936859, 39.538353, 34.907726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444035, 38.978226, 34.543186>,  <33.748978, 38.926991, 35.192219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444035, 38.978226, 34.543186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792747, 39.169498, 34.585773>,  <34.001976, 39.284260, 34.611324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792747, 39.169498, 34.585773>,  <33.444035, 38.978226, 34.543186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792747, 39.169498, 34.585773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375621, -0.512945, -0.771878,
		-0.314484, 0.712904, -0.626792,
		0.871785, 0.478179, 0.106468,
		34.054283, 39.312954, 34.617714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478886, 39.422489, 33.979893>,  <33.444035, 38.978226, 34.543186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478886, 39.422489, 33.979893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847523, 39.339958, 34.111404>,  <34.068707, 39.290440, 34.190311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847523, 39.339958, 34.111404>,  <33.478886, 39.422489, 33.979893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847523, 39.339958, 34.111404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244593, -0.349021, -0.904632,
		0.301399, 0.914120, -0.271190,
		0.921593, -0.206324, 0.328781,
		34.124001, 39.278061, 34.210037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943325, 39.584835, 33.375111>,  <33.478886, 39.422489, 33.979893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943325, 39.584835, 33.375111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121655, 39.334660, 33.631256>,  <34.228653, 39.184555, 33.784943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121655, 39.334660, 33.631256>,  <33.943325, 39.584835, 33.375111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121655, 39.334660, 33.631256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363207, -0.527456, -0.768031,
		0.818121, 0.574990, -0.007988,
		0.445823, -0.625441, 0.640364,
		34.255402, 39.147026, 33.823364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700001, 39.491474, 33.288418>,  <33.943325, 39.584835, 33.375111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700001, 39.491474, 33.288418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586197, 39.141327, 33.444771>,  <34.517914, 38.931240, 33.538582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586197, 39.141327, 33.444771>,  <34.700001, 39.491474, 33.288418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586197, 39.141327, 33.444771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516734, -0.483462, -0.706577,
		0.807490, 0.000954, 0.589881,
		-0.284511, -0.875365, 0.390884,
		34.500843, 38.878716, 33.562035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251530, 39.096378, 33.544529>,  <34.700001, 39.491474, 33.288418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251530, 39.096378, 33.544529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968048, 38.823254, 33.473530>,  <34.797958, 38.659378, 33.430931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968048, 38.823254, 33.473530>,  <35.251530, 39.096378, 33.544529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968048, 38.823254, 33.473530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607202, -0.462236, -0.646254,
		0.359221, -0.565783, 0.742193,
		-0.708708, -0.682808, -0.177500,
		34.755436, 38.618412, 33.420280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489494, 38.328365, 33.643330>,  <35.251530, 39.096378, 33.544529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489494, 38.328365, 33.643330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172924, 38.330498, 33.398834>,  <34.982983, 38.331779, 33.252136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172924, 38.330498, 33.398834>,  <35.489494, 38.328365, 33.643330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172924, 38.330498, 33.398834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522302, -0.513596, -0.680750,
		-0.317562, -0.858016, 0.403687,
		-0.791426, 0.005334, -0.611242,
		34.935497, 38.332100, 33.215462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394691, 37.622124, 33.428577>,  <35.489494, 38.328365, 33.643330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394691, 37.622124, 33.428577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224548, 37.890320, 33.185429>,  <35.122463, 38.051239, 33.039539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224548, 37.890320, 33.185429>,  <35.394691, 37.622124, 33.428577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224548, 37.890320, 33.185429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246575, -0.560397, -0.790668,
		-0.870789, -0.486202, 0.073042,
		-0.425356, 0.670494, -0.607873,
		35.096943, 38.091469, 33.003067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983597, 37.205532, 33.085663>,  <35.394691, 37.622124, 33.428577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983597, 37.205532, 33.085663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089069, 37.524242, 32.868179>,  <35.152351, 37.715469, 32.737690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089069, 37.524242, 32.868179>,  <34.983597, 37.205532, 33.085663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089069, 37.524242, 32.868179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253262, -0.601063, -0.758011,
		-0.930769, 0.062172, -0.360282,
		0.263680, 0.796779, -0.543706,
		35.168175, 37.763275, 32.705067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733356, 37.080677, 32.421089>,  <34.983597, 37.205532, 33.085663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733356, 37.080677, 32.421089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012730, 37.358341, 32.351421>,  <35.180355, 37.524940, 32.309620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012730, 37.358341, 32.351421>,  <34.733356, 37.080677, 32.421089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012730, 37.358341, 32.351421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395716, -0.577353, -0.714194,
		-0.596321, 0.429895, -0.677932,
		0.698434, 0.694157, -0.174171,
		35.222260, 37.566589, 32.299171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705368, 37.330246, 31.715973>,  <34.733356, 37.080677, 32.421089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705368, 37.330246, 31.715973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079773, 37.396820, 31.840023>,  <35.304417, 37.436764, 31.914454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079773, 37.396820, 31.840023>,  <34.705368, 37.330246, 31.715973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079773, 37.396820, 31.840023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345408, -0.603622, -0.718563,
		0.067605, 0.779705, -0.622487,
		0.936014, 0.166434, 0.310124,
		35.360577, 37.446751, 31.933060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106258, 37.463692, 31.053663>,  <34.705368, 37.330246, 31.715973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106258, 37.463692, 31.053663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369202, 37.351448, 31.333416>,  <35.526966, 37.284103, 31.501268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369202, 37.351448, 31.333416>,  <35.106258, 37.463692, 31.053663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369202, 37.351448, 31.333416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485370, -0.552277, -0.677794,
		0.576449, 0.785014, -0.226845,
		0.657360, -0.280610, 0.699383,
		35.566410, 37.267265, 31.543230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743553, 37.601646, 30.777340>,  <35.106258, 37.463692, 31.053663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743553, 37.601646, 30.777340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829952, 37.342716, 31.069725>,  <35.881790, 37.187359, 31.245157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829952, 37.342716, 31.069725>,  <35.743553, 37.601646, 30.777340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829952, 37.342716, 31.069725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559556, -0.531440, -0.635979,
		0.800152, 0.546384, 0.247429,
		0.215995, -0.647330, 0.730965,
		35.894753, 37.148518, 31.289015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279713, 37.414551, 30.574800>,  <35.743553, 37.601646, 30.777340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279713, 37.414551, 30.574800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235855, 37.128914, 30.851364>,  <36.209541, 36.957531, 31.017302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235855, 37.128914, 30.851364>,  <36.279713, 37.414551, 30.574800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235855, 37.128914, 30.851364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595793, -0.604005, -0.529348,
		0.795619, 0.353899, 0.491677,
		-0.109640, -0.714096, 0.691408,
		36.202965, 36.914684, 31.058786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995972, 37.169685, 30.683147>,  <36.279713, 37.414551, 30.574800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995972, 37.169685, 30.683147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745182, 36.878494, 30.794113>,  <36.594707, 36.703781, 30.860693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745182, 36.878494, 30.794113>,  <36.995972, 37.169685, 30.683147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745182, 36.878494, 30.794113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371034, -0.592150, -0.715327,
		0.685012, -0.345558, 0.641364,
		-0.626971, -0.727975, 0.277416,
		36.557091, 36.660103, 30.877338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351830, 36.497864, 30.838842>,  <36.995972, 37.169685, 30.683147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351830, 36.497864, 30.838842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969173, 36.423729, 30.748962>,  <36.739578, 36.379250, 30.695034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969173, 36.423729, 30.748962>,  <37.351830, 36.497864, 30.838842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969173, 36.423729, 30.748962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291241, -0.619681, -0.728817,
		-0.004167, -0.762657, 0.646789,
		-0.956641, -0.185335, -0.224700,
		36.682182, 36.368130, 30.681553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390015, 35.835087, 30.669249>,  <37.351830, 36.497864, 30.838842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390015, 35.835087, 30.669249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035778, 35.923473, 30.505833>,  <36.823235, 35.976505, 30.407784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035778, 35.923473, 30.505833>,  <37.390015, 35.835087, 30.669249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035778, 35.923473, 30.505833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244578, -0.525911, -0.814616,
		-0.394855, -0.821336, 0.411699,
		-0.885591, 0.220963, -0.408539,
		36.770100, 35.989761, 30.383270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217808, 35.208012, 30.298847>,  <37.390015, 35.835087, 30.669249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217808, 35.208012, 30.298847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937500, 35.444027, 30.138454>,  <36.769318, 35.585636, 30.042219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937500, 35.444027, 30.138454>,  <37.217808, 35.208012, 30.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937500, 35.444027, 30.138454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120930, -0.455694, -0.881884,
		-0.703068, -0.666484, 0.247982,
		-0.700765, 0.590036, -0.400981,
		36.727272, 35.621037, 30.018160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895744, 34.791729, 29.906473>,  <37.217808, 35.208012, 30.298847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895744, 34.791729, 29.906473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797562, 35.150974, 29.760521>,  <36.738651, 35.366524, 29.672949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797562, 35.150974, 29.760521>,  <36.895744, 34.791729, 29.906473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797562, 35.150974, 29.760521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154922, -0.335218, -0.929316,
		-0.956950, -0.284630, -0.056858,
		-0.245452, 0.898117, -0.364883,
		36.723927, 35.420410, 29.651056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360268, 34.739189, 29.430183>,  <36.895744, 34.791729, 29.906473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360268, 34.739189, 29.430183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502258, 35.103188, 29.344496>,  <36.587452, 35.321587, 29.293083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502258, 35.103188, 29.344496>,  <36.360268, 34.739189, 29.430183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502258, 35.103188, 29.344496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084088, -0.259294, -0.962131,
		-0.931084, 0.323525, -0.168565,
		0.354981, 0.909999, -0.214220,
		36.608753, 35.376186, 29.280230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146610, 34.873154, 28.745207>,  <36.360268, 34.739189, 29.430183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146610, 34.873154, 28.745207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457676, 35.119812, 28.794176>,  <36.644314, 35.267807, 28.823559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457676, 35.119812, 28.794176>,  <36.146610, 34.873154, 28.745207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457676, 35.119812, 28.794176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269404, -0.150917, -0.951129,
		-0.568034, 0.772639, -0.283490,
		0.777662, 0.616647, 0.122425,
		36.690975, 35.304806, 28.830904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169064, 35.200478, 28.207254>,  <36.146610, 34.873154, 28.745207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169064, 35.200478, 28.207254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542294, 35.256985, 28.339567>,  <36.766232, 35.290890, 28.418955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542294, 35.256985, 28.339567>,  <36.169064, 35.200478, 28.207254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542294, 35.256985, 28.339567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353155, -0.185394, -0.917012,
		-0.068217, 0.972457, -0.222874,
		0.933075, 0.141265, 0.330781,
		36.822216, 35.299366, 28.438801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432777, 35.525620, 27.729549>,  <36.169064, 35.200478, 28.207254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432777, 35.525620, 27.729549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751343, 35.383289, 27.925142>,  <36.942482, 35.297890, 28.042498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751343, 35.383289, 27.925142>,  <36.432777, 35.525620, 27.729549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751343, 35.383289, 27.925142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458897, -0.171030, -0.871873,
		0.393868, 0.918768, 0.027077,
		0.796418, -0.355829, 0.488983,
		36.990269, 35.276539, 28.071836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034695, 35.876438, 27.479225>,  <36.432777, 35.525620, 27.729549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034695, 35.876438, 27.479225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170246, 35.530952, 27.628439>,  <37.251579, 35.323662, 27.717968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170246, 35.530952, 27.628439>,  <37.034695, 35.876438, 27.479225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170246, 35.530952, 27.628439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582099, -0.119011, -0.804361,
		0.739135, 0.489725, 0.462438,
		0.338881, -0.863716, 0.373034,
		37.271912, 35.271839, 27.740349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700432, 35.918755, 27.351488>,  <37.034695, 35.876438, 27.479225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700432, 35.918755, 27.351488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637604, 35.530724, 27.425543>,  <37.599907, 35.297905, 27.469975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637604, 35.530724, 27.425543>,  <37.700432, 35.918755, 27.351488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637604, 35.530724, 27.425543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598242, -0.242615, -0.763704,
		0.785770, -0.009201, 0.618450,
		-0.157072, -0.970079, 0.185135,
		37.590481, 35.239700, 27.481083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312073, 35.593906, 27.250174>,  <37.700432, 35.918755, 27.351488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312073, 35.593906, 27.250174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070724, 35.276840, 27.215233>,  <37.925915, 35.086601, 27.194269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070724, 35.276840, 27.215233>,  <38.312073, 35.593906, 27.250174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070724, 35.276840, 27.215233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474494, -0.268811, -0.838210,
		0.640937, -0.547199, 0.538306,
		-0.603370, -0.792662, -0.087352,
		37.889713, 35.039040, 27.189028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768559, 35.087692, 26.968748>,  <38.312073, 35.593906, 27.250174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768559, 35.087692, 26.968748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386185, 34.987530, 26.907455>,  <38.156761, 34.927433, 26.870680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386185, 34.987530, 26.907455>,  <38.768559, 35.087692, 26.968748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386185, 34.987530, 26.907455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210201, -0.219450, -0.952711,
		0.204940, -0.942941, 0.262416,
		-0.955937, -0.250409, -0.153233,
		38.099403, 34.912407, 26.861485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783127, 34.347599, 26.738598>,  <38.768559, 35.087692, 26.968748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783127, 34.347599, 26.738598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439533, 34.516338, 26.622540>,  <38.233376, 34.617580, 26.552904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439533, 34.516338, 26.622540>,  <38.783127, 34.347599, 26.738598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439533, 34.516338, 26.622540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078149, -0.452027, -0.888574,
		-0.506000, -0.785947, 0.355317,
		-0.858986, 0.421851, -0.290147,
		38.181835, 34.642891, 26.535496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418388, 33.854431, 26.326366>,  <38.783127, 34.347599, 26.738598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418388, 33.854431, 26.326366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226398, 34.192223, 26.231310>,  <38.111206, 34.394897, 26.174276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226398, 34.192223, 26.231310>,  <38.418388, 33.854431, 26.326366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226398, 34.192223, 26.231310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079860, -0.311819, -0.946779,
		-0.873640, -0.435452, 0.217105,
		-0.479974, 0.844482, -0.237643,
		38.082405, 34.445568, 26.160017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869118, 33.634296, 25.879101>,  <38.418388, 33.854431, 26.326366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869118, 33.634296, 25.879101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955467, 34.017227, 25.802238>,  <38.007278, 34.246986, 25.756121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955467, 34.017227, 25.802238>,  <37.869118, 33.634296, 25.879101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955467, 34.017227, 25.802238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045536, -0.206451, -0.977397,
		-0.975359, 0.202246, -0.088160,
		0.215875, 0.957327, -0.192154,
		38.020229, 34.304424, 25.744593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608612, 33.707310, 25.264391>,  <37.869118, 33.634296, 25.879101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608612, 33.707310, 25.264391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840240, 34.033306, 25.255804>,  <37.979218, 34.228905, 25.250652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840240, 34.033306, 25.255804>,  <37.608612, 33.707310, 25.264391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840240, 34.033306, 25.255804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202833, -0.169522, -0.964428,
		-0.789641, 0.554119, -0.263473,
		0.579073, 0.814993, -0.021468,
		38.013962, 34.277805, 25.249363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446194, 34.072098, 24.583643>,  <37.608612, 33.707310, 25.264391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446194, 34.072098, 24.583643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801933, 34.182495, 24.729456>,  <38.015377, 34.248734, 24.816944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801933, 34.182495, 24.729456>,  <37.446194, 34.072098, 24.583643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801933, 34.182495, 24.729456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382340, -0.011684, -0.923948,
		-0.250745, 0.961088, -0.115915,
		0.889350, 0.275994, 0.364533,
		38.068737, 34.265293, 24.838816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684353, 34.409187, 24.068964>,  <37.446194, 34.072098, 24.583643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684353, 34.409187, 24.068964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026440, 34.381413, 24.274401>,  <38.231693, 34.364750, 24.397663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026440, 34.381413, 24.274401>,  <37.684353, 34.409187, 24.068964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026440, 34.381413, 24.274401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518261, 0.116757, -0.847215,
		-0.001141, 0.990731, 0.135838,
		0.855222, -0.069433, 0.513590,
		38.283005, 34.360584, 24.428478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163082, 35.006092, 23.968706>,  <37.684353, 34.409187, 24.068964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163082, 35.006092, 23.968706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398922, 34.709698, 24.097267>,  <38.540428, 34.531860, 24.174404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398922, 34.709698, 24.097267>,  <38.163082, 35.006092, 23.968706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398922, 34.709698, 24.097267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457567, -0.021483, -0.888916,
		0.665582, 0.671172, 0.326386,
		0.589604, -0.740990, 0.321405,
		38.575802, 34.487400, 24.193689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849358, 35.210098, 23.883471>,  <38.163082, 35.006092, 23.968706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849358, 35.210098, 23.883471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872883, 34.811119, 23.899683>,  <38.886997, 34.571732, 23.909410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872883, 34.811119, 23.899683>,  <38.849358, 35.210098, 23.883471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872883, 34.811119, 23.899683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656791, 0.008087, -0.754030,
		0.751776, 0.070964, 0.655589,
		0.058811, -0.997446, 0.040529,
		38.890526, 34.511887, 23.911842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513153, 35.049534, 23.674023>,  <38.849358, 35.210098, 23.883471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513153, 35.049534, 23.674023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323395, 34.705769, 23.597754>,  <39.209541, 34.499508, 23.551992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323395, 34.705769, 23.597754>,  <39.513153, 35.049534, 23.674023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323395, 34.705769, 23.597754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744723, -0.276306, -0.607489,
		0.469401, -0.430188, 0.771104,
		-0.474395, -0.859415, -0.190673,
		39.181076, 34.447945, 23.540552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999516, 34.477127, 23.579514>,  <39.513153, 35.049534, 23.674023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999516, 34.477127, 23.579514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664951, 34.342648, 23.406357>,  <39.464214, 34.261959, 23.302464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664951, 34.342648, 23.406357>,  <39.999516, 34.477127, 23.579514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664951, 34.342648, 23.406357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516293, -0.218088, -0.828179,
		0.184021, -0.916194, 0.355985,
		-0.836408, -0.336195, -0.432891,
		39.414028, 34.241791, 23.276489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121407, 33.797066, 23.334297>,  <39.999516, 34.477127, 23.579514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121407, 33.797066, 23.334297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823448, 33.954212, 23.118603>,  <39.644672, 34.048500, 22.989185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823448, 33.954212, 23.118603>,  <40.121407, 33.797066, 23.334297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823448, 33.954212, 23.118603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509014, -0.187849, -0.840010,
		-0.431310, -0.900203, -0.060048,
		-0.744900, 0.392870, -0.539237,
		39.599979, 34.072075, 22.956831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082146, 33.324802, 22.826475>,  <40.121407, 33.797066, 23.334297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082146, 33.324802, 22.826475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903843, 33.657127, 22.693180>,  <39.796860, 33.856522, 22.613203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903843, 33.657127, 22.693180>,  <40.082146, 33.324802, 22.826475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903843, 33.657127, 22.693180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395107, -0.151435, -0.906067,
		-0.803237, -0.535551, -0.260758,
		-0.445758, 0.830814, -0.333238,
		39.770115, 33.906372, 22.593208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664833, 33.131493, 22.180380>,  <40.082146, 33.324802, 22.826475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664833, 33.131493, 22.180380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741295, 33.523941, 22.168634>,  <39.787174, 33.759411, 22.161587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741295, 33.523941, 22.168634>,  <39.664833, 33.131493, 22.180380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741295, 33.523941, 22.168634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288286, -0.084716, -0.953790,
		-0.938270, 0.173859, -0.299037,
		0.191158, 0.981120, -0.029365,
		39.798641, 33.818275, 22.159824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434853, 33.238163, 21.469643>,  <39.664833, 33.131493, 22.180380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434853, 33.238163, 21.469643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650307, 33.550056, 21.597321>,  <39.779579, 33.737194, 21.673927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650307, 33.550056, 21.597321>,  <39.434853, 33.238163, 21.469643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650307, 33.550056, 21.597321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277426, 0.193588, -0.941041,
		-0.795557, 0.595428, -0.112047,
		0.538632, 0.779736, 0.319197,
		39.811897, 33.783978, 21.693079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305462, 33.742443, 20.974773>,  <39.434853, 33.238163, 21.469643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305462, 33.742443, 20.974773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657124, 33.818336, 21.149626>,  <39.868122, 33.863873, 21.254538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657124, 33.818336, 21.149626>,  <39.305462, 33.742443, 20.974773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657124, 33.818336, 21.149626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403046, 0.193334, -0.894525,
		-0.254234, 0.962613, 0.093500,
		0.879158, 0.189734, 0.437129,
		39.920872, 33.875256, 21.280764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608578, 34.302010, 20.574675>,  <39.305462, 33.742443, 20.974773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608578, 34.302010, 20.574675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915009, 34.139812, 20.774153>,  <40.098869, 34.042496, 20.893839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915009, 34.139812, 20.774153>,  <39.608578, 34.302010, 20.574675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915009, 34.139812, 20.774153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628179, 0.308100, -0.714469,
		0.136065, 0.860610, 0.490752,
		0.766079, -0.405494, 0.498696,
		40.144833, 34.018166, 20.923761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095074, 34.801567, 20.652197>,  <39.608578, 34.302010, 20.574675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095074, 34.801567, 20.652197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334187, 34.483673, 20.694260>,  <40.477654, 34.292938, 20.719498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334187, 34.483673, 20.694260>,  <40.095074, 34.801567, 20.652197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334187, 34.483673, 20.694260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475468, 0.245872, -0.844676,
		0.645439, 0.554927, 0.524848,
		0.597779, -0.794735, 0.105155,
		40.513519, 34.245255, 20.725805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851517, 34.977947, 20.504089>,  <40.095074, 34.801567, 20.652197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851517, 34.977947, 20.504089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780327, 34.590317, 20.435717>,  <40.737614, 34.357738, 20.394693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780327, 34.590317, 20.435717>,  <40.851517, 34.977947, 20.504089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780327, 34.590317, 20.435717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505366, 0.059038, -0.860883,
		0.844352, -0.239600, 0.479230,
		-0.177975, -0.969075, -0.170934,
		40.726936, 34.299595, 20.384436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424023, 34.769897, 20.291777>,  <40.851517, 34.977947, 20.504089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424023, 34.769897, 20.291777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160553, 34.509232, 20.141327>,  <41.002472, 34.352833, 20.051056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160553, 34.509232, 20.141327>,  <41.424023, 34.769897, 20.291777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160553, 34.509232, 20.141327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405173, 0.114025, -0.907101,
		0.634018, -0.749883, 0.188934,
		-0.658677, -0.651669, -0.376126,
		40.962948, 34.313732, 20.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821537, 34.271160, 19.923292>,  <41.424023, 34.769897, 20.291777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821537, 34.271160, 19.923292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454872, 34.229748, 19.768885>,  <41.234875, 34.204899, 19.676241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454872, 34.229748, 19.768885>,  <41.821537, 34.271160, 19.923292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454872, 34.229748, 19.768885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390815, -0.030129, -0.919976,
		0.083615, -0.994170, 0.068080,
		-0.916663, -0.103531, -0.386018,
		41.179874, 34.198689, 19.653080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772663, 33.657902, 19.586323>,  <41.821537, 34.271160, 19.923292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772663, 33.657902, 19.586323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488918, 33.884285, 19.418276>,  <41.318672, 34.020115, 19.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488918, 33.884285, 19.418276>,  <41.772663, 33.657902, 19.586323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488918, 33.884285, 19.418276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471917, -0.061377, -0.879504,
		-0.523550, -0.822145, -0.223548,
		-0.709359, 0.565960, -0.420118,
		41.276112, 34.054073, 19.292240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610550, 33.285141, 19.066505>,  <41.772663, 33.657902, 19.586323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610550, 33.285141, 19.066505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507488, 33.660488, 18.974356>,  <41.445652, 33.885696, 18.919065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507488, 33.660488, 18.974356>,  <41.610550, 33.285141, 19.066505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507488, 33.660488, 18.974356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555596, -0.051186, -0.829875,
		-0.790524, -0.341816, -0.508167,
		-0.257654, 0.938372, -0.230375,
		41.430191, 33.942001, 18.905243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468304, 33.192986, 18.314634>,  <41.610550, 33.285141, 19.066505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468304, 33.192986, 18.314634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447216, 33.589645, 18.361712>,  <41.434563, 33.827641, 18.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447216, 33.589645, 18.361712>,  <41.468304, 33.192986, 18.314634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447216, 33.589645, 18.361712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464795, 0.128681, -0.876018,
		-0.883847, 0.008519, -0.467698,
		-0.052720, 0.991650, 0.117694,
		41.431400, 33.887138, 18.397020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095539, 33.484756, 17.781839>,  <41.468304, 33.192986, 18.314634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095539, 33.484756, 17.781839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366947, 33.745831, 17.916668>,  <41.529793, 33.902473, 17.997564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366947, 33.745831, 17.916668>,  <41.095539, 33.484756, 17.781839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366947, 33.745831, 17.916668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385295, 0.074465, -0.919784,
		-0.625429, 0.753961, -0.200951,
		0.678518, 0.652685, 0.337070,
		41.570503, 33.941635, 18.017790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985912, 33.962379, 17.257097>,  <41.095539, 33.484756, 17.781839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985912, 33.962379, 17.257097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347572, 33.960548, 17.427977>,  <41.564568, 33.959450, 17.530504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347572, 33.960548, 17.427977>,  <40.985912, 33.962379, 17.257097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347572, 33.960548, 17.427977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415607, 0.241027, -0.877027,
		-0.098950, 0.970508, 0.219827,
		0.904146, -0.004579, 0.427200,
		41.618816, 33.959175, 17.556137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397106, 34.369194, 16.871962>,  <40.985912, 33.962379, 17.257097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397106, 34.369194, 16.871962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682930, 34.178551, 17.076805>,  <41.854424, 34.064167, 17.199711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682930, 34.178551, 17.076805>,  <41.397106, 34.369194, 16.871962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682930, 34.178551, 17.076805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561992, -0.044875, -0.825924,
		0.416621, 0.877971, 0.235782,
		0.714557, -0.476605, 0.512109,
		41.897297, 34.035568, 17.230438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095890, 34.700401, 16.947092>,  <41.397106, 34.369194, 16.871962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095890, 34.700401, 16.947092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108002, 34.301369, 16.922070>,  <42.115269, 34.061951, 16.907057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108002, 34.301369, 16.922070>,  <42.095890, 34.700401, 16.947092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108002, 34.301369, 16.922070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402895, 0.069456, -0.912607,
		0.914745, 0.002433, 0.404024,
		0.030282, -0.997582, -0.062554,
		42.117085, 34.002094, 16.903303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706104, 35.016869, 16.730371>,  <42.095890, 34.700401, 16.947092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706104, 35.016869, 16.730371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714233, 34.638409, 16.601139>,  <42.719112, 34.411331, 16.523600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714233, 34.638409, 16.601139>,  <42.706104, 35.016869, 16.730371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714233, 34.638409, 16.601139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951786, -0.117240, 0.283477,
		-0.306091, 0.301741, -0.902918,
		0.020321, -0.946154, -0.323079,
		42.720329, 34.354561, 16.504215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211109, 34.754631, 16.241482>,  <42.706104, 35.016869, 16.730371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211109, 34.754631, 16.241482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537849, 34.607872, 16.419533>,  <43.733894, 34.519817, 16.526363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537849, 34.607872, 16.419533>,  <43.211109, 34.754631, 16.241482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537849, 34.607872, 16.419533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357735, 0.927550, 0.108063,
		-0.452526, 0.070966, 0.888923,
		0.816851, -0.366900, 0.445127,
		43.782906, 34.497803, 16.553070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429195, 35.172016, 16.884584>,  <43.211109, 34.754631, 16.241482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429195, 35.172016, 16.884584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717304, 35.004223, 16.663593>,  <43.890171, 34.903545, 16.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717304, 35.004223, 16.663593>,  <43.429195, 35.172016, 16.884584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717304, 35.004223, 16.663593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556544, 0.824866, 0.099269,
		0.414078, -0.378979, 0.827595,
		0.720276, -0.419488, -0.552478,
		43.933388, 34.878376, 16.497850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989044, 35.206352, 17.248516>,  <43.429195, 35.172016, 16.884584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989044, 35.206352, 17.248516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097424, 35.199245, 16.863544>,  <44.162453, 35.194981, 16.632561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097424, 35.199245, 16.863544>,  <43.989044, 35.206352, 17.248516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097424, 35.199245, 16.863544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670186, 0.721179, 0.175361,
		0.690968, -0.692521, 0.207313,
		0.270951, -0.017769, -0.962429,
		44.178707, 35.193916, 16.574816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145878, 35.653320, 17.857153>,  <43.989044, 35.206352, 17.248516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145878, 35.653320, 17.857153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138363, 36.023212, 17.705091>,  <44.133854, 36.245148, 17.613855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138363, 36.023212, 17.705091>,  <44.145878, 35.653320, 17.857153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138363, 36.023212, 17.705091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969658, 0.075839, 0.232404,
		0.243742, 0.372985, 0.895250,
		-0.018789, 0.924733, -0.380153,
		44.132725, 36.300632, 17.591045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111729, 36.225983, 18.307756>,  <44.145878, 35.653320, 17.857153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111729, 36.225983, 18.307756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906231, 36.305901, 17.974014>,  <43.782932, 36.353851, 17.773769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906231, 36.305901, 17.974014>,  <44.111729, 36.225983, 18.307756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906231, 36.305901, 17.974014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829931, 0.130744, 0.542329,
		0.217443, 0.971075, 0.098648,
		-0.513744, 0.199797, -0.834355,
		43.752106, 36.365841, 17.723707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642807, 36.773407, 18.337410>,  <44.111729, 36.225983, 18.307756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642807, 36.773407, 18.337410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478642, 36.569313, 18.035093>,  <43.380142, 36.446857, 17.853704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478642, 36.569313, 18.035093>,  <43.642807, 36.773407, 18.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478642, 36.569313, 18.035093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911000, 0.192649, 0.364644,
		-0.040452, 0.838180, -0.543891,
		-0.410417, -0.510235, -0.755789,
		43.355515, 36.416241, 17.808357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107800, 37.178234, 17.889011>,  <43.642807, 36.773407, 18.337410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107800, 37.178234, 17.889011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042252, 36.787189, 17.941807>,  <43.002922, 36.552563, 17.973484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042252, 36.787189, 17.941807>,  <43.107800, 37.178234, 17.889011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042252, 36.787189, 17.941807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776430, 0.210354, 0.594061,
		-0.608525, -0.005132, -0.793518,
		-0.163871, -0.977612, 0.131990,
		42.993092, 36.493904, 17.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367908, 37.158424, 17.990425>,  <43.107800, 37.178234, 17.889011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367908, 37.158424, 17.990425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458786, 36.786697, 18.106880>,  <42.513313, 36.563663, 18.176752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458786, 36.786697, 18.106880>,  <42.367908, 37.158424, 17.990425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458786, 36.786697, 18.106880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792043, -0.002385, 0.610461,
		-0.566616, -0.369283, -0.736598,
		0.227190, -0.929314, 0.291136,
		42.526943, 36.507904, 18.194221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745449, 36.755283, 18.079805>,  <42.367908, 37.158424, 17.990425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745449, 36.755283, 18.079805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017239, 36.564934, 18.303185>,  <42.180313, 36.450722, 18.437212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017239, 36.564934, 18.303185>,  <41.745449, 36.755283, 18.079805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017239, 36.564934, 18.303185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650199, -0.037890, 0.758819,
		-0.339944, -0.878696, -0.335159,
		0.679470, -0.475876, 0.558446,
		42.221081, 36.422173, 18.470718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400860, 36.161243, 18.369492>,  <41.745449, 36.755283, 18.079805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400860, 36.161243, 18.369492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710396, 36.234348, 18.612068>,  <41.896118, 36.278210, 18.757614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710396, 36.234348, 18.612068>,  <41.400860, 36.161243, 18.369492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710396, 36.234348, 18.612068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612500, -0.027896, 0.789978,
		0.161295, -0.982761, 0.090355,
		0.773840, 0.182762, 0.606441,
		41.942547, 36.289177, 18.794001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234837, 35.816116, 18.999863>,  <41.400860, 36.161243, 18.369492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234837, 35.816116, 18.999863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532295, 36.063206, 19.102160>,  <41.710770, 36.211460, 19.163538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532295, 36.063206, 19.102160>,  <41.234837, 35.816116, 18.999863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532295, 36.063206, 19.102160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360308, 0.048067, 0.931594,
		0.563177, -0.784923, 0.258316,
		0.743647, 0.617726, 0.255744,
		41.755390, 36.248524, 19.178883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479259, 35.456558, 19.612125>,  <41.234837, 35.816116, 18.999863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479259, 35.456558, 19.612125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598488, 35.836918, 19.645441>,  <41.670025, 36.065136, 19.665430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598488, 35.836918, 19.645441>,  <41.479259, 35.456558, 19.612125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598488, 35.836918, 19.645441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349142, 0.027401, 0.936669,
		0.888399, -0.308276, 0.340167,
		0.298073, 0.950902, 0.083289,
		41.687908, 36.122189, 19.670427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868580, 35.545540, 20.240667>,  <41.479259, 35.456558, 19.612125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868580, 35.545540, 20.240667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748825, 35.918758, 20.160870>,  <41.676971, 36.142689, 20.112991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748825, 35.918758, 20.160870>,  <41.868580, 35.545540, 20.240667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748825, 35.918758, 20.160870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214992, 0.137740, 0.966854,
		0.929594, 0.332355, 0.159359,
		-0.299388, 0.933042, -0.199496,
		41.659008, 36.198669, 20.101021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265400, 36.080269, 20.650105>,  <41.868580, 35.545540, 20.240667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265400, 36.080269, 20.650105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910202, 36.237804, 20.555140>,  <41.697083, 36.332325, 20.498161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910202, 36.237804, 20.555140>,  <42.265400, 36.080269, 20.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910202, 36.237804, 20.555140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116817, 0.306147, 0.944790,
		0.444778, 0.866698, -0.225849,
		-0.887990, 0.393838, -0.237413,
		41.643806, 36.355957, 20.483915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212063, 36.609215, 21.108339>,  <42.265400, 36.080269, 20.650105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212063, 36.609215, 21.108339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833374, 36.566898, 20.986670>,  <41.606159, 36.541508, 20.913668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833374, 36.566898, 20.986670>,  <42.212063, 36.609215, 21.108339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833374, 36.566898, 20.986670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320882, 0.229723, 0.918837,
		-0.027325, 0.967490, -0.251429,
		-0.946725, -0.105786, -0.304173,
		41.549358, 36.535164, 20.895418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920502, 37.091972, 21.441490>,  <42.212063, 36.609215, 21.108339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920502, 37.091972, 21.441490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611126, 36.866806, 21.324928>,  <41.425499, 36.731709, 21.254992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611126, 36.866806, 21.324928>,  <41.920502, 37.091972, 21.441490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611126, 36.866806, 21.324928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424478, 0.118550, 0.897644,
		-0.470748, 0.817971, -0.330635,
		-0.773443, -0.562911, -0.291404,
		41.379093, 36.697933, 21.237507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371586, 37.383312, 21.679001>,  <41.920502, 37.091972, 21.441490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371586, 37.383312, 21.679001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261318, 37.002571, 21.625370>,  <41.195156, 36.774124, 21.593191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261318, 37.002571, 21.625370>,  <41.371586, 37.383312, 21.679001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261318, 37.002571, 21.625370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497092, 0.021781, 0.867424,
		-0.822742, 0.305772, -0.479164,
		-0.275671, -0.951856, -0.134077,
		41.178616, 36.717014, 21.585148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685272, 37.344162, 21.817787>,  <41.371586, 37.383312, 21.679001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685272, 37.344162, 21.817787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802719, 36.963184, 21.850357>,  <40.873188, 36.734596, 21.869898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802719, 36.963184, 21.850357>,  <40.685272, 37.344162, 21.817787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802719, 36.963184, 21.850357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572003, -0.106813, 0.813267,
		-0.765897, -0.285367, -0.576166,
		0.293622, -0.952447, 0.081423,
		40.890804, 36.677448, 21.874784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061302, 36.936504, 22.016350>,  <40.685272, 37.344162, 21.817787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061302, 36.936504, 22.016350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386513, 36.725647, 22.115229>,  <40.581638, 36.599133, 22.174555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386513, 36.725647, 22.115229>,  <40.061302, 36.936504, 22.016350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386513, 36.725647, 22.115229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479523, -0.365453, 0.797811,
		-0.330217, -0.767182, -0.549899,
		0.813028, -0.527140, 0.247202,
		40.630421, 36.567501, 22.189388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872925, 36.343678, 22.310753>,  <40.061302, 36.936504, 22.016350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872925, 36.343678, 22.310753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251564, 36.382721, 22.433670>,  <40.478748, 36.406147, 22.507420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251564, 36.382721, 22.433670>,  <39.872925, 36.343678, 22.310753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251564, 36.382721, 22.433670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275990, -0.247440, 0.928764,
		0.166691, -0.963974, -0.207287,
		0.946596, 0.097607, 0.307293,
		40.535542, 36.412003, 22.525858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945339, 35.837124, 22.775484>,  <39.872925, 36.343678, 22.310753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945339, 35.837124, 22.775484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233383, 36.097126, 22.872589>,  <40.406212, 36.253128, 22.930853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233383, 36.097126, 22.872589>,  <39.945339, 35.837124, 22.775484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233383, 36.097126, 22.872589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342370, 0.028552, 0.939131,
		0.603507, -0.759395, 0.243103,
		0.720112, 0.650004, 0.242763,
		40.449417, 36.292126, 22.945417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222775, 35.557266, 23.399948>,  <39.945339, 35.837124, 22.775484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222775, 35.557266, 23.399948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339596, 35.939571, 23.385937>,  <40.409687, 36.168953, 23.377531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339596, 35.939571, 23.385937>,  <40.222775, 35.557266, 23.399948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339596, 35.939571, 23.385937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140268, 0.079032, 0.986954,
		0.946061, -0.283328, 0.157144,
		0.292051, 0.955761, -0.035027,
		40.427212, 36.226299, 23.375429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753128, 35.581532, 23.911549>,  <40.222775, 35.557266, 23.399948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753128, 35.581532, 23.911549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617027, 35.952061, 23.846853>,  <40.535366, 36.174377, 23.808037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617027, 35.952061, 23.846853>,  <40.753128, 35.581532, 23.911549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617027, 35.952061, 23.846853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253971, 0.075080, 0.964294,
		0.905388, 0.369179, 0.209712,
		-0.340252, 0.926321, -0.161737,
		40.514954, 36.229958, 23.798332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927319, 35.869434, 24.520769>,  <40.753128, 35.581532, 23.911549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927319, 35.869434, 24.520769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674915, 36.131413, 24.354456>,  <40.523476, 36.288601, 24.254667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674915, 36.131413, 24.354456>,  <40.927319, 35.869434, 24.520769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674915, 36.131413, 24.354456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324582, 0.263902, 0.908297,
		0.704614, 0.708095, 0.046061,
		-0.631004, 0.654949, -0.415784,
		40.485615, 36.327896, 24.229721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017200, 36.532219, 24.816383>,  <40.927319, 35.869434, 24.520769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017200, 36.532219, 24.816383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643593, 36.557819, 24.675810>,  <40.419426, 36.573177, 24.591465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643593, 36.557819, 24.675810>,  <41.017200, 36.532219, 24.816383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643593, 36.557819, 24.675810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302702, 0.380571, 0.873806,
		0.189667, 0.922535, -0.336090,
		-0.934022, 0.063997, -0.351435,
		40.363384, 36.577019, 24.570379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766724, 37.112400, 25.114733>,  <41.017200, 36.532219, 24.816383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766724, 37.112400, 25.114733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423679, 36.936363, 25.008280>,  <40.217854, 36.830742, 24.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423679, 36.936363, 25.008280>,  <40.766724, 37.112400, 25.114733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423679, 36.936363, 25.008280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420738, 0.302742, 0.855177,
		-0.295790, 0.845377, -0.444798,
		-0.857606, -0.440096, -0.266134,
		40.166397, 36.804333, 24.928440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250034, 37.600231, 25.342794>,  <40.766724, 37.112400, 25.114733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250034, 37.600231, 25.342794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030781, 37.285069, 25.230543>,  <39.899227, 37.095970, 25.163193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030781, 37.285069, 25.230543>,  <40.250034, 37.600231, 25.342794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030781, 37.285069, 25.230543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640597, 0.179759, 0.746540,
		-0.537759, 0.588973, -0.603263,
		-0.548133, -0.787907, -0.280628,
		39.866341, 37.048695, 25.146355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641960, 37.913654, 25.193394>,  <40.250034, 37.600231, 25.342794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641960, 37.913654, 25.193394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600006, 37.527500, 25.288912>,  <39.574833, 37.295807, 25.346222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600006, 37.527500, 25.288912>,  <39.641960, 37.913654, 25.193394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600006, 37.527500, 25.288912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698517, 0.242430, 0.673277,
		-0.707866, -0.096185, -0.699767,
		-0.104885, -0.965389, 0.238795,
		39.568542, 37.237885, 25.360550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940529, 37.779533, 25.321085>,  <39.641960, 37.913654, 25.193394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940529, 37.779533, 25.321085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130230, 37.478279, 25.503452>,  <39.244049, 37.297523, 25.612873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130230, 37.478279, 25.503452>,  <38.940529, 37.779533, 25.321085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130230, 37.478279, 25.503452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428698, 0.254764, 0.866783,
		-0.768962, -0.606527, -0.202047,
		0.474253, -0.753141, 0.455920,
		39.272507, 37.252338, 25.640228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442127, 37.465904, 25.791819>,  <38.940529, 37.779533, 25.321085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442127, 37.465904, 25.791819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797981, 37.365723, 25.944567>,  <39.011494, 37.305614, 26.036215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797981, 37.365723, 25.944567>,  <38.442127, 37.465904, 25.791819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797981, 37.365723, 25.944567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302506, 0.303234, 0.903626,
		-0.342113, -0.919414, 0.194003,
		0.889634, -0.250455, 0.381869,
		39.064873, 37.290585, 26.059128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245121, 37.012566, 26.351675>,  <38.442127, 37.465904, 25.791819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245121, 37.012566, 26.351675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612129, 37.161011, 26.408846>,  <38.832333, 37.250076, 26.443148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612129, 37.161011, 26.408846>,  <38.245121, 37.012566, 26.351675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612129, 37.161011, 26.408846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263428, 0.297924, 0.917522,
		0.297924, -0.879497, 0.371114,
		-0.917522, -0.371114, -0.142926,
		38.887386, 37.272346, 26.451723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401970, 36.826946, 26.980062>,  <38.245121, 37.012566, 26.351675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401970, 36.826946, 26.980062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663177, 37.124180, 26.921551>,  <38.819901, 37.302521, 26.886444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663177, 37.124180, 26.921551>,  <38.401970, 36.826946, 26.980062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663177, 37.124180, 26.921551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207655, 0.361423, 0.908985,
		0.728317, -0.563209, 0.390320,
		0.653019, 0.743081, -0.146277,
		38.859085, 37.347103, 26.877668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679447, 36.999283, 27.582273>,  <38.401970, 36.826946, 26.980062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679447, 36.999283, 27.582273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805660, 37.336460, 27.407972>,  <38.881390, 37.538769, 27.303392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805660, 37.336460, 27.407972>,  <38.679447, 36.999283, 27.582273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805660, 37.336460, 27.407972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231127, 0.513654, 0.826281,
		0.920336, -0.160005, 0.356902,
		0.315533, 0.842946, -0.435753,
		38.900322, 37.589344, 27.277246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080296, 37.307468, 28.023746>,  <38.679447, 36.999283, 27.582273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080296, 37.307468, 28.023746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992561, 37.611782, 27.779421>,  <38.939922, 37.794373, 27.632826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992561, 37.611782, 27.779421>,  <39.080296, 37.307468, 28.023746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992561, 37.611782, 27.779421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300949, 0.542777, 0.784107,
		0.928075, 0.355804, 0.109909,
		-0.219333, 0.760787, -0.610816,
		38.926762, 37.840019, 27.596176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229237, 37.839951, 28.409344>,  <39.080296, 37.307468, 28.023746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229237, 37.839951, 28.409344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984730, 37.981426, 28.126144>,  <38.838028, 38.066311, 27.956224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984730, 37.981426, 28.126144>,  <39.229237, 37.839951, 28.409344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984730, 37.981426, 28.126144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436410, 0.595654, 0.674346,
		0.660231, 0.721181, -0.209748,
		-0.611262, 0.353688, -0.707999,
		38.801350, 38.087532, 27.913744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397453, 38.533764, 28.439823>,  <39.229237, 37.839951, 28.409344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397453, 38.533764, 28.439823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033863, 38.484543, 28.280512>,  <38.815708, 38.455009, 28.184925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033863, 38.484543, 28.280512>,  <39.397453, 38.533764, 28.439823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033863, 38.484543, 28.280512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400440, 0.523233, 0.752247,
		0.115829, 0.843259, -0.524879,
		-0.908973, -0.123051, -0.398280,
		38.761169, 38.447628, 28.161028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081242, 39.219433, 28.481926>,  <39.397453, 38.533764, 28.439823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081242, 39.219433, 28.481926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780895, 38.956215, 28.459391>,  <38.600689, 38.798283, 28.445869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780895, 38.956215, 28.459391>,  <39.081242, 39.219433, 28.481926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780895, 38.956215, 28.459391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537809, 0.559690, 0.630483,
		-0.383354, 0.503708, -0.774156,
		-0.750867, -0.658047, -0.056339,
		38.555634, 38.758801, 28.442490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501595, 39.655945, 28.504345>,  <39.081242, 39.219433, 28.481926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501595, 39.655945, 28.504345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371731, 39.289314, 28.597710>,  <38.293812, 39.069336, 28.653728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371731, 39.289314, 28.597710>,  <38.501595, 39.655945, 28.504345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371731, 39.289314, 28.597710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443385, 0.365470, 0.818439,
		-0.835468, 0.162223, -0.525050,
		-0.324660, -0.916578, 0.233411,
		38.274334, 39.014339, 28.667732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790970, 39.685005, 28.688921>,  <38.501595, 39.655945, 28.504345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790970, 39.685005, 28.688921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898724, 39.321323, 28.815908>,  <37.963375, 39.103115, 28.892101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898724, 39.321323, 28.815908>,  <37.790970, 39.685005, 28.688921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898724, 39.321323, 28.815908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512111, 0.143940, 0.846772,
		-0.815582, -0.390686, -0.426837,
		0.269383, -0.909201, 0.317469,
		37.979538, 39.048565, 28.911150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217339, 39.377258, 28.964527>,  <37.790970, 39.685005, 28.688921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217339, 39.377258, 28.964527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513432, 39.176041, 29.142963>,  <37.691090, 39.055309, 29.250025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513432, 39.176041, 29.142963>,  <37.217339, 39.377258, 28.964527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513432, 39.176041, 29.142963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477736, 0.073325, 0.875438,
		-0.473093, -0.861145, -0.186044,
		0.740237, -0.503044, 0.446090,
		37.735504, 39.025127, 29.276791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886742, 38.853909, 29.380501>,  <37.217339, 39.377258, 28.964527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886742, 38.853909, 29.380501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258064, 38.914143, 29.516487>,  <37.480858, 38.950283, 29.598080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258064, 38.914143, 29.516487>,  <36.886742, 38.853909, 29.380501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258064, 38.914143, 29.516487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354415, 0.081837, 0.931500,
		0.112459, -0.985202, 0.129343,
		0.928301, 0.150596, 0.339967,
		37.536556, 38.959320, 29.618477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775684, 38.542530, 29.972532>,  <36.886742, 38.853909, 29.380501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775684, 38.542530, 29.972532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117294, 38.748920, 29.999065>,  <37.322262, 38.872757, 30.014986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117294, 38.748920, 29.999065>,  <36.775684, 38.542530, 29.972532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117294, 38.748920, 29.999065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212981, 0.230452, 0.949490,
		0.474631, -0.825019, 0.306706,
		0.854028, 0.515981, 0.066334,
		37.373505, 38.903713, 30.018965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980591, 38.317051, 30.673439>,  <36.775684, 38.542530, 29.972532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980591, 38.317051, 30.673439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169834, 38.656151, 30.577528>,  <37.283379, 38.859612, 30.519981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169834, 38.656151, 30.577528>,  <36.980591, 38.317051, 30.673439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169834, 38.656151, 30.577528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082068, 0.313387, 0.946073,
		0.877174, -0.427915, 0.217839,
		0.473107, 0.847748, -0.239777,
		37.311768, 38.910477, 30.505594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647770, 38.327942, 31.038824>,  <36.980591, 38.317051, 30.673439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647770, 38.327942, 31.038824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542435, 38.700432, 30.938055>,  <37.479233, 38.923927, 30.877594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542435, 38.700432, 30.938055>,  <37.647770, 38.327942, 31.038824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542435, 38.700432, 30.938055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343258, 0.153599, 0.926597,
		0.901568, 0.330485, 0.279202,
		-0.263341, 0.931229, -0.251922,
		37.463432, 38.979801, 30.862478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906151, 38.846264, 31.539469>,  <37.647770, 38.327942, 31.038824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906151, 38.846264, 31.539469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573780, 38.985577, 31.365911>,  <37.374359, 39.069164, 31.261778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573780, 38.985577, 31.365911>,  <37.906151, 38.846264, 31.539469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573780, 38.985577, 31.365911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432489, 0.086291, 0.897500,
		0.350025, 0.933409, 0.078927,
		-0.830924, 0.348283, -0.433894,
		37.324501, 39.090061, 31.235743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529156, 38.651634, 31.339321>,  <37.906151, 38.846264, 31.539469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529156, 38.651634, 31.339321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830418, 38.895920, 31.437122>,  <39.011177, 39.042492, 31.495804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830418, 38.895920, 31.437122>,  <38.529156, 38.651634, 31.339321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830418, 38.895920, 31.437122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491376, -0.275153, -0.826341,
		-0.437384, 0.742507, -0.507325,
		0.753156, 0.610716, 0.244502,
		39.056366, 39.079136, 31.510473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737362, 39.116142, 30.731428>,  <38.529156, 38.651634, 31.339321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737362, 39.116142, 30.731428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052509, 39.067776, 30.972971>,  <39.241596, 39.038754, 31.117897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052509, 39.067776, 30.972971>,  <38.737362, 39.116142, 30.731428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052509, 39.067776, 30.972971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571226, -0.222937, -0.789937,
		0.230140, 0.967304, -0.106572,
		0.787869, -0.120919, 0.603856,
		39.288872, 39.031502, 31.154127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250412, 39.506920, 30.487467>,  <38.737362, 39.116142, 30.731428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250412, 39.506920, 30.487467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422222, 39.205654, 30.686766>,  <39.525311, 39.024895, 30.806345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422222, 39.205654, 30.686766>,  <39.250412, 39.506920, 30.487467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422222, 39.205654, 30.686766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552874, -0.216925, -0.804534,
		0.714028, 0.621037, 0.323229,
		0.429528, -0.753165, 0.498246,
		39.551079, 38.979706, 30.836239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854893, 39.597652, 30.242060>,  <39.250412, 39.506920, 30.487467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854893, 39.597652, 30.242060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873589, 39.233326, 30.406120>,  <39.884808, 39.014729, 30.504557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873589, 39.233326, 30.406120>,  <39.854893, 39.597652, 30.242060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873589, 39.233326, 30.406120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594712, -0.304525, -0.744031,
		0.802579, 0.278701, 0.527440,
		0.046743, -0.910819, 0.410152,
		39.887611, 38.960079, 30.529165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539062, 39.433899, 30.150206>,  <39.854893, 39.597652, 30.242060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539062, 39.433899, 30.150206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364895, 39.086861, 30.246275>,  <40.260395, 38.878635, 30.303917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364895, 39.086861, 30.246275>,  <40.539062, 39.433899, 30.150206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364895, 39.086861, 30.246275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503518, -0.455869, -0.733930,
		0.746243, -0.198636, 0.635346,
		-0.435420, -0.867598, 0.240172,
		40.234268, 38.826580, 30.318327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093990, 39.046837, 30.234444>,  <40.539062, 39.433899, 30.150206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093990, 39.046837, 30.234444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774185, 38.816692, 30.165468>,  <40.582302, 38.678604, 30.124083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774185, 38.816692, 30.165468>,  <41.093990, 39.046837, 30.234444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774185, 38.816692, 30.165468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492644, -0.463910, -0.736267,
		0.343622, -0.673608, 0.654352,
		-0.799516, -0.575360, -0.172439,
		40.534332, 38.644085, 30.113737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349503, 38.360256, 30.146711>,  <41.093990, 39.046837, 30.234444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349503, 38.360256, 30.146711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008884, 38.338459, 29.938135>,  <40.804512, 38.325378, 29.812988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008884, 38.338459, 29.938135>,  <41.349503, 38.360256, 30.146711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008884, 38.338459, 29.938135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498289, -0.393412, -0.772616,
		-0.163036, -0.917746, 0.362163,
		-0.851544, -0.054497, -0.521442,
		40.753422, 38.322109, 29.781702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272324, 37.639839, 29.788383>,  <41.349503, 38.360256, 30.146711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272324, 37.639839, 29.788383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010803, 37.861176, 29.581945>,  <40.853889, 37.993977, 29.458082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010803, 37.861176, 29.581945>,  <41.272324, 37.639839, 29.788383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010803, 37.861176, 29.581945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220382, -0.513241, -0.829467,
		-0.723863, -0.656044, 0.213610,
		-0.653800, 0.553345, -0.516096,
		40.814663, 38.027180, 29.427116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024097, 37.191982, 29.269060>,  <41.272324, 37.639839, 29.788383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024097, 37.191982, 29.269060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934265, 37.552849, 29.121729>,  <40.880363, 37.769367, 29.033331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934265, 37.552849, 29.121729>,  <41.024097, 37.191982, 29.269060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934265, 37.552849, 29.121729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319141, -0.289041, -0.902555,
		-0.920712, -0.320248, -0.223002,
		-0.224585, 0.902162, -0.368328,
		40.866890, 37.823498, 29.011230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838989, 37.073910, 28.571056>,  <41.024097, 37.191982, 29.269060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838989, 37.073910, 28.571056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867569, 37.471096, 28.533295>,  <40.884716, 37.709408, 28.510637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867569, 37.471096, 28.533295>,  <40.838989, 37.073910, 28.571056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867569, 37.471096, 28.533295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506234, -0.117652, -0.854333,
		-0.859431, 0.013253, -0.511080,
		0.071452, 0.992966, -0.094405,
		40.889004, 37.768986, 28.504972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718395, 37.188793, 27.879425>,  <40.838989, 37.073910, 28.571056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718395, 37.188793, 27.879425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896004, 37.527302, 27.997187>,  <41.002567, 37.730408, 28.067844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896004, 37.527302, 27.997187>,  <40.718395, 37.188793, 27.879425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896004, 37.527302, 27.997187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561050, -0.006410, -0.827757,
		-0.698618, 0.532718, -0.477646,
		0.444023, 0.846269, 0.294403,
		41.029209, 37.781181, 28.085508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558296, 37.734219, 27.399525>,  <40.718395, 37.188793, 27.879425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558296, 37.734219, 27.399525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892693, 37.848312, 27.587040>,  <41.093330, 37.916767, 27.699549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892693, 37.848312, 27.587040>,  <40.558296, 37.734219, 27.399525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892693, 37.848312, 27.587040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468747, 0.072958, -0.880314,
		-0.285298, 0.955677, -0.072711,
		0.835991, 0.285235, 0.468786,
		41.143490, 37.933884, 27.727676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872028, 38.345284, 27.054455>,  <40.558296, 37.734219, 27.399525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872028, 38.345284, 27.054455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180473, 38.188194, 27.254919>,  <41.365540, 38.093941, 27.375198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180473, 38.188194, 27.254919>,  <40.872028, 38.345284, 27.054455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180473, 38.188194, 27.254919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506169, -0.099381, -0.856689,
		0.386244, 0.914273, 0.122149,
		0.771109, -0.392719, 0.501162,
		41.411804, 38.070377, 27.405268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378876, 38.582607, 26.642838>,  <40.872028, 38.345284, 27.054455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378876, 38.582607, 26.642838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546204, 38.304253, 26.876335>,  <41.646599, 38.137241, 27.016434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546204, 38.304253, 26.876335>,  <41.378876, 38.582607, 26.642838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546204, 38.304253, 26.876335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610822, -0.260126, -0.747817,
		0.672240, 0.669389, 0.316245,
		0.418317, -0.695882, 0.583745,
		41.671700, 38.095490, 27.051458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086128, 38.671448, 26.674244>,  <41.378876, 38.582607, 26.642838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086128, 38.671448, 26.674244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033695, 38.281773, 26.747761>,  <42.002235, 38.047970, 26.791870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033695, 38.281773, 26.747761>,  <42.086128, 38.671448, 26.674244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033695, 38.281773, 26.747761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648715, -0.224479, -0.727171,
		0.749657, 0.023907, 0.661395,
		-0.131084, -0.974186, 0.183791,
		41.994370, 37.989517, 26.802898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646244, 38.430779, 26.549040>,  <42.086128, 38.671448, 26.674244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646244, 38.430779, 26.549040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438839, 38.088779, 26.553364>,  <42.314396, 37.883579, 26.555958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438839, 38.088779, 26.553364>,  <42.646244, 38.430779, 26.549040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438839, 38.088779, 26.553364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553431, -0.345212, -0.757986,
		0.651811, -0.387043, 0.652181,
		-0.518514, -0.855001, 0.010811,
		42.283283, 37.832279, 26.556606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125202, 37.777115, 26.519569>,  <42.646244, 38.430779, 26.549040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125202, 37.777115, 26.519569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768070, 37.676140, 26.370371>,  <42.553791, 37.615555, 26.280851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768070, 37.676140, 26.370371>,  <43.125202, 37.777115, 26.519569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768070, 37.676140, 26.370371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449707, -0.454168, -0.769088,
		0.024742, -0.854405, 0.519017,
		-0.892834, -0.252434, -0.372995,
		42.500221, 37.600410, 26.258472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087559, 37.092270, 26.334845>,  <43.125202, 37.777115, 26.519569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087559, 37.092270, 26.334845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766304, 37.211136, 26.128284>,  <42.573551, 37.282455, 26.004349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766304, 37.211136, 26.128284>,  <43.087559, 37.092270, 26.334845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766304, 37.211136, 26.128284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320799, -0.514681, -0.795105,
		-0.502065, -0.804234, 0.318023,
		-0.803130, 0.297173, -0.516401,
		42.525364, 37.300285, 25.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677189, 36.509575, 25.993481>,  <43.087559, 37.092270, 26.334845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677189, 36.509575, 25.993481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554985, 36.834061, 25.794043>,  <42.481663, 37.028751, 25.674379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554985, 36.834061, 25.794043>,  <42.677189, 36.509575, 25.993481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554985, 36.834061, 25.794043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253848, -0.435290, -0.863761,
		-0.917727, -0.390458, -0.072938,
		-0.305513, 0.811212, -0.498594,
		42.463329, 37.077423, 25.644464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348457, 36.219219, 25.471928>,  <42.677189, 36.509575, 25.993481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348457, 36.219219, 25.471928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440647, 36.595860, 25.373730>,  <42.495960, 36.821842, 25.314812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440647, 36.595860, 25.373730>,  <42.348457, 36.219219, 25.471928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440647, 36.595860, 25.373730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326411, -0.312478, -0.892084,
		-0.916699, 0.125470, -0.379367,
		0.230474, 0.941602, -0.245493,
		42.509789, 36.878342, 25.300081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963551, 36.306618, 24.871359>,  <42.348457, 36.219219, 25.471928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963551, 36.306618, 24.871359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245697, 36.589569, 24.889605>,  <42.414986, 36.759338, 24.900553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245697, 36.589569, 24.889605>,  <41.963551, 36.306618, 24.871359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245697, 36.589569, 24.889605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344460, -0.285814, -0.894236,
		-0.619523, 0.646475, -0.445266,
		0.705364, 0.707376, 0.045616,
		42.457306, 36.801781, 24.903290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910450, 36.909721, 24.333366>,  <41.963551, 36.306618, 24.871359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910450, 36.909721, 24.333366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300190, 36.947964, 24.414854>,  <42.534035, 36.970909, 24.463747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300190, 36.947964, 24.414854>,  <41.910450, 36.909721, 24.333366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300190, 36.947964, 24.414854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220513, -0.224997, -0.949079,
		-0.044897, 0.969658, -0.240307,
		0.974350, 0.095602, 0.203721,
		42.592495, 36.976643, 24.475969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201359, 37.378490, 23.813131>,  <41.910450, 36.909721, 24.333366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201359, 37.378490, 23.813131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492966, 37.145756, 23.957348>,  <42.667931, 37.006115, 24.043879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492966, 37.145756, 23.957348>,  <42.201359, 37.378490, 23.813131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492966, 37.145756, 23.957348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236525, -0.280150, -0.930361,
		0.642328, 0.763530, -0.066615,
		0.729020, -0.581841, 0.360542,
		42.711670, 36.971203, 24.065510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819466, 37.565289, 23.383038>,  <42.201359, 37.378490, 23.813131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819466, 37.565289, 23.383038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871796, 37.204540, 23.547724>,  <42.903194, 36.988091, 23.646536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871796, 37.204540, 23.547724>,  <42.819466, 37.565289, 23.383038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871796, 37.204540, 23.547724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235593, -0.375106, -0.896544,
		0.963006, 0.214289, 0.163401,
		0.130827, -0.901873, 0.411714,
		42.911045, 36.933979, 23.671238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429790, 37.350414, 23.122200>,  <42.819466, 37.565289, 23.383038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429790, 37.350414, 23.122200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257683, 37.015484, 23.257114>,  <43.154419, 36.814526, 23.338062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257683, 37.015484, 23.257114>,  <43.429790, 37.350414, 23.122200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257683, 37.015484, 23.257114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240367, -0.466423, -0.851278,
		0.870113, -0.285203, 0.401950,
		-0.430265, -0.837323, 0.337287,
		43.128605, 36.764286, 23.358301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862816, 36.815437, 22.823496>,  <43.429790, 37.350414, 23.122200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862816, 36.815437, 22.823496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531109, 36.618275, 22.928843>,  <43.332085, 36.499977, 22.992050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531109, 36.618275, 22.928843>,  <43.862816, 36.815437, 22.823496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531109, 36.618275, 22.928843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155633, -0.656307, -0.738268,
		0.536745, -0.571232, 0.620966,
		-0.829267, -0.492904, 0.263367,
		43.282330, 36.470402, 23.007853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102089, 36.169189, 22.826569>,  <43.862816, 36.815437, 22.823496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102089, 36.169189, 22.826569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707260, 36.129871, 22.775923>,  <43.470364, 36.106281, 22.745535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707260, 36.129871, 22.775923>,  <44.102089, 36.169189, 22.826569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707260, 36.129871, 22.775923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157368, -0.444070, -0.882064,
		0.030480, -0.890584, 0.453797,
		-0.987070, -0.098299, -0.126614,
		43.411140, 36.100384, 22.737938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984325, 35.440865, 22.777376>,  <44.102089, 36.169189, 22.826569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984325, 35.440865, 22.777376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662663, 35.618225, 22.619019>,  <43.469666, 35.724644, 22.524004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662663, 35.618225, 22.619019>,  <43.984325, 35.440865, 22.777376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662663, 35.618225, 22.619019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115748, -0.536458, -0.835951,
		-0.583043, -0.718057, 0.380072,
		-0.804154, 0.443403, -0.395892,
		43.421417, 35.751247, 22.500252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553368, 34.915520, 22.498629>,  <43.984325, 35.440865, 22.777376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553368, 34.915520, 22.498629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415207, 35.236732, 22.304377>,  <43.332310, 35.429459, 22.187826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415207, 35.236732, 22.304377>,  <43.553368, 34.915520, 22.498629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415207, 35.236732, 22.304377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177748, -0.452132, -0.874061,
		-0.921467, -0.388224, 0.013431,
		-0.345404, 0.803031, -0.485630,
		43.311584, 35.477642, 22.158688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157806, 34.656487, 21.980957>,  <43.553368, 34.915520, 22.498629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157806, 34.656487, 21.980957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272163, 35.023380, 21.870001>,  <43.340778, 35.243515, 21.803427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272163, 35.023380, 21.870001>,  <43.157806, 34.656487, 21.980957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272163, 35.023380, 21.870001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174483, -0.334464, -0.926115,
		-0.942242, 0.216372, -0.255663,
		0.285895, 0.917233, -0.277393,
		43.357933, 35.298550, 21.786783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965157, 34.705429, 21.320604>,  <43.157806, 34.656487, 21.980957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965157, 34.705429, 21.320604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203148, 35.026909, 21.317345>,  <43.345943, 35.219795, 21.315388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203148, 35.026909, 21.317345>,  <42.965157, 34.705429, 21.320604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203148, 35.026909, 21.317345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360138, -0.275649, -0.891245,
		-0.718540, 0.527338, -0.453448,
		0.594980, 0.803699, -0.008151,
		43.381641, 35.268017, 21.314899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846966, 35.032246, 20.672424>,  <42.965157, 34.705429, 21.320604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846966, 35.032246, 20.672424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200356, 35.160320, 20.809216>,  <43.412392, 35.237164, 20.891291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200356, 35.160320, 20.809216>,  <42.846966, 35.032246, 20.672424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200356, 35.160320, 20.809216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423219, -0.232481, -0.875693,
		-0.200881, 0.918386, -0.340901,
		0.883478, 0.320186, 0.341977,
		43.465401, 35.256374, 20.911808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037888, 35.440491, 20.121531>,  <42.846966, 35.032246, 20.672424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037888, 35.440491, 20.121531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357517, 35.344425, 20.342005>,  <43.549294, 35.286785, 20.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357517, 35.344425, 20.342005>,  <43.037888, 35.440491, 20.121531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357517, 35.344425, 20.342005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540060, -0.116195, -0.833567,
		0.264236, 0.963754, 0.036853,
		0.799071, -0.240161, 0.551188,
		43.597240, 35.272377, 20.507360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649311, 36.003838, 19.953482>,  <43.037888, 35.440491, 20.121531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649311, 36.003838, 19.953482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774441, 35.646687, 20.083044>,  <43.849518, 35.432396, 20.160782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774441, 35.646687, 20.083044>,  <43.649311, 36.003838, 19.953482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774441, 35.646687, 20.083044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630815, -0.059642, -0.773638,
		0.710082, 0.446333, 0.544583,
		0.312820, -0.892877, 0.323904,
		43.868286, 35.378822, 20.180216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342655, 36.043606, 19.592974>,  <43.649311, 36.003838, 19.953482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342655, 36.043606, 19.592974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276428, 35.666462, 19.708635>,  <44.236691, 35.440178, 19.778032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276428, 35.666462, 19.708635>,  <44.342655, 36.043606, 19.592974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276428, 35.666462, 19.708635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659732, -0.323825, -0.678153,
		0.733036, 0.078486, 0.675647,
		-0.165566, -0.942856, 0.289155,
		44.226757, 35.383606, 19.795382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976147, 35.723793, 19.681801>,  <44.342655, 36.043606, 19.592974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976147, 35.723793, 19.681801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738602, 35.407330, 19.623281>,  <44.596077, 35.217453, 19.588169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738602, 35.407330, 19.623281>,  <44.976147, 35.723793, 19.681801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738602, 35.407330, 19.623281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485128, -0.207046, -0.849578,
		0.641859, -0.575503, 0.506769,
		-0.593859, -0.791157, -0.146298,
		44.560444, 35.169983, 19.579391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463760, 35.090969, 19.472689>,  <44.976147, 35.723793, 19.681801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463760, 35.090969, 19.472689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108509, 34.951389, 19.353048>,  <44.895359, 34.867641, 19.281265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108509, 34.951389, 19.353048>,  <45.463760, 35.090969, 19.472689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108509, 34.951389, 19.353048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399810, -0.265628, -0.877265,
		0.226676, -0.898706, 0.375427,
		-0.888127, -0.348954, -0.299100,
		44.842072, 34.846703, 19.263319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604679, 34.392067, 19.274782>,  <45.463760, 35.090969, 19.472689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604679, 34.392067, 19.274782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273586, 34.499985, 19.077976>,  <45.074932, 34.564735, 18.959892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273586, 34.499985, 19.077976>,  <45.604679, 34.392067, 19.274782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273586, 34.499985, 19.077976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428863, -0.261279, -0.864760,
		-0.361861, -0.926792, 0.100562,
		-0.827728, 0.269796, -0.492014,
		45.025269, 34.580921, 18.930372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951935, 34.621841, 19.800383>,  <45.604679, 34.392067, 19.274782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951935, 34.621841, 19.800383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271427, 34.406570, 19.908012>,  <46.463123, 34.277409, 19.972591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271427, 34.406570, 19.908012>,  <45.951935, 34.621841, 19.800383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271427, 34.406570, 19.908012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173324, 0.222450, 0.959414,
		-0.576191, -0.812946, 0.084397,
		0.798726, -0.538177, 0.269076,
		46.511044, 34.245117, 19.988735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781368, 34.326832, 20.417234>,  <45.951935, 34.621841, 19.800383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781368, 34.326832, 20.417234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180389, 34.300785, 20.427446>,  <46.419800, 34.285156, 20.433575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180389, 34.300785, 20.427446>,  <45.781368, 34.326832, 20.417234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180389, 34.300785, 20.427446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009792, 0.231412, 0.972807,
		-0.069252, -0.970674, 0.230208,
		0.997551, -0.065115, 0.025531,
		46.479656, 34.281250, 20.435106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033974, 33.968414, 21.034801>,  <45.781368, 34.326832, 20.417234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033974, 33.968414, 21.034801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360096, 34.170208, 20.921120>,  <46.555771, 34.291286, 20.852911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360096, 34.170208, 20.921120>,  <46.033974, 33.968414, 21.034801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360096, 34.170208, 20.921120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093715, 0.369387, 0.924538,
		0.571397, -0.780415, 0.253885,
		0.815305, 0.504486, -0.284203,
		46.604687, 34.321552, 20.835859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607403, 33.814766, 21.525696>,  <46.033974, 33.968414, 21.034801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607403, 33.814766, 21.525696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739166, 34.144833, 21.342140>,  <46.818226, 34.342873, 21.232006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739166, 34.144833, 21.342140>,  <46.607403, 33.814766, 21.525696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739166, 34.144833, 21.342140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146305, 0.435538, 0.888201,
		0.932782, -0.359723, 0.022745,
		0.329413, 0.825171, -0.458891,
		46.837990, 34.392384, 21.204473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.213497, 33.910973, 21.846869>,  <46.607403, 33.814766, 21.525696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.213497, 33.910973, 21.846869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102787, 34.268860, 21.706659>,  <47.036362, 34.483593, 21.622534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102787, 34.268860, 21.706659>,  <47.213497, 33.910973, 21.846869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102787, 34.268860, 21.706659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119750, 0.394044, 0.911257,
		0.953443, 0.210241, -0.216206,
		-0.276778, 0.894722, -0.350523,
		47.019753, 34.537277, 21.601503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724449, 34.371578, 22.202364>,  <47.213497, 33.910973, 21.846869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724449, 34.371578, 22.202364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424850, 34.601646, 22.070803>,  <47.245090, 34.739689, 21.991865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424850, 34.601646, 22.070803>,  <47.724449, 34.371578, 22.202364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.424850, 34.601646, 22.070803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138578, 0.349439, 0.926654,
		0.647915, 0.739644, -0.182024,
		-0.749000, 0.575169, -0.328905,
		47.200150, 34.774197, 21.972132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.872852, 35.061970, 22.409666>,  <47.724449, 34.371578, 22.202364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.872852, 35.061970, 22.409666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479298, 35.087833, 22.342997>,  <47.243164, 35.103352, 22.302994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479298, 35.087833, 22.342997>,  <47.872852, 35.061970, 22.409666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479298, 35.087833, 22.342997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110432, 0.513370, 0.851032,
		0.140591, 0.855728, -0.497959,
		-0.983890, 0.064657, -0.166675,
		47.184132, 35.107231, 22.292994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690914, 35.802658, 22.409157>,  <47.872852, 35.061970, 22.409666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690914, 35.802658, 22.409157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363594, 35.586063, 22.486282>,  <47.167202, 35.456104, 22.532557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363594, 35.586063, 22.486282>,  <47.690914, 35.802658, 22.409157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.363594, 35.586063, 22.486282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166669, 0.544562, 0.821994,
		-0.550100, 0.640500, -0.535864,
		-0.818298, -0.541491, 0.192812,
		47.118103, 35.423615, 22.544127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142143, 36.225727, 22.655716>,  <47.690914, 35.802658, 22.409157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142143, 36.225727, 22.655716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.970680, 35.886227, 22.779572>,  <46.867802, 35.682526, 22.853886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.970680, 35.886227, 22.779572>,  <47.142143, 36.225727, 22.655716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970680, 35.886227, 22.779572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382665, 0.481027, 0.788785,
		-0.818426, 0.219629, -0.530982,
		-0.428656, -0.848750, 0.309640,
		46.842083, 35.631603, 22.872463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398914, 36.285568, 22.784462>,  <47.142143, 36.225727, 22.655716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398914, 36.285568, 22.784462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486851, 35.956047, 22.993469>,  <46.539612, 35.758335, 23.118874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486851, 35.956047, 22.993469>,  <46.398914, 36.285568, 22.784462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486851, 35.956047, 22.993469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398597, 0.413014, 0.818865,
		-0.890387, -0.388297, -0.237565,
		0.219845, -0.823799, 0.522516,
		46.552803, 35.708908, 23.150225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769073, 36.023838, 23.140375>,  <46.398914, 36.285568, 22.784462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769073, 36.023838, 23.140375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083244, 35.894875, 23.351713>,  <46.271748, 35.817497, 23.478516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083244, 35.894875, 23.351713>,  <45.769073, 36.023838, 23.140375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083244, 35.894875, 23.351713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385159, 0.413617, 0.824969,
		-0.484511, -0.851454, 0.200689,
		0.785431, -0.322410, 0.528346,
		46.318874, 35.798153, 23.510218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421741, 35.793812, 23.732647>,  <45.769073, 36.023838, 23.140375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421741, 35.793812, 23.732647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808178, 35.820454, 23.832430>,  <46.040039, 35.836437, 23.892300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808178, 35.820454, 23.832430>,  <45.421741, 35.793812, 23.732647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808178, 35.820454, 23.832430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257707, 0.189383, 0.947481,
		0.015859, -0.979642, 0.200125,
		0.966093, 0.066599, 0.249458,
		46.098007, 35.840435, 23.907267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466167, 35.345497, 24.320206>,  <45.421741, 35.793812, 23.732647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466167, 35.345497, 24.320206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776024, 35.597500, 24.342211>,  <45.961937, 35.748703, 24.355413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776024, 35.597500, 24.342211>,  <45.466167, 35.345497, 24.320206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776024, 35.597500, 24.342211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104310, 0.041488, 0.993679,
		0.623742, -0.775481, 0.097854,
		0.774639, 0.630006, 0.055012,
		46.008415, 35.786503, 24.358715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882095, 35.131344, 24.920753>,  <45.466167, 35.345497, 24.320206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882095, 35.131344, 24.920753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945057, 35.515293, 24.827911>,  <45.982834, 35.745663, 24.772205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945057, 35.515293, 24.827911>,  <45.882095, 35.131344, 24.920753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945057, 35.515293, 24.827911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224796, 0.263691, 0.938048,
		0.961609, -0.095473, 0.257280,
		0.157401, 0.959871, -0.232105,
		45.992279, 35.803253, 24.758280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337498, 35.392948, 25.525902>,  <45.882095, 35.131344, 24.920753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337498, 35.392948, 25.525902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182659, 35.705173, 25.329584>,  <46.089756, 35.892509, 25.211794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182659, 35.705173, 25.329584>,  <46.337498, 35.392948, 25.525902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182659, 35.705173, 25.329584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264676, 0.415824, 0.870079,
		0.883235, 0.466705, 0.045632,
		-0.387095, 0.780562, -0.490796,
		46.066532, 35.939342, 25.182344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.637802, 36.019291, 25.829451>,  <46.337498, 35.392948, 25.525902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.637802, 36.019291, 25.829451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296524, 36.127178, 25.650877>,  <46.091755, 36.191910, 25.543734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296524, 36.127178, 25.650877>,  <46.637802, 36.019291, 25.829451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296524, 36.127178, 25.650877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274077, 0.496387, 0.823700,
		0.443773, 0.825137, -0.349593,
		-0.853198, 0.269720, -0.446434,
		46.040565, 36.208096, 25.516947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588966, 36.835281, 26.035763>,  <46.637802, 36.019291, 25.829451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588966, 36.835281, 26.035763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230476, 36.680843, 25.948387>,  <46.015381, 36.588181, 25.895962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230476, 36.680843, 25.948387>,  <46.588966, 36.835281, 26.035763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230476, 36.680843, 25.948387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416809, 0.564380, 0.712563,
		-0.151831, 0.729664, -0.666737,
		-0.896224, -0.386091, -0.218439,
		45.961609, 36.565018, 25.882854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180878, 37.409164, 26.249783>,  <46.588966, 36.835281, 26.035763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180878, 37.409164, 26.249783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927399, 37.102753, 26.206657>,  <45.775311, 36.918907, 26.180782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927399, 37.102753, 26.206657>,  <46.180878, 37.409164, 26.249783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927399, 37.102753, 26.206657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558086, 0.356197, 0.749442,
		-0.535693, 0.535089, -0.653233,
		-0.633698, -0.766031, -0.107814,
		45.737289, 36.872944, 26.174313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609570, 37.710434, 26.348768>,  <46.180878, 37.409164, 26.249783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609570, 37.710434, 26.348768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486889, 37.330143, 26.366858>,  <45.413280, 37.101967, 26.377712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486889, 37.330143, 26.366858>,  <45.609570, 37.710434, 26.348768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486889, 37.330143, 26.366858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644080, 0.242294, 0.725571,
		-0.700780, 0.193407, -0.686659,
		-0.306704, -0.950730, 0.045225,
		45.394878, 37.044926, 26.380424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853222, 37.615334, 26.184458>,  <45.609570, 37.710434, 26.348768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853222, 37.615334, 26.184458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956696, 37.317165, 26.430199>,  <45.018780, 37.138264, 26.577642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956696, 37.317165, 26.430199>,  <44.853222, 37.615334, 26.184458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956696, 37.317165, 26.430199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676278, 0.314367, 0.666199,
		-0.689731, -0.587808, -0.422791,
		0.258686, -0.745423, 0.614351,
		45.034302, 37.093540, 26.614504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209415, 37.389332, 26.395477>,  <44.853222, 37.615334, 26.184458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209415, 37.389332, 26.395477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472431, 37.250504, 26.662964>,  <44.630241, 37.167206, 26.823456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472431, 37.250504, 26.662964>,  <44.209415, 37.389332, 26.395477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472431, 37.250504, 26.662964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615648, 0.264117, 0.742442,
		-0.434300, -0.899879, -0.040008,
		0.657541, -0.347073, 0.668715,
		44.669693, 37.146381, 26.863579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810749, 37.031086, 26.822556>,  <44.209415, 37.389332, 26.395477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810749, 37.031086, 26.822556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144894, 37.082840, 27.036261>,  <44.345379, 37.113892, 27.164484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144894, 37.082840, 27.036261>,  <43.810749, 37.031086, 26.822556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144894, 37.082840, 27.036261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549507, 0.170465, 0.817914,
		0.014756, -0.976832, 0.213500,
		0.835359, 0.129389, 0.534261,
		44.395500, 37.121658, 27.196539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732941, 36.658913, 27.525730>,  <43.810749, 37.031086, 26.822556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732941, 36.658913, 27.525730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019695, 36.926739, 27.603456>,  <44.191750, 37.087433, 27.650093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019695, 36.926739, 27.603456>,  <43.732941, 36.658913, 27.525730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019695, 36.926739, 27.603456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330412, 0.080861, 0.940367,
		0.613921, -0.738342, 0.279199,
		0.716889, 0.669561, 0.194315,
		44.234760, 37.127605, 27.661751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896454, 36.501797, 28.158552>,  <43.732941, 36.658913, 27.525730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896454, 36.501797, 28.158552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029823, 36.874760, 28.102766>,  <44.109844, 37.098537, 28.069294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029823, 36.874760, 28.102766>,  <43.896454, 36.501797, 28.158552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029823, 36.874760, 28.102766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322785, 0.251889, 0.912339,
		0.885798, -0.259180, 0.384952,
		0.333426, 0.932404, -0.139464,
		44.129852, 37.154480, 28.060926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345009, 36.607586, 28.746082>,  <43.896454, 36.501797, 28.158552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345009, 36.607586, 28.746082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209309, 36.957115, 28.606745>,  <44.127888, 37.166832, 28.523142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209309, 36.957115, 28.606745>,  <44.345009, 36.607586, 28.746082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209309, 36.957115, 28.606745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196569, 0.296280, 0.934654,
		0.919930, 0.385555, 0.071254,
		-0.339249, 0.873823, -0.348345,
		44.107533, 37.219261, 28.502241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393875, 36.988300, 29.356857>,  <44.345009, 36.607586, 28.746082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393875, 36.988300, 29.356857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180710, 37.197922, 29.091116>,  <44.052811, 37.323696, 28.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180710, 37.197922, 29.091116>,  <44.393875, 36.988300, 29.356857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180710, 37.197922, 29.091116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388939, 0.545572, 0.742346,
		0.751483, 0.654002, -0.086919,
		-0.532916, 0.524055, -0.664355,
		44.020836, 37.355137, 28.891809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540997, 37.705528, 29.444975>,  <44.393875, 36.988300, 29.356857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540997, 37.705528, 29.444975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180065, 37.700634, 29.272621>,  <43.963509, 37.697697, 29.169209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180065, 37.700634, 29.272621>,  <44.540997, 37.705528, 29.444975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180065, 37.700634, 29.272621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366925, 0.546394, 0.752874,
		0.226221, 0.837439, -0.497515,
		-0.902325, -0.012235, -0.430883,
		43.909367, 37.696964, 29.143356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311340, 38.407219, 29.466770>,  <44.540997, 37.705528, 29.444975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311340, 38.407219, 29.466770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002865, 38.154041, 29.439503>,  <43.817780, 38.002136, 29.423141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002865, 38.154041, 29.439503>,  <44.311340, 38.407219, 29.466770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002865, 38.154041, 29.439503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406824, 0.407631, 0.817515,
		-0.489654, 0.658192, -0.571858,
		-0.771189, -0.632945, -0.068170,
		43.771507, 37.964157, 29.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826885, 38.755775, 29.821697>,  <44.311340, 38.407219, 29.466770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826885, 38.755775, 29.821697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632175, 38.408607, 29.782177>,  <43.515350, 38.200306, 29.758465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632175, 38.408607, 29.782177>,  <43.826885, 38.755775, 29.821697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632175, 38.408607, 29.782177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462111, 0.159878, 0.872291,
		-0.741287, 0.470263, -0.478902,
		-0.486773, -0.867924, -0.098798,
		43.486145, 38.148232, 29.752537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220562, 39.000061, 29.898081>,  <43.826885, 38.755775, 29.821697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220562, 39.000061, 29.898081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239273, 38.608215, 29.976225>,  <43.250500, 38.373108, 30.023111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239273, 38.608215, 29.976225>,  <43.220562, 39.000061, 29.898081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239273, 38.608215, 29.976225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495189, 0.147111, 0.856239,
		-0.867525, -0.136793, -0.478213,
		0.046777, -0.979615, 0.195361,
		43.253307, 38.314331, 30.034834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403919, 38.824673, 30.069544>,  <43.220562, 39.000061, 29.898081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403919, 38.824673, 30.069544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650146, 38.542286, 30.209650>,  <42.797882, 38.372852, 30.293715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650146, 38.542286, 30.209650>,  <42.403919, 38.824673, 30.069544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650146, 38.542286, 30.209650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529594, -0.041420, 0.847239,
		-0.583616, -0.707030, -0.399374,
		0.615566, -0.705969, 0.350266,
		42.834816, 38.330494, 30.314730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008911, 38.430653, 30.557060>,  <42.403919, 38.824673, 30.069544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008911, 38.430653, 30.557060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384274, 38.341190, 30.662418>,  <42.609489, 38.287514, 30.725634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384274, 38.341190, 30.662418>,  <42.008911, 38.430653, 30.557060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384274, 38.341190, 30.662418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305202, -0.179055, 0.935303,
		-0.162006, -0.958084, -0.236281,
		0.938406, -0.223639, 0.263401,
		42.665794, 38.274094, 30.741438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959576, 37.776909, 30.905973>,  <42.008911, 38.430653, 30.557060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959576, 37.776909, 30.905973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300144, 37.947468, 31.028133>,  <42.504486, 38.049801, 31.101429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300144, 37.947468, 31.028133>,  <41.959576, 37.776909, 30.905973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300144, 37.947468, 31.028133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325435, -0.027138, 0.945175,
		0.411304, -0.904131, 0.115658,
		0.851423, 0.426394, 0.305398,
		42.555573, 38.075386, 31.119753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109848, 37.360653, 31.442575>,  <41.959576, 37.776909, 30.905973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109848, 37.360653, 31.442575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347786, 37.676758, 31.501421>,  <42.490551, 37.866421, 31.536728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347786, 37.676758, 31.501421>,  <42.109848, 37.360653, 31.442575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347786, 37.676758, 31.501421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299073, 0.047705, 0.953037,
		0.746130, -0.610910, 0.264723,
		0.594848, 0.790261, 0.147113,
		42.526241, 37.913837, 31.545555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373573, 37.235847, 32.155415>,  <42.109848, 37.360653, 31.442575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373573, 37.235847, 32.155415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459087, 37.617985, 32.073818>,  <42.510395, 37.847267, 32.024860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459087, 37.617985, 32.073818>,  <42.373573, 37.235847, 32.155415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459087, 37.617985, 32.073818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272251, 0.258812, 0.926766,
		0.938177, -0.142589, 0.315423,
		0.213782, 0.955345, -0.203991,
		42.523224, 37.904587, 32.012619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724895, 37.524181, 32.806599>,  <42.373573, 37.235847, 32.155415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724895, 37.524181, 32.806599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536324, 37.816296, 32.608833>,  <42.423180, 37.991562, 32.490173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536324, 37.816296, 32.608833>,  <42.724895, 37.524181, 32.806599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536324, 37.816296, 32.608833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379435, 0.338115, 0.861224,
		0.796103, 0.593605, 0.117695,
		-0.471433, 0.730281, -0.494409,
		42.394894, 38.035381, 32.460510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904270, 38.086979, 33.200703>,  <42.724895, 37.524181, 32.806599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904270, 38.086979, 33.200703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593540, 38.191742, 32.971638>,  <42.407101, 38.254601, 32.834198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593540, 38.191742, 32.971638>,  <42.904270, 38.086979, 33.200703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593540, 38.191742, 32.971638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474921, 0.353490, 0.805912,
		0.413507, 0.898025, -0.150214,
		-0.776828, 0.261911, -0.572661,
		42.360493, 38.270313, 32.799839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738922, 38.624165, 33.463413>,  <42.904270, 38.086979, 33.200703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738922, 38.624165, 33.463413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404869, 38.541046, 33.259701>,  <42.204437, 38.491173, 33.137474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404869, 38.541046, 33.259701>,  <42.738922, 38.624165, 33.463413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404869, 38.541046, 33.259701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539385, 0.490815, 0.684226,
		0.107782, 0.846120, -0.521980,
		-0.835133, -0.207801, -0.509286,
		42.154327, 38.478706, 33.106915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357212, 39.237572, 33.432747>,  <42.738922, 38.624165, 33.463413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357212, 39.237572, 33.432747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086884, 38.949783, 33.368721>,  <41.924686, 38.777111, 33.330303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086884, 38.949783, 33.368721>,  <42.357212, 39.237572, 33.432747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086884, 38.949783, 33.368721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627987, 0.448375, 0.636075,
		-0.385867, 0.530396, -0.754842,
		-0.675824, -0.719472, -0.160069,
		41.884136, 38.733940, 33.320702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801479, 39.617760, 33.271656>,  <42.357212, 39.237572, 33.432747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801479, 39.617760, 33.271656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654301, 39.269974, 33.403500>,  <41.565994, 39.061302, 33.482605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654301, 39.269974, 33.403500>,  <41.801479, 39.617760, 33.271656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654301, 39.269974, 33.403500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822100, 0.469816, 0.321596,
		-0.434474, -0.152645, -0.887655,
		-0.367945, -0.869467, 0.329613,
		41.543919, 39.009132, 33.502384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178005, 39.458138, 32.925358>,  <41.801479, 39.617760, 33.271656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178005, 39.458138, 32.925358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167839, 39.263977, 33.274925>,  <41.161739, 39.147480, 33.484665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167839, 39.263977, 33.274925>,  <41.178005, 39.458138, 32.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167839, 39.263977, 33.274925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959818, 0.256244, 0.114409,
		-0.279471, -0.835895, -0.472415,
		-0.025419, -0.485406, 0.873919,
		41.160213, 39.118355, 33.537102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431870, 39.236107, 33.047577>,  <41.178005, 39.458138, 32.925358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431870, 39.236107, 33.047577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596558, 39.191135, 33.409317>,  <40.695370, 39.164154, 33.626362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596558, 39.191135, 33.409317>,  <40.431870, 39.236107, 33.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596558, 39.191135, 33.409317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873587, 0.233873, 0.426788,
		-0.259485, -0.965745, -0.001924,
		0.411719, -0.112426, 0.904350,
		40.720074, 39.157406, 33.680622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026211, 38.739361, 33.340000>,  <40.431870, 39.236107, 33.047577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026211, 38.739361, 33.340000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202110, 38.967007, 33.617916>,  <40.307648, 39.103596, 33.784664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202110, 38.967007, 33.617916>,  <40.026211, 38.739361, 33.340000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202110, 38.967007, 33.617916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872096, 0.085695, 0.481773,
		0.214647, -0.817778, 0.534009,
		0.439745, 0.569118, 0.694786,
		40.334034, 39.137741, 33.826351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787727, 38.426891, 34.037617>,  <40.026211, 38.739361, 33.340000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787727, 38.426891, 34.037617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957882, 38.774574, 34.138439>,  <40.059975, 38.983185, 34.198933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957882, 38.774574, 34.138439>,  <39.787727, 38.426891, 34.037617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957882, 38.774574, 34.138439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769187, 0.200493, 0.606756,
		0.476860, -0.451984, 0.753867,
		0.425389, 0.869203, 0.252053,
		40.085499, 39.035336, 34.214054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666744, 38.599712, 34.753204>,  <39.787727, 38.426891, 34.037617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666744, 38.599712, 34.753204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725132, 38.965305, 34.601772>,  <39.760166, 39.184662, 34.510914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725132, 38.965305, 34.601772>,  <39.666744, 38.599712, 34.753204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725132, 38.965305, 34.601772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788932, 0.338435, 0.512881,
		0.596891, 0.223807, 0.770475,
		0.145970, 0.913987, -0.378577,
		39.768925, 39.239502, 34.488197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528702, 38.998108, 35.267815>,  <39.666744, 38.599712, 34.753204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528702, 38.998108, 35.267815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514381, 39.249481, 34.957001>,  <39.505791, 39.400307, 34.770512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514381, 39.249481, 34.957001>,  <39.528702, 38.998108, 35.267815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514381, 39.249481, 34.957001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907555, 0.305088, 0.288557,
		0.418404, 0.715534, 0.559418,
		-0.035801, 0.628437, -0.777037,
		39.503643, 39.438011, 34.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261379, 39.677059, 35.483143>,  <39.528702, 38.998108, 35.267815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261379, 39.677059, 35.483143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192020, 39.644894, 35.090519>,  <39.150406, 39.625595, 34.854942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192020, 39.644894, 35.090519>,  <39.261379, 39.677059, 35.483143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192020, 39.644894, 35.090519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950808, 0.273452, 0.145560,
		0.256706, 0.958518, -0.123873,
		-0.173396, -0.080413, -0.981564,
		39.140003, 39.620770, 34.796051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966339, 40.372585, 35.233959>,  <39.261379, 39.677059, 35.483143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966339, 40.372585, 35.233959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860615, 40.088379, 34.973095>,  <38.797180, 39.917854, 34.816578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860615, 40.088379, 34.973095>,  <38.966339, 40.372585, 35.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860615, 40.088379, 34.973095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941011, 0.041862, 0.335777,
		-0.211273, 0.702439, -0.679664,
		-0.264315, -0.710512, -0.652158,
		38.781319, 39.875225, 34.777447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525196, 40.734058, 34.716900>,  <38.966339, 40.372585, 35.233959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525196, 40.734058, 34.716900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364426, 40.370148, 34.758392>,  <38.267963, 40.151802, 34.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364426, 40.370148, 34.758392>,  <38.525196, 40.734058, 34.716900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364426, 40.370148, 34.758392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878969, 0.415087, 0.234768,
		-0.256645, 0.003181, -0.966500,
		-0.401929, -0.909776, 0.103734,
		38.243847, 40.097214, 34.789513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933212, 40.747849, 34.404079>,  <38.525196, 40.734058, 34.716900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933212, 40.747849, 34.404079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905216, 40.431576, 34.647362>,  <37.888420, 40.241810, 34.793331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905216, 40.431576, 34.647362>,  <37.933212, 40.747849, 34.404079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905216, 40.431576, 34.647362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891014, 0.323704, 0.318292,
		-0.448549, -0.519647, -0.727167,
		-0.069987, -0.790685, 0.608210,
		37.884220, 40.194370, 34.829826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241013, 40.485931, 34.338528>,  <37.933212, 40.747849, 34.404079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241013, 40.485931, 34.338528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367310, 40.400673, 34.708366>,  <37.443089, 40.349518, 34.930267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367310, 40.400673, 34.708366>,  <37.241013, 40.485931, 34.338528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367310, 40.400673, 34.708366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863909, 0.338392, 0.373030,
		-0.392386, -0.916547, -0.077297,
		0.315743, -0.213149, 0.924594,
		37.462032, 40.336727, 34.985744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654892, 40.091473, 34.736336>,  <37.241013, 40.485931, 34.338528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654892, 40.091473, 34.736336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932404, 39.935966, 34.978832>,  <37.098911, 39.842663, 35.124332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932404, 39.935966, 34.978832>,  <36.654892, 40.091473, 34.736336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932404, 39.935966, 34.978832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431952, 0.448950, 0.782216,
		-0.576270, -0.804554, 0.143545,
		0.693780, -0.388763, 0.606245,
		37.140537, 39.819336, 35.160706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244686, 39.730858, 35.274933>,  <36.654892, 40.091473, 34.736336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244686, 39.730858, 35.274933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609955, 39.844723, 35.391613>,  <36.829117, 39.913044, 35.461620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609955, 39.844723, 35.391613>,  <36.244686, 39.730858, 35.274933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609955, 39.844723, 35.391613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386981, 0.380885, 0.839745,
		0.127940, -0.879712, 0.457972,
		0.913169, 0.284664, 0.291701,
		36.883904, 39.930122, 35.479122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384125, 39.508305, 36.000195>,  <36.244686, 39.730858, 35.274933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384125, 39.508305, 36.000195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568363, 39.844906, 35.887249>,  <36.678905, 40.046867, 35.819481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568363, 39.844906, 35.887249>,  <36.384125, 39.508305, 36.000195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568363, 39.844906, 35.887249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316584, 0.452941, 0.833438,
		0.829231, -0.294489, 0.475029,
		0.460598, 0.841500, -0.282362,
		36.706543, 40.097355, 35.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835854, 39.573410, 36.568211>,  <36.384125, 39.508305, 36.000195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835854, 39.573410, 36.568211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816803, 39.924862, 36.378162>,  <36.805370, 40.135735, 36.264133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816803, 39.924862, 36.378162>,  <36.835854, 39.573410, 36.568211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816803, 39.924862, 36.378162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261244, 0.448149, 0.854936,
		0.964097, 0.164843, 0.208191,
		-0.047630, 0.878630, -0.475123,
		36.802513, 40.188450, 36.235626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196079, 40.125595, 36.967793>,  <36.835854, 39.573410, 36.568211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196079, 40.125595, 36.967793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951286, 40.349846, 36.744663>,  <36.804409, 40.484398, 36.610786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951286, 40.349846, 36.744663>,  <37.196079, 40.125595, 36.967793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951286, 40.349846, 36.744663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220514, 0.556397, 0.801122,
		0.759504, 0.613283, -0.216880,
		-0.611986, 0.560630, -0.557823,
		36.767689, 40.518036, 36.577316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263794, 40.808838, 37.179417>,  <37.196079, 40.125595, 36.967793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263794, 40.808838, 37.179417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910904, 40.823036, 36.991619>,  <36.699169, 40.831554, 36.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910904, 40.823036, 36.991619>,  <37.263794, 40.808838, 37.179417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910904, 40.823036, 36.991619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349051, 0.619895, 0.702776,
		0.315981, 0.783881, -0.534496,
		-0.882224, 0.035497, -0.469490,
		36.646236, 40.833687, 36.850773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978870, 41.456650, 37.261330>,  <37.263794, 40.808838, 37.179417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978870, 41.456650, 37.261330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661621, 41.236912, 37.156124>,  <36.471272, 41.105068, 37.092999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661621, 41.236912, 37.156124>,  <36.978870, 41.456650, 37.261330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661621, 41.236912, 37.156124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556501, 0.478115, 0.679495,
		-0.247527, 0.685290, -0.684915,
		-0.793119, -0.549349, -0.263018,
		36.423687, 41.072105, 37.077217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407127, 41.821621, 37.203083>,  <36.978870, 41.456650, 37.261330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407127, 41.821621, 37.203083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243904, 41.463024, 37.272125>,  <36.145969, 41.247868, 37.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243904, 41.463024, 37.272125>,  <36.407127, 41.821621, 37.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243904, 41.463024, 37.272125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677499, 0.424081, 0.600958,
		-0.611952, 0.128285, -0.780421,
		-0.408056, -0.896492, 0.172604,
		36.121487, 41.194077, 37.323906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720066, 42.051601, 37.483746>,  <36.407127, 41.821621, 37.203083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720066, 42.051601, 37.483746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756401, 41.668301, 37.592190>,  <35.778202, 41.438320, 37.657257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756401, 41.668301, 37.592190>,  <35.720066, 42.051601, 37.483746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756401, 41.668301, 37.592190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554278, 0.177525, 0.813179,
		-0.827360, -0.224139, -0.515012,
		0.090837, -0.958252, 0.271113,
		35.783653, 41.380825, 37.673523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246666, 42.514732, 37.353802>,  <35.720066, 42.051601, 37.483746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246666, 42.514732, 37.353802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896263, 42.502319, 37.161282>,  <35.686020, 42.494873, 37.045769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896263, 42.502319, 37.161282>,  <36.246666, 42.514732, 37.353802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896263, 42.502319, 37.161282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176726, -0.949174, -0.260454,
		-0.448756, -0.313218, 0.836967,
		-0.876006, -0.031034, -0.481301,
		35.633461, 42.493008, 37.016891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046265, 42.421993, 38.107151>,  <36.246666, 42.514732, 37.353802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046265, 42.421993, 38.107151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829502, 42.620422, 38.378517>,  <35.699444, 42.739479, 38.541336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829502, 42.620422, 38.378517>,  <36.046265, 42.421993, 38.107151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829502, 42.620422, 38.378517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792313, -0.032323, -0.609257,
		-0.280307, -0.867679, 0.410562,
		-0.541910, 0.496073, 0.678413,
		35.666927, 42.769245, 38.582043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588448, 42.024052, 38.618263>,  <36.046265, 42.421993, 38.107151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588448, 42.024052, 38.618263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438927, 41.660938, 38.694378>,  <35.349213, 41.443069, 38.740047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438927, 41.660938, 38.694378>,  <35.588448, 42.024052, 38.618263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438927, 41.660938, 38.694378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626970, -0.398491, -0.669412,
		0.683506, -0.130925, 0.718108,
		-0.373802, -0.907779, 0.190285,
		35.326786, 41.388603, 38.751465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099930, 41.415924, 38.682938>,  <35.588448, 42.024052, 38.618263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099930, 41.415924, 38.682938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751255, 41.252903, 38.574074>,  <35.542049, 41.155090, 38.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751255, 41.252903, 38.574074>,  <36.099930, 41.415924, 38.682938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751255, 41.252903, 38.574074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459654, -0.487318, -0.742455,
		0.169960, -0.772285, 0.612119,
		-0.871683, -0.407550, -0.272159,
		35.489750, 41.130638, 38.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009182, 40.642647, 38.571617>,  <36.099930, 41.415924, 38.682938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009182, 40.642647, 38.571617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719406, 40.759583, 38.321907>,  <35.545540, 40.829746, 38.172081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719406, 40.759583, 38.321907>,  <36.009182, 40.642647, 38.571617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719406, 40.759583, 38.321907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396812, -0.563670, -0.724442,
		-0.563670, -0.772537, 0.292341,
		0.724442, -0.292341, 0.624275,
		35.502075, 40.847286, 38.134624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079144, 40.232376, 37.980083>,  <36.009182, 40.642647, 38.571617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079144, 40.232376, 37.980083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851105, 40.528103, 37.836750>,  <35.714283, 40.705540, 37.750748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851105, 40.528103, 37.836750>,  <36.079144, 40.232376, 37.980083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851105, 40.528103, 37.836750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333080, -0.190725, -0.923408,
		-0.751033, -0.645784, -0.137520,
		-0.570094, 0.739315, -0.358338,
		35.680077, 40.749897, 37.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605354, 40.021957, 37.421188>,  <36.079144, 40.232376, 37.980083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605354, 40.021957, 37.421188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732948, 40.399044, 37.382141>,  <35.809505, 40.625298, 37.358711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732948, 40.399044, 37.382141>,  <35.605354, 40.021957, 37.421188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732948, 40.399044, 37.382141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399971, -0.227281, -0.887900,
		-0.859226, 0.244184, -0.449560,
		0.318987, 0.942718, -0.097619,
		35.828644, 40.681858, 37.352856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355824, 40.363022, 36.817753>,  <35.605354, 40.021957, 37.421188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355824, 40.363022, 36.817753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700787, 40.546909, 36.902527>,  <35.907764, 40.657242, 36.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700787, 40.546909, 36.902527>,  <35.355824, 40.363022, 36.817753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700787, 40.546909, 36.902527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316302, -0.162481, -0.934641,
		-0.395233, 0.873076, -0.285533,
		0.862406, 0.459716, 0.211937,
		35.959507, 40.684826, 36.966106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536049, 40.730934, 36.219826>,  <35.355824, 40.363022, 36.817753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536049, 40.730934, 36.219826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878506, 40.756474, 36.424938>,  <36.083981, 40.771797, 36.548004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878506, 40.756474, 36.424938>,  <35.536049, 40.730934, 36.219826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878506, 40.756474, 36.424938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514025, -0.003700, -0.857767,
		-0.052868, 0.997953, -0.035986,
		0.856144, 0.063846, 0.512777,
		36.135349, 40.775627, 36.578770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927090, 41.175678, 35.840614>,  <35.536049, 40.730934, 36.219826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927090, 41.175678, 35.840614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216770, 40.992752, 36.047066>,  <36.390579, 40.882996, 36.170937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216770, 40.992752, 36.047066>,  <35.927090, 41.175678, 35.840614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216770, 40.992752, 36.047066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515683, -0.137759, -0.845632,
		0.457825, 0.878568, 0.136066,
		0.724201, -0.457318, 0.516132,
		36.434029, 40.855556, 36.201904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518906, 41.332172, 35.509064>,  <35.927090, 41.175678, 35.840614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518906, 41.332172, 35.509064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625362, 41.018177, 35.732834>,  <36.689236, 40.829781, 35.867096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625362, 41.018177, 35.732834>,  <36.518906, 41.332172, 35.509064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625362, 41.018177, 35.732834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482923, -0.393690, -0.782172,
		0.834240, 0.478325, 0.274315,
		0.266138, -0.784992, 0.559426,
		36.705204, 40.782681, 35.900661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318077, 41.159023, 35.468529>,  <36.518906, 41.332172, 35.509064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318077, 41.159023, 35.468529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120449, 40.829041, 35.578323>,  <37.001873, 40.631050, 35.644199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120449, 40.829041, 35.578323>,  <37.318077, 41.159023, 35.468529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120449, 40.829041, 35.578323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397964, -0.495276, -0.772222,
		0.772996, -0.272294, 0.573003,
		-0.494066, -0.824959, 0.274483,
		36.972229, 40.581554, 35.660667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436527, 40.937939, 36.098808>,  <37.318077, 41.159023, 35.468529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436527, 40.937939, 36.098808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310589, 40.559010, 36.075321>,  <37.235027, 40.331650, 36.061230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310589, 40.559010, 36.075321>,  <37.436527, 40.937939, 36.098808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310589, 40.559010, 36.075321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660393, -0.174207, -0.730433,
		0.681728, -0.268750, 0.680455,
		-0.314844, -0.947325, -0.058719,
		37.216137, 40.274811, 36.057705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976295, 40.431419, 35.921947>,  <37.436527, 40.937939, 36.098808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976295, 40.431419, 35.921947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648701, 40.235313, 35.802685>,  <37.452145, 40.117649, 35.731129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648701, 40.235313, 35.802685>,  <37.976295, 40.431419, 35.921947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648701, 40.235313, 35.802685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496866, -0.346014, -0.795863,
		0.287017, -0.799948, 0.526977,
		-0.818991, -0.490263, -0.298155,
		37.403004, 40.088234, 35.713238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062008, 39.677746, 36.008980>,  <37.976295, 40.431419, 35.921947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062008, 39.677746, 36.008980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819160, 39.819950, 35.724720>,  <37.673454, 39.905273, 35.554165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819160, 39.819950, 35.724720>,  <38.062008, 39.677746, 36.008980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819160, 39.819950, 35.724720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571909, -0.425397, -0.701397,
		-0.551664, -0.832255, 0.054942,
		-0.607113, 0.355514, -0.710650,
		37.637028, 39.926605, 35.511524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633263, 39.230419, 35.639229>,  <38.062008, 39.677746, 36.008980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633263, 39.230419, 35.639229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714520, 39.533928, 35.391682>,  <37.763275, 39.716034, 35.243153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714520, 39.533928, 35.391682>,  <37.633263, 39.230419, 35.639229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714520, 39.533928, 35.391682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645482, -0.579043, -0.498058,
		-0.736264, -0.298293, -0.607401,
		0.203145, 0.758769, -0.618872,
		37.775463, 39.761559, 35.206020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773670, 38.921616, 34.993980>,  <37.633263, 39.230419, 35.639229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773670, 38.921616, 34.993980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931145, 39.282215, 34.922081>,  <38.025627, 39.498577, 34.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931145, 39.282215, 34.922081>,  <37.773670, 38.921616, 34.993980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931145, 39.282215, 34.922081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671051, -0.415482, -0.614057,
		-0.628256, 0.121122, -0.768521,
		0.393683, 0.901501, -0.179750,
		38.049248, 39.552666, 34.868156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186344, 38.778492, 34.398525>,  <37.773670, 38.921616, 34.993980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186344, 38.778492, 34.398525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256184, 39.159924, 34.496670>,  <38.298088, 39.388783, 34.555557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256184, 39.159924, 34.496670>,  <38.186344, 38.778492, 34.398525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256184, 39.159924, 34.496670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871332, -0.033583, -0.489544,
		-0.458579, 0.299264, -0.836748,
		0.174603, 0.953579, 0.245358,
		38.308563, 39.445999, 34.570278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433197, 39.139748, 33.774738>,  <38.186344, 38.778492, 34.398525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433197, 39.139748, 33.774738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558136, 39.343624, 34.095402>,  <38.633099, 39.465950, 34.287800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558136, 39.343624, 34.095402>,  <38.433197, 39.139748, 33.774738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558136, 39.343624, 34.095402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926785, 0.021809, -0.374959,
		-0.208595, 0.860083, -0.465559,
		0.312343, 0.509688, 0.801661,
		38.651840, 39.496532, 34.335899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889702, 39.582344, 33.510773>,  <38.433197, 39.139748, 33.774738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889702, 39.582344, 33.510773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973553, 39.609638, 33.900932>,  <39.023865, 39.626015, 34.135029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973553, 39.609638, 33.900932>,  <38.889702, 39.582344, 33.510773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973553, 39.609638, 33.900932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970479, 0.107165, -0.216069,
		-0.119272, 0.991897, -0.043755,
		0.209629, 0.068234, 0.975397,
		39.036442, 39.630108, 34.193550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224907, 40.301437, 33.815987>,  <38.889702, 39.582344, 33.510773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224907, 40.301437, 33.815987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345253, 39.978371, 34.018829>,  <39.417461, 39.784531, 34.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345253, 39.978371, 34.018829>,  <39.224907, 40.301437, 33.815987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345253, 39.978371, 34.018829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953527, 0.263896, -0.145410,
		-0.016379, 0.527285, 0.849530,
		0.300861, -0.807669, 0.507103,
		39.435513, 39.736069, 34.170959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942444, 40.441132, 34.010708>,  <39.224907, 40.301437, 33.815987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942444, 40.441132, 34.010708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905151, 40.061359, 34.130634>,  <39.882774, 39.833496, 34.202591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905151, 40.061359, 34.130634>,  <39.942444, 40.441132, 34.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905151, 40.061359, 34.130634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956188, -0.169314, -0.238826,
		0.277512, 0.264415, 0.923619,
		-0.093233, -0.949430, 0.299817,
		39.877182, 39.776531, 34.220581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411869, 40.180969, 34.493172>,  <39.942444, 40.441132, 34.010708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411869, 40.180969, 34.493172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294197, 39.830433, 34.340603>,  <40.223595, 39.620110, 34.249062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294197, 39.830433, 34.340603>,  <40.411869, 40.180969, 34.493172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294197, 39.830433, 34.340603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949189, -0.314569, -0.009344,
		-0.111796, -0.364791, 0.924353,
		-0.294182, -0.876341, -0.381423,
		40.205944, 39.567532, 34.226177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977665, 39.731140, 34.744801>,  <40.411869, 40.180969, 34.493172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977665, 39.731140, 34.744801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772842, 39.543133, 34.457222>,  <40.649948, 39.430328, 34.284676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772842, 39.543133, 34.457222>,  <40.977665, 39.731140, 34.744801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772842, 39.543133, 34.457222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832351, -0.478208, -0.280194,
		-0.212108, -0.741889, 0.636091,
		-0.512056, -0.470020, -0.718944,
		40.619225, 39.402126, 34.241539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124157, 38.997303, 34.885021>,  <40.977665, 39.731140, 34.744801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124157, 38.997303, 34.885021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010403, 39.068520, 34.508209>,  <40.942150, 39.111252, 34.282120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010403, 39.068520, 34.508209>,  <41.124157, 38.997303, 34.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010403, 39.068520, 34.508209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726220, -0.601475, -0.332914,
		-0.625883, -0.778798, 0.041749,
		-0.284384, 0.178046, -0.942033,
		40.925087, 39.121933, 34.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072819, 38.326168, 34.539951>,  <41.124157, 38.997303, 34.885021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072819, 38.326168, 34.539951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128716, 38.611118, 34.264854>,  <41.162254, 38.782089, 34.099796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128716, 38.611118, 34.264854>,  <41.072819, 38.326168, 34.539951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128716, 38.611118, 34.264854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574932, -0.623861, -0.529387,
		-0.806179, -0.321427, -0.496749,
		0.139743, 0.712378, -0.687743,
		41.170639, 38.824833, 34.058533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297207, 37.585449, 34.706455>,  <41.072819, 38.326168, 34.539951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297207, 37.585449, 34.706455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514782, 37.819416, 34.465790>,  <41.645325, 37.959797, 34.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514782, 37.819416, 34.465790>,  <41.297207, 37.585449, 34.706455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514782, 37.819416, 34.465790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048429, 0.737703, 0.673386,
		0.837730, -0.337139, 0.429588,
		0.543933, 0.584920, -0.601669,
		41.677963, 37.994892, 34.285290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961430, 37.828186, 34.959007>,  <41.297207, 37.585449, 34.706455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961430, 37.828186, 34.959007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797874, 38.097324, 34.712399>,  <41.699741, 38.258808, 34.564434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797874, 38.097324, 34.712399>,  <41.961430, 37.828186, 34.959007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797874, 38.097324, 34.712399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162370, 0.718434, 0.676379,
		0.898025, 0.176458, -0.403006,
		-0.408886, 0.672841, -0.616520,
		41.675209, 38.299175, 34.527443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549416, 38.301979, 34.747852>,  <41.961430, 37.828186, 34.959007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549416, 38.301979, 34.747852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187122, 38.471500, 34.750572>,  <41.969746, 38.573212, 34.752205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187122, 38.471500, 34.750572>,  <42.549416, 38.301979, 34.747852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187122, 38.471500, 34.750572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317676, 0.668132, 0.672816,
		0.280600, 0.611548, -0.739779,
		-0.905729, 0.423802, 0.006796,
		41.915405, 38.598640, 34.752609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637444, 39.069489, 34.557957>,  <42.549416, 38.301979, 34.747852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637444, 39.069489, 34.557957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323338, 38.990192, 34.792583>,  <42.134872, 38.942616, 34.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323338, 38.990192, 34.792583>,  <42.637444, 39.069489, 34.557957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323338, 38.990192, 34.792583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265859, 0.747620, 0.608592,
		-0.559174, 0.633850, -0.534377,
		-0.785267, -0.198240, 0.586564,
		42.087757, 38.930721, 34.968552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187481, 39.217632, 34.282352>,  <42.637444, 39.069489, 34.557957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187481, 39.217632, 34.282352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310509, 39.098866, 34.643959>,  <43.384323, 39.027607, 34.860924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310509, 39.098866, 34.643959>,  <43.187481, 39.217632, 34.282352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310509, 39.098866, 34.643959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858425, 0.496453, -0.128999,
		-0.410499, 0.815705, 0.407574,
		0.307566, -0.296918, 0.904015,
		43.402779, 39.009789, 34.915165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752148, 39.600456, 34.327877>,  <43.187481, 39.217632, 34.282352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752148, 39.600456, 34.327877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669918, 39.633884, 34.717903>,  <43.620583, 39.653942, 34.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669918, 39.633884, 34.717903>,  <43.752148, 39.600456, 34.327877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669918, 39.633884, 34.717903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726195, -0.654878, 0.209227,
		0.656035, 0.751100, 0.073936,
		-0.205570, 0.083569, 0.975068,
		43.608246, 39.658955, 35.010422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312572, 39.774082, 34.777241>,  <43.752148, 39.600456, 34.327877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312572, 39.774082, 34.777241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057598, 39.550865, 34.989754>,  <43.904613, 39.416935, 35.117264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057598, 39.550865, 34.989754>,  <44.312572, 39.774082, 34.777241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057598, 39.550865, 34.989754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739493, -0.636740, 0.218431,
		0.216396, 0.532117, 0.818550,
		-0.637435, -0.558044, 0.531285,
		43.866367, 39.383453, 35.149139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607788, 39.555157, 35.496269>,  <44.312572, 39.774082, 34.777241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607788, 39.555157, 35.496269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357334, 39.278988, 35.351349>,  <44.207062, 39.113285, 35.264397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357334, 39.278988, 35.351349>,  <44.607788, 39.555157, 35.496269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357334, 39.278988, 35.351349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719303, -0.690814, 0.073343,
		-0.300921, -0.214682, 0.929171,
		-0.626139, -0.690426, -0.362302,
		44.169491, 39.071861, 35.242657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473469, 39.029423, 35.982540>,  <44.607788, 39.555157, 35.496269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473469, 39.029423, 35.982540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431698, 38.868347, 35.618797>,  <44.406635, 38.771702, 35.400551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431698, 38.868347, 35.618797>,  <44.473469, 39.029423, 35.982540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431698, 38.868347, 35.618797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803870, -0.572537, 0.161225,
		-0.585567, -0.714172, 0.383498,
		-0.104424, -0.402691, -0.909360,
		44.400372, 38.747540, 35.345989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356052, 38.269917, 36.074982>,  <44.473469, 39.029423, 35.982540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356052, 38.269917, 36.074982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516098, 38.383514, 35.726440>,  <44.612125, 38.451672, 35.517315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516098, 38.383514, 35.726440>,  <44.356052, 38.269917, 36.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516098, 38.383514, 35.726440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819720, -0.536080, 0.201686,
		-0.409838, -0.794964, -0.447287,
		0.400114, 0.283992, -0.871354,
		44.636131, 38.468712, 35.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708061, 37.762348, 35.792824>,  <44.356052, 38.269917, 36.074982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708061, 37.762348, 35.792824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856335, 38.038883, 35.544746>,  <44.945297, 38.204803, 35.395901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856335, 38.038883, 35.544746>,  <44.708061, 37.762348, 35.792824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856335, 38.038883, 35.544746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876008, -0.482098, -0.013824,
		-0.308552, -0.538171, -0.784326,
		0.370682, 0.691341, -0.620195,
		44.967541, 38.246284, 35.358688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915417, 37.378586, 35.186443>,  <44.708061, 37.762348, 35.792824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915417, 37.378586, 35.186443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117630, 37.717682, 35.250660>,  <45.238960, 37.921139, 35.289192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117630, 37.717682, 35.250660>,  <44.915417, 37.378586, 35.186443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117630, 37.717682, 35.250660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852370, -0.519554, 0.059418,
		0.133783, 0.106807, -0.985238,
		0.505538, 0.847736, 0.160546,
		45.269291, 37.972004, 35.298824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356358, 37.338394, 34.628815>,  <44.915417, 37.378586, 35.186443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356358, 37.338394, 34.628815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475624, 37.563457, 34.937233>,  <45.547184, 37.698498, 35.122284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475624, 37.563457, 34.937233>,  <45.356358, 37.338394, 34.628815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475624, 37.563457, 34.937233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894127, -0.447399, -0.019281,
		0.334115, 0.695158, -0.636493,
		0.298170, 0.562663, 0.771042,
		45.565075, 37.732258, 35.168545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967243, 37.714935, 34.482590>,  <45.356358, 37.338394, 34.628815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967243, 37.714935, 34.482590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947945, 37.611359, 34.868465>,  <45.936363, 37.549213, 35.099991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947945, 37.611359, 34.868465>,  <45.967243, 37.714935, 34.482590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947945, 37.611359, 34.868465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737672, -0.660405, -0.140373,
		0.673433, 0.704849, 0.222881,
		-0.048250, -0.258945, 0.964686,
		45.933468, 37.533676, 35.157871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661121, 37.654282, 34.802555>,  <45.967243, 37.714935, 34.482590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661121, 37.654282, 34.802555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396801, 37.400524, 34.962997>,  <46.238209, 37.248268, 35.059261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396801, 37.400524, 34.962997>,  <46.661121, 37.654282, 34.802555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396801, 37.400524, 34.962997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680565, -0.731792, -0.036221,
		0.316506, 0.249044, 0.915315,
		-0.660799, -0.634395, 0.401107,
		46.198563, 37.210205, 35.083328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998356, 37.242893, 35.321667>,  <46.661121, 37.654282, 34.802555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998356, 37.242893, 35.321667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683319, 37.013432, 35.231670>,  <46.494297, 36.875755, 35.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683319, 37.013432, 35.231670>,  <46.998356, 37.242893, 35.321667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683319, 37.013432, 35.231670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608595, -0.781352, -0.138210,
		-0.096512, -0.245781, 0.964509,
		-0.787590, -0.573656, -0.224991,
		46.447041, 36.841335, 35.164173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015308, 36.614948, 35.646893>,  <46.998356, 37.242893, 35.321667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015308, 36.614948, 35.646893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756405, 36.500393, 35.364323>,  <46.601063, 36.431660, 35.194782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756405, 36.500393, 35.364323>,  <47.015308, 36.614948, 35.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756405, 36.500393, 35.364323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557622, -0.809752, -0.182646,
		-0.519721, -0.512138, 0.683817,
		-0.647262, -0.286386, -0.706424,
		46.562225, 36.414478, 35.152397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610821, 35.939098, 35.788189>,  <47.015308, 36.614948, 35.646893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610821, 35.939098, 35.788189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722359, 36.057182, 35.422653>,  <46.789280, 36.128033, 35.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722359, 36.057182, 35.422653>,  <46.610821, 35.939098, 35.788189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722359, 36.057182, 35.422653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550846, -0.828642, -0.099605,
		-0.786648, -0.475609, -0.393676,
		0.278844, 0.295209, -0.913837,
		46.806011, 36.145744, 35.148502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467308, 35.291004, 35.298023>,  <46.610821, 35.939098, 35.788189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467308, 35.291004, 35.298023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775536, 35.529652, 35.208340>,  <46.960472, 35.672840, 35.154530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775536, 35.529652, 35.208340>,  <46.467308, 35.291004, 35.298023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775536, 35.529652, 35.208340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627432, -0.771919, 0.102326,
		-0.112021, -0.219525, -0.969154,
		0.770571, 0.596616, -0.224209,
		47.006706, 35.708637, 35.141079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851357, 34.879883, 34.963940>,  <46.467308, 35.291004, 35.298023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851357, 34.879883, 34.963940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128525, 35.141129, 35.086117>,  <47.294827, 35.297874, 35.159424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128525, 35.141129, 35.086117>,  <46.851357, 34.879883, 34.963940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128525, 35.141129, 35.086117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622127, -0.755719, 0.204566,
		0.364436, 0.048278, -0.929976,
		0.692924, 0.653114, 0.305446,
		47.336403, 35.337063, 35.177750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552914, 34.728996, 34.602005>,  <46.851357, 34.879883, 34.963940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552914, 34.728996, 34.602005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602242, 34.905655, 34.957474>,  <47.631840, 35.011650, 35.170757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602242, 34.905655, 34.957474>,  <47.552914, 34.728996, 34.602005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602242, 34.905655, 34.957474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692367, -0.679833, 0.241776,
		0.710929, 0.585471, -0.389620,
		0.123324, 0.441645, 0.888674,
		47.639240, 35.038147, 35.224075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.061901, 33.844990, 26.678101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.712524, 33.735626, 26.516932>,  <41.502899, 33.670010, 26.420229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.712524, 33.735626, 26.516932>,  <42.061901, 33.844990, 26.678101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712524, 33.735626, 26.516932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486372, 0.450287, 0.748788,
		-0.023294, 0.849994, -0.526277,
		-0.873441, -0.273409, -0.402924,
		41.450493, 33.653603, 26.396053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645523, 34.398277, 26.859772>,  <42.061901, 33.844990, 26.678101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645523, 34.398277, 26.859772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381474, 34.143188, 26.701004>,  <41.223045, 33.990135, 26.605743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.381474, 34.143188, 26.701004>,  <41.645523, 34.398277, 26.859772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381474, 34.143188, 26.701004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696201, 0.321039, 0.642058,
		-0.282028, 0.700174, -0.655909,
		-0.660124, -0.637723, -0.396920,
		41.183437, 33.951870, 26.581928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041508, 34.738136, 26.662628>,  <41.645523, 34.398277, 26.859772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041508, 34.738136, 26.662628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.961105, 34.356636, 26.752029>,  <40.912865, 34.127735, 26.805670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.961105, 34.356636, 26.752029>,  <41.041508, 34.738136, 26.662628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961105, 34.356636, 26.752029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765960, 0.295256, 0.571077,
		-0.610656, -0.056405, -0.789885,
		-0.201007, -0.953752, 0.223504,
		40.900803, 34.070511, 26.819080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411564, 34.689991, 26.817497>,  <41.041508, 34.738136, 26.662628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411564, 34.689991, 26.817497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481693, 34.328129, 26.972858>,  <40.523769, 34.111012, 27.066076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481693, 34.328129, 26.972858>,  <40.411564, 34.689991, 26.817497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481693, 34.328129, 26.972858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693377, 0.166612, 0.701048,
		-0.698921, -0.392219, -0.598059,
		0.175321, -0.904658, 0.388405,
		40.534290, 34.056732, 27.089380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780624, 34.473854, 26.960829>,  <40.411564, 34.689991, 26.817497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780624, 34.473854, 26.960829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984341, 34.234303, 27.208044>,  <40.106571, 34.090572, 27.356373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984341, 34.234303, 27.208044>,  <39.780624, 34.473854, 26.960829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984341, 34.234303, 27.208044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737040, 0.067230, 0.672496,
		-0.444297, -0.798011, -0.407160,
		0.509286, -0.598881, 0.618036,
		40.137127, 34.054638, 27.393456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272594, 34.200504, 27.306160>,  <39.780624, 34.473854, 26.960829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272594, 34.200504, 27.306160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585548, 34.096153, 27.532368>,  <39.773323, 34.033543, 27.668093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585548, 34.096153, 27.532368>,  <39.272594, 34.200504, 27.306160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585548, 34.096153, 27.532368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556453, 0.114979, 0.822885,
		-0.279691, -0.958502, -0.055205,
		0.782389, -0.260872, 0.565520,
		39.820267, 34.017891, 27.702024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099030, 33.702389, 27.785074>,  <39.272594, 34.200504, 27.306160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099030, 33.702389, 27.785074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413433, 33.891582, 27.944313>,  <39.602074, 34.005100, 28.039856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413433, 33.891582, 27.944313>,  <39.099030, 33.702389, 27.785074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413433, 33.891582, 27.944313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485680, 0.074006, 0.870999,
		0.382506, -0.877958, 0.287888,
		0.786005, 0.472983, 0.398099,
		39.649235, 34.033478, 28.063744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043922, 33.482277, 28.419973>,  <39.099030, 33.702389, 27.785074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043922, 33.482277, 28.419973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.275208, 33.807774, 28.443626>,  <39.413979, 34.003071, 28.457819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.275208, 33.807774, 28.443626>,  <39.043922, 33.482277, 28.419973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275208, 33.807774, 28.443626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304576, 0.148044, 0.940913,
		0.756905, -0.562057, 0.333447,
		0.578211, 0.813741, 0.059133,
		39.448669, 34.051895, 28.461367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432198, 33.448280, 29.084551>,  <39.043922, 33.482277, 28.419973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432198, 33.448280, 29.084551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.464836, 33.833057, 28.980236>,  <39.484417, 34.063923, 28.917648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.464836, 33.833057, 28.980236>,  <39.432198, 33.448280, 29.084551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464836, 33.833057, 28.980236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006085, 0.262134, 0.965012,
		0.996647, -0.077152, 0.027242,
		0.081594, 0.961942, -0.260786,
		39.489315, 34.121639, 28.902000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895504, 33.752365, 29.555161>,  <39.432198, 33.448280, 29.084551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895504, 33.752365, 29.555161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669731, 34.045547, 29.403273>,  <39.534267, 34.221458, 29.312140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669731, 34.045547, 29.403273>,  <39.895504, 33.752365, 29.555161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669731, 34.045547, 29.403273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058738, 0.423173, 0.904143,
		0.823387, 0.532632, -0.195800,
		-0.564433, 0.732958, -0.379721,
		39.500401, 34.265434, 29.289356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268333, 34.417202, 29.653635>,  <39.895504, 33.752365, 29.555161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268333, 34.417202, 29.653635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877453, 34.489414, 29.608944>,  <39.642925, 34.532742, 29.582129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877453, 34.489414, 29.608944>,  <40.268333, 34.417202, 29.653635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877453, 34.489414, 29.608944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003948, 0.510724, 0.859736,
		0.212268, 0.840578, -0.498369,
		-0.977204, 0.180526, -0.111729,
		39.584293, 34.543571, 29.575426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138783, 35.120590, 29.753653>,  <40.268333, 34.417202, 29.653635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138783, 35.120590, 29.753653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765709, 34.987156, 29.808537>,  <39.541866, 34.907097, 29.841467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765709, 34.987156, 29.808537>,  <40.138783, 35.120590, 29.753653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765709, 34.987156, 29.808537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122526, 0.650777, 0.749317,
		-0.339254, 0.682063, -0.647840,
		-0.932681, -0.333586, 0.137208,
		39.485905, 34.887081, 29.849699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792568, 35.706181, 30.017033>,  <40.138783, 35.120590, 29.753653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792568, 35.706181, 30.017033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501740, 35.454819, 30.127645>,  <39.327240, 35.304001, 30.194014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501740, 35.454819, 30.127645>,  <39.792568, 35.706181, 30.017033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501740, 35.454819, 30.127645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036840, 0.437908, 0.898265,
		-0.685569, 0.642918, -0.341543,
		-0.727075, -0.628405, 0.276531,
		39.283615, 35.266296, 30.210606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212410, 36.165039, 30.195183>,  <39.792568, 35.706181, 30.017033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212410, 36.165039, 30.195183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195038, 35.820751, 30.398071>,  <39.184616, 35.614178, 30.519804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195038, 35.820751, 30.398071>,  <39.212410, 36.165039, 30.195183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195038, 35.820751, 30.398071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393279, 0.481437, 0.783294,
		-0.918393, -0.165460, -0.359413,
		-0.043430, -0.860721, 0.507221,
		39.182011, 35.562534, 30.550238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585499, 36.066292, 30.429886>,  <39.212410, 36.165039, 30.195183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585499, 36.066292, 30.429886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774273, 35.814358, 30.676653>,  <38.887535, 35.663197, 30.824715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774273, 35.814358, 30.676653>,  <38.585499, 36.066292, 30.429886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774273, 35.814358, 30.676653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458355, 0.422466, 0.781942,
		-0.753120, -0.651793, -0.089311,
		0.471933, -0.629832, 0.616920,
		38.915852, 35.625408, 30.861729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147446, 36.047379, 31.010580>,  <38.585499, 36.066292, 30.429886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147446, 36.047379, 31.010580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476044, 35.869152, 31.152912>,  <38.673203, 35.762218, 31.238312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476044, 35.869152, 31.152912>,  <38.147446, 36.047379, 31.010580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476044, 35.869152, 31.152912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250030, 0.279366, 0.927060,
		-0.512471, -0.850545, 0.118095,
		0.821498, -0.445564, 0.355829,
		38.722492, 35.735481, 31.259661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799606, 35.737240, 31.505724>,  <38.147446, 36.047379, 31.010580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799606, 35.737240, 31.505724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177204, 35.727917, 31.637381>,  <38.403763, 35.722324, 31.716375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177204, 35.727917, 31.637381>,  <37.799606, 35.737240, 31.505724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177204, 35.727917, 31.637381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323923, 0.124574, 0.937846,
		-0.062863, -0.991937, 0.110046,
		0.943993, -0.023309, 0.329142,
		38.460403, 35.720924, 31.736124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821941, 35.286221, 32.106998>,  <37.799606, 35.737240, 31.505724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821941, 35.286221, 32.106998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135784, 35.531296, 32.144970>,  <38.324089, 35.678341, 32.167751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135784, 35.531296, 32.144970>,  <37.821941, 35.286221, 32.106998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135784, 35.531296, 32.144970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285859, 0.221621, 0.932292,
		0.550166, -0.758615, 0.349027,
		0.784603, 0.612688, 0.094929,
		38.371166, 35.715103, 32.173450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009888, 35.235828, 32.802757>,  <37.821941, 35.286221, 32.106998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009888, 35.235828, 32.802757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173061, 35.575642, 32.668964>,  <38.270966, 35.779530, 32.588688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173061, 35.575642, 32.668964>,  <38.009888, 35.235828, 32.802757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173061, 35.575642, 32.668964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388949, 0.493147, 0.778154,
		0.826018, -0.187342, 0.531599,
		0.407937, 0.849535, -0.334482,
		38.295444, 35.830502, 32.568619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528259, 35.421906, 33.256203>,  <38.009888, 35.235828, 32.802757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528259, 35.421906, 33.256203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411926, 35.755894, 33.069340>,  <38.342125, 35.956287, 32.957222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411926, 35.755894, 33.069340>,  <38.528259, 35.421906, 33.256203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411926, 35.755894, 33.069340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261472, 0.400311, 0.878284,
		0.920352, 0.377582, 0.101899,
		-0.290833, 0.834975, -0.467155,
		38.324677, 36.006386, 32.929192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818275, 36.000942, 33.596840>,  <38.528259, 35.421906, 33.256203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818275, 36.000942, 33.596840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507874, 36.152164, 33.394894>,  <38.321632, 36.242897, 33.273724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507874, 36.152164, 33.394894>,  <38.818275, 36.000942, 33.596840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507874, 36.152164, 33.394894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369202, 0.376719, 0.849572,
		0.511380, 0.845669, -0.152757,
		-0.776003, 0.378056, -0.504869,
		38.275074, 36.265583, 33.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478642, 35.781132, 33.853401>,  <38.818275, 36.000942, 33.596840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478642, 35.781132, 33.853401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753502, 36.052452, 33.957508>,  <39.918419, 36.215244, 34.019970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753502, 36.052452, 33.957508>,  <39.478642, 35.781132, 33.853401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753502, 36.052452, 33.957508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376474, -0.026056, -0.926061,
		-0.621363, 0.734325, -0.273266,
		0.687150, 0.678298, 0.260264,
		39.959648, 36.255939, 34.035587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609383, 36.262840, 33.270309>,  <39.478642, 35.781132, 33.853401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609383, 36.262840, 33.270309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934803, 36.270676, 33.502773>,  <40.130054, 36.275375, 33.642254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934803, 36.270676, 33.502773>,  <39.609383, 36.262840, 33.270309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934803, 36.270676, 33.502773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575746, -0.167290, -0.800332,
		0.081548, 0.985713, -0.147376,
		0.813552, 0.019585, 0.581162,
		40.178867, 36.276550, 33.677120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015568, 36.771793, 33.003998>,  <39.609383, 36.262840, 33.270309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015568, 36.771793, 33.003998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233898, 36.491440, 33.187668>,  <40.364899, 36.323227, 33.297871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233898, 36.491440, 33.187668>,  <40.015568, 36.771793, 33.003998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233898, 36.491440, 33.187668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517887, -0.148596, -0.842444,
		0.658683, 0.697630, 0.281868,
		0.545830, -0.700879, 0.459171,
		40.397648, 36.281178, 33.325420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585300, 36.875458, 32.623905>,  <40.015568, 36.771793, 33.003998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585300, 36.875458, 32.623905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.675594, 36.563053, 32.856823>,  <40.729771, 36.375610, 32.996574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.675594, 36.563053, 32.856823>,  <40.585300, 36.875458, 32.623905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675594, 36.563053, 32.856823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799870, -0.192607, -0.568428,
		0.556103, 0.594072, 0.581230,
		0.225738, -0.781013, 0.582290,
		40.743317, 36.328751, 33.031509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379864, 36.826122, 32.920444>,  <40.585300, 36.875458, 32.623905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379864, 36.826122, 32.920444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233753, 36.454227, 32.901844>,  <41.146088, 36.231091, 32.890682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233753, 36.454227, 32.901844>,  <41.379864, 36.826122, 32.920444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233753, 36.454227, 32.901844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723585, -0.252142, -0.642534,
		0.585664, -0.268347, 0.764845,
		-0.365272, -0.929739, -0.046502,
		41.124172, 36.175304, 32.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912640, 36.452885, 32.905369>,  <41.379864, 36.826122, 32.920444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912640, 36.452885, 32.905369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.643688, 36.186054, 32.777046>,  <41.482319, 36.025955, 32.700054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.643688, 36.186054, 32.777046>,  <41.912640, 36.452885, 32.905369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643688, 36.186054, 32.777046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595913, -0.230735, -0.769187,
		0.439089, -0.708354, 0.552662,
		-0.672375, -0.667080, -0.320805,
		41.441975, 35.985931, 32.680805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277958, 35.729977, 32.832024>,  <41.912640, 36.452885, 32.905369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277958, 35.729977, 32.832024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.954319, 35.728786, 32.596954>,  <41.760136, 35.728073, 32.455914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.954319, 35.728786, 32.596954>,  <42.277958, 35.729977, 32.832024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954319, 35.728786, 32.596954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529638, -0.437003, -0.726988,
		-0.254652, -0.899455, 0.355152,
		-0.809096, -0.002973, -0.587669,
		41.711590, 35.727894, 32.420654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198200, 35.053921, 32.566772>,  <42.277958, 35.729977, 32.832024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198200, 35.053921, 32.566772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.000622, 35.279732, 32.302250>,  <41.882072, 35.415218, 32.143536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.000622, 35.279732, 32.302250>,  <42.198200, 35.053921, 32.566772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000622, 35.279732, 32.302250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522820, -0.414880, -0.744670,
		-0.694748, -0.713573, -0.090215,
		-0.493948, 0.564524, -0.661307,
		41.852436, 35.449089, 32.103859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071228, 34.523800, 32.012577>,  <42.198200, 35.053921, 32.566772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071228, 34.523800, 32.012577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.975567, 34.871601, 31.839714>,  <41.918171, 35.080284, 31.735994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.975567, 34.871601, 31.839714>,  <42.071228, 34.523800, 32.012577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975567, 34.871601, 31.839714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398616, -0.317923, -0.860250,
		-0.885387, -0.378000, -0.270567,
		-0.239155, 0.869506, -0.432162,
		41.903820, 35.132454, 31.710066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792881, 34.321354, 31.296177>,  <42.071228, 34.523800, 32.012577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792881, 34.321354, 31.296177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.907917, 34.704292, 31.284998>,  <41.976936, 34.934055, 31.278292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.907917, 34.704292, 31.284998>,  <41.792881, 34.321354, 31.296177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907917, 34.704292, 31.284998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417716, -0.151632, -0.895835,
		-0.861862, 0.245958, -0.443507,
		0.287588, 0.957346, -0.027946,
		41.994194, 34.991497, 31.276615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741852, 34.437092, 30.583130>,  <41.792881, 34.321354, 31.296177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741852, 34.437092, 30.583130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.988335, 34.716908, 30.727865>,  <42.136227, 34.884796, 30.814707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.988335, 34.716908, 30.727865>,  <41.741852, 34.437092, 30.583130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988335, 34.716908, 30.727865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529092, -0.027375, -0.848123,
		-0.583390, 0.714069, -0.386990,
		0.616212, 0.699540, 0.361838,
		42.173199, 34.926769, 30.836416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738369, 35.040031, 30.157064>,  <41.741852, 34.437092, 30.583130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738369, 35.040031, 30.157064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.083195, 35.098347, 30.351215>,  <42.290089, 35.133335, 30.467705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.083195, 35.098347, 30.351215>,  <41.738369, 35.040031, 30.157064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083195, 35.098347, 30.351215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468691, 0.135009, -0.872984,
		-0.192804, 0.980060, 0.048055,
		0.862065, 0.145792, 0.485375,
		42.341816, 35.142086, 30.496828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033867, 35.488899, 29.730606>,  <41.738369, 35.040031, 30.157064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033867, 35.488899, 29.730606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.332878, 35.324165, 29.939066>,  <42.512283, 35.225327, 30.064142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.332878, 35.324165, 29.939066>,  <42.033867, 35.488899, 29.730606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332878, 35.324165, 29.939066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538417, -0.083778, -0.838504,
		0.388984, 0.907400, 0.159111,
		0.747529, -0.411832, 0.521148,
		42.557137, 35.200615, 30.095409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635151, 35.850544, 29.575556>,  <42.033867, 35.488899, 29.730606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635151, 35.850544, 29.575556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.737835, 35.480850, 29.688618>,  <42.799446, 35.259033, 29.756454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.737835, 35.480850, 29.688618>,  <42.635151, 35.850544, 29.575556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737835, 35.480850, 29.688618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562630, -0.094887, -0.821246,
		0.785843, 0.369849, 0.495643,
		0.256707, -0.924234, 0.282655,
		42.814846, 35.203579, 29.773415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338531, 35.802860, 29.504168>,  <42.635151, 35.850544, 29.575556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338531, 35.802860, 29.504168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.218288, 35.421391, 29.499241>,  <43.146145, 35.192509, 29.496284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.218288, 35.421391, 29.499241>,  <43.338531, 35.802860, 29.504168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218288, 35.421391, 29.499241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631318, -0.189284, -0.752070,
		0.714896, -0.233850, 0.658968,
		-0.300603, -0.953670, -0.012315,
		43.128109, 35.135288, 29.495546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983738, 35.560596, 29.286659>,  <43.338531, 35.802860, 29.504168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983738, 35.560596, 29.286659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.712566, 35.270287, 29.239920>,  <43.549862, 35.096100, 29.211876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.712566, 35.270287, 29.239920>,  <43.983738, 35.560596, 29.286659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712566, 35.270287, 29.239920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470256, -0.305984, -0.827788,
		0.565036, -0.616134, 0.548738,
		-0.677933, -0.725777, -0.116848,
		43.509186, 35.052555, 29.204865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366547, 34.875599, 29.255100>,  <43.983738, 35.560596, 29.286659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366547, 34.875599, 29.255100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.013721, 34.866055, 29.066889>,  <43.802025, 34.860329, 28.953962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.013721, 34.866055, 29.066889>,  <44.366547, 34.875599, 29.255100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013721, 34.866055, 29.066889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419359, -0.494931, -0.761039,
		-0.214722, -0.868605, 0.446565,
		-0.882061, -0.023860, -0.470530,
		43.749104, 34.858898, 28.925730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453480, 34.251621, 28.947994>,  <44.366547, 34.875599, 29.255100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453480, 34.251621, 28.947994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.144077, 34.412796, 28.752310>,  <43.958435, 34.509499, 28.634899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.144077, 34.412796, 28.752310>,  <44.453480, 34.251621, 28.947994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144077, 34.412796, 28.752310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314717, -0.425807, -0.848317,
		-0.550125, -0.810145, 0.202556,
		-0.773509, 0.402932, -0.489213,
		43.912025, 34.533676, 28.605545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296066, 33.731937, 28.438387>,  <44.453480, 34.251621, 28.947994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296066, 33.731937, 28.438387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.130890, 34.078358, 28.325647>,  <44.031784, 34.286209, 28.258003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.130890, 34.078358, 28.325647>,  <44.296066, 33.731937, 28.438387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130890, 34.078358, 28.325647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156906, -0.237190, -0.958708,
		-0.897140, -0.440114, -0.037943,
		-0.412942, 0.866049, -0.281849,
		44.007008, 34.338173, 28.241093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.761452, 33.577652, 27.933407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.879288, 33.956100, 27.879629>,  <43.949989, 34.183170, 27.847363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.879288, 33.956100, 27.879629>,  <43.761452, 33.577652, 27.933407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879288, 33.956100, 27.879629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285485, -0.221393, -0.932461,
		-0.911984, 0.236314, -0.335323,
		0.294591, 0.946119, -0.134442,
		43.967667, 34.239937, 27.839296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413879, 33.703304, 27.290344>,  <43.761452, 33.577652, 27.933407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413879, 33.703304, 27.290344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.723110, 33.954525, 27.325911>,  <43.908649, 34.105259, 27.347250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.723110, 33.954525, 27.325911>,  <43.413879, 33.703304, 27.290344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723110, 33.954525, 27.325911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321541, -0.267178, -0.908420,
		-0.546779, 0.730866, -0.408494,
		0.773074, 0.628052, 0.088916,
		43.955032, 34.142941, 27.352585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414177, 33.963600, 26.662716>,  <43.413879, 33.703304, 27.290344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414177, 33.963600, 26.662716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.760262, 34.116245, 26.792814>,  <43.967911, 34.207832, 26.870874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.760262, 34.116245, 26.792814>,  <43.414177, 33.963600, 26.662716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760262, 34.116245, 26.792814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371745, -0.052908, -0.926826,
		-0.336478, 0.922808, -0.187638,
		0.865210, 0.381610, 0.325247,
		44.019825, 34.230728, 26.890388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613941, 34.467243, 26.117233>,  <43.414177, 33.963600, 26.662716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613941, 34.467243, 26.117233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.948524, 34.355450, 26.305796>,  <44.149273, 34.288372, 26.418934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.948524, 34.355450, 26.305796>,  <43.613941, 34.467243, 26.117233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948524, 34.355450, 26.305796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455247, -0.124530, -0.881614,
		0.305100, 0.952041, 0.023069,
		0.836459, -0.279483, 0.471408,
		44.199463, 34.271606, 26.447218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115894, 34.894833, 25.800713>,  <43.613941, 34.467243, 26.117233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115894, 34.894833, 25.800713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301708, 34.586071, 25.974319>,  <44.413197, 34.400814, 26.078484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301708, 34.586071, 25.974319>,  <44.115894, 34.894833, 25.800713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301708, 34.586071, 25.974319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430519, -0.231438, -0.872405,
		0.773862, 0.592114, 0.224809,
		0.464534, -0.771905, 0.434017,
		44.441067, 34.354500, 26.104525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921864, 34.911240, 25.547350>,  <44.115894, 34.894833, 25.800713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921864, 34.911240, 25.547350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.778099, 34.549820, 25.640667>,  <44.691841, 34.332970, 25.696657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.778099, 34.549820, 25.640667>,  <44.921864, 34.911240, 25.547350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778099, 34.549820, 25.640667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441554, -0.384903, -0.810481,
		0.822105, -0.188281, 0.537302,
		-0.359408, -0.903548, 0.233294,
		44.670277, 34.278755, 25.710655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474087, 34.346886, 25.287844>,  <44.921864, 34.911240, 25.547350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474087, 34.346886, 25.287844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.150993, 34.115582, 25.333784>,  <44.957138, 33.976799, 25.361347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.150993, 34.115582, 25.333784>,  <45.474087, 34.346886, 25.287844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150993, 34.115582, 25.333784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252685, -0.515571, -0.818741,
		0.532658, -0.632300, 0.562559,
		-0.807729, -0.578259, 0.114850,
		44.908676, 33.942104, 25.368238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627777, 33.597115, 25.035709>,  <45.474087, 34.346886, 25.287844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627777, 33.597115, 25.035709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.229340, 33.620964, 25.009651>,  <44.990276, 33.635273, 24.994017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.229340, 33.620964, 25.009651>,  <45.627777, 33.597115, 25.035709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229340, 33.620964, 25.009651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021785, -0.548994, -0.835542,
		-0.085579, -0.833697, 0.545550,
		-0.996093, 0.059620, -0.065145,
		44.930511, 33.638851, 24.990108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449802, 32.900074, 24.901993>,  <45.627777, 33.597115, 25.035709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449802, 32.900074, 24.901993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.113651, 33.106937, 24.837116>,  <44.911961, 33.231056, 24.798191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.113651, 33.106937, 24.837116>,  <45.449802, 32.900074, 24.901993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113651, 33.106937, 24.837116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114663, -0.462116, -0.879376,
		-0.529731, -0.720411, 0.447652,
		-0.840379, 0.517162, -0.162192,
		44.861538, 33.262085, 24.788458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836868, 32.437801, 24.709995>,  <45.449802, 32.900074, 24.901993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836868, 32.437801, 24.709995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.734303, 32.797619, 24.568537>,  <44.672764, 33.013512, 24.483662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.734303, 32.797619, 24.568537>,  <44.836868, 32.437801, 24.709995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734303, 32.797619, 24.568537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126216, -0.393907, -0.910444,
		-0.958292, -0.188813, 0.214539,
		-0.256412, 0.899548, -0.353647,
		44.657379, 33.067482, 24.462442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198498, 32.371265, 24.340942>,  <44.836868, 32.437801, 24.709995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198498, 32.371265, 24.340942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.381290, 32.697636, 24.199276>,  <44.490967, 32.893459, 24.114275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.381290, 32.697636, 24.199276>,  <44.198498, 32.371265, 24.340942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381290, 32.697636, 24.199276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097661, -0.441794, -0.891785,
		-0.884098, 0.372941, -0.281575,
		0.456982, 0.815925, -0.354167,
		44.518387, 32.942413, 24.093025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820282, 32.464882, 23.695320>,  <44.198498, 32.371265, 24.340942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820282, 32.464882, 23.695320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.143650, 32.697853, 23.661316>,  <44.337673, 32.837635, 23.640913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.143650, 32.697853, 23.661316>,  <43.820282, 32.464882, 23.695320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143650, 32.697853, 23.661316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135735, -0.325007, -0.935920,
		-0.572738, 0.745080, -0.341799,
		0.808422, 0.582432, -0.085010,
		44.386177, 32.872581, 23.635813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672371, 32.805653, 23.055243>,  <43.820282, 32.464882, 23.695320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672371, 32.805653, 23.055243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.062046, 32.850754, 23.133469>,  <44.295853, 32.877815, 23.180405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.062046, 32.850754, 23.133469>,  <43.672371, 32.805653, 23.055243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062046, 32.850754, 23.133469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206197, -0.091876, -0.974188,
		-0.091876, 0.989366, -0.112754,
		0.974188, 0.112754, 0.195563,
		44.354301, 32.884579, 23.192137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966419, 33.279335, 22.508818>,  <43.672371, 32.805653, 23.055243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966419, 33.279335, 22.508818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284039, 33.078701, 22.646160>,  <44.474609, 32.958321, 22.728565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284039, 33.078701, 22.646160>,  <43.966419, 33.279335, 22.508818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284039, 33.078701, 22.646160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270825, -0.213766, -0.938593,
		0.544185, 0.838280, -0.033899,
		0.794051, -0.501588, 0.343356,
		44.522255, 32.928226, 22.749166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455223, 33.421040, 21.971775>,  <43.966419, 33.279335, 22.508818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455223, 33.421040, 21.971775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.619072, 33.129471, 22.191183>,  <44.717381, 32.954529, 22.322828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.619072, 33.129471, 22.191183>,  <44.455223, 33.421040, 21.971775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619072, 33.129471, 22.191183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218848, -0.505201, -0.834792,
		0.885614, 0.461994, -0.047419,
		0.409625, -0.728926, 0.548520,
		44.741959, 32.910793, 22.355740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069366, 33.301613, 21.589334>,  <44.455223, 33.421040, 21.971775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069366, 33.301613, 21.589334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.016747, 32.986038, 21.829428>,  <44.985176, 32.796696, 21.973484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.016747, 32.986038, 21.829428>,  <45.069366, 33.301613, 21.589334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016747, 32.986038, 21.829428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492129, -0.577583, -0.651311,
		0.860526, 0.209714, 0.464236,
		-0.131546, -0.788934, 0.600232,
		44.977283, 32.749359, 22.009497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706627, 32.892731, 21.798061>,  <45.069366, 33.301613, 21.589334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706627, 32.892731, 21.798061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.377121, 32.666431, 21.783400>,  <45.179417, 32.530651, 21.774603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.377121, 32.666431, 21.783400>,  <45.706627, 32.892731, 21.798061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377121, 32.666431, 21.783400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370754, -0.488677, -0.789769,
		0.428898, -0.664173, 0.612308,
		-0.823764, -0.565746, -0.036653,
		45.129993, 32.496708, 21.772404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939060, 32.194965, 21.742159>,  <45.706627, 32.892731, 21.798061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939060, 32.194965, 21.742159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.564426, 32.185524, 21.602297>,  <45.339645, 32.179859, 21.518379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.564426, 32.185524, 21.602297>,  <45.939060, 32.194965, 21.742159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564426, 32.185524, 21.602297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332633, -0.373960, -0.865742,
		-0.110322, -0.927144, 0.358096,
		-0.936581, -0.023604, -0.349655,
		45.283451, 32.178444, 21.497400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837830, 31.572357, 21.362011>,  <45.939060, 32.194965, 21.742159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837830, 31.572357, 21.362011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.510338, 31.752167, 21.219118>,  <45.313843, 31.860052, 21.133383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.510338, 31.752167, 21.219118>,  <45.837830, 31.572357, 21.362011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510338, 31.752167, 21.219118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275562, -0.238207, -0.931302,
		-0.503737, -0.860921, 0.071155,
		-0.818727, 0.449524, -0.357231,
		45.264721, 31.887024, 21.111948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585697, 31.178740, 20.885702>,  <45.837830, 31.572357, 21.362011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585697, 31.178740, 20.885702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.415775, 31.523052, 20.773560>,  <45.313824, 31.729639, 20.706274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.415775, 31.523052, 20.773560>,  <45.585697, 31.178740, 20.885702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415775, 31.523052, 20.773560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282222, -0.168335, -0.944465,
		-0.860171, -0.480334, -0.171422,
		-0.424802, 0.860780, -0.280358,
		45.288334, 31.781286, 20.689453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144772, 30.944448, 20.331877>,  <45.585697, 31.178740, 20.885702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144772, 30.944448, 20.331877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.176525, 31.340788, 20.288206>,  <45.195576, 31.578592, 20.262003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.176525, 31.340788, 20.288206>,  <45.144772, 30.944448, 20.331877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176525, 31.340788, 20.288206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173655, -0.121592, -0.977271,
		-0.981602, 0.058618, -0.181718,
		0.079381, 0.990848, -0.109176,
		45.200340, 31.638042, 20.255453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761551, 31.077160, 19.632263>,  <45.144772, 30.944448, 20.331877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761551, 31.077160, 19.632263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.984718, 31.396132, 19.724209>,  <45.118618, 31.587515, 19.779377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.984718, 31.396132, 19.724209>,  <44.761551, 31.077160, 19.632263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984718, 31.396132, 19.724209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195975, 0.142552, -0.970192,
		-0.806428, 0.586331, -0.076745,
		0.557914, 0.797430, 0.229864,
		45.152092, 31.635361, 19.793169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769321, 31.589472, 19.098387>,  <44.761551, 31.077160, 19.632263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769321, 31.589472, 19.098387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.098549, 31.658693, 19.314764>,  <45.296085, 31.700226, 19.444590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.098549, 31.658693, 19.314764>,  <44.769321, 31.589472, 19.098387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098549, 31.658693, 19.314764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559426, -0.082641, -0.824751,
		-0.098024, 0.981439, -0.164830,
		0.823064, 0.173055, 0.540941,
		45.345467, 31.710609, 19.477047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170307, 31.502972, 18.585760>,  <44.769321, 31.589472, 19.098387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170307, 31.502972, 18.585760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.857143, 31.630089, 18.371819>,  <43.669247, 31.706358, 18.243454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.857143, 31.630089, 18.371819>,  <44.170307, 31.502972, 18.585760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857143, 31.630089, 18.371819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394991, 0.410306, 0.821968,
		0.480669, 0.854785, -0.195706,
		-0.782905, 0.317792, -0.534853,
		43.622272, 31.725426, 18.211363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895451, 32.313835, 18.622826>,  <44.170307, 31.502972, 18.585760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895451, 32.313835, 18.622826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.566448, 32.095520, 18.558834>,  <43.369045, 31.964529, 18.520439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.566448, 32.095520, 18.558834>,  <43.895451, 32.313835, 18.622826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566448, 32.095520, 18.558834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378629, 0.315558, 0.870094,
		-0.424408, 0.776231, -0.466201,
		-0.822507, -0.545792, -0.159978,
		43.319695, 31.931782, 18.510841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303879, 32.712742, 18.588154>,  <43.895451, 32.313835, 18.622826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303879, 32.712742, 18.588154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.265507, 32.337761, 18.722008>,  <43.242481, 32.112774, 18.802320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.265507, 32.337761, 18.722008>,  <43.303879, 32.712742, 18.588154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265507, 32.337761, 18.722008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252995, 0.348109, 0.902670,
		-0.962700, 0.001935, -0.270566,
		-0.095933, -0.937452, 0.334635,
		43.236729, 32.056526, 18.822397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715294, 32.768379, 18.933285>,  <43.303879, 32.712742, 18.588154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715294, 32.768379, 18.933285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874405, 32.441158, 19.099447>,  <42.969872, 32.244827, 19.199144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874405, 32.441158, 19.099447>,  <42.715294, 32.768379, 18.933285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874405, 32.441158, 19.099447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372888, 0.269541, 0.887864,
		-0.838289, -0.508072, -0.197826,
		0.397776, -0.818053, 0.415407,
		42.993736, 32.195744, 19.224070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232174, 32.585197, 19.358421>,  <42.715294, 32.768379, 18.933285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232174, 32.585197, 19.358421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.531239, 32.361374, 19.501471>,  <42.710678, 32.227077, 19.587301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.531239, 32.361374, 19.501471>,  <42.232174, 32.585197, 19.358421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531239, 32.361374, 19.501471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282760, 0.219026, 0.933849,
		-0.600876, -0.799323, 0.005535,
		0.747659, -0.559563, 0.357624,
		42.755535, 32.193504, 19.608757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931690, 32.029343, 19.689373>,  <42.232174, 32.585197, 19.358421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931690, 32.029343, 19.689373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.297337, 32.094280, 19.837984>,  <42.516724, 32.133244, 19.927151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.297337, 32.094280, 19.837984>,  <41.931690, 32.029343, 19.689373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297337, 32.094280, 19.837984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392057, 0.120355, 0.912034,
		0.103344, -0.979367, 0.173665,
		0.914118, 0.162340, 0.371530,
		42.571571, 32.142982, 19.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960629, 31.734859, 20.372957>,  <41.931690, 32.029343, 19.689373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960629, 31.734859, 20.372957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.288837, 31.961264, 20.404896>,  <42.485764, 32.097107, 20.424059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.288837, 31.961264, 20.404896>,  <41.960629, 31.734859, 20.372957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288837, 31.961264, 20.404896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233857, 0.204937, 0.950427,
		0.521591, -0.798517, 0.300521,
		0.820520, 0.566013, 0.079846,
		42.534992, 32.131069, 20.428850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257366, 31.489843, 21.007154>,  <41.960629, 31.734859, 20.372957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257366, 31.489843, 21.007154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.415859, 31.850496, 20.937809>,  <42.510956, 32.066887, 20.896202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.415859, 31.850496, 20.937809>,  <42.257366, 31.489843, 21.007154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415859, 31.850496, 20.937809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092381, 0.227011, 0.969501,
		0.913490, -0.368134, 0.173244,
		0.396235, 0.901634, -0.173363,
		42.534729, 32.120987, 20.885799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721519, 31.652550, 21.527803>,  <42.257366, 31.489843, 21.007154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721519, 31.652550, 21.527803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.644684, 32.020741, 21.391670>,  <42.598583, 32.241653, 21.309990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.644684, 32.020741, 21.391670>,  <42.721519, 31.652550, 21.527803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644684, 32.020741, 21.391670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056637, 0.335816, 0.940223,
		0.979743, 0.199878, -0.012372,
		-0.192085, 0.920476, -0.340334,
		42.587059, 32.296883, 21.289570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224670, 32.078957, 21.853270>,  <42.721519, 31.652550, 21.527803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224670, 32.078957, 21.853270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935326, 32.328171, 21.734222>,  <42.761719, 32.477699, 21.662794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935326, 32.328171, 21.734222>,  <43.224670, 32.078957, 21.853270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935326, 32.328171, 21.734222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089497, 0.512006, 0.854307,
		0.684644, 0.591337, -0.426125,
		-0.723362, 0.623033, -0.297619,
		42.718319, 32.515079, 21.644938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333481, 32.767235, 22.203802>,  <43.224670, 32.078957, 21.853270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333481, 32.767235, 22.203802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.952110, 32.812973, 22.092157>,  <42.723289, 32.840416, 22.025169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.952110, 32.812973, 22.092157>,  <43.333481, 32.767235, 22.203802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952110, 32.812973, 22.092157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222176, 0.359620, 0.906262,
		0.204005, 0.926066, -0.317465,
		-0.953425, 0.114349, -0.279114,
		42.666084, 32.847279, 22.008423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081093, 33.426899, 22.256979>,  <43.333481, 32.767235, 22.203802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081093, 33.426899, 22.256979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.729462, 33.236275, 22.261147>,  <42.518482, 33.121899, 22.263647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.729462, 33.236275, 22.261147>,  <43.081093, 33.426899, 22.256979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729462, 33.236275, 22.261147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232225, 0.447251, 0.863735,
		-0.416285, 0.756871, -0.503839,
		-0.879079, -0.476563, 0.010420,
		42.465736, 33.093307, 22.264273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645802, 33.948242, 22.354082>,  <43.081093, 33.426899, 22.256979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645802, 33.948242, 22.354082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.503540, 33.593048, 22.470701>,  <42.418182, 33.379932, 22.540672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.503540, 33.593048, 22.470701>,  <42.645802, 33.948242, 22.354082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503540, 33.593048, 22.470701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249698, 0.390881, 0.885925,
		-0.900646, 0.242281, -0.360745,
		-0.355651, -0.887982, 0.291548,
		42.396843, 33.326653, 22.558167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456337, 34.146549, 22.925087>,  <42.645802, 33.948242, 22.354082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456337, 34.146549, 22.925087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366634, 33.761944, 22.988575>,  <42.312813, 33.531181, 23.026667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366634, 33.761944, 22.988575>,  <42.456337, 34.146549, 22.925087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366634, 33.761944, 22.988575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272084, 0.218166, 0.937216,
		-0.935776, 0.166996, -0.310540,
		-0.224260, -0.961518, 0.158718,
		42.299355, 33.473488, 23.036190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818535, 33.961525, 23.335222>,  <42.456337, 34.146549, 22.925087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818535, 33.961525, 23.335222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027058, 33.631683, 23.423096>,  <42.152172, 33.433777, 23.475819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027058, 33.631683, 23.423096>,  <41.818535, 33.961525, 23.335222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027058, 33.631683, 23.423096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173482, 0.149649, 0.973401,
		-0.835549, -0.545553, -0.065042,
		0.521308, -0.824607, 0.219682,
		42.183449, 33.384300, 23.489000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426670, 33.575146, 23.807140>,  <41.818535, 33.961525, 23.335222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426670, 33.575146, 23.807140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789425, 33.432476, 23.896893>,  <42.007076, 33.346874, 23.950743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789425, 33.432476, 23.896893>,  <41.426670, 33.575146, 23.807140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789425, 33.432476, 23.896893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219618, 0.054370, 0.974070,
		-0.359622, -0.932647, -0.029024,
		0.906885, -0.356671, 0.224379,
		42.061489, 33.325474, 23.964207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320408, 32.997665, 24.294966>,  <41.426670, 33.575146, 23.807140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320408, 32.997665, 24.294966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.677406, 33.176880, 24.315832>,  <41.891605, 33.284409, 24.328352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.677406, 33.176880, 24.315832>,  <41.320408, 32.997665, 24.294966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677406, 33.176880, 24.315832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200686, 0.290848, 0.935485,
		0.403955, -0.845384, 0.349494,
		0.892494, 0.448033, 0.052167,
		41.945156, 33.311291, 24.331482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479679, 32.960995, 24.990759>,  <41.320408, 32.997665, 24.294966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479679, 32.960995, 24.990759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.711277, 33.249802, 24.839256>,  <41.850235, 33.423088, 24.748356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.711277, 33.249802, 24.839256>,  <41.479679, 32.960995, 24.990759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711277, 33.249802, 24.839256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121037, 0.383278, 0.915668,
		0.806298, -0.576008, 0.134525,
		0.578993, 0.722019, -0.378755,
		41.884975, 33.466408, 24.725630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470203, 32.360554, 25.480547>,  <41.479679, 32.960995, 24.990759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470203, 32.360554, 25.480547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.682449, 32.688583, 25.394829>,  <41.809795, 32.885403, 25.343397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.682449, 32.688583, 25.394829>,  <41.470203, 32.360554, 25.480547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682449, 32.688583, 25.394829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301097, 0.418699, 0.856757,
		0.792332, -0.390083, 0.469090,
		0.530614, 0.820077, -0.214296,
		41.841633, 32.934605, 25.330540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909916, 32.452614, 26.077192>,  <41.470203, 32.360554, 25.480547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909916, 32.452614, 26.077192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.846886, 32.802147, 25.893196>,  <41.809067, 33.011868, 25.782799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.846886, 32.802147, 25.893196>,  <41.909916, 32.452614, 26.077192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846886, 32.802147, 25.893196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321645, 0.394992, 0.860538,
		0.933656, 0.283553, 0.218822,
		-0.157576, 0.873830, -0.459990,
		41.799614, 33.064297, 25.755199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268784, 33.088638, 26.445660>,  <41.909916, 32.452614, 26.077192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268784, 33.088638, 26.445660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958973, 33.212143, 26.224836>,  <41.773087, 33.286247, 26.092342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958973, 33.212143, 26.224836>,  <42.268784, 33.088638, 26.445660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958973, 33.212143, 26.224836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385999, 0.460708, 0.799221,
		0.501107, 0.832114, -0.237650,
		-0.774530, 0.308763, -0.552059,
		41.726616, 33.304771, 26.059219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.508759, 34.577511, 30.708944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213509, 34.767609, 30.517393>,  <43.036358, 34.881668, 30.402462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213509, 34.767609, 30.517393>,  <43.508759, 34.577511, 30.708944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213509, 34.767609, 30.517393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363963, 0.317160, 0.875751,
		0.568074, 0.820704, -0.061132,
		-0.738121, 0.475242, -0.478876,
		42.992073, 34.910183, 30.373730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450508, 35.123276, 31.156746>,  <43.508759, 34.577511, 30.708944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450508, 35.123276, 31.156746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111153, 35.120331, 30.945019>,  <42.907539, 35.118565, 30.817982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111153, 35.120331, 30.945019>,  <43.450508, 35.123276, 31.156746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111153, 35.120331, 30.945019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488735, 0.395079, 0.777850,
		0.203397, 0.918618, -0.338778,
		-0.848391, -0.007360, -0.529319,
		42.856636, 35.118122, 30.786222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072655, 35.733978, 31.302223>,  <43.450508, 35.123276, 31.156746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072655, 35.733978, 31.302223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789230, 35.482101, 31.174835>,  <42.619175, 35.330975, 31.098402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789230, 35.482101, 31.174835>,  <43.072655, 35.733978, 31.302223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789230, 35.482101, 31.174835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613083, 0.325895, 0.719668,
		-0.349381, 0.705180, -0.616971,
		-0.708564, -0.629693, -0.318472,
		42.576660, 35.293194, 31.079294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533794, 36.155968, 31.175753>,  <43.072655, 35.733978, 31.302223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533794, 36.155968, 31.175753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354332, 35.799957, 31.208132>,  <42.246655, 35.586349, 31.227560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354332, 35.799957, 31.208132>,  <42.533794, 36.155968, 31.175753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354332, 35.799957, 31.208132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692387, 0.403434, 0.598199,
		-0.565073, 0.212338, -0.797249,
		-0.448657, -0.890030, 0.080950,
		42.219734, 35.532948, 31.232416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835194, 36.314579, 31.158566>,  <42.533794, 36.155968, 31.175753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835194, 36.314579, 31.158566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.846798, 35.950577, 31.324001>,  <41.853760, 35.732178, 31.423262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.846798, 35.950577, 31.324001>,  <41.835194, 36.314579, 31.158566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846798, 35.950577, 31.324001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621814, 0.307528, 0.720259,
		-0.782627, -0.278068, -0.556931,
		0.029009, -0.910002, 0.413587,
		41.855499, 35.677578, 31.448078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189079, 36.107510, 31.200573>,  <41.835194, 36.314579, 31.158566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189079, 36.107510, 31.200573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384178, 35.904720, 31.484850>,  <41.501236, 35.783047, 31.655416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384178, 35.904720, 31.484850>,  <41.189079, 36.107510, 31.200573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384178, 35.904720, 31.484850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658428, 0.320916, 0.680798,
		-0.573219, -0.799995, -0.177281,
		0.487742, -0.506973, 0.710694,
		41.530502, 35.752628, 31.698059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640011, 35.758190, 31.634796>,  <41.189079, 36.107510, 31.200573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640011, 35.758190, 31.634796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955791, 35.758900, 31.880318>,  <41.145260, 35.759327, 32.027630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955791, 35.758900, 31.880318>,  <40.640011, 35.758190, 31.634796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955791, 35.758900, 31.880318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603688, 0.183082, 0.775913,
		-0.110997, -0.983096, 0.145608,
		0.789455, 0.001778, 0.613805,
		41.192627, 35.759434, 32.064461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456341, 35.317886, 32.249382>,  <40.640011, 35.758190, 31.634796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456341, 35.317886, 32.249382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767509, 35.533485, 32.378578>,  <40.954208, 35.662846, 32.456097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767509, 35.533485, 32.378578>,  <40.456341, 35.317886, 32.249382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767509, 35.533485, 32.378578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476143, 0.170213, 0.862737,
		0.410038, -0.824928, 0.389053,
		0.777918, 0.539000, 0.322990,
		41.000885, 35.695187, 32.475475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536411, 35.052067, 32.964901>,  <40.456341, 35.317886, 32.249382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536411, 35.052067, 32.964901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728302, 35.401833, 32.935863>,  <40.843437, 35.611691, 32.918442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728302, 35.401833, 32.935863>,  <40.536411, 35.052067, 32.964901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728302, 35.401833, 32.935863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406612, 0.294866, 0.864708,
		0.777516, -0.385304, 0.497001,
		0.479725, 0.874411, -0.072594,
		40.872219, 35.664154, 32.914085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956150, 35.161964, 33.658943>,  <40.536411, 35.052067, 32.964901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956150, 35.161964, 33.658943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903255, 35.514267, 33.477051>,  <40.871517, 35.725647, 33.367916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903255, 35.514267, 33.477051>,  <40.956150, 35.161964, 33.658943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903255, 35.514267, 33.477051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340708, 0.390421, 0.855272,
		0.930823, 0.268029, 0.248453,
		-0.132237, 0.880756, -0.454732,
		40.863583, 35.778496, 33.340630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254814, 35.714653, 34.080715>,  <40.956150, 35.161964, 33.658943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254814, 35.714653, 34.080715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.966831, 35.886673, 33.862827>,  <40.794041, 35.989887, 33.732094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.966831, 35.886673, 33.862827>,  <41.254814, 35.714653, 34.080715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966831, 35.886673, 33.862827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436394, 0.329782, 0.837141,
		0.539654, 0.840416, -0.049755,
		-0.719954, 0.430053, -0.544720,
		40.750843, 36.015690, 33.699409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227280, 36.431870, 34.368992>,  <41.254814, 35.714653, 34.080715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227280, 36.431870, 34.368992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884975, 36.362946, 34.173855>,  <40.679592, 36.321590, 34.056774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884975, 36.362946, 34.173855>,  <41.227280, 36.431870, 34.368992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884975, 36.362946, 34.173855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511247, 0.426346, 0.746228,
		0.079405, 0.887997, -0.452943,
		-0.855758, -0.172312, -0.487839,
		40.628246, 36.311253, 34.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973679, 37.095291, 34.298943>,  <41.227280, 36.431870, 34.368992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973679, 37.095291, 34.298943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681950, 36.823101, 34.270527>,  <40.506912, 36.659786, 34.253479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681950, 36.823101, 34.270527>,  <40.973679, 37.095291, 34.298943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681950, 36.823101, 34.270527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527547, 0.493209, 0.691694,
		-0.435643, 0.541942, -0.718689,
		-0.729322, -0.680474, -0.071037,
		40.463154, 36.618958, 34.249214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430965, 37.542572, 34.306427>,  <40.973679, 37.095291, 34.298943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430965, 37.542572, 34.306427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386417, 37.173237, 34.453419>,  <40.359688, 36.951633, 34.541615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386417, 37.173237, 34.453419>,  <40.430965, 37.542572, 34.306427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386417, 37.173237, 34.453419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290727, 0.383871, 0.876425,
		-0.950303, -0.009230, -0.311191,
		-0.111368, -0.923340, 0.367477,
		40.353008, 36.896236, 34.563663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047298, 37.882008, 33.920841>,  <40.430965, 37.542572, 34.306427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047298, 37.882008, 33.920841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.214279, 38.233219, 33.827209>,  <41.314468, 38.443947, 33.771030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.214279, 38.233219, 33.827209>,  <41.047298, 37.882008, 33.920841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214279, 38.233219, 33.827209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563147, -0.452145, -0.691686,
		-0.713161, 0.156924, -0.683210,
		0.417453, 0.878032, -0.234081,
		41.339516, 38.496628, 33.756985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006084, 37.804707, 33.118900>,  <41.047298, 37.882008, 33.920841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006084, 37.804707, 33.118900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264839, 38.105099, 33.171913>,  <41.420094, 38.285336, 33.203720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264839, 38.105099, 33.171913>,  <41.006084, 37.804707, 33.118900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264839, 38.105099, 33.171913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398623, -0.184845, -0.898294,
		-0.650103, 0.633926, -0.418932,
		0.646889, 0.750979, 0.132529,
		41.458904, 38.330391, 33.211670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027084, 38.234104, 32.494801>,  <41.006084, 37.804707, 33.118900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027084, 38.234104, 32.494801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369137, 38.310863, 32.687431>,  <41.574368, 38.356918, 32.803009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369137, 38.310863, 32.687431>,  <41.027084, 38.234104, 32.494801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369137, 38.310863, 32.687431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506434, -0.110760, -0.855136,
		-0.110760, 0.975145, -0.191898,
		0.855136, 0.191898, 0.481579,
		41.625679, 38.368431, 32.831905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342552, 38.711731, 32.117840>,  <41.027084, 38.234104, 32.494801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342552, 38.711731, 32.117840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.652309, 38.558784, 32.319481>,  <41.838161, 38.467018, 32.440464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.652309, 38.558784, 32.319481>,  <41.342552, 38.711731, 32.117840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652309, 38.558784, 32.319481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547504, 0.005644, -0.836784,
		0.317109, 0.923995, 0.213715,
		0.774391, -0.382362, 0.504101,
		41.884628, 38.444077, 32.470711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908138, 39.015171, 31.813015>,  <41.342552, 38.711731, 32.117840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908138, 39.015171, 31.813015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.067673, 38.700748, 32.001926>,  <42.163395, 38.512096, 32.115273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.067673, 38.700748, 32.001926>,  <41.908138, 39.015171, 31.813015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067673, 38.700748, 32.001926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677404, -0.094589, -0.729505,
		0.618103, 0.610877, 0.494750,
		0.398840, -0.786055, 0.472276,
		42.187325, 38.464931, 32.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560368, 39.165546, 31.764570>,  <41.908138, 39.015171, 31.813015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560368, 39.165546, 31.764570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555298, 38.772270, 31.837425>,  <42.552254, 38.536304, 31.881138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555298, 38.772270, 31.837425>,  <42.560368, 39.165546, 31.764570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555298, 38.772270, 31.837425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638982, -0.148074, -0.754835,
		0.769117, 0.106813, 0.630119,
		-0.012678, -0.983191, 0.182138,
		42.551495, 38.477314, 31.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234436, 38.996941, 31.697222>,  <42.560368, 39.165546, 31.764570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234436, 38.996941, 31.697222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010860, 38.668320, 31.652256>,  <42.876713, 38.471149, 31.625277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010860, 38.668320, 31.652256>,  <43.234436, 38.996941, 31.697222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010860, 38.668320, 31.652256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536319, -0.254783, -0.804641,
		0.632412, -0.510040, 0.583022,
		-0.558944, -0.821550, -0.112416,
		42.843178, 38.421856, 31.618530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644512, 38.519402, 31.567360>,  <43.234436, 38.996941, 31.697222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644512, 38.519402, 31.567360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293465, 38.386791, 31.428869>,  <43.082836, 38.307224, 31.345776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293465, 38.386791, 31.428869>,  <43.644512, 38.519402, 31.567360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293465, 38.386791, 31.428869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446658, -0.303364, -0.841705,
		0.174017, -0.893341, 0.414318,
		-0.877619, -0.331529, -0.346227,
		43.030178, 38.287334, 31.325001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829536, 37.874462, 31.122698>,  <43.644512, 38.519402, 31.567360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829536, 37.874462, 31.122698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461430, 37.966633, 30.996202>,  <43.240566, 38.021935, 30.920305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461430, 37.966633, 30.996202>,  <43.829536, 37.874462, 31.122698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461430, 37.966633, 30.996202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246029, -0.287685, -0.925585,
		-0.304268, -0.929589, 0.208053,
		-0.920267, 0.230439, -0.316239,
		43.185349, 38.035759, 30.901331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497459, 37.342449, 30.775478>,  <43.829536, 37.874462, 31.122698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497459, 37.342449, 30.775478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306248, 37.662533, 30.630611>,  <43.191521, 37.854584, 30.543692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306248, 37.662533, 30.630611>,  <43.497459, 37.342449, 30.775478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306248, 37.662533, 30.630611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116135, -0.351125, -0.929098,
		-0.870634, -0.486193, 0.074916,
		-0.478026, 0.800204, -0.362166,
		43.162842, 37.902596, 30.521961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959599, 37.050041, 30.360687>,  <43.497459, 37.342449, 30.775478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959599, 37.050041, 30.360687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.051849, 37.415817, 30.227654>,  <43.107201, 37.635281, 30.147833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.051849, 37.415817, 30.227654>,  <42.959599, 37.050041, 30.360687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051849, 37.415817, 30.227654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216221, -0.381417, -0.898760,
		-0.948714, 0.135367, -0.285686,
		0.230628, 0.914438, -0.332586,
		43.121037, 37.690147, 30.127878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924271, 36.961922, 29.673941>,  <42.959599, 37.050041, 30.360687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924271, 36.961922, 29.673941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078846, 37.329224, 29.708529>,  <43.171593, 37.549606, 29.729282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078846, 37.329224, 29.708529>,  <42.924271, 36.961922, 29.673941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078846, 37.329224, 29.708529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177883, 0.017792, -0.983891,
		-0.904999, 0.395594, -0.156466,
		0.386437, 0.918253, 0.086471,
		43.194778, 37.604698, 29.734470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657780, 37.311352, 29.158119>,  <42.924271, 36.961922, 29.673941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657780, 37.311352, 29.158119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005516, 37.487293, 29.248249>,  <43.214157, 37.592857, 29.302328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005516, 37.487293, 29.248249>,  <42.657780, 37.311352, 29.158119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005516, 37.487293, 29.248249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257614, -0.014227, -0.966143,
		-0.421757, 0.897956, -0.125681,
		0.869342, 0.439855, 0.225326,
		43.266319, 37.619251, 29.315847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709782, 37.765621, 28.624084>,  <42.657780, 37.311352, 29.158119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709782, 37.765621, 28.624084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072495, 37.720173, 28.786484>,  <43.290123, 37.692902, 28.883923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072495, 37.720173, 28.786484>,  <42.709782, 37.765621, 28.624084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072495, 37.720173, 28.786484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404764, -0.034774, -0.913760,
		0.117943, 0.992915, 0.014458,
		0.906783, -0.113624, 0.405998,
		43.344528, 37.686085, 28.908283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255672, 38.310707, 28.238199>,  <42.709782, 37.765621, 28.624084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255672, 38.310707, 28.238199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915596, 38.206871, 28.054985>,  <41.711552, 38.144569, 27.945057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915596, 38.206871, 28.054985>,  <42.255672, 38.310707, 28.238199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915596, 38.206871, 28.054985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517960, 0.256545, 0.816028,
		-0.094323, 0.931021, -0.352566,
		-0.850189, -0.259586, -0.458034,
		41.660538, 38.128994, 27.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752884, 38.803032, 28.453108>,  <42.255672, 38.310707, 28.238199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752884, 38.803032, 28.453108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.534496, 38.483597, 28.351778>,  <41.403465, 38.291935, 28.290979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.534496, 38.483597, 28.351778>,  <41.752884, 38.803032, 28.453108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534496, 38.483597, 28.351778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524767, 0.090259, 0.846447,
		-0.653097, 0.595072, -0.468352,
		-0.545970, -0.798588, -0.253326,
		41.370705, 38.244022, 28.275780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172230, 39.031513, 28.516216>,  <41.752884, 38.803032, 28.453108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172230, 39.031513, 28.516216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.083195, 38.641571, 28.512032>,  <41.029774, 38.407604, 28.509521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.083195, 38.641571, 28.512032>,  <41.172230, 39.031513, 28.516216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083195, 38.641571, 28.512032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500666, 0.105097, 0.859237,
		-0.836533, 0.196495, -0.511471,
		-0.222590, -0.974856, -0.010462,
		41.016418, 38.349113, 28.508894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478661, 39.023346, 28.534676>,  <41.172230, 39.031513, 28.516216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478661, 39.023346, 28.534676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626690, 38.680634, 28.678322>,  <40.715508, 38.475006, 28.764509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626690, 38.680634, 28.678322>,  <40.478661, 39.023346, 28.534676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626690, 38.680634, 28.678322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557926, 0.104105, 0.823335,
		-0.742807, -0.505057, -0.439495,
		0.370077, -0.856785, 0.359114,
		40.737713, 38.423599, 28.786057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929077, 38.801220, 28.838137>,  <40.478661, 39.023346, 28.534676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929077, 38.801220, 28.838137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209557, 38.567719, 29.001869>,  <40.377846, 38.427616, 29.100109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209557, 38.567719, 29.001869>,  <39.929077, 38.801220, 28.838137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209557, 38.567719, 29.001869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580173, -0.133495, 0.803479,
		-0.414391, -0.800881, -0.432285,
		0.701198, -0.583755, 0.409331,
		40.419918, 38.392593, 29.124668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592213, 38.337997, 29.307728>,  <39.929077, 38.801220, 28.838137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592213, 38.337997, 29.307728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.960098, 38.321598, 29.463903>,  <40.180832, 38.311756, 29.557610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.960098, 38.321598, 29.463903>,  <39.592213, 38.337997, 29.307728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960098, 38.321598, 29.463903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389603, -0.217672, 0.894890,
		0.048299, -0.975160, -0.216169,
		0.919716, -0.040998, 0.390439,
		40.236012, 38.309299, 29.581036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618774, 37.735378, 29.817570>,  <39.592213, 38.337997, 29.307728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618774, 37.735378, 29.817570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905876, 37.998016, 29.910275>,  <40.078136, 38.155598, 29.965897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905876, 37.998016, 29.910275>,  <39.618774, 37.735378, 29.817570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905876, 37.998016, 29.910275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335555, 0.034526, 0.941388,
		0.610108, -0.753454, 0.245105,
		0.717755, 0.656594, 0.231761,
		40.121204, 38.194996, 29.979803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649342, 37.699364, 30.550594>,  <39.618774, 37.735378, 29.817570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649342, 37.699364, 30.550594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.840622, 38.046783, 30.498528>,  <39.955391, 38.255238, 30.467287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.840622, 38.046783, 30.498528>,  <39.649342, 37.699364, 30.550594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840622, 38.046783, 30.498528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318690, 0.309715, 0.895831,
		0.818391, -0.386902, 0.424904,
		0.478198, 0.868553, -0.130166,
		39.984081, 38.307350, 30.459478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008762, 37.818184, 31.151581>,  <39.649342, 37.699364, 30.550594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008762, 37.818184, 31.151581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983639, 38.182289, 30.987883>,  <39.968563, 38.400753, 30.889664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983639, 38.182289, 30.987883>,  <40.008762, 37.818184, 31.151581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983639, 38.182289, 30.987883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224056, 0.386726, 0.894562,
		0.972550, 0.147881, 0.179659,
		-0.062810, 0.910261, -0.409244,
		39.964794, 38.455368, 30.865110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384747, 38.299789, 31.546310>,  <40.008762, 37.818184, 31.151581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384747, 38.299789, 31.546310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110981, 38.510597, 31.344786>,  <39.946724, 38.637081, 31.223871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110981, 38.510597, 31.344786>,  <40.384747, 38.299789, 31.546310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110981, 38.510597, 31.344786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277445, 0.450765, 0.848431,
		0.674244, 0.720456, -0.162289,
		-0.684411, 0.527023, -0.503813,
		39.905659, 38.668705, 31.193642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303467, 38.946003, 31.959084>,  <40.384747, 38.299789, 31.546310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303467, 38.946003, 31.959084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989670, 38.967072, 31.711924>,  <39.801392, 38.979713, 31.563627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989670, 38.967072, 31.711924>,  <40.303467, 38.946003, 31.959084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989670, 38.967072, 31.711924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482835, 0.573392, 0.661885,
		0.389160, 0.817587, -0.424390,
		-0.784490, 0.052669, -0.617900,
		39.754322, 38.982872, 31.526554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126904, 39.626598, 31.892813>,  <40.303467, 38.946003, 31.959084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126904, 39.626598, 31.892813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784645, 39.445232, 31.792980>,  <39.579292, 39.336414, 31.733080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784645, 39.445232, 31.792980>,  <40.126904, 39.626598, 31.892813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784645, 39.445232, 31.792980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470455, 0.480337, 0.740236,
		-0.215749, 0.750795, -0.624307,
		-0.855643, -0.453413, -0.249583,
		39.527954, 39.309208, 31.718105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.409763, 37.662113, 24.856701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096714, 37.413223, 24.849224>,  <42.908886, 37.263889, 24.844738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096714, 37.413223, 24.849224>,  <43.409763, 37.662113, 24.856701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096714, 37.413223, 24.849224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397853, 0.476867, 0.783780,
		-0.478771, 0.620837, -0.620757,
		-0.782619, -0.622221, -0.018692,
		42.861927, 37.226559, 24.843616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804974, 38.071793, 24.851753>,  <43.409763, 37.662113, 24.856701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804974, 38.071793, 24.851753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706356, 37.707169, 24.983370>,  <42.647186, 37.488392, 25.062340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706356, 37.707169, 24.983370>,  <42.804974, 38.071793, 24.851753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706356, 37.707169, 24.983370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545220, 0.411158, 0.730537,
		-0.801220, 0.000706, -0.598369,
		-0.246540, -0.911564, 0.329043,
		42.632393, 37.433701, 25.082083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158215, 38.147091, 24.965691>,  <42.804974, 38.071793, 24.851753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158215, 38.147091, 24.965691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262955, 37.835228, 25.193222>,  <42.325798, 37.648109, 25.329741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262955, 37.835228, 25.193222>,  <42.158215, 38.147091, 24.965691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262955, 37.835228, 25.193222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684303, 0.265636, 0.679093,
		-0.680563, -0.567070, -0.463968,
		0.261846, -0.779660, 0.568830,
		42.341507, 37.601330, 25.363871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545059, 37.807560, 25.357786>,  <42.158215, 38.147091, 24.965691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545059, 37.807560, 25.357786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853893, 37.630638, 25.540323>,  <42.039196, 37.524487, 25.649845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853893, 37.630638, 25.540323>,  <41.545059, 37.807560, 25.357786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853893, 37.630638, 25.540323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471994, 0.081753, 0.877803,
		-0.425561, -0.893133, -0.145643,
		0.772088, -0.442302, 0.456344,
		42.085518, 37.497948, 25.677227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301327, 37.295029, 25.807247>,  <41.545059, 37.807560, 25.357786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301327, 37.295029, 25.807247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661388, 37.387161, 25.955118>,  <41.877426, 37.442440, 26.043840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661388, 37.387161, 25.955118>,  <41.301327, 37.295029, 25.807247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661388, 37.387161, 25.955118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401460, 0.109525, 0.909304,
		0.168956, -0.966928, 0.191060,
		0.900158, 0.230335, 0.369679,
		41.931435, 37.456261, 26.066023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418674, 36.844475, 26.431814>,  <41.301327, 37.295029, 25.807247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418674, 36.844475, 26.431814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672112, 37.151875, 26.467512>,  <41.824173, 37.336315, 26.488932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672112, 37.151875, 26.467512>,  <41.418674, 36.844475, 26.431814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672112, 37.151875, 26.467512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323321, 0.158219, 0.932968,
		0.702866, -0.619979, 0.348720,
		0.633595, 0.768500, 0.089246,
		41.862190, 37.382423, 26.494286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773712, 36.771671, 27.108673>,  <41.418674, 36.844475, 26.431814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773712, 36.771671, 27.108673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845203, 37.150478, 27.001928>,  <41.888100, 37.377762, 26.937881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845203, 37.150478, 27.001928>,  <41.773712, 36.771671, 27.108673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845203, 37.150478, 27.001928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300769, 0.310832, 0.901621,
		0.936800, -0.080882, 0.340388,
		0.178729, 0.947017, -0.266860,
		41.898823, 37.434582, 26.921871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129158, 36.995064, 27.678186>,  <41.773712, 36.771671, 27.108673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129158, 36.995064, 27.678186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989540, 37.318516, 27.488752>,  <41.905769, 37.512589, 27.375092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989540, 37.318516, 27.488752>,  <42.129158, 36.995064, 27.678186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989540, 37.318516, 27.488752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308632, 0.377978, 0.872857,
		0.884825, 0.450827, 0.117640,
		-0.349043, 0.808633, -0.473584,
		41.884827, 37.561108, 27.346678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547859, 37.670364, 27.877165>,  <42.129158, 36.995064, 27.678186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547859, 37.670364, 27.877165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172352, 37.772945, 27.785120>,  <41.947048, 37.834496, 27.729893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172352, 37.772945, 27.785120>,  <42.547859, 37.670364, 27.877165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172352, 37.772945, 27.785120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093376, 0.453504, 0.886349,
		0.331665, 0.853560, -0.401787,
		-0.938765, 0.256454, -0.230114,
		41.890724, 37.849880, 27.716085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133568, 38.104477, 28.161608>,  <42.547859, 37.670364, 27.877165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133568, 38.104477, 28.161608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435463, 37.967831, 28.385630>,  <43.616600, 37.885841, 28.520042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435463, 37.967831, 28.385630>,  <43.133568, 38.104477, 28.161608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435463, 37.967831, 28.385630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486992, -0.280246, -0.827225,
		0.439550, 0.897083, -0.045147,
		0.754742, -0.341620, 0.560054,
		43.661884, 37.865345, 28.553646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747250, 38.366367, 27.921295>,  <43.133568, 38.104477, 28.161608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747250, 38.366367, 27.921295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886219, 38.037716, 28.102060>,  <43.969601, 37.840527, 28.210520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886219, 38.037716, 28.102060>,  <43.747250, 38.366367, 27.921295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886219, 38.037716, 28.102060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475608, -0.260942, -0.840064,
		0.808143, 0.506788, 0.300117,
		0.347421, -0.821630, 0.451911,
		43.990444, 37.791225, 28.237633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529484, 38.362694, 27.932650>,  <43.747250, 38.366367, 27.921295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529484, 38.362694, 27.932650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439056, 37.975689, 27.977930>,  <44.384800, 37.743484, 28.005098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439056, 37.975689, 27.977930>,  <44.529484, 38.362694, 27.932650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439056, 37.975689, 27.977930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597652, -0.229531, -0.768197,
		0.769223, -0.106012, 0.630125,
		-0.226072, -0.967511, 0.113202,
		44.371235, 37.685436, 28.011890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178749, 37.985077, 27.883705>,  <44.529484, 38.362694, 27.932650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178749, 37.985077, 27.883705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899189, 37.707756, 27.813435>,  <44.731453, 37.541363, 27.771273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899189, 37.707756, 27.813435>,  <45.178749, 37.985077, 27.883705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899189, 37.707756, 27.813435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555553, -0.371555, -0.743847,
		0.450440, -0.617474, 0.644849,
		-0.698902, -0.693306, -0.175676,
		44.689518, 37.499763, 27.760733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518581, 37.264713, 27.885466>,  <45.178749, 37.985077, 27.883705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518581, 37.264713, 27.885466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174915, 37.239384, 27.682360>,  <44.968716, 37.224186, 27.560495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174915, 37.239384, 27.682360>,  <45.518581, 37.264713, 27.885466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174915, 37.239384, 27.682360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419197, -0.656163, -0.627475,
		-0.293445, -0.751958, 0.590295,
		-0.859164, -0.063321, -0.507766,
		44.917168, 37.220387, 27.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483871, 36.554005, 27.768221>,  <45.518581, 37.264713, 27.885466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483871, 36.554005, 27.768221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229057, 36.721737, 27.509502>,  <45.076168, 36.822376, 27.354271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229057, 36.721737, 27.509502>,  <45.483871, 36.554005, 27.768221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229057, 36.721737, 27.509502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506626, -0.404633, -0.761316,
		-0.580961, -0.812669, 0.045320,
		-0.637036, 0.419335, -0.646795,
		45.037945, 36.847538, 27.315464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286030, 36.064579, 27.342058>,  <45.483871, 36.554005, 27.768221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286030, 36.064579, 27.342058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228062, 36.396187, 27.126011>,  <45.193279, 36.595150, 26.996384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228062, 36.396187, 27.126011>,  <45.286030, 36.064579, 27.342058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228062, 36.396187, 27.126011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482325, -0.417436, -0.770136,
		-0.863921, -0.372123, -0.339360,
		-0.144924, 0.829018, -0.540116,
		45.184586, 36.644894, 26.963976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063004, 35.837437, 26.691650>,  <45.286030, 36.064579, 27.342058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063004, 35.837437, 26.691650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139599, 36.212818, 26.576660>,  <45.185555, 36.438046, 26.507666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139599, 36.212818, 26.576660>,  <45.063004, 35.837437, 26.691650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139599, 36.212818, 26.576660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377376, -0.340779, -0.861079,
		-0.906046, 0.056400, -0.419404,
		0.191489, 0.938450, -0.287477,
		45.197044, 36.494354, 26.490417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839989, 35.933846, 26.001928>,  <45.063004, 35.837437, 26.691650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839989, 35.933846, 26.001928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115147, 36.218895, 26.057001>,  <45.280243, 36.389927, 26.090044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115147, 36.218895, 26.057001>,  <44.839989, 35.933846, 26.001928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115147, 36.218895, 26.057001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417118, -0.232914, -0.878501,
		-0.593975, 0.661750, -0.457471,
		0.687900, 0.712627, 0.137683,
		45.321518, 36.432682, 26.098307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798458, 36.339287, 25.424608>,  <44.839989, 35.933846, 26.001928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798458, 36.339287, 25.424608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166382, 36.383293, 25.575262>,  <45.387135, 36.409698, 25.665655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166382, 36.383293, 25.575262>,  <44.798458, 36.339287, 25.424608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166382, 36.383293, 25.575262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391901, -0.210453, -0.895613,
		-0.019269, 0.971394, -0.236691,
		0.919805, 0.110017, 0.376635,
		45.442322, 36.416298, 25.688253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026497, 36.704624, 24.891886>,  <44.798458, 36.339287, 25.424608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026497, 36.704624, 24.891886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339970, 36.553337, 25.088985>,  <45.528053, 36.462566, 25.207245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339970, 36.553337, 25.088985>,  <45.026497, 36.704624, 24.891886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339970, 36.553337, 25.088985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432459, -0.237235, -0.869884,
		0.445900, 0.894803, -0.022354,
		0.783679, -0.378214, 0.492749,
		45.575073, 36.439873, 25.236811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672798, 36.969604, 24.579323>,  <45.026497, 36.704624, 24.891886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672798, 36.969604, 24.579323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796127, 36.644848, 24.777620>,  <45.870125, 36.449993, 24.896599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796127, 36.644848, 24.777620>,  <45.672798, 36.969604, 24.579323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796127, 36.644848, 24.777620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548677, -0.273934, -0.789882,
		0.777102, 0.515544, 0.361007,
		0.308327, -0.811895, 0.495742,
		45.888626, 36.401279, 24.926344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426701, 37.035305, 24.489183>,  <45.672798, 36.969604, 24.579323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426701, 37.035305, 24.489183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310051, 36.662373, 24.574713>,  <46.240063, 36.438614, 24.626030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310051, 36.662373, 24.574713>,  <46.426701, 37.035305, 24.489183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310051, 36.662373, 24.574713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541666, -0.345208, -0.766439,
		0.788386, -0.107690, 0.605681,
		-0.291624, -0.932327, 0.213825,
		46.222565, 36.382675, 24.638861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.059753, 36.633026, 24.459351>,  <46.426701, 37.035305, 24.489183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.059753, 36.633026, 24.459351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741695, 36.392715, 24.426340>,  <46.550861, 36.248528, 24.406534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741695, 36.392715, 24.426340>,  <47.059753, 36.633026, 24.459351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741695, 36.392715, 24.426340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430023, -0.462656, -0.775261,
		0.427579, -0.651933, 0.626227,
		-0.795146, -0.600777, -0.082524,
		46.503151, 36.212482, 24.401583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.516159, 33.350449, 23.331203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734024, 33.673851, 23.420351>,  <38.864742, 33.867893, 23.473841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734024, 33.673851, 23.420351>,  <38.516159, 33.350449, 23.331203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734024, 33.673851, 23.420351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413056, 0.027331, 0.910296,
		0.729885, -0.587858, 0.348842,
		0.544658, 0.808502, 0.222870,
		38.897423, 33.916401, 23.487211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808990, 33.240593, 23.969986>,  <38.516159, 33.350449, 23.331203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808990, 33.240593, 23.969986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830570, 33.638470, 23.934923>,  <38.843517, 33.877193, 23.913885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830570, 33.638470, 23.934923>,  <38.808990, 33.240593, 23.969986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830570, 33.638470, 23.934923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360813, 0.101274, 0.927123,
		0.931076, -0.018394, 0.364361,
		0.053953, 0.994689, -0.087657,
		38.846756, 33.936874, 23.908627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227314, 33.424488, 24.647558>,  <38.808990, 33.240593, 23.969986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227314, 33.424488, 24.647558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042931, 33.750484, 24.507095>,  <38.932301, 33.946083, 24.422817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042931, 33.750484, 24.507095>,  <39.227314, 33.424488, 24.647558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042931, 33.750484, 24.507095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126333, 0.331410, 0.934991,
		0.878382, 0.475357, -0.049807,
		-0.460961, 0.814986, -0.351158,
		38.904644, 33.994980, 24.401749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303646, 33.970882, 25.179594>,  <39.227314, 33.424488, 24.647558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303646, 33.970882, 25.179594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008892, 34.107826, 24.946426>,  <38.832039, 34.189991, 24.806526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008892, 34.107826, 24.946426>,  <39.303646, 33.970882, 25.179594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008892, 34.107826, 24.946426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388951, 0.490554, 0.779791,
		0.552922, 0.801341, -0.228319,
		-0.736881, 0.342359, -0.582920,
		38.787827, 34.210533, 24.771551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245914, 34.699894, 25.226490>,  <39.303646, 33.970882, 25.179594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245914, 34.699894, 25.226490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886795, 34.559883, 25.119574>,  <38.671326, 34.475876, 25.055424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886795, 34.559883, 25.119574>,  <39.245914, 34.699894, 25.226490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886795, 34.559883, 25.119574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427465, 0.546474, 0.720167,
		-0.106010, 0.760820, -0.640246,
		-0.897795, -0.350027, -0.267292,
		38.617458, 34.454876, 25.039387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779652, 35.309990, 25.346069>,  <39.245914, 34.699894, 25.226490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779652, 35.309990, 25.346069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547695, 34.985035, 25.321585>,  <38.408520, 34.790062, 25.306894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547695, 34.985035, 25.321585>,  <38.779652, 35.309990, 25.346069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547695, 34.985035, 25.321585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340722, 0.173588, 0.924000,
		-0.740021, 0.556678, -0.377461,
		-0.579894, -0.812389, -0.061213,
		38.373726, 34.741318, 25.303221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121006, 35.529907, 25.459032>,  <38.779652, 35.309990, 25.346069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121006, 35.529907, 25.459032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110752, 35.144123, 25.564220>,  <38.104599, 34.912651, 25.627335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110752, 35.144123, 25.564220>,  <38.121006, 35.529907, 25.459032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110752, 35.144123, 25.564220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481832, 0.242408, 0.842066,
		-0.875888, -0.105119, -0.470924,
		-0.025639, -0.964463, 0.262972,
		38.103062, 34.854786, 25.643112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551815, 35.535870, 25.823189>,  <38.121006, 35.529907, 25.459032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551815, 35.535870, 25.823189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746696, 35.200859, 25.922129>,  <37.863625, 34.999851, 25.981493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746696, 35.200859, 25.922129>,  <37.551815, 35.535870, 25.823189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746696, 35.200859, 25.922129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330229, 0.085518, 0.940019,
		-0.808445, -0.539660, -0.234912,
		0.487201, -0.837528, 0.247348,
		37.892857, 34.949600, 25.996332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055962, 35.139385, 26.180479>,  <37.551815, 35.535870, 25.823189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055962, 35.139385, 26.180479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409451, 34.979496, 26.277847>,  <37.621544, 34.883564, 26.336269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409451, 34.979496, 26.277847>,  <37.055962, 35.139385, 26.180479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409451, 34.979496, 26.277847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270136, -0.010930, 0.962760,
		-0.382177, -0.916571, -0.117638,
		0.883724, -0.399723, 0.243422,
		37.674568, 34.859581, 26.350874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878090, 34.561989, 26.599676>,  <37.055962, 35.139385, 26.180479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878090, 34.561989, 26.599676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254314, 34.667683, 26.685013>,  <37.480049, 34.731098, 26.736216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254314, 34.667683, 26.685013>,  <36.878090, 34.561989, 26.599676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254314, 34.667683, 26.685013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234100, 0.049350, 0.970959,
		0.246036, -0.963194, 0.108275,
		0.940566, 0.264238, 0.213342,
		37.536484, 34.746952, 26.749016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155991, 33.993340, 27.027239>,  <36.878090, 34.561989, 26.599676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155991, 33.993340, 27.027239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392139, 34.307713, 27.100744>,  <37.533829, 34.496338, 27.144848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392139, 34.307713, 27.100744>,  <37.155991, 33.993340, 27.027239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392139, 34.307713, 27.100744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417445, 0.102460, 0.902907,
		0.690796, -0.609764, 0.388573,
		0.590373, 0.785933, 0.183764,
		37.569252, 34.543491, 27.155874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266373, 33.999443, 27.686256>,  <37.155991, 33.993340, 27.027239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266373, 33.999443, 27.686256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396381, 34.374287, 27.635365>,  <37.474388, 34.599194, 27.604830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396381, 34.374287, 27.635365>,  <37.266373, 33.999443, 27.686256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396381, 34.374287, 27.635365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437431, 0.268249, 0.858310,
		0.838460, -0.223316, 0.497107,
		0.325022, 0.937109, -0.127230,
		37.493889, 34.655418, 27.597195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583736, 34.173122, 28.305676>,  <37.266373, 33.999443, 27.686256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583736, 34.173122, 28.305676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489758, 34.512161, 28.115356>,  <37.433372, 34.715584, 28.001165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489758, 34.512161, 28.115356>,  <37.583736, 34.173122, 28.305676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489758, 34.512161, 28.115356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301455, 0.401824, 0.864675,
		0.924081, 0.346581, 0.161106,
		-0.234944, 0.847596, -0.475797,
		37.419273, 34.766441, 27.972618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021557, 34.757336, 28.616398>,  <37.583736, 34.173122, 28.305676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021557, 34.757336, 28.616398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681881, 34.900574, 28.461147>,  <37.478077, 34.986519, 28.367996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681881, 34.900574, 28.461147>,  <38.021557, 34.757336, 28.616398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681881, 34.900574, 28.461147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241340, 0.390562, 0.888378,
		0.469715, 0.848072, -0.245237,
		-0.849189, 0.358099, -0.388127,
		37.427124, 35.008003, 28.344709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766460, 35.197559, 28.744715>,  <38.021557, 34.757336, 28.616398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766460, 35.197559, 28.744715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989246, 34.914146, 28.918049>,  <39.122917, 34.744099, 29.022049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989246, 34.914146, 28.918049>,  <38.766460, 35.197559, 28.744715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989246, 34.914146, 28.918049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416455, -0.213168, -0.883813,
		0.718581, 0.672713, 0.176345,
		0.556961, -0.708531, 0.433333,
		39.156334, 34.701588, 29.048048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472122, 35.393368, 28.530079>,  <38.766460, 35.197559, 28.744715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472122, 35.393368, 28.530079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479229, 35.007179, 28.634039>,  <39.483494, 34.775467, 28.696415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479229, 35.007179, 28.634039>,  <39.472122, 35.393368, 28.530079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479229, 35.007179, 28.634039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530948, -0.211149, -0.820677,
		0.847218, 0.152578, 0.508863,
		0.017771, -0.965472, 0.259900,
		39.484562, 34.717537, 28.712009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210464, 35.178089, 28.475662>,  <39.472122, 35.393368, 28.530079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210464, 35.178089, 28.475662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982716, 34.849621, 28.460207>,  <39.846066, 34.652538, 28.450933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982716, 34.849621, 28.460207>,  <40.210464, 35.178089, 28.475662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982716, 34.849621, 28.460207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579293, -0.367426, -0.727611,
		0.583299, -0.436661, 0.684901,
		-0.569370, -0.821173, -0.038636,
		39.811905, 34.603268, 28.448616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656483, 34.649799, 28.522642>,  <40.210464, 35.178089, 28.475662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656483, 34.649799, 28.522642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335278, 34.458393, 28.380545>,  <40.142555, 34.343552, 28.295286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335278, 34.458393, 28.380545>,  <40.656483, 34.649799, 28.522642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335278, 34.458393, 28.380545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568112, -0.434525, -0.698883,
		0.180060, -0.763030, 0.620777,
		-0.803012, -0.478511, -0.355246,
		40.094376, 34.314838, 28.273972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880547, 33.900131, 28.441023>,  <40.656483, 34.649799, 28.522642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880547, 33.900131, 28.441023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.560055, 33.919186, 28.202440>,  <40.367760, 33.930618, 28.059290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.560055, 33.919186, 28.202440>,  <40.880547, 33.900131, 28.441023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560055, 33.919186, 28.202440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492009, -0.514847, -0.702040,
		-0.340527, -0.855958, 0.389073,
		-0.801230, 0.047637, -0.596458,
		40.319687, 33.933475, 28.023502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823868, 33.307747, 28.172611>,  <40.880547, 33.900131, 28.441023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823868, 33.307747, 28.172611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617435, 33.547695, 27.928051>,  <40.493576, 33.691666, 27.781315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617435, 33.547695, 27.928051>,  <40.823868, 33.307747, 28.172611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617435, 33.547695, 27.928051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448927, -0.418474, -0.789522,
		-0.729467, -0.681934, -0.053330,
		-0.516085, 0.599871, -0.611402,
		40.462608, 33.727657, 27.744631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717796, 32.897999, 27.632483>,  <40.823868, 33.307747, 28.172611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717796, 32.897999, 27.632483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.679123, 33.257824, 27.462095>,  <40.655918, 33.473717, 27.359863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.679123, 33.257824, 27.462095>,  <40.717796, 32.897999, 27.632483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679123, 33.257824, 27.462095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481621, -0.332248, -0.810958,
		-0.871030, -0.283559, -0.401124,
		-0.096682, 0.899558, -0.425966,
		40.650120, 33.527691, 27.334305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649136, 32.763798, 26.956034>,  <40.717796, 32.897999, 27.632483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649136, 32.763798, 26.956034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754116, 33.149742, 26.950956>,  <40.817104, 33.381310, 26.947910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754116, 33.149742, 26.950956>,  <40.649136, 32.763798, 26.956034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754116, 33.149742, 26.950956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521266, -0.152834, -0.839598,
		-0.812036, 0.213735, -0.543061,
		0.262449, 0.964862, -0.012694,
		40.832851, 33.439201, 26.947147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482536, 32.976913, 26.244545>,  <40.649136, 32.763798, 26.956034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482536, 32.976913, 26.244545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.736290, 33.247597, 26.394014>,  <40.888542, 33.410007, 26.483696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.736290, 33.247597, 26.394014>,  <40.482536, 32.976913, 26.244545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736290, 33.247597, 26.394014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481778, 0.031918, -0.875712,
		-0.604524, 0.735563, -0.305773,
		0.634381, 0.676704, 0.373674,
		40.926605, 33.450607, 26.506117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417053, 33.429325, 25.653112>,  <40.482536, 32.976913, 26.244545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417053, 33.429325, 25.653112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.742012, 33.487709, 25.878931>,  <40.936985, 33.522739, 26.014421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.742012, 33.487709, 25.878931>,  <40.417053, 33.429325, 25.653112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742012, 33.487709, 25.878931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577432, -0.066598, -0.813718,
		-0.081173, 0.987046, -0.138385,
		0.812393, 0.145960, 0.564546,
		40.985729, 33.531498, 26.048294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849834, 33.839668, 25.295033>,  <40.417053, 33.429325, 25.653112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849834, 33.839668, 25.295033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107788, 33.663658, 25.544991>,  <41.262562, 33.558052, 25.694965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107788, 33.663658, 25.544991>,  <40.849834, 33.839668, 25.295033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107788, 33.663658, 25.544991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572119, -0.264189, -0.776456,
		0.506754, 0.858242, 0.081377,
		0.644888, -0.440029, 0.624894,
		41.301254, 33.531651, 25.732458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618561, 34.144016, 25.043835>,  <40.849834, 33.839668, 25.295033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618561, 34.144016, 25.043835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678139, 33.822002, 25.273527>,  <41.713886, 33.628796, 25.411343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678139, 33.822002, 25.273527>,  <41.618561, 34.144016, 25.043835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678139, 33.822002, 25.273527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550497, -0.414894, -0.724442,
		0.821443, 0.424013, 0.381372,
		0.148944, -0.805032, 0.574229,
		41.722820, 33.580494, 25.445795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350616, 34.156361, 25.249477>,  <41.618561, 34.144016, 25.043835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350616, 34.156361, 25.249477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172092, 33.798771, 25.233402>,  <42.064976, 33.584217, 25.223757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172092, 33.798771, 25.233402>,  <42.350616, 34.156361, 25.249477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172092, 33.798771, 25.233402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605600, -0.268671, -0.749042,
		0.658827, -0.358645, 0.661302,
		-0.446313, -0.893974, -0.040187,
		42.038197, 33.530579, 25.221346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891586, 33.598663, 25.058636>,  <42.350616, 34.156361, 25.249477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891586, 33.598663, 25.058636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.538914, 33.458031, 24.932755>,  <42.327312, 33.373653, 24.857225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.538914, 33.458031, 24.932755>,  <42.891586, 33.598663, 25.058636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538914, 33.458031, 24.932755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371096, -0.104725, -0.922670,
		0.291433, -0.930283, 0.222803,
		-0.881677, -0.351578, -0.314704,
		42.274410, 33.352558, 24.838343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646206, 33.580269, 25.147875>,  <42.891586, 33.598663, 25.058636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646206, 33.580269, 25.147875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.040062, 33.607521, 25.083567>,  <44.276375, 33.623875, 25.044981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.040062, 33.607521, 25.083567>,  <43.646206, 33.580269, 25.147875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040062, 33.607521, 25.083567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142992, 0.213791, 0.966357,
		0.100210, -0.974501, 0.200765,
		0.984638, 0.068131, -0.160770,
		44.335453, 33.627960, 25.035336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933510, 33.192360, 25.705097>,  <43.646206, 33.580269, 25.147875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933510, 33.192360, 25.705097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.252270, 33.399796, 25.581150>,  <44.443523, 33.524258, 25.506781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.252270, 33.399796, 25.581150>,  <43.933510, 33.192360, 25.705097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252270, 33.399796, 25.581150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156553, 0.318131, 0.935031,
		0.583481, -0.793633, 0.172329,
		0.796895, 0.518594, -0.309869,
		44.491337, 33.555374, 25.488190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438725, 33.018410, 26.184151>,  <43.933510, 33.192360, 25.705097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438725, 33.018410, 26.184151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.498634, 33.390800, 26.050970>,  <44.534580, 33.614235, 25.971062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.498634, 33.390800, 26.050970>,  <44.438725, 33.018410, 26.184151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498634, 33.390800, 26.050970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000862, 0.336873, 0.941550,
		0.988720, -0.140733, 0.051258,
		0.149775, 0.930973, -0.332952,
		44.543568, 33.670094, 25.951084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922134, 33.289913, 26.664053>,  <44.438725, 33.018410, 26.184151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922134, 33.289913, 26.664053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.775810, 33.618126, 26.488361>,  <44.688015, 33.815052, 26.382946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.775810, 33.618126, 26.488361>,  <44.922134, 33.289913, 26.664053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775810, 33.618126, 26.488361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144123, 0.416301, 0.897731,
		0.919464, 0.391698, -0.034029,
		-0.365806, 0.820528, -0.439227,
		44.666069, 33.864285, 26.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144863, 33.773361, 27.141443>,  <44.922134, 33.289913, 26.664053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144863, 33.773361, 27.141443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.855133, 33.949913, 26.929579>,  <44.681293, 34.055843, 26.802460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.855133, 33.949913, 26.929579>,  <45.144863, 33.773361, 27.141443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855133, 33.949913, 26.929579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383850, 0.379995, 0.841584,
		0.572726, 0.812889, -0.105816,
		-0.724324, 0.441379, -0.529660,
		44.637836, 34.082325, 26.770681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189476, 34.450516, 27.442846>,  <45.144863, 33.773361, 27.141443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189476, 34.450516, 27.442846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.838566, 34.391685, 27.260084>,  <44.628021, 34.356388, 27.150427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.838566, 34.391685, 27.260084>,  <45.189476, 34.450516, 27.442846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838566, 34.391685, 27.260084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471918, 0.438155, 0.765058,
		0.087678, 0.886787, -0.453786,
		-0.877272, -0.147071, -0.456907,
		44.575386, 34.347565, 27.123013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823406, 35.036522, 27.509174>,  <45.189476, 34.450516, 27.442846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823406, 35.036522, 27.509174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.544216, 34.760578, 27.432312>,  <44.376701, 34.595013, 27.386194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.544216, 34.760578, 27.432312>,  <44.823406, 35.036522, 27.509174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544216, 34.760578, 27.432312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573649, 0.377991, 0.726671,
		-0.428666, 0.617430, -0.659565,
		-0.697977, -0.689858, -0.192156,
		44.334824, 34.553619, 27.374664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145454, 35.455799, 27.432388>,  <44.823406, 35.036522, 27.509174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145454, 35.455799, 27.432388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.137936, 35.083847, 27.579340>,  <44.133427, 34.860676, 27.667511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.137936, 35.083847, 27.579340>,  <44.145454, 35.455799, 27.432388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137936, 35.083847, 27.579340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565180, 0.312986, 0.763290,
		-0.824754, -0.193292, -0.531432,
		-0.018793, -0.929881, 0.367381,
		44.132298, 34.804882, 27.689554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488258, 35.471439, 27.783976>,  <44.145454, 35.455799, 27.432388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488258, 35.471439, 27.783976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.652477, 35.132492, 27.918692>,  <43.751007, 34.929123, 27.999521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.652477, 35.132492, 27.918692>,  <43.488258, 35.471439, 27.783976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652477, 35.132492, 27.918692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495067, 0.103036, 0.862724,
		-0.765743, -0.520920, -0.377200,
		0.410545, -0.847364, 0.336790,
		43.775642, 34.878284, 28.019728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973267, 35.199821, 28.056210>,  <43.488258, 35.471439, 27.783976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973267, 35.199821, 28.056210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.271626, 34.986488, 28.215807>,  <43.450642, 34.858486, 28.311565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.271626, 34.986488, 28.215807>,  <42.973267, 35.199821, 28.056210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271626, 34.986488, 28.215807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456936, 0.026111, 0.889116,
		-0.484616, -0.845500, -0.224224,
		0.745893, -0.533336, 0.398994,
		43.495392, 34.826488, 28.335505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573906, 34.754139, 28.375980>,  <42.973267, 35.199821, 28.056210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573906, 34.754139, 28.375980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.943657, 34.756325, 28.528559>,  <43.165508, 34.757637, 28.620106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.943657, 34.756325, 28.528559>,  <42.573906, 34.754139, 28.375980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943657, 34.756325, 28.528559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380313, -0.065093, 0.922564,
		0.029877, -0.997864, -0.058090,
		0.924375, 0.005471, 0.381446,
		43.220970, 34.757965, 28.642992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542240, 34.218967, 28.870808>,  <42.573906, 34.754139, 28.375980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542240, 34.218967, 28.870808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.841785, 34.467144, 28.963972>,  <43.021515, 34.616051, 29.019871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.841785, 34.467144, 28.963972>,  <42.542240, 34.218967, 28.870808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841785, 34.467144, 28.963972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400836, 0.144168, 0.904735,
		0.527760, -0.770885, 0.356659,
		0.748866, 0.620445, 0.232913,
		43.066444, 34.653278, 29.033846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755020, 33.899727, 29.485619>,  <42.542240, 34.218967, 28.870808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755020, 33.899727, 29.485619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.842899, 34.289951, 29.483976>,  <42.895626, 34.524086, 29.482990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.842899, 34.289951, 29.483976>,  <42.755020, 33.899727, 29.485619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842899, 34.289951, 29.483976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435431, 0.101825, 0.894445,
		0.873003, -0.194717, 0.447160,
		0.219696, 0.975560, -0.004107,
		42.908810, 34.582619, 29.482744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122772, 34.008820, 30.151480>,  <42.755020, 33.899727, 29.485619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122772, 34.008820, 30.151480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.010208, 34.369598, 30.020447>,  <42.942669, 34.586063, 29.941828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.010208, 34.369598, 30.020447>,  <43.122772, 34.008820, 30.151480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010208, 34.369598, 30.020447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307557, 0.238592, 0.921131,
		0.908966, 0.359962, 0.210258,
		-0.281406, 0.901943, -0.327580,
		42.925785, 34.640182, 29.922173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<47.355331, 35.986713, 24.191481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.965420, 35.945545, 24.112276>,  <46.731472, 35.920845, 24.064753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.965420, 35.945545, 24.112276>,  <47.355331, 35.986713, 24.191481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.965420, 35.945545, 24.112276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223087, -0.426545, -0.876523,
		0.005748, -0.898592, 0.438747,
		-0.974782, -0.102917, -0.198013,
		46.672985, 35.914669, 24.052872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335472, 35.283630, 24.140957>,  <47.355331, 35.986713, 24.191481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335472, 35.283630, 24.140957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.021114, 35.435062, 23.945385>,  <46.832500, 35.525921, 23.828041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.021114, 35.435062, 23.945385>,  <47.335472, 35.283630, 24.140957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021114, 35.435062, 23.945385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182439, -0.613531, -0.768307,
		-0.590829, -0.693011, 0.413108,
		-0.785899, 0.378571, -0.488924,
		46.785347, 35.548637, 23.798706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907360, 34.714718, 23.908304>,  <47.335472, 35.283630, 24.140957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907360, 34.714718, 23.908304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.817738, 35.033916, 23.684521>,  <46.763966, 35.225437, 23.550251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.817738, 35.033916, 23.684521>,  <46.907360, 34.714718, 23.908304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817738, 35.033916, 23.684521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170065, -0.533233, -0.828698,
		-0.959624, -0.280818, -0.016238,
		-0.224054, 0.798000, -0.559461,
		46.750523, 35.273315, 23.516682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397900, 34.598896, 23.428289>,  <46.907360, 34.714718, 23.908304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397900, 34.598896, 23.428289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.565651, 34.913761, 23.247404>,  <46.666302, 35.102680, 23.138872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.565651, 34.913761, 23.247404>,  <46.397900, 34.598896, 23.428289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565651, 34.913761, 23.247404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069806, -0.468699, -0.880595,
		-0.905126, 0.400865, -0.141612,
		0.419374, 0.787164, -0.452215,
		46.691463, 35.149910, 23.111740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126850, 34.659801, 22.800442>,  <46.397900, 34.598896, 23.428289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126850, 34.659801, 22.800442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.426762, 34.913689, 22.725651>,  <46.606709, 35.066021, 22.680777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.426762, 34.913689, 22.725651>,  <46.126850, 34.659801, 22.800442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426762, 34.913689, 22.725651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016940, -0.300898, -0.953506,
		-0.661472, 0.711750, -0.236358,
		0.749778, 0.634722, -0.186979,
		46.651695, 35.104107, 22.669558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937843, 35.004906, 22.139072>,  <46.126850, 34.659801, 22.800442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937843, 35.004906, 22.139072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.332890, 35.042587, 22.189260>,  <46.569916, 35.065197, 22.219374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.332890, 35.042587, 22.189260>,  <45.937843, 35.004906, 22.139072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332890, 35.042587, 22.189260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135507, -0.109015, -0.984761,
		-0.079089, 0.989566, -0.120430,
		0.987615, 0.094203, 0.125472,
		46.629173, 35.070847, 22.226902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.122921, 35.365284, 21.597691>,  <45.937843, 35.004906, 22.139072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.122921, 35.365284, 21.597691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.457184, 35.182816, 21.720058>,  <46.657742, 35.073334, 21.793478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.457184, 35.182816, 21.720058>,  <46.122921, 35.365284, 21.597691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457184, 35.182816, 21.720058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243643, -0.191305, -0.950811,
		0.492260, 0.869084, -0.048721,
		0.835655, -0.456175, 0.305918,
		46.707882, 35.045963, 21.811834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669025, 35.730507, 21.201435>,  <46.122921, 35.365284, 21.597691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669025, 35.730507, 21.201435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.776268, 35.361965, 21.314030>,  <46.840614, 35.140842, 21.381586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.776268, 35.361965, 21.314030>,  <46.669025, 35.730507, 21.201435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776268, 35.361965, 21.314030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075193, -0.271278, -0.959559,
		0.960452, 0.278425, -0.003451,
		0.268102, -0.921351, 0.281485,
		46.856697, 35.085560, 21.398476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196224, 35.533443, 20.721453>,  <46.669025, 35.730507, 21.201435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196224, 35.533443, 20.721453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.063911, 35.187183, 20.871780>,  <46.984524, 34.979427, 20.961977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.063911, 35.187183, 20.871780>,  <47.196224, 35.533443, 20.721453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063911, 35.187183, 20.871780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133838, -0.437243, -0.889329,
		0.934169, -0.243874, 0.260488,
		-0.330781, -0.865646, 0.375820,
		46.964676, 34.927490, 20.984526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638645, 34.998158, 20.481829>,  <47.196224, 35.533443, 20.721453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638645, 34.998158, 20.481829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.306316, 34.796066, 20.575186>,  <47.106918, 34.674812, 20.631201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.306316, 34.796066, 20.575186>,  <47.638645, 34.998158, 20.481829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.306316, 34.796066, 20.575186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009564, -0.406344, -0.913670,
		0.556453, -0.761331, 0.332769,
		-0.830824, -0.505232, 0.233393,
		47.057068, 34.644497, 20.645203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.769234, 34.216995, 20.250740>,  <47.638645, 34.998158, 20.481829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.769234, 34.216995, 20.250740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.372890, 34.249817, 20.293587>,  <47.135086, 34.269512, 20.319294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.372890, 34.249817, 20.293587>,  <47.769234, 34.216995, 20.250740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.372890, 34.249817, 20.293587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133947, -0.502313, -0.854248,
		-0.016293, -0.860783, 0.508711,
		-0.990855, 0.082059, 0.107115,
		47.075634, 34.274433, 20.325722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466835, 33.498661, 20.164604>,  <47.769234, 34.216995, 20.250740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466835, 33.498661, 20.164604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.177151, 33.769993, 20.114988>,  <47.003342, 33.932793, 20.085218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.177151, 33.769993, 20.114988>,  <47.466835, 33.498661, 20.164604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177151, 33.769993, 20.114988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250626, -0.426496, -0.869073,
		-0.642424, -0.598302, 0.478880,
		-0.724208, 0.678333, -0.124041,
		46.959888, 33.973492, 20.077776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920536, 33.161552, 19.783339>,  <47.466835, 33.498661, 20.164604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920536, 33.161552, 19.783339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.774220, 33.533718, 19.774103>,  <46.686428, 33.757015, 19.768562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.774220, 33.533718, 19.774103>,  <46.920536, 33.161552, 19.783339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774220, 33.533718, 19.774103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358791, -0.163863, -0.918922,
		-0.858758, -0.327849, 0.393763,
		-0.365791, 0.930410, -0.023090,
		46.664482, 33.812840, 19.767176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208950, 33.268253, 19.610199>,  <46.920536, 33.161552, 19.783339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208950, 33.268253, 19.610199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.403088, 33.588955, 19.470690>,  <46.519569, 33.781376, 19.386984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.403088, 33.588955, 19.470690>,  <46.208950, 33.268253, 19.610199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403088, 33.588955, 19.470690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360306, -0.180052, -0.915293,
		-0.796633, 0.569892, 0.201489,
		0.485340, 0.801751, -0.348771,
		46.548691, 33.829479, 19.366058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935585, 32.658493, 20.043461>,  <46.208950, 33.268253, 19.610199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935585, 32.658493, 20.043461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.685162, 32.357304, 19.962397>,  <45.534908, 32.176590, 19.913759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.685162, 32.357304, 19.962397>,  <45.935585, 32.658493, 20.043461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685162, 32.357304, 19.962397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512941, 0.201927, 0.834336,
		-0.587314, 0.626299, -0.512652,
		-0.626062, -0.752978, -0.202659,
		45.497341, 32.131409, 19.901598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308254, 32.920650, 20.021662>,  <45.935585, 32.658493, 20.043461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308254, 32.920650, 20.021662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264881, 32.530605, 20.099026>,  <45.238857, 32.296577, 20.145445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264881, 32.530605, 20.099026>,  <45.308254, 32.920650, 20.021662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264881, 32.530605, 20.099026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472602, 0.221727, 0.852927,
		-0.874580, 0.001076, -0.484879,
		-0.108429, -0.975108, 0.193409,
		45.232353, 32.238071, 20.157049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701546, 32.894707, 20.283041>,  <45.308254, 32.920650, 20.021662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701546, 32.894707, 20.283041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.869621, 32.547405, 20.388544>,  <44.970467, 32.339024, 20.451847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.869621, 32.547405, 20.388544>,  <44.701546, 32.894707, 20.283041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869621, 32.547405, 20.388544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310401, 0.135604, 0.940884,
		-0.852695, -0.477224, -0.212528,
		0.420193, -0.868256, 0.263760,
		44.995678, 32.286930, 20.467672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277672, 32.663467, 20.834906>,  <44.701546, 32.894707, 20.283041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277672, 32.663467, 20.834906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.576092, 32.405815, 20.902437>,  <44.755142, 32.251225, 20.942957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.576092, 32.405815, 20.902437>,  <44.277672, 32.663467, 20.834906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576092, 32.405815, 20.902437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257816, -0.045650, 0.965115,
		-0.613954, -0.763551, -0.200124,
		0.746050, -0.644132, 0.168829,
		44.799908, 32.212574, 20.953085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018600, 32.145023, 21.232052>,  <44.277672, 32.663467, 20.834906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018600, 32.145023, 21.232052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411819, 32.185623, 21.293119>,  <44.647751, 32.209984, 21.329760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411819, 32.185623, 21.293119>,  <44.018600, 32.145023, 21.232052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411819, 32.185623, 21.293119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157849, 0.045085, 0.986434,
		0.093245, -0.993813, 0.060344,
		0.983051, 0.101505, 0.152668,
		44.706734, 32.216072, 21.338921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076427, 31.936354, 21.911697>,  <44.018600, 32.145023, 21.232052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076427, 31.936354, 21.911697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.454411, 32.065350, 21.889585>,  <44.681202, 32.142746, 21.876318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.454411, 32.065350, 21.889585>,  <44.076427, 31.936354, 21.911697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454411, 32.065350, 21.889585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015056, 0.211629, 0.977234,
		0.326850, -0.922611, 0.204836,
		0.944956, 0.322493, -0.055280,
		44.737896, 32.162098, 21.873001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532066, 31.633921, 22.555740>,  <44.076427, 31.936354, 21.911697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532066, 31.633921, 22.555740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.682804, 31.971977, 22.404097>,  <44.773247, 32.174812, 22.313110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.682804, 31.971977, 22.404097>,  <44.532066, 31.633921, 22.555740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682804, 31.971977, 22.404097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084650, 0.376149, 0.922684,
		0.922399, -0.379803, 0.070210,
		0.376848, 0.845140, -0.379110,
		44.795860, 32.225521, 22.290363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075367, 31.848400, 22.967964>,  <44.532066, 31.633921, 22.555740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075367, 31.848400, 22.967964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.963684, 32.179325, 22.772987>,  <44.896675, 32.377880, 22.656002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.963684, 32.179325, 22.772987>,  <45.075367, 31.848400, 22.967964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963684, 32.179325, 22.772987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092613, 0.528465, 0.843888,
		0.955753, 0.190479, -0.224172,
		-0.279210, 0.827310, -0.487441,
		44.879921, 32.427517, 22.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580475, 32.357353, 23.230179>,  <45.075367, 31.848400, 22.967964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580475, 32.357353, 23.230179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.252064, 32.526733, 23.077021>,  <45.055019, 32.628361, 22.985126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.252064, 32.526733, 23.077021>,  <45.580475, 32.357353, 23.230179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252064, 32.526733, 23.077021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059647, 0.603400, 0.795205,
		0.567767, 0.675722, -0.470149,
		-0.821025, 0.423448, -0.382896,
		45.005756, 32.653767, 22.962152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663162, 33.029480, 23.279982>,  <45.580475, 32.357353, 23.230179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663162, 33.029480, 23.279982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.266430, 32.983078, 23.258759>,  <45.028389, 32.955238, 23.246025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.266430, 32.983078, 23.258759>,  <45.663162, 33.029480, 23.279982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266430, 32.983078, 23.258759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107234, 0.532978, 0.839306,
		-0.069085, 0.838139, -0.541064,
		-0.991831, -0.116004, -0.053056,
		44.968880, 32.948277, 23.242842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471489, 33.568657, 23.498514>,  <45.663162, 33.029480, 23.279982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471489, 33.568657, 23.498514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123302, 33.375946, 23.538885>,  <44.914391, 33.260319, 23.563108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123302, 33.375946, 23.538885>,  <45.471489, 33.568657, 23.498514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123302, 33.375946, 23.538885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079150, 0.339371, 0.937316,
		-0.485828, 0.807911, -0.333543,
		-0.870463, -0.481774, 0.100930,
		44.862164, 33.231415, 23.569164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977581, 34.050846, 23.642994>,  <45.471489, 33.568657, 23.498514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977581, 34.050846, 23.642994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.830311, 33.702545, 23.773375>,  <44.741951, 33.493565, 23.851603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.830311, 33.702545, 23.773375>,  <44.977581, 34.050846, 23.642994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830311, 33.702545, 23.773375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264439, 0.434165, 0.861146,
		-0.891359, 0.230855, -0.390108,
		-0.368171, -0.870751, 0.325950,
		44.719860, 33.441319, 23.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261082, 34.219891, 23.955359>,  <44.977581, 34.050846, 23.642994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261082, 34.219891, 23.955359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.378334, 33.873409, 24.117228>,  <44.448685, 33.665520, 24.214350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.378334, 33.873409, 24.117228>,  <44.261082, 34.219891, 23.955359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378334, 33.873409, 24.117228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138054, 0.380482, 0.914426,
		-0.946052, -0.323917, -0.008051,
		0.293134, -0.866205, 0.404674,
		44.466274, 33.613548, 24.238630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837608, 34.019238, 24.490309>,  <44.261082, 34.219891, 23.955359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837608, 34.019238, 24.490309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.154510, 33.796642, 24.590437>,  <44.344650, 33.663086, 24.650513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.154510, 33.796642, 24.590437>,  <43.837608, 34.019238, 24.490309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154510, 33.796642, 24.590437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095784, 0.291726, 0.951694,
		-0.602629, -0.777959, 0.177818,
		0.792253, -0.556486, 0.250318,
		44.392185, 33.629696, 24.665533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159252, 33.722996, 24.398407>,  <43.837608, 34.019238, 24.490309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159252, 33.722996, 24.398407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786331, 33.578434, 24.392834>,  <42.562580, 33.491695, 24.389490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786331, 33.578434, 24.392834>,  <43.159252, 33.722996, 24.398407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786331, 33.578434, 24.392834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125119, -0.286137, -0.949985,
		0.339345, -0.887418, 0.311985,
		-0.932304, -0.361408, -0.013933,
		42.506641, 33.470013, 24.388653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280144, 32.972664, 24.182898>,  <43.159252, 33.722996, 24.398407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280144, 32.972664, 24.182898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.900131, 33.077240, 24.114677>,  <42.672123, 33.139984, 24.073746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.900131, 33.077240, 24.114677>,  <43.280144, 32.972664, 24.182898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900131, 33.077240, 24.114677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080464, -0.322805, -0.943039,
		-0.301593, -0.909643, 0.285640,
		-0.950035, 0.261430, -0.170550,
		42.615120, 33.155670, 24.063511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014309, 32.411812, 23.687935>,  <43.280144, 32.972664, 24.182898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014309, 32.411812, 23.687935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.749676, 32.708042, 23.640862>,  <42.590897, 32.885780, 23.612617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.749676, 32.708042, 23.640862>,  <43.014309, 32.411812, 23.687935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749676, 32.708042, 23.640862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041125, -0.120870, -0.991816,
		-0.748740, -0.661012, 0.049509,
		-0.661587, 0.740576, -0.117684,
		42.551201, 32.930214, 23.605556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497295, 32.195724, 23.213926>,  <43.014309, 32.411812, 23.687935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497295, 32.195724, 23.213926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.391361, 32.579506, 23.175314>,  <42.327801, 32.809772, 23.152147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.391361, 32.579506, 23.175314>,  <42.497295, 32.195724, 23.213926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391361, 32.579506, 23.175314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088605, -0.123894, -0.988331,
		-0.960214, -0.253193, 0.117824,
		-0.264836, 0.959449, -0.096530,
		42.311909, 32.867340, 23.146355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823193, 32.164444, 22.843487>,  <42.497295, 32.195724, 23.213926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823193, 32.164444, 22.843487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.999844, 32.518623, 22.785606>,  <42.105835, 32.731133, 22.750879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.999844, 32.518623, 22.785606>,  <41.823193, 32.164444, 22.843487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999844, 32.518623, 22.785606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102252, -0.110555, -0.988596,
		-0.891352, 0.451388, 0.041715,
		0.441628, 0.885453, -0.144699,
		42.132332, 32.784260, 22.742197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379356, 32.417503, 22.287767>,  <41.823193, 32.164444, 22.843487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379356, 32.417503, 22.287767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.714985, 32.635094, 22.290588>,  <41.916363, 32.765648, 22.292280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.714985, 32.635094, 22.290588>,  <41.379356, 32.417503, 22.287767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714985, 32.635094, 22.290588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100663, -0.142505, -0.984662,
		-0.534625, 0.826913, -0.174330,
		0.839073, 0.543974, 0.007053,
		41.966705, 32.798286, 22.292704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340599, 32.838322, 21.693258>,  <41.379356, 32.417503, 22.287767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340599, 32.838322, 21.693258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.729118, 32.848721, 21.787840>,  <41.962231, 32.854961, 21.844589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.729118, 32.848721, 21.787840>,  <41.340599, 32.838322, 21.693258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729118, 32.848721, 21.787840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237003, -0.020426, -0.971294,
		-0.020426, 0.999453, -0.026002,
		0.971294, 0.026002, 0.236456,
		42.020508, 32.856522, 21.858776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215958, 33.542664, 21.488867>,  <41.340599, 32.838322, 21.693258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215958, 33.542664, 21.488867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.884964, 33.688541, 21.318096>,  <40.686367, 33.776066, 21.215633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.884964, 33.688541, 21.318096>,  <41.215958, 33.542664, 21.488867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884964, 33.688541, 21.318096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449605, 0.025086, 0.892875,
		0.336334, 0.930790, 0.143209,
		-0.827487, 0.364692, -0.426925,
		40.636719, 33.797951, 21.190020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006947, 34.084274, 21.942478>,  <41.215958, 33.542664, 21.488867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006947, 34.084274, 21.942478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.665680, 34.038925, 21.738813>,  <40.460918, 34.011715, 21.616615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.665680, 34.038925, 21.738813>,  <41.006947, 34.084274, 21.942478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665680, 34.038925, 21.738813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521388, 0.215146, 0.825752,
		0.015929, 0.969979, -0.242666,
		-0.853171, -0.113370, -0.509162,
		40.409729, 34.004913, 21.586065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593719, 34.727299, 22.104256>,  <41.006947, 34.084274, 21.942478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593719, 34.727299, 22.104256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336502, 34.453842, 21.966198>,  <40.182171, 34.289768, 21.883364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336502, 34.453842, 21.966198>,  <40.593719, 34.727299, 22.104256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336502, 34.453842, 21.966198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630464, 0.216727, 0.745348,
		-0.434753, 0.696891, -0.570379,
		-0.643044, -0.683646, -0.345143,
		40.143589, 34.248749, 21.862656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888447, 35.073372, 21.960756>,  <40.593719, 34.727299, 22.104256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888447, 35.073372, 21.960756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880348, 34.684727, 22.055046>,  <39.875488, 34.451542, 22.111620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880348, 34.684727, 22.055046>,  <39.888447, 35.073372, 21.960756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880348, 34.684727, 22.055046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616066, 0.197819, 0.762450,
		-0.787434, -0.129783, -0.602581,
		-0.020249, -0.971609, 0.235724,
		39.874275, 34.393246, 22.125763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218437, 34.929493, 22.140234>,  <39.888447, 35.073372, 21.960756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218437, 34.929493, 22.140234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422596, 34.626869, 22.303753>,  <39.545090, 34.445297, 22.401865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422596, 34.626869, 22.303753>,  <39.218437, 34.929493, 22.140234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422596, 34.626869, 22.303753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673952, -0.056653, 0.736600,
		-0.534121, -0.651468, -0.538799,
		0.510396, -0.756558, 0.408798,
		39.575714, 34.399902, 22.426392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572395, 34.576908, 22.297468>,  <39.218437, 34.929493, 22.140234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572395, 34.576908, 22.297468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891586, 34.426250, 22.485670>,  <39.083099, 34.335857, 22.598591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891586, 34.426250, 22.485670>,  <38.572395, 34.576908, 22.297468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891586, 34.426250, 22.485670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465834, 0.109896, 0.878022,
		-0.382409, -0.919816, -0.087760,
		0.797974, -0.376645, 0.470507,
		39.130978, 34.313255, 22.626822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267670, 34.045708, 22.744337>,  <38.572395, 34.576908, 22.297468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267670, 34.045708, 22.744337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624649, 34.126228, 22.905836>,  <38.838837, 34.174541, 23.002735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624649, 34.126228, 22.905836>,  <38.267670, 34.045708, 22.744337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624649, 34.126228, 22.905836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383110, -0.134459, 0.913864,
		0.238249, -0.970257, -0.042877,
		0.892448, 0.201300, 0.403749,
		38.892384, 34.186619, 23.026960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.968941, 34.856247, 18.254650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288689, 34.755081, 18.472654>,  <44.480537, 34.694382, 18.603456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288689, 34.755081, 18.472654>,  <43.968941, 34.856247, 18.254650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288689, 34.755081, 18.472654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495703, 0.234987, 0.836098,
		-0.339531, -0.938518, 0.062472,
		0.799373, -0.252913, 0.545011,
		44.528500, 34.679207, 18.636158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615868, 34.582436, 18.908092>,  <43.968941, 34.856247, 18.254650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615868, 34.582436, 18.908092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.992195, 34.670799, 19.010906>,  <44.217991, 34.723816, 19.072594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.992195, 34.670799, 19.010906>,  <43.615868, 34.582436, 18.908092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992195, 34.670799, 19.010906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273648, 0.047685, 0.960647,
		0.199959, -0.974128, 0.105314,
		0.940815, 0.220909, 0.257033,
		44.274441, 34.737072, 19.088017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758793, 34.196854, 19.477236>,  <43.615868, 34.582436, 18.908092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758793, 34.196854, 19.477236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.007027, 34.510509, 19.478344>,  <44.155968, 34.698704, 19.479010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.007027, 34.510509, 19.478344>,  <43.758793, 34.196854, 19.477236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007027, 34.510509, 19.478344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204416, 0.158367, 0.965989,
		0.757028, -0.600042, 0.258570,
		0.620583, 0.784136, 0.002770,
		44.193203, 34.745750, 19.479176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112213, 34.134644, 20.138569>,  <43.758793, 34.196854, 19.477236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112213, 34.134644, 20.138569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.149563, 34.521587, 20.044333>,  <44.171974, 34.753754, 19.987791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.149563, 34.521587, 20.044333>,  <44.112213, 34.134644, 20.138569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149563, 34.521587, 20.044333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350465, 0.253415, 0.901640,
		0.931909, -0.001624, 0.362688,
		0.093375, 0.967356, -0.235591,
		44.177574, 34.811794, 19.973656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431480, 34.276585, 20.745457>,  <44.112213, 34.134644, 20.138569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431480, 34.276585, 20.745457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288815, 34.615807, 20.588688>,  <44.203217, 34.819340, 20.494627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288815, 34.615807, 20.588688>,  <44.431480, 34.276585, 20.745457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288815, 34.615807, 20.588688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196987, 0.341812, 0.918891,
		0.913229, 0.404939, 0.045143,
		-0.356664, 0.848051, -0.391920,
		44.181816, 34.870220, 20.471111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685963, 34.879066, 21.143742>,  <44.431480, 34.276585, 20.745457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685963, 34.879066, 21.143742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.361164, 35.009914, 20.950394>,  <44.166283, 35.088425, 20.834385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.361164, 35.009914, 20.950394>,  <44.685963, 34.879066, 21.143742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361164, 35.009914, 20.950394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306370, 0.466015, 0.830040,
		0.496781, 0.822084, -0.278184,
		-0.812001, 0.327121, -0.483370,
		44.117565, 35.108051, 20.805384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669914, 35.612133, 21.293478>,  <44.685963, 34.879066, 21.143742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669914, 35.612133, 21.293478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.303352, 35.496166, 21.183102>,  <44.083416, 35.426586, 21.116877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.303352, 35.496166, 21.183102>,  <44.669914, 35.612133, 21.293478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303352, 35.496166, 21.183102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388041, 0.474621, 0.790037,
		-0.098081, 0.831072, -0.547447,
		-0.916408, -0.289920, -0.275939,
		44.028431, 35.409191, 21.100321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295418, 36.133766, 21.444784>,  <44.669914, 35.612133, 21.293478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295418, 36.133766, 21.444784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.021408, 35.845001, 21.405617>,  <43.857002, 35.671741, 21.382116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.021408, 35.845001, 21.405617>,  <44.295418, 36.133766, 21.444784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021408, 35.845001, 21.405617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496082, 0.363794, 0.788389,
		-0.533524, 0.588640, -0.607334,
		-0.685022, -0.721912, -0.097920,
		43.815903, 35.628429, 21.376240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641869, 36.416325, 21.235430>,  <44.295418, 36.133766, 21.444784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641869, 36.416325, 21.235430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.548874, 36.072536, 21.417534>,  <43.493076, 35.866264, 21.526796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.548874, 36.072536, 21.417534>,  <43.641869, 36.416325, 21.235430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548874, 36.072536, 21.417534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598935, 0.495319, 0.629234,
		-0.766306, -0.126380, -0.629923,
		-0.232490, -0.859469, 0.455259,
		43.479126, 35.814697, 21.554111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900917, 36.498501, 21.464909>,  <43.641869, 36.416325, 21.235430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900917, 36.498501, 21.464909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.054794, 36.209148, 21.694252>,  <43.147121, 36.035538, 21.831858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.054794, 36.209148, 21.694252>,  <42.900917, 36.498501, 21.464909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054794, 36.209148, 21.694252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513528, 0.348429, 0.784147,
		-0.767009, -0.596088, -0.237438,
		0.384690, -0.723378, 0.573356,
		43.170200, 35.992134, 21.866259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375572, 36.368378, 21.984390>,  <42.900917, 36.498501, 21.464909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375572, 36.368378, 21.984390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.708862, 36.201160, 22.129156>,  <42.908836, 36.100830, 22.216015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.708862, 36.201160, 22.129156>,  <42.375572, 36.368378, 21.984390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708862, 36.201160, 22.129156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258086, 0.284825, 0.923183,
		-0.489015, -0.862619, 0.129431,
		0.833221, -0.418045, 0.361913,
		42.958828, 36.075748, 22.237730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110313, 36.025887, 22.532621>,  <42.375572, 36.368378, 21.984390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110313, 36.025887, 22.532621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.505726, 36.051750, 22.587223>,  <42.742973, 36.067268, 22.619984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.505726, 36.051750, 22.587223>,  <42.110313, 36.025887, 22.532621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505726, 36.051750, 22.587223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149573, 0.293318, 0.944242,
		0.021011, -0.953826, 0.299623,
		0.988527, 0.064655, 0.136504,
		42.802284, 36.071148, 22.628174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587933, 35.698067, 22.359528>,  <42.110313, 36.025887, 22.532621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587933, 35.698067, 22.359528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.293392, 35.961311, 22.296686>,  <41.116669, 36.119259, 22.258982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.293392, 35.961311, 22.296686>,  <41.587933, 35.698067, 22.359528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293392, 35.961311, 22.296686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131550, -0.088510, -0.987350,
		-0.663691, -0.747701, -0.021400,
		-0.736349, 0.658111, -0.157103,
		41.072487, 36.158745, 22.249556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168381, 35.377628, 21.845013>,  <41.587933, 35.698067, 22.359528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168381, 35.377628, 21.845013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.101219, 35.771702, 21.858978>,  <41.060921, 36.008144, 21.867357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.101219, 35.771702, 21.858978>,  <41.168381, 35.377628, 21.845013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101219, 35.771702, 21.858978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116507, 0.055001, -0.991666,
		-0.978894, -0.162438, -0.124016,
		-0.167906, 0.985185, 0.034915,
		41.050846, 36.067257, 21.869453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807335, 35.517628, 21.327967>,  <41.168381, 35.377628, 21.845013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807335, 35.517628, 21.327967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.921432, 35.891945, 21.410845>,  <40.989891, 36.116535, 21.460571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.921432, 35.891945, 21.410845>,  <40.807335, 35.517628, 21.327967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921432, 35.891945, 21.410845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256220, 0.133858, -0.957305,
		-0.923572, 0.326156, -0.201585,
		0.285247, 0.935790, 0.207195,
		41.007008, 36.172684, 21.473003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444504, 35.870049, 20.878576>,  <40.807335, 35.517628, 21.327967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444504, 35.870049, 20.878576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.749683, 36.109577, 20.976006>,  <40.932789, 36.253296, 21.034464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.749683, 36.109577, 20.976006>,  <40.444504, 35.870049, 20.878576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749683, 36.109577, 20.976006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093622, 0.270459, -0.958168,
		-0.639649, 0.753833, 0.150283,
		0.762945, 0.598821, 0.243574,
		40.978565, 36.289223, 21.049078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362705, 36.467770, 20.401236>,  <40.444504, 35.870049, 20.878576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362705, 36.467770, 20.401236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739632, 36.477993, 20.534735>,  <40.965786, 36.484127, 20.614834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739632, 36.477993, 20.534735>,  <40.362705, 36.467770, 20.401236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739632, 36.477993, 20.534735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321754, 0.205703, -0.924208,
		-0.092272, 0.978281, 0.185614,
		0.942317, 0.025556, 0.333746,
		41.022327, 36.485661, 20.634859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644478, 37.058964, 20.115698>,  <40.362705, 36.467770, 20.401236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644478, 37.058964, 20.115698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.951481, 36.826538, 20.223995>,  <41.135681, 36.687084, 20.288973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.951481, 36.826538, 20.223995>,  <40.644478, 37.058964, 20.115698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951481, 36.826538, 20.223995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423426, 0.142424, -0.894665,
		0.481297, 0.801299, 0.355348,
		0.767505, -0.581064, 0.270743,
		41.181732, 36.652218, 20.305218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290421, 37.397770, 19.815231>,  <40.644478, 37.058964, 20.115698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290421, 37.397770, 19.815231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428497, 37.034580, 19.910252>,  <41.511341, 36.816666, 19.967264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428497, 37.034580, 19.910252>,  <41.290421, 37.397770, 19.815231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428497, 37.034580, 19.910252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556634, -0.005728, -0.830738,
		0.755648, 0.418991, 0.503431,
		0.345189, -0.907972, 0.237553,
		41.532055, 36.762188, 19.981518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004086, 37.418846, 19.904531>,  <41.290421, 37.397770, 19.815231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004086, 37.418846, 19.904531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.903942, 37.045094, 19.803135>,  <41.843857, 36.820843, 19.742296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.903942, 37.045094, 19.803135>,  <42.004086, 37.418846, 19.904531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903942, 37.045094, 19.803135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756595, -0.025459, -0.653387,
		0.604058, -0.355369, 0.713321,
		-0.250354, -0.934379, -0.253492,
		41.828835, 36.764778, 19.727087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602215, 37.068176, 19.741629>,  <42.004086, 37.418846, 19.904531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602215, 37.068176, 19.741629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.347237, 36.829197, 19.547014>,  <42.194248, 36.685810, 19.430246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.347237, 36.829197, 19.547014>,  <42.602215, 37.068176, 19.741629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347237, 36.829197, 19.547014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705920, -0.199809, -0.679524,
		0.308767, -0.776616, 0.549118,
		-0.637448, -0.597448, -0.486534,
		42.156002, 36.649963, 19.401054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900555, 36.418266, 19.699121>,  <42.602215, 37.068176, 19.741629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900555, 36.418266, 19.699121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618160, 36.403667, 19.416206>,  <42.448723, 36.394909, 19.246456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618160, 36.403667, 19.416206>,  <42.900555, 36.418266, 19.699121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618160, 36.403667, 19.416206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701208, -0.176299, -0.690816,
		-0.099482, -0.983660, 0.150056,
		-0.705982, -0.036497, -0.707288,
		42.406364, 36.392719, 19.204020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208847, 35.930775, 19.230776>,  <42.900555, 36.418266, 19.699121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208847, 35.930775, 19.230776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.916122, 36.081066, 19.003345>,  <42.740486, 36.171242, 18.866886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.916122, 36.081066, 19.003345>,  <43.208847, 35.930775, 19.230776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916122, 36.081066, 19.003345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510861, -0.249769, -0.822579,
		-0.451081, -0.892436, -0.009162,
		-0.731810, 0.375730, -0.568577,
		42.696579, 36.193787, 18.832773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935318, 35.387211, 18.749054>,  <43.208847, 35.930775, 19.230776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935318, 35.387211, 18.749054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.820957, 35.730850, 18.579248>,  <42.752338, 35.937035, 18.477365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.820957, 35.730850, 18.579248>,  <42.935318, 35.387211, 18.749054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820957, 35.730850, 18.579248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458158, -0.266540, -0.847967,
		-0.841635, -0.436932, -0.317397,
		-0.285905, 0.859096, -0.424513,
		42.735184, 35.988579, 18.451895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644867, 35.283848, 18.033501>,  <42.935318, 35.387211, 18.749054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644867, 35.283848, 18.033501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.788094, 35.656799, 18.053316>,  <42.874031, 35.880569, 18.065205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.788094, 35.656799, 18.053316>,  <42.644867, 35.283848, 18.033501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788094, 35.656799, 18.053316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630473, -0.202309, -0.749383,
		-0.688689, 0.299560, -0.660281,
		0.358066, 0.932381, 0.049536,
		42.895512, 35.936512, 18.068176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027538, 35.103188, 18.326443>,  <42.644867, 35.283848, 18.033501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027538, 35.103188, 18.326443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869335, 34.756481, 18.204933>,  <41.774414, 34.548458, 18.132027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869335, 34.756481, 18.204933>,  <42.027538, 35.103188, 18.326443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869335, 34.756481, 18.204933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621850, 0.009310, 0.783081,
		-0.675924, 0.498620, -0.542683,
		-0.395512, -0.866771, -0.303774,
		41.750683, 34.496449, 18.113800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397774, 35.170021, 18.634697>,  <42.027538, 35.103188, 18.326443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397774, 35.170021, 18.634697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.402477, 34.785099, 18.526011>,  <41.405300, 34.554146, 18.460798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.402477, 34.785099, 18.526011>,  <41.397774, 35.170021, 18.634697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402477, 34.785099, 18.526011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532578, -0.236009, 0.812810,
		-0.846299, 0.135154, -0.515277,
		0.011756, -0.962306, -0.271714,
		41.406006, 34.496407, 18.444496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716915, 34.904034, 18.545670>,  <41.397774, 35.170021, 18.634697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716915, 34.904034, 18.545670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.953491, 34.605209, 18.667061>,  <41.095436, 34.425915, 18.739897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.953491, 34.605209, 18.667061>,  <40.716915, 34.904034, 18.545670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953491, 34.605209, 18.667061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682635, -0.263560, 0.681576,
		-0.429192, -0.610278, -0.665849,
		0.591442, -0.747059, 0.303479,
		41.130924, 34.381092, 18.758104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206093, 34.536663, 18.784243>,  <40.716915, 34.904034, 18.545670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206093, 34.536663, 18.784243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.557449, 34.430664, 18.943346>,  <40.768261, 34.367065, 19.038809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.557449, 34.430664, 18.943346>,  <40.206093, 34.536663, 18.784243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557449, 34.430664, 18.943346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449879, -0.177420, 0.875289,
		-0.161355, -0.947793, -0.275050,
		0.878393, -0.264972, 0.397765,
		40.820965, 34.351166, 19.062674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990433, 33.966358, 19.121407>,  <40.206093, 34.536663, 18.784243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990433, 33.966358, 19.121407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342785, 34.034763, 19.297951>,  <40.554195, 34.075806, 19.403877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342785, 34.034763, 19.297951>,  <39.990433, 33.966358, 19.121407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342785, 34.034763, 19.297951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284037, -0.554925, 0.781909,
		0.378642, -0.814132, -0.440248,
		0.880882, 0.171017, 0.441361,
		40.607048, 34.086067, 19.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292385, 33.359623, 19.544447>,  <39.990433, 33.966358, 19.121407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292385, 33.359623, 19.544447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.464054, 33.682652, 19.706259>,  <40.567055, 33.876469, 19.803347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.464054, 33.682652, 19.706259>,  <40.292385, 33.359623, 19.544447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464054, 33.682652, 19.706259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170764, -0.367249, 0.914312,
		0.886934, -0.461475, -0.019708,
		0.429170, 0.807570, 0.404529,
		40.592804, 33.924923, 19.827618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676510, 33.086662, 20.061609>,  <40.292385, 33.359623, 19.544447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676510, 33.086662, 20.061609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653152, 33.471069, 20.169710>,  <40.639137, 33.701714, 20.234571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653152, 33.471069, 20.169710>,  <40.676510, 33.086662, 20.061609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653152, 33.471069, 20.169710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113330, -0.275348, 0.954641,
		0.991840, 0.025118, 0.124991,
		-0.058395, 0.961016, 0.270254,
		40.635635, 33.759373, 20.250786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098255, 33.081894, 20.717274>,  <40.676510, 33.086662, 20.061609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098255, 33.081894, 20.717274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880814, 33.417629, 20.717932>,  <40.750347, 33.619072, 20.718327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880814, 33.417629, 20.717932>,  <41.098255, 33.081894, 20.717274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880814, 33.417629, 20.717932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210824, -0.138438, 0.967672,
		0.812432, 0.525686, 0.252208,
		-0.543606, 0.839339, 0.001644,
		40.717731, 33.669430, 20.718426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713055, 33.185139, 21.137915>,  <41.098255, 33.081894, 20.717274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713055, 33.185139, 21.137915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.031204, 32.999779, 21.294191>,  <42.222095, 32.888561, 21.387957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.031204, 32.999779, 21.294191>,  <41.713055, 33.185139, 21.137915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031204, 32.999779, 21.294191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414139, -0.055165, -0.908540,
		0.442571, 0.884430, 0.148036,
		0.795374, -0.463401, 0.390692,
		42.269817, 32.860760, 21.411398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248711, 33.465416, 20.835320>,  <41.713055, 33.185139, 21.137915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248711, 33.465416, 20.835320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.380424, 33.113117, 20.971470>,  <42.459454, 32.901737, 21.053160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.380424, 33.113117, 20.971470>,  <42.248711, 33.465416, 20.835320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380424, 33.113117, 20.971470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379749, -0.206515, -0.901744,
		0.864501, 0.426189, 0.266461,
		0.329285, -0.880747, 0.340377,
		42.479210, 32.848892, 21.073584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997593, 33.300884, 20.715389>,  <42.248711, 33.465416, 20.835320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997593, 33.300884, 20.715389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.853024, 32.931274, 20.765285>,  <42.766281, 32.709511, 20.795223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.853024, 32.931274, 20.765285>,  <42.997593, 33.300884, 20.715389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853024, 32.931274, 20.765285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566203, -0.323796, -0.758005,
		0.740802, -0.203331, 0.640210,
		-0.361423, -0.924020, 0.124743,
		42.744598, 32.654068, 20.802708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561996, 32.821560, 20.649548>,  <42.997593, 33.300884, 20.715389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561996, 32.821560, 20.649548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.229668, 32.612904, 20.571964>,  <43.030270, 32.487709, 20.525414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.229668, 32.612904, 20.571964>,  <43.561996, 32.821560, 20.649548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229668, 32.612904, 20.571964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469084, -0.468826, -0.748440,
		0.299485, -0.712805, 0.634206,
		-0.830824, -0.521642, -0.193959,
		42.980419, 32.456409, 20.513777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883709, 32.300823, 20.272173>,  <43.561996, 32.821560, 20.649548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883709, 32.300823, 20.272173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.493443, 32.243164, 20.206083>,  <43.259281, 32.208569, 20.166430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.493443, 32.243164, 20.206083>,  <43.883709, 32.300823, 20.272173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493443, 32.243164, 20.206083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210469, -0.404395, -0.890038,
		0.061479, -0.903154, 0.424892,
		-0.975665, -0.144145, -0.165224,
		43.200745, 32.199921, 20.156517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805969, 31.580307, 20.107958>,  <43.883709, 32.300823, 20.272173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805969, 31.580307, 20.107958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.490498, 31.771963, 19.953863>,  <43.301212, 31.886957, 19.861406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.490498, 31.771963, 19.953863>,  <43.805969, 31.580307, 20.107958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490498, 31.771963, 19.953863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061157, -0.562349, -0.824635,
		-0.611756, -0.673933, 0.414210,
		-0.788679, 0.479143, -0.385236,
		43.253895, 31.915705, 19.838293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549545, 31.105906, 19.654900>,  <43.805969, 31.580307, 20.107958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549545, 31.105906, 19.654900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.361000, 31.434971, 19.527750>,  <43.247875, 31.632410, 19.451460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.361000, 31.434971, 19.527750>,  <43.549545, 31.105906, 19.654900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361000, 31.434971, 19.527750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037819, -0.378947, -0.924645,
		-0.881129, -0.423820, 0.209733,
		-0.471361, 0.822664, -0.317873,
		43.219593, 31.681770, 19.432388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968834, 30.864937, 19.327732>,  <43.549545, 31.105906, 19.654900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968834, 30.864937, 19.327732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.061459, 31.224764, 19.179592>,  <43.117031, 31.440660, 19.090708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.061459, 31.224764, 19.179592>,  <42.968834, 30.864937, 19.327732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061459, 31.224764, 19.179592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243064, -0.422124, -0.873345,
		-0.941966, 0.112212, -0.316398,
		0.231559, 0.899567, -0.370352,
		43.130928, 31.494635, 19.068487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558964, 30.965519, 18.753593>,  <42.968834, 30.864937, 19.327732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558964, 30.965519, 18.753593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.904675, 31.166328, 18.740992>,  <43.112103, 31.286814, 18.733431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.904675, 31.166328, 18.740992>,  <42.558964, 30.965519, 18.753593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904675, 31.166328, 18.740992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202597, -0.404754, -0.891700,
		-0.460406, 0.764296, -0.451529,
		0.864281, 0.502023, -0.031507,
		43.163960, 31.316935, 18.731539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.166615, 36.517250, 33.033997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520092, 36.642944, 33.172760>,  <37.732178, 36.718361, 33.256020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520092, 36.642944, 33.172760>,  <37.166615, 36.517250, 33.033997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520092, 36.642944, 33.172760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449727, -0.364547, -0.815384,
		-0.129754, 0.876563, -0.463466,
		0.883691, 0.314233, 0.346912,
		37.785198, 36.737213, 33.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414192, 36.964802, 32.541599>,  <37.166615, 36.517250, 33.033997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414192, 36.964802, 32.541599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669861, 36.759502, 32.770699>,  <37.823261, 36.636322, 32.908157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669861, 36.759502, 32.770699>,  <37.414192, 36.964802, 32.541599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669861, 36.759502, 32.770699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430194, -0.378716, -0.819456,
		0.637490, 0.770165, -0.021271,
		0.639172, -0.513244, 0.572748,
		37.861614, 36.605530, 32.942524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061794, 37.083374, 32.236309>,  <37.414192, 36.964802, 32.541599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061794, 37.083374, 32.236309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144928, 36.758610, 32.454521>,  <38.194809, 36.563751, 32.585449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144928, 36.758610, 32.454521>,  <38.061794, 37.083374, 32.236309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144928, 36.758610, 32.454521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546654, -0.366084, -0.753095,
		0.811157, 0.454734, 0.367751,
		0.207830, -0.811911, 0.545533,
		38.207275, 36.515038, 32.618179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791206, 36.959019, 32.194027>,  <38.061794, 37.083374, 32.236309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791206, 36.959019, 32.194027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626659, 36.615158, 32.315205>,  <38.527931, 36.408840, 32.387913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626659, 36.615158, 32.315205>,  <38.791206, 36.959019, 32.194027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626659, 36.615158, 32.315205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534379, -0.496722, -0.683891,
		0.738387, -0.119443, 0.663715,
		-0.411368, -0.859651, 0.302945,
		38.503250, 36.357262, 32.406090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398293, 36.471958, 32.171936>,  <38.791206, 36.959019, 32.194027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398293, 36.471958, 32.171936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062840, 36.254181, 32.165268>,  <38.861568, 36.123512, 32.161266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062840, 36.254181, 32.165268>,  <39.398293, 36.471958, 32.171936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062840, 36.254181, 32.165268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378280, -0.560104, -0.737013,
		0.391925, -0.624388, 0.675673,
		-0.838629, -0.544448, -0.016675,
		38.811253, 36.090847, 32.160267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681664, 35.859188, 32.129097>,  <39.398293, 36.471958, 32.171936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681664, 35.859188, 32.129097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.308582, 35.800209, 31.997452>,  <39.084732, 35.764820, 31.918463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.308582, 35.800209, 31.997452>,  <39.681664, 35.859188, 32.129097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308582, 35.800209, 31.997452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345828, -0.624514, -0.700275,
		-0.102285, -0.766969, 0.633479,
		-0.932706, -0.147447, -0.329118,
		39.028770, 35.755974, 31.898716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710514, 35.218388, 31.864361>,  <39.681664, 35.859188, 32.129097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710514, 35.218388, 31.864361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399445, 35.356663, 31.654325>,  <39.212803, 35.439629, 31.528305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399445, 35.356663, 31.654325>,  <39.710514, 35.218388, 31.864361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399445, 35.356663, 31.654325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191951, -0.664789, -0.721949,
		-0.598641, -0.662235, 0.450637,
		-0.777679, 0.345688, -0.525086,
		39.166142, 35.460369, 31.496799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471066, 34.721867, 31.562868>,  <39.710514, 35.218388, 31.864361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471066, 34.721867, 31.562868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.277172, 34.982048, 31.328968>,  <39.160835, 35.138157, 31.188627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.277172, 34.982048, 31.328968>,  <39.471066, 34.721867, 31.562868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277172, 34.982048, 31.328968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180425, -0.579809, -0.794524,
		-0.855849, -0.490639, 0.163696,
		-0.484737, 0.650457, -0.584752,
		39.131752, 35.177185, 31.153542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975517, 34.393944, 31.149702>,  <39.471066, 34.721867, 31.562868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975517, 34.393944, 31.149702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048149, 34.742329, 30.967072>,  <39.091728, 34.951359, 30.857492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048149, 34.742329, 30.967072>,  <38.975517, 34.393944, 31.149702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048149, 34.742329, 30.967072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174653, -0.485475, -0.856627,
		-0.967743, 0.075803, -0.240267,
		0.181579, 0.870958, -0.456576,
		39.102623, 35.003616, 30.830099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412056, 34.478893, 30.559338>,  <38.975517, 34.393944, 31.149702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412056, 34.478893, 30.559338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.729340, 34.702957, 30.463808>,  <38.919712, 34.837395, 30.406490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.729340, 34.702957, 30.463808>,  <38.412056, 34.478893, 30.559338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729340, 34.702957, 30.463808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021175, -0.417328, -0.908509,
		-0.608577, 0.715584, -0.342891,
		0.793213, 0.560158, -0.238823,
		38.967304, 34.871006, 30.392160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257164, 34.486782, 29.906006>,  <38.412056, 34.478893, 30.559338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257164, 34.486782, 29.906006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637100, 34.611877, 29.906044>,  <38.865063, 34.686935, 29.906067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637100, 34.611877, 29.906044>,  <38.257164, 34.486782, 29.906006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637100, 34.611877, 29.906044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158419, -0.480881, -0.862355,
		-0.269648, 0.819113, -0.506304,
		0.949839, 0.312741, 0.000095,
		38.922050, 34.705700, 29.906073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353371, 34.852932, 29.385607>,  <38.257164, 34.486782, 29.906006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353371, 34.852932, 29.385607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723953, 34.717232, 29.450825>,  <38.946304, 34.635811, 29.489956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723953, 34.717232, 29.450825>,  <38.353371, 34.852932, 29.385607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723953, 34.717232, 29.450825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022486, -0.382520, -0.923674,
		0.375724, 0.859412, -0.346761,
		0.926459, -0.339249, 0.163046,
		39.001892, 34.615456, 29.499739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034271, 35.406559, 28.909819>,  <38.353371, 34.852932, 29.385607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034271, 35.406559, 28.909819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665012, 35.396770, 28.756351>,  <37.443459, 35.390896, 28.664270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665012, 35.396770, 28.756351>,  <38.034271, 35.406559, 28.909819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665012, 35.396770, 28.756351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345141, 0.492353, 0.799041,
		0.169346, 0.870051, -0.462961,
		-0.923147, -0.024472, -0.383668,
		37.388069, 35.389427, 28.641251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735966, 36.032867, 29.062239>,  <38.034271, 35.406559, 28.909819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735966, 36.032867, 29.062239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408524, 35.812733, 28.996489>,  <37.212059, 35.680653, 28.957039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408524, 35.812733, 28.996489>,  <37.735966, 36.032867, 29.062239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408524, 35.812733, 28.996489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416838, 0.372359, 0.829213,
		-0.395139, 0.747314, -0.534215,
		-0.818603, -0.550336, -0.164375,
		37.162941, 35.647633, 28.947176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113621, 36.546108, 29.023224>,  <37.735966, 36.032867, 29.062239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113621, 36.546108, 29.023224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967754, 36.183262, 29.107285>,  <36.880234, 35.965553, 29.157721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967754, 36.183262, 29.107285>,  <37.113621, 36.546108, 29.023224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967754, 36.183262, 29.107285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491081, 0.379112, 0.784292,
		-0.791113, 0.182802, -0.583715,
		-0.364664, -0.907115, 0.210150,
		36.858356, 35.911129, 29.170330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335850, 36.482521, 28.964584>,  <37.113621, 36.546108, 29.023224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335850, 36.482521, 28.964584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490089, 36.214333, 29.218128>,  <36.582634, 36.053421, 29.370255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490089, 36.214333, 29.218128>,  <36.335850, 36.482521, 28.964584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490089, 36.214333, 29.218128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546671, 0.387401, 0.742341,
		-0.743277, -0.632762, -0.217145,
		0.385603, -0.670472, 0.633859,
		36.605770, 36.013191, 29.408285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077599, 36.683357, 29.587271>,  <36.335850, 36.482521, 28.964584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077599, 36.683357, 29.587271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232273, 36.333023, 29.702782>,  <36.325077, 36.122822, 29.772089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232273, 36.333023, 29.702782>,  <36.077599, 36.683357, 29.587271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232273, 36.333023, 29.702782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364216, 0.142646, 0.920325,
		-0.847243, -0.461056, -0.263832,
		0.386687, -0.875831, 0.288780,
		36.348278, 36.070274, 29.789415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605961, 36.295811, 29.939552>,  <36.077599, 36.683357, 29.587271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605961, 36.295811, 29.939552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967564, 36.189014, 30.073114>,  <36.184525, 36.124939, 30.153252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967564, 36.189014, 30.073114>,  <35.605961, 36.295811, 29.939552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967564, 36.189014, 30.073114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272658, 0.241520, 0.931303,
		-0.329291, -0.932945, 0.145539,
		0.904005, -0.266988, 0.333906,
		36.238766, 36.108917, 30.173286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555653, 35.811527, 30.499403>,  <35.605961, 36.295811, 29.939552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555653, 35.811527, 30.499403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.901756, 36.000816, 30.565592>,  <36.109421, 36.114391, 30.605305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.901756, 36.000816, 30.565592>,  <35.555653, 35.811527, 30.499403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901756, 36.000816, 30.565592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345956, 0.324764, 0.880251,
		0.362822, -0.818891, 0.444722,
		0.865260, 0.473229, 0.165469,
		36.161335, 36.142784, 30.615232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704472, 35.733372, 31.254416>,  <35.555653, 35.811527, 30.499403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704472, 35.733372, 31.254416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932308, 36.038624, 31.132298>,  <36.069012, 36.221775, 31.059027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932308, 36.038624, 31.132298>,  <35.704472, 35.733372, 31.254416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932308, 36.038624, 31.132298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294390, 0.536207, 0.791086,
		0.767399, -0.360719, 0.530075,
		0.569590, 0.763127, -0.305293,
		36.103184, 36.267563, 31.040710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055912, 35.856876, 31.840069>,  <35.704472, 35.733372, 31.254416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055912, 35.856876, 31.840069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079723, 36.179466, 31.604761>,  <36.094009, 36.373020, 31.463575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079723, 36.179466, 31.604761>,  <36.055912, 35.856876, 31.840069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079723, 36.179466, 31.604761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272487, 0.580062, 0.767645,
		0.960316, 0.114603, 0.254281,
		0.059524, 0.806470, -0.588271,
		36.097580, 36.421406, 31.428280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157284, 36.387455, 32.316933>,  <36.055912, 35.856876, 31.840069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157284, 36.387455, 32.316933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069607, 36.612362, 31.997982>,  <36.017002, 36.747307, 31.806612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069607, 36.612362, 31.997982>,  <36.157284, 36.387455, 32.316933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069607, 36.612362, 31.997982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261784, 0.753394, 0.603213,
		0.939906, 0.340961, -0.017946,
		-0.219193, 0.562265, -0.797378,
		36.003849, 36.781040, 31.758768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519623, 37.036243, 32.421509>,  <36.157284, 36.387455, 32.316933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519623, 37.036243, 32.421509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219616, 37.113384, 32.168438>,  <36.039612, 37.159668, 32.016594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219616, 37.113384, 32.168438>,  <36.519623, 37.036243, 32.421509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219616, 37.113384, 32.168438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289354, 0.764486, 0.576052,
		0.594769, 0.615117, -0.517573,
		-0.750016, 0.192856, -0.632679,
		35.994610, 37.171242, 31.978634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518944, 37.692001, 32.400932>,  <36.519623, 37.036243, 32.421509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518944, 37.692001, 32.400932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156658, 37.613571, 32.250610>,  <35.939285, 37.566513, 32.160416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156658, 37.613571, 32.250610>,  <36.518944, 37.692001, 32.400932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156658, 37.613571, 32.250610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349881, 0.846306, 0.401682,
		0.239288, 0.495298, -0.835117,
		-0.905717, -0.196074, -0.375807,
		35.884941, 37.554749, 32.137867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303688, 38.303699, 32.119850>,  <36.518944, 37.692001, 32.400932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303688, 38.303699, 32.119850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971432, 38.091808, 32.188457>,  <35.772079, 37.964672, 32.229622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971432, 38.091808, 32.188457>,  <36.303688, 38.303699, 32.119850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971432, 38.091808, 32.188457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384385, 0.768408, 0.511662,
		-0.402842, 0.359077, -0.841892,
		-0.830642, -0.529730, 0.171523,
		35.722240, 37.932888, 32.239914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661804, 38.749580, 31.996574>,  <36.303688, 38.303699, 32.119850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661804, 38.749580, 31.996574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534874, 38.447563, 32.226082>,  <35.458717, 38.266354, 32.363789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534874, 38.447563, 32.226082>,  <35.661804, 38.749580, 31.996574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534874, 38.447563, 32.226082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483114, 0.649353, 0.587318,
		-0.816030, -0.090826, -0.570829,
		-0.317326, -0.755044, 0.573770,
		35.439674, 38.221050, 32.398212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980495, 38.801922, 31.291561>,  <35.661804, 38.749580, 31.996574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980495, 38.801922, 31.291561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179161, 39.090000, 31.485321>,  <36.298363, 39.262848, 31.601578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179161, 39.090000, 31.485321>,  <35.980495, 38.801922, 31.291561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179161, 39.090000, 31.485321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611261, 0.105977, -0.784302,
		-0.616184, 0.685632, -0.387590,
		0.496666, 0.720193, 0.484401,
		36.328159, 39.306057, 31.630642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219013, 39.194481, 30.767254>,  <35.980495, 38.801922, 31.291561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219013, 39.194481, 30.767254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473179, 39.285500, 31.062407>,  <36.625679, 39.340111, 31.239498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473179, 39.285500, 31.062407>,  <36.219013, 39.194481, 30.767254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473179, 39.285500, 31.062407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760203, -0.016748, -0.649469,
		-0.135425, 0.973624, -0.183622,
		0.635414, 0.227545, 0.737884,
		36.663803, 39.353764, 31.283772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474030, 39.939690, 30.700354>,  <36.219013, 39.194481, 30.767254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474030, 39.939690, 30.700354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723839, 39.675297, 30.866758>,  <36.873726, 39.516659, 30.966602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723839, 39.675297, 30.866758>,  <36.474030, 39.939690, 30.700354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723839, 39.675297, 30.866758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598460, 0.062765, -0.798690,
		0.501811, 0.747769, 0.434772,
		0.624525, -0.660985, 0.416014,
		36.911198, 39.477001, 30.991562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170795, 40.129181, 30.443560>,  <36.474030, 39.939690, 30.700354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170795, 40.129181, 30.443560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238937, 39.756023, 30.570486>,  <37.279823, 39.532127, 30.646643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238937, 39.756023, 30.570486>,  <37.170795, 40.129181, 30.443560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238937, 39.756023, 30.570486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565874, -0.171009, -0.806562,
		0.806700, 0.316966, 0.498767,
		0.170358, -0.932893, 0.317316,
		37.290047, 39.476154, 30.665680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888290, 40.056156, 30.207367>,  <37.170795, 40.129181, 30.443560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888290, 40.056156, 30.207367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.718170, 39.703537, 30.289324>,  <37.616096, 39.491966, 30.338499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.718170, 39.703537, 30.289324>,  <37.888290, 40.056156, 30.207367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718170, 39.703537, 30.289324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426314, -0.394835, -0.813857,
		0.798357, -0.258787, 0.543743,
		-0.425304, -0.881552, 0.204894,
		37.590580, 39.439072, 30.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544094, 39.586514, 30.132826>,  <37.888290, 40.056156, 30.207367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544094, 39.586514, 30.132826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.202888, 39.379070, 30.109432>,  <37.998165, 39.254604, 30.095396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.202888, 39.379070, 30.109432>,  <38.544094, 39.586514, 30.132826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202888, 39.379070, 30.109432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429070, -0.633081, -0.644289,
		0.297109, -0.574677, 0.762543,
		-0.853010, -0.518608, -0.058483,
		37.946987, 39.223488, 30.091887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768616, 38.907948, 29.975641>,  <38.544094, 39.586514, 30.132826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768616, 38.907948, 29.975641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378147, 38.913349, 29.889002>,  <38.143867, 38.916592, 29.837019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378147, 38.913349, 29.889002>,  <38.768616, 38.907948, 29.975641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378147, 38.913349, 29.889002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175299, -0.539289, -0.823673,
		-0.127933, -0.842012, 0.524069,
		-0.976168, 0.013506, -0.216597,
		38.085297, 38.917400, 29.824022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683952, 38.274109, 29.745787>,  <38.768616, 38.907948, 29.975641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683952, 38.274109, 29.745787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383751, 38.494644, 29.600033>,  <38.203632, 38.626965, 29.512581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383751, 38.494644, 29.600033>,  <38.683952, 38.274109, 29.745787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383751, 38.494644, 29.600033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144412, -0.401233, -0.904521,
		-0.644899, -0.731465, 0.221506,
		-0.750500, 0.551336, -0.364387,
		38.158600, 38.660046, 29.490717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250988, 37.850998, 29.411076>,  <38.683952, 38.274109, 29.745787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250988, 37.850998, 29.411076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153572, 38.209000, 29.261595>,  <38.095123, 38.423801, 29.171907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153572, 38.209000, 29.261595>,  <38.250988, 37.850998, 29.411076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153572, 38.209000, 29.261595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031114, -0.377894, -0.925326,
		-0.969391, -0.236985, 0.064187,
		-0.243544, 0.895005, -0.373701,
		38.080509, 38.477501, 29.149485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781193, 37.812569, 28.921652>,  <38.250988, 37.850998, 29.411076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781193, 37.812569, 28.921652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967663, 38.156284, 28.837465>,  <38.079544, 38.362514, 28.786953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967663, 38.156284, 28.837465>,  <37.781193, 37.812569, 28.921652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967663, 38.156284, 28.837465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097154, -0.186737, -0.977594,
		-0.879341, 0.476180, -0.003569,
		0.466177, 0.859292, -0.210468,
		38.107517, 38.414070, 28.774324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584484, 37.919483, 28.332209>,  <37.781193, 37.812569, 28.921652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584484, 37.919483, 28.332209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885715, 38.180145, 28.368481>,  <38.066456, 38.336540, 28.390244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885715, 38.180145, 28.368481>,  <37.584484, 37.919483, 28.332209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885715, 38.180145, 28.368481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352392, -0.283114, -0.892001,
		-0.555602, 0.703702, -0.442844,
		0.753078, 0.651652, 0.090681,
		38.111637, 38.375641, 28.395685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542572, 38.271324, 27.722860>,  <37.584484, 37.919483, 28.332209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542572, 38.271324, 27.722860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918705, 38.334404, 27.843460>,  <38.144386, 38.372253, 27.915819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918705, 38.334404, 27.843460>,  <37.542572, 38.271324, 27.722860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918705, 38.334404, 27.843460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338199, -0.336072, -0.879020,
		-0.037296, 0.928540, -0.369354,
		0.940335, 0.157700, 0.301498,
		38.200806, 38.381714, 27.933908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848106, 38.597504, 27.172956>,  <37.542572, 38.271324, 27.722860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848106, 38.597504, 27.172956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136620, 38.425991, 27.390541>,  <38.309727, 38.323082, 27.521091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136620, 38.425991, 27.390541>,  <37.848106, 38.597504, 27.172956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136620, 38.425991, 27.390541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468719, -0.276046, -0.839107,
		0.509954, 0.860200, 0.001871,
		0.721283, -0.428783, 0.543963,
		38.353004, 38.297356, 27.553730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403751, 38.735771, 26.768011>,  <37.848106, 38.597504, 27.172956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403751, 38.735771, 26.768011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551788, 38.464066, 27.021509>,  <38.640610, 38.301041, 27.173607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551788, 38.464066, 27.021509>,  <38.403751, 38.735771, 26.768011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551788, 38.464066, 27.021509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519773, -0.414009, -0.747283,
		0.769979, 0.605966, 0.199843,
		0.370091, -0.679266, 0.633743,
		38.662815, 38.260284, 27.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141354, 38.734161, 26.647167>,  <38.403751, 38.735771, 26.768011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141354, 38.734161, 26.647167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074982, 38.380875, 26.822622>,  <39.035160, 38.168903, 26.927895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074982, 38.380875, 26.822622>,  <39.141354, 38.734161, 26.647167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074982, 38.380875, 26.822622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507093, -0.457905, -0.730191,
		0.845769, 0.101270, 0.523851,
		-0.165927, -0.883214, 0.438635,
		39.025204, 38.115910, 26.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636555, 38.313271, 26.453371>,  <39.141354, 38.734161, 26.647167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636555, 38.313271, 26.453371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.448536, 38.016853, 26.645166>,  <39.335724, 37.839001, 26.760242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.448536, 38.016853, 26.645166>,  <39.636555, 38.313271, 26.453371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448536, 38.016853, 26.645166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400897, -0.663218, -0.632000,
		0.786346, -0.104843, 0.608825,
		-0.470044, -0.741047, 0.479487,
		39.307522, 37.794540, 26.789013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065090, 37.709126, 26.786097>,  <39.636555, 38.313271, 26.453371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065090, 37.709126, 26.786097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708611, 37.562370, 26.679399>,  <39.494720, 37.474319, 26.615381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708611, 37.562370, 26.679399>,  <40.065090, 37.709126, 26.786097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708611, 37.562370, 26.679399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423699, -0.463322, -0.778340,
		0.161975, -0.806677, 0.568363,
		-0.891204, -0.366886, -0.266741,
		39.441250, 37.452305, 26.599377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193130, 37.004368, 26.580616>,  <40.065090, 37.709126, 26.786097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193130, 37.004368, 26.580616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.852921, 37.102379, 26.394468>,  <39.648796, 37.161186, 26.282780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.852921, 37.102379, 26.394468>,  <40.193130, 37.004368, 26.580616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852921, 37.102379, 26.394468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286467, -0.526240, -0.800630,
		-0.441075, -0.814268, 0.377387,
		-0.850523, 0.245029, -0.465372,
		39.597763, 37.175888, 26.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931145, 36.330364, 26.253901>,  <40.193130, 37.004368, 26.580616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931145, 36.330364, 26.253901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727905, 36.616375, 26.061829>,  <39.605961, 36.787983, 25.946587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727905, 36.616375, 26.061829>,  <39.931145, 36.330364, 26.253901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727905, 36.616375, 26.061829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138831, -0.482224, -0.864978,
		-0.850039, -0.506154, 0.145747,
		-0.508095, 0.715031, -0.480179,
		39.575478, 36.830883, 25.917774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521980, 35.946896, 25.755554>,  <39.931145, 36.330364, 26.253901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521980, 35.946896, 25.755554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.544361, 36.327499, 25.634556>,  <39.557789, 36.555862, 25.561956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.544361, 36.327499, 25.634556>,  <39.521980, 35.946896, 25.755554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544361, 36.327499, 25.634556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261593, -0.306354, -0.915268,
		-0.963555, -0.027923, -0.266048,
		0.055948, 0.951508, -0.302494,
		39.561146, 36.612953, 25.543808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169712, 35.970844, 25.141972>,  <39.521980, 35.946896, 25.755554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169712, 35.970844, 25.141972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.391151, 36.303959, 25.141449>,  <39.524014, 36.503826, 25.141134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.391151, 36.303959, 25.141449>,  <39.169712, 35.970844, 25.141972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391151, 36.303959, 25.141449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281893, -0.188867, -0.940673,
		-0.783624, 0.520385, -0.339312,
		0.553597, 0.832784, -0.001308,
		39.557232, 36.553795, 25.141056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998539, 36.327087, 24.580824>,  <39.169712, 35.970844, 25.141972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998539, 36.327087, 24.580824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.352009, 36.481422, 24.686842>,  <39.564091, 36.574024, 24.750452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.352009, 36.481422, 24.686842>,  <38.998539, 36.327087, 24.580824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352009, 36.481422, 24.686842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337551, -0.132948, -0.931871,
		-0.324317, 0.912936, -0.247724,
		0.883673, 0.385841, 0.265045,
		39.617111, 36.597176, 24.766356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141457, 36.704224, 24.113808>,  <38.998539, 36.327087, 24.580824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141457, 36.704224, 24.113808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513771, 36.654575, 24.251350>,  <39.737160, 36.624786, 24.333876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513771, 36.654575, 24.251350>,  <39.141457, 36.704224, 24.113808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513771, 36.654575, 24.251350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342707, -0.031193, -0.938924,
		0.127269, 0.991776, 0.013504,
		0.930782, -0.124124, 0.343859,
		39.793007, 36.617340, 24.354507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598099, 37.198158, 23.762621>,  <39.141457, 36.704224, 24.113808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598099, 37.198158, 23.762621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858383, 36.930603, 23.906380>,  <40.014553, 36.770069, 23.992636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858383, 36.930603, 23.906380>,  <39.598099, 37.198158, 23.762621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858383, 36.930603, 23.906380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469919, -0.017050, -0.882545,
		0.596451, 0.743168, 0.303228,
		0.650709, -0.668888, 0.359398,
		40.053596, 36.729939, 24.014198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279507, 37.472046, 23.616987>,  <39.598099, 37.198158, 23.762621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279507, 37.472046, 23.616987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.334026, 37.080875, 23.680332>,  <40.366737, 36.846172, 23.718338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.334026, 37.080875, 23.680332>,  <40.279507, 37.472046, 23.616987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334026, 37.080875, 23.680332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525649, -0.064103, -0.848283,
		0.839711, 0.198865, 0.505310,
		0.136302, -0.977928, 0.158361,
		40.374916, 36.787498, 23.727840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886974, 37.405582, 23.364182>,  <40.279507, 37.472046, 23.616987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886974, 37.405582, 23.364182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.776974, 37.021118, 23.373602>,  <40.710976, 36.790440, 23.379253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.776974, 37.021118, 23.373602>,  <40.886974, 37.405582, 23.364182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776974, 37.021118, 23.373602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460600, -0.153205, -0.874286,
		0.843933, -0.229580, 0.484839,
		-0.274999, -0.961156, 0.023550,
		40.694473, 36.732773, 23.380667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448608, 37.071861, 23.256243>,  <40.886974, 37.405582, 23.364182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448608, 37.071861, 23.256243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.148376, 36.824215, 23.163874>,  <40.968239, 36.675625, 23.108452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.148376, 36.824215, 23.163874>,  <41.448608, 37.071861, 23.256243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148376, 36.824215, 23.163874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478305, -0.267923, -0.836327,
		0.455917, -0.738178, 0.497225,
		-0.750576, -0.619120, -0.230923,
		40.923203, 36.638477, 23.094597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713974, 36.384392, 23.085257>,  <41.448608, 37.071861, 23.256243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713974, 36.384392, 23.085257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.363792, 36.446011, 22.902016>,  <41.153683, 36.482983, 22.792072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.363792, 36.446011, 22.902016>,  <41.713974, 36.384392, 23.085257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363792, 36.446011, 22.902016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450405, -0.083708, -0.888892,
		-0.175281, -0.984511, 0.003897,
		-0.875450, 0.154051, -0.458101,
		41.101158, 36.492226, 22.764585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143089, 35.934772, 23.234127>,  <41.713974, 36.384392, 23.085257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143089, 35.934772, 23.234127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.507622, 36.091091, 23.182358>,  <42.726341, 36.184883, 23.151297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.507622, 36.091091, 23.182358>,  <42.143089, 35.934772, 23.234127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507622, 36.091091, 23.182358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134761, 0.580267, 0.803200,
		0.388989, -0.714540, 0.581480,
		0.911333, 0.390797, -0.129425,
		42.781021, 36.208332, 23.143530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471066, 35.709339, 23.787899>,  <42.143089, 35.934772, 23.234127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471066, 35.709339, 23.787899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.652103, 36.034107, 23.640419>,  <42.760727, 36.228970, 23.551931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.652103, 36.034107, 23.640419>,  <42.471066, 35.709339, 23.787899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652103, 36.034107, 23.640419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056369, 0.438694, 0.896867,
		0.889934, -0.385132, 0.244317,
		0.452593, 0.811924, -0.368699,
		42.787880, 36.277683, 23.529810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087070, 35.732727, 24.236858>,  <42.471066, 35.709339, 23.787899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087070, 35.732727, 24.236858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.991890, 36.086082, 24.075359>,  <42.934780, 36.298096, 23.978460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.991890, 36.086082, 24.075359>,  <43.087070, 35.732727, 24.236858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991890, 36.086082, 24.075359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183846, 0.449136, 0.874344,
		0.953718, 0.133828, -0.269281,
		-0.237955, 0.883384, -0.403745,
		42.920502, 36.351097, 23.954235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528069, 36.113262, 24.616234>,  <43.087070, 35.732727, 24.236858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528069, 36.113262, 24.616234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.288815, 36.387405, 24.450092>,  <43.145264, 36.551891, 24.350409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.288815, 36.387405, 24.450092>,  <43.528069, 36.113262, 24.616234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288815, 36.387405, 24.450092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085658, 0.569990, 0.817174,
		0.796807, 0.453200, -0.399636,
		-0.598132, 0.685362, -0.415352,
		43.109375, 36.593014, 24.325487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830727, 36.887703, 24.870485>,  <43.528069, 36.113262, 24.616234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830727, 36.887703, 24.870485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.456390, 36.918427, 24.732906>,  <43.231789, 36.936859, 24.650358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.456390, 36.918427, 24.732906>,  <43.830727, 36.887703, 24.870485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456390, 36.918427, 24.732906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293889, 0.368534, 0.881936,
		0.194494, 0.926436, -0.322318,
		-0.935843, 0.076805, -0.343947,
		43.175636, 36.941467, 24.629723>
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
